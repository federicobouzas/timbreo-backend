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
                    'name' => 'ciudadanos',
                    'label' => 'Ciudadanos',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
                4 => 
                array (
                    'name' => 'sobres',
                    'label' => 'Sobres',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
                5 => 
                array (
                    'name' => 'dif_votantes_sobres',
                    'label' => 'Diferencia',
                    'presentation' => 'INT',
                    'size' => 8,
                ),
            ),
            'id' => 'descripcion',
            'title' => 'Información de la Mesa',
            'columns' => '3',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => '8_a_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                1 => 
                array (
                    'name' => '8_a_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                2 => 
                array (
                    'name' => '8_a_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                3 => 
                array (
                    'name' => '8_a_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                4 => 
                array (
                    'name' => '8_b_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                5 => 
                array (
                    'name' => '8_b_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                6 => 
                array (
                    'name' => '8_b_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                7 => 
                array (
                    'name' => '8_b_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                8 => 
                array (
                    'name' => '8_c_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                9 => 
                array (
                    'name' => '8_c_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                10 => 
                array (
                    'name' => '8_c_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                11 => 
                array (
                    'name' => '8_c_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                12 => 
                array (
                    'name' => '8_d_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                13 => 
                array (
                    'name' => '8_d_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                14 => 
                array (
                    'name' => '8_d_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                15 => 
                array (
                    'name' => '8_d_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                16 => 
                array (
                    'name' => '22_a_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                17 => 
                array (
                    'name' => '22_a_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                18 => 
                array (
                    'name' => '22_a_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                19 => 
                array (
                    'name' => '22_a_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                20 => 
                array (
                    'name' => '259_a_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                21 => 
                array (
                    'name' => '259_a_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                22 => 
                array (
                    'name' => '259_a_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                23 => 
                array (
                    'name' => '259_a_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                24 => 
                array (
                    'name' => '259_b_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                25 => 
                array (
                    'name' => '259_b_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                26 => 
                array (
                    'name' => '259_b_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                27 => 
                array (
                    'name' => '259_b_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                28 => 
                array (
                    'name' => '259_c_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                29 => 
                array (
                    'name' => '259_c_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                30 => 
                array (
                    'name' => '259_c_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                31 => 
                array (
                    'name' => '259_c_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                32 => 
                array (
                    'name' => '268_unidad_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                33 => 
                array (
                    'name' => '268_unidad_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                34 => 
                array (
                    'name' => '268_unidad_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                35 => 
                array (
                    'name' => '268_unidad_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                36 => 
                array (
                    'name' => '298_toba_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                37 => 
                array (
                    'name' => '298_toba_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                38 => 
                array (
                    'name' => '298_toba_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                39 => 
                array (
                    'name' => '298_toba_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                40 => 
                array (
                    'name' => '301_vamos_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                41 => 
                array (
                    'name' => '301_vamos_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                42 => 
                array (
                    'name' => '301_vamos_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                43 => 
                array (
                    'name' => '301_vamos_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                44 => 
                array (
                    'name' => '301_fuerza_de_la_gente_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                45 => 
                array (
                    'name' => '301_fuerza_de_la_gente_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                46 => 
                array (
                    'name' => '301_fuerza_de_la_gente_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                47 => 
                array (
                    'name' => '301_fuerza_de_la_gente_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                48 => 
                array (
                    'name' => '309_compromiso_ciudadano_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                49 => 
                array (
                    'name' => '309_compromiso_ciudadano_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                50 => 
                array (
                    'name' => '309_compromiso_ciudadano_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                51 => 
                array (
                    'name' => '309_compromiso_ciudadano_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                52 => 
                array (
                    'name' => '501_pais_unido_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                53 => 
                array (
                    'name' => '501_pais_unido_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                54 => 
                array (
                    'name' => '501_pais_unido_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                55 => 
                array (
                    'name' => '501_pais_unido_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                56 => 
                array (
                    'name' => '502_86_socialista_popular_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                57 => 
                array (
                    'name' => '502_86_socialista_popular_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                58 => 
                array (
                    'name' => '502_86_socialista_popular_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                59 => 
                array (
                    'name' => '502_86_socialista_popular_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                60 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                61 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                62 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                63 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                64 => 
                array (
                    'name' => '503_celeste_blanca_u_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                65 => 
                array (
                    'name' => '503_celeste_blanca_u_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                66 => 
                array (
                    'name' => '503_celeste_blanca_u_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                67 => 
                array (
                    'name' => '503_celeste_blanca_u_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                68 => 
                array (
                    'name' => '503_celeste_blanca_u2_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                69 => 
                array (
                    'name' => '503_celeste_blanca_u2_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                70 => 
                array (
                    'name' => '503_celeste_blanca_u2_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                71 => 
                array (
                    'name' => '503_celeste_blanca_u2_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                72 => 
                array (
                    'name' => '504_unidad_izquierda_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                73 => 
                array (
                    'name' => '504_unidad_izquierda_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                74 => 
                array (
                    'name' => '504_unidad_izquierda_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                75 => 
                array (
                    'name' => '504_unidad_izquierda_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                76 => 
                array (
                    'name' => '505_a_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                77 => 
                array (
                    'name' => '505_a_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                78 => 
                array (
                    'name' => '505_a_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                79 => 
                array (
                    'name' => '505_a_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                80 => 
                array (
                    'name' => '505_b_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                81 => 
                array (
                    'name' => '505_b_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                82 => 
                array (
                    'name' => '505_b_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                83 => 
                array (
                    'name' => '505_b_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                84 => 
                array (
                    'name' => '505_c_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                85 => 
                array (
                    'name' => '505_c_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                86 => 
                array (
                    'name' => '505_c_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                87 => 
                array (
                    'name' => '505_c_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                88 => 
                array (
                    'name' => '505_d_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                89 => 
                array (
                    'name' => '505_d_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                90 => 
                array (
                    'name' => '505_d_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                91 => 
                array (
                    'name' => '505_d_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                92 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                93 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                94 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                95 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                96 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                97 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                98 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                99 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                100 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                101 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                102 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                103 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                104 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                105 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                106 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                107 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                108 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                109 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                110 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                111 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                112 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                113 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                114 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                115 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                116 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                117 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                118 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                119 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                120 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                121 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                122 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                123 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                124 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                125 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                126 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                127 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                128 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                129 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                130 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                131 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                132 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                133 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                134 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                135 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                136 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                137 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                138 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                139 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                140 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                141 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                142 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                143 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                144 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                145 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                146 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                147 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                148 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                149 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                150 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                151 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
                    'label' => '',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                152 => 
                array (
                    'name' => '502_86_socialismo_merlense_sen',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                153 => 
                array (
                    'name' => '502_86_socialismo_merlense_dip',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                154 => 
                array (
                    'name' => '502_86_socialismo_merlense_leg',
                    'label' => '',
                    'presentation' => 'INT',
                    'class' => 'disabled',
                    'size' => 4,
                ),
                155 => 
                array (
                    'name' => '502_86_socialismo_merlense_con',
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
