<?php echo $this->Html->script('dashboard2', false); ?>
<style>#container {background: #EEE;} #footer{margin-top: 0;}</style>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=<?php echo AppConfig::get('site.googlemaps.key'); ?>&libraries=visualization&sensor=false"></script>

<div class="row mt20">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 130px;" id="totalVotantes"></div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-3">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 200px;" id="mesasVitalicios"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-9">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 200px;" id="mesasActivos"></div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="partidos"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="localidades"></div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="barriosCaba"></div>
            </div>
        </div>
    </div>
</div>
