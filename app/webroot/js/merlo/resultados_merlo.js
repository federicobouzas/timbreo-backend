$(function () {
    $("#dashboardDesde, #dashboardHasta").parent().datetimepicker({
        format: 'DD/MM/YYYY',
        useCurrent: false,
        viewMode: 'days',
        defaultDate: new Date(),
    });
    $("button").click(submitForm);
    submitForm();
    $.get(WWW + "censo/arboles/ajax_get_total_auditoria", function (data) {
        var jdata = $.parseJSON(data);
        graficoAuditoria(jdata);
    });
});
function graficoAuditoria(jdata) {
    $("[id='graficoAuditoria']").highcharts({
        chart: {tyle: {fontFamily: 'Gotham'}, type: 'area'},
        credits: {enabled: false},
        exporting: {enabled: false},
        colors: ['#FFD300', '#50B432', '#5176A3', '#A655AC', '#FF9702', '#299CB4', '#4265BC', '#F44336'],
        title: {text: 'Cargas Totales Semanales'},
        xAxis: {
            categories: jdata.categories,
            tickmarkPlacement: 'on',
            title: {enabled: false}
        },
        yAxis: {
            title: {enabled: false}
        },
        tooltip: {
            formatter: function () {
                var s = '<strong>' + this.x + '</strong><br />', sum = 0;
                $.each(this.points, function (i, point) {
                    s += '<span style="color:' + point.series.color + '">' + point.series.name + '</span>: <strong>' + number_format(point.y, 0, ",", ".") + '</strong> (' + number_format(point.percentage, 2, ",", ".") + '%)<br/>';
                    sum += point.y;
                });
                s += '<strong>Total: ' + number_format(sum, 0, ",", ".") + '</strong>';
                return s;
            },
            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y:,.0f}</b> ({point.percentage:.1f}%)<br/>',
            split: true, shared: true
        },
        plotOptions: {
            area: {
                stacking: 'normal', lineColor: '#666666', lineWidth: 1,
                marker: {lineWidth: 1, lineColor: '#666666'}
            }
        },
        series: jdata.series
    });
}

function submitForm() {
    $("#tablaAuditoria tbody").empty();
    var fecha_desde = $("#dashboardDesde").val() || "";
    var fecha_hasta = $("#dashboardHasta").val() || "";
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
    $.get(WWW + "censo/arboles/ajax_get_auditoria", {
        fecha_desde: fecha_desde,
        fecha_hasta: fecha_hasta
    }, function (data) {
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").text(i).appendTo(row);
            $("<td>").text(jdata[i].total).appendTo(row);
            $("<td>").text(jdata[i].lineal).appendTo(row);
            $("<td>").text(jdata[i].ep).appendTo(row);
            $("<td>").text(jdata[i].eevv).appendTo(row);
            $("#tablaAuditoria tbody").append(row);
        }
    });
}