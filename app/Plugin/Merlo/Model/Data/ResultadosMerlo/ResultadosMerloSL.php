<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class ResultadosMerloSL extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'title' => '',
    'actions' => 
    array (
        0 => 
        array (
            'op' => 'E',
            'action' => 'edit',
        ),
    ),
    'filters' => 
    array (
        0 => 
        array (
            'name' => 'mesa',
            'label' => 'Mesa',
            'presentation' => 'INT',
            'size' => 4,
        ),
        1 => 
        array (
            'name' => 'establecimiento',
            'label' => 'Establecimiento',
        ),
    ),
    'columns' => 
    array (
        0 => 
        array (
            'label' => '',
            'sortfield' => '',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'mesa',
                    'label' => 'Mesa',
                ),
            ),
        ),
        1 => 
        array (
            'label' => '',
            'sortfield' => '',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'establecimiento',
                    'label' => 'Establecimiento',
                ),
            ),
        ),
        2 => 
        array (
            'label' => '',
            'sortfield' => '',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'direccion',
                    'label' => 'Direccón',
                ),
            ),
        ),
    ),
);

}
