$(function () {
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var target = $(e.target).attr("aria-controls");
        if (target == "totales") {
            totales();
        } else if (target == "senadores") {
            completar_resultados('sen');
        } else if (target == "diputados") {
            completar_resultados('dip');
        } else if (target == "legisladores") {
            completar_resultados('leg');
        } else if (target == "concejales") {
            completar_resultados('con');
        }
    });
    totales();
});

function totales() {
    grafico_dona("dona-senadores", "sen");
    grafico_barras("barras-senadores", "sen");
    grafico_dona("dona-diputados", "dip");
    grafico_barras("barras-diputados", "dip");
    grafico_dona("dona-legisladores", "leg");
    grafico_barras("barras-legisladores", "leg");
    grafico_dona("dona-concejales", "con");
    grafico_barras("barras-concejales", "con");
}

function completar_resultados(categoria) {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_colegios/" + categoria, function (data) {
        $("#tablaColegios_" + categoria + " tbody").empty();        
        var jdata = $.parseJSON(data);  console.log(jdata);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.establecimiento + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_' + categoria + ''] ? number_format(jdata[i][0]['501_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_' + categoria + ''] ? number_format(jdata[i][0]['503_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_' + categoria + ''] ? number_format(jdata[i][0]['508_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_' + categoria + ''] ? number_format(jdata[i][0]['509_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("#tablaColegios_" + categoria + " tbody").append(row);
        }
    });
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_circuitos/" + categoria, function (data) {
        $("#tablaCircuitos_" + categoria + " tbody").empty();
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.circuito + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_' + categoria + ''] ? number_format(jdata[i][0]['501_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_' + categoria + ''] ? number_format(jdata[i][0]['503_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_' + categoria + ''] ? number_format(jdata[i][0]['508_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_' + categoria + ''] ? number_format(jdata[i][0]['509_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("#tablaCircuitos_" + categoria + " tbody").append(row);
        }
    });
}

function grafico_dona(container, categoria, title) {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_porc_totales/" + categoria, function (data) {
        var jdata = $.parseJSON(data);
        var arrayData = [];
        for (var i in jdata[0][0]) {
            if (i == ('501_' + categoria)) {
                arrayData.push(['1PAIS', parseInt(jdata[0][0][i])]);
            } else if (i == ('503_' + categoria)) {
                arrayData.push(['UNIDAD CIUDADANA', parseInt(jdata[0][0][i])]);
            } else if (i == ('508_' + categoria)) {
                arrayData.push(['CAMBIEMOS', parseInt(jdata[0][0][i])]);
            } else if (i == ('509_' + categoria)) {
                arrayData.push(['PJ', parseInt(jdata[0][0][i])]);
            }
        }
        $("[id='" + container + "']").highcharts({
            chart: {
                margin: [0, 0, 0, 0], spacingTop: 0, spacingBottom: 0, spacingLeft: 0, spacingRight: 0,
                plotBackgroundColor: null, plotBorderWidth: 0, plotShadow: false, style: {fontFamily: 'Gotham'}
            },
            colors: ['#F44336', '#037DBF', '#FFD300', '#A655AC'],
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: title},
            tooltip: {enabled: false},
            plotOptions: {
                pie: {
                    size: '120%', dataLabels: {enabled: false}, startAngle: -90, endAngle: 90, center: ['50%', '65%']
                }
            },
            series: [{
                    type: 'pie',
                    name: 'Votos',
                    innerSize: '50%',
                    data: arrayData
                }]
        });
    });
}

function grafico_barras(container, categoria) {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_totales/" + categoria, function (data) {
        var categories = [];
        var jdata = $.parseJSON(data);
        var cantTotal = 0;
        var series = [{name: 'Faltante', data: []}, {name: 'Votos', data: []}];
        for (var i in jdata[0][0]) {
            if (i != "tot") {
                var lista = i.substr(0, 3);
                if (lista == "501") {
                    categories.push("1PAIS");
                } else if (lista == "503") {
                    categories.push("UC");
                } else if (lista == "508") {
                    categories.push("PRO");
                } else if (lista == "509") {
                    categories.push("PJ");
                }
                cantTotal += parseInt(jdata[0][0][i]);
            }
        }
        $("[id='porcentajes-partidos-" + categoria + "']").empty();
        for (var i in jdata[0][0]) {
            if (i != "tot") {
                var votos = number_format(jdata[0][0][i], 0, ",", ".");
                var porcentaje = number_format(jdata[0][0][i] / jdata[0][0].tot * 100, 2, ",", ".");
                var div = $('<div class="porcentaje-partido"><span class="num-votos">' + votos + '</span><span class="ml7 mr5">|</span><span class="porc-votos">' + porcentaje + '%</span></div>');
                $("[id='porcentajes-partidos-" + categoria + "']").append(div);
                series[0].data.push({y: jdata[0][0].tot - jdata[0][0][i], color: "#CCC"});
                series[1].data.push({y: parseInt(jdata[0][0][i]), color: getColor(i)});
            }
        }
        $("[id='" + container + "']").highcharts({
            chart: {type: 'bar', style: {fontFamily: 'Gotham'}},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: null},
            xAxis: {categories: categories, title: {text: null}},
            yAxis: {min: 0, title: {text: null}, labels: {enabled: false}},
            tooltip: {enabled: false},
            plotOptions: {bar: {stacking: 'percent', dataLabels: {enabled: false}}},
            legend: {enabled: false},
            series: series
        });
    });
}

function getColor(field) {
    var lista = field.substr(0, 3);
    if (lista == "501") {
        return "#F44336";
    } else if (lista == "503") {
        return "#037DBF";
    } else if (lista == "508") {
        return "#FFD300";
    } else if (lista == "509") {
        return "#A655AC";
    }
    return "#000";
}