<?php

App::uses('AppController', 'Controller');

class CargasMerloController extends AppController {

    public function index($last = false) {
        $this->search_list = Parse::getData('Merlo.CargasMerlo/CargasMerloSL');
        parent::index($last);
    }

    public function add($return = null) {
        $this->maint = Parse::getData('Merlo.CargasMerlo/CargasMerloMaint');
        parent::add($return);
    }

    public function edit($id = null, $return = null) {
        $this->maint = Parse::getData('Merlo.CargasMerlo/CargasMerloMaint');
        parent::edit($id, $return);
    }

    public function view($id = null, $return = null) {
        $this->maint = Parse::getData('Merlo.CargasMerlo/CargasMerloMaint');
        parent::view($id, $return);
    }

    public function dashboard() {
        $preguntas = $this->CargaMerlo->preguntas;
        unset($preguntas[11]);
        $this->set("preguntas", $preguntas);
    }

    public function mapa() {
        $this->set("preguntas", $this->CargaMerlo->preguntas);
    }

    public function ajax_get_respuestas($fecha_desde = null, $fecha_hasta = null, $edad = null) {
        $conditions = [];
        if (!empty($this->request->query["fecha_desde"])) {
            $conditions["time >="] = $this->request->query["fecha_desde"] . " 00:00:00";
        }
        if (!empty($this->request->query["fecha_hasta"])) {
            $conditions["time <="] = $this->request->query["fecha_hasta"] . " 23:59:59";
        }
        if (!empty($this->request->query["edad"])) {
            $conditions["edad"] = $this->request->query["edad"];
        }
        $data = [];
        foreach (array_keys($this->CargaMerlo->preguntas) as $pregunta) {
            $data[$pregunta] = $this->CargaMerlo->find("all", [
                "fields" => ["respuesta_" . $pregunta . " AS respuesta", "COUNT(*) AS cantidad"],
                "group" => "respuesta_" . $pregunta,
                "conditions" => array_merge($conditions, ["respuesta_" . $pregunta . " !=" => ""]),
            ]);
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
        $data = $this->CargaMerlo->find("all", ["conditions" => $conditions]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
