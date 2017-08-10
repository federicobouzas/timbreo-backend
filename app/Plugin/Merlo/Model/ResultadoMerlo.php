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
        '503_celeste_blanca_u_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo UNIDAD CIUDADANA - SENADORES es requerido'
            )
        ),
        '503_celeste_blanca_u2_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '508_cambiando_juntos_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '508_amarillo_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '509_cumplir_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '509_cumplir_2_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '509_cumplir_4_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
    );

}
