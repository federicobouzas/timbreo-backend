<?php

App::uses('AppController', 'Controller');

class RutasController extends AppController {

    public function add($return = null) {
        $this->render = ["add", "default"];
        $this->maint = Parse::getData('Elecciones.Rutas/RutasAddMaint');
        parent::add($return);
    }

    public function edit($id = null, $return = null) {
        $this->maint = Parse::getData('Elecciones.Rutas/RutasMaint');
        parent::edit($id, $return);
    }

    public function index($last = false) {
        $this->search_list = Parse::getData('Elecciones.Rutas/RutasSL');
        parent::index($last);
    }

    public function view($id = null, $return = null) {
        $this->maint = Parse::getData('Elecciones.Rutas/RutasMaint');
        parent::view($id, $return);
    }

    public function multiple($ids = null, $next = null) {
        App::uses("TablesRender", "Lib");
        $this->maint = Parse::getData('Elecciones.Rutas/RutasMaint');
        $this->OP = "V";
        $registros = array();
        $model = $this->getModelName();

        // Obtengo los registros
        $array_ids = explode(",", $ids);

        foreach ($array_ids as $id) {
            // Solo IDs correctos
            if (empty($id) || !is_numeric($id)) {
                continue;
            }

            completeXmlMaintData($this->maint, $model);

            // Verifico que exista el registro
            $this->$model->id = $id;
            if (!$this->$model->exists()) {
                throw new NotFoundException(__('Registro inexistente'));
            }

            // Obtengo los datos del registro
            $row = $this->$model->read(null, $id);
            if (empty($row)) {
                throw new NotFoundException(__('Registro inexistente'));
            }

            // Renderizo las tablas
            $obj = new TablesRender($this->maint['data'], $this->OP, $model, $id);
            $obj->drawTables();

            // Recorro todos los campos de fieldsets para setearle el presentation y el valor
            foreach ($this->maint['data'] as $keyBlock => $block) {
                if ($block['type'] == "fieldset") {
                    foreach ($block['fields'] as $keyField => $field) {
                        list($tabla, $campo) = getModelAndField($field["field"], $model);
                        if (!empty($field["value"])) {
                            $value = $field["value"];
                        } elseif (isset($this->row[$tabla]) && key_exists($campo, $this->row[$tabla])) {
                            $value = $this->row[$tabla][$campo];
                        } else {
                            $value = "";
                        }
                        $this->maint['data'][$keyBlock]['fields'][$keyField]["presentation"]->create($value);
                        $this->maint['data'][$keyBlock]['fields'][$keyField]["presentation"]->setReadonly(true);
                        $this->maint['data'][$keyBlock]['fields'][$keyField]["presentation"]->setHtml(true);
                    }
                }
            }

            $registros[$id] = array(
                'data' => $this->maint['data'],
                'row' => $row
            );
        }

        $this->set('registros', $registros);
        $this->set('next', getNextUrl($next));
        $this->set('cssincludes', isset($this->maint['cssincludes']) ? $this->maint['cssincludes'] : array());
        $this->set('jsincludes', isset($this->maint['jsincludes']) ? $this->maint['jsincludes'] : array());
        $this->set('plugin', $this->plugin);
        $this->set('model', $model);
        $this->set('model_id', $ids);
    }

    public function delete($id = null, $return = null) {
        // Chequea que el metodo sea POST
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException(__('Acción no autorizada a realizar.'));
        }

        // Chequea que el registro exista en la BD
        $this->Ruta->id = $id;
        if (!$this->Ruta->exists()) {
            throw new NotFoundException(__('Registro inexistente.'));
        }

        $this->Ruta->Query("UPDATE ele_votantes SET en_ruta='No' WHERE id IN (SELECT votante_id FROM ele_votantes_rutas WHERE ruta_id=" . $id . ")");
        $this->Ruta->Query("DELETE FROM ele_votantes_rutas WHERE ruta_id=" . $id);
        parent::delete($id);
    }

    public function imprimir($ids = null) {
        include_once(CAKE_FRAMEWORK . DS . 'app' . DS . 'Lib' . DS . 'FPDF' . DS . 'fpdf.php');

        $array = explode(",", $ids);
        $reduccion_zoom = 1;
        $pdf = new FPDF();

        foreach ($array as $id) {
            $data_ruta = $this->Ruta->read(null, $id);
            if (empty($data_ruta)) {
                throw new NotFoundException(__('Registro #' . $id . ' inexistente'));
            }

            $votantes = $data_ruta['Votante'];

            $data = array();
            $i = 65;
            $markers = '';

            foreach ($votantes as $votante) {
                if ($votante["en_ruta"] != "Verificado") {
                    $data[chr($i)] = $votante;
                    $markers .= '&markers=label:' . chr($i) . '%7C' . str_replace(" ", "", $votante['location']);
                    $i++;
                }
            }

            // Genero la imagen del mapa
            $file = md5(time() . rand()) . ".png";
            //$file = $id. ".png";
            $path = WWW_ROOT . 'files' . DS . $file;
            $fp = fopen($path, 'w');
            fwrite($fp, file_get_contents('http://maps.googleapis.com/maps/api/staticmap?center=' . str_replace(" ", "", $data_ruta['Ruta']['centro']) . '&zoom=' . ($data_ruta['Ruta']['zoom'] - $reduccion_zoom) . '&scale=2&size=800x500&maptype=roadmap' . $markers . '&sensor=false'));
            fclose($fp);

            // Header, Datos y Mapa
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 12);
            //$pdf->Image(WWW_ROOT . "img" . DS . "gcba.jpg", 50, 10, 120);
            //$pdf->Ln(40);

            $pdf->SetFont('Arial', 'B', 14);
            $pdf->Cell(40, 6, utf8_decode('Ruta:'), 0);
            $pdf->SetFont('');
            $pdf->Cell(40, 6, utf8_decode($data_ruta['Ruta']['id']), 0);

            $pdf->SetFont('Arial', 'B', 14);
            $pdf->Cell(40, 6, utf8_decode('Encargado:'), 0);
            $pdf->SetFont('');
            $pdf->Cell(40, 6, utf8_decode($data_ruta['Ruta']['encargado']), 0);
            $pdf->Ln(10);

            $pdf->SetFont('Arial', 'B', 14);
            $pdf->Cell(40, 6, utf8_decode('Información:'), 0);
            $pdf->SetFont('');
            $pdf->Cell(40, 6, utf8_decode($data_ruta['Ruta']['informacion']), 0);
            $pdf->Ln(10);

            $pdf->Image($path, 10, 30, 190);

            // Tabla
            //$pdf->AddPage();
            $pdf->Ln(155);
            $w = array(5, 50, 50, 60, 10);

            $pdf->SetFont('Arial', 'B', 9);
            $header = array('#', 'Nombre', 'Apellido', 'Calle', 'Altura');
            for ($i = 0; $i < count($header); $i++) {
                $pdf->Cell($w[$i], 6, utf8_decode($header[$i]), 1, 0, 'C');
            }
            $pdf->Ln();

            $pdf->SetFont('Arial', '', 8);
            $pdf->SetFillColor(224, 235, 255);
            $pdf->SetTextColor(0);
            $fill = false;
            foreach ($data as $num => $row) {
                $nombre = substr(utf8_decode($row['nombre'] . " " . $row['apellido']), 0, 26) . (strlen($row['nombre'] . " " . $row['apellido']) > 26 ? '...' : '');
                $calle = substr(utf8_decode($row['route']), 0, 22) . (strlen($row['route']) > 22 ? '...' : '');
                
                $pdf->Cell($w[0], 6, $num, 'LR', 0, 'C', $fill);
                $pdf->Cell($w[1], 6, $row['nombre'], 'LR', 0, 'C', $fill);
                $pdf->Cell($w[2], 6, $row['apellido'], 'LR', 0, 'C', $fill);
                $pdf->Cell($w[3], 6, $row['route'], 'LR', 0, 'C', $fill);
                $pdf->Cell($w[4], 6, $row['street_number'], 'LR', 0, 'C', $fill);
                $pdf->Ln();
                $fill = !$fill;
            }

            $pdf->Cell(array_sum($w), 0, '', 'T');

            // Elimino las imagenes creadas
            unlink($path);
        }

        // Imprimo
        $pdf->Output();
        exit(0);
    }

    public function confirmar() {
        if (empty($this->request->data["centro"]) || empty($this->request->data["zoom"]) || empty($this->request->data["markers"])) {
            $this->set('data', array('status' => 'EMPTY'));
            return $this->render('/ajax', 'ajax');
        }

        $db = ConnectionManager::getDataSource('default');
        $db->begin();

        $this->Ruta->create();
        $check = $this->Ruta->save([
            "fecha_carga" => date("Y-m-d H:i:s"),
            "user_id" => AuthComponent::user("id"),
            "centro" => $this->request->data["centro"],
            "zoom" => $this->request->data["zoom"],
            "encargado" => empty($this->request->data["encargado"]) ? "" : $this->request->data["encargado"],
            "informacion" => empty($this->request->data["informacion"]) ? "" : $this->request->data["informacion"]
        ]);

        if (empty($check)) {
            $db->rollback();
            $this->set('data', array('status' => 'ERROR 1'));
            return $this->render('/ajax', 'ajax');
        }

        foreach (explode(",", $this->request->data["markers"]) as $marker) {
            if (!is_numeric($marker)) {
                $db->rollback();
                $this->set('data', array('status' => 'ERROR 2'));
                return $this->render('/ajax', 'ajax');
            }
            $query1 = $db->Query("UPDATE ele_votantes SET en_ruta = 'Si' WHERE id=" . $marker);
            $query2 = $db->Query("INSERT INTO ele_votantes_rutas (votante_id, ruta_id) VALUES (" . $marker . ", " . $this->Ruta->id . ")");

            if ($query1 === false || $query2 === false) {
                $db->rollback();
                $this->set('data', array('status' => 'ERROR 3'));
                return $this->render('/ajax', 'ajax');
            }
        }

        $db->commit();
        $this->set('data', array('status' => 'OK'));
        return $this->render('/ajax', 'ajax');
    }

    public function etiquetar($id = null) {
        $this->Ruta->etiquetar($id);
        $this->redirect(WWW . "elecciones/rutas/index/last");
    }

    public function carta($id = null) {
        $this->Ruta->carta($id);
        exit(0);
    }

}
