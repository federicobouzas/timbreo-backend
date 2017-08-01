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
        $votante = $this->findById($id)["Votante"];
        $filename = APP . "tmp" . DS . "files" . DS . "label.epl";
        $str = "";
        $str .= "M0\n";
        $str .= "S3\n";
        $str .= "N\n";
        $str .= "A20,2,0,4,2,1,R,\"  CAMBIEMOS  \"\n";
        $str .= "A20,26,0,4,1,1,R,\"     Abella - Roses     \"\n";
        $str .= "A20,65,0,4,1,1,N,\"" . fixString($votante["nombre"]) . "\"\n";
        $str .= "A20,90,0,3,1,1,N,\"" . fixString(substr($votante["route"], 0, 22)) . " " . $votante["street_number"] . "\"\n";
        $str .= "LO20,125,500,2\n";
		$str .= "A20,135,0,2,1,1,N,\"Campana\"\n";
        $str .= "A20,155,0,2,1,1,N,\"Buenos Aires\"\n";
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

        $nombre = "";
        $votante = $this->findById($id);
        if (isset($votante["Votante"]["sexo"])) {
            if ($votante["Votante"]["sexo"] == "M") {
                $nombre .= "o ";
            } elseif ($votante["Votante"]["sexo"] == "F") {
                $nombre .= "a ";
            } else {
                $nombre .= "o/a ";
            }
        } else {
            $nombre .= "o/a ";
        }
        $nombre .= utf8_decode(ucwords(strtolower($votante["Votante"]["nombre"] . " " . $votante["Votante"]["apellido"])) . ":");

        $pdf->SetAutoPageBreak(false);
        $pdf->AddPage();
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->SetTextColor(51, 51, 51);
        $pdf->Ln(19);
        $pdf->Cell(21);
        $pdf->Cell(0, 60, $nombre, 0);

        // Imprimo
        $pdf->Output();
    }

}
