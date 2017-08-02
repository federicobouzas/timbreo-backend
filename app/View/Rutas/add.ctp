<?php
$this->Html->script('https://maps.google.com/maps/api/js?key=' . AppConfig::get('site.googlemaps.key') . '&sensor=false', array('inline' => false));
$this->Html->script('presentation/rutas/mapa.js', array('inline' => false));
$this->Html->script('https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js', array('inline' => false));
?>

<form action="/rutas/add" id="RutaAddForm" enctype="multipart/form-data" method="post" accept-charset="utf-8" onsubmit="plotear();
        return false;">
    <fieldset>
        <div class="pull-left mt15" style="width: 700px;">
            <div id="mapa" style="width: 690px; height: 600px;"></div>
        </div>
        <div class="actions mt15 ml70">
            <a class="btn btn-primary ml25 pull-left" id="plotearRuta" data-toggle="tooltip" data-placement="top" title="Plotear Votantes" href="javascript:void(0);" onclick="plotear();"><i class="fa fa-map-marker"></i> Plotear</a>
            <a class="btn btn-primary ml25 pull-left" id="generarRuta" data-toggle="tooltip" data-placement="top" title="Generar Ruta" href="javascript:void(0);" onclick="generarRuta();"><i class="fa fa-map"></i> Ruta</a>
        </div>
    </fieldset>
</form>
