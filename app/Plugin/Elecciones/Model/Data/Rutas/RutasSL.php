<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class RutasSL extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'title' => '',
    'jsincludes' => 
    array (
        0 => 'elecciones/rutas.js',
        1 => 'rutas/index',
    ),
    'cssincludes' => 
    array (
        0 => 'elecciones/rutas.css',
    ),
    'actions' => 
    array (
        0 => 
        array (
            'op' => 'P',
            'action' => 'imprimir',
            'label' => 'Imprimir Ruta',
        ),
        1 => 
        array (
            'op' => 'V',
            'action' => 'carta_completa',
            'icon' => 'file-text-o',
            'label' => 'Imprimir Cartas',
        ),
        2 => 
        array (
            'op' => 'V',
            'action' => 'etiquetar',
            'icon' => 'envelope',
            'label' => 'Imprimir Etiquetas',
        ),
        3 => 
        array (
            'op' => 'V',
            'action' => 'etiquetar2',
            'icon' => 'envelope',
            'label' => 'Imprimir Etiquetas 2',
        ),
        4 => 
        array (
            'op' => 'D',
            'action' => 'delete',
            'post' => '¿Estás seguro de borrar el registro?',
        ),
        5 => 
        array (
            'op' => 'A',
            'action' => 'add',
            'label' => 'Cargar Ruta',
            'global' => 'true',
        ),
    ),
    'filters' => 
    array (
        0 => 
        array (
            'name' => 'Ruta.id',
            'label' => 'Número',
            'size' => 5,
        ),
        1 => 
        array (
            'name' => 'Ruta.fecha_carga',
            'label' => 'Fecha Carga',
            'presentation' => 'DATE',
        ),
        2 => 
        array (
            'name' => 'Ruta.encargado',
            'label' => 'Encargado',
        ),
        3 => 
        array (
            'name' => 'Ruta.tmp_comuna',
            'label' => 'Comuna',
            'presentation' => 'RUTAS::COMUNAS_RUTA',
        ),
        4 => 
        array (
            'name' => 'Ruta.realizada',
            'label' => 'Estado',
            'presentation' => 'RUTAS::ESTADO_RUTA',
            'initialvalue' => 'No',
        ),
    ),
    'columns' => 
    array (
        0 => 
        array (
            'name' => 'Ruta.id',
            'label' => 'Número',
        ),
        1 => 
        array (
            'name' => 'Ruta.fecha_carga',
            'label' => 'Fecha Carga',
            'presentation' => 'DATETIME',
            'classparams' => '{\'no_seconds\':true}',
        ),
        2 => 
        array (
            'name' => 'Ruta.encargado',
            'label' => 'Encargado',
        ),
        3 => 
        array (
            'name' => 'Ruta.realizada',
            'label' => 'Realizada',
            'presentation' => 'RUTAS::ESTADO_RUTA',
        ),
    ),
);

}
