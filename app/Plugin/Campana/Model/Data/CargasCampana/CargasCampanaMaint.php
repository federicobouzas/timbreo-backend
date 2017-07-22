<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class CargasCampanaMaint extends AbstractData {

protected $data = array (
    'translatepath' => NULL,
    'submit' => 'Guardar',
    'cancel' => true,
    'info' => '',
    'warning' => '',
    'data' => 
    array (
        0 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'identificacion',
                    'label' => 'Indentificación',
                ),
                1 => 
                array (
                    'name' => 'time',
                    'label' => 'Fecha',
                    'presentation' => 'DATERANGE',
                ),
            ),
            'id' => 'ubicacion',
            'title' => 'Descripción',
            'columns' => '2',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'position',
                    'label' => '',
                    'presentation' => 'GOOGLEMAP',
                ),
            ),
            'id' => 'position',
            'title' => 'Posición',
            'columns' => '1',
        ),
        2 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'respuesta_1',
                    'label' => 'Pregunta 1',
                ),
                1 => 
                array (
                    'name' => 'respuesta_2',
                    'label' => 'Pregunta 2',
                ),
                2 => 
                array (
                    'name' => 'respuesta_3',
                    'label' => 'Pregunta 3',
                ),
                3 => 
                array (
                    'name' => 'respuesta_4',
                    'label' => 'Pregunta 4',
                ),
                4 => 
                array (
                    'name' => 'respuesta_5',
                    'label' => 'Pregunta 5',
                ),
            ),
            'id' => 'espacio',
            'title' => 'Respuestas',
            'columns' => '3',
        ),
    ),
);

}
