<?php

$this->Html->script("../includes/fmw/datepicker/js/bootstrap-datetimepicker.min.js", array('inline' => false));
$this->Html->css("../includes/fmw/datepicker/css/bootstrap-datetimepicker.css", array('inline' => false));
$this->Html->script("merlo/resultados_merlo", array('inline' => false));
$this->Html->css("censo/arboles_auditoria_maint", array('inline' => false));
?>
<div class="row mt20 mb30">
    <div class="col-lg-5">
        <div class="tabla mt20">
            <table class="table" id="tablaCircuitos">
                <thead>
                    <tr>
                        <th>Circuito</th>
                        <th class='text-center'>1PAIS</th>
                        <th class='text-center'>UNIDAD CIUDADANA</th>
                        <th class='text-center'>CAMBIEMOS</th>
                        <th class='text-center'>PJ</th>
                    </tr>                   
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
    <div class="col-lg-7" style="max-height: 500px; overflow-y: scroll;">
        <div class="tabla mt20">
            <table class="table" id="tablaColegios">
                <thead>
                    <tr>
                        <th>Colegio</th>
                        <th class='text-center'>1PAIS</th>
                        <th class='text-center'>UNIDAD CIUDADANA</th>
                        <th class='text-center'>CAMBIEMOS</th>
                        <th class='text-center'>PJ</th>
                    </tr>  
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>