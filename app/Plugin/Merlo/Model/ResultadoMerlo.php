<?php

class ResultadoMerlo extends AppModel {

    public $label = 'Resultados Merlo';
    public $tablePrefix = 'app_merlo_';
    public $useTable = 'resultados';
    public $plugin = 'Merlo';
    public $primaryKey = 'mesa';
    
    public $virtualFields = array(
        'tmp_501_sen' => 'SUM(501_pais_unido_sen)',
        'tmp_501_dip' => 'SUM(501_pais_unido_dip)',
        'tmp_501_leg' => 'SUM(501_pais_unido_leg)',
        'tmp_501_con' => 'SUM(501_pais_unido_con)',
        'tmp_503_sen' => 'SUM(503_celeste_blanca_u_sen)',
        'tmp_503_dip' => 'SUM(503_celeste_blanca_u_dip)',
        'tmp_503_leg' => 'SUM(503_celeste_blanca_u2_leg)',
        'tmp_503_con' => 'SUM(503_celeste_blanca_u2_con)',
        'tmp_508_sen' => 'SUM(508_cambiando_juntos_sen)',
        'tmp_508_dip' => 'SUM(508_cambiando_juntos_dip)',
        'tmp_508_leg' => 'SUM(508_amarillo_leg)',
        'tmp_508_con' => 'SUM(508_amarillo_con)',
        'tmp_509_sen' => 'SUM(509_cumplir_sen)',
        'tmp_509_dip' => 'SUM(509_cumplir_dip)',
        'tmp_509_leg' => 'SUM(509_cumplir_2_leg)',
        'tmp_509_con' => 'SUM(509_cumplir_2_con) + SUM(509_cumplir_4_con)'
    );
    
    public $validate = array(
        '501_pais_unido_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '501_pais_unido_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        '503_celeste_blanca_u_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
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
        'total_agrup_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'total_agrup_dip' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'total_agrup_leg' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'total_agrup_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'blanco_sen' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'blanco_dip' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'blanco_leg' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
        'blanco_con' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo es requerido'
            )
        ),
    );
    
    

}
