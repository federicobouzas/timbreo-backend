var agrupaciones = [
    [501, "1PAIS", ["UN PAIS UNIDO HOY Y SIEMPRE"]],
    [503, "UNIDAD CIUDADANA", ["CELESTE Y BLANCA U"]],
    [508, "CAMBIEMOS BUENOS AIRES", ["CAMBIANDO JUNTOS", "1A AMARILLO"]],
    [509, "FRENTE JUSTICIALISTA", ["CUMPLIR", "CUMPLIR 2", "CUMPLIR 4"]],
    [510, "FRENTE DE IZQUIERDA Y DE LOS TRABAJADORES", [""]],
];

var totales = [
    "TOTAL VOTOS AGRUPACIONES POLÍTICAS",
    "VOTOS NULOS",
    "VOTOS RECURRIDOS QUE SE REMITEN EN SOBRE Nro. 3",
    "VOTOS DE IDENTIDAD IMPUGNADA QUE SE REMITEN EN SOBRE Nro. 3",
    "VOTOS DEL COMANDO ELECTORAL QUE SE REMITEN EN EL BOLSIN",
    "VOTOS EN BLANCO",
    "TOTAL POR COLUMNAS"
];

$(function () {
    var linea = 0;
    for (var i in agrupaciones) {
        var classPrimero = "primero";
        var html = '';
        html += '<div class="col-sm-1 text-center readonly bl0 ' + classPrimero + '">' + agrupaciones[i][0] + '</div>';
        html += '<div class="col-sm-7 readonly ' + classPrimero + '">' + agrupaciones[i][1] + '</div>';
        var selector = "#agrupaciones .form-group div:nth-child(" + (linea + 1) + ")";
        linea = linea + 6;
        $(selector).before(html);
        classPrimero = "";
    }

    $(".disabled").attr("disabled", true).attr("placeholder", "NO USAR");
    $("#agrupaciones .input label").remove();
    $("#agrupaciones div.input").addClass("col-sm-1");

    var html = '';
    html += '<div class="col-sm-1 bl0 cabecera">Nº</div>';
    html += '<div class="col-sm-7 cabecera">AGRUPACIONES POLÍTICAS</div>';
    html += '<div class="col-sm-1 cabecera">SENADORES NACIONALES</div>';
    html += '<div class="col-sm-1 cabecera">DIPUTADOS NACIONALES</div>';
    html += '<div class="col-sm-1 cabecera">LEGISLADORES PROVINCIALES</div>';
    html += '<div class="col-sm-1 cabecera">CONCEJALES Y CONSEJEROS ESCOLARES</div>';
    $("#agrupaciones .form-group").prepend(html);

    linea = linea + 6;
    for (var i in totales) {
        var html = '';
        html += '<div class="col-sm-8 readonly bl0 pie primero">' + totales[i] + '</div>';
        var selector = "#agrupaciones .form-group div:nth-child(" + (linea + 1) + ")";
        linea = linea + 5;
        $(selector).before(html);
    }
});