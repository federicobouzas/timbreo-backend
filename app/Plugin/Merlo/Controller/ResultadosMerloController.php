<?php

App::uses('AppController', 'Controller');

class ResultadosMerloController extends AppController {

    public function index($last = false) {
        $this->search_list = Parse::getData('Merlo.ResultadosMerlo/ResultadosMerloSL');
        parent::index($last);
    }

    public function add($return = null) {
        $this->render = ["add", "default"];
        $this->maint = Parse::getData('Merlo.ResultadosMerlo/ResultadosMerloMaint');
        parent::add($return);
    }

    public function edit($id = null, $return = null) {
        $this->maint = Parse::getData('Merlo.ResultadosMerlo/ResultadosMerloMaint');
        parent::edit($id, $return);
    }

    public function view($id = null, $return = null) {
        $this->maint = Parse::getData('Merlo.ResultadosMerlo/ResultadosMerloMaint');
        parent::view($id, $return);
    }

    public function import() {
        set_time_limit(0);
        ini_set('memory_limit', '2048M');
        $this->maint = Parse::getData('Merlo.ResultadosMerlo/ResultadosMerloImportarMaint');
        $this->importar = Parse::getDataImportar('Merlo.ResultadosMerlo/ResultadosMerloImportarMaint');
        parent::importar('tmp_archivo');
    }

    public function resultados() {
        
    }

    public function ajax_get_resultados_colegios() {
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                'SUM(503_celeste_blanca_u_sen)/SUM(total_agrup_sen)*100 as 503_sen',
                'SUM(508_cambiando_juntos_sen)/SUM(total_agrup_sen)*100 as 508_sen',
                'SUM(509_cumplir_sen)/SUM(total_agrup_sen)*100 as 509_sen',
            ],
            "group" => "establecimiento",
            "order" => "establecimiento ASC",
        ]);
        
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_circuitos() {
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => ["ResultadoMerlo.circuito",
                "SUM(501_pais_unido_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                'SUM(503_celeste_blanca_u_sen)/SUM(total_agrup_sen)*100 as 503_sen',
                'SUM(508_cambiando_juntos_sen)/SUM(total_agrup_sen)*100 as 508_sen',
                'SUM(509_cumplir_sen)/SUM(total_agrup_sen)*100 as 509_sen',
            ],
            "group" => "circuito",
            "order" => "circuito ASC",
        ]);
        
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
