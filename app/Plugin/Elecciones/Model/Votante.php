<?php

class Votante extends AppModel {

    public $label = 'Votantes Padrón';
    public $tablePrefix = 'ele_';
    public $useTable = 'votantes';
    public $plugin = 'Elecciones';
    public $recursive = -1;
    public $hasAndBelongsToMany = array(
        'Ruta' => array(
            'className' => 'Elecciones.Ruta',
            'joinTable' => 'ele_votantes_rutas',
            'foreignKey' => 'votante_id',
            'associationForeignKey' => 'ruta_id',
            'unique' => true
        )
    );
    public $validate = array(
        'en_ruta' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'Debe indicar si deja al socio en ruta'
            )
        ),
        'voto' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'Debe indicar si el Socio ya emitió el voto'
            )
        )
    );

    public function etiquetar($id = null, $string = false) {
        $configuration = getSystemConfiguration();
        $socio = $this->findById($id)["SocioPadron"];
        $filename = APP . "tmp" . DS . "files" . DS . "label.epl";
        $str = "";
        if ($socio["barrio_google"]) {
            $area1 = $socio["barrio_google"];
            $area2 = "CABA";
        } else {
            $area1 = $socio["localidad_google"];
            $area2 = $socio["partido_google"] == $socio["localidad_google"] ? $socio["provincia_google"] : $socio["partido_google"];
        }
        $str .= "M0\n";
        $str .= "S3\n";
        $str .= "N\n";
        $str .= "A20,2,0,4,1,1,R,\"        SIGLO XXI       \"\n";
        $str .= "A20,26,0,4,1,1,R,\"     Lammens-Tinelli    \"\n";
        $str .= "A20,65,0,4,1,1,N,\"" . fixString($socio["nombre"]) . "\"\n";
        $str .= "A20,90,0,3,1,1,N,\"" . fixString(substr($socio["calle_google"], 0, 22)) . " " . $socio["altura_google"] . "\"\n";
        $str .= "LO20,120,500,2\n";
        $str .= "A20,130,0,2,1,1,N,\"" . fixString($area1) . "\"\n";
        $str .= "A20,150,0,2,1,1,N,\"" . fixString($area2) . "\"\n";
        $str .= "A20,170,0,2,1,1,N,\"CP: " . $socio["codigo_postal"] . "\"\n";
        $str .= "P1\n";
        if ($string) {
            return $str;
        }
        file_put_contents($filename, $str);
        $cmdImpresion = '/usr/bin/smbspool smb://' . $configuration["hamachi_user"] . ':' . $configuration["hamachi_pass"] . '@' . $configuration["hamachi_ip"] . '/zebra test-1 root "titulo" 1 "" < ' . $filename;
        shell_exec($cmdImpresion);
    }

    public function carta($id = null) {
        include_once(CAKE_FRAMEWORK . DS . 'app' . DS . 'Lib' . DS . 'FPDF' . DS . 'fpdf.php');
        $pdf = new FPDF();

        $socio = $this->findById($id);

        $pdf->SetAutoPageBreak(false);
        $pdf->AddPage();
        $pdf->SetFont('Times', '', 12);
        $pdf->Ln(51);
        $pdf->Cell(25);
        $pdf->Cell(0, 60, utf8_decode("/a " . ucwords(strtolower($socio["SocioPadron"]["nombre"])) . ":"), 0);
        $pdf->Ln(190);
        $pdf->Cell(3);
        $pdf->Cell(44, 60, utf8_decode("Votás en la mesa número "), 0);
        $pdf->SetFont('Times', 'B', 12);
        $pdf->Cell($socio["SocioPadron"]["mesa"] > 9 ? 5 : 2, 60, utf8_decode($socio["SocioPadron"]["mesa"]), 0);
        $pdf->SetFont('Times', '', 12);
        $pdf->Cell(0, 60, utf8_decode(" | el17jugasvos@gmail.com"), 0);

        // Imprimo
        $pdf->Output();
    }

}
