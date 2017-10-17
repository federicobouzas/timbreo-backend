<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class ResultadosMerloMaint extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'submit' => 'Guardar',
    'cancel' => true,
    'info' => '',
    'warning' => '',
    'cssincludes' => 
    array (
        0 => 'merlo/resultados.css',
    ),
    'jsincludes' => 
    array (
        0 => 'merlo/resultados.js',
    ),
    'data' => 
    array (
        0 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'mesa',
                    'label' => 'Mesa',
                    'presentation' => 'CODIGO',
                    'classparams' => '{\'sigla\':\'\', \'largo\':4}',
                    'readonly' => true,
                ),
                1 => 
                array (
                    'name' => 'establecimiento',
                    'label' => 'Establecimiento',
                    'readonly' => true,
                ),
                2 => 
                array (
                    'name' => 'direccion',
                    'label' => 'Direccón',
                    'readonly' => true,
                ),
                3 => 
                array (
                    'name' => 'extranjero',
                    'label' => 'Extranjero',
                    'presentation' => 'SINO',
                    'readonly' => true,
                ),
                4 => 
                array (
                    'name' => 'ciudadanos',
                    'label' => 'Ciudadanos',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
                5 => 
                array (
                    'name' => 'sobres',
                    'label' => 'Sobres',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
                6 => 
                array (
                    'name' => 'dif_votantes_sobres',
                    'label' => 'Diferencia',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
            ),
            'id' => 'descripcion',
            'title' => 'Información de la Mesa',
            'columns' => '4',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => '501_1pais_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                1 => 
                array (
                    'name' => '501_1pais_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                2 => 
                array (
                    'name' => '501_1pais_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                3 => 
                array (
                    'name' => '501_1pais_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                4 => 
                array (
                    'name' => '503_uc_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                5 => 
                array (
                    'name' => '503_uc_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                6 => 
                array (
                    'name' => '503_uc_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                7 => 
                array (
                    'name' => '503_uc_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                8 => 
                array (
                    'name' => '508_camb_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                9 => 
                array (
                    'name' => '508_camb_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                10 => 
                array (
                    'name' => '508_camb_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                11 => 
                array (
                    'name' => '508_camb_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                12 => 
                array (
                    'name' => '509_fj_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                13 => 
                array (
                    'name' => '509_fj_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                14 => 
                array (
                    'name' => '509_fj_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                15 => 
                array (
                    'name' => '509_fj_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                16 => 
                array (
                    'name' => '510_izq_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                17 => 
                array (
                    'name' => '510_izq_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                18 => 
                array (
                    'name' => '510_izq_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                19 => 
                array (
                    'name' => '510_izq_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                20 => 
                array (
                    'name' => 'total_agrup_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                21 => 
                array (
                    'name' => 'total_agrup_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                22 => 
                array (
                    'name' => 'total_agrup_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                23 => 
                array (
                    'name' => 'total_agrup_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                24 => 
                array (
                    'name' => 'nulos_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                25 => 
                array (
                    'name' => 'nulos_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                26 => 
                array (
                    'name' => 'nulos_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                27 => 
                array (
                    'name' => 'nulos_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                28 => 
                array (
                    'name' => 'recurridos_sobre_3_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                29 => 
                array (
                    'name' => 'recurridos_sobre_3_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                30 => 
                array (
                    'name' => 'recurridos_sobre_3_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                31 => 
                array (
                    'name' => 'recurridos_sobre_3_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                32 => 
                array (
                    'name' => 'identidad_impugnada_sobre_3_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                33 => 
                array (
                    'name' => 'identidad_impugnada_sobre_3_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                34 => 
                array (
                    'name' => 'identidad_impugnada_sobre_3_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                35 => 
                array (
                    'name' => 'identidad_impugnada_sobre_3_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                36 => 
                array (
                    'name' => 'comando_electoral_bolsin_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                37 => 
                array (
                    'name' => 'comando_electoral_bolsin_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                38 => 
                array (
                    'name' => 'comando_electoral_bolsin_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                39 => 
                array (
                    'name' => 'comando_electoral_bolsin_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                40 => 
                array (
                    'name' => 'blanco_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                41 => 
                array (
                    'name' => 'blanco_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                42 => 
                array (
                    'name' => 'blanco_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                43 => 
                array (
                    'name' => 'blanco_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                44 => 
                array (
                    'name' => 'total_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                45 => 
                array (
                    'name' => 'total_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                46 => 
                array (
                    'name' => 'total_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                47 => 
                array (
                    'name' => 'total_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
            ),
            'id' => 'agrupaciones',
            'title' => '',
            'columns' => '1000',
        ),
    ),
);

}
