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
            <div class="col-sm-3">
                <h3 class="text-center mb0">Senadores</h3>
                <div id="dona-senadores" style="height: 200px;"></div>
                <div id="barras-senadores" class="col-sm-9" style="margin-top: -50px; height: 150px;"></div>
                <div class="porcentajes-partidos">
                    <div class="porcentaje-partido">635 | 46%</div>
                    <div class="porcentaje-partido">203 | 23%</div>
                    <div class="porcentaje-partido">107 | 12%</div>
                    <div class="porcentaje-partido">31 | 4%</div>
                </div>
            </div>
            <div class="col-sm-3">
                <h3 class="text-center mb0">Diputados</h3>
                <div id="dona-diputados" style="height: 200px;"></div>
                <div id="barras-diputados" class="col-sm-9" style="margin-top: -50px; height: 150px;"></div>
                <div class="porcentajes-partidos">
                    <div class="porcentaje-partido">635 | 46%</div>
                    <div class="porcentaje-partido">203 | 23%</div>
                    <div class="porcentaje-partido">107 | 12%</div>
                    <div class="porcentaje-partido">31 | 4%</div>
                </div>
            </div>
            <div class="col-sm-3">
                <h3 class="text-center mb0">Legisladores</h3>
                <div id="dona-legisladores" style="height: 200px;"></div>
                <div id="barras-legisladores" class="col-sm-9" style="margin-top: -50px; height: 150px;"></div>
                <div class="porcentajes-partidos">
                    <div class="porcentaje-partido">635 | 46%</div>
                    <div class="porcentaje-partido">203 | 23%</div>
                    <div class="porcentaje-partido">107 | 12%</div>
                    <div class="porcentaje-partido">31 | 4%</div>
                </div>
            </div>
            <div class="col-sm-3">
                <h3 class="text-center mb0">Concejales</h3>
                <div id="dona-concejales" style="height: 200px;"></div>
                <div id="barras-concejales" class="col-sm-9" style="margin-top: -50px; height: 150px;"></div>
                <div class="porcentajes-partidos">
                    <div class="porcentaje-partido">635 | 46%</div>
                    <div class="porcentaje-partido">203 | 23%</div>
                    <div class="porcentaje-partido">107 | 12%</div>
                    <div class="porcentaje-partido">31 | 4%</div>
                </div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="senadores">
            <div class="col-lg-5">
                <?php echo $this->element('Merlo.circuitos', ['id_tabla' => 'tablaCircuitos']); ?>
            </div>
            <div class="col-lg-7" style="max-height: 400px; overflow-y: scroll;">
                <?php echo $this->element('Merlo.establecimientos', ['id_tabla' => 'tablaColegios']); ?>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="diputados">...</div>
        <div role="tabpanel" class="tab-pane" id="legisladores">...</div>
        <div role="tabpanel" class="tab-pane" id="concejales">...</div>
    </div>
</div>