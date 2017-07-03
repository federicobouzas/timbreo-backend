<?php echo $this->Html->script('socios', false); ?>
<style>#container {background: #EEE;} #footer{margin-top: 0;} .form-group {border-bottom: none;}</style>

<div class="row mt20">
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="pagoSocios"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosProcedencias"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="nuevosSociosAnios"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="nuevosSocios"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosAntiguedades"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosFormasPago"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosTarjetas"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosRangosEtareos"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosGeneros"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 300px;" id="sociosCategorias"></div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div class="mt10 mb10 col-sm-11">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Gráfico</label>
                            <div class="col-sm-8">
                                <select id="tipoGraficoSectores" class="form-control">
                                    <option value="column">Columnas</option>
                                    <option value="pie">Torta</option>
                                </select> 
                            </div>
                        </div>
                    </form>
                </div>
                <div class="clearfix"></div>
                <div style="height: 250px;" id="sectoresAbonos"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div class="mt10 mb10 col-sm-6">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Gráfico</label>
                            <div class="col-sm-8">
                                <select id="tipoGraficoSecciones" class="form-control">
                                    <option value="column">Columnas</option>
                                    <option value="pie">Torta</option>
                                </select> 
                            </div>
                        </div>
                    </form>
                </div>
                <div class="mt10 mb10 col-sm-6">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Sector</label>
                            <div class="col-sm-8">
                                <select id="selectorSectores" class="form-control">
                                    <option></option>
                                    <option>BASQUET</option>
                                    <option>ESTACIONAMIENTO</option>
                                    <option>POPULAR LOCAL</option>
                                    <option>PLATEA NORTE</option>
                                    <option>PLATEA SUR</option>
                                </select>  
                            </div>
                        </div>
                    </form>
                </div>
                <div class="clearfix"></div>
                <div style="height: 250px;" id="seccionesAbonos"></div>
            </div>
        </div>
    </div>
</div>