<?php

//require WWW_ROOT . '..' . DS . 'Lib' . DS . 'PHP-on-Couch-master' . DS . 'src' . DS . 'autoload.php';
//use PHPOnCouch\CouchClient;
//use PHPOnCouch\CouchDocument;

class ImpactarCargasCouchDBShell extends AppShell {

    public $uses = array('Merlo.CargaMerlo');

    public function main() {
        $this->out("CRON DE IMPACTO DE COUCHDB (" . date("H:i:s") . " DEL " . date("d/m/Y") . ")");

        if (1) {
            debug("MANUAL");
            $data = file_get_contents("http://eideoos.com:5984/timbreo-merlo/_all_docs?include_docs=true&conflicts=true");
            debug($data);
            die;
            $jdata = json_decode($data);
            debug($jdata);
        } else {
            try {
                debug("LIB");
                $couchdb_server_dsn = "http://eideoos.com:5984/";
                $couchdb_database_name = "timbreo-merlo-dev";
                $client = new CouchClient($couchdb_server_dsn, $couchdb_database_name);
                $docs = $client->getAllDocs();
                debug($docs);
            } catch (Exception $ex) {
                debug($ex);
            }
        }

        $this->setFechaUltimaEjecucion();
        $this->out("FIN");
    }

}
