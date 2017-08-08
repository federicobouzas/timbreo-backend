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

    public function etiquetar($id, $impresora = "") {
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
        $cmdImpresion = '/usr/bin/smbspool smb://' . $configuration["hamachi" . $impresora . "_user"] . ':' . $configuration["hamachi" . $impresora . "_pass"] . '@' . $configuration["hamachi" . $impresora . "_ip"] . '/zebra test-1 root "titulo" 1 "" < ' . $filename;
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
            $pdf->SetTopMargin(10.7);
            $pdf->AddPage();
            $pdf->SetFont('Arial', 'B', 10);
            $pdf->SetTextColor(51, 51, 51);
            $pdf->Ln(10);
            $pdf->Cell(24);
            $pdf->Cell(0, 60, $nombre, 0);
        }
        $pdf->Output();
    }

    public function carta_completa($id) {
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
            $pdf->SetTopMargin(10.7);
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 10);
            $pdf->SetTextColor(51, 51, 51);
            $pdf->Image(WWW_ROOT . 'img' . DS . 'Cambiemos_logo.png', 10, 12, 50, 0, '');
            $pdf->Ln(20);
            $pdf->Cell(0, 10, 'Campana, Agosto 2017', 0, 0, 'R');
            $pdf->Ln(20);
            $pdf->Cell(0, 5, "Querido/a " . $nombre);
            $pdf->Ln(10);
            $pdf->MultiCell(0, 5, iconv('UTF-8', 'windows-1252', "Hace un año y medio que nos diste la oportunidad de iniciar el cambio. Sabemos que no fue fácil dar este paso juntos, y así decidimos transformar la resignación en esperanza, la desconfianza en compromiso y el desánimo en motivación. Entendimos que era necesario ser protagonistas del cambio y emprender este camino juntos, tomando decisiones con coraje, convicción y responsabilidad."));
            $pdf->Ln(10);
            $pdf->MultiCell(0, 5, iconv('UTF-8', 'windows-1252', "Somos gente honesta y con valores, que elije y apuesta por nuestra ciudad. Somos un equipo que tiene la convicción de representarte y no de ocupar cargos para obtener un beneficio personal. Estamos frente a este nuevo desafío, el de seguir cambiando y generando mejores oportunidades para todos. Este es el momento de decidir si queremos seguir creciendo, el momento de darnos cuenta de que vamos a superarnos sólo si los problemas nos encuentran unidos y trabajando."));
            $pdf->Ln(10);
            $pdf->MultiCell(0, 5, iconv('UTF-8', 'windows-1252', "Desde que asumimos decidimos hacer lo que por años se pospuso. Iniciamos las obras que tanto esperamos y que están cambiando la calidad de vida de miles de familias, mejoramos los accesos a la ciudad, llevamos a cabo la urbanización integral de barrios: cloacas, pavimento y desagües pluviales. Invertimos en infraestructura escolar e incorporamos más tecnología en seguridad y luminarias. Promovemos día a día un gobierno abierto y accesible al vecino, rindiendo cuentas y considerando tus opiniones."));
            $pdf->Ln(10);
            $pdf->MultiCell(0, 5, iconv('UTF-8', 'windows-1252', "Con el equipo, salimos a conocerte, escucharte y poner el cuerpo asumiendo el compromiso de la confianza que depositaste en nosotros. Todos los problemas tienen solución, sobre todo si estamos juntos."));
            $pdf->Ln(10);
            $pdf->MultiCell(0, 5, iconv('UTF-8', 'windows-1252', "Por todo esto, te pido que nos acompañes con tu voto el proximo 13 de Agosto y junto a Sergio Roses consigamos la mayoría en el Concejo Deliberante para que este equipo siga creciendo y haciendo todo lo posible por sostener el cambio, sin aflojar ni un segundo en el objetivo de hacer de Campana una ciudad mejor para todos nosotros."));
            $pdf->Ln(10);
            $pdf->Cell(0, 5, iconv('UTF-8', 'windows-1252', "Es ahora."));
            $pdf->Ln(5);
            $pdf->Cell(0, 5, iconv('UTF-8', 'windows-1252', "¡Juntos es posible!"));
            $pdf->Ln(15);
            $pdf->Cell(0, 5, iconv('UTF-8', 'windows-1252', "Un fuerte abrazo,"));
            $pdf->Image(WWW_ROOT . 'img' . DS . 'firma-abella.jpeg', 130, 210, 70, 0, '');
        }
        $pdf->Output();
    }

}
