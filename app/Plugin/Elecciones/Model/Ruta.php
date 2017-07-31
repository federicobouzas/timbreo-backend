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
                'rule' => array('notEmpty'),
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
        foreach ($ruta["SocioPadron"] as $key => $row) {
            $domicilios[$key] = $row['calle_google'] . " " . $row['altura_google'];
        }
        array_multisort($domicilios, SORT_ASC, $ruta["SocioPadron"]);

        foreach ($ruta["SocioPadron"] as $socio) {
            $str .= $this->Subsidio->etiquetar($socio["id"]);
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
        foreach ($ruta["SocioPadron"] as $key => $row) {
            $domicilios[$key] = $row['calle_google'] . " " . $row['altura_google'];
        }
        array_multisort($domicilios, SORT_ASC, $ruta["SocioPadron"]);

        foreach ($ruta["SocioPadron"] as $socio) {
            $pdf->AddPage();
            $pdf->Ln(51);
            $pdf->Cell(25);
            $pdf->Cell(0, 60, utf8_decode("/a " . ucwords(strtolower($socio["nombre"])) . ":"), 0);
            $pdf->Ln(190);
            $pdf->Cell(3);
            $pdf->Cell(44, 60, utf8_decode("Votás en la mesa número "), 0);
            $pdf->SetFont('Times', 'B', 12);
            $pdf->Cell($socio["mesa"] > 9 ? 5 : 2, 60, utf8_decode($socio["mesa"]), 0);
            $pdf->SetFont('Times', '', 12);
            $pdf->Cell(0, 60, utf8_decode(" | el17jugasvos@gmail.com"), 0);
        }
        // Imprimo
        $pdf->Output();
    }

}
