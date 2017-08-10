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
                    array('name' => 'tmp_fecha_ult_carga_sap', 'label' => 'Fecha Última Carga', 'presentation' => 'DATE', 'readonly' => true),
                    array('name' => 'tmp_fecha_corte_archivo', 'label' => 'Fecha de Corte Excel', 'presentation' => 'DATE'),
                ),
            ),
        ),
    );
    protected $import = array(
        'A' => array('name' => 'aviso', 'label' => 'Aviso'),
        'B' => array('name' => 'clase', 'label' => 'Clase'),
        'C' => array('name' => 'estado', 'label' => 'Estado'),
        'D' => array('name' => 'fecha_aviso', 'label' => 'Fecha Aviso', 'presentation' => 'DATE'),
        'E' => array('name' => 'fecha_aviso_modificacion', 'label' => 'Fecha Modificación', 'presentation' => 'DATE'),
        'F' => array('name' => 'prestacion', 'label' => 'Prestación'),
        'G' => array('name' => 'descripcion', 'label' => 'Descripción'),
        'H' => array('name' => 'calle', 'label' => 'Calle'),
    );

}
