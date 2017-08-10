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
            ),
            'id' => 'descripcion',
            'title' => 'Descripción',
            'columns' => '3',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'ciudadanos',
                    'label' => 'Ciudadanos',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                1 => 
                array (
                    'name' => 'sobres',
                    'label' => 'Sobres',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
                2 => 
                array (
                    'name' => 'dif_votantes_sobres',
                    'label' => 'Diferencia',
                    'presentation' => 'INT',
                    'size' => 4,
                ),
            ),
            'id' => 'ciudadanos_sobres',
            'title' => 'Ciudadanos y Sobres',
            'columns' => '3',
        ),
        2 => 
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
            ),
            'id' => 'agrupaciones',
            'title' => '',
            'columns' => '1000',
        ),
    ),
);

}
