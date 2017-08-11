<?php

class ResultadoMerlo extends AppModel {

    public $label = 'Resultados Merlo';
    public $tablePrefix = 'app_merlo_';
    public $useTable = 'resultados';
    public $plugin = 'Merlo';
    public $primaryKey = 'mesa';
    public $virtualFields = array(
        'tmp_501_sen' => '501_pais_unido_sen',
        'tmp_501_dip' => '501_pais_unido_dip',
        'tmp_501_leg' => '501_pais_unido_leg',
        'tmp_501_con' => '501_pais_unido_con',
        'tmp_503_sen' => '503_celeste_blanca_u_sen',
        'tmp_503_dip' => '503_celeste_blanca_u_dip',
        'tmp_503_leg' => '503_celeste_blanca_u2_leg',
        'tmp_503_con' => '503_celeste_blanca_u2_con',
        'tmp_508_sen' => '508_cambiando_juntos_sen',
        'tmp_508_dip' => '508_cambiando_juntos_dip',
        'tmp_508_leg' => '508_amarillo_leg',
        'tmp_508_con' => '508_amarillo_con',
        'tmp_509_sen' => '509_cumplir_sen',
        'tmp_509_dip' => '509_cumplir_dip',
        'tmp_509_leg' => '509_cumplir_2_leg',
        'tmp_509_con' => '509_cumplir_2_con + 509_cumplir_4_con'
    );
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
                'message' => 'El campo UNIDAD CIUDADANA - CONSEJALES es requerido'
            )
        ),
        '508_cambiando_juntos_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo CAMBIEMOS - SENADORES es requerido'
            )
        ),
        '508_amarillo_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo CAMBIEMOS - CONSEJALES es requerido'
            )
        ),
        '509_cumplir_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo FRENTE JUSTICIALISTA - SENADORES es requerido'
            )
        ),
        '509_cumplir_2_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo FRENTE JUSTICIALISTA (LISTA CUMPLIR 2) - CONSEJALES es requerido'
            )
        ),
        '509_cumplir_4_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo FRENTE JUSTICIALISTA (LISTA CUMPLIR 4) - CONSEJALES es requerido'
            )
        ),
        'total_agrup_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo TOTAL VOTOS AGRUPACIONES POLÍTICAS - SENADORES es requerido'
            )
        ),
        'total_agrup_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo TOTAL VOTOS AGRUPACIONES POLÍTICAS - CONSEJALES es requerido'
            )
        ),
        'blanco_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo VOTOS EN BLANCO - SENADORES es requerido'
            )
        ),
        'blanco_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo VOTOS EN BLANCO - CONSEJALES es requerido'
            )
        ),
    );

}
