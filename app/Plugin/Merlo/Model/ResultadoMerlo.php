<?php

class ResultadoMerlo extends AppModel {

    public $label = 'Resultados Merlo';
    public $tablePrefix = 'app_merlo_';
    public $useTable = 'resultados';
    public $plugin = 'Merlo';
    public $primaryKey = 'mesa';
    public $virtualFields = array(
        'tmp_501_sen' => '501_1pais_sen',
        'tmp_501_dip' => '501_1pais_dip',
        'tmp_501_leg' => '501_1pais_leg',
        'tmp_501_con' => '501_1pais_con',
        'tmp_503_sen' => '503_uc_sen',
        'tmp_503_dip' => '503_uc_dip',
        'tmp_503_leg' => '503_uc_leg',
        'tmp_503_con' => '503_uc_con',
        'tmp_508_sen' => '508_camb_sen',
        'tmp_508_dip' => '508_camb_dip',
        'tmp_508_leg' => '508_camb_leg',
        'tmp_508_con' => '508_camb_con',
        'tmp_509_sen' => '509_fj_sen',
        'tmp_509_dip' => '509_fj_dip',
        'tmp_509_leg' => '509_fj_leg',
        'tmp_509_con' => '509_fj_con',
        'tmp_510_sen' => '510_izq_sen',
        'tmp_510_dip' => '510_izq_dip',
        'tmp_510_leg' => '510_izq_leg',
        'tmp_510_con' => '510_izq_con'
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
