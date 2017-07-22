<?php

require WWW_ROOT . '..' . DS . 'Lib' . DS . 'PHP-on-Couch-master' . DS . 'src' . DS . 'autoload.php';

use PHPOnCouch\CouchClient;
use PHPOnCouch\CouchDocument;

class ImpactarCargasCouchDBShell extends AppShell {

    public $uses = array('Merlo.CargaMerlo', 'Campana.CargaCampana');

    public function main() {
        $this->out("CRON DE IMPACTO DE COUCHDB (" . date("H:i:s") . " DEL " . date("d/m/Y") . ")");
        $this->merlo();
        $this->campana();
        $this->setFechaUltimaEjecucion();
        $this->out("FIN");
    }
    
    public function campana() {
        try {
            $couchdb_server_dsn = "https://couchdb.timbrea.me/";
            $couchdb_database_name = "timbreo-campana";
            $client = new CouchClient($couchdb_server_dsn, $couchdb_database_name);

            $all_docs = $client->getAllDocs();
            foreach ($all_docs->rows as $row) {
                if (!$this->CargaCampana->findByCouchdbId($row->id)) {
                    $doc = $client->getDoc($row->id);
                    $this->CargaCampana->create();
                    $this->CargaCampana->save([
                        "couchdb_id" => $doc->_id,
                        "couchdb_rev" => $doc->_rev,
                        "time" => isset($doc->time) ? date("Y-m-d H:i:s", (int) ($doc->time / 1000)) : "",
                        "identificacion" => isset($doc->user->identificacion) ? $doc->user->identificacion : "",
                        "position" => isset($doc->position->latitude) && isset($doc->position->latitude) ? ($doc->position->latitude . "," . $doc->position->longitude) : "",
                        "edad" => isset($doc->respuestas->{'edad'}) ? $doc->respuestas->{'edad'} : "",
                        "nombre" => isset($doc->respuestas->{'nombre'}) ? $doc->respuestas->{'nombre'} : "",
                        "email" => isset($doc->respuestas->{'email'}) ? $doc->respuestas->{'email'} : "",
                        "telefono" => isset($doc->respuestas->{'telefono'}) ? $doc->respuestas->{'telefono'} : "",
                        "respuesta_1" => isset($doc->respuestas->{'1'}) ? $this->formatRespuesta($doc->respuestas->{'1'}) : "",
                        "respuesta_2" => isset($doc->respuestas->{'2'}) ? $this->formatRespuesta($doc->respuestas->{'2'}) : "",
                        "respuesta_3" => isset($doc->respuestas->{'3'}) ? $this->formatRespuesta($doc->respuestas->{'3'}) : "",
                        "respuesta_4" => isset($doc->respuestas->{'4'}) ? $this->formatRespuesta($doc->respuestas->{'4'}) : "",
                        "respuesta_5" => isset($doc->respuestas->{'5'}) ? $this->formatRespuesta($doc->respuestas->{'5'}) : "",
                    ]);
                }
            }
        } catch (Exception $ex) {
            debug($doc);
            debug($ex);
        }
    }
    
    public function merlo() {
        try {
            $couchdb_server_dsn = "https://couchdb.timbrea.me/";
            $couchdb_database_name = "timbreo-merlo";
            $client = new CouchClient($couchdb_server_dsn, $couchdb_database_name);

            $all_docs = $client->getAllDocs();
            foreach ($all_docs->rows as $row) {
                if (!$this->CargaMerlo->findByCouchdbId($row->id)) {
                    $doc = $client->getDoc($row->id);
                    $this->CargaMerlo->create();
                    $this->CargaMerlo->save([
                        "couchdb_id" => $doc->_id,
                        "couchdb_rev" => $doc->_rev,
                        "time" => isset($doc->time) ? date("Y-m-d H:i:s", (int) ($doc->time / 1000)) : "",
                        "identificacion" => isset($doc->user->identificacion) ? $doc->user->identificacion : "",
                        "position" => isset($doc->position->latitude) && isset($doc->position->latitude) ? ($doc->position->latitude . "," . $doc->position->longitude) : "",
                        "edad" => isset($doc->respuestas->{'edad'}) ? $doc->respuestas->{'edad'} : "",
                        "nombre" => isset($doc->respuestas->{'nombre'}) ? $doc->respuestas->{'nombre'} : "",
                        "email" => isset($doc->respuestas->{'email'}) ? $doc->respuestas->{'email'} : "",
                        "telefono" => isset($doc->respuestas->{'telefono'}) ? $doc->respuestas->{'telefono'} : "",
                        "respuesta_1" => isset($doc->respuestas->{'1'}) ? $doc->respuestas->{'1'} : "",
                        "respuesta_2" => isset($doc->respuestas->{'2'}) ? $doc->respuestas->{'2'} : "",
                        "respuesta_3" => isset($doc->respuestas->{'3'}) ? $doc->respuestas->{'3'} : "",
                        "respuesta_4" => isset($doc->respuestas->{'4'}) ? $doc->respuestas->{'4'} : "",
                        "respuesta_5" => isset($doc->respuestas->{'5'}) ? $doc->respuestas->{'5'} : "",
                        "respuesta_6" => isset($doc->respuestas->{'6'}) ? $doc->respuestas->{'6'} : "",
                        "respuesta_7" => isset($doc->respuestas->{'7'}) ? $doc->respuestas->{'7'} : "",
                        "respuesta_8" => isset($doc->respuestas->{'8'}) ? $doc->respuestas->{'8'} : "",
                        "respuesta_9" => isset($doc->respuestas->{'9'}) ? $doc->respuestas->{'9'} : "",
                        "respuesta_10" => isset($doc->respuestas->{'10'}) ? $doc->respuestas->{'10'} : "",
                        "respuesta_11" => isset($doc->respuestas->{'11'}) ? $doc->respuestas->{'11'} : "",
                    ]);
                }
            }
        } catch (Exception $ex) {
            debug($ex);
        }
    }
    
    public function formatRespuesta($respuesta) {
        if (is_array($respuesta)) {
            return implode(",", $respuesta);
        }
        return $respuesta;
    }

}
