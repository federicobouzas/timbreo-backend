<?php

set_time_limit(0);

App::uses('AbstractData', 'Lib');

class VotantesImportarMaint extends AbstractData {

    protected $data = array(
        'data' => array(
            array(
                'type' => 'fieldset',
                'title' => 'Descripción de la Importación',
                'fields' => array(
                    array('name' => 'tmp_ejemplo', 'label' => 'Ejemplo', 'presentation' => 'DIRECT_FILE', 'initialvalue' => 'ejemplo_votantes.xlsx'),
                    array('name' => 'tmp_omitir_primer_fila', 'label' => 'Omitir Primer Fila', 'presentation' => 'SINO', 'initialvalue' => 'Si'),
                    array('name' => 'tmp_excel', 'label' => 'Archivo Excel', 'presentation' => 'FILE'),
                ),
            ),
        ),
    );
    
    protected $import = array(
        'A' => array('name' => 'matricula', 'label' => 'Matrícula'),
        'B' => array('name' => 'clase', 'label' => 'Clase'),
        'C' => array('name' => 'apellido', 'label' => 'Apellido'),
        'D' => array('name' => 'nombre', 'label' => 'Nombre'),
        'E' => array('name' => 'domicilio', 'label' => 'Domicilio'),
        'F' => array('name' => 'tipodoc', 'label' => 'Tipo Documento'),
        'G' => array('name' => 'circuito', 'label' => 'Circuito'),
        'H' => array('name' => 'mesa', 'label' => 'Mesa'),
        'I' => array('name' => 'sexo', 'label' => 'Sexo'),
        'J' => array('name' => 'orden', 'label' => 'Orden'),
    );

}
