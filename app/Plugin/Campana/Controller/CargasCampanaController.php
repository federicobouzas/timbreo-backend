<?php

App::uses('AppController', 'Controller');

class CargasCampanaController extends AppController {

    public function index($last = false) {
        $this->search_list = Parse::getData('Campana.CargasCampana/CargasCampanaSL');
        parent::index($last);
    }

    public function add($return = null) {
        $this->maint = Parse::getData('Campana.CargasCampana/CargasCampanaMaint');
        parent::add($return);
    }

    public function edit($id = null, $return = null) {
        $this->maint = Parse::getData('Campana.CargasCampana/CargasCampanaMaint');
        parent::edit($id, $return);
    }

    public function view($id = null, $return = null) {
        $this->maint = Parse::getData('Campana.CargasCampana/CargasCampanaMaint');
        parent::view($id, $return);
    }

    public function dashboard() {
        $preguntas = $this->CargaCampana->preguntas;
        unset($preguntas[11]);
        $this->set("preguntas", $preguntas);
    }

    public function mapa() {
        $this->set("preguntas", $this->CargaCampana->preguntas);
    }

    public function ajax_get_respuestas($fecha_desde = null, $fecha_hasta = null, $edad = null) {
        $conditions = [];
        if (!empty($this->request->query["fecha_desde"])) {
            $conditions["time >="] = $this->request->query["fecha_desde"];
        }
        if (!empty($this->request->query["fecha_hasta"])) {
            $conditions["time <="] = $this->request->query["fecha_hasta"];
        }
        if (!empty($this->request->query["edad"])) {
            $conditions["edad"] = $this->request->query["edad"];
        }
        $data = [];
        foreach (array_keys($this->CargaCampana->preguntas) as $pregunta) {
            if ($pregunta == 4) {
                $multiples = $this->CargaCampana->find("all", [
                    "fields" => ["respuesta_" . $pregunta . " AS respuesta"],
                    "conditions" => array_merge($conditions, ["respuesta_" . $pregunta . " !=" => ""]),
                ]);
                $dataMultiples = [];
                foreach ($multiples as $multiple) {
                    $opciones = explode(",", $multiple['CargaCampana']['respuesta']);
                    foreach ($opciones as $opcion) {
                        if (isset($dataMultiples[$opcion])) {
                            $dataMultiples[$opcion] ++;
                        } else {
                            $dataMultiples[$opcion] = 1;
                        }
                    }
                }
                $dataPregunta = [];
                foreach ($dataMultiples as $key => $value) {
                    $dataPregunta[] = [
                        "CargaCampana" => ["respuesta" => $key],
                        0 => ["cantidad" => $value],
                    ];
                }
                $data[4] = $dataPregunta;
            } else {
                $data[$pregunta] = $this->CargaCampana->find("all", [
                    "fields" => ["respuesta_" . $pregunta . " AS respuesta", "COUNT(*) AS cantidad"],
                    "group" => "respuesta_" . $pregunta,
                    "conditions" => array_merge($conditions, ["respuesta_" . $pregunta . " !=" => ""]),
                ]);
            }
        }
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function ajax_get_cargas() {
        $filter = array_filter($this->request->query, function($var) {
            return !empty($var);
        });
        $conditions = array_map(function($var) {
            return explode(",", $var);
        }, $filter);
        $data = $this->CargaCampana->find("all", ["conditions" => $conditions]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
