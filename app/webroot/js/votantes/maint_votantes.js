$(function() {
    if (OP == 'E') {
        input2readonly($("#SocioPadronNumero"));
    }

    if (OP == 'A' || OP == 'E') {
        $("#SocioPadronCoordenadas").change(function() {
            if (empty(this.value)) {
                $("#SocioPadronoEstadoGeo").val('Sin geolocalizar').siblings('span').text('Sin Geolocalizar');
            }
            else {
                if (empty($("#SocioPadronCalle").val()) || empty($("#SocioPadronAltura").val())) {
                    $("#SocioPadronoEstadoGeo").val('No geolocalizable').siblings('span').text('No Geolocalizable');
                }
                else {
                    $("#SocioPadronEstadoGeo").val('Geolocalizado').siblings('span').text('Geolocalizado');
                }
            }

        });
    }
});