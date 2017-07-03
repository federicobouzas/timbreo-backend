var COLORS = [
    "#e91e63", "#f44336", "#2196f3", "#9c27b0", "#673ab7", "#03a9f4",
    "#00bcd4", "#009688", "#4caf50", "#8bc34a", "#cddc39", "#ffeb3b",
    "#ffc107", "#ff9800", "#ff5722",
    "#9e9e9e", "#607d8b", "#3f51b5", "#ffffff", "#000000", "#795548"
];

$(function () {
    sociosPago();
    sociosNuevos();
    sociosNuevosAnual();
    sociosFormasPago();
    sociosTarjetas();
    sociosCategorias();
    sociosGeneros();
    sociosRangosEtareos();
    sociosAntiguedades();
    sociosProcedencias();
    $("#tipoGraficoSectores").change(function () {
        abonosSectores(this.value);
    }).change();
    $("#tipoGraficoSecciones, #selectorSectores").change(function () {
        abonosSecciones($("#tipoGraficoSecciones").val(), $("#selectorSectores").val());
    }).change();
});

function sociosProcedencias(type) {
    if (empty(type)) {
        $("#tipoGraficoProcedencias").empty();
        return;
    }
    $.get(WWW + "socios/socios/ajax_get_procedencias", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosProcedencias").highcharts({
            chart: {type: type},
            colors: COLORS,
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Procedencias'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: type == "pie"},
            plotOptions: {
                pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true},
                column: {dataLabels: {enabled: true, rotation: 1, y: -5, color: '#273B56'}}
            },
            tooltip: {pointFormat: 'Procedencia: <b>{point.y:.0f}</b>'},
            series: [{name: 'Procedencias', data: jdata.data}]
        });
    });
}

function sociosRangosEtareos(type) {
    if (empty(type)) {
        $("#tipoGraficoRangosEtareos").empty();
        return;
    }
    $.get(WWW + "socios/socios/ajax_get_rangos_etareos", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosRangosEtareos").highcharts({
            chart: {type: type},
            colors: COLORS,
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Rangos Etareos'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: type == "pie"},
            plotOptions: {
                pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true},
                column: {dataLabels: {enabled: true, rotation: 1, y: -5, color: '#273B56'}}
            },
            tooltip: {pointFormat: 'Rango Etareo: <b>{point.y:.0f}</b>'},
            series: [{name: 'Rangos Etareos', data: jdata.data}]
        });
    });
}

function sociosAntiguedades(type) {
    if (empty(type)) {
        $("#tipoGraficoAntiguedades").empty();
        return;
    }
    $.get(WWW + "socios/socios/ajax_get_antiguedades", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosAntiguedades").highcharts({
            chart: {type: type},
            colors: COLORS,
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Antigüedades'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: type == "pie"},
            plotOptions: {
                pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true},
                column: {dataLabels: {enabled: true, rotation: 1, y: -5, color: '#273B56'}}
            },
            tooltip: {pointFormat: 'Antigüedad: <b>{point.y:.0f}</b>'},
            series: [{name: 'Antigüedades', data: jdata.data}]
        });
    });
}


function sociosGeneros() {
    $.get(WWW + "socios/socios/ajax_get_generos", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosGeneros").highcharts({
            chart: {type: 'line'},
            title: {text: 'Géneros'},
            subtitle: {text: 'Nuevos socios discriminados por género en últimos meses.'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: 'Socios'}},
            plotOptions: {line: {dataLabels: {enabled: true}, enableMouseTracking: false}},
            exporting: {enabled: false},
            credits: {enabled: false},
            series: jdata.data
        });
    });
}

function sociosCategorias() {
    $.get(WWW + "socios/socios/ajax_get_categorias", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosCategorias").highcharts({
            chart: {type: 'line'},
            title: {text: 'Categorías'},
            subtitle: {text: 'Evolución de las Categorías de los Socios.'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: 'Socios'}},
            plotOptions: {line: {dataLabels: {enabled: true}, enableMouseTracking: false}},
            exporting: {enabled: false},
            credits: {enabled: false},
            series: jdata.data
        });
    });
}

function sociosTarjetas() {
    $.get(WWW + "socios/socios/ajax_get_tarjetas", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosFormasPago").highcharts({
            chart: {type: 'line'},
            title: {text: 'Tarjetas'},
            subtitle: {text: 'Evolución de las Tarjetas de los Socios.'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: 'Socios'}},
            plotOptions: {line: {dataLabels: {enabled: true}, enableMouseTracking: false}},
            exporting: {enabled: false},
            credits: {enabled: false},
            series: jdata.data
        });
    });
}

function sociosFormasPago() {
    $.get(WWW + "socios/socios/ajax_get_formas_pagos", function (data) {
        var jdata = $.parseJSON(data);
        $("#sociosFormasPago").highcharts({
            chart: {type: 'line'},
            title: {text: 'Formas de Pago'},
            subtitle: {text: 'Evolución de la Forma de Pago de los Socios.'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: 'Socios'}},
            plotOptions: {line: {dataLabels: {enabled: true}, enableMouseTracking: false}},
            exporting: {enabled: false},
            credits: {enabled: false},
            series: jdata.data
        });
    });
}

function abonosSectores(type) {
    if (empty(type)) {
        $("#sectoresAbonos").empty();
        return;
    }
    $.get(WWW + "socios/abonos/ajax_get_sectores", function (data) {
        var jdata = $.parseJSON(data);
        $("#sectoresAbonos").highcharts({
            chart: {type: type},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Sectores Abonos'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: type == "pie"},
            plotOptions: {
                pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true},
                column: {dataLabels: {enabled: true, rotation: 1, y: -5}}
            },
            tooltip: {pointFormat: 'Abonos: <b>{point.y:.0f}</b>'},
            series: [{name: 'Abonos', data: jdata.data}]
        });
    });
}

function abonosSecciones(type, sector) {
    if (empty(type) || empty(sector)) {
        $("#seccionesAbonos").empty();
        return;
    }
    $.get(WWW + "socios/abonos/ajax_get_secciones/" + sector, function (data) {
        var jdata = $.parseJSON(data);
        $("#seccionesAbonos").highcharts({
            chart: {type: type},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Sectores Abonos'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: type == "pie"},
            plotOptions: {
                pie: {allowPointSelect: true, cursor: 'pointer', dataLabels: {enabled: false}, showInLegend: true},
                column: {dataLabels: {enabled: true, rotation: 1, y: -5}}
            },
            tooltip: {pointFormat: 'Abonos: <b>{point.y:.0f}</b>'},
            series: [{name: 'Abonos', data: jdata.data}]
        });
    });
}

function sociosPago() {
    $.get(WWW + "socios/socios/ajax_get_pagos/12", function (data) {
        var jdata = $.parseJSON(data);
        $("#pagoSocios").highcharts({
            chart: {type: 'column'},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Cuota Social'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: false},
            tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
            series: [{name: 'Socios', data: jdata.data, dataLabels: {enabled: true, rotation: -30, y: -10, x: 10}}]
        });
    });
}

function sociosNuevosAnual() {
    $.get(WWW + "socios/socios/ajax_get_nuevos_anual/12", function (data) {
        var jdata = $.parseJSON(data);
        $("#nuevosSociosAnios").highcharts({
            chart: {type: 'column'},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Socios Nuevos Anual'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: false},
            tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
            series: [{name: 'Socios', data: jdata.data, dataLabels: {enabled: true, rotation: 1, y: -5}}]
        });
    });
}

function sociosNuevos() {
    $.get(WWW + "socios/socios/ajax_get_nuevos/12", function (data) {
        var jdata = $.parseJSON(data);
        $("#nuevosSocios").highcharts({
            chart: {type: 'column'},
            exporting: {enabled: false},
            credits: {enabled: false},
            title: {text: 'Socios Nuevos Mensual'},
            xAxis: {categories: jdata.categories},
            yAxis: {title: {text: ''}, allowDecimals: false, min: 0},
            legend: {enabled: false},
            tooltip: {pointFormat: 'Socios: <b>{point.y:.0f}</b>'},
            series: [{name: 'Socios', data: jdata.data, dataLabels: {enabled: true, rotation: 1, y: -5}}]
        });
    });
}