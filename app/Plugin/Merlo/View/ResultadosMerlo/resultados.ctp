<?php
$this->Html->script("../includes/fmw/datepicker/js/bootstrap-datetimepicker.min.js", array('inline' => false));
$this->Html->css("../includes/fmw/datepicker/css/bootstrap-datetimepicker.css", array('inline' => false));
$this->Html->script("merlo/resultados_merlo", array('inline' => false));
$this->Html->css("merlo/resultados_merlo", array('inline' => false));
?>

<div>
    <ul class="nav nav-tabs mt15" role="tablist">
        <li role="presentation" class="active"><a href="#totales" aria-controls="totales" role="tab" data-toggle="tab">Totales</a></li>
        <li role="presentation"><a href="#senadores" aria-controls="senadores" role="tab" data-toggle="tab">Senadores</a></li>
        <li role="presentation"><a href="#diputados" aria-controls="diputados" role="tab" data-toggle="tab">Diptuados</a></li>
        <li role="presentation"><a href="#legisladores" aria-controls="legisladores" role="tab" data-toggle="tab">Legisladores</a></li>
        <li role="presentation"><a href="#concejales" aria-controls="concejales" role="tab" data-toggle="tab">Concejales</a></li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active mt10" id="totales">
            <?php echo $this->element('Merlo.totales', ['tipo' => 'senadores']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'diputados']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'legisladores']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'concejales']); ?>
        </div>
        <div role="tabpanel" class="tab-pane" id="senadores">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitosSenadores']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegiosSenadores']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="diputados">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitosDiputados']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegiosDiputados']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="legisladores">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitosLegisladores']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegiosLegisladores']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="concejales">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitosConcejales']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegiosConcejales']); ?>
            </div>
        </div>
    </div>
</div>