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
            <div class="col-sm-6 col-sm-offset-3 mt15 mb25">
                <h3 class="text-center mt0">Porcentaje de Mesas Escrutadas</h3>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $escrutadas; ?>%">
                        <span><?php echo $escrutadas; ?>%</span>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'senadores']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'diputados']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'legisladores']); ?>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'concejales']); ?>
        </div>
        <div role="tabpanel" class="tab-pane" id="senadores">
            <div>
                <div class="col-lg-5">
                    <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitos_sen']); ?>
                </div>
                <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                    <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegios_sen']); ?>
                </div>
            </div>
            <div class="clearfix"></div>
            <?php echo $this->element('Merlo.totales', ['tipo' => 'senadores']); ?>
        </div>

        <div role="tabpanel" class="tab-pane" id="diputados">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitos_dip']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegios_dip']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="legisladores">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitos_leg']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegios_leg']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="concejales">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitos_con']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegios_con']); ?>
            </div>
        </div>
    </div>
</div>