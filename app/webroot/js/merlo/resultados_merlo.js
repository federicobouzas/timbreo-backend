$(function () {
    $.get(WWW + "merlo/resultadomerlo/ajax_get_resultados_colegios", function (data) {
        var jdata = $.parseJSON(data);
        cargarResultados(jdata);
    });
});


function cargarResultados(jdata) {
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