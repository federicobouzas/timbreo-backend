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

    public function ajax_get_resultados_colegios($categoria = null) {
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_$categoria)/SUM(total_agrup_$categoria)*100 AS 501_$categoria",
                "SUM(503_celeste_blanca_u_$categoria)/SUM(total_agrup_$categoria)*100 as 503_$categoria",
                "SUM(508_cambiando_juntos_$categoria)/SUM(total_agrup_$categoria)*100 as 508_$categoria",
                "SUM(509_cumplir_$categoria)/SUM(total_agrup_$categoria)*100 as 509_$categoria",
            ],
            "group" => "establecimiento",
            "order" => "establecimiento ASC",
        ]);

        $this->set("data", $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_circuitos($categoria = null) {
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => ["ResultadoMerlo.circuito",
                "SUM(501_pais_unido_$categoria)/SUM(total_agrup_$categoria)*100 AS 501_$categoria",
                "SUM(503_celeste_blanca_u_$categoria)/SUM(total_agrup_$categoria)*100 as 503_$categoria",
                "SUM(508_cambiando_juntos_$categoria)/SUM(total_agrup_$categoria)*100 as 508_$categoria",
                "SUM(509_cumplir_$categoria)/SUM(total_agrup_$categoria)*100 as 509_$categoria",
            ],
            "group" => "circuito",
            "order" => "circuito ASC",
        ]);

        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_totales($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_sen) AS 501_sen",
                "SUM(503_celeste_blanca_u_sen) as 503_sen",
                "SUM(508_cambiando_juntos_sen) as 508_sen",
                "SUM(509_cumplir_sen) as 509_sen",
                "(SUM(501_pais_unido_sen) + SUM(503_celeste_blanca_u_sen) + SUM(508_cambiando_juntos_sen) + SUM(509_cumplir_sen)) as tot",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_dip) AS 501_dip",
                "SUM(503_celeste_blanca_u_dip) as 503_dip",
                "SUM(508_cambiando_juntos_dip) as 508_dip",
                "SUM(509_cumplir_dip) as 509_dip",
                "(SUM(501_pais_unido_dip) + SUM(503_celeste_blanca_u_dip) + SUM(508_cambiando_juntos_dip) + SUM(509_cumplir_dip)) as tot",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_leg) AS 501_leg",
                "SUM(503_celeste_blanca_u2_leg) as 503_leg",
                "SUM(508_amarillo_leg) as 508_leg",
                "SUM(509_cumplir_2_leg) as 509_leg",
                "(SUM(501_pais_unido_leg) + SUM(503_celeste_blanca_u2_leg) + SUM(508_amarillo_leg) + SUM(509_cumplir_2_leg)) as tot",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_con) AS 501_con",
                "SUM(503_celeste_blanca_u2_con) as 503_con",
                "SUM(508_amarillo_con) as 508_con",
                "(SUM(509_cumplir_2_con)+SUM(509_cumplir_4_con)) as 509_con",
                "(SUM(501_pais_unido_con) + SUM(503_celeste_blanca_u2_con) + SUM(508_amarillo_con) + SUM(509_cumplir_2_con) + SUM(509_cumplir_4_con)) as tot",
            ];
        }

        $data = $this->ResultadoMerlo->find("all", [
            "fields" => $fields,
        ]);

        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_porc_totales($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                "SUM(503_celeste_blanca_u_sen)/SUM(total_agrup_sen)*100 as 503_sen",
                "SUM(508_cambiando_juntos_sen)/SUM(total_agrup_sen)*100 as 508_sen",
                "SUM(509_cumplir_sen)/SUM(total_agrup_sen)*100 as 509_sen",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_dip)/SUM(total_agrup_dip)*100 AS 501_dip",
                "SUM(503_celeste_blanca_u_dip)/SUM(total_agrup_dip)*100 as 503_dip",
                "SUM(508_cambiando_juntos_dip)/SUM(total_agrup_dip)*100 as 508_dip",
                "SUM(509_cumplir_dip)/SUM(total_agrup_dip)*100 as 509_dip",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_leg)/SUM(total_agrup_leg)*100 AS 501_leg",
                "SUM(503_celeste_blanca_u2_leg)/SUM(total_agrup_leg)*100 as 503_leg",
                "SUM(508_amarillo_leg)/SUM(total_agrup_leg)*100 as 508_leg",
                "SUM(509_cumplir_2_leg)/SUM(total_agrup_leg)*100 as 509_leg",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_pais_unido_con)/SUM(total_agrup_con)*100 AS 501_con",
                "SUM(503_celeste_blanca_u2_con)/SUM(total_agrup_con)*100 as 503_con",
                "SUM(508_amarillo_con)/SUM(total_agrup_con)*100 as 508_con",
                "(SUM(509_cumplir_2_con)+SUM(509_cumplir_4_con))/SUM(total_agrup_con)*100 as 509_con",
            ];
        }

        $data = $this->ResultadoMerlo->find("all", [
            "fields" => $fields,
        ]);

        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
