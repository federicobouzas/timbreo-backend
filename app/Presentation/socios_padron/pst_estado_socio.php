<?php

App::uses('pst_selectarray', 'Presentation');

class pst_estado_socio extends pst_selectarray {

    public function __construct($settings) {
        $this->options = array(
            'Si' => 'En Ruta',
            'No' => 'Sin Rutear',
            'Verificado' => 'Verificado',
        );
        parent::__construct($settings);
    }

}