<?php

App::uses('Sanitize', 'Utility');
App::import('Vendor', 'funciones');

class GeolocateShell extends AppShell {

    public $uses = array('Elecciones.Votante');
    public $limit = false;
    public $max = 100;
    public $key = "AIzaSyBgW_37h86jkC0jUYW8H1fpJhTIVmJ-KYY";

    public function main() {
        $this->out("GEOLOCALIZANDO " . date("d/m/Y H:i"));
        $this->padron();
        $this->out("FIN " . date("d/m/Y H:i"));
    }

    protected function padron() {
        $votantes = $this->Votante->find("all", [
            "limit" => $this->max,
            "conditions" => ["estado_geo" => "Sin geolocalizar"]
        ]);

        if (empty($votantes)) {
            $this->out("NO HAY NADA PARA GEOLOCALIZAR");
            return;
        }

        foreach ($votantes as $votante) {
            $this->Votante->id = $votante['Votante']['id'];
            $this->Votante->saveField('estado_geo', "Geolocalizando");
        }

        foreach ($votantes as $votante) {
            $this->Votante->id = $votante['Votante']['id'];

            // Si el flag indica que se cumplio el limite los pongo uno por uno devuelta como "Sin geolocalizar"
            if ($this->limit) {
                $this->Votante->saveField('estado_geo', "Sin geolocalizar");
                continue;
            }

            // Geolocalizo
            $url_google = "https://maps.googleapis.com/maps/api/geocode/json?key=" . $this->key . "&address=" . urlencode(trim($votante['Votante']['domicilio']) . ", Campana, Buenos Aires, Argentina") . "&sensor=false";
            $json = file_get_contents($url_google);
            $jdata = json_decode($json, true);

            // Si google nos dice que se cumplio el limite lo pongo devuelta como "Sin geolocalizar" y cambio el flag
            if ($jdata['status'] == "OVER_QUERY_LIMIT") {
                $this->Votante->saveField('estado_geo', "Sin geolocalizar");
                $this->out("OVER_QUERY_LIMIT");
                $this->out("---------------------------------------------------------------");
                $this->limit = true;
                continue;
            }

            if ($jdata['status'] == "ZERO_RESULTS") {
                $this->Votante->saveField('estado_geo', "No geolocalizable");
                continue;
            }

            $array = array();

            if ($jdata['status'] == "OK" && count($jdata['results'])) {
                foreach ($jdata['results'][0]['address_components'] as $comp) {
                    if ($comp['types'][0] == 'street_number') {
                        $array['street_number'] = $comp['long_name'];
                    } elseif ($comp['types'][0] == 'route') {
                        $array['route'] = $comp['long_name'];
                    } elseif ($comp['types'][0] == 'political') {
                        $array['political'] = $comp['long_name'];
                    } elseif ($comp['types'][0] == 'locality') {
                        $array['locality'] = $comp['long_name'];
                    } elseif ($comp['types'][0] == 'administrative_area_level_2') {
                        $array['administrative_area_level_2'] = $comp['long_name'];
                    } elseif ($comp['types'][0] == 'administrative_area_level_1') {
                        $array['administrative_area_level_1'] = $comp['long_name'];
                    }
                }

                $array['location'] = $jdata['results'][0]['geometry']['location']['lat'] . "," . $jdata['results'][0]['geometry']['location']['lng'];

                if (isset($array['route']) && isset($array['street_number']) && isset($array['location'])) {
                    try {
                        $this->Votante->save([
                            'street_number' => $array['street_number'],
                            'route' => $array['route'],
                            'political' => isset($array['political']) ? $array['political'] : null,
                            'locality' => isset($array['locality']) ? $array['locality'] : null,
                            'administrative_area_level_1' => isset($array['administrative_area_level_1']) ? $array['administrative_area_level_1'] : null,
                            'administrative_area_level_1' => isset($array['administrative_area_level_2']) ? $array['administrative_area_level_2'] : null,
                            'location' => $array['location'],
                            'estado_geo' => 'Geolocalizado',
                        ]);
                    } catch (Exception $ex) {
                        $this->Votante->saveField('estado_geo', "No geolocalizable");
                    }
                } else {
                    $this->Votante->saveField('estado_geo', "No geolocalizable");
                }
            }
        }
    }

}
