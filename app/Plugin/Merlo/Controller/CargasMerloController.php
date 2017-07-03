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

    public function dashboard($return = null) {
        $preguntas = $this->CargaMerlo->preguntas;
        unset($preguntas[11]);
        $this->set("preguntas", $preguntas);
    }

    public function ajax_get_respuestas() {
        $data = [];
        foreach (array_keys($this->CargaMerlo->preguntas) as $pregunta) {
            $data[$pregunta] = $this->CargaMerlo->find("all", [
                "fields" => ["respuesta_" . $pregunta . " AS respuesta", "COUNT(*) AS cantidad"],
                "group" => "respuesta_" . $pregunta,
                "conditions" => ["respuesta_" . $pregunta . " !=" => ""],
            ]);
        }
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

    public function mapa($return = null) {
        $this->set("preguntas", $this->CargaMerlo->preguntas);
    }

    public function ajax_get_cargas() {
        $data = $this->CargaMerlo->find("all");
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
