<?php

set_time_limit(0);

App::uses('AbstractData', 'Lib');

class FiscalesCabaImportarMaint extends AbstractData {

    protected $data = array(
        'data' => array(
            array(
                'type' => 'fieldset',
                'title' => 'Descripción de la Importación',
                'fields' => array(
                    array('name' => 'tmp_ejemplo', 'label' => 'Ejemplo', 'presentation' => 'DIRECT_FILE', 'initialvalue' => 'ejemplo_fiscales.xlsx'),
                    array('name' => 'tmp_omitir_primer_fila', 'label' => 'Omitir Primer Fila', 'presentation' => 'SINO', 'initialvalue' => 'Si'),
                    array('name' => 'tmp_archivo', 'label' => 'Archivo Excel', 'presentation' => 'FILE'),
                    array('name' => 'area', 'label' => 'Área'),
                ),
            ),
        ),
    );
    protected $import = array(
        'A' => array('name' => 'referente', 'label' => 'Referente'),
        'B' => array('name' => 'apellido', 'label' => 'Apellido'),
        'C' => array('name' => 'nombre', 'label' => 'Nombre'),
        'D' => array('name' => 'dni', 'label' => 'DNI'),
        'E' => array('name' => 'telefono', 'label' => 'Teléfono'),
        'F' => array('name' => 'email', 'label' => 'Email'),
        'G' => array('name' => 'barrio_vota', 'label' => 'Barrio'),
        'H' => array('name' => 'fue_fiscal', 'label' => 'Fue Fiscal'),
        'I' => array('name' => 'capacitado', 'label' => 'Capacitado'),
        'J' => array('name' => 'comentarios', 'label' => 'Comentarios'),
    );

}
