<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class VotantesMaint extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'submit' => 'Guardar',
    'cancel' => true,
    'info' => '',
    'warning' => '',
    'jsincludes' => 
    array (
        0 => 'socios_padron/maint_socios',
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
                    'name' => 'matricula',
                    'label' => 'Matrícula',
                    'readonly' => true,
                ),
                1 => 
                array (
                    'name' => 'clase',
                    'label' => 'Clase',
                    'readonly' => true,
                ),
                2 => 
                array (
                    'name' => 'apellido',
                    'label' => 'Apellido',
                    'readonly' => true,
                ),
                3 => 
                array (
                    'name' => 'nombre',
                    'label' => 'Nombre',
                    'readonly' => true,
                ),
                4 => 
                array (
                    'name' => 'domicilio',
                    'label' => 'Domicilio',
                    'readonly' => true,
                ),
                5 => 
                array (
                    'name' => 'tipodoc',
                    'label' => 'Tipo de Documento',
                    'readonly' => true,
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
                    'readonly' => true,
                ),
                9 => 
                array (
                    'name' => 'en_ruta',
                    'label' => 'Asignado',
                    'readonly' => true,
                ),
            ),
            'id' => 'votante',
            'title' => 'Datos del Votante',
            'columns' => '2',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'estado_geo',
                    'label' => 'Estado Georef.',
                    'presentation' => 'GEO',
                    'readonly' => true,
                ),
                1 => 
                array (
                    'name' => 'calle',
                    'label' => 'Calle',
                    'readonly' => true,
                ),
                2 => 
                array (
                    'name' => 'altura',
                    'label' => 'Altura',
                    'readonly' => true,
                ),
                3 => 
                array (
                    'name' => 'piso',
                    'label' => 'Piso',
                    'readonly' => true,
                ),
                4 => 
                array (
                    'name' => 'dpto',
                    'label' => 'Dto.',
                    'readonly' => true,
                ),
                5 => 
                array (
                    'name' => 'codigo_postal',
                    'label' => 'Código Postal',
                    'readonly' => true,
                ),
                6 => 
                array (
                    'name' => 'barrio_google',
                    'label' => 'Barrio',
                    'readonly' => true,
                ),
                7 => 
                array (
                    'name' => 'comuna_google',
                    'label' => 'Comuna',
                    'readonly' => true,
                ),
                8 => 
                array (
                    'name' => 'localidad',
                    'label' => 'Localidad',
                    'readonly' => true,
                ),
                9 => 
                array (
                    'name' => 'provincia',
                    'label' => 'Provincia',
                    'readonly' => true,
                ),
                10 => 
                array (
                    'name' => 'tmp_pais',
                    'label' => 'País',
                    'isvisible' => false,
                    'initialvalue' => 'Argentina',
                ),
            ),
            'id' => 'ubicacion',
            'title' => 'Ubicación',
        ),
        2 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'coordenadas',
                    'label' => '',
                    'presentation' => 'GOOGLEMAP',
                    'readonly' => true,
                ),
            ),
            'id' => 'mapa',
            'title' => 'Mapa',
        ),
    ),
);

}
