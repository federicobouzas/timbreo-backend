var agrupaciones = [
    [8, "PARTIDO FEDERAL", ["-A- ROJO PUNZO", "-B- CELESTE Y BLANCA", "-C- FEDERALISMO PURO", "-D- ALTERNATIVA"]],
    [22, "PARTIDO HUMANISTA", ["A NARANJA"]],
    [259, "PARTIDO DEL CAMPO POPULAR", ["A-INDEPENDENCIA", "B-LIBERTAD", "C-SEGURIDAD"]],
    [268, "MOV. AMPLIO DE TRABAJDORES Y JUBILADOS", ["UNIDAD 1"]],
    [298, "TODOS POR BUENOS AIRES", ["TOBA"]],
    [301, "PATRIA GRANDE", ["VAMOS", "FUERZA DE LA GENTE"]],
    [309, "MOVIMIENTO ORGANIZACION DEMOCRATICA", ["COMPROMISO CIUDADANO"]],
    [501, "1PAIS", ["UN PAIS UNIDO HOY Y SIEMPRE"]],
    [502, "FRENTE SOCIALISTA Y POPULAR", ["LISTA A"]],
    ["502/86", "PARTIDO SOCIALISTA", ["FRENTE SOCIALISTA Y POPULAR", "SOCIALISMO MERLENSE"]],
    [503, "UNIDAD CIUDADANA", ["CELESTE Y BLANCA U", "CELESTE Y BLANCA U2"]],
    [504, "IZQUIERDA AL FRENTE POR EL SOCIALISMO", ["UNIDAD DE LA IZQUIERDA"]],
    [505, "FRENTE PATRIOTA BANDERA VECINAL", ["A- CONDUCCION", "B- ESPERANZA", "C- ORDEN Y SEGURIDAD", "D- SOLIDARIDAD", "E- PIONEROS", "F- SOBERANIA"]],
    [506, "ENC. POPULAR POR TIERRA TECHO Y TRABAJO", ["MEMORIA, VERDAD Y JUSTICIA", "POR TIERRA, TECHO Y TRABAJO"]],
    [507, "CREO", ["CONVICCIONES"]],
    ["507/79", "PARTIDO RENOVADOR FEDERAL", ["CONVICCIONES"]],
    [508, "CAMBIEMOS BUENOS AIRES", ["CAMBIANDO JUNTOS", "1A AMARILLO"]],
    [509, "FRENTE JUSTICIALISTA", ["CUMPLIR", "CUMPLIR 2", "CUMPLIR 4"]],
    [510, "FRENTE DE IZQUIERDA Y DE LOS TRABAJADORES", ["LISTA 1"]],
    [1902, "FRENTE UNION FEDERAL", ["AUTOCTONO", "DIGNIDAD POPULAR", "FRENTE UNION FEDERAL", "PRIMERA DAMA DEL PUEBLO", "LABORISTA", "POPULAR", "RENOVACION FEDERAL", "TRES BANDERAS"]],
    [821, "AG. VECINALISTA PROYECTO LOCAL MERLENSE", ["PROYECTO LOCAL MERLENSE"]]
];

$(function () {
    var linea = 0;
    for (var i in agrupaciones) {
        var classPrimero = "primero";
        for (var j in agrupaciones[i][2]) {
            var html = '';
            html += '<div class="col-sm-1 readonly ' + classPrimero + '">' + agrupaciones[i][0] + '</div>';
            html += '<div class="col-sm-4 readonly ' + classPrimero + '">' + agrupaciones[i][1] + '</div>';
            html += '<div class="col-sm-3 readonly ' + classPrimero + '">LISTA ' + agrupaciones[i][2][j] + '</div>';
            var selector = "#agrupaciones .form-group div:nth-child(" + (linea + 1) + ")";
            linea = linea + 7;
            $(selector).before(html);
            classPrimero = "";
        }
    }

    $(".disabled").attr("disabled", true).attr("placeholder", "NO USAR");
    $("#agrupaciones .input label").remove();
    $("#agrupaciones div.input").addClass("col-sm-1");

    var html = '';
    html += '<div class="col-sm-1 cabecera">Nº</div>';
    html += '<div class="col-sm-4 cabecera">AGRUPACIONES POLÍTICAS</div>';
    html += '<div class="col-sm-3 cabecera">LISTAS INTERNAS</div>';
    html += '<div class="col-sm-1 cabecera">SENADORES NACIONALES</div>';
    html += '<div class="col-sm-1 cabecera">DIPUTADOS NACIONALES</div>';
    html += '<div class="col-sm-1 cabecera">LEGISLADORES PROVINCIALES</div>';
    html += '<div class="col-sm-1 cabecera">CONCEJALES Y CONSEJEROS ESCOLARES</div>';
    $("#agrupaciones .form-group").prepend(html);
});