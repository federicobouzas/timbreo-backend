<?php

class CargaMerlo extends AppModel {

    public $label = 'Cargas Merlo';
    public $tablePrefix = 'app_merlo_';
    public $useTable = 'cargas';
    public $plugin = 'Merlo';
    public $preguntas = [
        1 => "¿Conoce por los medios a la Gobernadora María Eugenia Vidal?",
        2 => "¿Qué opinión tiene de ella?",
        3 => "¿Confía en la gestión de la Gobernadora a lo largo de estos años que le quedan de gestión?",
        4 => "Independientemente de la opinión de la Gobernadora, ¿confía en el Gobierno Nacional y en su gestión en general?",
        5 => "¿Cómo es para usted la gestión del actual Intendente?",
        6 => "¿Nota que hay mayores obras en el municipio desde el cambio de Gobierno Provincial?",
        7 => "¿Sabe que este año hay elecciones?",
        8 => "¿Sabe qué es lo que se elige en su distrito?",
        9 => "¿Y en la Provincia?",
        10 => '¿Y a nivel Nacional?',
        11 => 'Si las elecciones fueran hoy, ¿a los candidatos de quién votarías?',
    ];

}
