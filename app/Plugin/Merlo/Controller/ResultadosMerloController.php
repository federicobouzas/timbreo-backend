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
}
