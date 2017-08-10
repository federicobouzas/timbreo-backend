var agrupaciones = [
    [8, "PARTIDO FEDERAL", ["-A- ROJO PUNZO", "-B- CELESTE Y BLANCA", "-C- FEDERALISMO PURO", "-D- ALTERNATIVA"]],
    [22, "PARTIDO HUMANISTA", ["A NARANJA"]],
    [259, "PARTIDO DEL CAMPO POPULAR", ["A-INDEPENDENCIA", "B-LIBERTAD", "C-SEGURIDAD"]],
    [268, "MOV. AMPLIO DE TRABAJDORES Y JUBILADOS", ["UNIDAD 1"]],
    [298, "TODOS POR BUENOS AIRES", ["TOBA"]],
    [301, "PATRIA GRANDE", ["VAMOS", "FUERZA DE LA GENTE"]]
];

$(function () {
    var linea = 0;
    for (var i in agrupaciones) {
        for (var j in agrupaciones[i][2]) {
            var html = '';
            html += '<div class="col-sm-1 readonly">' + agrupaciones[i][0] + '</div>';
            html += '<div class="col-sm-4 readonly">' + agrupaciones[i][1] + '</div>';
            html += '<div class="col-sm-3 readonly">LISTA ' + agrupaciones[i][2][j] + '</div>';
            var selector = "#agrupaciones .form-group div:nth-child(" + (linea + 1) + ")";
            linea = linea + 7;
            console.log(selector);
            console.log($(selector));
            $(selector).before(html);
        }
    }

    $(".disabled").attr("disabled", true).attr("placeholder", "NO USAR");
    $("#agrupaciones .input label").remove();
});