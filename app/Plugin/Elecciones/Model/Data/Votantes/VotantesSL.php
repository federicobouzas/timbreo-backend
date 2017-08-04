<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class VotantesSL extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'title' => '',
    'jsincludes' => 
    array (
        0 => 'votantes/votantes_sl.js',
    ),
    'cssincludes' => 
    array (
        0 => 'elecciones/votantes_sl.css',
    ),
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
            'op' => 'V',
            'action' => 'etiquetar2',
            'icon' => 'envelope',
            'label' => 'Imprimir Etiqueta 2',
        ),
        3 => 
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
        10 => 
        array (
            'name' => 'location',
            'label' => '',
            'presentation' => 'GOOGLEMAP',
            'classparams' => '{\'list\':true}',
        ),
    ),
);

}
