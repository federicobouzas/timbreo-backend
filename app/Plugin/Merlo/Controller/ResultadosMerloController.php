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
        $mesasTotal = $this->ResultadoMerlo->find('count');
        $mesasEscrutadas = $this->ResultadoMerlo->find('count', array(
            'conditions' => array('508_camb_sen IS NOT NULL')
        ));
        $escrutadas = number_format($mesasEscrutadas / $mesasTotal * 100, 2);
        $this->set('escrutadas', $escrutadas);
    }

    public function ajax_get_resultados_colegios($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                "SUM(503_uc_sen)/SUM(total_agrup_sen)*100 AS 503_sen",
                "SUM(508_camb_sen)/SUM(total_agrup_sen)*100 AS 508_sen",
                "SUM(509_fj_sen)/SUM(total_agrup_sen)*100 AS 509_sen",
                "SUM(510_izq_sen)/SUM(total_agrup_sen)*100 AS 510_sen",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_dip)/SUM(total_agrup_dip)*100 AS 501_dip",
                "SUM(503_uc_dip)/SUM(total_agrup_dip)*100 AS 503_dip",
                "SUM(508_camb_dip)/SUM(total_agrup_dip)*100 AS 508_dip",
                "SUM(509_fj_dip)/SUM(total_agrup_dip)*100 AS 509_dip",
                "SUM(510_izq_dip)/SUM(total_agrup_dip)*100 AS 510_dip",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_leg)/SUM(total_agrup_leg)*100 AS 501_leg",
                "SUM(503_uc_leg)/SUM(total_agrup_leg)*100 AS 503_leg",
                "SUM(508_camb_leg)/SUM(total_agrup_leg)*100 AS 508_leg",
                "SUM(509_fj_leg)/SUM(total_agrup_leg)*100 AS 509_leg",
                "SUM(510_izq_leg)/SUM(total_agrup_leg)*100 AS 510_leg",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_con)/SUM(total_agrup_con)*100 AS 501_con",
                "SUM(503_uc_con)/SUM(total_agrup_con)*100 AS 503_con",
                "SUM(508_camb_con)/SUM(total_agrup_con)*100 AS 508_con",
                "SUM(509_fj_con)/SUM(total_agrup_con)*100 AS 509_con",
                "SUM(510_izq_con)/SUM(total_agrup_con)*100 AS 510_con",
            ];
        }
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => $fields,
            "group" => "establecimiento",
            "order" => "establecimiento ASC",
        ]);
        $this->set("data", $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_circuitos($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.circuito",
                "SUM(501_1pais_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                "SUM(503_uc_sen)/SUM(total_agrup_sen)*100 AS 503_sen",
                "SUM(508_camb_sen)/SUM(total_agrup_sen)*100 AS 508_sen",
                "SUM(509_fj_sen)/SUM(total_agrup_sen)*100 AS 509_sen",
                "SUM(510_izq_sen)/SUM(total_agrup_sen)*100 AS 510_sen",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.circuito",
                "SUM(501_1pais_dip)/SUM(total_agrup_dip)*100 AS 501_dip",
                "SUM(503_uc_dip)/SUM(total_agrup_dip)*100 AS 503_dip",
                "SUM(508_camb_dip)/SUM(total_agrup_dip)*100 AS 508_dip",
                "SUM(509_fj_dip)/SUM(total_agrup_dip)*100 AS 509_dip",
                "SUM(510_izq_dip)/SUM(total_agrup_dip)*100 AS 510_dip",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.circuito",
                "SUM(501_1pais_leg)/SUM(total_agrup_leg)*100 AS 501_leg",
                "SUM(503_uc_leg)/SUM(total_agrup_leg)*100 AS 503_leg",
                "SUM(508_camb_leg)/SUM(total_agrup_leg)*100 AS 508_leg",
                "SUM(509_fj_leg)/SUM(total_agrup_leg)*100 AS 509_leg",
                "SUM(510_izq_leg)/SUM(total_agrup_leg)*100 AS 510_leg",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.circuito",
                "SUM(501_1pais_con)/SUM(total_agrup_con)*100 AS 501_con",
                "SUM(503_uc_con)/SUM(total_agrup_con)*100 AS 503_con",
                "SUM(508_camb_con)/SUM(total_agrup_con)*100 AS 508_con",
                "SUM(509_fj_con)/SUM(total_agrup_con)*100 AS 509_con",
                "SUM(510_izq_con)/SUM(total_agrup_con)*100 AS 510_con",
            ];
        }
        $data = $this->ResultadoMerlo->find("all", [
            "fields" => $fields,
            "group" => "circuito",
            "order" => "circuito ASC",
        ]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_totales($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_sen) AS 501_sen",
                "SUM(503_uc_sen) as 503_sen",
                "SUM(508_camb_sen) as 508_sen",
                "SUM(509_fj_sen) as 509_sen",
                "SUM(510_izq_sen) as 510_sen",
                "(SUM(IFNULL(501_1pais_sen, 0)) + SUM(IFNULL(503_uc_sen, 0)) + SUM(IFNULL(508_camb_sen, 0)) + SUM(IFNULL(509_fj_sen, 0)) + SUM(IFNULL(510_izq_sen,0))) as tot",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_dip) AS 501_dip",
                "SUM(503_uc_dip) as 503_dip",
                "SUM(508_camb_dip) as 508_dip",
                "SUM(509_fj_dip) as 509_dip",
                "SUM(510_izq_dip) as 510_dip",
                "(SUM(IFNULL(501_1pais_dip, 0)) + SUM(IFNULL(503_uc_dip, 0)) + SUM(IFNULL(508_camb_dip, 0)) + SUM(IFNULL(509_fj_dip, 0)) + SUM(IFNULL(510_izq_dip,0))) as tot",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_leg) AS 501_leg",
                "SUM(503_uc_leg) as 503_leg",
                "SUM(508_camb_leg) as 508_leg",
                "SUM(509_fj_leg) as 509_leg",
                "SUM(510_izq_leg) as 510_leg",
                "(SUM(IFNULL(501_1pais_leg, 0)) + SUM(IFNULL(503_uc_leg, 0)) + SUM(IFNULL(508_camb_leg, 0)) + SUM(IFNULL(509_fj_leg, 0)) + SUM(IFNULL(510_izq_leg,0))) as tot",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_con) AS 501_con",
                "SUM(503_uc_con) as 503_con",
                "SUM(508_camb_sen) as 508_con",
                "SUM(509_fj_con) as 509_con",
                "SUM(510_izq_con) as 510_con",
                "(SUM(IFNULL(501_1pais_con, 0)) + SUM(IFNULL(503_uc_con, 0)) + SUM(IFNULL(508_camb_con, 0)) + SUM(IFNULL(509_fj_con, 0)) + SUM(IFNULL(510_izq_con,0))) as tot",
            ];
        }
        $data = $this->ResultadoMerlo->find("all", ["fields" => $fields]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_resultados_porc_totales($categoria = null) {
        if ($categoria == "sen") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_sen)/SUM(total_agrup_sen)*100 AS 501_sen",
                "SUM(503_uc_sen)/SUM(total_agrup_sen)*100 as 503_sen",
                "SUM(508_camb_sen)/SUM(total_agrup_sen)*100 as 508_sen",
                "SUM(509_fj_sen)/SUM(total_agrup_sen)*100 as 509_sen",
                "SUM(510_izq_sen)/SUM(total_agrup_sen)*100 as 510_sen",
            ];
        } elseif ($categoria == "dip") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_dip)/SUM(total_agrup_dip)*100 AS 501_dip",
                "SUM(503_uc_dip)/SUM(total_agrup_dip)*100 as 503_dip",
                "SUM(508_camb_dip)/SUM(total_agrup_dip)*100 as 508_dip",
                "SUM(509_fj_dip)/SUM(total_agrup_dip)*100 as 509_dip",
                "SUM(510_izq_dip)/SUM(total_agrup_dip)*100 as 510_dip",
            ];
        } elseif ($categoria == "leg") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_leg)/SUM(total_agrup_leg)*100 AS 501_leg",
                "SUM(503_uc_leg)/SUM(total_agrup_leg)*100 as 503_leg",
                "SUM(508_camb_leg)/SUM(total_agrup_leg)*100 as 508_leg",
                "SUM(509_fj_leg)/SUM(total_agrup_leg)*100 as 509_leg",
                "SUM(510_izq_leg)/SUM(total_agrup_leg)*100 as 510_leg",
            ];
        } elseif ($categoria == "con") {
            $fields = ["ResultadoMerlo.establecimiento",
                "SUM(501_1pais_con)/SUM(total_agrup_con)*100 AS 501_con",
                "SUM(503_uc_con)/SUM(total_agrup_con)*100 as 503_con",
                "SUM(508_camb_con)/SUM(total_agrup_con)*100 as 508_con",
                "SUM(509_fj_con)/SUM(total_agrup_con)*100 as 509_con",
                "SUM(510_izq_con)/SUM(total_agrup_con)*100 as 510_con",
            ];
        }
        $data = $this->ResultadoMerlo->find("all", ["fields" => $fields]);
        $this->set("data", $data);
        return $this->render("/ajax", "ajax");
    }

}
