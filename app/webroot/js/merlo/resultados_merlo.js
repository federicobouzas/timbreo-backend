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
    grafico_dona("dona-senadores");
    grafico_barras("barras-senadores");
    grafico_dona("dona-diputados");
    grafico_barras("barras-diputados");
    grafico_dona("dona-legisladores");
    grafico_barras("barras-legisladores");
    grafico_dona("dona-concejales");
    grafico_barras("barras-concejales");
}

function completar_resultados(categoria) {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_colegios/" + categoria, function (data) {
        $("#tablaColegios tbody").empty();
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.establecimiento + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_' + categoria + ''] ? number_format(jdata[i][0]['501_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_' + categoria + ''] ? number_format(jdata[i][0]['503_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_' + categoria + ''] ? number_format(jdata[i][0]['508_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_' + categoria + ''] ? number_format(jdata[i][0]['509_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("#tablaColegios tbody").append(row);
        }
    });
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_circuitos/" + categoria, function (data) {
        $("#tablaCircuitos tbody").empty();
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.circuito + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_' + categoria + ''] ? number_format(jdata[i][0]['501_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_' + categoria + ''] ? number_format(jdata[i][0]['503_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_' + categoria + ''] ? number_format(jdata[i][0]['508_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_' + categoria + ''] ? number_format(jdata[i][0]['509_' + categoria + ''], 2, ",") + "%" : "").appendTo(row);
            $("#tablaCircuitos tbody").append(row);
        }
    });
}

function grafico_dona(container, title) {
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
                data: [['1PAIS', 10.38], ['UNIDAD CIUDADANA', 56.33], ['CAMBIEMOS', 24.03], ['PJ', 4.77]]
            }]
    });
}

function grafico_barras(container) {
    $("[id='" + container + "']").highcharts({
        chart: {type: 'bar', style: {fontFamily: 'Gotham'}},
        exporting: {enabled: false},
        credits: {enabled: false},
        title: {text: null},
        xAxis: {categories: ['1PAIS', 'UC', 'PRO', 'PJ'], title: {text: null}},
        yAxis: {min: 0, title: {text: null}, labels: {enabled: false}},
        tooltip: {enabled: false},
        plotOptions: {bar: {stacking: 'percent', dataLabels: {enabled: false}}},
        legend: {enabled: false},
        series: [
            {name: 'Faltante', data: [
                    {y: 341, color: '#CCC'},
                    {y: 773, color: '#CCC'},
                    {y: 869, color: '#CCC'},
                    {y: 945, color: '#CCC'}
                ]
            },
            {name: 'Votos', data: [
                    {y: 635, color: '#FFD300'},
                    {y: 203, color: '#A655AC'},
                    {y: 107, color: '#F44336'},
                    {y: 31, color: '#037DBF'}
                ]
            }
        ]
    });
}