<?php

class VotantesController extends AppController {

    public function import() {
        set_time_limit(0);
        ini_set('memory_limit', '-1');
        $this->maint = Parse::getData('Elecciones.Votantes/VotantesImportarMaint');
        $this->importar = Parse::getDataImportar('Elecciones.Votantes/VotantesImportarMaint');
        parent::importar('tmp_excel');
    }

    public function edit($id = null, $return = null) {
        $this->render = ["edit", "default"];
        if ($this->request->is('post')) {
            if ($this->request->data['Votante']['en_ruta'] == "No") {
                $this->Votante->Query("DELETE FROM ele_votantes_rutas WHERE votante_id=" . $this->request->data['Votante']['id']);
            } elseif ($this->request->data['Votante']['en_ruta'] == "Verificado") {
                // Obtengo la ruta a la que pertenece el votante
                $ruta = $this->Votante->Query("SELECT ruta_id FROM ele_votantes_rutas WHERE votante_id=" . $this->request->data['Votante']['id']);
                $ruta_id = $ruta[0]['ele_votantes_rutas']['ruta_id'];

                // Si existe la ruta y queda completa la dejo como realizada
                if (!empty($ruta_id)) {
                    $votantes_ruta = $this->Votante->Query("SELECT COUNT(*) as cant
                                                              FROM ele_votantes s 
                                                              JOIN ele_votantes_rutas sr ON sr.votante_id=s.id
                                                              WHERE sr.ruta_id=" . $ruta_id . " AND s.en_ruta != 'Verificado' AND s.id!=" . $this->request->data['Votante']['id']);
                    if ($votantes_ruta[0][0]['cant'] == 0) {
                        $this->Votante->Query("UPDATE ele_rutas SET realizada='Si' WHERE id=" . $ruta_id);
                    }
                }
            }
        }

        $this->maint = Parse::getData('Elecciones.Votantes/VotantesMaint');
        parent::edit($id, $return);
    }

    public function index($last = false) {
        $this->search_list = Parse::getData('Elecciones.Votantes/VotantesSL');
        parent::index($last);
    }

    public function view($id = null, $return = null) {
        $this->maint = Parse::getData('Elecciones.Votantes/VotantesMaint');
        parent::view($id, $return);
    }

    public function etiquetar($id = null) {
        $this->Votante->etiquetar($id);
        $this->redirect(WWW . "elecciones/votantes/index/last");
    }
    
    public function etiquetar2($id = null) {
        $this->Votante->etiquetar($id, false, "2");
        $this->redirect(WWW . "elecciones/votantes/index/last");
    }

    public function carta($id = null) {
        $this->Votante->carta($id);
        exit(0);
    }
    
    public function carta_completa($id = null) {
        $this->Votante->carta_completa($id);
        exit(0);
    }

    public function ajax_get_votantes() {
        $filter = array_filter($this->request->query, function($var) {
            return !empty($var);
        });
        $conditions = array_map(function($var) {
            if (is_string($var)) {
                return explode(",", $var);
            }
            return $var;
        }, $filter);
        $conditions["estado_geo"] = "Geolocalizado";
        $conditions["en_ruta"] = "No";
        $this->Votante->recursive = -1;
        $data = $this->Votante->find('all', [
            //"limit" => 10,
            "fields" => ["id", "location", "domicilio", "nombre", "apellido"],
            'conditions' => $conditions
        ]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
