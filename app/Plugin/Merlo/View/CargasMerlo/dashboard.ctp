<?php

$this->Html->script("cargas_merlo_dashboard_maint", array('inline' => false));
$this->Html->css("cargas_merlo_dashboard_maint", array('inline' => false));
?>
<div class="col-lg-12 mt10 mb20">
    <form class="form-inline">
        <div class="form-group">
            <label for="dashboardDesde">Name</label>
            <input type="text" class="form-control" id="dashboardDesde">
            <label for="dashboardHasta" class="ml20">Email</label>
            <input type="email" class="form-control" id="dashboardHasta">
            <button type="submit" class="btn btn-primary ml20">Filtrar</button>
        </div>
    </form>
</div>
<div class="p0">
    <?php foreach ($preguntas as $key=> $pregunta): ?>
    <div class="col-lg-6 p0">
        <div class="col-lg-12">
            <h5 class="page-header"><?php echo $key; ?>) <?php echo $pregunta; ?></h5>
            <div class="clearfix"></div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default p0">
                <div class="panel-body p0">
                    <div id="piePregunta<?php echo $key; ?>" style="height: 200px;"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default p0">
                <div class="panel-body p0">
                    <div id="columnPregunta<?php echo $key; ?>" style="height: 200px;"></div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
    <div class="col-lg-12 p0">
        <div class="col-lg-12">
            <h5 class="page-header">11) Si las elecciones fueran hoy, ¿a los candidatos de quién votarías?</h5>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default p0">
                <div class="panel-body p0">
                    <div id="piePregunta11" style="height: 200px;"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default p0">
                <div class="panel-body p0">
                    <div id="columnPregunta11" style="height: 200px;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

