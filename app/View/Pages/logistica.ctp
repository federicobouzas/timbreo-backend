<?php echo $this->Html->script('dashboard', false); ?>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=<?php echo AppConfig::get('site.googlemaps.key'); ?>&libraries=visualization&sensor=false"></script>

<div class="col-sm-6 mt15" id="partidos"></div>
<div class="col-sm-6 mt15" id="localidades"></div>
<div class="col-sm-12 mt15" id="barriosCaba"></div>
<div class="mt15" id="map" style="width: 100%; height: 500px;"></div>
