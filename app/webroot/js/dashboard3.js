$(function () {
    resultadoTotal();
    resultadoMesas();
});

function resultadoTotal() {
    $.get(WWW + "elecciones/resultados/ajax_get_resultados", function (data) {
        var jdata = $.parseJSON(data);
        $("#resultadoTotalCD").highcharts({
            chart: {type: 'pie'},
            colors: ['#EC212D', '#273B56', '#98DBEE', '#000', '#FFC200'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Resultado Global'},
            plotOptions: {
                pie: {
                    allowPointSelect: true, cursor: 'pointer',
                    dataLabels: {
                        enabled: true, format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        style: {color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'}
                    }
                }},
            tooltip: {pointFormat: 'Votos: <b>{point.percentage:.0f}%</b>'},
            series: [{name: 'Votos', data: jdata[0]}]
        });
        $("#resultadoTotalFiscalizadora").highcharts({
            chart: {type: 'pie'},
            colors: ['#EC212D', '#273B56', '#98DBEE', '#000', '#FFC200'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Resultado Global'},
            plotOptions: {
                pie: {
                    allowPointSelect: true, cursor: 'pointer',
                    dataLabels: {
                        enabled: true, format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        style: {color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'}
                    }
                }},
            tooltip: {pointFormat: 'Votos: <b>{point.percentage:.0f}%</b>'},
            series: [{name: 'Votos', data: jdata[1]}]
        });
        $("#resultadoTotalAsambleista").highcharts({
            chart: {type: 'pie'},
            colors: ['#EC212D', '#273B56', '#98DBEE', '#000', '#FFC200'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Resultado Global'},
            plotOptions: {
                pie: {
                    allowPointSelect: true, cursor: 'pointer',
                    dataLabels: {
                        enabled: true, format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        style: {color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'}
                    }
                }},
            tooltip: {pointFormat: 'Votos: <b>{point.percentage:.0f}%</b>'},
            series: [{name: 'Votos', data: jdata[2]}]
        });
    });
}

function resultadoMesas() {
    $.get(WWW + "elecciones/resultados/ajax_get_resultados_mesas", function (data) {
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            $("#resultadoMesa" + i).highcharts({
                chart: {type: 'pie'},
                colors: ['#EC212D', '#273B56', '#98DBEE', '#000', '#FFC200'],
                exporting: {enabled: false},
                credits: {enabled: false},
                title: {text: 'Resultado Mesa ' + i},
                plotOptions: {
                    pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true}
                },
                tooltip: {pointFormat: 'Votos: <b>{point.percentage:.0f}%</b>'},
                series: [{name: 'Votos', data: jdata[i]}]
            });
        }
    });
}
