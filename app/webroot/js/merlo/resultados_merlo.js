$(function () {
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var target = $(e.target).attr("aria-controls");
        if (target == "totales") {
            totales();
        } else if (target == "senadores") {
            completar_resultados('sen');
        } else if (target == "diputados") {
            completar_resultados('dip');
        }
    });
    totales();
});

function totales() {

}

function completar_resultados(categoria) {
    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_colegios/" + categoria + "", function (data) {
        var jdata = $.parseJSON(data);
        console.log(jdata);
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


    $.get(WWW + "merlo/resultados_merlo/ajax_get_resultados_circuitos/" + categoria + "", function (data) {
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