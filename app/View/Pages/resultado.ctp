<?php echo $this->Html->script('dashboard3', false); ?>
<style>#container {background: #EEE;} #footer{margin-top: 0;}</style>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=<?php echo AppConfig::get('site.googlemaps.key'); ?>&libraries=visualization&sensor=false"></script>

<div class="row mt20">
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="resultadoTotalCD"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="resultadoTotalFiscalizadora"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="resultadoTotalAsambleista"></div>
            </div>
        </div>
    </div>
</div>

<?php for ($mesa=1; $mesa<=54; $mesa++): ?>
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-body p0">
                <div style="height: 250px;" id="resultadoMesa<?php echo $mesa; ?>"></div>
            </div>
        </div>
    </div>
<?php endfor; ?>