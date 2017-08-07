<?php

class FiscalCaba extends AppModel {

    public $label = 'Fiscales CABA';
    public $tablePrefix = 'ele_';
    public $useTable = 'fiscales_caba';
    public $plugin = 'Elecciones';
    public $validate = array(
        'area' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'El campo Área es requerido'
            )
        ),
    );

    public function beforeImport(&$records, $skipFirstRow, AppShell $appShell = null) {
        foreach ($records as $key => $value) {
            if (isset($value['FiscalCaba']['barrio_vota'])) {
                $records[$key]['FiscalCaba']['barrio_vota'] = Inflector::humanize(strtolower($value['FiscalCaba']['barrio_vota']));
                $records[$key]['FiscalCaba']['comuna_vota'] = getComuna($records[$key]['FiscalCaba']['barrio_vota']);
            }
        }
    }

}
