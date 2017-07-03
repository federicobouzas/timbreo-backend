$(function () {
    partidos();
    localidades();
    barriosCaba();
    initMap();
});

function initMap() {
    $.get(WWW + "elecciones/socios_padron/ajax_get_coordenadas_socios", function (data) {
        var jdata = $.parseJSON(data);
        var points = [];
        for (var i in jdata) {
            var coordenadas = jdata[i].SocioPadron.coordenadas.split(",");
            points.push(new google.maps.LatLng(coordenadas[0], coordenadas[1]));
        }
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12,
            center: new google.maps.LatLng(-34.619, -58.46),
            mapTypeId: google.maps.MapTypeId.HYBRID
        });
        new google.maps.visualization.HeatmapLayer({
            data: points,
            map: map,
            dissipating: true,
            maxIntensity: 15
        });
    });

}


function barriosCaba() {
    $.get(WWW + "elecciones/socios_padron/ajax_get_socios_geolocalizados", function (geolocalizados) {
        $.get(WWW + "elecciones/socios_padron/ajax_get_barrios_socios_caba/100", function (data) {
            $("#barriosCaba").highcharts({
                chart: {type: 'column'},
                colors: ['#EC212D'],
                exporting: {enabled: false},
                credits: {enabled: false},
                title: {text: 'Barrios CABA'},
                xAxis: {type: 'category', labels: {rotation: -45, style: {fontSize: '13px', fontFamily: 'Verdana, sans-serif'}}},
                yAxis: {min: 0, title: {text: 'Socios'}},
                legend: {enabled: false},
                tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
                plotOptions: {
                    series: {
                        dataLabels: {
                            formatter: function () {
                                return Math.round((this.y / parseInt(geolocalizados)) * 100) + '%';
                            }
                        }
                    }
                },
                series: [{name: 'Socios', data: $.parseJSON(data), dataLabels: {
                            enabled: true, rotation: -60, color: '#273B56', y: -20, x: 4,
                            style: {fontSize: '12px', fontFamily: 'Verdana, sans-serif'}
                        }}]
            });
        });
    });

}

function localidades() {
    $.get(WWW + "elecciones/socios_padron/ajax_get_localidades_socios/10", function (data) {
        $("#localidades").highcharts({
            chart: {type: 'pie'},
            colors: ['#EC212D'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Localidades'},
            xAxis: {type: 'category', labels: {rotation: -30, style: {fontSize: '13px', fontFamily: 'Verdana, sans-serif'}}},
            yAxis: {min: 0, title: {text: 'Socios'}},
            legend: {enabled: false},
            plotOptions: {
                pie: {
                    allowPointSelect: true, cursor: 'pointer',
                    dataLabels: {enabled: true, format: '<b>{point.name}</b>: {point.percentage:.0f} %'}
                }
            },
            tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
            series: [{name: 'Socios', data: $.parseJSON(data)}]
        });
    });
}

function partidos() {
    $.get(WWW + "elecciones/socios_padron/ajax_get_partidos_socios/10", function (data) {
        $("#partidos").highcharts({
            chart: {type: 'pie'},
            colors: ['#EC212D'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Partidos'},
            xAxis: {type: 'category', labels: {rotation: -30, style: {fontSize: '13px', fontFamily: 'Verdana, sans-serif'}}},
            yAxis: {min: 0, title: {text: 'Socios'}},
            legend: {enabled: false},
            plotOptions: {
                pie: {
                    allowPointSelect: true, cursor: 'pointer',
                    dataLabels: {enabled: true, format: '<b>{point.name}</b>: {point.percentage:.0f} %'}
                }
            },
            tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
            series: [{name: 'Socios', data: $.parseJSON(data)}]
        });
    });
}