<?php

App::uses('Presentation', 'Lib');

class pst_mapa extends Presentation {

    public function __construct($settings) {
        parent::__construct($settings);
        $this->js_initial = "mapa_init";
    }

    public function jsIncludes() {
        return array(
            'https://maps.google.com/maps/api/js?key=' . AppConfig::get('site.googlemaps.key') . '&sensor=false',
            "presentation/rutas/mapa.js"
        );
    }
    
    public function renderReadOnly() {
        $html = '';
        $html.= '<div id="box' . $this->id . '" class="input googlemap ' . $this->required . '">';
        $html.= '<input type="hidden" name="' . $this->name . '" id="' . $this->id . '" value="' . $this->value . '" />';
        $html.= '<div id="mapa' . $this->id . '" style="width: 640px; height: 500px;"></div>';
        $html.= '</div>';

        return $html;
    }
    
    public function getMarkers($params) {
        if (empty($params->ruta_id) || !is_numeric($params->ruta_id)) {
            return array('status' => 'ERROR');
        }

        $db = ConnectionManager::getDataSource('default');

        $coordenadas = $db->Query("SELECT s.coordenadas FROM ele_socios s
                                   JOIN ele_socios_rutas sr ON sr.socio_id=s.id
                                   WHERE sr.ruta_id=" . $params->ruta_id . " AND s.en_ruta != 'Verificado'
                                   ORDER BY s.calle ASC, s.altura ASC");

        $i = 1;
        $markers = array();
        foreach ($coordenadas as $coordenada) {
            $markers[$i++] = explode(",", $coordenada['s']['coordenadas']);
        }
        
        return array('status' => 'OK', 'markers' => $markers);
    }

}