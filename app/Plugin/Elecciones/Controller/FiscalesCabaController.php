<?php

App::uses('AppController', 'Controller');

class FiscalesCabaController extends AppController {

    public function index($last = false) {
        $this->search_list = Parse::getData('Elecciones.FiscalesCaba/FiscalesCabaSL');
        parent::index($last);
    }

    public function import($id = null, $return = null) {
        set_time_limit(0);
        ini_set('memory_limit', '2048M');
        $this->maint = Parse::getData('Elecciones.FiscalesCaba/FiscalesCabaImportarMaint');
        $this->importar = Parse::getDataImportar('Elecciones.FiscalesCaba/FiscalesCabaImportarMaint');
        parent::importar('tmp_archivo');
    }

}
