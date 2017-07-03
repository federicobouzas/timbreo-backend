<?php

$this->Html->script('https://maps.google.com/maps/api/js?key=' . AppConfig::get('site.googlemaps.key') . '&sensor=false', array('inline' => false));
$this->Html->script('presentation/rutas/mapa.js', array('inline' => false));
$this->Html->script('https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js', array('inline' => false));
?>

<form action="/rutas/add" id="RutaAddForm" enctype="multipart/form-data" method="post" accept-charset="utf-8" onsubmit="plotear();
        return false;">
          <?php echo $this->Template->drawAllBlocks(); ?>
    <input class="btn btn-primary pull-right mt10" type="submit" value="Plotear" />
    <a href="<?php echo WWW; ?>rutas/index" id="cancelButton" class="btn btn-default pull-right mr10 mt10">Cancelar</a>
    <div class="clearfix"></div>
    <fieldset>
        <div class="page-header">
            <h2>Mapa</h2>
        </div>

        <div class="pull-left" style="width: 700px;">
            <div id="mapa" style="width: 690px; height: 690px;"></div>
        </div>
        <div class="pull-left">
            <a href="javascript:void(0);" class="btn btn-primary" id="buttonGenerarRuta"><span class="k-icon k-i-plus"></span>Generar Ruta</a>
        </div>

        <div id="windowConfirmarRuta"></div>
    </fieldset>
</form>

<?php if ($cancel) echo $this->Html->link(__(Translate::getValue("maint.cancel")), $next, array('id' => 'cancelButton', 'onclick' => 'return loadContent(this);', 'class' => 'btn btn-default pull-right mr10 mt10')); ?>
