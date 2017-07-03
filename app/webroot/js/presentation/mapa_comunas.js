function mapa_comunas_init(field, params) {
    var id = field.attr("id");
    mapaComunas($("[id='map-" + id + "']"));
}

function mapaComunas(container, callbackClick) {
    callbackClick = callbackClick || null;
    new jvm.Map({
        container: container,
        map: 'comunas',
        backgroundColor: '#FFF',
        zoomOnScroll: false,
        zoomAnimate: false,
        regionsSelectable: true,
        regionsSelectableOne: false,
        panOnDrag: false,
        onRegionClick: callbackClick,
        series: {
            regions: [{
                    attribute: 'fill'
                }]
        },
        focusOn: {
            scale: 2.3,
            x: 0.5,
            y: 0.5
        },
        regionLabelStyle: {
            initial: {
                fill: '#7E6800'
            },
            hover: {
                fill: '#FFFAE5'
            },
            selected: {
                fill: '#FFFAE5'
            }
        },
        regionStyle: {
            initial: {
                fill: "#FFD300",
                "fill-opacity": 0.4,
                "stroke": '#FFF',
                "stroke-width": 2,
                "stroke-opacity": 1
            },
            selected: {
                fill: null,
                "fill-opacity": 1
            }
        },
        labels: {
            regions: {
                render: function (code) {
                    return code;
                },
                offsets: function (code) {
                    return {
                        '1': [0, 5],
                        '2': [0, 5],
                        '5': [-1, 3],
                        '6': [4, 5],
                        '7': [0, 10],
                        '9': [-5, 5],
                        '11': [0, 3],
                        '13': [-7, 0]
                    }[code];
                }
            }
        }
    });
}