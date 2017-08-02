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
        $this->render = ["/SociosPadron/edit", "default"];
        if ($this->request->is('post')) {
            if ($this->request->data['SocioPadron']['en_ruta'] == "No") {
                $this->SocioPadron->Query("DELETE FROM ele_socios_rutas WHERE socio_id=" . $this->request->data['SocioPadron']['id']);
            } elseif ($this->request->data['SocioPadron']['en_ruta'] == "Verificado") {
                // Obtengo la ruta a la que pertenece el socio
                $ruta = $this->SocioPadron->Query("SELECT ruta_id FROM ele_socios_rutas WHERE socio_id=" . $this->request->data['SocioPadron']['id']);
                $ruta_id = $ruta[0]['ele_socios_rutas']['ruta_id'];

                // Si existe la ruta y queda completa la dejo como realizada
                if (!empty($ruta_id)) {
                    $socios_ruta = $this->SocioPadron->Query("SELECT COUNT(*) as cant
                                                              FROM ele_socios s 
                                                              JOIN ele_socios_rutas sr ON sr.socio_id=s.id
                                                              WHERE sr.ruta_id=" . $ruta_id . " AND s.en_ruta != 'Verificado' AND s.id!=" . $this->request->data['SocioPadron']['id']);
                    if ($socios_ruta[0][0]['cant'] == 0) {
                        $this->SocioPadron->Query("UPDATE ele_rutas SET realizada='Si' WHERE id=" . $ruta_id);
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

    public function carta($id = null) {
        $this->Votante->carta($id);
        exit(0);
    }

    public function ajax_get_votantes() {
        $this->Votante->recursive = -1;
        $data = $this->Votante->find('all', [
            "limit" => 10,
            "fields" => ["id", "location", "domicilio", "nombre", "apellido"],
            'conditions' => [
                "estado_geo" => "Geolocalizado",
                "en_ruta" => "No",
            ]
        ]);
        $this->set('data', $data);
        return $this->render("/ajax", "ajax");
    }

}
