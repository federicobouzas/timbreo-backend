var map = null, markers = [];

$(function () {
    $('#edades').multiselect({
        nonSelectedText: 'Edades',
        maxHeight: 400,
        allSelectedText: 'Todas',
        nSelectedText: ' edades',
        numberDisplayed: 3,
        selectAllText: 'Seleccionar todas',
        onChange: submitForm
    });
    createMap();
    submitForm();
});

function createMap() {
    var childrenHeight = 0;
    if ($("#footer").length) {
        $("body").children().not("#container, table.cake-sql-log").each(function () {
            childrenHeight += getTotalHeight(this);
        });
    }
    $('#map').css("min-height", $(window).height() - childrenHeight);
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.6685004, lng: -58.72824830000002},
        zoom: 11,
        mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
            position: google.maps.ControlPosition.BOTTOM_CENTER
        },
    }
    );
    new google.maps.KmlLayer({url: 'http://www.eideoos.com/merlo/distritos.kml', map: map});
    window.setTimeout(function () {
        map.setZoom(12);
    }, 1000);
}

function resetMap() {
    for (var i in markers) {
        markers[i].setMap(null);
    }
    markers = [];
}

function getMarkerHtmlInfo(data) {
    var d = new Date(Date.parse(data.CargaMerlo.time));
    var pad = "00";
    var date = pad.substring(0, pad.length - d.getDate().toString().length) + d.getDate();
    var month = pad.substring(0, pad.length - d.getMonth().toString().length) + d.getMonth();
    var year = pad.substring(0, pad.length - d.getFullYear().toString().length) + d.getFullYear();
    var hours = pad.substring(0, pad.length - d.getHours().toString().length) + d.getHours();
    var minutes = pad.substring(0, pad.length - d.getMinutes().toString().length) + d.getMinutes();
    data.CargaMerlo.time = date + "/" + month + "/" + year + " " + hours + ":" + minutes;

    var html = '';
    html += '<div class="fs13">';
    html += '<h4 class="mt0"><strong>Información:</strong></h4>';
    html += '<div><strong>Fecha:</strong> ' + data.CargaMerlo.time + '</div>';
    html += '<div><strong>Edad:</strong> ' + data.CargaMerlo.edad + '</div>';
    html += '<h4 class="mt20"><strong>Contacto:</strong></h4>';
    html += '<div><strong>Nombre:</strong> ' + data.CargaMerlo.nombre + '</div>';
    html += '<div><strong>Email:</strong> ' + data.CargaMerlo.email + '</div>';
    html += '<div><strong>Teléfono:</strong> ' + data.CargaMerlo.telefono + '</div>';
    html += '<h4 class="mt20"><strong>Respuestas:</strong></h4>';
    for (var i in preguntas) {
        html += '<div><strong>' + i + ')</strong> ' + preguntas[i] + ': <strong>' + data.CargaMerlo['respuesta_' + i] + '</strong></div>';
    }
    html += '</div>';
    return html;
}

function plotMap(data) {
    var jdata = $.parseJSON(data);
    for (var i in jdata) {
        if (jdata[i].CargaMerlo.position) {
            var position = jdata[i].CargaMerlo.position.split(",");
            var marker = new google.maps.Marker({
                position: {lat: parseFloat(position[0]), lng: parseFloat(position[1])},
                map: map,
                icon: 'https://storage.googleapis.com/support-kms-prod/SNP_2752125_en_v0',
                information: getMarkerHtmlInfo(jdata[i]),
            });
            marker.addListener('click', function (event) {
                bootbox.alert(this.information);
            });
            markers.push(marker);
        }
    }
}

function getMapData() {
    return {
        edad: $("#edades").val() ? $("#edades").val().join() : []
    };
}

function submitForm() {
    resetMap();
    $.ajax(WWW + "merlo/cargas_merlo/ajax_get_cargas", {data: getMapData()}).done(plotMap);
}