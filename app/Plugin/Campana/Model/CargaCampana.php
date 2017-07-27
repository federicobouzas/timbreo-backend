<?php

class CargaCampana extends AppModel {

    public $label = 'Cargas Campana';
    public $tablePrefix = 'app_campana_';
    public $useTable = 'cargas';
    public $plugin = 'Campana';
    public $preguntas = [
        1 => "¿Cómo evaluás hasta el momento la gestión del Intendente Sebastián Abella?",
        2 => "¿Qué imagen tenés de él?",
        3 => "Si las elecciones fueran hoy, ¿a los candidatos de quién votarías para Consejal?",
        4 => "Indique los 3 temas que más le preocupan de la Ciudad de este listado.",
        5 => "¿Nota que hay mayores obras en el municipio desde el cambio de gobierno?",
    ];

}
