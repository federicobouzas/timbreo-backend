<?php

set_time_limit(0);

App::uses('AbstractData', 'Lib');

class ResultadosMerloImportarMaint extends AbstractData {

    protected $data = array(
        'data' => array(
            array(
                'type' => 'fieldset',
                'title' => 'Descripción de la Importación',
                'fields' => array(
                    array('name' => 'tmp_ejemplo', 'label' => 'Ejemplo', 'presentation' => 'DIRECT_FILE', 'initialvalue' => 'ejemplo_reclamos.xlsx'),
                    array('name' => 'tmp_omitir_primer_fila', 'label' => 'Omitir Primer Fila', 'presentation' => 'SINO', 'initialvalue' => 'Si'),
                    array('name' => 'tmp_archivo', 'label' => 'Archivo Excel', 'presentation' => 'FILE'),
                ),
            ),
        ),
    );
    protected $import = array(
        'A' => array('name' => 'mesa', 'label' => 'Mesa'),
        'B' => array('name' => 'circuito', 'label' => 'Circuito'),
        'C' => array('name' => 'establecimiento', 'label' => 'Establecimiento'),
        'D' => array('name' => 'direccion', 'label' => 'Dirección'),
        'H' => array('name' => 'extranjero', 'label' => 'Extranjero', 'presentation' => 'SINO'),
    );
}
