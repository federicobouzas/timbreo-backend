function monthDiff(d1, d2) {
    var months;
    months = (d2.getFullYear() - d1.getFullYear()) * 12;
    months -= d1.getMonth() + 1;
    months += d2.getMonth();
    months++;
    return months <= 0 ? 0 : months;
}

function calcularMontoActual() {
    var monto = parseInt($("#ContratoMontoOriginal").val());
    $("[id='table[Aumento]'] tbody tr").each(function () {
        monto += parseInt($(this).find("[id$='[monto]']").val());
    });
    $("#ContratoTmpMontoActual").val(monto).siblings("div").text("$" + number_format(monto, 0, ",", "."));
}