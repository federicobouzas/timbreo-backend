<?php

class Ruta extends AppModel {

    public $label = 'Rutas';
    public $tablePrefix = 'ele_';
    public $useTable = 'rutas';
    public $plugin = 'Elecciones';
    public $displayField = 'id';
    public $virtualFields = array(
        'tmp_id' => 'id'
    );
    public $hasAndBelongsToMany = array(
        'Votante' => array(
            'className' => 'Elecciones.Votante',
            'joinTable' => 'ele_votantes_rutas',
            'foreignKey' => 'ruta_id',
            'associationForeignKey' => 'votante_id',
            'unique' => true
        )
    );
    public $validate = array(
        'realizada' => array(
            'required' => array(
                'rule' => array('notBlank'),
                'message' => 'Debe indicar si la ruta se encuentra realizada'
            )
        )
    );

    public function afterSave($created, $options = array()) {
        //$this->etiquetar($this->id);
        //$this->carta($this->id);
        return parent::afterSave($created, $options);
    }

    public function etiquetar($id) {
        $configuration = getSystemConfiguration();
        $ruta = $this->findById($id);
        $filename = APP . "tmp" . DS . "files" . DS . "label.epl";
        $str = "";

        $domicilios = array();
        foreach ($ruta["Votante"] as $key => $row) {
            $domicilios[$key] = $row['route'] . " " . $row['street_number'];
        }
        array_multisort($domicilios, SORT_ASC, $ruta["Votante"]);

        foreach ($ruta["Votante"] as $votante) {
            $str .= $this->Votante->etiquetar($votante["id"]);
        }
        file_put_contents($filename, $str);
        $cmdImpresion = '/usr/bin/smbspool smb://' . $configuration["hamachi_user"] . ':' . $configuration["hamachi_pass"] . '@' . $configuration["hamachi_ip"] . '/zebra test-1 root "titulo" 1 "" < ' . $filename;
        shell_exec($cmdImpresion);
    }

    public function carta($id) {
        include_once(CAKE_FRAMEWORK . DS . 'app' . DS . 'Lib' . DS . 'FPDF' . DS . 'fpdf.php');
        $pdf = new FPDF();
        $pdf->SetAutoPageBreak(false);
        $pdf->SetFont('Times', '', 12);
        $ruta = $this->findById($id);
        $domicilios = array();
        foreach ($ruta["Votante"] as $key => $row) {
            $domicilios[$key] = $row['route'] . " " . $row['street_number'];
        }
        array_multisort($domicilios, SORT_ASC, $ruta["Votante"]);
        foreach ($ruta["Votante"] as $votante) {
            $nombre = utf8_decode(ucwords(strtolower($votante["nombre"] . " " . $votante["apellido"])) . ":");
            $pdf->SetAutoPageBreak(false);
            $pdf->AddPage();
            $pdf->SetFont('Arial', 'B', 10);
            $pdf->SetTextColor(51, 51, 51);
            $pdf->Ln(18);
            $pdf->Cell(27);
            $pdf->Cell(0, 60, $nombre, 0);
        }
        $pdf->Output();
    }

}
