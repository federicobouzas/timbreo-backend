<?php

App::uses('AppController', 'Controller');

class ResultadosMerloController extends AppController {

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

}
