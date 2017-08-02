var map, confirmMap;
var markers = new Array();
var markersRuta = new Array();
var MAX_MARKERS = 99;

$(function () {
    map = new google.maps.Map(document.getElementById("mapa"), {
        zoom: 13,
        center: new google.maps.LatLng(-34.183335, -58.959264),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    $('#buttonGenerarRuta').click(function () {
        generarRuta('windowConfirmarRuta');
    });
});

function plotear() {
    loadingAjaxStart();
    for (var i in markers) {
        markers[i].setMap(null);
    }
    markers = [];
    $.get(WWW + "elecciones/votantes/ajax_get_votantes", {circuito: $("#circuito").val()}, function (data) {
        loadingAjaxEnd();
        var jdata = $.parseJSON(data);
        if (empty(jdata)) {
            bootbox.alert('<h4>No se encontraron votantes.</h4>');
        }
        for (var i in jdata) {
            var location = jdata[i].Votante.location.split(",");
            var marker = new google.maps.Marker({
                id: jdata[i].Votante.id,
                domicilio: jdata[i].Votante.domicilio,
                map: map,
                title: jdata[i].Votante.domicilio,
                position: new google.maps.LatLng(location[0], location[1]),
                icon: "https://lh3.ggpht.com/hx6IeSRualApBd7KZB9s2N7bcHZIjtgr9VEuOxHzpd05_CZ6RxZwehpXCRN-1ps3HuL0g8Wi=w9-h9"
            });
            markers.push(marker);
        }
    });
}

function getMarkersCurrentViewport() {
    var array = new Array();
    var bounds = map.getBounds();
    for (var i in markers) {
        if (bounds.contains(markers[i].getPosition())) {
            array.push(markers[i]);
        }
    }
    return array;
}

function generarRuta(modal_id) {
    var width = 570; // var width = screen.width * 0.45;
    var height = 495; // var height = screen.height * 0.63;
    var html = '';

    var markers = getMarkersCurrentViewport();

    html += '<div class="col-sm-8 mt15">';
    html += '<div id="mapaConfirmarRuta" style="width: ' + width + 'px; height: ' + height + 'px;"></div>';
    html += '</div>';
    html += '<div class="col-sm-4 mt5">';
    html += '<div class="col-sm-12">';
    html += '<div class="page-header mt0"><h4 class="mt0">Domicilios de la Ruta (<span id="ul_length">' + markers.length + '</span>)</h4></div>';
    html += '<ul style="height: 224px; overflow-y: scroll; overflow-x: hidden;">';
    for (var i in markers) {
        html += '<li id="li_' + markers[i].id + '">' + markers[i].domicilio + '</li>';
    }
    html += '</ul>';
    html += '<div id="boxButtonConfirmarRuta">';
    html += '<div class="mt15"><b>Encargado:</b><input class="form-control mt5" type="text" id="rutaEncargado" /></div>';
    html += '<div class="mt15"><b>Información:</b><textarea class="form-control mt5" id="rutaInformacion" style="width: 100% !important;"></textarea></div>';
    html += '<div class="mt15 pull-right"><a href="javascript:void(0);" class="btn btn-primary" id="buttonConfirmarRuta"><span class="k-icon k-i-tick"></span>Confirmar Ruta</a></div>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '<div class="clearfix"></div>';

    bootbox.alert({size: 'large', className: 'votantes', message: html});
    window.setTimeout(function () {
        var myOptions = {
            zoom: map.getZoom() - 1,
            center: map.getCenter(),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDoubleClickZoom: true,
            draggable: false,
            disableDefaultUI: true,
            panControl: false,
            rotateControl: false,
            scaleControl: false,
            scrollwheel: false,
            zoomControl: false
        };
        confirmMap = new google.maps.Map(document.getElementById("mapaConfirmarRuta"), myOptions);

        for (var i in markers) {
            var marker = new google.maps.Marker({
                key: i,
                map: confirmMap,
                position: markers[i].getPosition(),
                id: markers[i].id,
                domicilio: markers[i].domicilio,
                title: markers[i].title,
                icon: "https://lh3.ggpht.com/hx6IeSRualApBd7KZB9s2N7bcHZIjtgr9VEuOxHzpd05_CZ6RxZwehpXCRN-1ps3HuL0g8Wi=w9-h9"
            });
            markersRuta[i] = marker;

            google.maps.event.addListener(marker, 'click', function () {
                var event = this;
                bootbox.confirm('<h4>¿Confirma eliminar el domicilio "' + this.domicilio + '" de la ruta?</h4>', function (r) {
                    if (r) {
                        $('#li_' + event.id).remove();
                        $('#ul_length').text(parseInt($('#ul_length').text()) - 1);
                        markersRuta[event.key].setMap(null);
                        markersRuta[event.key] = null;
                        //markersRuta.splice(event.key, 1);
                    }
                });
            });
        }
        var bounds = new google.maps.LatLngBounds();
        for (var i = 0; i < markersRuta.length; i++) {
            bounds.extend(markersRuta[i].getPosition());
        }
        confirmMap.fitBounds(bounds);
    }, 500);

    $('#buttonConfirmarRuta').click(function () {
        var cant = 0;
        for (var i in markersRuta) {
            if (markersRuta[i] !== null) {
                cant++;
            }
        }
        if (cant == 0) {
            bootbox.alert('<h4>Debe especificar al menos un domicilio para generar la ruta.</h4>');
            return;
        }
        if (cant > MAX_MARKERS) {
            bootbox.alert('<h4>Puede especificar un máximo de ' + MAX_MARKERS + ' domicilios por ruta.</h4>');
            return;
        }
        bootbox.confirm('<h4>¿Confirma generar una ruta con los domicilios indicados?</h4>', function (r) {
            if (r) {
                var ids = new Array();
                for (var i in markersRuta) {
                    if (markersRuta[i] !== null) {
                        ids.push(markersRuta[i].id);
                    }
                }
                var center = confirmMap.getCenter();
                var params = {
                    "centro": center.lat() + "," + center.lng(),
                    "zoom": confirmMap.getZoom(),
                    "encargado": $("#rutaEncargado").val(),
                    "informacion": $("#rutaInformacion").val(),
                    "markers": ids.join(",")
                };
                $.post(WWW + "elecciones/rutas/confirmar", params, function (data) {
                    var jdata = $.parseJSON(data);
                    if (jdata.status == "OK") {
                        window.location = WWW + 'elecciones/rutas/index';
                    } else {
                        bootbox.alert('<h4>Se produjo un error creando la ruta, intente nuevamente.</h4>');
                    }
                });
            }
        });
    });

}
