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
            ),
            'id' => 'agrupaciones',
            'title' => '',
            'columns' => '12',
        ),
    ),
);

}
