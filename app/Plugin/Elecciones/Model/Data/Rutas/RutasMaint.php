<?php

/* GENERADO AUTOMATICAMENTE */

App::uses('AbstractData', 'Lib');

class RutasMaint extends AbstractData {

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
                    'name' => 'id',
                    'label' => 'Número',
                    'readonly' => true,
                ),
                1 => 
                array (
                    'name' => 'encargado',
                    'label' => 'Encargado',
                ),
                2 => 
                array (
                    'name' => 'informacion',
                    'label' => 'Información',
                    'presentation' => 'TEXTAREA',
                ),
                3 => 
                array (
                    'name' => 'Ruta.realizada',
                    'label' => 'Realizada',
                    'presentation' => 'RUTAS::ESTADO_RUTA',
                ),
            ),
            'id' => 'datos',
            'title' => 'Datos de la Ruta',
            'columns' => '1',
        ),
        1 => 
        array (
            'type' => 'fieldset',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'centro',
                    'label' => 'Centro',
                    'isvisible' => false,
                ),
                1 => 
                array (
                    'name' => 'zoom',
                    'label' => 'Zoom',
                    'isvisible' => false,
                ),
                2 => 
                array (
                    'name' => 'tmp_id',
                    'label' => 'Mapa',
                    'presentation' => 'RUTAS::MAPA',
                    'readonly' => true,
                ),
            ),
            'id' => 'mapa-ruta',
            'title' => 'Mapa',
        ),
        2 => 
        array (
            'type' => 'table',
            'fields' => 
            array (
                0 => 
                array (
                    'name' => 'Votante.en_ruta',
                    'label' => 'Estado',
                    'presentation' => 'SOCIOS_PADRON::ESTADO_SOCIO',
                    'isvisible' => false,
                ),
                1 => 
                array (
                    'name' => 'nombre',
                    'label' => 'Nombre',
                ),
                2 => 
                array (
                    'name' => 'apellido',
                    'label' => 'Apellido',
                ),
                3 => 
                array (
                    'name' => 'route',
                    'label' => 'Calle',
                ),
                4 => 
                array (
                    'name' => 'street_number',
                    'label' => 'Altura',
                ),
            ),
            'id' => 'votantes',
            'paginate' => false,
            'title' => 'Votantes',
            'model' => 'Votante',
            'orderby' => 'Votante.route ASC, Votante.street_number ASC',
            'assoc' => true,
            'multiple' => true,
            'conditions' => 
            array (
                'Votante.en_ruta !=' => 'Verificado',
            ),
        ),
    ),
);

}
