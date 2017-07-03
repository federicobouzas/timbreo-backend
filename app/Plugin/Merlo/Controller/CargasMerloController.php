<?php

App::uses('AppController', 'Controller');

class CargasMerloController extends AppController {

    public function index($last = false) {
        $data = file_get_contents("eideoos.com:5984/timbreo-merlo/_all_docs?include_docs=true&conflicts=true");
        debug($data);
        die;
        $jdata = json_decode($data);
        debug($jdata);
        die;
        
        $this->search_list = Parse::getData('Merlo.CargasMerlo/CargasMerloSL');
        parent::index($last);
    }

    public function add($id = null, $return = null) {
        $this->maint = Parse::getData('Merlo.CargasMerlo/CargasMerloMaint');
        parent::edit($id, $return);
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
