SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `ele_votantes_rutas`;

DROP TABLE IF EXISTS `ele_votantes`;
CREATE TABLE `ele_votantes` (
  `id` int(10) NOT NULL,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `en_ruta` varchar(255) NOT NULL DEFAULT 'No',
  `matricula` bigint(20) DEFAULT NULL,
  `clase` int(4) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `tipodoc` varchar(255) DEFAULT NULL,
  `circuito` varchar(255) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `street_number` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `political` varchar(255) NOT NULL,
  `administrative_area_level_2` varchar(255) DEFAULT NULL,
  `administrative_area_level_1` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `estado_geo` varchar(255) DEFAULT 'Sin geolocalizar'
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `ele_rutas`;
CREATE TABLE IF NOT EXISTS `ele_rutas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL,
  `centro` varchar(100) NOT NULL,
  `zoom` int(11) NOT NULL,
  `encargado` varchar(200) NOT NULL,
  `informacion` text NOT NULL,
  `realizada` varchar(20) NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

CREATE TABLE IF NOT EXISTS `ele_votantes_rutas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `votante_id` int(10) NOT NULL,
  `ruta_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`votante_id`,`ruta_id`),
  UNIQUE KEY `votante_id` (`votante_id`),
  KEY `ruta_id` (`ruta_id`)
) ENGINE=InnoDB ;

ALTER TABLE `ele_votantes_rutas`
  ADD CONSTRAINT `ele_votantes_rutas_ibfk_1` FOREIGN KEY (`votante_id`) REFERENCES `ele_votantes` (`id`),
  ADD CONSTRAINT `ele_votantes_rutas_ibfk_2` FOREIGN KEY (`ruta_id`) REFERENCES `ele_rutas` (`id`);

SET foreign_key_checks = 1;