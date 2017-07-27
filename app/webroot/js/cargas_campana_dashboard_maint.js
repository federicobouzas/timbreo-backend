$(function () {
    $("#dashboardDesde, #dashboardHasta").parent().datetimepicker({
        format: 'DD/MM/YYYY',
        useCurrent: false,
        viewMode: 'days'
    });
    $("button").click(submitForm);
    submitForm();
});

function submitForm() {
    var fecha_desde = $("#dashboardDesde").val() || "";
    var fecha_hasta = $("#dashboardHasta").val() || "";
    var edad = $("#dashboardEdad").val() || "";
    if (fecha_desde) {
        var array_fecha_desde = fecha_desde.split("/");
        if (array_fecha_desde.length == 3) {
            fecha_desde = array_fecha_desde[2] + "-" + array_fecha_desde[1] + "-" + array_fecha_desde[0];
        }
    }
    if (fecha_hasta) {
        var array_fecha_hasta = fecha_hasta.split("/");
        if (array_fecha_hasta.length == 3) {
            fecha_hasta = array_fecha_hasta[2] + "-" + array_fecha_hasta[1] + "-" + array_fecha_hasta[0];
        }
    }
    $.get(WWW + "campana/cargas_campana/ajax_get_respuestas", {
        fecha_desde: fecha_desde,
        fecha_hasta: fecha_hasta,
        edad: edad
    }, function (data) {
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            $("[id='piePregunta" + i + "'], [id='columnPregunta" + i + "']").empty();
            var categories = [], data = [];
            for (var j in jdata[i]) {
                var opcion = cambiarOpciones(jdata[i][j].CargaCampana.respuesta)
                categories.push(opcion);
                data.push({name: opcion, y: parseInt(jdata[i][j][0].cantidad), color: getColor(jdata[i][j].CargaCampana.respuesta)});
                pie("piePregunta" + i, null, data);
                column("columnPregunta" + i, null, categories, [{name: "Pregunta" + i, data: data}]);
            }
        }
    });
}

function pie(container, title, data) {
    var plotOptions = {pie: {allowPointSelect: true, cursor: 'pointer'}};
    if (container == "piePregunta3" || container == "piePregunta4") {
        plotOptions.pie.dataLabels = {
            enabled: true,
            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
            style: {
                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
            }
        };

    } else {
        plotOptions.pie.dataLabels = {enabled: false};
        plotOptions.pie.showInLegend = true;
        plotOptions.series = {
            dataLabels: {
                enabled: true,
                formatter: function () {
                    return Math.round(this.percentage * 100) / 100 + ' %';
                },
                distance: -30,
                color: "white"
            }
        };
    }
    $("[id='" + container + "']").highcharts({
        chart: {
            style: {fontFamily: 'Gotham'},
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        colors: ['#50B432', '#5176A3', '#A655AC', '#FF9702', '#299CB4', '#4265BC', '#FFD300', '#F44336'],
        credits: {enabled: false},
        exporting: {enabled: false},
        title: {text: title},
        tooltip: {pointFormat: '<b>{point.percentage:.1f}%</b>'},
        plotOptions: plotOptions,
        series: [{name: 'Torta', colorByPoint: true, data: data}]
    });
}

function column(container, title, categories, series) {
    $("[id='" + container + "']").highcharts({
        chart: {tyle: {fontFamily: 'Gotham'}, type: 'column'},
        xAxis: {categories: categories, crosshair: true},
        legend: {enabled: false},
        yAxis: {min: 0, allowDecimals: false, title: {text: null}},
        colors: ['#FFD300', '#50B432', '#5176A3', '#A655AC', '#FF9702', '#299CB4', '#4265BC', '#F44336'],
        title: {text: title},
        credits: {enabled: false},
        exporting: {enabled: false},
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2, borderWidth: 0, dataLabels: {enabled: true}, enableMouseTracking: false
            }
        },
        series: series
    });
}

function cambiarOpciones(opcion) {
    switch (opcion) {
        case "B":
            return "Buena";
        case "R":
            return "Regular";
        case "M":
            return "Mala";
    }
    switch (opcion) {
        case "FPV":
            return "Unidad Ciudadana (Ruben Romano)";
        case "Union Ciudadana":
            return "Unidad Ciudadana (Alejo Sarna)";
        case "Frente Renovador":
            return "1 País";
        case "Izquierda":
            return "Frente Izquierda";
    }
    return opcion;
}

function getColor(opcion) {
    //var colors = ['#50B432', '#5176A3', '#A655AC', '#FF9702', '#299CB4', '#4265BC', '#FFD300', '#F39C12'];
    var colors = ['#50B432', '#5176A3', '#A655AC', '#F39C12', '#037DBF', '#4265BC', '#FFD300', '#F44336'];
    switch (opcion) {
        case "Si":
            return colors[0];
        case "No":
            return colors[7];
        case "B":
            return colors[0];
        case "R":
            return colors[6];
        case "M":
            return colors[7];
        case "Frente Renovador":
        case "1 País":
            return colors[7];
        case "Izquierda":
        case "Frente Izquierda":
            return colors[0];
        case "Cambiemos":
            return colors[6];
        case "Cumplir":
            return colors[3];
        case "Union Ciudadana":
        case "Unidad Ciudadana (Alejo Sarna)":
            return colors[2];
        case "FPV":
        case "Unidad Ciudadana (Ruben Romano)":
            return colors[4];
        case "Otro":
        case "NS/NC":
            return "#CCC";
    }
    return null;
}