<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class VotantesSL extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'title' => '',
    'actions' => 
    array (
        0 => 
        array (
            'op' => 'V',
            'action' => 'carta',
            'icon' => 'file-text-o',
            'label' => 'Imprimir Carta',
        ),
        1 => 
        array (
            'op' => 'V',
            'action' => 'etiquetar',
            'icon' => 'envelope',
            'label' => 'Imprimir Etiqueta',
        ),
        2 => 
        array (
            'op' => 'E',
            'action' => 'edit',
        ),
    ),
    'filters' => 
    array (
        0 => 
        array (
            'name' => 'matricula',
            'label' => 'Matrícula',
        ),
        1 => 
        array (
            'name' => 'clase',
            'label' => 'Clase',
        ),
        2 => 
        array (
            'name' => 'apellido',
            'label' => 'Apellido',
        ),
        3 => 
        array (
            'name' => 'nombre',
            'label' => 'Nombre',
        ),
        4 => 
        array (
            'name' => 'domicilio',
            'label' => 'Domicilio',
        ),
        5 => 
        array (
            'name' => 'tipodoc',
            'label' => 'Tipo de Documento',
        ),
        6 => 
        array (
            'name' => 'circuito',
            'label' => 'Circuito',
        ),
        7 => 
        array (
            'name' => 'sexo',
            'label' => 'Sexo',
        ),
        8 => 
        array (
            'name' => 'orden',
            'label' => 'Orden',
        ),
        9 => 
        array (
            'name' => 'en_ruta',
            'label' => 'Asignado',
        ),
    ),
    'columns' => 
    array (
        0 => 
        array (
            'name' => 'matricula',
            'label' => 'Matrícula',
        ),
        1 => 
        array (
            'name' => 'clase',
            'label' => 'Clase',
        ),
        2 => 
        array (
            'name' => 'apellido',
            'label' => 'Apellido',
        ),
        3 => 
        array (
            'name' => 'nombre',
            'label' => 'Nombre',
        ),
        4 => 
        array (
            'name' => 'domicilio',
            'label' => 'Domicilio',
        ),
        5 => 
        array (
            'name' => 'tipodoc',
            'label' => 'Tipo de Documento',
        ),
        6 => 
        array (
            'name' => 'circuito',
            'label' => 'Circuito',
        ),
        7 => 
        array (
            'name' => 'sexo',
            'label' => 'Sexo',
        ),
        8 => 
        array (
            'name' => 'orden',
            'label' => 'Orden',
        ),
        9 => 
        array (
            'name' => 'en_ruta',
            'label' => 'Asignado',
        ),
    ),
);

}
