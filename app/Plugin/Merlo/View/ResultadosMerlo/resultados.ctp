<?php

$this->Html->script("../includes/fmw/datepicker/js/bootstrap-datetimepicker.min.js", array('inline' => false));
$this->Html->css("../includes/fmw/datepicker/css/bootstrap-datetimepicker.css", array('inline' => false));
$this->Html->script("censo/arboles_auditoria_maint", array('inline' => false));
$this->Html->css("censo/arboles_auditoria_maint", array('inline' => false));
?>
<div class="row mt20 mb30">
    <div class="col-lg-7">
        <div class="pull-left input">
            <label for="dashboardDesde" class="pull-left">Desde</label>
            <div class="input-group date pull-left">
                <input type="text" class="form-control" id="dashboardDesde" />
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
            </div>
        </div>
        <div class="pull-left input ml25">
            <label for="dashboardHasta" class="pull-left">Hasta</label>
            <div class="input-group date pull-left">
                <input type="text" class="form-control" id="dashboardHasta" />
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
            </div>
        </div>
        <button class="btn btn-primary ml20 pull-lef">Filtrar</button>
        <div class="tabla mt20">
            <table class="table" id="tablaAuditoria">
                <thead><tr><th>Censista</th><th>Total</th><th>Lineal</th><th>EP</th><th>EEVV</th></tr></thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
    <div class="col-lg-5">
        <div id="graficoAuditoria"></div>
    </div>
</div>