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
        $conditions = [];
        if (!empty($this->request->query["fecha_desde"])) {
            $conditions["Arbol.fecha_carga >="] = $this->request->query["fecha_desde"];
        }
        if (!empty($this->request->query["fecha_hasta"])) {
            $conditions["Arbol.fecha_carga <="] = $this->request->query["fecha_hasta"];
        }
        $data = [];
        $totales = ["lineal" => 0, "ep" => 0, "eevv" =>0];
        $censistas = $this->Arbol->find("all", [
            "fields" => ["Arbol.user_name", "COUNT(*) AS cantidad"],
            "group" => "user_name",
            "order" => "user_name ASC",
            "conditions" => $conditions,
        ]);
   
        foreach ($censistas as $censista) {
            $data[$censista["Arbol"]["user_name"]] = [
                "total" => $censista[0]["cantidad"],
                "lineal" => $censista[0]["cantidad"],
                "ep" => 0,
                "eevv" => 0,
            ];
        }
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }
    
    public function ajax_get_resultados_circuitos() {
        $conditions = [];
        if (!empty($this->request->query["fecha_desde"])) {
            $conditions["Arbol.fecha_carga >="] = $this->request->query["fecha_desde"];
        }
        if (!empty($this->request->query["fecha_hasta"])) {
            $conditions["Arbol.fecha_carga <="] = $this->request->query["fecha_hasta"];
        }
        $data = [];
        $totales = ["lineal" => 0, "ep" => 0, "eevv" =>0];
        $censistas = $this->Arbol->find("all", [
            "fields" => ["Arbol.user_name", "COUNT(*) AS cantidad"],
            "group" => "user_name",
            "order" => "user_name ASC",
            "conditions" => $conditions,
        ]);
   
        foreach ($censistas as $censista) {
            $data[$censista["Arbol"]["user_name"]] = [
                "total" => $censista[0]["cantidad"],
                "lineal" => $censista[0]["cantidad"],
                "ep" => 0,
                "eevv" => 0,
            ];
        }
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }
}
