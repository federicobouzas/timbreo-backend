<?php

class ResultadoMerlo extends AppModel {

    public $label = 'Resultados Merlo';
    public $tablePrefix = 'app_merlo_';
    public $useTable = 'resultados';
    public $plugin = 'Merlo';
    public $primaryKey = 'mesa';
    public $validate = array(
        '501_pais_unido_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo 1PAIS - SENADORES es requerido'
            )
        ),
        '501_pais_unido_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo 1PAIS - CONSEJALES es requerido'
            )
        ),
    );

}
