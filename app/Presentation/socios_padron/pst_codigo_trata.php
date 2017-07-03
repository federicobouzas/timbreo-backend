<?php

App::uses('pst_selectarray', 'Presentation');

class pst_codigo_trata extends pst_selectarray {

    public function __construct($settings) {
        $this->options = array(
            'MJGG0801A' => 'SUBSIDIO POR INUNDACION BIEN INMUEBLE PARTICULAR',
            'MJGG0801B' => 'SUBSIDIO POR INUNDACION BIEN INMUEBLE COMERCIAL',
            'MJGG0801C' => 'SUBSIDIO POR INUNDACION VEHICULO',
            'MJGG0801D' => 'SUBSIDIO POR INUNDACION BIEN MUEBLE PARTICULAR',
            'MJGG0801E' => 'SUBSIDIO POR INUNDACION BIEN MUEBLE COMERCIAL',
            'MJYS0803A' => 'SUBSIDIO POR INUNDACION LEY 1575',
        );
        parent::__construct($settings);
    }

}