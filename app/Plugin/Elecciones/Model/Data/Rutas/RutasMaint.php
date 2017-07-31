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
                    'name' => 'SocioPadron.en_ruta',
                    'label' => 'Estado',
                    'presentation' => 'SOCIOS_PADRON::ESTADO_SOCIO',
                    'isvisible' => false,
                ),
                1 => 
                array (
                    'name' => 'SocioPadron.nombre',
                    'label' => 'Nombre',
                ),
                2 => 
                array (
                    'name' => 'SocioPadron.calle_google',
                    'label' => 'Calle',
                ),
                3 => 
                array (
                    'name' => 'SocioPadron.altura_google',
                    'label' => 'Altura',
                ),
                4 => 
                array (
                    'name' => 'SocioPadron.piso',
                    'label' => 'Piso',
                ),
                5 => 
                array (
                    'name' => 'SocioPadron.dpto',
                    'label' => 'Dto.',
                ),
                6 => 
                array (
                    'name' => 'SocioPadron.codigo_postal',
                    'label' => 'CP',
                ),
                7 => 
                array (
                    'name' => 'SocioPadron.barrio_google',
                    'label' => 'Barrio',
                ),
                8 => 
                array (
                    'name' => 'SocioPadron.localidad_google',
                    'label' => 'Localidad',
                ),
                9 => 
                array (
                    'name' => 'SocioPadron.partido_google',
                    'label' => 'Partido',
                ),
                10 => 
                array (
                    'name' => 'SocioPadron.provincia_google',
                    'label' => 'Provincia',
                ),
            ),
            'id' => 'socios',
            'paginate' => false,
            'title' => 'Socios',
            'model' => 'SocioPadron',
            'orderby' => 'SocioPadron.calle ASC, SocioPadron.altura ASC',
            'assoc' => true,
            'multiple' => true,
            'conditions' => 
            array (
                'SocioPadron.en_ruta !=' => 'Verificado',
            ),
        ),
    ),
);

}
