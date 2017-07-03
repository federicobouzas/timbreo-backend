<?php

App::uses('Presentation', 'Lib');
App::uses('Sanitize', 'Utility');

class pst_generar_ploteo extends Presentation {

    public function ajax_get_coordenadas($params) {
        $where = "";
        if (!empty($params->comuna)) {
            $where .= " AND comuna_google='" . $params->comuna . "' ";
        }
        if (!empty($params->barrio)) {
            $where .= " AND barrio_google='" . $params->barrio . "' ";
        }
        if (!empty($params->localidad)) {
            $where .= " AND localidad_google='" . $params->localidad . "' ";
        }
        if (!empty($params->partido)) {
            $where .= " AND partido_google='" . $params->partido . "' ";
        }
        if (!empty($params->provincia)) {
            $where .= " AND provincia_google='" . $params->provincia . "' ";
        }

        $db = ConnectionManager::getDataSource('default');
        $coordenadas = $db->Query("SELECT id, calle_google, altura_google, localidad_google, partido_google, provincia_google, coordenadas FROM ele_socios 
                                   WHERE en_ruta = 'No' AND calle IS NOT NULL AND altura IS NOT NULL AND coordenadas IS NOT NULL " . $where);

        $data = array();
        foreach ($coordenadas as $coordenada) {
            $domicilio = "";
            $domicilio.= $coordenada['ele_socios']['calle_google'];
            $domicilio.= ' ' . $coordenada['ele_socios']['altura_google'];
            $domicilio.= ', ' . $coordenada['ele_socios']['localidad_google'];
            if ($coordenada['ele_socios']['localidad_google'] != "Ciudad Autónoma de Buenos Aires") {
                $domicilio.= ', ' . $coordenada['ele_socios']['partido_google'];
            }
            $data[] = array(
                'id' => (int) $coordenada['ele_socios']['id'],
                'domicilio' => $domicilio,
                'coordenadas' => array_map("trim", explode(",", $coordenada['ele_socios']['coordenadas']))
            );
        }

        return $data;
    }

}
