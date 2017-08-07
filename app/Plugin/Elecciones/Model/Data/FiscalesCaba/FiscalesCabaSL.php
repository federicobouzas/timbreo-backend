<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class FiscalesCabaSL extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'title' => '',
    'actions' => 
    array (
    ),
    'filters' => 
    array (
        0 => 
        array (
            'name' => 'area',
            'label' => 'Área',
        ),
        1 => 
        array (
            'name' => 'referente',
            'label' => 'Referente',
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
            'name' => 'dni',
            'label' => 'DNI',
            'presentation' => 'INT',
        ),
        5 => 
        array (
            'name' => 'barrio_vota',
            'label' => 'Barrio',
            'presentation' => 'GEOLOCALIZACION::BARRIOS',
        ),
        6 => 
        array (
            'name' => 'comuna_vota',
            'label' => 'Comuna',
            'presentation' => 'GEOLOCALIZACION::COMUNAS',
        ),
        7 => 
        array (
            'name' => 'fue_fiscal',
            'label' => 'Fue Fiscal',
            'presentation' => 'SINO',
        ),
        8 => 
        array (
            'name' => 'capacitado',
            'label' => 'Capacitado',
            'presentation' => 'SINO',
        ),
    ),
    'columns' => 
    array (
        0 => 
        array (
            'name' => 'area',
            'label' => 'Área',
        ),
        1 => 
        array (
            'name' => 'referente',
            'label' => 'Referente',
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
            'name' => 'dni',
            'label' => 'DNI',
        ),
        5 => 
        array (
            'name' => 'telefono',
            'label' => 'Teléfono',
        ),
        6 => 
        array (
            'name' => 'email',
            'label' => 'Email',
        ),
        7 => 
        array (
            'name' => 'barrio_vota',
            'label' => 'Barrio',
        ),
        8 => 
        array (
            'name' => 'comuna_vota',
            'label' => 'Comuna',
        ),
        9 => 
        array (
            'name' => 'fue_fiscal',
            'label' => 'Fue Fiscal',
        ),
        10 => 
        array (
            'name' => 'capacitado',
            'label' => 'Capacitado',
        ),
        11 => 
        array (
            'name' => 'comentarios',
            'label' => 'Comentarios',
        ),
    ),
);

}
