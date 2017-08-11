$(function () {
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var target = $(e.target).attr("aria-controls");
        if (target == "totales") {
            totales();
        } else if (target == "senadores") {
            senadores();
        }
    });
    totales();
});

function totales() {

}

function senadores() {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_colegios", function (data) {
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.establecimiento + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_sen'] ? number_format(jdata[i][0]['501_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_sen'] ? number_format(jdata[i][0]['503_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_sen'] ? number_format(jdata[i][0]['508_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_sen'] ? number_format(jdata[i][0]['509_sen'], 2, ",") + "%" : "").appendTo(row);
            $("#tablaColegios tbody").append(row);
        }
    });
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_circuitos", function (data) {
        var jdata = $.parseJSON(data);
        for (var i in jdata) {
            var row = $("<tr>");
            $("<td>").html("<strong>" + jdata[i].ResultadoMerlo.circuito + "</strong>").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['501_sen'] ? number_format(jdata[i][0]['501_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['503_sen'] ? number_format(jdata[i][0]['503_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['508_sen'] ? number_format(jdata[i][0]['508_sen'], 2, ",") + "%" : "").appendTo(row);
            $("<td class='text-center'>").text(jdata[i][0]['509_sen'] ? number_format(jdata[i][0]['509_sen'], 2, ",") + "%" : "").appendTo(row);
            $("#tablaCircuitos tbody").append(row);
        }
    });
}