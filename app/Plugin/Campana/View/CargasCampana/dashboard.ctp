<?php
$this->Html->script("../includes/fmw/datepicker/js/bootstrap-datetimepicker.min.js", array('inline' => false));
$this->Html->css("../includes/fmw/datepicker/css/bootstrap-datetimepicker.css", array('inline' => false));
$this->Html->script("cargas_campana_dashboard_maint", array('inline' => false));
$this->Html->css("cargas_campana_dashboard_maint", array('inline' => false));
?>
<div class="col-lg-12 mt20 mb30">
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
    <div class="pull-left input ml25">
        <label for="dashboardEdad" class="pull-left">Edad</label>
        <select class="form-control pull-left" id="dashboardEdad">
            <option value="">Todas</option>
            <option value="16-25">16-25</option>
            <option value="26-39">26-39</option>
            <option value="40-59">40-59</option>
            <option value="+60">+60</option>
        </select>
    </div>
    <button class="btn btn-primary ml20 pull-lef">Filtrar</button>
</div>
<div class="p0">
    <?php foreach ($preguntas as $key => $pregunta): ?>
        <div class="col-lg-<?php echo ($key == 3 || $key == 4 ? 12 : 6); ?> p0">
            <div class="col-lg-12">
                <h5 class="page-header"><?php echo $key; ?>) <?php echo $pregunta; ?></h5>
                <div class="clearfix"></div>
            </div>
            <div class="col-lg-6">
                <div class="panel panel-default p0">
                    <div class="panel-body p0">
                        <div class="<?php echo ($key == 3 || $key == 4 ? "" : "pie"); ?>" id="piePregunta<?php echo $key; ?>" style="height: 200px;"></div>
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
    <div class="clearfix"></div>
</div>

