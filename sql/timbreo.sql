-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-07-2017 a las 15:34:21
-- Versión del servidor: 5.5.49-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET foreign_key_checks = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `timbreo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_buttons`
--

CREATE TABLE IF NOT EXISTS `acc_buttons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `global` varchar(2) NOT NULL DEFAULT 'No',
  `query` text,
  `display_order` varchar(100) DEFAULT NULL,
  `refresh` varchar(2) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `acc_buttons`
--

INSERT INTO `acc_buttons` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `global`, `query`, `display_order`, `refresh`, `icon`, `url`, `description`, `status`) VALUES
(1, '2017-07-03 19:23:48', '2017-07-04 02:24:58', 1, 'No', '', '20', 'No', 'pie-chart', 'merlo/cargas_merlo/dashboard', 'Dashboard Merlo', 'Activo'),
(2, '2017-07-03 19:24:46', NULL, 1, 'No', '', '22', 'No', 'list', 'merlo/cargas_merlo/index', 'Respuestas Merlo', 'Activo'),
(3, '2017-07-03 19:25:25', NULL, 1, 'No', '', '25', 'No', 'map-marker', 'merlo/cargas_merlo/mapa', 'Mapa Merlo', 'Activo'),
(4, '2017-07-22 15:09:27', NULL, 1, 'No', '', '30', 'No', 'pie-chart', 'campana/cargas_campana/dashboard', 'Dashboard Campana', 'Activo'),
(5, '2017-07-22 15:09:57', NULL, 1, 'No', '', '32', 'No', 'list', 'campana/cargas_campana/index', 'Respuestas Campana', 'Activo'),
(6, '2017-07-22 15:10:37', '2017-07-22 19:22:01', 1, 'No', '', '35', 'No', 'map-marker', 'campana/cargas_campana/mapa', 'Mapa Campana', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_buttons_rols`
--

CREATE TABLE IF NOT EXISTS `acc_buttons_rols` (
  `button_id` int(10) NOT NULL,
  `rol_id` int(10) NOT NULL,
  PRIMARY KEY (`button_id`,`rol_id`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acc_buttons_rols`
--

INSERT INTO `acc_buttons_rols` (`button_id`, `rol_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(4, 2),
(5, 2),
(6, 2),
(1, 3),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_permisos`
--

CREATE TABLE IF NOT EXISTS `acc_permisos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `controller` varchar(100) NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `acc_permisos`
--

INSERT INTO `acc_permisos` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `nombre`, `plugin`, `controller`, `action`) VALUES
(1, '0000-00-00 00:00:00', '2014-06-09 19:42:56', 1, 'Homepage', '', 'pages', 'display'),
(2, '0000-00-00 00:00:00', '2014-06-09 19:42:56', 1, 'Botones Homepage', 'fmw_acceso', 'buttons', 'ajax_buttons'),
(3, '0000-00-00 00:00:00', '2014-06-09 19:42:56', 1, 'Datos Personales', 'fmw_acceso', 'users', 'datos_personales'),
(4, '0000-00-00 00:00:00', '2014-06-09 19:42:56', 1, 'Request a Presentations por AJAX', '', 'remotes', '*'),
(5, '0000-00-00 00:00:00', '2014-08-28 20:29:24', 1, 'ajaxID (para tablas asociadas muchos a muchos)', '*', '*', 'ajax_id'),
(6, '2014-05-13 10:41:39', '2014-06-09 19:42:56', 1, 'Datos Personales App', 'acceso', 'app_users', 'datos_personales'),
(7, '2014-05-27 17:34:35', '2014-06-24 23:43:51', 1, 'Generar y Consultar Tickets', 'soporte', 'tickets_cliente', 'index,add,view'),
(8, '2014-05-27 17:41:29', '2014-06-09 19:42:56', 1, 'Agenda', 'acceso', 'app_users', 'agenda'),
(9, '2014-05-27 17:41:47', '2014-06-09 19:42:56', 1, 'Dependencias', 'acceso', 'dependencias', 'index_view'),
(10, '2014-05-28 12:14:41', '2014-06-09 19:42:56', 1, 'Ajax - Información de Usuarios', 'acceso', 'app_users', 'ajax_get_data'),
(11, '2014-05-28 12:16:01', '2014-06-09 19:42:56', 1, 'Ajax - Información de Bienes', 'almacen', 'bienes', 'ajax_get_data'),
(12, '2014-05-28 12:18:14', '2014-06-09 19:42:56', 1, 'Ajax - Información de Supervisores', 'soporte', 'supervisores', 'ajax_get_supervisores'),
(13, '2014-05-28 13:03:57', '2014-06-09 19:42:56', 1, 'Solicitar Medico Laboral', 'soporte', 'solicitudes_medico_laboral', '*'),
(14, '2014-06-02 15:54:23', '2014-06-23 22:10:13', 1, 'Solicitar Licencias', 'licencias', 'licencias_solicitante', 'index,add,add_post,view,adjuntar_certificado'),
(15, '2014-06-02 15:57:30', '2014-06-09 19:42:56', 1, 'Ajax - Obtener días hábiles y corridos en intervalo', 'licencias', 'licencias', 'ajax_get_info_intervalo'),
(16, '2014-06-02 15:59:21', '2014-06-09 19:42:56', 1, 'Ajax - Obtener días restantes para solicitar en tipo de licencias', 'licencias', 'tipos_licencia', 'ajax_restantes_usuario'),
(19, '2014-06-05 12:25:39', '2014-06-09 19:42:56', 1, 'Mis Inasistencias', 'acceso', 'app_users', 'inasistencias'),
(20, '2014-06-19 15:05:29', '0000-00-00 00:00:00', 1, 'Autorizar Licencias', 'licencias', 'licencias_autorizante', 'index,edit,view'),
(21, '2014-06-19 15:17:26', '2014-06-19 21:20:18', 1, 'Ajax - Fecha', '', 'fmw', 'ajax_fecha'),
(22, '2014-06-24 15:27:54', '2014-06-24 21:41:49', 1, 'Ajax - Información Tipo Licencia', 'licencias', 'tipos_licencia', 'ajax_get_data'),
(23, '2014-07-02 15:15:40', '2014-07-02 21:20:14', 1, 'Ajax - Recibir Notificaciones', 'fmw_messaging', 'notifications', 'ajax_get_notification_by_id'),
(24, '2014-11-05 11:37:51', '0000-00-00 00:00:00', 1, 'Visualizar Organigrama', 'acceso', 'organigrama', 'view'),
(25, '2016-03-03 12:23:51', '0000-00-00 00:00:00', 1, 'Ajax - Validar email repetido en Mis Datos', 'acceso', 'app_users', 'ajax_duplicate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_rights`
--

CREATE TABLE IF NOT EXISTS `acc_rights` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `acc_rights`
--

INSERT INTO `acc_rights` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `nombre`) VALUES
(12, '2014-02-11 15:25:20', '2016-10-11 13:11:19', NULL, 'MODULO ACCESO'),
(14, '2014-02-11 15:54:57', '2016-03-03 17:56:41', NULL, 'MODULO MENSAJERIA'),
(15, '2014-02-11 15:55:54', '2016-03-03 17:57:26', NULL, 'MODULO SISTEMA'),
(16, '2017-07-03 15:46:55', '2017-07-22 19:20:59', 1, 'Administrar Campana'),
(17, '2017-07-22 15:21:13', '0000-00-00 00:00:00', 1, 'Administrar Merlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_rights_rols`
--

CREATE TABLE IF NOT EXISTS `acc_rights_rols` (
  `right_id` int(10) NOT NULL,
  `rol_id` int(10) NOT NULL,
  PRIMARY KEY (`right_id`,`rol_id`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acc_rights_rols`
--

INSERT INTO `acc_rights_rols` (`right_id`, `rol_id`) VALUES
(12, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(16, 2),
(17, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_right_permisos`
--

CREATE TABLE IF NOT EXISTS `acc_right_permisos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `right_id` int(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `controller` varchar(100) NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `right_id` (`right_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Volcado de datos para la tabla `acc_right_permisos`
--

INSERT INTO `acc_right_permisos` (`id`, `right_id`, `plugin`, `controller`, `action`) VALUES
(55, 12, 'fmw_acceso', 'users', '*'),
(56, 12, 'fmw_acceso', 'rols', '*'),
(57, 12, 'fmw_acceso', 'rights', '*'),
(58, 12, 'fmw_acceso', 'permisos', '*'),
(62, 14, 'fmw_messaging', 'entrantes', '*'),
(63, 14, 'fmw_messaging', 'mensajes', '*'),
(64, 14, 'fmw_messaging', 'servers', '*'),
(65, 12, 'fmw_acceso', 'buttons', '*'),
(66, 15, 'fmw_system', 'configurations', 'edit'),
(67, 15, 'fmw_system', 'logs', '*'),
(68, 15, 'fmw_system', 'estados', '*'),
(84, 12, 'acceso', 'app_users', '*'),
(86, 12, 'fmw_acceso', 'centros_costos', '*'),
(87, 12, 'fmw_acceso', 'dependencias', '*'),
(105, 12, 'acceso', 'dependencias', '*'),
(106, 12, 'acceso', 'centros_costos', '*'),
(118, 15, 'fmw_system', 'bloqueos', '*'),
(137, 12, 'acceso', 'app_rols', '*'),
(138, 15, 'system', 'app_configurations', 'edit'),
(165, 14, 'fmw_messaging', 'notification_messages', '*'),
(191, 12, 'acceso', 'profesiones', '*'),
(194, 16, 'campana', 'cargas_campana', '*'),
(195, 17, 'merlo', 'cargas_merlo', '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_rols`
--

CREATE TABLE IF NOT EXISTS `acc_rols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nombre` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `acc_rols`
--

INSERT INTO `acc_rols` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `nombre`) VALUES
(1, '2017-07-03 00:00:00', '2017-07-24 14:14:12', 1, 'Administrador'),
(2, '2017-07-22 15:21:47', '2017-07-22 19:22:11', 1, 'Campana'),
(3, '2017-07-22 15:22:33', NULL, 1, 'Merlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_users`
--

CREATE TABLE IF NOT EXISTS `acc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `estado` varchar(8) NOT NULL,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `acc_users`
--

INSERT INTO `acc_users` (`id`, `fecha_carga`, `fecha_modificacion`, `firstname`, `lastname`, `username`, `password`, `estado`, `email`) VALUES
(1, '2017-07-03 00:00:00', '2017-07-22 19:23:32', 'Federico', 'Bouzas', 'federicobouzas@gmail.com', 'd272ac13c8cdab8938549503b706a5b0f57d4879', 'Activo', 'federicobouzas@gmail.com'),
(2, '2017-07-22 15:23:17', NULL, 'Marina', 'Sanchez', 'marinasanchez2004@gmail.com', '793b0dd277d6f1c41d452a05db8f3fae298aa975', 'Activo', 'marinasanchez2004@gmail.com'),
(3, '2017-07-22 15:24:23', NULL, 'Augusto', 'Bogado', 'augusto.bogado@gmail.com', '793b0dd277d6f1c41d452a05db8f3fae298aa975', 'Activo', 'augusto.bogado@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_users_recovers`
--

CREATE TABLE IF NOT EXISTS `acc_users_recovers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_users_rols`
--

CREATE TABLE IF NOT EXISTS `acc_users_rols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`rol_id`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `acc_users_rols`
--

INSERT INTO `acc_users_rols` (`id`, `user_id`, `rol_id`) VALUES
(3, 1, 1),
(2, 2, 2),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_campana_cargas`
--

CREATE TABLE IF NOT EXISTS `app_campana_cargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `couchdb_id` varchar(255) NOT NULL,
  `couchdb_rev` varchar(255) NOT NULL,
  `identificacion` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL,
  `respuesta_1` varchar(255) NOT NULL,
  `respuesta_2` varchar(255) NOT NULL,
  `respuesta_3` varchar(255) NOT NULL,
  `respuesta_4` varchar(255) NOT NULL,
  `respuesta_5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=826 ;

--
-- Volcado de datos para la tabla `app_campana_cargas`
--

INSERT INTO `app_campana_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`) VALUES
(1, '2017-07-22 14:21:58', '2017-07-22 21:21:58', 0, '03B3A458-1BF2-0C14-BAAA-3103D02D0E63', '1-bdad64f37bf49f61c0578684d1a7c4a7', 'Lucia schirripa', '-34.206380538275,-58.936934012022', '2017-07-22 12:59:51', '', 'Norma', '444693', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(2, '2017-07-22 14:21:58', '2017-07-22 21:21:58', 0, '03DD67AA-CA9C-B7E0-99EE-AEA5D0529E42', '1-5b9d9aaf3a3838b6a8c503dc61ab397c', 'Renato', '-34.2074551,-58.9394597', '2017-07-22 12:38:41', '', 'Juan Carlos Jardon.', '449033', '+60', 'R', 'R', 'NS/NC', 'Luminarias', 'No'),
(3, '2017-07-22 14:21:59', '2017-07-22 21:21:59', 0, '040FBD8D-5A19-20E9-9E96-16E356A0C83E', '1-40e7db586badf5ffe6af89508dea740e', 'Gaston Barrios', '-34.1638026,-58.9640711', '2017-07-22 11:11:49', '', '', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(4, '2017-07-22 14:22:00', '2017-07-22 21:22:00', 0, '04246FD1-F52F-5B0D-B2E0-B1F06D76D981', '1-2099fadf11d67c3f6af165954d446ea0', 'Martin', '-34.1790491,-58.9760875', '2017-07-22 12:31:37', '', 'Amalia', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Mal estado del barrio', 'Si'),
(5, '2017-07-22 14:22:00', '2017-07-22 21:22:00', 0, '042C1E0D-1EB8-E2CD-9676-779B98FA0E39', '1-19c1302d9de5642722fe2568c53c6327', 'Nancy', '-34.1621908,-58.9605885', '2017-07-22 10:35:19', '', '', '', '', '', '', '', '', ''),
(6, '2017-07-22 14:22:01', '2017-07-22 21:22:01', 0, '04C3C214-D5CE-3E8F-9E2B-DDCF9362B2C5', '1-fb08051c2fec49c18b7dc21ac0e0d35d', 'Jessica taubas', '-34.1820978,-58.9711423', '2017-07-22 11:32:35', '', 'Miriam sosa', '15354436', '16-25', 'B', 'B', 'NS/NC', '', 'Si'),
(7, '2017-07-22 14:22:01', '2017-07-22 21:22:01', 0, '06A3FD8D-8FEE-C1E9-BD65-5DD4446215D6', '1-a3f33fcaafcf9a7c878653374cc67f1a', '24938503', '-34.180133,-58.974206', '2017-07-22 12:44:52', '', 'O mar fernandez', '591960', '40-59', 'B', 'B', 'NS/NC', '', 'Si'),
(8, '2017-07-22 14:22:02', '2017-07-22 21:22:02', 0, '06B437A1-B462-58AD-BA1A-092EC5FEC561', '1-d3afac9091b7b86d799715a4a920d7bb', 'marioaita1974@gmail.com', '-34.20619653235,-58.938077329653', '2017-07-22 11:53:41', '', 'Hector Acasto', '', '+60', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Inseguridad', 'Si'),
(9, '2017-07-22 14:22:03', '2017-07-22 21:22:03', 0, '06F2F66B-6FD4-D244-A35B-0024504A4A50', '1-b658867102ed32fa206ed99f45de75da', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1627098,-58.9645862', '2017-07-22 12:28:09', 'joyeria_nani@hotmail.com', 'Walter nani', '348915313712', '40-59', 'R', 'R', 'Cambiemos', 'Inseguridad,Desempleo,Servicio de Absa', 'Si'),
(10, '2017-07-22 14:22:03', '2017-07-22 21:22:03', 0, '071FC5C8-D710-2FD4-954F-DCEE3B597503', '1-7a42a48b0e42ebef4d36adcedf0e64cf', 'Renato', '-34.2068613,-58.9398964', '2017-07-22 11:43:26', '', 'José Cabrera', '501701', '26-39', 'B', 'B', 'Otro', 'Inseguridad,Desempleo', 'Si'),
(11, '2017-07-22 14:22:04', '2017-07-22 21:22:04', 0, '086AE96B-5EFE-EE4B-9A79-2B0354214B49', '1-15242c90a8652357de3f5957586ecc3d', '24938503', '-34.1810599,-58.97387', '2017-07-22 11:50:57', '', 'Andrea cuello', '421081', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad,Servicio de Absa,Desempleo', 'Si'),
(12, '2017-07-22 14:22:04', '2017-07-22 21:22:04', 0, '09532B63-9047-EBD7-92B1-07D324976984', '1-8f72f4a5f0b44eea6b7af5814cb7e686', 'marioaita1974@gmail.com', '-34.206056932896,-58.937612728996', '2017-07-22 11:42:06', '', 'Julio del molino', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación', 'Si'),
(13, '2017-07-22 14:22:05', '2017-07-22 21:22:05', 0, '098175B6-5672-E084-B01C-3839F5C64AA8', '1-0f60b9a2251178bb36b372f85fbb5656', 'Paula Bianchi Raquel Abdul', '-34.1616021,-58.9636792', '2017-07-22 11:40:10', '', 'Patricia bilvao', '348915498451', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte', 'Si'),
(14, '2017-07-22 14:22:05', '2017-07-22 21:22:05', 0, '09883464-2325-FEF6-8850-0F67CD27C5BC', '1-79a4dbbf5cc96a6cd100d608787ab723', 'Valeria. Novelli', '-34.1789938,-58.9559526', '2017-07-22 08:59:27', '', 'Valeria', '348915540760', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si'),
(15, '2017-07-22 14:22:06', '2017-07-22 21:22:06', 0, '0D7023A7-4BDB-D749-A13A-FDDEF5C12EFD', '1-89d86de521ef8a3a9a3b15750f86f18e', '24938503', '-34.1810013,-58.9743628', '2017-07-22 12:04:26', '', 'Julio lopez', '15230187', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Salud,Tránsito/transporte', 'Si'),
(16, '2017-07-22 14:22:07', '2017-07-22 21:22:07', 0, '0E299887-1A0D-F072-A57C-C741D926A0B5', '1-b0848bb4ca6fb136fab331c0f51f778d', 'Márgara Pons', '-34.1803658,-58.9754603', '2017-07-22 11:56:36', '', 'Luis Carmelino', '448013', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(17, '2017-07-22 14:22:07', '2017-07-22 21:22:07', 0, '0E33B161-D6D8-6157-9199-C24C95065D07', '1-3279f322ae297bfec9f05edab789e68d', 'Martin', '-34.1790918,-58.9758187', '2017-07-22 12:30:16', '', 'Eva', '', '+60', 'R', 'R', 'NS/NC', 'Cloacas,Educación,Desempleo', 'Si'),
(18, '2017-07-22 14:22:08', '2017-07-22 21:22:08', 0, '0EB64B54-4DB4-9ED0-A528-FB8EC8A114F5', '1-91ec4e0d1d09c3cc317755ae5e7e4bf0', 'Cristian', '-34.1790382,-58.9743628', '2017-07-22 11:26:08', '', 'Dorrego 1232 - No salio Nadie', '', '', '', '', '', '', ''),
(19, '2017-07-22 14:22:08', '2017-07-22 21:22:08', 0, '0F4CB4FF-6B54-CD9B-999B-70D9D8AACA28', '1-276cea486c44b9af266fef1b6d11e03c', 'Alejandra', '-34.16358,-58.9682257', '2017-07-22 11:48:09', '', 'Noemí pitalua de dobladas', '', '40-59', 'R', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Luminarias', ''),
(20, '2017-07-22 14:22:09', '2017-07-22 21:22:09', 0, '11CDE165-1656-99B6-8442-AE7EC8F504E8', '1-ac1e1a6ae0ca821228a3c18e4748ad37', 'Jessica taubas', '-34.1802115,-58.9784772', '2017-07-22 12:08:54', '', 'Juan carlos bredle', '15590400', '+60', 'B', '', 'Otro', 'Cloacas', 'Si'),
(21, '2017-07-22 14:22:09', '2017-07-22 21:22:09', 0, '129AD948-E316-89C5-B484-6448C2F1D118', '1-0b33c2883a899d21aa9381f5c653ce64', 'Renato', '-34.2074034,-58.9394149', '2017-07-22 12:34:32', '', 'Rosa Celestino', '440801', '+60', 'M', 'M', 'NS/NC', 'Luminarias', 'No'),
(22, '2017-07-22 14:22:10', '2017-07-22 21:22:10', 0, '12C4DDB7-497D-3145-BB6E-69DCA04FF42F', '1-e55df76fa92d77c7f6656f0c867bbf2e', 'Evelyn', '-34.204851050414,-58.93664406245', '2017-07-22 12:16:54', '', 'Walter', '', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Tránsito/transporte', 'Si'),
(23, '2017-07-22 14:22:11', '2017-07-22 21:22:11', 0, '145C2EDB-1992-9888-8DB6-42794987217E', '1-54a4397f196da69f80fe603867817d0c', 'Renato', '-34.2070848,-58.9403442', '2017-07-22 11:53:55', '', 'Verónica Rosado', '441299', '40-59', 'B', 'B', 'NS/NC', '', 'Si'),
(24, '2017-07-22 14:22:11', '2017-07-22 21:22:11', 0, '148C65D6-68D4-1263-8CFA-702724C31ADB', '1-c2f7866d56ce102861ea41acf92a27d8', 'Aquino Martín', '-34.1654253,-58.9651349', '2017-07-22 11:49:00', 'bsilviam@gmail.com', 'Silvia Martinez', '430929', '40-59', 'B', 'R', 'Otro', 'Inseguridad', ''),
(25, '2017-07-22 14:22:12', '2017-07-22 21:22:12', 0, '148FA475-A4AB-C247-891A-1C0AD4EFB320', '1-e8f486acdfb2bf034f104cb3acafb673', 'Cristian', '-34.1786407,-58.9737132', '2017-07-22 11:09:33', '', 'Del Pino 1372 - Amilcar Candiano', '', '16-25', 'B', 'B', '', 'Cloacas,Luminarias,Desempleo', 'Si'),
(26, '2017-07-22 14:22:12', '2017-07-22 21:22:12', 0, '14E0C444-F333-B86A-9E01-40474CCEFF23', '1-b3295372c42c584e523d9bac2c22cb26', 'Cristian', '-34.1786407,-58.9737132', '2017-07-22 11:03:30', '', 'Del Pino 1366 - No salió Nadie', '', '', '', '', '', '', ''),
(27, '2017-07-22 14:22:13', '2017-07-22 21:22:13', 0, '15045DDB-7112-8791-AEC4-363FAF0E822C', '1-3a8cfff2c40a5da98b2e2b6b2729e451', 'Maria emilia', '-34.1629604,-58.9644294', '2017-07-22 13:04:40', '', 'Paula gutierrez', '15638423', '16-25', 'B', 'B', 'NS/NC', '', 'Si'),
(28, '2017-07-22 14:22:13', '2017-07-22 21:22:13', 0, '15B6B439-DB60-3F8A-83DF-F9962EFF543C', '1-8afac8919ab4c8807462096043539665', 'Gaston Barrios', '-34.1629375,-58.9641719', '2017-07-22 12:07:17', '', 'Noelia Cristina bustos', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte,Contaminación', 'Si'),
(29, '2017-07-22 14:22:14', '2017-07-22 21:22:14', 0, '1630CAB9-D16A-4A93-8902-F1B2E9F7DE60', '1-edaebbd39ff4508a7f2f5d2a0b34b79c', 'Márgara Pons', '-34.1803496,-58.9751915', '2017-07-22 12:00:22', '', 'Ramón', '', '26-39', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Contaminación,Cloacas', 'Si'),
(30, '2017-07-22 14:22:15', '2017-07-22 21:22:15', 0, '17714715-0EF7-7033-8C4A-227335327D2C', '1-02c295d39abcdaf46c5e727cf28da381', 'Nancy', '-34.1606593,-58.9657845', '2017-07-22 11:31:16', '', 'Ricardo', '', '+60', 'B', 'B', 'Cambiemos', '', 'Si'),
(31, '2017-07-22 14:22:15', '2017-07-22 21:22:15', 0, '17BB171C-2D20-9D56-8144-2A358C924ADA', '1-89fdea342f4d91f1b7f4a37755370a92', 's.castro / m.paz Reniboldi eq 13', '-34.1786439,-58.9765691', '2017-07-22 11:33:45', '', 'Yessica Castano', '514932', '26-39', 'R', 'R', '', '', 'Si'),
(32, '2017-07-22 14:22:16', '2017-07-22 21:22:16', 0, '18B0653E-D2F1-A063-B8AC-D1E21F0FCFA1', '1-651178b5df86b7760f8cc5e5d92df0d0', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1621002,-58.963108', '2017-07-22 13:05:02', '', 'Yolanda', '424140', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Mal estado del barrio,Tránsito/transporte', 'Si'),
(33, '2017-07-22 14:22:16', '2017-07-22 21:22:16', 0, '19618660-34C4-D378-9A9E-F0EE1575717D', '1-852d2c395efab3619e699e8316399e42', 'Marina', '', '2017-07-22 10:55:52', 'paulifernandez1@gmail.com', 'Paula Fernandez', '', '16-25', 'R', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Falta de vivienda', 'Si'),
(34, '2017-07-22 14:22:17', '2017-07-22 21:22:17', 0, '1D338E9D-2143-A840-B2E3-374FE8E60FDF', '1-86512a5b2852a60462d55f282827efff', 'Renato', '-34.2073775,-58.9404786', '2017-07-22 12:16:36', '', 'Vivían Ferrin', '653762', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(35, '2017-07-22 14:22:17', '2017-07-22 21:22:17', 0, '1D7BE7E2-D240-8DC7-BC96-0BD5B12AC4A2', '1-0c86adf3b3e5b874158fcd1406daa6a0', 'Cristian', '-34.1793938,-58.9736684', '2017-07-22 11:33:34', '', 'Sonia Paiva - Dorrego y Laprida - reclamo Verdin en Calle', '651732', '40-59', 'B', 'B', '', 'Luminarias,Inseguridad,Desempleo', 'Si'),
(36, '2017-07-22 14:31:35', '2017-07-22 21:54:18', 0, '1F4952D0-E697-91F8-87F0-D5C2C6E47E92', '1-86c2e6f4a85d87d3156ffcccdc35f60e', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1780944,-58.9755163', '0000-00-00 00:00:00', '', 'Poveda', '', '+50', 'B', 'B', 'NS/NC', 'Educacion', ''),
(37, '2017-07-22 14:31:35', '2017-07-22 21:31:35', 0, '20E74B06-6541-ED9C-8A0F-8BC953A404D5', '1-41674ffa45aac540bcc2e9d16de1b063', 'Márgara Pons', '-34.1794266,-58.9746988', '2017-07-22 11:24:50', '', 'Ernesto Cabral', '420952', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Contaminación', 'Si'),
(38, '2017-07-22 14:31:36', '2017-07-22 21:31:36', 0, '2159032C-CFD5-C6F9-8F83-1E2794544656', '1-67888588071a0d750d61da0fadca83ba', '31627194', '-34.1617094,-58.9667118', '2017-07-22 12:44:27', '', 'Pablo pepe', '232915576790', '40-59', 'R', 'R', 'FPV', 'Inseguridad,Salud,Desempleo', 'Si'),
(39, '2017-07-22 14:31:37', '2017-07-22 21:31:37', 0, '21DC2145-365E-4484-8A74-7E2D35B296C2', '1-bfc26f1061b9a450b243453ff16f961d', 'Márgara Pons', '-34.1809309,-58.9757963', '2017-07-22 12:20:46', '', 'Eduardo Eckerdt', '567504', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte,Mal estado del barrio', 'Si'),
(40, '2017-07-22 14:31:37', '2017-07-22 21:54:30', 0, '22D73542-F925-3F9A-8095-579BD94CA0F2', '1-472661ef73c0c9270dcb1edab0bfd640', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1770264,-58.9761708', '0000-00-00 00:00:00', '', 'Luis Vallejos', '', '31-49', 'B', 'B', 'Cambiemos', '', ''),
(41, '2017-07-22 14:31:38', '2017-07-22 21:31:38', 0, '238934FE-4F67-3340-8BD4-7C88F6313C1E', '1-3b3c9be2938e87ab3d3e5695557a246c', 'Lucía', '-34.1601657,-58.9628953', '2017-07-22 11:15:58', '', 'augusto di gennaro', '', '16-25', 'R', 'M', 'FPV', 'Inseguridad,Contaminación,Desempleo', 'No'),
(42, '2017-07-22 14:31:38', '2017-07-22 21:31:38', 0, '23CB8FAB-4DFD-2FF0-A884-5964E4E74273', '1-92132b4b85a98ff78a2685ef416894d6', 'Cristian', '-34.1794544,-58.973534', '2017-07-22 11:40:12', '', 'Laprida 1373 - No salio nadie', '', '', '', '', '', '', ''),
(43, '2017-07-22 14:31:39', '2017-07-22 21:31:39', 0, '2430C682-367A-A8EC-B9DA-3FFAA5D63C9A', '1-a6c46d9215f7b53f965f9dda0e3c2adf', 'Nestornicotra@gmail.com', '-34.1644911,-58.9681138', '2017-07-22 11:25:05', 'leonors03@yahoo.com.ar', 'Leonor', '', '40-59', 'R', 'R', 'Cambiemos', 'Inseguridad,Desempleo,Educación', 'Si'),
(44, '2017-07-22 14:31:39', '2017-07-22 21:31:39', 0, '246D73FC-8B98-AD88-B588-B44CCD9FA4BB', '1-3df5bc7950a04a0b4b665025a6bff16e', 'S.castro m.paz renibolodi eq 13', '-34.1786811,-58.9765376', '2017-07-22 12:02:56', '', 'Mario', '', '40-59', 'R', 'R', '', 'Inseguridad', 'Si'),
(45, '2017-07-22 14:31:40', '2017-07-22 21:31:40', 0, '25250877-D770-4502-8A31-44395BB9A666', '1-f2411fcc07fdf0043bbc5d934c4d3bb6', '24938503', '-34.1802379,-58.9736684', '2017-07-22 12:30:54', '', 'Patricio acosta', '423301', '+60', 'B', 'B', 'NS/NC', 'Tránsito/transporte', 'Si'),
(46, '2017-07-22 14:31:40', '2017-07-22 21:31:40', 0, '254D6876-62E4-CC8E-85A6-2E2A69223BDB', '1-b024fdbe20c9dbf807e280c7888b5e3f', 'Martin', '-34.180308,-58.9764123', '2017-07-22 11:48:22', '', 'Selva Suarez', '', '+60', 'B', 'B', 'FPV', 'Desempleo,Educación,Inseguridad', 'Si'),
(47, '2017-07-22 14:31:41', '2017-07-22 21:31:41', 0, '270BDBDD-2980-C955-B660-EEF42F686C8D', '1-f90f28ef7b258c6b4840edaf989ac313', 'Ludmila', '-34.163788,-58.9683377', '2017-07-22 11:02:20', '', 'Dilma Garcia', '424875', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(48, '2017-07-22 14:31:42', '2017-07-22 21:31:42', 0, '275B3E39-F66F-E505-8B7F-1FF27C74C92C', '1-6efc7e44a61dc7b384045b637b7d3001', 'Evelyn', '-34.204469337239,-58.935275571636', '2017-07-22 12:05:16', '', 'Gustavo cabezas', '444427', '40-59', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Inseguridad', 'Si'),
(49, '2017-07-22 14:31:42', '2017-07-22 21:31:42', 0, '28B96D89-B7C9-326D-88B0-747959EE268B', '1-8e4a94d88daa3e223df794f6ff515294', 'Nestornicotra@gmail.com', '-34.1647192,-58.9661204', '2017-07-22 10:52:36', '', '', '', '+60', 'M', 'M', 'NS/NC', '', 'No'),
(50, '2017-07-22 14:31:43', '2017-07-22 21:31:43', 0, '29F97987-6165-7765-9E62-6EA1CADE2D95', '1-3660c2bab9bc2b9724e3b526f2f846b4', 'Cristian', '-34.1791474,-58.9734892', '2017-07-22 11:50:59', '', 'Cristina Arias', '', '', 'B', '', '', 'Inseguridad', ''),
(51, '2017-07-22 14:31:43', '2017-07-22 21:31:43', 0, '2AF1BC1B-45CB-A966-85D4-E7603B749441', '1-18f11774c36a77d417f95c517f41297d', 'Lucía', '-34.1601452,-58.9629625', '2017-07-22 11:13:19', '', 'aurora rodriguez', '3489426533', '+60', 'R', 'R', 'NS/NC', 'Inseguridad,Educación,Tránsito/transporte', 'Si'),
(52, '2017-07-22 14:31:44', '2017-07-22 21:31:44', 0, '2B895CD3-49B4-3A03-B895-F2F0000199F9', '1-efdd28dd895b41513604546381406412', 'Jessica taubas', '-34.1802052,-58.9767819', '2017-07-22 11:29:37', '', 'Alexis dinter', '15686872', '26-39', 'B', 'B', 'NS/NC', 'Tránsito/transporte,Desempleo', 'Si'),
(53, '2017-07-22 14:31:44', '2017-07-22 21:31:44', 0, '2BF3242E-0713-DE0A-B9F1-1F70494D9D9E', '1-e453270d6fac0f0910ab019d9265e0b4', 'Marina', '', '2017-07-22 11:35:23', '', 'Luciano', '', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad', 'Si'),
(54, '2017-07-22 14:31:45', '2017-07-22 21:31:45', 0, '2C625442-34A0-43E2-BD03-8B20A8E877AB', '1-38d7563cbf12f053eb9e5df4a3c6441e', 'Cristian', '-34.179488,-58.9734613', '2017-07-22 11:43:17', '', 'Laprida 1371 - Flia. Barletta', '421783', '+60', 'B', 'B', '', 'Cloacas,Servicio de Absa', 'Si'),
(55, '2017-07-22 14:31:46', '2017-07-22 21:31:46', 0, '2DEDCB37-D7D8-FED5-AF44-2D9F20E0D313', '1-25e6587bd61a23af089466c49b2c5e5b', 'marioaita1974@gmail.com', '-34.206114215812,-58.938628016052', '2017-07-22 12:04:20', 'mabeldgondar@hotmail.com', 'Mabel gondar', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo', 'Si'),
(56, '2017-07-22 14:31:46', '2017-07-22 21:31:46', 0, '2F6FFC57-53F0-12B5-A0E0-10E9F6C27CC0', '1-e74dfcab9ea9fb064cff8a64a28d0b3e', 'Paula Bianchi Raquel Abdul', '-34.161923,-58.963668', '2017-07-22 11:33:09', '', 'Juan Martin Bianchi', '422998', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Contaminación', 'Si'),
(57, '2017-07-22 14:31:47', '2017-07-22 21:31:47', 0, '2FF32A4E-B04F-A771-B09B-9D14A6E3160F', '1-f7630e02cea85cc81c2240d60dfac068', 'Paula Bianchi Raquel Abdul', '-34.1612701,-58.9635448', '2017-07-22 11:49:40', '', 'Karina', '3489632759', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte,Salud', 'Si'),
(58, '2017-07-22 14:31:47', '2017-07-22 21:31:47', 0, '3081892C-705A-FBF5-84DD-5A3CE99AD626', '1-7054413bf6f3fb5b96a43839fe2670a0', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1626902,-58.9640599', '2017-07-22 11:54:11', 'guilles15@hotmail.com', 'Guillermo sparisci', '348915313021', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Salud', 'Si'),
(59, '2017-07-22 14:31:48', '2017-07-22 21:31:48', 0, '315E2BF7-D12E-0190-BC6D-4B28EED6863E', '1-b2977a46365c97706e7d13cdbb0dcfe0', 'Gaston Barrios', '-34.16328269,-58.96486403', '2017-07-22 11:38:10', '', 'Fabián peirano', '', '', 'B', 'B', 'Cambiemos', 'Luminarias,Mal estado del barrio,Servicio de Absa', 'Si'),
(60, '2017-07-22 14:31:48', '2017-07-22 21:31:48', 0, '31A7272F-CCD9-1396-8795-60A6BA92995B', '1-94bbb69d2e38d4409ee2088b1033e459', 'Gaston Barrios', '-34.1629463,-58.9639927', '2017-07-22 12:13:25', '', 'Carlos', '', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Luminarias', 'Si'),
(61, '2017-07-22 14:31:49', '2017-07-22 21:31:49', 0, '32A7B5A9-78C5-5735-AF0B-63EFD4F3C410', '1-62cb8bd99f4bb7465d96540b75a4b359', '24938503', '-34.1802521,-58.9735788', '2017-07-22 12:24:27', '', 'Teresita coseres', '468500', '26-39', 'B', 'B', 'NS/NC', 'Cloacas', 'Si'),
(62, '2017-07-22 14:31:50', '2017-07-22 21:31:50', 0, '345DBD4D-221C-2146-8A35-88D35DA500DE', '1-5a7bc523d25a7188a6e3dc452dc82816', 'Márgara Pons', '-34.1791369,-58.9758747', '2017-07-22 12:42:17', '', 'Jessica Guilanea', '528203', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(63, '2017-07-22 14:31:50', '2017-07-22 21:31:50', 0, '34F3FED5-7D63-FF5C-865F-2C2784E84C45', '1-44701745de9b3edd50f4e2b6746a4bbb', 'Jessica taubas', '-34.1805383,-58.9778682', '2017-07-22 12:19:11', '', 'Damian sanchez', '15528565', '40-59', 'B', 'B', 'NS/NC', 'Cloacas', 'Si'),
(64, '2017-07-22 14:31:51', '2017-07-22 21:31:51', 0, '3643E81B-BDEE-3D0D-AC8B-2242CB831B88', '1-72c7df82d980bfe08e3a37b48884ff76', 'Márgara Pons', '-34.17996,-58.97443', '2017-07-22 11:37:44', 'nando2010@hotmail.com', 'Fernando García', '341084', '16-25', 'B', 'R', '', 'Inseguridad,Desempleo,Educación', 'Si'),
(65, '2017-07-22 14:31:51', '2017-07-22 21:31:51', 0, '3652FF2D-4FC5-E2DD-A20D-311DEF38086A', '1-0df37b83bfc9dda2d36f8d842b818ff3', '24938503', '-34.1806618,-58.9735235', '2017-07-22 11:26:02', '', 'Ana molina', '15359827', '+60', 'B', 'B', 'Cambiemos', 'Cloacas,Desempleo,Salud', 'Si'),
(66, '2017-07-22 14:31:52', '2017-07-22 21:31:52', 0, '36BD2F9B-00D2-F2A5-8C83-F77651761CFF', '1-600a80104ba9879e91f91584501d1ff4', 'Maria emilia', '-34.1630296,-58.9630968', '2017-07-22 13:07:53', '', 'Nicolás Baselice', '425980', '+60', 'B', 'B', 'NS/NC', '', 'Si'),
(67, '2017-07-22 14:31:53', '2017-07-22 21:31:53', 0, '36F2C153-1D52-714B-AFFE-6B9C31287B38', '1-639028a7d9894d4f74f8eefb07945c26', 'Gustavo cabañas/23528843/gcabanas@mail.com', '-34.1628883,-58.9639255', '2017-07-22 11:33:34', '', 'Maria ines mondano', '3489428352', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Educación', 'Si'),
(68, '2017-07-22 14:31:53', '2017-07-22 21:31:53', 0, '377D473D-3EB3-95D1-B287-B0884C97B0DD', '1-ee06edb2a891636acc23c13de97e9b9b', 'Aquino Martín', '-34.1648486,-58.9662324', '2017-07-22 11:04:55', 'jlnech@gmail.com', 'Jorge donenech', '3489539859', '40-59', 'B', 'B', 'Cambiemos', 'Servicio de Absa,Tránsito/transporte', 'Si'),
(69, '2017-07-22 14:31:54', '2017-07-22 21:31:54', 0, '37A845E2-F8D9-38D3-BDB9-2F2ADE67305D', '1-8b7829477e38e20bda229d9ba7bd974c', 'Márgara Pons', '-34.1801544,-58.9756171', '2017-07-22 12:38:58', '', 'Ana Benedetti', '430932', '+60', 'B', 'B', 'FPV', 'Inseguridad,Contaminación', 'Si'),
(70, '2017-07-22 14:31:54', '2017-07-22 21:31:54', 0, '3D55BFD3-5940-A0D8-BD1B-FF0E17DF212D', '1-0a317400c03a889b3e95a05f4950a816', 'Martin', '-34.1805649,-58.9765698', '2017-07-22 11:34:06', '', 'Miguel', '', '40-59', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo,Falta de vivienda', 'No'),
(71, '2017-07-22 14:31:55', '2017-07-22 21:31:55', 0, '3DFFAC17-3921-E71B-89DD-F7DFBE4C3060', '1-a8b64c88a3ab23b5e2c20915a49057e0', 'Jessica taubas', '-34.1804748,-58.9777114', '2017-07-22 12:25:44', '', 'Zulema silva', '15533607', '40-59', 'B', 'B', 'Cambiemos', 'Falta de vivienda,Tránsito/transporte,Cloacas', 'Si'),
(72, '2017-07-22 14:31:55', '2017-07-22 21:31:55', 0, '3E3BD424-610E-678B-ACD5-410E535D3F29', '1-43c010b02b94a8bf2f8c148c84f7ec5e', 'Gaston Barrios', '-34.16389067,-58.96319108', '2017-07-22 11:05:29', '', 'Eduardo', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Educación,Luminarias', 'Si'),
(73, '2017-07-22 14:31:56', '2017-07-22 21:31:56', 0, '3F0492BC-EB5B-2822-BB0B-216057622955', '1-471aad1b30346f18adabbb6d50b89d0a', 'Cristian', '-34.1781331,-58.9740044', '2017-07-22 11:21:41', '', 'Dorrego 1216 - No salió nadie', '', '', '', '', '', '', ''),
(74, '2017-07-22 14:31:57', '2017-07-22 21:31:57', 0, '3F6AE1DA-BEF9-95FD-B65E-4805607B9B03', '1-af16439044a46ce639e22c2c16be7367', 'Cristian', '-34.1789894,-58.9740828', '2017-07-22 11:23:08', '', 'Dorrego 1224 - No salió Nadie', '', '', '', '', '', '', ''),
(75, '2017-07-22 14:31:57', '2017-07-22 21:31:57', 0, '40F83A23-14EA-0D3D-80B8-613FDA6CA351', '1-25073fcad2444b2f3d067321069d1745', 'Cristian', '-34.1782852,-58.9738812', '2017-07-22 11:15:24', '', 'Del Pino 1384 - No salio nadie', '', '', '', '', '', '', ''),
(76, '2017-07-22 14:31:58', '2017-07-22 21:31:58', 0, '412FCF1B-8F4B-670C-A51D-FFAAFA164D29', '1-9d65ad33ce3026761a3392656f552c47', 'Jessica taubas', '-34.1802314,-58.977297', '2017-07-22 12:29:30', '', 'Federico godoy', '15322804', '16-25', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(77, '2017-07-22 14:31:58', '2017-07-22 21:31:58', 0, '41A1D114-955A-A5E7-BD8B-A57320482246', '1-d1b4048a25aaed3243ff00f00a2efcbb', 's.castro / m.paz Reniboldi eq 13', '-34.1777668,-58.9762604', '2017-07-22 11:11:18', '', 'Hugo Honorio', '', '+60', 'B', 'B', '', 'Inseguridad', 'Si'),
(78, '2017-07-22 14:31:59', '2017-07-22 21:31:59', 0, '42FBB6D2-E79C-9AB1-8185-AE6F0E9EF4C8', '1-e6d3445d1b89c80d162ce7918b5a5609', 'Gaston Barrios', '-34.1638945,-58.964575', '2017-07-22 11:27:17', '', 'Natalia y Carlos garcia', '', '+60', 'B', 'B', 'Cambiemos', 'Luminarias,Inseguridad,Desempleo', 'Si'),
(79, '2017-07-22 14:31:59', '2017-07-22 21:31:59', 0, '43386B7B-A20E-5807-951E-658076794236', '1-7f2827f4517991b3b977e3e8d682e9be', 'Márgara Pons', '-34.1807175,-58.9755947', '2017-07-22 12:11:38', '', 'Nancy Graciela López', '565715', '40-59', 'M', '', 'NS/NC', 'Contaminación,Mal estado del barrio', 'Si'),
(80, '2017-07-22 14:32:00', '2017-07-22 21:32:00', 0, '4498E86B-A760-7457-9D73-340BE9AE9352', '1-00d872ddea8a71703c3f495c98b506d4', 'Marina', '', '2017-07-22 11:06:54', '', 'Rodrigo Muñoz', '468794', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(81, '2017-07-22 14:32:01', '2017-07-22 21:32:01', 0, '45339428-A5ED-DD99-AFE2-514DBF14F62D', '1-1ae51de8cffbd0c6b85e716ad54620d4', 'Renato', '-34.2074557,-58.9410384', '2017-07-22 11:16:47', '', 'Ernesto santoro', '449249', '+60', 'R', 'R', 'Otro', 'Inseguridad,Luminarias', 'No'),
(82, '2017-07-22 14:32:01', '2017-07-22 21:32:01', 0, '4595DCEC-4249-B4F4-A95F-208990CB5A23', '1-968a77cc582cbe922fb451709149a3ae', 'Martin', '-34.1805587,-58.9757291', '2017-07-22 11:12:49', '', 'Maria', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Contaminación,Falta de vivienda', 'Si'),
(83, '2017-07-22 14:32:02', '2017-07-22 21:32:02', 0, '4614CFBC-0F7F-B5E2-A681-66A9FD4DE7B2', '1-aeb0d97f448ba138ff64b2625d689207', 'Márgara Pons', '-34.1806891,-58.9752475', '2017-07-22 12:07:03', '', 'Liliana Toloza', '664276', '40-59', 'B', 'B', '', 'Inseguridad,Contaminación', 'Si'),
(84, '2017-07-22 14:32:02', '2017-07-22 21:32:02', 0, '4688718F-0C00-6C02-A656-6FA1A818779A', '1-03473b131e6615f1f713c4f8c5323f58', 'Cristian', '-34.1791808,-58.9734333', '2017-07-22 11:53:28', '', 'Sandra Gonzalez / Recolección Residios', '3489362662', '', 'B', 'B', '', '', ''),
(85, '2017-07-22 14:32:03', '2017-07-22 21:32:03', 0, '4B005E17-4364-E106-8A8E-3270891D95D1', '1-a834ff4779ca4ad46ee4907dd3e601a6', 'Renato', '-34.2067362,-58.940501', '2017-07-22 11:32:06', '', 'Eduardo fossatti', '588256', '40-59', 'B', 'B', 'Otro', '', 'Si'),
(86, '2017-07-22 14:32:03', '2017-07-22 21:32:03', 0, '4E2CFFC1-E19B-0E21-A2F3-F459D587145C', '1-0159d2ea519519679b31634f030eb391', 'Márgara Pons', '-34.1814629,-58.9740828', '2017-07-22 12:29:24', '', 'Felix Cardoso', '628876', '+60', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(87, '2017-07-22 14:32:04', '2017-07-22 21:32:04', 0, '4EDFC2E6-C869-B93A-AE63-BEF55591F647', '1-b999d396da9dabd41f0b284403b1bc06', 'Paula Bianchi Raquel Abdul', '-34.1612034,-58.9626041', '2017-07-22 10:58:54', '', 'Cataldo nicolas', '', '26-39', 'M', 'M', 'NS/NC', 'Salud', 'No'),
(88, '2017-07-22 14:32:05', '2017-07-22 21:32:05', 0, '4F07510A-AEBB-6C4E-89FA-6BBCEAD679D3', '1-d430a333fa76ae57bd1cbadbf719c970', 'Aquino Martín', '-34.1654987,-58.9655381', '2017-07-22 11:34:21', '', 'Miguel', '', '+60', 'B', 'B', '', 'Inseguridad,Tránsito/transporte', 'Si'),
(89, '2017-07-22 14:32:05', '2017-07-22 21:32:05', 0, '4F1AEBD1-348D-77C7-B54E-D76ED2A564BE', '1-38142712628e18bdd04fd23f976a0cb6', 'Alejandra', '-34.1635905,-58.9679122', '2017-07-22 11:53:19', '', 'Edit bonini de Robalo', '424998', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Tránsito/transporte', 'Si'),
(90, '2017-07-22 14:32:06', '2017-07-22 21:32:06', 0, '4F92F9C8-6FA0-431F-9D15-8CB63391358C', '1-fc141657c51c0c1bd0de37d7cab58d70', 'Cristian', '-34.1781511,-58.9741388', '2017-07-22 11:22:16', '', 'Dorrego 1220 - No salio Nadie', '', '', '', '', '', '', ''),
(91, '2017-07-22 14:32:06', '2017-07-22 21:32:06', 0, '5200AD78-7A62-08F8-8A96-53E7896ECB5A', '1-d2fd32a5d45e941cd4cc0b644d4b58ed', 'marioaita1974@gmail.com', '-34.206003243392,-58.937386342997', '2017-07-22 11:32:43', '', 'Eva', '37286066', '26-39', 'B', 'B', 'NS/NC', 'Cloacas,Tránsito/transporte', 'Si'),
(92, '2017-07-22 14:32:07', '2017-07-22 21:32:07', 0, '52AB4424-9F00-13E9-955C-EBC8A935C633', '1-a0e2d010309ab7950c3cdca3abc30540', 'Martin', '-34.1792702,-58.9756843', '2017-07-22 12:14:30', '', 'Selene', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Educación', 'Si'),
(93, '2017-07-22 14:32:07', '2017-07-22 21:32:07', 0, '532640A6-ADD1-E216-A01A-5A216547A273', '1-c331a6291934d6fef322b72735e8efa5', 'Aquino Martín', '-34.1650974,-58.9651909', '2017-07-22 11:55:04', '', 'Roberto Tenenbaun', '', '+60', 'B', 'R', 'NS/NC', 'Tránsito/transporte,Inseguridad,Servicio de Absa', 'Si'),
(94, '2017-07-22 14:32:08', '2017-07-22 21:32:08', 0, '53D00534-64DC-97BC-B082-2ECA754D3FA2', '1-f470c7fd4c08c6d07d475ff6fd76ce42', 'Márgara Pons', '-34.1801036,-58.9749787', '2017-07-22 11:51:43', '', 'Cristian Camejo', '515898', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(95, '2017-07-22 14:32:08', '2017-07-22 21:32:08', 0, '54A118C0-F356-734F-AC0B-D77752989B5F', '1-df9000f79763afd260d189e055aa97f4', 'Paula Bianchi Raquel Abdul', '-34.1610351,-58.9645302', '2017-07-22 12:02:29', '', 'Juan Carlos', '3489523324', '40-59', 'R', 'R', 'NS/NC', 'Servicio de Absa,Inseguridad', 'Si'),
(96, '2017-07-22 14:32:09', '2017-07-22 21:32:09', 0, '554658E1-5CBA-38FC-B281-9167279D203F', '1-65f07a5d4a06ea38c08a20221134c4ec', 'marioaita1974@gmail.com', '-34.206028856353,-58.939039215457', '2017-07-22 12:10:25', 'delfrancovaleria@hotmail.com', 'Valeria del franco', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte', 'Si'),
(97, '2017-07-22 14:32:10', '2017-07-22 21:32:10', 0, '5661FFBF-1958-8FBE-A9C1-78FCA1514914', '1-913d53b899f4b1814425d0b9f8f5649a', 'Maria emilia', '-34.1630416,-58.9637016', '2017-07-22 13:06:53', '', 'Jorge Domenech', '15539859', '+60', 'B', 'B', 'Cambiemos', '', 'Si'),
(98, '2017-07-22 14:32:10', '2017-07-22 21:32:10', 0, '582609C3-B463-DA6A-9DB9-FA496CDD5E94', '1-c5d70aace37f93ad0afd6a0c4d443b52', 'Nancy', '-34.1603903,-58.9658404', '2017-07-22 11:40:44', '', 'Tuma', '', '+60', 'B', 'B', '', '', 'Si'),
(99, '2017-07-22 14:32:11', '2017-07-22 21:32:11', 0, '585023A1-A1DD-0875-A395-612767D579A8', '1-f26ca5da14df5808d188926dad46c008', 'Renato', '-34.2062823,-58.9401763', '2017-07-22 11:39:12', '', 'Alberto Riva', '442019', '+60', 'R', 'R', 'NS/NC', 'Inseguridad', 'Si'),
(100, '2017-07-22 14:32:11', '2017-07-22 21:32:11', 0, '58A61C03-8427-3703-AD77-2ABA688E1386', '1-2eeab8a2e90d2fb2fae4384cce743f40', 'Marina', '', '2017-07-22 13:04:23', 'marinesguspero@hotmail.com', 'Maria Ines', '', '40-59', 'R', 'R', 'Cambiemos', 'Inseguridad,Contaminación', 'Si'),
(101, '2017-07-22 14:32:12', '2017-07-22 21:54:49', 0, '58F88930-4DE2-159B-A7C0-A6FFEFE9EB56', '1-423b793d988df5befe59475c2444b9b2', 'Marcos Bongiovanni 23362880 marcosbongiovanni@live.com', '-34.1777668,-58.9762604', '0000-00-00 00:00:00', '', 'Laviña Ana Maria', '', '+50', 'B', 'B', 'NS/NC', 'Educacion', ''),
(102, '2017-07-22 14:32:13', '2017-07-22 21:32:13', 0, '5904EB50-975A-FF7E-ADB6-A0DB77971459', '1-6ab8513b4ed75fde9e4e986b2da04251', 'Gustavo cabañas/23528843/gcabanas@mail.com', '-34.1628737,-58.9635224', '2017-07-22 11:07:31', 'maru_2268gere@hotmail.com', 'Maria eugenia damiolini', '348915654132', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda,Mal estado del barrio', 'Si'),
(103, '2017-07-22 14:32:13', '2017-07-22 21:32:13', 0, '597B744E-7AC1-9225-8148-54A527D002D5', '1-570d27e5270adb0f7dc0982fac3b3c9a', 'Jessica taubas', '-34.1808119,-58.9774755', '2017-07-22 11:49:25', '', 'Alfredo molina', '15622520', '+60', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Educación', 'Si'),
(104, '2017-07-22 14:32:14', '2017-07-22 21:32:14', 0, '5AFC9759-9865-4FBF-943E-2027D395A860', '1-13b87ea25eee6bc726ad53a5cc5cc683', 'S.castro m.paz renibolodi eq 13', '-34.1786811,-58.9765376', '2017-07-22 12:12:48', '', 'Maria Ines', '', '+60', 'B', 'B', '', '', 'Si'),
(105, '2017-07-22 14:32:14', '2017-07-22 21:32:14', 0, '5C62E82B-FDA9-9784-9C54-B7C619AE1D34', '1-c6cd828e306f776ca9e3579f506e3d3c', 'Paula Bianchi Raquel Abdul', '-34.1619459,-58.9639255', '2017-07-22 11:26:28', '', 'Francisco Petraglia', '420422', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(106, '2017-07-22 14:32:15', '2017-07-22 21:32:15', 0, '5E7AB678-D2C9-8A47-B328-24D354A35EBB', '1-bab0242dbe8a637841caec02192ebbd5', 'Cristian', '-34.1786407,-58.9737132', '2017-07-22 11:02:01', '', 'Del pino 1362 No salio Nadie', '', '', '', '', '', '', ''),
(107, '2017-07-22 14:32:15', '2017-07-22 21:32:15', 0, '5EF69AC8-7AE7-4C83-A5BE-D4C67ACD69B7', '1-ff649d37ff7468d5530670168e783c1b', 'Cristian', '-34.1786407,-58.9737132', '2017-07-22 11:00:58', '', 'Marcelo Lemes', '619143', '26-39', 'B', '', '', 'Tránsito/transporte', 'Si'),
(108, '2017-07-22 14:32:16', '2017-07-22 21:32:16', 0, '5F848D4D-4C70-E4AB-AE71-9E2E2C124125', '1-d2c72d122f2e2246e70eff3337408181', 'Paula Bianchi Raquel Abdul', '-34.1616289,-58.9636344', '2017-07-22 11:24:39', '', '', '', '', '', '', 'Izquierda', '', ''),
(109, '2017-07-22 14:32:17', '2017-07-22 21:32:17', 0, '602FDC3E-1606-B0F4-8606-8E9D8C2B6ADA', '1-0cdc93847a2b376895116441dc2fa3b1', 'Martin', '-34.1810353,-58.9758187', '2017-07-22 11:21:27', '', 'Osvaldo', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda,Mal estado del barrio', 'Si'),
(110, '2017-07-22 14:32:17', '2017-07-22 21:32:17', 0, '608A1EA5-22A4-CB6D-AD42-EE9CB8FE945D', '1-354c14bea4cbb96b4ef9889bfa3e8248', 'Adriel Giannoni', '-34.1786702,-58.9765579', '2017-07-22 11:12:13', '', 'Beatriz adamo', '', '40-59', 'R', 'R', 'FPV', 'Mal estado del barrio,Cloacas', 'Si'),
(111, '2017-07-22 14:32:18', '2017-07-22 21:32:18', 0, '6214169A-C976-F40C-B935-A6FF396E6728', '1-995be29388240c67a72bca8d7f894c3a', '24938503', '-34.1802169,-58.9742956', '2017-07-22 12:39:22', '', 'Flavia rios', '', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(112, '2017-07-22 14:32:18', '2017-07-22 21:32:18', 0, '62C41C10-ED89-48BA-B135-B57182486A49', '1-e7d4471b45e03c88a9dce2e61f26586e', 'Nestornicotra@gmail.com', '-34.1641164,-58.9682481', '2017-07-22 11:43:03', '', '', '', '26-39', 'R', 'R', 'Cambiemos', 'Servicio de Absa,Inseguridad,Desempleo', 'Si'),
(113, '2017-07-22 14:32:19', '2017-07-22 21:55:37', 0, '631BD542-DF3E-E655-ACAC-72A564841A4F', '1-d64a2ceb76c45bba14ee88746cbdc62c', 'Nerio Nogueira', '-34.1609418,-58.9651797', '0000-00-00 00:00:00', '', 'Mario Balossino', '', '+50', 'B', 'B', 'Cambiemos', 'Desempleo', ''),
(114, '2017-07-22 14:32:19', '2017-07-22 21:55:18', 0, '63499360-7323-E6C4-8BD6-A74EEC09121A', '1-60b0d53b5c4afb0a7ce8d8cbd24b96cb', 'Marcos Bongiovanni 23362880 marcosbongiovanni@live.com', '-34.1772739,-58.9762331', '0000-00-00 00:00:00', '', 'Esteban', '', '31-49', 'R', 'R', 'Union Ciudadana', 'Corrupcion', ''),
(115, '2017-07-22 14:32:20', '2017-07-22 21:32:20', 0, '6404A7D3-56C6-8C05-B5CB-716D28E6FA33', '1-4be575b34f65470a1c04c8629227fb91', 'Marina', '', '2017-07-22 11:53:47', 'titidicicco@hotmail.com', 'Concepción Di Cicco', '', '+60', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Inseguridad,Educación', 'Si'),
(116, '2017-07-22 14:32:21', '2017-07-22 21:32:21', 0, '64871A2A-DADE-406A-B2D2-2EDF72B95A45', '1-786b5efdaf893a49adfd941a5a3f019f', '24938503', '-34.1811748,-58.9735788', '2017-07-22 11:41:07', '', 'Julio davinco', '', '40-59', 'M', 'B', 'Otro', 'Luminarias,Servicio de Absa,Tránsito/transporte', 'Si'),
(117, '2017-07-22 14:32:21', '2017-07-22 21:32:21', 0, '64DF309C-91B6-6467-8CBE-5765E17934F0', '1-a23efb8dad4cc71567e8c47f3eacf752', 'Jessica taubas', '-34.1806608,-58.9778225', '2017-07-22 12:04:43', '', 'Noemi hoyos', '348154336747', '26-39', 'B', '', 'NS/NC', 'Cloacas,Mal estado del barrio', 'Si'),
(118, '2017-07-22 14:32:22', '2017-07-22 21:32:22', 0, '6613732F-0C66-D175-88A9-51C655D07FA0', '1-04fb02e1f612502b6bd515cee956cc06', 'Ludmila', '-34.1643047,-58.9683601', '2017-07-22 11:28:32', '', 'Miriam Sauer', '432788', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias', 'Si'),
(119, '2017-07-22 14:32:22', '2017-07-22 21:32:22', 0, '6644C5AE-D85F-C8C2-A253-54329E87C1F3', '1-d328e3542db979c517347ae929eddde3', 'Jessica taubas', '-34.1808215,-58.9777226', '2017-07-22 12:12:03', '', '', '', '+60', 'B', '', 'NS/NC', 'Cloacas', 'Si'),
(120, '2017-07-22 14:32:23', '2017-07-22 21:32:23', 0, '66E28890-A856-AF3D-951D-0DC5E8223A39', '1-7785a5e1b3a9b09c17080a7895bbcfcd', 'Maria Emilia', '-34.1622963,-58.9535528', '2017-07-22 09:36:35', 'memibarreiro@live.com.ar', 'Maria Emilia', '15567671', '26-39', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(121, '2017-07-22 14:32:23', '2017-07-22 21:32:23', 0, '677FC6E8-E45D-F99C-9246-41D27602BDCD', '1-2824ad927fc86784eb8116382110d1e4', 'Nancy', '-34.1604317,-58.9656725', '2017-07-22 11:38:33', '', 'Hilda', '', '40-59', 'R', '', '', 'Inseguridad', 'No'),
(122, '2017-07-22 14:32:24', '2017-07-22 21:32:24', 0, '68CBD312-29A7-8508-A74B-16D0280331B6', '1-95ecf79656a5eebde2808266ad0cb2c4', 'Gaston Barrios', '-34.1631325,-58.964799', '2017-07-22 11:45:09', '', 'Soledad', '', '26-39', 'B', 'B', 'NS/NC', 'Desempleo,Cloacas,Inseguridad', 'No'),
(123, '2017-07-22 14:32:25', '2017-07-22 21:32:25', 0, '6A152F3B-54E9-9205-BB18-345C7E56D532', '1-1f7e5f79abd65d9ba2ba5d87dd825696', 's.castro / m.paz Reniboldi eq 13', '-34.177755,-58.9764795', '2017-07-22 11:15:06', '', 'Mario Alegre', '', '+60', 'B', 'B', '', '', ''),
(124, '2017-07-22 14:32:25', '2017-07-22 21:57:00', 0, '6A31E689-EA8A-F555-975E-30B76CA7EF0C', '1-edc1e885f6bfdf8ee0c7bf745b245992', 'Nerio Nogueira', '-34.1612021,-58.9647766', '0000-00-00 00:00:00', '', 'Alicia Dalfonso', '', '+50', 'B', 'B', 'Cambiemos', '', ''),
(125, '2017-07-22 14:32:26', '2017-07-22 21:32:26', 0, '6A893FFA-2646-4CA7-AEA5-E299B2197669', '1-3cdff7e607462566aae35f3a79f00226', 'Marina', '', '2017-07-22 11:13:40', 'peir_2709@hotmail.com', 'Laura', '', '26-39', 'R', 'R', 'NS/NC', 'Inseguridad,Educación,Falta de vivienda', 'Si'),
(126, '2017-07-22 14:32:26', '2017-07-22 21:56:43', 0, '6BD49B0F-A7F1-B91E-A966-78314AF73698', '1-d67803acbdb8c9a52cf38cd3a0e091cf', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1777022,-58.9754827', '0000-00-00 00:00:00', '', 'Osvaldo', '', '+50', 'B', 'B', 'Cambiemos', '', ''),
(127, '2017-07-22 14:32:27', '2017-07-22 21:32:27', 0, '6D8EF357-0FFB-6B1D-89E1-D6AFBDD6FFDD', '1-b31a1f03d821ec2f0a0512c254401d31', 'marioaita1974@gmail.com', '-34.205566923688,-58.938768493752', '2017-07-22 12:15:13', '', 'Roman degan', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(128, '2017-07-22 14:32:27', '2017-07-22 21:32:27', 0, '6DDE3D04-6450-9206-A717-519BEB83D53A', '1-ea073bfa56453f98cedc79cfc6ac3f30', 'Nancy', '-34.1605889,-58.9646198', '2017-07-22 11:56:11', '', 'Jorgelina', '', '26-39', 'M', 'R', 'NS/NC', 'Inseguridad', ''),
(129, '2017-07-22 14:32:28', '2017-07-22 21:32:28', 0, '6EBA087B-AB4F-8624-BA99-E0262B254AA5', '1-6eddf16e0eb6ff310c0c4d37c0d7dcd3', 'Aquino Martín', '-34.1656049,-58.9654261', '2017-07-22 11:39:55', 'florenciamedinald@gmail.com', 'Medina Florencia', '3489424016', '26-39', 'R', 'R', 'Otro', 'Inseguridad,Desempleo', 'No'),
(130, '2017-07-22 14:32:29', '2017-07-22 21:32:29', 0, '6EC0747A-BF68-7298-B5CD-C18292E281FE', '1-c83155e28cf58b3237d89bddc43a9e9c', 'Nestornicotra@gmail.com', '-34.1638411,-58.96621', '2017-07-22 12:05:51', '', '', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(131, '2017-07-22 14:32:29', '2017-07-22 21:32:29', 0, '7005F25C-1A8E-E116-992A-239BC62CD4FF', '1-77c7c98b2dafe7e19440f537001d349a', 'Maria emilia', '-34.1629509,-58.9641495', '2017-07-22 13:05:37', '', 'Agustina Tapia', '15510742', '26-39', 'M', 'M', 'Otro', '', 'No'),
(132, '2017-07-22 14:32:30', '2017-07-22 21:57:17', 0, '708E5D2B-6734-1306-A39A-ACFD355FEE5C', '1-b976732756efad5f4afe8e98b1fe8cb3', 'Nerio Nogueira', '-34.1616996,-58.9652917', '0000-00-00 00:00:00', '', 'Lorena Balzano', '', '31-49', 'M', 'B', 'NS/NC', 'Educacion', ''),
(133, '2017-07-22 14:32:30', '2017-07-22 21:57:27', 0, '70AE951F-64A4-D64F-BBDC-DEA39F5D6DA4', '1-9d0eaa8b9a0ec91f134c66a76aece6ee', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.178428,-58.9760427', '0000-00-00 00:00:00', '', 'Fernando', '', '31-49', 'B', 'B', 'Cambiemos', '', ''),
(134, '2017-07-22 14:32:31', '2017-07-22 21:32:31', 0, '70B3FD80-FEBB-D01F-A686-751341F1DA84', '1-649de6f7ea658de76a830f3db3005702', 'Paula Bianchi Raquel Abdul', '-34.1612325,-58.9634104', '2017-07-22 11:17:07', 'betinapadovani@gmail.com', 'Betina Padovani', '3489630293', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Contaminación,Tránsito/transporte', 'Si'),
(135, '2017-07-22 14:32:31', '2017-07-22 21:32:31', 0, '72BB421F-E942-5A13-AFB7-B438DA45DEB9', '1-50ca74d02a4a5aadff861908162c0f6e', 'Martin', '-34.1801928,-58.9756843', '2017-07-22 12:03:22', '', 'Juan Antonio', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda,Educación', 'Si'),
(136, '2017-07-22 14:32:32', '2017-07-22 21:32:32', 0, '732E2D54-6320-64FF-96FF-54C46F67C808', '1-213fabe730f48f75d1f13213d7e518fd', 'Cristian', '-34.179149,-58.9738812', '2017-07-22 11:25:13', '', 'Dorrego 1230 - Ivan Martinez', '', '16-25', 'B', '', '', 'Cloacas', 'Si'),
(137, '2017-07-22 14:32:33', '2017-07-22 21:32:33', 0, '747E369D-0B4C-8978-84D6-6D26197A21DC', '1-837d04d46e0c7cfa9d0c4ff2fce4c929', 'Gaston Barrios', '-34.16389157,-58.96421479', '2017-07-22 11:15:30', '', 'Maida', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias,Tránsito/transporte', 'Si'),
(138, '2017-07-22 14:32:33', '2017-07-22 21:32:33', 0, '75E0312C-5700-2232-B29F-F88CFCB4098F', '1-b6e2cea5909cb4f30f93fd61fed7e42c', 'Jessica taubas', '-34.1830505,-59.0069711', '2017-07-22 11:36:57', '', 'Claudia Lezcano', '15537437', '40-59', 'B', 'R', 'NS/NC', 'Inseguridad,Cloacas', 'Si'),
(139, '2017-07-22 14:32:34', '2017-07-22 21:32:34', 0, '76C9FFB9-78B9-F75D-8D06-D91F33355630', '1-84bf5eb8cf1cee25ec1caca8399f3cca', 'Lucía', '-34.1610418,-58.9624474', '2017-07-22 10:49:16', '', 'Mariela Benitez', '', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Desempleo,Educación', 'No'),
(140, '2017-07-22 14:32:34', '2017-07-22 21:32:34', 0, '785AE677-2D30-FB10-A92D-9658991C2296', '1-b1d71797a8214b650b11c916ae798b35', 'Martin', '-34.1800333,-58.9758859', '2017-07-22 12:09:31', '', 'Florencia', '', '40-59', 'B', 'B', 'NS/NC', 'Salud,Tránsito/transporte,Educación', 'Si'),
(141, '2017-07-22 14:32:35', '2017-07-22 21:32:35', 0, '796FDF4B-B7AF-126C-8C7D-D9CEA9BC2590', '1-869931811ebbbe1c123297eec578aa10', 'Cristian', '-34.1793895,-58.9740044', '2017-07-22 11:34:23', '', 'Laprida 1389 - No salio Nadie', '', '', '', '', '', '', ''),
(142, '2017-07-22 14:32:35', '2017-07-22 21:32:35', 0, '7A727F86-BAE3-8462-8721-F1E0C2435341', '1-d64d189be70b20ae4bf6554f15fb0cfd', 'Nancy', '-34.1594609,-58.9632536', '2017-07-22 09:05:12', '', 'Barbero María del Carmen', '15529445', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad', 'Si'),
(143, '2017-07-22 14:32:36', '2017-07-22 21:32:36', 0, '7B63A91B-2CCD-1A0B-894E-DFA62D7BE2F0', '1-0192cb0ab0a815c3cddeb19680c98181', 'Ludmila', '-34.1645209,-58.9693792', '2017-07-22 11:47:44', '', 'Graciela Michlig', '428290', '+60', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(144, '2017-07-22 14:32:37', '2017-07-22 21:32:37', 0, '7C6E2810-1CDC-22C0-89F6-5EE8716BC2E3', '1-a7d8e27406507562b10118d62b074c8a', 's.castro / m.paz Reniboldi eq 13', '-34.1786811,-58.9765376', '2017-07-22 11:48:13', '', 'Claudio', '540479', '40-59', 'B', 'B', '', '', 'Si'),
(145, '2017-07-22 14:32:37', '2017-07-22 21:57:55', 0, '7C84C7DB-135D-125E-AD5D-20D93B335949', '1-a27d5675b3c2dadd7a91e7ba5794a92f', 'Nerio Nogueira', '-34.1608804,-58.9669267', '0000-00-00 00:00:00', '', 'Agustín Basaldua', '', '18-30', 'B', 'B', 'Cambiemos', 'Inseguridad', ''),
(146, '2017-07-22 14:32:38', '2017-07-22 21:58:04', 0, '7C92A2D0-B964-DA1E-9B3B-E70025C41D52', '1-f62c6261096481fe85f86d29fb6168ab', 'Marcos Bongiovanni 23362880 marcosbongiovanni@live.com', '-34.177319,-58.9762891', '0000-00-00 00:00:00', '', 'Cristina', '684705', '+50', 'B', 'B', 'Cambiemos', '', ''),
(147, '2017-07-22 14:32:38', '2017-07-22 21:32:38', 0, '7C9DAE4F-30D0-280C-BA76-9505C637D13F', '1-8e608f7785ab514d317d3775d57fff8b', 'Cristian', '-34.1788287,-58.9733325', '2017-07-22 11:49:38', '', 'Hector Leme Sta. MARIA oro 354', '', '', 'B', '', '', 'Inseguridad,Tránsito/transporte', 'Si'),
(148, '2017-07-22 14:32:39', '2017-07-22 21:32:39', 0, '7CC2AAC2-EDF1-E652-A8F1-A376AE5C6E73', '1-3ad7e88adae63ef57189bcf3162314e9', 'Nestornicotra@gmail.com', '-34.1636101,-58.9679122', '2017-07-22 11:55:30', '', '', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Servicio de Absa', 'Si'),
(149, '2017-07-22 14:32:40', '2017-07-22 21:32:40', 0, '7D11157E-FBEB-1A1E-84B0-A13ADB4940BE', '1-6d5cf1f0e83a97b02d9c6892798e478c', 'Nestornicotra@gmail.com', '-34.1674482,-58.965594', '2017-07-22 11:22:04', '', 'Dora', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Educación', 'Si'),
(150, '2017-07-22 14:32:40', '2017-07-22 21:32:40', 0, '7E04D100-2C7C-AF92-B70A-ED91D92F9880', '1-aecb40a2ba54ad91096c62d659a73077', 'Ludmila', '-34.1645614,-58.9692784', '2017-07-22 11:38:17', '', 'María Benítez', '422995', '+60', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(151, '2017-07-22 14:32:41', '2017-07-22 21:32:41', 0, '7E4E73CB-A56D-A4A8-BCFF-8952235A7E85', '1-77ccf9596342a2f10f3a48ecd5a76545', 'Nancy', '-34.1605837,-58.9634776', '2017-07-22 08:18:14', 'sunicadadei@yahoo.com', 'Zumilda CasadCasadei', '4205998', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Tránsito/transporte', 'Si'),
(152, '2017-07-22 14:32:41', '2017-07-22 21:32:41', 0, '7E7F3D86-720A-1D3B-BA5D-A185991F4E7B', '1-8cdd9dd29019052382195d51d6d290ae', '24938503', '-34.1806618,-58.9735235', '2017-07-22 11:14:44', '', 'Rodillo sosa', '', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(153, '2017-07-22 14:32:42', '2017-07-22 21:32:42', 0, '7ED00435-B647-E807-B732-0B6D22984019', '1-080688d02d7cdb8abb60d7dbef40ff5c', 'marioaita1974@gmail.com', '-34.206131834868,-58.93950756143', '2017-07-22 12:28:47', '', 'Ricardo piñyero', '', '+60', 'R', 'R', 'NS/NC', 'Inseguridad,Mal estado del barrio,Luminarias', 'Si'),
(154, '2017-07-22 14:32:42', '2017-07-22 21:32:42', 0, '7F52E145-7308-1597-A653-422682F0B6FA', '1-23512cd3f31c5629dd48c3b134242db6', 'Maria emilia', '-34.1631797,-58.9626153', '2017-07-22 13:08:57', '', 'Marisa Fracinelli', '420368', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(155, '2017-07-22 14:32:43', '2017-07-22 21:32:43', 0, '804F0C3E-EB4B-0C12-BBBC-3AAC19486E1E', '1-3d62aa746adc150111317911a397f47b', 'Marina', '', '2017-07-22 12:52:40', '', 'Joana', '', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(156, '2017-07-22 14:32:44', '2017-07-22 21:32:44', 0, '842493C6-BEE4-9540-9053-E0007819C5C8', '1-28f8aad43b071e821b062071ad77b2fc', 'Ludmila', '-34.1640478,-58.9684945', '2017-07-22 11:19:33', '', 'Marisa de Virgilio', '15547742', '+60', 'R', 'R', 'FPV', 'Inseguridad,Luminarias,Desempleo', 'No'),
(157, '2017-07-22 14:32:44', '2017-07-22 21:58:28', 0, '84AEA2BB-3B0A-DDF6-863E-E02134D9EE82', '1-76603646b3f79f7ad7b9c4b00e2b5699', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1781905,-58.9756843', '0000-00-00 00:00:00', '', 'Jorge', '', '31-49', 'B', 'B', 'Cambiemos', 'Corrupcion', ''),
(158, '2017-07-22 14:32:45', '2017-07-22 21:32:45', 0, '86AA6211-4262-7944-AE54-9EB000A256FB', '1-5df43ec52b3e78f7b3a973a3f8087f5b', '24938503', '-34.1809052,-58.9747212', '2017-07-22 12:08:28', '', 'Estela alegre', '430835', '40-59', 'B', 'B', 'NS/NC', 'Desempleo,Contaminación', 'Si'),
(159, '2017-07-22 14:32:45', '2017-07-22 21:32:45', 0, '88094D80-0C01-EC83-A57B-A422BADCD0BE', '1-95e1c693da64f11c3f069b819519c5e8', 'Marina', '', '2017-07-22 12:34:15', '', 'Graciela', '', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si'),
(160, '2017-07-22 14:32:46', '2017-07-22 21:32:46', 0, '88C2F5F7-5962-1D64-868B-CBB8CF51741B', '1-82b366d1d22c4bf3dc5853997bb3afed', 'Cristian', '-34.1794882,-58.9734445', '2017-07-22 11:45:03', '', 'Laprida 1359 - Sandra Gonzalez', '', '40-59', 'B', 'B', '', 'Inseguridad,Educación,Desempleo', 'Si'),
(161, '2017-07-22 14:32:46', '2017-07-22 21:32:46', 0, '88F8B79B-C3D4-3AF1-BCB9-55B5E61D5CC4', '1-0ae832b021d5aec23a73fd7dc6826d9f', 'Lucía', '-34.1608016,-58.9622906', '2017-07-22 11:26:01', '', 'comeli pedro', '', '+60', 'R', 'R', 'Frente Renovador', 'Inseguridad,Desempleo,Educación', 'No'),
(162, '2017-07-22 14:32:47', '2017-07-22 21:32:47', 0, '898A6A1A-340A-EA40-86DC-FD92549BA2B8', '1-3d3eff4f7c631619b54c5411e70cb164', 'Martin', '-34.1801113,-58.9764459', '2017-07-22 13:07:44', '', 'Rocio', '', '16-25', 'B', 'B', 'NS/NC', 'Salud', 'Si'),
(163, '2017-07-22 14:32:48', '2017-07-22 21:32:48', 0, '89C19E09-5EF6-3472-9922-D01B52F9D5F5', '1-dbc74da0c09b2727c484380bef7f0c4d', 'Nestornicotra@gmail.com', '-34.1646555,-58.9670163', '2017-07-22 10:58:45', '', 'Jorge Daniel pereyra', '3489536920', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad,Contaminación,Desempleo', 'Si'),
(164, '2017-07-22 14:32:48', '2017-07-22 21:32:48', 0, '89E72FDE-54C8-A13E-82E7-4D1801A47B86', '1-6c92bfb3baddcf17713b9838a7f6fa08', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1627836,-58.9649558', '2017-07-22 12:14:59', '', 'Ricardo martin', '3489421516', '+60', 'R', '', 'NS/NC', 'Inseguridad,Contaminación,Servicio de Absa', 'No'),
(165, '2017-07-22 14:32:49', '2017-07-22 21:32:49', 0, '8A10F0B5-64E3-3B05-BF9D-6FF5659EF413', '1-4b0e8c73f11f6beb2aa913c1e38673f2', 'Marina', '', '2017-07-22 11:37:58', '', 'Raquel', '', '+60', 'R', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(166, '2017-07-22 14:32:49', '2017-07-22 21:32:49', 0, '8AA68DC9-12D5-51C1-84B9-B8CDA60AEC34', '1-bbbd883c7c42ebefcaea959b1000c3e3', 'Renato', '-34.207851,-58.9397172', '2017-07-22 12:47:02', '', 'Hugo Priano', '449025', '+60', 'B', 'B', 'Cambiemos', 'Luminarias,Inseguridad', 'Si'),
(167, '2017-07-22 14:32:50', '2017-07-22 21:58:16', 0, '8B609AB7-0229-DA17-A837-6BB18A5C22E0', '1-843644c39c639416af34bcaf171c7738', 'Nerio Nogueira', '-34.1609281,-58.9647094', '0000-00-00 00:00:00', '', 'Lucía lencina', '', '+50', 'B', 'B', 'Cambiemos', '', ''),
(168, '2017-07-22 14:32:51', '2017-07-22 21:32:51', 0, '8B746B0D-E39E-1752-A020-39771CBEEF4E', '1-a5788508759c9813179f0747825d6076', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1628519,-58.9642167', '2017-07-22 11:48:52', '', 'Liliana flores', '3489438383', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Falta de vivienda', 'Si'),
(169, '2017-07-22 14:32:51', '2017-07-22 21:32:51', 0, '8C1C8C75-7512-A6D5-98B4-BEE7480C8121', '1-bdd65963e1aca01faacc83891925e448', 'Renato', '-34.2073374,-58.9394597', '2017-07-22 12:29:13', '', 'Griselda Di Nella', '662306', '26-39', 'R', 'R', 'NS/NC', 'Servicio de Absa', 'No'),
(170, '2017-07-22 14:32:52', '2017-07-22 21:32:52', 0, '8C3DBEA0-5FFD-51E9-BE87-6E26C77DAE1B', '1-246421c5b7e1c0a5c57544cb3aacb9ff', 'Márgara Pons', '-34.1793964,-58.9750123', '2017-07-22 11:14:30', '', 'Ayelen Ayres', '669092', '16-25', 'B', 'B', 'NS/NC', 'Salud,Luminarias,Desempleo', 'Si'),
(171, '2017-07-22 14:32:52', '2017-07-22 21:32:52', 0, '8E057A58-E5ED-4792-A1AC-E6D2C5C4B269', '1-5cc617b73824243bb3c2791517a897f2', 'S.castro m.paz renibolodi eq 13', '-34.1777668,-58.9762604', '2017-07-22 12:47:14', '', 'Javier membranas', '', '40-59', 'M', 'M', '', 'Desempleo', 'Si');
INSERT INTO `app_campana_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`) VALUES
(172, '2017-07-22 14:32:53', '2017-07-22 21:32:53', 0, '8F13CB74-11AD-2583-9379-BAA2984EC64B', '1-9a71a3759a1754751333de575217f5e7', 'Marina', '', '2017-07-22 12:43:42', 'susana-pan-@hotmail.com', 'Susana', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Tránsito/transporte', 'Si'),
(173, '2017-07-22 14:32:53', '2017-07-22 21:32:53', 0, '8FB8351F-0968-336C-887E-0D0146A22F5C', '1-6b2cdb0ee9a2a585993f1861fd6e640c', 'Cristian', '-34.1782492,-58.9741388', '2017-07-22 11:16:45', '', 'Del Pino 1390 - No se sentia bien, no respondió preguntas', '', '', '', '', '', '', ''),
(174, '2017-07-22 14:32:54', '2017-07-22 21:32:54', 0, '9130264F-07A2-7742-9113-D8B173057F60', '1-8a6c0b937dd5acea9ef2e7fc9d29d735', 'Lucia schirripa', '-34.206403542019,-58.940010001003', '2017-07-22 11:48:40', '', 'Juan alberto', '15302398', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Mal estado del barrio,Educación', 'Si'),
(175, '2017-07-22 14:32:55', '2017-07-22 21:58:47', 0, '92564166-0C51-4FF6-9467-34E901B25310', '1-7ab3db3b46bef11407a7275276f1d7fe', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1774487,-58.9753483', '0000-00-00 00:00:00', '', 'Rocio', '', '18-30', 'B', 'B', 'Cambiemos', 'Inseguridad', ''),
(176, '2017-07-22 14:32:55', '2017-07-22 21:32:55', 0, '92952474-DF66-DE13-99A4-B94465CF9693', '1-a899a1ba0dd363c4e8e68d7da68c7fb5', 'Martin', '-34.1804788,-58.9763563', '2017-07-22 11:42:41', '', 'Juan Jose', '', '40-59', 'B', 'B', 'FPV', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(177, '2017-07-22 14:32:56', '2017-07-22 21:32:56', 0, '94D501D3-3FC5-B009-9858-E0FCA93FBDF8', '1-a8543a14684933977aca02726340c985', 'Márgara Pons', '-34.1802131,-58.974598', '2017-07-22 11:45:27', '', 'Brenda Eckerdt', '565966', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(178, '2017-07-22 14:32:56', '2017-07-22 21:32:56', 0, '9539494D-CA7B-544B-9925-2A87C1C2DF0E', '1-6459262d1e2fcc25b241378a85077b1c', 'Marina', '', '2017-07-22 12:22:09', 'gusidelmo@gmail.com', 'Gustavo', '', '40-59', 'R', 'B', '', 'Inseguridad', 'Si'),
(179, '2017-07-22 14:32:57', '2017-07-22 21:32:57', 0, '95AF4CC0-6A82-2F7F-960E-AD8D29145BB8', '1-0b4b4dce6670d0a67cf7bf0f909161b5', 'Nestornicotra@gmail.com', '-34.1636656,-58.9681809', '2017-07-22 11:48:23', '', '', '', '26-39', 'R', '', 'FPV', 'Desempleo,Mal estado del barrio', 'No'),
(180, '2017-07-22 14:32:57', '2017-07-22 21:32:57', 0, '960EC9DF-173F-4DA3-B0DC-446C57C02D64', '1-1cc9b80bed4fbe3ac468347607deb5d2', 'S.castro m.paz renibolodi eq 13', '-34.1773326,-58.9762786', '2017-07-22 12:38:37', '', 'Daniel Gomez', '', '40-59', 'B', 'B', '', 'Servicio de Absa,Luminarias', 'Si'),
(181, '2017-07-22 14:32:58', '2017-07-22 21:32:58', 0, '961C086D-DF9A-FF23-BA05-3B41BCBCD824', '1-62327a82bc93cfb196575943f2359956', 'Cristian', '-34.1794164,-58.9734333', '2017-07-22 11:47:23', '', 'Laprida y Santa Maria Oro / Sonia Gerez', '15680420', '26-39', 'B', 'B', '', 'Desempleo', 'Si'),
(182, '2017-07-22 14:32:58', '2017-07-22 21:32:58', 0, '98E9E31B-6FE7-04AE-9423-92363FD0D2B1', '1-37c65e0a6c70761f0c701a4e3aa5ec55', 'Marina', '', '2017-07-22 11:09:54', 'marisasens@gmail.com', 'Sei Maria Isabel', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Falta de vivienda,Desempleo', 'Si'),
(183, '2017-07-22 14:32:59', '2017-07-22 21:32:59', 0, '9AB3159A-55B5-5DEE-99CC-61F36B635BF6', '1-18dff8ed81a9cfc1a5c83306d0905b21', '24938503', '-34.1802145,-58.9734445', '2017-07-22 11:05:19', '', 'No ella gonzalez', '15680032', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Tránsito/transporte', 'Si'),
(184, '2017-07-22 14:32:59', '2017-07-22 21:32:59', 0, '9BC9DCBC-2B82-F80E-9DD7-CAE10C5B669F', '1-3d583bb6b95b3b5867e41bc993196290', 'Márgara Pons', '-34.1793887,-58.9750088', '2017-07-22 11:20:07', '', 'Pamela', '694138', '26-39', 'M', 'R', 'NS/NC', 'Educación,Inseguridad,Tránsito/transporte', 'Si'),
(185, '2017-07-22 14:33:00', '2017-07-22 21:33:00', 0, '9D2D7D2B-D97C-56F7-ACAF-38E815482497', '1-30fc2aec160f1f52c10aa094c98c274a', 'Renato', '-34.2069632,-58.9412063', '2017-07-22 11:25:04', '', 'María Manfra', '440997', '26-39', 'R', 'R', 'NS/NC', 'Educación,Desempleo', 'Si'),
(186, '2017-07-22 14:33:01', '2017-07-22 21:33:01', 0, '9F0A3492-6503-CA07-BFFA-6DF763C70908', '1-adb197164be8924cb0e0e748863ec812', 'Renato', '-34.2070409,-58.9401875', '2017-07-22 11:50:10', '', 'José Luis Acastelli', '449282', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(187, '2017-07-22 14:33:01', '2017-07-22 21:33:01', 0, '9FD8BB4C-055F-EA9E-B5EC-554695385D67', '1-d5d43453379f57372a7ab1269e01e4a1', 'Lucía', '-34.1611194,-58.9630409', '2017-07-22 10:58:36', 'tobias_correa@hotmail.com', 'susana Batelli', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Servicio de Absa,Mal estado del barrio', 'Si'),
(188, '2017-07-22 14:33:02', '2017-07-22 21:33:02', 0, 'A0087CF5-5140-6841-94AD-DFEC95E35029', '1-25590e1ae1ef5cfe39d71a0400cf8064', 'Maria emilia', '-34.1637662,-58.9648886', '2017-07-22 13:01:21', '', 'Joaquín lima', '15361008', '16-25', 'B', 'B', 'NS/NC', 'Mal estado del barrio', 'Si'),
(189, '2017-07-22 14:33:02', '2017-07-22 21:33:02', 0, 'A03B55AC-AAF9-CE5F-A38F-BF3D6C7F0FA7', '1-8903d6f06a7e6ade400664ad92dc21a6', '24938503', '-34.1812044,-58.9738252', '2017-07-22 11:48:35', '', 'Horacio tabares', '446491', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Servicio de Absa', 'Si'),
(190, '2017-07-22 14:33:03', '2017-07-22 21:33:03', 0, 'A0E09ED7-A87D-3998-8716-72D402D08BA5', '1-cc879357e475a8181df013939be0b9cf', 'Cristian', '-34.1785041,-58.973646', '2017-07-22 11:13:46', '', 'Del Pino 1380 - Lourdes Leiva', '', '16-25', 'B', 'B', '', 'Desempleo', 'Si'),
(191, '2017-07-22 14:33:04', '2017-07-22 21:33:04', 0, 'A3AC649E-4292-8024-B637-7FEA74856E95', '1-f5258ef49207083149c5a85deb9fcd47', 'Alejandra', '-34.162735,-58.9677666', '2017-07-22 11:07:23', '', 'Alicia ruani', '111544956435', '+60', 'B', 'B', 'Cambiemos', 'Educación,Desempleo,Inseguridad', 'Si'),
(192, '2017-07-22 14:33:04', '2017-07-22 21:33:04', 0, 'A3D5A373-815A-DBAA-9FA0-88918DCD7F73', '1-1ceaef42c11cd33fd084ce792bd54169', 'Cristian', '-34.1792192,-58.9735004', '2017-07-22 11:51:06', '', '', '', '', '', '', '', '', ''),
(193, '2017-07-22 14:33:05', '2017-07-22 21:33:05', 0, 'A3E9591D-2480-4C74-8D22-09780EC5EC18', '1-62959fbb2ed8076198f3c21fb617b6f0', '23888878', '-34.206544794098,-58.938889402995', '2017-07-22 13:07:12', '', 'Chabero horacio', '111520296852', '40-59', 'B', 'B', 'NS/NC', 'Educación,Luminarias', 'Si'),
(194, '2017-07-22 14:33:05', '2017-07-22 21:33:05', 0, 'A4BB711E-AE3C-8A03-8EB1-7C2688B8B10E', '1-a5e27c9da7a46f1017c26b7856299602', 'Renato', '-34.2071123,-58.9402322', '2017-07-22 12:21:18', '', 'Jorge', '', '+60', 'R', 'R', 'NS/NC', '', 'No'),
(195, '2017-07-22 14:33:06', '2017-07-22 21:33:06', 0, 'A5D297DB-7697-D2DA-AD01-D9F84A9A1C69', '1-c8060de5d5e488a9ed9dbe13092c0dcc', 'Aquino Martín', '-34.1646494,-58.9659412', '2017-07-22 12:03:55', '', 'Olga', '', '+60', 'B', 'B', 'Otro', 'Servicio de Absa,Inseguridad', 'Si'),
(196, '2017-07-22 14:33:06', '2017-07-22 21:33:06', 0, 'A65C71EE-4A8B-E940-B503-7045C9A83591', '1-7d864d282c5a5617e8fccdd306b1ee2c', 's.castro / m.paz Reniboldi eq 13', '-34.1786811,-58.9765376', '2017-07-22 11:27:11', '', 'Nelida', '597983', '+60', '', '', 'NS/NC', 'Cloacas', 'Si'),
(197, '2017-07-22 14:33:07', '2017-07-22 21:33:07', 0, 'A8A13E07-26DA-8C7F-B66A-913B1B7C4D72', '1-96579db5fa2d9fff2e43db9698ca4dab', 'S.castro m.paz renibolodi eq 13', '-34.1782513,-58.9765691', '2017-07-22 12:24:46', '', 'Ana', '', '40-59', 'M', 'M', '', 'Luminarias', 'Si'),
(198, '2017-07-22 14:33:08', '2017-07-22 21:33:08', 0, 'A916DF58-3F4F-0554-B3FB-E4BB06D8AB56', '1-8f1045586eeeca2b7b0bdfd8c5b631f6', 'Nancy', '-34.1608938,-58.9669043', '2017-07-22 10:58:34', '', 'Marino', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Salud', 'Si'),
(199, '2017-07-22 14:33:08', '2017-07-22 21:33:08', 0, 'A98E3113-9EED-7613-A58F-7EDE70D46B6A', '1-1bff7eb6a5b21b069d74d9b9bb35a49f', '24938503', '-34.1812303,-58.9738476', '2017-07-22 11:44:33', '', 'Maria lapalma', '15497003', '40-59', 'B', 'B', 'NS/NC', 'Servicio de Absa,Tránsito/transporte', 'Si'),
(200, '2017-07-22 14:33:09', '2017-07-22 21:33:09', 0, 'A9B86A6A-DC32-C30A-BA33-CDF3A461DA84', '1-adc65d99315bd8eaf8d1e5dbbb190720', 'Gaston Barrios', '-34.1629734,-58.9644406', '2017-07-22 12:02:29', '', 'Viviava', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias,Falta de vivienda', 'Si'),
(201, '2017-07-22 14:33:09', '2017-07-22 21:33:09', 0, 'A9FB6478-F258-39EC-86A4-C2660C5E86D5', '1-ca3464bdf82ea224f80c9563c72b1a1b', '24938503', '-34.1810815,-58.9742284', '2017-07-22 11:58:33', '', 'Daniel cardoso', '428298', '40-59', 'B', 'B', 'NS/NC', 'Cloacas', 'Si'),
(202, '2017-07-22 14:33:10', '2017-07-22 21:33:10', 0, 'AA084E3D-AB5F-C883-AEEC-275F2EB4A49E', '1-358b1532c9c8819505aa535353837145', 'marioaita1974@gmail.com', '-34.206067041183,-58.938582145256', '2017-07-22 12:00:30', '', 'Alberto ielsich', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte', 'Si'),
(203, '2017-07-22 14:33:10', '2017-07-22 21:33:10', 0, 'AC4E44D7-8759-DEF0-B61A-F908BCF020B2', '1-44599b59cb3ad785b5f7d73cf4129bfc', 'Nestornicotra@gmail.com', '-34.1636101,-58.9679122', '2017-07-22 11:52:11', '', 'Estella', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Servicio de Absa', 'Si'),
(204, '2017-07-22 14:33:11', '2017-07-22 21:33:11', 0, 'ACF2296A-F042-3AAC-B305-F6A5C99C9D74', '1-7f71949182984e59af81598d39560113', '24938503', '-34.180232,-58.9741388', '2017-07-22 12:34:35', '', 'Verónica beron', '15577405', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte', 'Si'),
(205, '2017-07-22 14:33:12', '2017-07-22 21:33:12', 0, 'ACF9273C-5723-2F86-B21D-DB51872889F0', '1-17dd6661db93ea1f875b85bc993ead97', 'Paula Bianchi Raquel Abdul', '-34.1615044,-58.9636456', '2017-07-22 11:21:04', '', 'Julia', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Contaminación,Salud', 'Si'),
(206, '2017-07-22 14:33:12', '2017-07-22 21:33:12', 0, 'AE192B92-32EB-805D-9199-96C470059D4B', '1-d72b3fa752c9d628aa9509c2155f299b', 'Lucia schirripa', '-34.205613652251,-58.939067679276', '2017-07-22 11:27:47', '', 'Pedro', '440020', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Tránsito/transporte', 'Si'),
(207, '2017-07-22 14:33:13', '2017-07-22 21:33:13', 0, 'AE64C992-FE16-E526-B484-BABC82371032', '1-e66cf438f265026a4279627789d0ad2d', 's.castro / m.paz Reniboldi eq 13', '-34.1786689,-58.9766587', '2017-07-22 11:17:20', '', 'Morel Simon', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(208, '2017-07-22 14:33:13', '2017-07-22 21:33:13', 0, 'AF39384E-965F-6C9A-A7D2-66B976EBDA58', '1-b1712b4118e856a630a6da6a20588424', '23888878', '-34.206849247231,-58.93979809133', '2017-07-22 12:46:13', 'marcelo.ihlo@hotmail.com', 'Marcelo ihlo', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Salud', 'Si'),
(209, '2017-07-22 14:33:14', '2017-07-22 21:33:14', 0, 'AF9F4BF0-CC5D-529C-A7C9-99624FCCFC08', '1-04ca0ec8a8b6130647ed654016b8f1da', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1627052,-58.9643185', '2017-07-22 12:01:12', '', 'Rebeca altamirano', '1121771750', '16-25', 'R', 'B', 'NS/NC', 'Mal estado del barrio,Educación,Inseguridad', 'Si'),
(210, '2017-07-22 14:33:14', '2017-07-22 21:33:14', 0, 'B079CED2-EEB3-CF91-960E-6FE728AE748F', '1-9ce69008d5634a325586df6a69f10f53', 'Jessica taubas', '-34.1808119,-58.9774755', '2017-07-22 12:00:56', '', 'Ramona antonia chavez', '', '+60', 'B', 'R', 'NS/NC', 'Cloacas,Mal estado del barrio', 'Si'),
(211, '2017-07-22 14:33:15', '2017-07-22 21:33:15', 0, 'B12ED2A7-FF9B-9FD8-90C2-FF2729BF360B', '1-18740cffc55436489e1a5178cc5f6e31', 'Márgara Pons', '-34.1816676,-58.9739372', '2017-07-22 12:27:14', '', 'Claudia Palomeque', '684765', '26-39', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'No'),
(212, '2017-07-22 14:33:16', '2017-07-22 21:33:16', 0, 'B151254B-436A-425B-A772-3F34439F6CBF', '1-7c5b19e24710f779e90b616711ebc1a7', 'Evelyn', '-34.205034314213,-58.936341836398', '2017-07-22 12:29:20', '', 'Javier diaz', '15496783', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda,Desempleo', 'Si'),
(213, '2017-07-22 14:33:16', '2017-07-22 21:59:14', 0, 'B1C1FCEB-5B66-0CB1-8B6E-8E129223767D', '1-8420079e5e96f48591750dbf15080dcd', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1784022,-58.9760203', '0000-00-00 00:00:00', '', 'Blanco', '', '31-49', 'B', 'B', 'NS/NC', 'Desempleo', ''),
(214, '2017-07-22 14:33:17', '2017-07-22 21:33:17', 0, 'B23687A4-1C71-1ECA-9549-E4C6F79705D6', '1-ea3a00312971650a455924a0b2a1ccdc', 'Márgara Pons', '-34.1801885,-58.9744748', '2017-07-22 11:40:06', '', 'Melisa Soto', '426040', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Cloacas', 'Si'),
(215, '2017-07-22 14:33:17', '2017-07-22 21:33:17', 0, 'B273A416-2E6B-4291-86D8-97D10BD6B7B4', '1-801c5495b5422a13b5da7a351c62e948', 'Alejandra', '-34.1626544,-58.9679346', '2017-07-22 11:21:34', '', 'Sara Catalina arragas', '', '+60', 'B', 'B', 'Otro', 'Inseguridad,Educación,Salud', 'Si'),
(216, '2017-07-22 14:33:18', '2017-07-22 21:33:18', 0, 'B48770B8-03B8-6A89-8A84-AAE0627CD14F', '1-8e7b2887db0b2f2225041b8476c0e6e9', 'S.castro m.paz renibolodi eq 13', '-34.1770264,-58.9761708', '2017-07-22 12:44:27', '', 'Rosa Violaz', '', '+60', 'B', 'B', '', '', 'Si'),
(217, '2017-07-22 14:33:18', '2017-07-22 21:33:18', 0, 'B756BBB5-CDF0-DB9C-96BD-D1A4F496D369', '1-3654e89608a528f516af4f76ba2df14b', 'Maria emilia', '-34.1631584,-58.9648214', '2017-07-22 13:03:37', '', 'Mónica etelvina defago', '431664', '+60', 'B', 'B', 'Cambiemos', '', 'Si'),
(218, '2017-07-22 14:33:19', '2017-07-22 21:33:19', 0, 'B94DEC2F-33E5-7D16-9BAD-0C0F3BCB1EFE', '1-3b3e2cd1dd99902d1565561733820350', 'Martin', '-34.1792819,-58.9757963', '2017-07-22 12:18:22', '', 'Roberto', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Salud', 'Si'),
(219, '2017-07-22 14:33:20', '2017-07-22 21:59:26', 0, 'B9CE42EA-FEC4-61D4-BF57-76C416A10ABE', '1-bcf9266a85f57b3fe5b96492dab78d67', 'Nerio Nogueira', '-34.161761,-58.9650901', '0000-00-00 00:00:00', '', 'Delia Mansilla', '', '+50', 'B', 'B', 'Cambiemos', 'Salud', ''),
(220, '2017-07-22 14:33:20', '2017-07-22 21:33:20', 0, 'BA4218CA-5D43-6ABD-B7DA-F566EC663FE3', '1-2a8f91ec422100b0ac0f86412364ce44', 'Gustavo cabañas/23528843/gcabanas@mail.com', '-34.1627588,-58.9638135', '2017-07-22 11:22:53', '', 'Muñoz antonella', '348915639761', '26-39', 'B', 'B', 'Cambiemos', 'Falta de vivienda,Inseguridad,Educación', 'Si'),
(221, '2017-07-22 14:33:21', '2017-07-22 21:33:21', 0, 'BC30A2F7-39D5-5A05-9330-1996E11D9C6F', '1-8f6aab1c04fcdabdffc94c0f769de137', 'Aquino Martín', '-34.1652626,-58.966098', '2017-07-22 11:21:26', '', 'Valvidare Héctor', '', '+60', 'M', 'R', 'Otro', 'Servicio de Absa,Mal estado del barrio', 'Si'),
(222, '2017-07-22 14:33:21', '2017-07-22 21:33:21', 0, 'BC954865-82A6-E3A6-8838-953DE2F8354F', '1-cf7acca40cf10f656ac51a55858027e0', 'Cristian', '-34.1796151,-58.973758', '2017-07-22 11:39:14', '', 'Laprida 1375 - Adolfo Sosa', '', '+60', 'B', 'B', '', 'Desempleo', 'Si'),
(223, '2017-07-22 14:33:22', '2017-07-22 21:33:22', 0, 'BCE3047E-0146-28E9-8971-A1D79A767043', '1-6f26cdd229eb071cf8df4e424f3b1dbc', 'Maria emilia', '-34.1637135,-58.964911', '2017-07-22 13:02:22', '', 'Ximena de la rosa', '438320', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Salud', 'Si'),
(224, '2017-07-22 14:33:22', '2017-07-22 21:33:22', 0, 'BD8D15AE-9BC2-6A0A-A9EA-F4CADE54676B', '1-388499bce68f14f757b52f2529eaccd1', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1619501,-58.9635896', '2017-07-22 12:56:53', '', 'Ester sly', '348915585758', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Contaminación,Falta de vivienda', 'Si'),
(225, '2017-07-22 14:33:23', '2017-07-22 21:33:23', 0, 'BF2720DD-40DF-C715-A906-1983BE24FAA1', '1-bc694d6ad64ad8fc8477a067c5516d01', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1618869,-58.9644518', '2017-07-22 12:42:46', '', 'Amalia', '', '+60', 'R', 'B', 'NS/NC', 'Luminarias,Inseguridad,Tránsito/transporte', 'Si'),
(226, '2017-07-22 14:33:24', '2017-07-22 21:33:24', 0, 'C0BAAFF7-E090-5D50-BEC6-CD14BC91A060', '1-cb8e541e5a9b5d31ac9d7e6c1294e9ea', 'Nancy', '-34.1599641,-58.9658964', '2017-07-22 11:14:37', '', '', '', '+60', 'B', 'B', 'NS/NC', 'Educación', 'Si'),
(227, '2017-07-22 14:33:24', '2017-07-22 21:33:24', 0, 'C121EB95-A312-9E52-9546-72A1CB8E3225', '1-c58d45ee1727773b112388e52769ac32', 'Miguel ibarra', '-34.1647149,-58.9705999', '2017-07-22 10:55:13', '', 'Empleada Rosa', '', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(228, '2017-07-22 14:33:25', '2017-07-22 21:33:25', 0, 'C1D1D683-E163-7D31-8159-5F530BF67CC9', '1-a922338bea460cbd40bbea3b40071d8a', 's.castro / m.paz Reniboldi eq 13', '-34.1777668,-58.9762604', '2017-07-22 11:03:02', '', 'Viviana Silva', '15599193', '26-39', 'B', 'B', '', 'Servicio de Absa', 'Si'),
(229, '2017-07-22 14:33:25', '2017-07-22 21:33:25', 0, 'C2C7C22E-717D-10E8-95A6-533D20367235', '1-df1781961beae08a36a58ed4a28a1ec2', 'Martin', '-34.1820978,-58.9711423', '2017-07-22 11:28:11', '', 'Marisa', '', '40-59', 'B', 'B', 'NS/NC', 'Desempleo,Educación,Tránsito/transporte', 'Si'),
(230, '2017-07-22 14:33:26', '2017-07-22 21:33:26', 0, 'C3527617-4361-44AC-BC21-970DCFF08EC4', '1-642dc5ffa516a8f4d4414172f7c44797', 'Lucía', '-34.160253,-58.9627161', '2017-07-22 11:16:43', '', '', '', '', '', '', '', '', ''),
(231, '2017-07-22 14:33:27', '2017-07-22 21:33:27', 0, 'C4120F8B-21FE-C933-9777-C47559035035', '1-400f3049377f6e373e44fe91041337db', 'S.castro m.paz renibolodi eq 13', '-34.1742685,-58.9810041', '2017-07-22 12:41:10', '', 'Ledesma Ocaña', '', '+60', 'B', 'B', '', 'Mal estado del barrio', 'Si'),
(232, '2017-07-22 14:33:27', '2017-07-22 21:33:27', 0, 'C611929F-8A93-17E0-87C6-1072D94765F9', '1-a083608484d72cb09071888f5edc5289', 'Martin', '-34.1802687,-58.9764123', '2017-07-22 11:50:35', '', 'Severiano', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Contaminación', 'Si'),
(233, '2017-07-22 14:33:28', '2017-07-22 21:33:28', 0, 'C78B3D9F-188A-B339-A2DA-E122A5136E8D', '1-8b75070929233a6f28d8005459e645d7', 'Gustavo cabañas/23528843/gcabanas401@gmail.com', '-34.1629644,-58.9630745', '2017-07-22 10:59:28', 'anapaula_mas@hotmail.com', 'Etel fioraneli', '3489538697', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(234, '2017-07-22 14:33:28', '2017-07-22 21:33:28', 0, 'C87E4CC4-E8E9-BADA-84A6-EE52CADD1339', '1-0868ca7f0c22e77c97f1ef1e5ab03e98', 'Marina', '', '2017-07-22 12:30:34', 'tatianacoinaski@hotmail.com', 'Tatiana', '', '26-39', 'B', 'B', 'NS/NC', 'Educación,Salud', 'Si'),
(235, '2017-07-22 14:33:29', '2017-07-22 21:33:29', 0, 'C87EDEA3-E9AC-C8E3-A860-C91B055FB1BA', '1-336482d147d8392970d8811d574d1967', 'Gaston Barrios', '-34.1632432,-58.9648438', '2017-07-22 11:33:43', '', 'Ovalado fernandez', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias,Mal estado del barrio', 'Si'),
(236, '2017-07-22 14:33:29', '2017-07-22 21:33:29', 0, 'CA4E0F24-AD38-45B4-B496-CD03AE1274CD', '1-de2899ad7b008e456a13fe190f15763c', 'Renato', '-34.2074284,-58.9405905', '2017-07-22 12:06:26', '', 'Zulma Parodi', '442054', '+60', 'B', 'B', 'Cambiemos', '', 'Si'),
(237, '2017-07-22 14:33:30', '2017-07-22 21:33:30', 0, 'CA60C1F3-7C12-A6A9-B1FB-58720B6203B3', '1-4a398fa4c5849927d1f4911017c89c9f', 'Aquino Martín', '-34.1647765,-58.9657285', '2017-07-22 12:07:10', 'emmavalentina@gmail.com', 'Rocio', '653534', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Salud', 'No'),
(238, '2017-07-22 14:33:31', '2017-07-22 21:33:31', 0, 'CAF84ED1-49D1-1F52-A723-346ABB920216', '1-f8465315b4126daaf10a617c54e96e03', 'Jessica taubas', '-34.1803005,-58.9764907', '2017-07-22 11:19:00', '', 'Marcelo atider', '557841', '40-59', 'B', 'B', 'Cambiemos', 'Tránsito/transporte', 'Si'),
(239, '2017-07-22 14:33:31', '2017-07-22 21:33:31', 0, 'CB7B0388-D6F2-05A6-BC8A-01CFAC541CC2', '1-673a5f879277320446c8d81ef0437183', 'Alejandra', '-34.1630248,-58.9681362', '2017-07-22 11:41:32', '', 'Marcelo días Garrido', '', '26-39', 'M', 'B', 'Cambiemos', 'Inseguridad,Educación,Contaminación', 'Si'),
(240, '2017-07-22 14:33:32', '2017-07-22 21:59:41', 0, 'CC7B8FFE-8D94-25A3-BF8F-2BA7E14FD182', '1-5b7f8992838480fbe4cbf6a47781bd48', 'Nerio Nogueira', '-34.1609239,-58.9650454', '0000-00-00 00:00:00', '', 'Stella Maris Caldera', '', '+50', 'B', 'B', 'Cambiemos', '', ''),
(241, '2017-07-22 14:33:32', '2017-07-22 21:33:32', 0, 'CC8B75F6-CE1B-219E-B21A-846FDB843363', '1-a64d2a9d6e392e25ffb0077cd257da15', 'Márgara Pons', '-34.1798547,-58.9744748', '2017-07-22 11:31:55', '', 'Manuel González', '430798', '+60', 'B', 'B', 'Cambiemos', 'Educación', 'Si'),
(242, '2017-07-22 14:33:33', '2017-07-22 21:33:33', 0, 'CCC23CA5-53BC-E41D-8714-A5B300C67671', '1-f834195bf58af92d19a9e3dfdc00481c', 'Lucia schirripa', '-34.206240226236,-58.940255482888', '2017-07-22 11:58:28', 'alejandrograssetto@hotmail.com', 'Alejadra grassetto', '4442005', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte,Desempleo', 'Si'),
(243, '2017-07-22 14:33:33', '2017-07-22 21:33:33', 0, 'CE408AC0-35C0-811E-ADD0-5668569F95F8', '1-48b8cb03b2a81111d72ce4e11cc21a5c', 'Nestornicotra@gmail.com', '-34.1645805,-58.9682929', '2017-07-22 11:32:53', 'misobispo@gmail.com', 'María obispo de nattero', '3489430295', '+60', 'B', 'B', 'Cambiemos', 'Educación,Servicio de Absa', 'Si'),
(244, '2017-07-22 14:33:34', '2017-07-22 21:33:34', 0, 'CE5AB7C1-BDE0-B9CE-A97B-400494403DF3', '1-a5be78a9bb040a6c63c7fb5430e4aba5', 'Martin', '-34.180262,-58.9764235', '2017-07-22 13:03:04', '', 'Roberto', '', '26-39', 'B', 'B', 'NS/NC', 'Desempleo,Educación,Inseguridad', 'Si'),
(245, '2017-07-22 14:33:34', '2017-07-22 21:33:34', 0, 'CFB7DA36-347E-CB03-AC34-DBE5F6CA8F97', '1-08076e981648c40db402a5bbc8a97159', 'Márgara Pons', '-34.1809835,-58.9757739', '2017-07-22 12:18:04', '', 'Emanuel Segovia', '625430', '26-39', 'R', 'R', 'NS/NC', 'Desempleo', 'No'),
(246, '2017-07-22 14:33:35', '2017-07-22 21:33:35', 0, 'D1D23E41-4EE1-1876-BC68-0008AA161449', '1-4df3487f567ac2a1e064a4d89df2c6e9', 'Márgara Pons', '-34.1815623,-58.973982', '2017-07-22 12:32:51', '', 'Matías Amaral', '592616', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(247, '2017-07-22 14:33:36', '2017-07-22 21:33:36', 0, 'D1D5D952-C019-2A95-A5FF-876A84CBCB45', '1-448db714ae20ef82742d5ac0850ffb5a', 'Alejandra', '-34.163292,-58.9671955', '2017-07-22 11:59:00', '', 'Marcon', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Educación', 'Si'),
(248, '2017-07-22 14:33:36', '2017-07-22 21:33:36', 0, 'D29A372C-B376-FA2C-85A8-F4F3485DB6E8', '1-3986ab6709ce420941a7909858c3e4d2', 'Nestornicotra@gmail.com', '-34.1637654,-58.9665012', '2017-07-22 12:01:59', '', '', '', '+60', 'M', 'R', 'Otro', 'Inseguridad', 'Si'),
(249, '2017-07-22 14:33:37', '2017-07-22 21:33:37', 0, 'D44F3936-D03A-AEFE-B566-91652ACDF492', '1-8376e6ca639710c92c32e9c231e47a23', 'Maria emilia', '-34.1639938,-58.9650006', '2017-07-22 13:00:14', '', 'Rubén orbelli', '421636', '+60', 'R', 'R', 'NS/NC', 'Servicio de Absa,Tránsito/transporte,Inseguridad', 'Si'),
(250, '2017-07-22 14:33:37', '2017-07-22 21:33:37', 0, 'D4AD96C0-96DA-51A0-97E7-1E83973644B7', '1-b1ca5c8ddea2616c5620fa1665e17bd3', 'Márgara Pons', '-34.1794653,-58.9752587', '2017-07-22 11:11:05', '', 'Wilma Vivas', '438698', '40-59', 'B', 'R', 'FPV', 'Desempleo,Inseguridad,Tránsito/transporte', 'Si'),
(251, '2017-07-22 14:33:38', '2017-07-22 21:33:38', 0, 'D551304C-6591-16FF-87F2-DCC0A0A343CB', '1-b3087665927d54937bdefcbb6036f383', 'Evelyn', '-34.2052289,-58.9375004', '2017-07-22 11:43:58', '', 'Graciela Domínguez', '442836', '+60', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad', 'Si'),
(252, '2017-07-22 14:33:38', '2017-07-22 21:33:38', 0, 'D5EF59DF-7D04-7716-BF00-57E1BDF1488C', '1-75e66389dec6e4d933ec9ddb8dbaa8cb', 'Evelyn', '-34.204737621322,-58.935001464242', '2017-07-22 12:02:59', '', 'Marta Noemí De filipi', '', '+60', 'B', 'B', 'FPV', 'Inseguridad,Desempleo', 'Si'),
(253, '2017-07-22 14:33:39', '2017-07-22 21:33:39', 0, 'D61518C4-3B96-2B80-8E7E-DF74D5DE48C8', '1-55583bfdc53ce06e0d6226c1a5848ce5', '24938503', '-34.1812678,-58.973982', '2017-07-22 11:54:53', '', 'Ramón villagra', '15618548', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Servicio de Absa', 'Si'),
(254, '2017-07-22 14:33:40', '2017-07-22 21:33:40', 0, 'D7D1DC9A-8274-5DCD-B5CA-CABAEDB0A536', '1-677933cd2a712891a4910376a3e85c3e', 'Lucia schirripa', '-34.205486668857,-58.939746868711', '2017-07-22 12:29:55', 'manuelapierucci@gmail.com', 'MANUELA pierucci@gmail.com', '444482', '+60', 'B', 'B', 'Cambiemos', 'Luminarias,Inseguridad,Mal estado del barrio', 'Si'),
(255, '2017-07-22 14:33:40', '2017-07-22 21:33:40', 0, 'D805989E-1291-D7D8-939C-88AE5A6CDF20', '1-06c46990023c271c685165e81484b9f3', 'Márgara Pons', '-34.1807818,-58.9756843', '2017-07-22 12:15:41', '', 'Andrea Aranda', '15360360', '16-25', 'B', 'M', 'NS/NC', 'Desempleo,Contaminación,Mal estado del barrio', 'Si'),
(256, '2017-07-22 14:33:41', '2017-07-22 21:59:55', 0, 'D99D833C-CB85-A61C-814B-6BAE76BDDE69', '1-83599d3ba24f03c055aa55ab436ec3b9', 'Nerio Nogueira', '-34.1619159,-58.9657845', '0000-00-00 00:00:00', '', 'Sabrina bastanzo', '', '31-49', 'R', 'R', 'Cambiemos', 'Inseguridad', ''),
(257, '2017-07-22 14:33:41', '2017-07-22 21:33:41', 0, 'DA8B4008-9576-EBDF-B9A6-EEB33F35D66C', '1-11e9dbce919bc440afd4590ef844b4e8', 'Martin', '-34.1793052,-58.9760203', '2017-07-22 12:27:29', '', 'Silvia', '', '26-39', 'R', 'R', 'NS/NC', 'Falta de vivienda,Inseguridad,Desempleo', 'Si'),
(258, '2017-07-22 14:33:42', '2017-07-22 21:33:42', 0, 'DAA40BF7-D61D-C74B-8786-5B059BC096E8', '1-3ec2b4dd2a1532b4add8188fda6ed56c', 'Gaston Barrios', '-34.16313348,-58.96376353', '2017-07-22 12:34:00', '', 'Micaela', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte,Cloacas', 'Si'),
(259, '2017-07-22 14:33:42', '2017-07-22 21:33:42', 0, 'DACC1847-1A6A-B4C4-8F53-28FF9426292A', '1-ee074779c518df8549c26e7b400296cb', 'Martin', '-34.1805195,-58.9757291', '2017-07-22 11:09:08', '', 'Maria Luisa', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Falta de vivienda,Cloacas', 'Si'),
(260, '2017-07-22 14:33:43', '2017-07-22 21:33:43', 0, 'DB906B81-3C1F-53E1-AF3F-C90F7D7BCD79', '1-b172246c2031f6214cfd0da080ef3cf3', 'Lucia schirripa', '-34.206108381998,-58.939483350791', '2017-07-22 11:37:28', 'emredondo@gmail.com', 'Enrique', '622128', '40-59', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(261, '2017-07-22 14:33:44', '2017-07-22 22:00:05', 0, 'DC79180A-8A73-AD6A-884C-E67145FF69B3', '1-243848c268360c317e36565ca2a9b6fb', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1771425,-58.9752363', '0000-00-00 00:00:00', '', 'Mirta Flores', '594953', '31-49', 'B', 'B', 'Cambiemos', '', ''),
(262, '2017-07-22 14:33:44', '2017-07-22 21:33:44', 0, 'DD443D3F-6BDE-B991-9FDC-F1EE920A9676', '1-8a5c8696d51cecf217f4f3800ab2f1e0', 'Márgara Pons', '-34.1814687,-58.9741388', '2017-07-22 12:23:46', '', 'Ezequiel Mosqueda', '512902', '26-39', 'B', 'B', 'Frente Renovador', 'Educación', 'Si'),
(263, '2017-07-22 14:33:45', '2017-07-22 21:33:45', 0, 'DD517549-514C-BB4A-A100-C627BCC7EDB1', '1-be67916e131ed8d16c7d63fefb33681d', 'marioaita1974@gmail.com', '-34.206112374522,-58.938758767466', '2017-07-22 11:58:12', '', 'Mercedes guerrero', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte,Salud', 'Si'),
(264, '2017-07-22 14:33:45', '2017-07-22 21:33:45', 0, 'E08AAECD-AF04-6718-A52B-EE3BF586DE4F', '1-7897dc6c4353a5d0947895b6942de02d', 'Cristian', '-34.1791545,-58.9734445', '2017-07-22 11:52:11', '', 'Carlos Medina', '439097', '', 'B', '', '', 'Inseguridad,Tránsito/transporte', ''),
(265, '2017-07-22 14:33:46', '2017-07-22 21:33:46', 0, 'E223D3B7-3212-A8B9-93A6-FCB1A7E53201', '1-266242967d96cb77f04f1ef1701e54c4', '24938503', '-34.180265,-58.9741164', '2017-07-22 12:13:37', '', 'Jorge vazques', '', '26-39', 'B', 'B', 'NS/NC', 'Desempleo', 'Si'),
(266, '2017-07-22 14:33:46', '2017-07-22 21:33:46', 0, 'E31D0AF8-726C-A70C-B1A9-0E1E50425D03', '1-323f0b20ef066a3c4a43d1d851d0ef71', 'Aquino Martín', '-34.1650743,-58.965986', '2017-07-22 11:10:00', '', 'ana', '', '26-39', 'B', 'R', 'Cambiemos', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(267, '2017-07-22 14:33:47', '2017-07-22 21:33:47', 0, 'E4FB2518-2041-22D1-BB8E-BC430CF79465', '1-10ce8c3f3a6e21d20bbd6f108977eede', 'Ludmila', '-34.1643047,-58.9683601', '2017-07-22 11:33:26', '', 'Hilda Demousselle', '15573763', '+60', 'B', 'B', 'NS/NC', '', ''),
(268, '2017-07-22 14:33:48', '2017-07-22 21:33:48', 0, 'E679F7D2-094A-749A-9981-1484FDD1BC14', '1-d37b0a2faa2969e254c6c886ed187a39', 'Nancy', '-34.1607343,-58.9645078', '2017-07-22 11:56:39', '', 'Garcia', '', '+60', 'B', 'B', '', 'Inseguridad,Luminarias', 'Si'),
(269, '2017-07-22 14:33:48', '2017-07-22 21:33:48', 0, 'E6D7E77F-E8CA-AE06-AE9E-C4BCC299423C', '1-c0172e002251823433532f49f29ad781', 'Gustavo cabañas/23528843/gcabanas401@gmail.com', '-34.1628668,-58.9625145', '2017-07-22 10:51:22', '', 'Paula sanchez', '4389590631', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'No'),
(270, '2017-07-22 14:33:49', '2017-07-22 21:33:49', 0, 'E77275D4-A3A7-F683-ABC1-B17E3F0F2E56', '1-0fbe23818851a57b4aaa18cb2b2b7e75', 'Gaston Barrios', '-34.1637331,-58.964911', '2017-07-22 11:29:45', '', 'Victoria', '', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si'),
(271, '2017-07-22 14:33:49', '2017-07-22 21:33:49', 0, 'E7B4518F-DECA-B39E-8E48-04BBF1B60A25', '1-36f1ba046e7e4f89f5241371bc77558b', '24938503', '-34.1803949,-58.9736684', '2017-07-22 11:10:52', '', 'Deborah gimenez', '15527663', '16-25', 'B', 'B', 'NS/NC', 'Desempleo,Inseguridad,Salud', 'Si'),
(272, '2017-07-22 14:33:50', '2017-07-22 21:33:50', 0, 'E85856D9-5F5B-08D1-AE73-BC0B171E73E2', '1-9c48ea3be890e1117e57c22eee7ba0a7', 'Nestornicotra@gmail.com', '-34.164272,-58.9673299', '2017-07-22 11:07:44', '', 'Héctor', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Salud,Desempleo', 'Si'),
(273, '2017-07-22 14:33:50', '2017-07-22 21:33:50', 0, 'E867BE9A-5FA9-3275-8D2A-F9BAA28D741E', '1-fe2d484d30197d686278043f9bdefda0', 'Gustavo gustavo/23528843/gcabanas401gmail.com', '-34.1630704,-58.9640151', '2017-07-22 11:44:46', 'nancy.e.bonfanti@hotmail.com', 'Nancy bonfanti', '348915514783', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Contaminación', 'Si'),
(274, '2017-07-22 14:33:51', '2017-07-22 21:33:51', 0, 'E96DE753-D79E-5CF5-A3AA-A7F7B1449105', '1-f646813480c84d9565b18d7e6ffd0f06', '24938503', '-34.1810035,-58.9736684', '2017-07-22 11:30:48', '', 'Ruben molina', '', '+60', 'B', '', 'NS/NC', 'Cloacas', 'Si'),
(275, '2017-07-22 14:33:52', '2017-07-22 21:33:52', 0, 'ED0761D2-F262-339A-A13A-812395D267DF', '1-e98a52516eb407d9c784e6f106d498c2', 'carlos clavero', '-34.1642572,-58.9701446', '2017-07-22 10:14:01', 'cclavero@campana.com.gov.arr', 'carlos', '1166925617', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte,Educación', 'Si'),
(276, '2017-07-22 14:33:52', '2017-07-22 21:33:52', 0, 'ED4C25EB-6CBB-71F2-BF94-76F7A8134593', '1-4dc073251e0994a01a2950f5434cad45', 'Renato', '-34.2068683,-58.9398516', '2017-07-22 11:46:15', '', 'Miriam Salazar', '629020', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(277, '2017-07-22 14:33:53', '2017-07-22 21:33:53', 0, 'EE2B717F-74D8-69F5-A217-F273B7178985', '1-4399ca331f2c9b1905f8db61ff0d25d6', 'Jessica taubas', '-34.1808119,-58.9774755', '2017-07-22 11:56:50', '', 'Maria ines riquel', '15537195', '40-59', 'B', '', 'Cambiemos', 'Cloacas,Luminarias,Inseguridad', 'Si'),
(278, '2017-07-22 14:33:53', '2017-07-22 21:33:53', 0, 'EEBACDFA-CF28-16C6-9B0C-B5847308A20E', '1-984916f4676377ff6bc436ab78c5d880', 'Marina', '', '2017-07-22 11:41:00', 'ebmarcia@gmail.com', 'Marcia', '', '40-59', 'B', 'B', 'NS/NC', 'Salud,Educación', 'No'),
(279, '2017-07-22 14:33:54', '2017-07-22 21:33:54', 0, 'F02357B1-B5AF-A183-8756-CB0FC61FE5EA', '1-11aeb3926f6c119b3ec759f36251d60f', 'Aquino Martín', '-34.1646691,-58.9659412', '2017-07-22 12:01:52', '', 'Elisa', '', '26-39', 'R', 'R', 'Otro', 'Inseguridad,Educación,Desempleo', 'Si'),
(280, '2017-07-22 14:33:54', '2017-07-22 21:33:54', 0, 'F216B452-3BA3-8FE6-8277-4673ABC124BF', '1-f4ffd5c2523c8a310277c59d891cd4d1', 'Gaston Barrios', '-34.1638389,-58.9643063', '2017-07-22 11:20:37', '', 'Gloria', '', '+60', 'B', 'B', 'Otro', 'Educación,Inseguridad,Luminarias', 'Si'),
(281, '2017-07-22 14:33:55', '2017-07-22 21:33:55', 0, 'F29B5CE8-F7ED-878E-BA33-28017CEC7059', '1-95e2b1f4fc734cb3af20481e725d52e6', 'Renato', '-34.2072864,-58.9404338', '2017-07-22 11:57:43', '', 'María Graciela Tinidad', '442984', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(282, '2017-07-22 14:33:56', '2017-07-22 21:33:56', 0, 'F4A0F063-2642-2A57-B32A-7B9A9ECE4351', '1-6f0fa0ae12528220ccb8932b395b34e1', 'Martin', '-34.1803732,-58.9759083', '2017-07-22 11:56:52', '', 'Daniel', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Educación', 'Si'),
(283, '2017-07-22 14:33:56', '2017-07-22 22:00:16', 0, 'F54A1C0C-E6C6-B606-9ED9-2D96460799EC', '1-fe01cce8f5239e545b4f6ac5628c3c40', 'Nerio Nogueira', '-34.1607512,-58.9657621', '0000-00-00 00:00:00', '', 'Laura Simini', '', '+50', 'B', 'B', 'Cambiemos', 'Salud', ''),
(284, '2017-07-22 14:33:57', '2017-07-22 21:33:57', 0, 'F6F9BC69-FD31-6F11-AA24-B3808DE3B269', '1-78e93a095ed57415355b436aaa0b5b9b', 'jose schirripa', '-34.2064284,-58.9389111', '2017-07-22 13:09:12', '', 'gabriel', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(285, '2017-07-22 14:33:57', '2017-07-22 21:33:57', 0, 'F7E42944-8613-E6A2-A4F1-89A6AA430EF6', '1-ebbc1764d93774e1446c5b81a1aa12e3', '24938503', '-34.1801093,-58.9734892', '2017-07-22 11:02:27', '', 'Adolf o sosa', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(286, '2017-07-22 14:33:58', '2017-07-22 21:33:58', 0, 'F85AAD33-B01E-B320-A769-0D2C06B2A68E', '1-d64156a423c9e3bf5ba705e811e121b1', 'S.castro m.paz renibolodi eq 13', '-34.1773326,-58.9762786', '2017-07-22 12:33:50', '', 'Juan Ricardo', '', '40-59', 'B', 'B', '', '', 'Si'),
(287, '2017-07-22 14:33:58', '2017-07-22 21:33:58', 0, 'F8B9DE8F-D896-B1B6-8F2D-E71DF14C9761', '1-650cdaa2c018f4abc976e40923d16323', 'Nancy', '-34.1618675,-58.9602749', '2017-07-22 07:31:36', '', '', '', '+60', '', '', '', '', ''),
(288, '2017-07-22 14:33:59', '2017-07-22 21:33:59', 0, 'F8D20281-6BA7-10D3-B878-246C1F9E4FBD', '1-f128d34c340745f51067d65614e2a884', 'Nancy', '-34.1604513,-58.9656725', '2017-07-22 11:21:31', '', '', '', '26-39', 'B', 'B', '', 'Inseguridad', 'Si'),
(289, '2017-07-22 14:34:00', '2017-07-22 21:34:00', 0, 'F8EF30A7-4CA5-9EF1-BCC0-95BF0D3795A0', '1-8401032787db1538aca2fd13ada68e0a', 's.castro / m.paz Reniboldi eq 13', '-34.1779155,-58.9762107', '2017-07-22 11:07:18', '', 'Mercedes Lina', '', '+60', 'B', '', '', 'Mal estado del barrio', 'Si'),
(290, '2017-07-22 14:34:00', '2017-07-22 21:34:00', 0, 'F9C4E8BB-6918-4395-A42D-7FC31D49D00F', '1-4651029f0d7f46bd98f50603dd05a301', 'Gaston Barrios', '-34.163479,-58.9637911', '2017-07-22 12:25:38', '', 'Silvia ripa', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Educación', 'Si'),
(291, '2017-07-22 14:34:01', '2017-07-22 21:34:01', 0, 'FA75C79A-A14B-B3CC-A219-FBCE41BD08CB', '1-4caca6ff0ae106badd7a9e38c09c4de1', 'Alejandra', '-34.162684,-58.9681809', '2017-07-22 11:31:56', '', 'Jorge nicrosini', '', '40-59', 'B', 'B', 'Cambiemos', '', ''),
(292, '2017-07-22 14:34:01', '2017-07-22 21:34:01', 0, 'FBC2A1FE-4AA7-5D59-8709-531E8AE1F8AB', '1-8c221d6312156772dddebe91c7ff78ee', 'Márgara Pons', '-34.1793538,-58.9752811', '2017-07-22 11:05:05', '', 'Nidia Teresa Garay', '633867', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Tránsito/transporte', 'Si'),
(293, '2017-07-22 14:34:02', '2017-07-22 21:34:02', 0, 'FC1A2EFA-0496-840F-8584-FB5919D42061', '1-0beabe64f985472af9c370e1a4e536e9', 'Márgara Pons', '-34.180092,-58.9743404', '2017-07-22 11:42:20', '', 'Marianela Martinez', '561839', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(294, '2017-07-22 14:34:02', '2017-07-22 21:34:02', 0, 'FCA1D99F-92E8-346D-83EB-040D4CB63A05', '1-d7c34aadc2e0eb0ecdca1769952f1fc3', 'marioaita1974@gmail.com', '-34.206871234436,-58.939753486981', '2017-07-22 12:42:16', '', 'Daniel tenenbaum', '15480205', '26-39', 'R', 'B', 'NS/NC', 'Educación,Inseguridad', 'Si'),
(295, '2017-07-22 14:34:03', '2017-07-22 21:34:03', 0, 'FCC8D54E-6C38-040C-978F-69E9606A649E', '1-606467f12769c33bc12156512e3e599a', 'Gustavo cabañas/23528843/gcabanas@mail.com', '-34.1627471,-58.9637016', '2017-07-22 11:18:35', 'nataliasuarez46@gmail.com', 'Suarez natalia', '348915620745', '26-39', 'R', '', 'NS/NC', 'Inseguridad,Luminarias,Desempleo', 'No'),
(296, '2017-07-22 14:34:04', '2017-07-22 21:34:04', 0, 'FD17F06A-F82C-4E2C-80F2-795B1FD724DB', '1-4c4ce1249fffa347b64a6256d1f62b42', 'Nancy', '-34.1603395,-58.9646758', '2017-07-22 11:52:00', '', '', '', '26-39', 'B', 'B', 'NS/NC', 'Educación,Salud', 'Si'),
(297, '2017-07-22 14:34:04', '2017-07-22 21:34:04', 0, 'FDF73C64-DC5D-0A54-A221-E55284C37BA4', '1-497b98adca3ce6c7a44e4e04e9a3a67f', '24938503', '-34.1805352,-58.9739596', '2017-07-22 12:17:04', '', 'Andres jauregui', '15322302', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(298, '2017-07-22 14:34:05', '2017-07-22 22:00:41', 0, 'FE3BEEBB-A784-8562-AFA5-90DC30FB9E96', '1-4067dc1ea1dda1db2ed0c7061aca5c2d', 'Marcos Bongiovanni 23362880 marcosbongiovanni@ñive.com', '-34.1770264,-58.9761708', '0000-00-00 00:00:00', '', 'Acosta', '', '31-49', 'B', 'B', 'Cambiemos', '', ''),
(299, '2017-07-22 14:34:05', '2017-07-22 21:34:05', 0, 'FEA73FCF-D150-2477-AC9B-B3A56B9AFBF8', '1-d11f478e6b40da2f1b9012396aa7ac6d', 'Cristian', '-34.1781072,-58.973982', '2017-07-22 11:20:56', '', 'Silvia Albira Dorrego - 1202 / Reparar Calle (No aparece en Planos)', '436693', '40-59', 'B', 'B', '', 'Cloacas', 'Si'),
(300, '2017-07-22 14:34:06', '2017-07-22 21:34:06', 0, 'FEC2A964-19E7-F214-8E53-F871BABD0C0C', '1-bd3825f27f77ef24d5898f18edb86dff', '24938503', '-34.1802772,-58.9736684', '2017-07-22 12:21:03', '', 'Matilde cuenca', '', '+60', 'B', 'B', 'Cambiemos', 'Falta de vivienda,Tránsito/transporte', 'Si'),
(301, '2017-07-22 14:34:06', '2017-07-22 21:34:06', 0, 'FFCAF7F9-3E18-08BB-8D05-8810AC8C97D6', '1-6c047910739fb89ca71bb786105d3488', 'S.castro m.paz renibolodi eq 13', '-34.1786439,-58.9765691', '2017-07-22 12:06:51', '', 'Delia', '626473', '40-59', 'B', 'B', '', 'Luminarias', 'Si'),
(302, '2017-07-25 12:10:05', '2017-07-25 15:10:05', 0, 'FE27FA44-DEF5-2F60-9F66-BE751F37FC7F', '1-91cefa00913d7ad1a935edeea0993a6c', 'Betsabearias@hotmail.com', '-34.163721,-58.9601629', '2017-07-25 12:07:36', '', '', '', '', '', '', '', '', ''),
(303, '2017-07-25 15:20:03', '2017-07-25 18:20:03', 0, 'C1DC769E-E038-2632-B6BF-88FB9CC74043', '1-b9832d1223031822f3f4441eeae445a8', 'Sandra Gotelli', '', '2017-07-25 15:19:06', '', 'Silvia Azamor', '', '40-59', 'M', 'M', 'Otro', 'Inseguridad,Mal estado del barrio,Desempleo', 'Si'),
(304, '2017-07-25 15:30:01', '2017-07-25 18:30:01', 0, '50543474-431C-C235-8C83-8A604EE610E4', '1-edbad724284ab4bcc2885076d50f06db', 'Sandra Gotelli', '', '2017-07-25 15:21:24', '', 'Brenda Perez', '', '16-25', 'M', 'R', 'NS/NC', 'Desempleo,Inseguridad,Mal estado del barrio', 'No'),
(305, '2017-07-25 15:40:02', '2017-07-25 18:40:02', 0, '2B2DA62F-CCCC-8B24-9291-74963803CBDB', '1-d19d6a6df1d3342546583d4134da1848', 'Sandra Gotelli', '', '2017-07-25 15:34:29', '', 'Hugo Gomez', '', '40-59', '', 'R', 'NS/NC', 'Cloacas,Mal estado del barrio,Tránsito/transporte', 'Si'),
(306, '2017-07-25 15:40:02', '2017-07-25 18:40:02', 0, '6EE60DF0-DF4B-615B-A3BD-4D3C4FF3E0F5', '1-3a771e644e3bc769ad49e7738f9200f0', 'Betty  Vega', '-34.1841184,-58.965818', '2017-07-25 15:37:49', '', 'Hilda', '348915310465', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Luminarias,Tránsito/transporte', 'No'),
(307, '2017-07-25 15:40:02', '2017-07-25 18:40:02', 0, '95173273-62DB-3446-AEB1-9D10F189EB87', '1-e66ad7531d03f282e800259b61e167c6', 'Betty  Vega', '-34.1841318,-58.9657957', '2017-07-25 15:33:47', '', 'Héctor Miguel  Fariña', '3489420528', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(308, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '0BD120DB-9585-0026-AFC3-D294E54CAD5D', '1-f49ba8705fc5d7a013164ac906a1464a', 'Betty  Vega', '-34.1836941,-58.9657397', '2017-07-25 15:43:57', '', 'Micaela', '15632156', '16-25', 'R', 'R', 'Cambiemos', 'Inseguridad,Mal estado del barrio,Salud', 'No'),
(309, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '0D763BBC-4AA2-AB83-9FEA-895E5DA16D3F', '1-030e4afa67f4e54a117d1f42cdf8788c', 'Alejsndra', '-34.1849479,-58.9617307', '2017-07-25 15:41:44', '', 'José barrios', '', '40-59', 'R', 'B', 'Cambiemos', 'Inseguridad,Educación,Desempleo', 'Si'),
(310, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '14B9C3A6-BF20-CECE-911B-C132AF9C63BC', '1-b5b03f4099996c1f7dc279bfd00d36b2', 'Marina', '', '2017-07-25 15:41:12', '', 'maria cristina', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Tránsito/transporte', 'Si'),
(311, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '235EC3E8-65F6-5E29-859B-51DF2E978C1F', '1-2e9d58521e285370af945296639b775b', 'Marina', '', '2017-07-25 15:46:54', '', 'Alegre silvia', '421477', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(312, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '30FF133D-3E8F-FB3F-9083-C39441FE38CF', '1-7adb364b11a441b661209e8058c3fb67', 'Gaston/adriel', '-34.1837189,-58.9689873', '2017-07-25 15:46:52', '', 'Yesica vazquez', '', '26-39', 'M', 'M', 'NS/NC', 'Inseguridad,Cloacas,Mal estado del barrio', 'No'),
(313, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '3D0DF2B7-3D4B-4623-9C5B-0E6E8B86D910', '1-4dda94a2acf4d6c5595a6fea76112750', 'Alejsndra', '-34.1848782,-58.9615515', '2017-07-25 15:49:39', '', 'Macarena', '591919', '16-25', 'B', 'B', 'Cambiemos', 'Luminarias,Falta de vivienda,Tránsito/transporte', 'Si'),
(314, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '93225316-AEFA-B518-B653-D46DA49A9EA6', '1-a020091dcb326e4fa9eaedea7c4da28d', 'Gaston/adriel', '-34.183397,-58.9680466', '2017-07-25 15:40:02', '', 'Maria cepeda', '', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Cloacas', 'Si'),
(315, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, '9C9769BD-B84E-8FF9-BC44-4ADD8E26F841', '1-79e489e67e0475272f91a8052f04e03f', 'Sandra Gotelli', '', '2017-07-25 15:40:32', '', 'Disna', '', '40-59', 'R', 'R', 'Otro', 'Desempleo,Mal estado del barrio,Inseguridad', 'Si'),
(316, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'C02BE6E2-30DC-D3B5-999E-8758F0698256', '1-d8b48248f6f988834429e7ed2b959c92', 'Gaston/adriel', '-34.1836392,-58.9685617', '2017-07-25 15:45:05', '', 'Idalgo alejandra', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias,Salud', 'Si'),
(317, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'C2365C86-07F1-2B25-9EC2-88A5B44DED34', '1-80bef1045f998caad8595f0840dd57cf', 'Sandra Gotelli', '', '2017-07-25 15:45:07', '', 'María Oviedo', '15680257', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Salud,Cloacas', 'Si'),
(318, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'CD27E988-DFF6-AB01-B698-81A926E6198D', '1-b683219c4307f55ddfa4061846d1d99b', 'Martin', '-34.1828865,-58.9633432', '2017-07-25 15:50:29', '', 'Blanca', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(319, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'D3E7F1B2-D248-EB6A-9607-1BAA58EEBFD0', '1-a8aa929c235fbb1fcc0bab2af68f7e7e', 'Martin', '-34.1829379,-58.9628953', '2017-07-25 15:43:51', '', 'Daniela', '15557343', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Mal estado del barrio,Cloacas', 'Si'),
(320, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'DE95F6D6-5324-C431-857E-FF787C72EA0F', '1-7356a57ddc4218ceee18e9abadddb66f', 'Betty  Vega', '-34.1837255,-58.964799', '2017-07-25 15:52:31', '', 'Cintia', '', '40-59', 'M', 'M', 'NS/NC', 'Inseguridad,Desempleo,Salud', 'No'),
(321, '2017-07-25 15:50:02', '2017-07-25 18:50:02', 0, 'F078DB74-43B2-D0EE-8806-02D85DB51C45', '1-60da0498b64c120b1c021fd6a3984450', 'Betty  Vega', '-34.1837459,-58.9652581', '2017-07-25 15:49:10', '', 'Ludmila', '3489522597', '16-25', 'R', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte,Cloacas', 'Si'),
(322, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '049AA3CE-20D4-E27D-B66A-0938BE3F6563', '1-e288ffb9e92f847e5c82d79c341e1957', 'Martin', '-34.1830427,-58.9623578', '2017-07-25 15:51:54', '', 'Silvia', '', '40-59', 'R', 'R', 'NS/NC', 'Mal estado del barrio,Inseguridad', 'Si'),
(323, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '145BCA10-6280-3260-9CCA-3F0B600473E6', '1-4d5247ed0bd5a13eb85cf197dbbcbc3d', 'Marina', '', '2017-07-25 15:51:51', '', 'Marta angelica Andreini', '3489547042', '40-59', 'R', '', 'Cambiemos', 'Inseguridad,Luminarias,Tránsito/transporte', 'Si'),
(324, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '31AF6A8A-4A53-61DC-98E3-BDE3E5BD457A', '1-dec8d7017a1c0dc87a0f8ec4c7b06498', 'Gaston/adriel', '-34.1832757,-58.969368', '2017-07-25 15:53:14', '', 'Francisco banchiero', '', '26-39', 'B', 'B', 'NS/NC', 'Luminarias,Inseguridad,Cloacas', 'Si'),
(325, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '53CD50A2-5408-DDEF-96EB-1CE18E8FEB99', '1-9ca419652218141612fa140930c31ce1', 'Sandra Gotelli', '', '2017-07-25 15:58:07', '', 'Carlos Barquett', '564432', '26-39', 'B', 'B', 'NS/NC', 'Desempleo,Educación,Inseguridad', 'Si'),
(326, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '74EE43B5-976C-3EB0-A172-99F234E110AE', '1-f9820e249b3a1ef917752351719e593d', 'Gaston/adriel', '-34.1836917,-58.969592', '2017-07-25 15:58:44', '', 'Gregorio duran', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Luminarias', 'Si'),
(327, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, '9D08EFFA-5FD6-0BB5-8363-5BB10FF885B9', '1-14d69f3503b9dd371d7ff076a7cc320d', 'Betty  Vega', '-34.1840654,-58.9648214', '2017-07-25 15:56:05', '', 'Marta', '424799', '+60', 'B', 'B', 'Cambiemos', 'Mal estado del barrio,Cloacas,Desempleo', 'Si'),
(328, '2017-07-25 16:00:06', '2017-07-25 19:00:06', 0, 'C696F8B0-861B-7C1E-9415-0EC0B1CB5030', '1-fc7e900b2153bb69d76148d4e367cf49', 'Alejsndra', '-34.1828455,-58.9566356', '2017-07-25 15:56:20', '', 'Patricia carrazan', '422386', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Mal estado del barrio', 'Si'),
(329, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '16617345-2B08-EC61-963D-49AFF5387747', '1-a9facec9be61f09339bf3f1f56f877a7', 'Betty  Vega', '-34.1838783,-58.9640823', '2017-07-25 16:12:23', '', 'Marcos villafañe', '3489343956', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Cloacas', 'No'),
(330, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '1A379C3C-8ECE-C3F9-BB26-2C5C38E097DD', '1-34243803061a4f487cdc2b92d43336ed', 'Betty  Vega', '-34.1841377,-58.964799', '2017-07-25 16:06:26', '', 'Sofía', '', '16-25', 'R', 'B', 'FPV', 'Inseguridad,Tránsito/transporte,Desempleo', 'Si'),
(331, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '24D6A727-AF76-6B24-B581-32AFB4F47C0F', '1-ea94e822b517894ca7c461b6a62f5cf4', 'Marina', '', '2017-07-25 16:08:35', '', 'Miguel juan antonio garcia', '432709', '+60', 'B', 'B', 'NS/NC', 'Tránsito/transporte', 'Si'),
(332, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '504DC01C-E01E-9830-9BBF-4588DE0A58D0', '1-e7fc0cf7d0f9de74f29ea8138234e436', 'Martin', '-34.1832524,-58.9623354', '2017-07-25 16:02:02', '', 'Duilio', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(333, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '7CF1E444-3D8C-13BA-81E5-8D5DE5FE41A7', '1-7aa61af64aee17b4f4106f1a5e31adeb', 'Martin', '-34.183338,-58.9622906', '2017-07-25 16:05:18', '', 'Oscar', '', '+60', 'R', 'B', 'NS/NC', 'Inseguridad,Cloacas', 'Si'),
(334, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '87DC661E-213E-389D-B787-4D67BF231A33', '1-a18d95bd3b493d658d4268f85b4cd6bf', 'Martin', '-34.1834583,-58.962089', '2017-07-25 16:09:34', '', 'Noemi', '', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio', 'Si'),
(335, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '8B97548D-00E8-CA7E-913D-89BCB8A91981', '1-6ad28c456e27ec2d9322f24906de05a4', 'Gaston/adriel', '-34.1836636,-58.9702639', '2017-07-25 16:06:17', '', 'Estela maris guevara', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Luminarias', 'Si'),
(336, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, '94AE1AF8-FBE5-E5B7-9AF5-25F48AF5E3A6', '1-0e7b9da9dd3de8801b203d9e27c3d9a4', 'Sandra Gotelli', '', '2017-07-25 16:02:37', '', 'José Bernardi', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(337, '2017-07-25 16:10:01', '2017-07-25 19:10:01', 0, 'E51F790B-E54B-DC1D-8E58-870DDDE0A863', '1-8471da83cb4fc354664f70ef54f68711', 'Sandra Gotelli', '', '2017-07-25 16:06:47', '', 'Fernández Santa Victoria', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas', 'Si'),
(338, '2017-07-25 16:20:03', '2017-07-25 19:20:03', 0, '017623FB-E82C-6C8D-9220-1BE0E8184A03', '1-102893fde3e61d3e7b66b732f4ea8468', '24938503', '-34.1817135,-58.9671507', '2017-07-25 16:18:39', '', 'Gregario duran', '15697167', '26-39', 'B', 'B', 'NS/NC', 'Cloacas,Inseguridad', 'Si'),
(339, '2017-07-25 16:20:03', '2017-07-25 19:20:03', 0, '2C602616-2F42-FFCD-B2D8-8E47602B2DCE', '1-4ac53c2a17a9c79157cb178356d07867', 'Gaston/adriel', '-34.1844037,-58.9702079', '2017-07-25 16:11:59', '', 'Jesica oliver', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Luminarias', 'Si'),
(340, '2017-07-25 16:20:03', '2017-07-25 19:20:03', 0, '3869D4C7-39E1-B2B3-8CB4-E2A685850AF9', '1-3b74b36fdb9fa02c2784102fde147747', 'Gaston/adriel', '-34.1842613,-58.9700847', '2017-07-25 16:18:15', '', 'Maria del carmen milivinti', '428149', '40-59', 'B', 'B', 'NS/NC', 'Servicio de Absa,Cloacas,Tránsito/transporte', 'Si'),
(341, '2017-07-25 16:20:03', '2017-07-25 19:20:03', 0, '39247904-50EB-FA4E-B87A-1ED45A0C407B', '1-eda19bc4cb5df4c734f5697d4ad85977', 'Marina', '', '2017-07-25 16:16:51', 'ibanezadrianaedith@gmail.com', 'Adriana ibañez', '', '40-59', 'B', 'B', 'FPV', 'Contaminación', 'Si');
INSERT INTO `app_campana_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`) VALUES
(342, '2017-07-25 16:20:03', '2017-07-25 19:20:03', 0, '3E8B0180-122A-4A6C-AFF9-40AE557A2A8F', '1-faf67404c55d35020673e585a5a1d290', 'Sandra Gotelli', '', '2017-07-25 16:16:10', '', 'Ricardo Muiño', '15521464', '40-59', 'R', 'B', 'Cambiemos', 'Luminarias,Contaminación,Inseguridad', 'Si'),
(343, '2017-07-25 16:20:04', '2017-07-25 19:20:04', 0, '7DA746A2-702B-D4B4-9DCC-767B4B5EF257', '1-86f6e885f610473fe1c6e4063dd4bdce', '24938503', '-34.1818614,-58.9668371', '2017-07-25 16:10:05', '', 'Juan yancobich', '432899', '40-59', 'B', 'B', 'NS/NC', 'Cloacas,Mal estado del barrio', 'Si'),
(344, '2017-07-25 16:20:04', '2017-07-25 19:20:04', 0, 'BBA3D9A5-F831-CFE8-8737-34CD0CE7A2D4', '1-3315323d569ae2b414421fed69ec4603', 'Martin', '-34.1835239,-58.9610252', '2017-07-25 16:17:48', '', 'Francisco', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(345, '2017-07-25 16:20:04', '2017-07-25 19:20:04', 0, 'ED4E63CF-E98D-C698-90ED-598B5F3AAA97', '1-1f70eaceec6a8bc612a7d6a92ca50437', 'Betty  Vega', '-34.1840776,-58.9633208', '2017-07-25 16:17:30', '', 'Mario', '348915573415', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Educación,Salud', 'Si'),
(346, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '11C296BF-655F-7A29-8161-8A5A7225146C', '1-0015d3982d2393fc7275962309886492', 'Marina', '', '2017-07-25 16:20:15', '', 'Noelia', '3489691111', '26-39', 'B', 'B', 'NS/NC', 'Falta de vivienda,Desempleo', 'Si'),
(347, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '1BCB3096-1E38-9990-92F3-90AA61415FFC', '1-00888a683276555e5b34a7b2547c22f6', 'Martin', '-34.1844836,-58.9617195', '2017-07-25 16:22:54', '', 'Sabina', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio', 'Si'),
(348, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '3E1B9A4D-69D8-BA3A-9FAA-A72AD9E6803A', '1-38e48f4bd485809b21f98569f59c1940', 'schirripa jose', '-34.1816301,-58.9654485', '2017-07-25 16:26:44', 'lasole20041@hotmail.com', 'soledad', '', '26-39', 'B', 'B', 'Izquierda', 'Inseguridad,Desempleo', 'No'),
(349, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '6485DE84-9104-3E53-AD79-200543D2A0B8', '1-c7f2401b076ce8a149b2b7aab07a1e6a', 'Martin', '-34.1837577,-58.9627385', '2017-07-25 16:27:21', '', 'Juan Carlos', '', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda', 'Si'),
(350, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '65C35D0A-6787-8627-B6E2-B36DF69DDC0B', '1-0301c9fc6980d9216a408635216d272a', 'Gaston/adriel', '-34.1840848,-58.9690321', '2017-07-25 16:28:35', '', 'Luis godoy', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Luminarias,Educación', 'Si'),
(351, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '6A11AD37-DDC2-7917-8757-097F4EC14A9D', '1-d539b1542883facc7793ad381ff908d5', 'Marina', '', '2017-07-25 16:29:56', '', 'Sandra', '', '40-59', 'R', 'B', 'NS/NC', 'Inseguridad,Falta de vivienda', ''),
(352, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, '7A0F1C80-513E-F515-866C-62EE2747A017', '1-102ecf28d619959f74830012fc764338', 'Sandra Gotelli', '', '2017-07-25 16:28:56', 'carolinainespereyra@gmail.com', 'Carolina Pereyra', '', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si'),
(353, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, 'C9F292FB-AC95-BD79-991E-28AA0971EC53', '1-f7ee3026928bc1d321c19b4d236130be', 'Gaston/adriel', '-34.183827,-58.9692336', '2017-07-25 16:25:25', '', 'Luis pace', '', '40-59', 'B', 'B', 'NS/NC', 'Cloacas,Inseguridad,Luminarias', 'Si'),
(354, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, 'D8723574-785C-6ACF-8048-B985C310BA3E', '1-86a5dcf8ee957b03603d727d784c0d3f', 'Betty  Vega', '-34.1849249,-58.9641047', '2017-07-25 16:29:01', '', 'Alcides', '15546393', '16-25', 'R', 'R', 'NS/NC', 'Salud,Inseguridad,Desempleo', 'Si'),
(355, '2017-07-25 16:30:04', '2017-07-25 19:30:04', 0, 'F68C9971-EF7C-3C58-B213-E144DE9549CB', '1-713832a56b3ec254f395177cc01f6eae', '24938503', '-34.1818504,-58.9677106', '2017-07-25 16:23:49', '', 'Matias angeramo', '15526531', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Desempleo', 'Si'),
(356, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '13269365-2740-5931-B922-25256BE1D237', '1-252edb0dde6e130fe68fbde37b434608', 'M', '-34.1835689,-58.9631864', '2017-07-25 16:38:14', '', 'Maximo', '', '16-25', 'B', 'B', 'NS/NC', 'Desempleo', 'Si'),
(357, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '1A720A05-BF3F-62EB-9178-01139330F339', '1-f93f2584971ea338b45166119c648b92', '23528843', '-34.1870231,-58.964799', '2017-07-25 16:33:38', 'fernandezwalter1964@htmail.com', 'Walter fernandez', '15488888', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Falta de vivienda', 'Si'),
(358, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '235D1119-A62E-D08E-8598-089321DED0C6', '1-c1191875bd4423dcf16a3f02855281ae', 'carlos clavero', '-34.1871943,-58.9626041', '2017-07-25 16:36:56', '', 'elias', '', '16-25', 'B', 'B', 'FPV', 'Inseguridad,Desempleo', 'Si'),
(359, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '2F024C76-2D8F-D8F3-9AEA-544143899B3C', '1-252704b6961007507c0a90ab2c9a550a', 'Gestion.fmibarra@gmail.com', '-34.1862664,-58.9625145', '2017-07-25 16:39:45', '', 'Maria angelica', '430255', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Mal estado del barrio,Cloacas', 'Si'),
(360, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '410E4001-E385-D917-9545-AA4133C3374F', '1-2bb056bb534fe5a2c0ca46c9902d497f', '24938503', '-34.1822405,-58.9679122', '2017-07-25 16:37:54', '', 'Faustino gimenez', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(361, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '420AD4AD-11BE-CA17-A7E0-71AFED42551F', '1-dd4f678a3dd3a174646cb0dd47a1d952', '24938503', '-34.1820978,-58.9711423', '2017-07-25 16:32:23', '', 'Irene velazques', '15594898', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Inseguridad', 'Si'),
(362, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '4651778F-D350-76BB-870E-4E9CAEC953F0', '1-2995399f01cac843628875c67e6a536a', 'carlos clavero', '-34.1871229,-58.9625593', '2017-07-25 16:31:10', '', 'Diana', '', '16-25', 'M', 'R', 'NS/NC', 'Inseguridad', 'Si'),
(363, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '733E612D-05B9-D63A-BE75-3E90040B03AB', '1-c5b8bbaad00acf34215bba1beee6066d', 'Marina', '', '2017-07-25 16:35:29', 'mariaojeda198556@gmail.com', 'Ojeda maria', '', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación', 'Si'),
(364, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '8291B429-1FC2-D2AA-AD37-E51DC94C2597', '1-d8aed7ebea407365ca0e61c5de6a67f9', 'M', '-34.1840158,-58.963556', '2017-07-25 16:35:30', '', 'Rita', '', '+60', 'B', 'B', 'NS/NC', 'Servicio de Absa', 'Si'),
(365, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '8F7BB87A-BCAE-B9F6-ADD3-1D31952ACFC9', '1-c0b3fd4b5a1ada532c56db64076c60be', 'Gaston/adriel', '-34.1844744,-58.9687409', '2017-07-25 16:33:28', '', 'Silvia', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Tránsito/transporte', 'Si'),
(366, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '98C88748-3FAB-406C-BFBC-CA94EBF15AE2', '1-c1d71fcef0b92d804946d564b25045d3', 'Ayelen Isa-40492602', '-34.181444677556,-58.968767440001', '2017-07-25 16:39:28', '', 'Isa ayelen', '', '16-25', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Desempleo,Inseguridad', 'Si'),
(367, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, '9FB05E1D-675B-B04E-8BBB-B5BA841B929C', '1-f10eda2c45f2b90a7216b1ef640235ce', 'Vera mariana-32269643', '-34.181779119833,-58.968627793656', '2017-07-25 16:32:20', '', 'Verá mariana', '348915690506', '26-39', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Educación,Tránsito/transporte', 'Si'),
(368, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, 'B4291B0D-7C83-E1EE-975B-5A065748E558', '1-14fa81c641fec0864dbeb10b89da8b1e', 'Gestion.fmibarra@gmail.com', '-34.1863198,-58.962425', '2017-07-25 16:34:46', '', 'Valwntin rodriguez', '3489528142', '16-25', 'B', 'B', 'Cambiemos', 'Desempleo,Inseguridad,Cloacas', 'Si'),
(369, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, 'BBED329E-3697-D3CB-875E-D8F972D984A1', '1-6c3343a2b4c198e811299a9f4efdb658', 'Martin', '-34.1841219,-58.9629177', '2017-07-25 16:31:08', '', 'Gisela', '', '26-39', 'R', 'R', 'NS/NC', 'Cloacas,Mal estado del barrio', 'Si'),
(370, '2017-07-25 16:40:03', '2017-07-25 19:40:03', 0, 'BD2B157A-1BF9-6AE6-9BDA-610DE669E97E', '1-b1fe1c2728053e8c6aedaec090e23b2d', 'schirripa jose', '-34.1807539,-58.9654037', '2017-07-25 16:34:06', 'andybartol@hotmail.com', 'andres', '', '26-39', 'B', 'B', 'Cambiemos', 'Cloacas,Tránsito/transporte', 'Si'),
(371, '2017-07-25 16:40:04', '2017-07-25 19:40:04', 0, 'CF473136-78F8-0D96-96D9-9ECF91791839', '1-aa709749f49d6945f61494f184b221fc', 'schirripa jose', '-34.1804749,-58.964687', '2017-07-25 16:38:31', 'hfleytad2009@hotmail.com', 'fleyta hugo', '', '26-39', 'B', 'B', 'NS/NC', '', 'Si'),
(372, '2017-07-25 16:40:04', '2017-07-25 19:40:04', 0, 'D80F3566-7794-58C9-87CF-0033B6E9A5DB', '1-c46581faafce82efe01c162a1d987d5d', 'Betty  Vega', '-34.1847148,-58.9652133', '2017-07-25 16:41:24', '', 'Walter yancovich', '580239', '40-59', 'B', 'R', 'FPV', 'Inseguridad', 'Si'),
(373, '2017-07-25 16:40:04', '2017-07-25 19:40:04', 0, 'EAD9D3D9-30A3-8CC3-8F34-5312E1C7F951', '1-4eaaa5af2513ffa85be5d3942ec325ba', 'Marina', '', '2017-07-25 16:38:18', '', 'Estela rey', '3489552799', '+60', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo,Salud', 'Si'),
(374, '2017-07-25 16:40:04', '2017-07-25 19:40:04', 0, 'F33EB727-361E-9018-85A1-AB56AAD49050', '1-86dfa0d20ab82afa3a6ea0d350198c4c', 'Betsabe arias', '-34.1818254,-58.967621', '2017-07-25 16:36:36', 'nati.lu.k@hotmail.com', 'Ramirez Natalia', '15488642', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(375, '2017-07-25 16:40:04', '2017-07-25 19:40:04', 0, 'F974412E-CB8F-CCC1-A32E-BD1FC38580B6', '1-3b4f9fa4937dcde9a83cc27d5fd8b552', 'carlos clavero', '-34.187249,-58.9624138', '2017-07-25 16:34:47', '', 'graff Rodrigo', '', '16-25', 'R', 'M', 'NS/NC', 'Desempleo,Inseguridad', 'No'),
(376, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '0C457A20-3E8F-C1D0-9990-70C2A4EEF079', '1-53e61cf56b0dea94fb41ca86e01c689f', '24938503', '-34.1822865,-58.967901', '2017-07-25 16:46:00', '', 'Jorge yancobich', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Desempleo', 'Si'),
(377, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '1C651D08-0C9F-980A-BE0B-88113A14C962', '1-00f8376334937f2593a776e5beb73f69', 'Gestion.fmibarra@gmail.com', '-34.1861494,-58.9624474', '2017-07-25 16:42:28', '', 'Tamata', '', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Educación,Mal estado del barrio', 'No'),
(378, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '2A368589-94EB-916E-878A-0C36F8CAD9FF', '1-c76c098369ee0aadc7f7d7c5f27552bc', 'carlos clavero', '-34.1882993,-58.9621338', '2017-07-25 16:47:29', '', 'analia Escobar', '3489533480', '40-59', 'B', 'B', 'NS/NC', 'Luminarias,Falta de vivienda,Inseguridad', 'Si'),
(379, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '4FEE1CAD-EFD8-D0E0-B82E-E7749CF89747', '1-44be8f240afe7c17e708211fe21f3694', 'Santiago Castro', '-34.1882349,-58.9659979', '2017-07-25 16:41:00', '', 'Nuñez Sergio', '', '40-59', 'R', 'R', '', 'Luminarias', 'Si'),
(380, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '50B4D737-A1DE-F25C-9999-C332FF92EF92', '1-f50893cc589dc820ba9e350acc42a745', '23528843', '-34.1877648,-58.9644749', '2017-07-25 16:39:58', 'micabancalati@gmail.com', 'Micaela bancalari', '681267', '16-25', 'R', 'B', 'NS/NC', 'Desempleo,Inseguridad,Falta de vivienda', 'Si'),
(381, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '6E2B9E9A-7C6A-2208-AB8D-E6DBBD7A1B7E', '1-b261f56a9cbd02240f6449a8378e9666', 'M', '-34.1833781,-58.963276', '2017-07-25 16:41:52', '', 'Raul', '', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(382, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, '9711B1E6-391D-5A19-9E98-96732D563722', '1-10568cd2dba2364d4f09bf48b2651049', '23528843', '-34.1878476,-58.9634419', '2017-07-25 16:48:12', 'senaevelyn5@gmail.com', 'Evelyn sena', '439202', '16-25', 'R', 'R', 'NS/NC', 'Inseguridad,Desempleo,Luminarias', 'Si'),
(383, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'A25C6994-9423-62B1-AE62-727CCB567988', '1-d21d38198ab2f57bbf49f0573f70ba58', 'Betsabe arias', '-34.1815209,-58.9673746', '2017-07-25 16:45:02', '', 'Rodriguez maximo', '15518413', '+60', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Luminarias', 'Si'),
(384, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'BC3800F7-09AC-7541-B0FC-7DFDDBBBA2F2', '1-161d5289e9b079520c764cd0bc7822c9', 'Nestornicotra@gmail.com', '-34.1882349,-58.9659979', '2017-07-25 16:40:44', '', 'Daniel damiolini', '', '40-59', 'R', 'B', 'FPV', 'Desempleo,Cloacas,Servicio de Absa', 'Si'),
(385, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'C9447C61-43BF-8666-8E51-59ADE5513702', '1-19dc6c5e204ddafe24cac7ad29df6c37', 'Marina', '', '2017-07-25 16:44:43', '', 'Delia Lares', '', '+60', 'R', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(386, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'DDB07D97-08D2-E858-8E07-585BA74AF441', '1-29f7f116f03c269b3f503913e469bc31', 'Americo González-12442283', '-34.181625485163,-58.968748730943', '2017-07-25 16:46:48', '', 'Americo González', '3489559035', '40-59', 'B', 'B', 'NS/NC', 'Contaminación', 'Si'),
(387, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'DE723A32-355C-6922-B3FB-F6DF0404E7CA', '1-750c4fe8d093419c8aa6d0aeaee20ea3', 'carlos clavero', '-34.1880258,-58.9625593', '2017-07-25 16:40:28', '', 'horacio', '', '26-39', 'R', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(388, '2017-07-25 16:50:01', '2017-07-25 19:50:01', 0, 'EB75EFB6-0892-A850-AD53-F691C1A601A9', '1-2004376d2a57b050bc1d5c9155b7744d', 'Betty  Vega', '-34.1847449,-58.9654261', '2017-07-25 16:48:17', '', 'Marcos quiña', '437056', '+60', 'M', 'R', 'FPV', 'Mal estado del barrio,Inseguridad,Contaminación', 'No'),
(389, '2017-07-25 16:50:02', '2017-07-25 19:50:02', 0, 'F1B6E596-FADD-BE93-A2B9-AF19DE5D93A3', '1-d5e60c1f4452a3f9cdba9d5441bfc946', '23528843', '-34.1877598,-58.9644854', '2017-07-25 16:43:07', '', 'Lautaro fernandez', '536793', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Salud', 'Si'),
(390, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '00D0D60D-4550-616E-A16F-9A45ECFA6375', '1-6f4884be2c4249f69e3e8f7d58e92155', 'Marina', '', '2017-07-25 16:59:21', '', 'Yanina Monzon', '3489248962', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo,Educación', 'Si'),
(391, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '0AA10332-2981-D9C6-BA53-74807B42C1E3', '1-c8c31a70feeed20d64d37c59f5b486a5', 'Santigo castro', '-34.1870335,-58.9650118', '2017-07-25 16:59:11', '', 'Juan Carlos Delima', '', '40-59', 'B', 'B', 'Cambiemos', '', 'No'),
(392, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '20156CC8-FB02-F5F9-BE3F-D2003546CDC2', '1-d15f829bfb4dade8e9add90cfd63e1bd', 'Gestion.fmibarra@gmail.com', '-34.1883173,-58.9627945', '2017-07-25 16:53:58', '', 'Villaba', '', '+60', 'M', 'B', 'Cambiemos', 'Servicio de Absa,Luminarias,Cloacas', 'Si'),
(393, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '356908EF-DC44-235E-AD4F-31DAFB51E9FA', '1-bd0423be55317b7b0ce5ff5e8042d891', '24938503', '-34.1820367,-58.9679906', '2017-07-25 16:52:30', '', 'Módica roldan', '15570857', '40-59', 'B', 'R', 'NS/NC', 'Inseguridad,Desempleo,Salud', 'Si'),
(394, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '35E48010-8649-914D-A549-2EB6CCDC89EE', '1-0094daeda9d34a4f038e5e0db2b9a53d', '24938503', '-34.1817777,-58.9682929', '2017-07-25 16:55:39', '', 'Nelqui cisterna', '', '+60', 'B', 'B', 'Otro', 'Cloacas,Mal estado del barrio', 'Si'),
(395, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '493B70C3-75CC-1BAB-835E-F60BDE9CE236', '1-ed2cc7afe04c98f145283a941d5e5825', 'Betsabe arias', '-34.18065,-58.9684721', '2017-07-25 16:55:49', '', 'Libertad Estevez', '', '+60', 'R', 'R', 'NS/NC', 'Luminarias,Mal estado del barrio', ''),
(396, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '5B56B49F-6AC0-A915-805A-9241644FD8D0', '1-3820821d9202a5c1c6ca96b3cb617af0', 'José Gómez- 21946152', '-34.181562303406,-58.968794064537', '2017-07-25 16:54:25', '', 'José gomez', '', '40-59', 'B', 'B', 'Cambiemos', 'Cloacas,Mal estado del barrio,Inseguridad', 'Si'),
(397, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '5E19EC9D-939A-621B-8355-9B9BCA95E314', '1-bfd4190c29eef168c619677b932316d7', 'Gestion.fmibarra@gmail.com', '-34.1883931,-58.9629758', '2017-07-25 16:58:42', '', 'Anibal', '15633546', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Servicio de Absa', 'Si'),
(398, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '6B56EB9F-8FFC-4FC9-8178-463AAEC1F15D', '1-11f9900d6f2c51090bc991ef2fdcd1cf', 'carlos clavero', '-34.187234,-58.9620442', '2017-07-25 16:51:47', '', 'hector', '3489498866', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(399, '2017-07-25 17:00:01', '2017-07-25 20:00:01', 0, '6E026492-BD78-C7BD-80A8-1997E1D01885', '1-f351e0e31133ea595d3c70d6471468d6', 'Nestornicotra@gmail.com', '-34.1881551,-58.9674082', '2017-07-25 16:58:08', '', '', '', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Servicio de Absa,Luminarias', 'No'),
(400, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, '8E906572-968E-1B23-9A79-2588EE120B01', '1-7686e9f017e8dbeb3d9497b4e9cd4a51', 'Marina', '', '2017-07-25 16:54:19', '', 'Norma edith coronel', '', '40-59', 'R', 'R', 'FPV', 'Inseguridad,Desempleo,Mal estado del barrio', 'Si'),
(401, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'A7AE1A99-FEF2-EED9-B673-65B58103C14F', '1-0664960043671a6118aa69610d99e470', '24938503', '-34.1817961,-58.9683937', '2017-07-25 16:59:54', '', 'Facundo dosantos', '15539023', '16-25', 'R', '', '', 'Desempleo,Mal estado del barrio', 'Si'),
(402, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'AEAAAB66-604F-29FD-95D7-0029B901C026', '1-ee501ded8a02a13189aeeb908a1da9db', '23528843', '-34.1874144,-58.9648998', '2017-07-25 16:54:37', '', 'Horacio pisasic', '423194', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Desempleo', 'Si'),
(403, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'B743303E-6194-8B60-A76E-9147E8EAABE6', '1-89ac56f574ca882c66d6714a53e3f86e', 'Marina', '', '2017-07-25 16:50:32', '', 'Natalia', '3489448601', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas', 'Si'),
(404, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'D0684A05-585D-BE8A-AF7E-AA4532F5990C', '1-326a8f56898bf7038b96df6d8fd031ed', '24938503', '-34.1817836,-58.9683489', '2017-07-25 16:58:07', '', 'Diana gomes', '15682345', '26-39', 'B', '', 'NS/NC', 'Mal estado del barrio', 'Si'),
(405, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'D3D18275-FBBF-4036-8696-EF28C548613F', '1-3e3545010e5bfd43e56796f00c9c738c', 'Gestion.fmibarra@gmail.com', '-34.1883931,-58.9629758', '2017-07-25 16:56:37', '', 'Melian', '485576', '16-25', 'R', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Servicio de Absa', 'No'),
(406, '2017-07-25 17:00:02', '2017-07-25 20:00:02', 0, 'F5CC0F55-6959-E5A6-97B4-F5DCEA25B0D1', '1-a53d8dab0ffe04fc9b35970dbfa366f2', 'Santigo castro', '-34.187401,-58.9649222', '2017-07-25 16:53:40', '', 'Juan', '', '26-39', 'B', 'B', '', 'Inseguridad,Luminarias', 'Si'),
(407, '2017-07-25 17:10:02', '2017-07-25 20:10:02', 0, '16EF62D1-6E72-747B-A90C-678B56082CB9', '1-2a2ac2e6d8112a4002f85f08bde8acbb', 'Gestion.fmibarra@gmail.com', '-34.1877113,-58.9631192', '2017-07-25 17:06:50', '', 'Daniel', '617359', '40-59', 'B', 'B', 'Cambiemos', 'Cloacas,Mal estado del barrio,Inseguridad', 'Si'),
(408, '2017-07-25 17:10:02', '2017-07-25 20:10:02', 0, '1A07C4E1-F6AF-325B-AD35-152AC55E0EFD', '1-59eb463533fa28a8e9b90a211273ef37', 'Betsabe arias', '-34.1808452,-58.9669939', '2017-07-25 17:04:50', '', 'Guillermo', '', '+60', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Cloacas,Tránsito/transporte', 'No'),
(409, '2017-07-25 17:10:02', '2017-07-25 20:10:02', 0, 'A54BC5B2-0F16-A8CD-A5C3-9C83DDA55F4A', '1-2e06f36239922ba34ffc00e6afe7df35', '24938503', '-34.18204,-58.9687745', '2017-07-25 17:09:20', '', 'Rodrigo rivatola', '', '26-39', 'B', 'B', 'NS/NC', 'Luminarias,Mal estado del barrio', 'Si'),
(410, '2017-07-25 17:10:02', '2017-07-25 20:10:02', 0, 'A9FDCE8B-5295-4312-A9AB-8F12E29A799A', '1-46d3e34686bd8151f6728122eb3e2886', '24938503', '-34.1819688,-58.9687897', '2017-07-25 17:04:15', '', 'Orrego anastacia', '', '40-59', 'R', 'R', 'NS/NC', 'Cloacas,Mal estado del barrio,Luminarias', 'Si'),
(411, '2017-07-25 17:10:02', '2017-07-25 20:10:02', 0, 'DAABA2B9-08C6-5B7F-A0A4-A6C40A5763A9', '1-500ee8bc56d941f292285b70d091297b', 'Santigo castro', '-34.1872974,-58.9648326', '2017-07-25 17:03:39', '', 'Olivera Jesus', '348715558834', '26-39', 'R', 'R', '', 'Desempleo', 'No'),
(412, '2017-07-25 17:20:04', '2017-07-25 20:20:04', 0, '9E426DD6-26FA-9EDE-B10B-5E167E86A933', '1-f98394f5e046121c5bb1cc7c2752d7d5', '24938503', '-34.1827985,-58.9682929', '2017-07-25 17:12:36', '', 'Alberto moreira', '15524025', '26-39', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Inseguridad,Educación', 'Si'),
(413, '2017-07-25 17:20:04', '2017-07-25 20:20:04', 0, 'D4F3F3AF-6EC3-C940-B95B-407A5F44002E', '1-458eb38ae1d202ac324c0f01b3d7802a', '24938503', '-34.1827132,-58.9688305', '2017-07-25 17:17:03', '', 'Claudio martinez', '15595334', '40-59', 'B', 'B', 'NS/NC', 'Luminarias,Cloacas,Inseguridad', 'Si'),
(414, '2017-07-25 17:30:01', '2017-07-25 20:30:01', 0, '21F8F8FC-0DF6-1182-9D35-34B2C2CB50CE', '1-55282bf9affe4a4371a8f41fe2516168', '24938503', '-34.18253,-58.9672627', '2017-07-25 17:28:32', '', 'Norma', '', '+60', 'B', 'B', 'Otro', 'Inseguridad,Tránsito/transporte', 'No'),
(415, '2017-07-25 17:30:01', '2017-07-25 20:30:01', 0, '4ECFD032-F654-1EDA-9C54-A49CF24CCDE9', '1-63e9dcd5956ac5cde38fd313a73f1b1b', 'Gestion.fmubarea@gmail.com', '-34.1879639,-58.9637876', '2017-07-25 17:26:57', '', 'Raul liben', '', '40-59', 'B', 'B', 'NS/NC', 'Cloacas,Contaminación,Inseguridad', 'Si'),
(416, '2017-07-25 17:30:01', '2017-07-25 20:30:01', 0, '6D0BBDB7-1200-30C5-B2A8-A088F12B9A70', '1-0a9203d3779334558492e996c2623067', '23528843', '-34.1870556,-58.9638912', '2017-07-25 17:20:00', '', 'Franco villegas', '562826', '16-25', 'B', 'R', 'NS/NC', 'Inseguridad,Luminarias,Cloacas', 'No'),
(417, '2017-07-25 17:30:02', '2017-07-25 20:30:02', 0, '8534F282-D076-077E-B081-BA1B977B4421', '1-3fe76ea2573be154a193cb15010ab44b', '23528843', '-34.1879639,-58.9637876', '2017-07-25 17:24:30', '', 'Cristian villegas', '695504', '16-25', 'R', 'R', 'NS/NC', 'Desempleo,Educación,Inseguridad', 'No'),
(418, '2017-07-25 17:30:02', '2017-07-25 20:30:02', 0, 'A0B464F6-091D-E9C7-9308-49D486081BA9', '1-f4dc6a7dc1ef7545831c370b4cd3ce24', '24938503', '-34.1827117,-58.9673858', '2017-07-25 17:24:26', '', 'Garcia sergio', '424509', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Luminarias', 'Si'),
(419, '2017-07-25 17:30:02', '2017-07-25 20:30:02', 0, 'AC6F0455-0CFB-B65D-A343-4083ED363B01', '1-9200a29567ca1e32a104d0ca16845caa', 'Gestion.fmubarea@gmail.com', '-34.1876462,-58.9634237', '2017-07-25 17:23:21', '', 'Pablo miguel', '687113', '26-39', 'B', 'B', 'Cambiemos', 'Cloacas,Inseguridad,Servicio de Absa', 'Si'),
(420, '2017-07-25 17:40:02', '2017-07-25 20:40:02', 0, '1B86B579-FD42-E6C2-8E4F-7AD88D3BE4A1', '1-0e7bccbed5051ea2355b07eb1d034b67', 'Gestion.fmibarra@gmail.cpm', '-34.1879639,-58.9637876', '2017-07-25 17:33:17', '', 'Karina', '312410', '40-59', 'M', 'B', 'NS/NC', 'Cloacas,Luminarias,Contaminación', 'No'),
(421, '2017-07-25 17:40:02', '2017-07-25 20:40:02', 0, '2634BED6-8D19-0E53-BC3E-13F0AD4A8530', '1-2b5d7373783db11a05316cd8501db1c9', '23528843', '-34.1879639,-58.9637876', '2017-07-25 17:32:17', '', 'Mariela fajardo', '594515', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Cloacas', 'Si'),
(422, '2017-07-25 17:40:02', '2017-07-25 20:40:02', 0, '3C41F326-BFA2-A978-BDA4-5DE8C4F1A17D', '1-c34adb1ce40774a68edeee706006ef78', '24938503', '-34.1824235,-58.9668819', '2017-07-25 17:35:12', '', 'Silvia fernandez', '425889', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(423, '2017-07-25 17:40:02', '2017-07-25 20:40:02', 0, '6FE812B1-7C16-8744-8208-D47FC18E895E', '1-e96fb7a256ca3ae68f9cd7f22cd8b0aa', '24938503', '-34.1828813,-58.9669043', '2017-07-25 17:33:22', '', 'Jonatan castillo', '', '16-25', 'R', 'M', 'NS/NC', 'Mal estado del barrio', 'Si'),
(424, '2017-07-25 17:40:02', '2017-07-25 20:40:02', 0, '8CC0921B-127A-1F68-8E22-05599157437F', '1-03a8b4a857b9ee65d2d75f9c004e32bc', '24938503', '-34.1827513,-58.9673522', '2017-07-25 17:31:22', '', 'Lobos micaela', '', '16-25', 'M', 'R', 'FPV', 'Inseguridad,Luminarias,Desempleo', 'Si'),
(425, '2017-07-25 17:50:02', '2017-07-25 20:50:02', 0, '112EE00F-FD57-A3E4-BC61-B9727B3DB8A0', '1-326f58c48182c6e45c0191b248b91c35', 'Jose Alvarez Bonola', '-34.1826535,-58.9673789', '2017-07-25 17:40:11', '', 'Nora Olga Canale', '468809', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas,Luminarias', 'Si'),
(426, '2017-07-25 17:50:02', '2017-07-25 20:50:02', 0, '155E76BF-B678-4062-B0B5-9AEA22934DB0', '1-4d01b3ede2da80c9a0d766770d92b49e', '23528843', '-34.1869968,-58.9637575', '2017-07-25 17:45:10', '', 'Melany  cevalles', '344747', '16-25', 'R', 'B', 'NS/NC', 'Desempleo,Inseguridad,Falta de vivienda', 'Si'),
(427, '2017-07-25 17:50:02', '2017-07-25 20:50:02', 0, '40C402FE-C500-D09D-B3FE-9E462FC298C2', '1-c8bebc9812874d38972771305d7820dc', '23528843', '-34.1875468,-58.963724', '2017-07-25 17:42:14', '', 'Genoveva roca', '321605', '+60', 'R', 'R', 'NS/NC', 'Inseguridad,Luminarias,Tránsito/transporte', 'No'),
(428, '2017-07-25 17:50:02', '2017-07-25 20:50:02', 0, '823E784A-C443-F866-99A9-1DC2AA0DCF05', '1-8ccd3582561ffe76167f3a8814737323', '24938503', '-34.1823646,-58.9668819', '2017-07-25 17:40:29', '', 'Roberto yancobich', '', '+60', 'M', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Cloacas', 'Si'),
(429, '2017-07-25 17:50:03', '2017-07-25 20:50:03', 0, 'E60D1109-C757-0916-AF08-F5BE3C3D67BD', '1-941315fa70f88ebe8482ade4497118b8', '24938503', '-34.1822602,-58.9668595', '2017-07-25 17:44:13', '', 'Maria cepedas', '', '40-59', 'M', 'R', 'NS/NC', 'Inseguridad,Mal estado del barrio', 'Si'),
(430, '2017-07-25 17:50:03', '2017-07-25 20:50:03', 0, 'FA2D6E46-0E55-B3A2-83C4-6FDFE082245C', '1-b5015af9ae29ab73cdb9e6717f7d862f', 'Gestion.fmibarra@gmail.cpm', '-34.1865675,-58.9630297', '2017-07-25 17:41:52', '', 'Roberto', '', '+60', 'B', 'B', 'Cambiemos', 'Cloacas,Servicio de Absa,Luminarias', 'Si'),
(431, '2017-07-25 18:00:02', '2017-07-25 21:00:02', 0, '7B710F49-831D-6A3A-B277-36320019CE3A', '1-91f1521eb677df998ab28f7c5045c3a2', '23528843', '-34.1869943,-58.9639591', '2017-07-25 17:50:28', '', 'Virginia de lima', '15513191', '+60', 'B', 'B', 'NS/NC', 'Inseguridad', 'No'),
(432, '2017-07-25 18:10:02', '2017-07-25 21:10:02', 0, '41564E3D-921B-80D2-A2AC-7528C0FFF4F8', '1-e73800c697ea7ce8eb35f0cbe3cf19d9', 'Jose Alvarez Bonola', '-34.1850645,-58.9671503', '2017-07-25 17:49:22', '', 'Cecilia Fernandez', '15499911', '26-39', 'B', 'B', 'Cambiemos', 'Desempleo,Educación,Inseguridad', 'Si'),
(433, '2017-07-25 18:10:02', '2017-07-25 21:10:02', 0, '502E87AD-303F-0174-A354-472B60BBF532', '1-22d2ebc5dbad0aa26590effae229eaff', 'Jose Alvarez Bonola', '-34.1850645,-58.9671503', '2017-07-25 18:02:50', '', 'Susan Micucci', '', '+60', 'B', 'R', 'NS/NC', 'Tránsito/transporte,Educación,Inseguridad', 'Si'),
(434, '2017-07-25 18:20:03', '2017-07-25 21:20:03', 0, '165412A7-EFDE-3907-B5B2-7FB0B5E7ACE1', '1-a71d0f7c0f180dbe8d7ad67c80171003', '23528843', '-34.1794416,-58.9538394', '2017-07-25 18:10:09', '', 'Mario domingo moreyra', '699854', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(435, '2017-07-27 16:20:03', '2017-07-27 19:20:03', 0, 'CB671D76-E51C-200A-8C49-6A9774A199A3', '1-e7bb303d53905b650a127ab63fb547c1', '37434646', '-34.1959561,-58.9677554', '2017-07-27 16:18:48', '', '', '', '', '', '', '', '', ''),
(436, '2017-07-27 16:30:01', '2017-07-27 19:30:01', 0, '0D1CE92A-9DCF-E750-A8ED-E778E9324CCE', '1-cb95f13118c52033713064636915801d', '26314469', '-34.1962864,-58.971108', '2017-07-27 16:27:31', '', 'limpia orue', '430333', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Educación,Contaminación', 'Si'),
(437, '2017-07-27 16:30:01', '2017-07-27 19:30:01', 0, '421A0D35-35B6-B86B-B7C4-52B6DEE531C5', '1-51cd43d76888f0f25dc2c5609e77cd49', 'Roxana', '-34.1968236,-58.9621562', '2017-07-27 16:28:31', '', '', '', '', '', '', '', '', ''),
(438, '2017-07-27 16:30:01', '2017-07-27 19:30:01', 0, '75C8DBBC-9503-B030-9A7B-32BE9A113804', '1-e8ae8847b8845055cfca519f4c9b3c23', 'Leandro', '-34.198221,-58.9665907', '2017-07-27 16:29:57', '', 'Leandro', '', '26-39', 'R', 'B', 'Cambiemos', 'Inseguridad,Cloacas', 'Si'),
(439, '2017-07-27 16:30:01', '2017-07-27 19:30:01', 0, '98B29238-D9E9-72BB-9E40-AA8421A91F93', '1-4830f806c0cf98dab205fcf21559068d', 'Roxana', '-34.196695,-58.961977', '2017-07-27 16:27:51', '', '', '', '', '', '', '', '', ''),
(440, '2017-07-27 16:30:01', '2017-07-27 19:30:01', 0, 'BA94FCD1-0731-FA10-83E8-287B5406EE10', '1-15623d44034e2d1fef14353840e5af87', '30612260', '-34.1960258,-58.9679346', '2017-07-27 16:26:14', '', 'Vanina', '15629894', '26-39', 'B', 'B', 'Cambiemos', 'Luminarias', 'Si'),
(441, '2017-07-27 16:30:02', '2017-07-27 19:30:02', 0, 'DF72DE6B-DD2B-F894-AEBD-95EE0686B33A', '1-1c86babf72b66c5e3ffef9931de0af11', 'Roxana', '-34.1966883,-58.9619882', '2017-07-27 16:27:15', '', '', '', '', '', '', '', '', ''),
(442, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '06DF92EA-1458-CCCA-9970-82A7FCA9F2AF', '1-a602b67e70706718047980f553b20cac', 'Roxana', '-34.1967138,-58.9620442', '2017-07-27 16:29:16', '', '', '', '', '', '', '', '', ''),
(443, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '0AEAFE17-7A02-60A8-82EA-65CE65BCD331', '1-5c20fc53d863fa48ff73bf029bbf9016', 'Márgara Pons', '-34.1964095,-58.9702191', '2017-07-27 16:33:33', '', 'César Oscar Netto', '15657987', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad', 'No'),
(444, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '1367C078-8D99-6026-9A28-01C0C5FE4D1C', '1-2f0c0b9b949af379b66192401cd5000e', 'ruben roldan', '-34.1983338,-58.9680466', '2017-07-27 16:33:32', '', 'roldal', '3489680301', '40-59', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(445, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '13F10A56-1351-374C-8889-7DFF79547A70', '1-a52f1364d4b73f542c62c286354f9f94', 'Marina', '', '2017-07-27 16:32:16', '', 'Arturo Cardoso', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Cloacas', 'Si'),
(446, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '1F200FCC-024A-3865-8007-2CACE478CE7F', '1-9c8692b2e3900c1c2e16fe1458d96ad0', 'Roxana', '-34.1967263,-58.962089', '2017-07-27 16:36:16', '', 'Sara', '15553814', '40-59', 'M', 'R', 'NS/NC', 'Inseguridad,Cloacas', 'No'),
(447, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '41172C52-23D8-41F4-97E6-8FAF4F8A7CC8', '1-275b3ac62e5070f0fd7fc7e570e14745', 'ruben roldan', '-34.1986061,-58.9677218', '2017-07-27 16:37:57', '', '', '', '', 'R', 'R', 'NS/NC', '', ''),
(448, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '4B41A6D5-3F60-5669-B16D-A64562661615', '1-cf8a7b3b2126c85d4a2c7776c70dc30b', 'Márgara Pons', '-34.1967996,-58.9704207', '2017-07-27 16:39:29', '', 'Wilde Ismael', '15565751', '+60', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(449, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '5BE6F99B-03F8-7EAC-A498-41F3DAF86CB6', '1-f1344c68244e6222576ef1be0ae16202', 'ruben roldan', '-34.198505,-58.967957', '2017-07-27 16:36:21', '', '', '', '', '', '', '', '', ''),
(450, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '61352275-3754-6BDF-BEDC-EEB784E64DF8', '1-c48e5cbb7607253a40a3200f5ba3af6c', 'Alejandra', '-34.1970944,-58.9667027', '2017-07-27 16:33:25', '', '', '', '', '', '', '', '', ''),
(451, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '6A0BC56D-469D-33B2-91C3-68B6220A8016', '1-0ac7ee8a9417520852d7a949d59bea53', '23528843', '-34.1986102,-58.9663332', '2017-07-27 16:36:11', '', '', '', '', '', '', '', '', ''),
(452, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '6BC36B38-2ECF-C960-8B97-9BD6542B98FD', '1-06f91bc44b17257de710829d22273839', 'Alejandra', '-34.1970685,-58.9666803', '2017-07-27 16:36:54', '', 'Gabriela cisneros', '421985', '26-39', 'B', 'B', 'Unidad Ciudadana (Alejo Sarna)', 'Inseguridad,Salud,Higiene', 'Si'),
(453, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '78843B5E-0B28-A1C6-8264-996AD0F2FCF3', '1-b704ee94594a67dde3575ef50f1f225c', 'Marina', '', '2017-07-27 16:35:07', '', 'Maria del carmen Lago', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo', 'Si'),
(454, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '7EAE592C-BC3F-E89F-89B6-349305611AFB', '1-84283fd0fe88927aa391ce4874acf566', 'Marina', '', '2017-07-27 16:39:53', '', 'Vera Gisela', '', '26-39', 'R', 'R', 'NS/NC', 'Desempleo,Inseguridad,Espacio Público', 'Si'),
(455, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '81548C96-1254-DCCE-B2B0-B46E0F2E5CAB', '1-fce436ce513e4ae2df64cc55a95a0d56', '23528843', '-34.1986787,-58.9666131', '2017-07-27 16:34:38', '', '', '', '', '', '', '', '', ''),
(456, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '8326EE8A-8F0F-5983-B09E-4C6DD9422069', '1-66b7363a03314eaabbd18433b413af84', 'Roxana', '-34.196895,-58.962201', '2017-07-27 16:37:57', '', '', '', '', '', '', '', '', ''),
(457, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '8FBBCC87-5C5C-A04A-A23D-C06FD505EEEB', '1-02b1b616b2e8ee38a5b0613cfee1c1b9', 'ruben roldan', '-34.198353,-58.9680802', '2017-07-27 16:35:33', '', '', '', '', '', '', '', '', ''),
(458, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '92E1AA60-928C-A220-9FA2-4900A2ED2B0B', '1-216f2c5a0a011fd813a442a0f7b7244a', 'Marina', '', '2017-07-27 16:36:34', '', '', '', '', '', '', '', '', ''),
(459, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '9BE5A9D8-1FBC-E162-8F65-E5A85D6DE602', '1-51645ac70fd90bf7ab496a957acfdf30', 'Roxana', '-34.1968699,-58.9621114', '2017-07-27 16:37:32', '', '', '', '', '', '', '', '', ''),
(460, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '9DAEA492-C15F-25A9-8315-8D602AB97A66', '1-351553292b776040347ad7a0e03a1be4', '30612260', '-34.1963936,-58.9714958', '2017-07-27 16:35:59', '', 'Agustina', '596651', '16-25', 'R', 'R', 'Cambiemos', 'Desempleo', 'Si'),
(461, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, '9DC81866-BCFC-8227-8788-F00D3B94BE91', '1-f3dc084f9e56f98c9d94eaafd9bb034d', '26314469', '-34.1964019,-58.9710297', '2017-07-27 16:33:21', '', 'blanco esteban', '', '+60', 'R', 'B', 'NS/NC', 'Inseguridad,Cloacas,Tránsito/transporte', 'Si'),
(462, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, 'B5C26800-E38C-D988-BC97-BCAC4653628A', '1-1b987dc649e96bdcd37d5730d2bd37b7', '23528843', '-34.1983689,-58.9668035', '2017-07-27 16:33:15', '', '', '', '', '', '', '', '', ''),
(463, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, 'C55E877F-1C2C-FDB3-972E-DCF3C8271775', '1-7d541211ecd698430c7e8a5fabc541b6', '26314469', '-34.1964019,-58.9710297', '2017-07-27 16:30:59', '', 'elena aranda', '431176', '+60', 'B', 'B', 'NS/NC', 'Desempleo', 'Si'),
(464, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, 'EAD3BC2D-2977-C336-9057-EE93BB2DB5E5', '1-dc6b80282ab66d280455d77e90bad5be', '30612260', '-34.1967432,-58.9712718', '2017-07-27 16:39:10', '', '', '', '40-59', 'R', 'B', 'Unidad Ciudadana (Ruben Romano)', 'Inseguridad', 'No'),
(465, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, 'F3A5169F-8777-182C-AB69-FFFEE5E27246', '1-b31cc38ea4b53412fa591805feb3a8b6', 'Leandro', '-34.1986094,-58.9669267', '2017-07-27 16:33:11', '', 'Clotilde', '15695434', '+60', 'B', 'B', 'NS/NC', 'Inseguridad', 'No'),
(466, '2017-07-27 16:40:02', '2017-07-27 19:40:02', 0, 'F666B1E6-17E8-099D-9B17-E03DEADB23DF', '1-42c25f2740a882cbf02d09fcc46ff548', 'Leandro', '-34.1985835,-58.966378', '2017-07-27 16:38:55', '', 'Guadalupe', '348915563379', '16-25', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(467, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '05208982-5354-6E76-AEF5-5A0FED83B233', '1-c26a9ccbd3184868f5375426dc0be569', '30612260', '-34.1969921,-58.9712494', '2017-07-27 16:41:20', '', '', '', '26-39', 'R', '', 'Frente Socialista y Popular', 'Inseguridad', 'Si'),
(468, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '0EC48702-B5C1-ABA2-929D-6BF5EC770FE0', '1-70a7ab97bd75084e5bcc89e44635e8ec', 'Márgara Pons', '-34.1979354,-58.9700959', '2017-07-27 16:45:42', 'solmorales-gsma@hotmail.com', 'Soledad Morales', '423418', '16-25', 'B', 'B', 'Unidad Ciudadana (Ruben Romano)', 'Inseguridad,Desempleo,Educación', 'Si'),
(469, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '199F6DE4-5488-0CC9-B5FB-ABD77DDDA3A1', '1-93e607100cf3a62902b4c149b1895808', 'Roxana', '-34.1972927,-58.9591327', '2017-07-27 16:47:07', '', '', '', '', '', '', '', '', ''),
(470, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '2BB918AF-A526-65C1-AD2A-464001E5BB84', '1-b2019cafe84f9a3cf732d6675ee1f5a0', 'ruben roldan', '-34.1986169,-58.9684273', '2017-07-27 16:42:54', '', '', '', '', '', '', '', '', ''),
(471, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '3259A700-CF27-BDCE-8F52-22EEDACF2800', '1-e4059100370186e6d10157d79c3ecf9a', 'Alejandra', '-34.1972456,-58.9666467', '2017-07-27 16:40:25', '', 'Albornoz', '', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo,Salud,Mal estado del barrio', 'Si'),
(472, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '3E64D65E-AD6D-4788-89ED-C0A89D41A042', '1-3de6f2359aeae22d396c144375c81c1c', '26314469', '-34.1968572,-58.9705215', '2017-07-27 16:40:20', '', 'veronica mendosa', '', '26-39', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Tránsito/transporte', 'Si'),
(473, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '44D4E6FD-510A-D78A-8598-3844207CB0B5', '1-2d15ee96057fa664434e1ffdd8615aea', 'Márgara Pons', '-34.1979805,-58.9701519', '2017-07-27 16:47:11', '', '', '', '', '', '', '', '', ''),
(474, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '4DA8FE14-8F05-289A-B7E6-A4B05FB9C486', '1-34afc244d4944b6a1016b9f4c05ddf79', 'Leandro', '-34.1986762,-58.9668147', '2017-07-27 16:40:57', '', 'Eugenio', '3489430163', '+60', 'B', 'B', 'NS/NC', 'Cloacas,Mal estado del barrio', 'Si'),
(475, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '4E20B0B4-ED6C-0146-BEDB-AE423E8E3C56', '1-edde44080bc655ab6d957b41a61f6238', '26314469', '-34.1969549,-58.9703577', '2017-07-27 16:47:38', '', 'morales Ernesto', '466494', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Servicio de Absa,Tránsito/transporte', 'Si'),
(476, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '4E2E31C7-F690-45C3-808A-667C117ABB38', '1-35aa709e3a016024ae8fced60f47c608', '23528843', '-34.1986019,-58.9662114', '2017-07-27 16:44:36', '', 'Matin moreira', '15585350', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Servicio de Absa', 'Si'),
(477, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '50DF62F1-1B98-A067-9F62-7EADEA470496', '1-4aa679b8f6da1e9113953f8384872bf8', 'Alejandra', '-34.1976644,-58.9666355', '2017-07-27 16:47:26', '', 'Macarena crugnale', '520615', '26-39', 'R', 'R', 'Unidad Ciudadana (Alejo Sarna)', 'Inseguridad,Educación,Salud', 'Si'),
(478, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '5D5C1E75-D8C7-6D48-AF34-4A90836706D1', '1-a872518d77ee014bb420070bf067a677', 'ruben roldan', '-34.1986499,-58.9684049', '2017-07-27 16:43:38', '', '', '', '', '', '', '', '', ''),
(479, '2017-07-27 16:50:02', '2017-07-27 19:50:02', 0, '68DC80D5-7F7A-1F21-A3B4-D54159B7154B', '1-716d3f8063066a0447a2ca04a7f6f9e1', 'Roxana', '-34.1975648,-58.9619994', '2017-07-27 16:40:31', '', '', '', '', '', '', '', '', ''),
(480, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, '79E736CF-2A95-9602-8C4A-3FA28432C357', '1-7b538c0af832f8477bdb504bdb2dcde1', 'ruben roldan', '-34.1984666,-58.9678898', '2017-07-27 16:40:14', '', 'irma zarate', '3489550075', '+60', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(481, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, '815380E2-99B4-0C7A-816E-CB2D608E32C6', '1-4d6de778383460aa2edacf5a2e9f61b1', 'Roxana', '-34.1976154,-58.9589536', '2017-07-27 16:47:54', '', '', '', '', '', '', '', '', ''),
(482, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, '975B0998-0180-4765-99A7-E5415BCFF13F', '1-cca5548ba2bb2dc85ff422f3e992b410', 'ruben roldan', '-34.1988019,-58.9688081', '2017-07-27 16:48:36', 'martinchocampa@hotmail.com', 'martim avalos', '466447', '40-59', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(483, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'A4927CC4-1C6F-D5C6-88F1-FA0471C2A3F5', '1-40cbfd2b3b3ae2af7fd8aab5a9c34895', '23528843', '-34.1986019,-58.9662114', '2017-07-27 16:49:10', '', 'Carina hernandez', '15596290', '26-39', 'R', 'R', 'NS/NC', 'Inseguridad,Cloacas,Servicio de Absa', 'Si'),
(484, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'B3932C36-5E89-6BF2-8A10-24D3F5D55EA1', '1-d88255ec8229cf80f320e958ed953dc2', 'Caseres gustavo', '-34.1979943,-58.9695696', '2017-07-27 16:43:54', '', 'Gustavo caceres', '15561403', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo,Cloacas,Inseguridad', 'Si'),
(485, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'BA3AF60F-8392-4ED3-9C75-6C1503F5CF4F', '1-19c3c730274271bad2973d9bd555ea97', 'ruben roldan', '-34.1987923,-58.9680018', '2017-07-27 16:41:26', '', '', '', '', '', '', '', '', ''),
(486, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'C97E7CDA-96E6-44DD-9CA6-94EF8872AD25', '1-2092157e56a500a137362b4cdc43cb3e', 'Roxana', '-34.1975639,-58.9620666', '2017-07-27 16:39:09', '', '', '', '', '', '', '', '', ''),
(487, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'CD909880-1838-6F47-B776-36D693BB1101', '1-ee952b9498e2bdd0cd7c08f8b47c2c68', 'Alejandra', '-34.1975145,-58.9665907', '2017-07-27 16:43:56', '', '', '', '', '', '', '', '', ''),
(488, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'DB2C3967-6F89-BB11-8AF3-FCA3292C9355', '1-bdc817edfaa4814b192764d6331a290e', 'Roxana', '-34.1974186,-58.9621786', '2017-07-27 16:46:01', '', 'Kariana', '635253', '16-25', 'B', 'B', 'Cambiemos', 'Cloacas,Mal estado del barrio,Espacio Público', 'Si'),
(489, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'E983D5AF-9F76-F356-9CF0-5EBBF31748BD', '1-ca132d727430f685e09ad863f06a4b94', 'Roxana', '-34.197579,-58.9619098', '2017-07-27 16:43:44', '', 'Nicolas', '596306', '16-25', 'B', 'R', 'NS/NC', '', 'Si'),
(490, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'EBD3ADEC-8231-2EDC-99F8-2056EE0649FB', '1-3b08f9f59ee9d0c970f55c4eb4d57fb6', 'Marina', '', '2017-07-27 16:42:14', '', 'Cintia Ortiz', '', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo', 'Si'),
(491, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'F1807436-556B-BDAA-A840-DA8314A6EED6', '1-68d16482f463ced0b1196743319c40bd', 'ruben roldan', '-34.1988178,-58.9685841', '2017-07-27 16:44:55', '', '', '', '', '', '', '', '', ''),
(492, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'F65AF523-C064-96DD-98FB-8DF16312E2EB', '1-dce650caa86b79416b914831cf1cd19c', 'Leandro', '-34.1988706,-58.9656459', '2017-07-27 16:45:47', '', 'Hernan', '3489432492', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio', 'Si'),
(493, '2017-07-27 16:50:03', '2017-07-27 19:50:03', 0, 'FC6F1633-AB6D-C480-BF3D-18840989346E', '1-b1b47f248745132672bad73afeb2924d', '26314469', '-34.1968004,-58.9703535', '2017-07-27 16:42:37', '', 'felipa caceres', '155698477', '40-59', 'B', 'R', 'NS/NC', 'Tránsito/transporte,Inseguridad,Desempleo', 'Si'),
(494, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '09534CAF-CBB0-FB3C-B2BF-61F46CEACF83', '1-92c3249d246eebf8116b50b21c833755', 'Márgara Pons', '-34.1975721,-58.9703759', '2017-07-27 16:50:23', 'jona.duran@outlook.com', 'Jonatan Duran', '', '26-39', 'M', 'M', 'Unidad Ciudadana (Ruben Romano)', 'Desempleo,Inseguridad,Salud', 'No'),
(495, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '0B786698-4A7C-99BB-AF4C-C99E5670CDDD', '1-0bc4fe63aaa9d651925bb77a6f016277', 'Leandro', '-34.198664,-58.9651573', '2017-07-27 16:54:48', '', 'Nestor', '348915630907', '40-59', 'R', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(496, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '0C85AB3F-CD5C-2194-915A-EA46F420D023', '1-168015c83d3ec88f7238d83a861eb17b', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:51:03', '', '', '', '', '', '', '', '', ''),
(497, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '20DE7EE1-867C-952D-9D23-A8DE27970E69', '1-9b0e6e45824ffe766ff3eb78b7eecd61', 'Nicotra', '-34.1995156,-58.9708687', '2017-07-27 16:53:50', '', '', '', '', '', '', '', '', ''),
(498, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '23101711-2B41-9939-A76A-5D5D4E0C8E1B', '1-fef4c71e44d7653639017e79453b98c8', 'Nicotra', '-34.1990374,-58.9709135', '2017-07-27 16:56:09', '', '', '', '', '', '', '', '', ''),
(499, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '242099F5-AF8F-B949-9F72-B365B4607CAD', '1-34dfa09835463f1e7a2575d4254ea131', 'Nicotra', '-34.1990571,-58.9709135', '2017-07-27 16:58:33', '', '', '', '+60', 'B', 'B', 'Cambiemos', 'Cloacas,Desempleo,Mal estado del barrio', 'Si'),
(500, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '4787D1FD-EE79-0511-BD20-3B44FE141EF8', '1-c6d2614d7b8f46d06a9be9cdee13eebb', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:41:51', '', 'Carla', '', '26-39', 'R', 'B', 'NS/NC', 'Servicio de Absa,Cloacas,Mal estado del barrio', 'Si'),
(501, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '586A1868-81FA-C5B9-9B4D-6B02EC7B71ED', '1-fb4d7100746fcec23b496e4e92ec960c', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:46:57', '', '', '', '16-25', 'R', 'R', 'UV', 'Inseguridad,Mal estado del barrio,Servicio de Absa', 'Si'),
(502, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '5DFB1A4B-1822-3A00-AB9B-F5F1630FFDFC', '1-b7cc0e18ad8598b455ad5565fb2beee8', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:38:05', '', '', '', '+60', 'B', 'B', 'Cambiemos', '', 'Si'),
(503, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '5E233BF4-E5B7-1C13-AB4F-CB7E2CC1E611', '1-4eb81e595e3425141cd07b414f807633', '25314469', '-34.1966388,-58.9712494', '2017-07-27 16:56:31', '', 'sivia pacheco', '432554', '+60', 'B', 'B', 'Frente Renovador', 'Inseguridad,Luminarias,Desempleo', 'Si'),
(504, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '627D4B17-44F0-A938-982B-52856FA6C5A9', '1-ea229b25cab81756c81e3db1b95aa25f', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:44:44', '', 'Riedel', '', '26-39', 'R', 'R', '1 País', 'Inseguridad,Mal estado del barrio,Espacio Público', 'No'),
(505, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '651353E0-554C-E250-9D23-601E188F5CA9', '1-5f32fa60c50f6dfc02fa4216befc7514', 'Márgara Pons', '-34.1978536,-58.9703647', '2017-07-27 16:59:42', '', '', '', '', '', '', '', '', ''),
(506, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '67792698-6739-7F40-AF05-49111E8C9AFB', '1-8ed8b74642be75b0e235d746042179fd', 'Nicotra', '-34.1989928,-58.9708239', '2017-07-27 16:59:59', '', '', '', '', '', '', '', '', ''),
(507, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '6C8B171C-4960-8F25-A5D7-2333786C5744', '1-0e129530560ad5aaa57c5fb2bf1de26b', 'Márgara Pons', '-34.1979421,-58.9700847', '2017-07-27 16:59:13', '', '', '', '', '', '', '', '', ''),
(508, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '6FF8F130-69FF-1501-AE48-EFB0AA2E5764', '1-d43374467475a85f29952cd4e40e64bf', 'Roxana', '-34.1971275,-58.9613835', '2017-07-27 16:50:14', '', '', '', '', '', '', '', '', ''),
(509, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '76C9BBB8-473D-77C5-8EAF-6676D77A958C', '1-51e190b9d3c2f0530c08959cd60106d7', 'Nicotra', '-34.1988349,-58.9708911', '2017-07-27 16:50:04', '', 'Celia', '', '26-39', 'R', 'R', 'NS/NC', 'Mal estado del barrio,Inseguridad,Cloacas', 'Si'),
(510, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '7D1DE963-5E05-1C7F-96A2-7003020F1F94', '1-e2662e0fcb1d25d9011f0c8f627a1f28', 'Nicotra', '-34.1989769,-58.9710478', '2017-07-27 16:52:57', '', '', '', '', '', '', '', '', ''),
(511, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '846DE891-0FB5-AB21-AB27-BCC45DA81937', '1-88a1a051effeee889b2d76038193b253', 'Leandro', '-34.1986648,-58.9650901', '2017-07-27 16:57:57', '', 'Marina', '348915575265', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad', 'Si'),
(512, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '91B66AD9-EEAB-8A9E-9F94-F61426A61D40', '1-f8e4da7454b2cf66c3a2e8ae0adcfbef', 'juan carlos gimeneZ', '-34.1985276,-58.9687745', '2017-07-27 16:58:21', '', '', '485658', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Mal estado del barrio,Tránsito/transporte', ''),
(513, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, '9C706217-CAF9-ABAE-96F4-6A187ACB1A3F', '1-7f94e2100b46592e159700bee35d81ce', 'Roxana', '-34.196728,-58.9619546', '2017-07-27 16:57:57', '', '', '', '', '', '', '', '', ''),
(514, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, 'A0D65C85-1872-9E07-BF1E-8A995C1FC0AC', '1-032c99dad4ded5920aa3ae4cacaef6ee', '23528843', '-34.1988741,-58.9656277', '2017-07-27 16:50:46', '', '', '', '', '', '', '', '', ''),
(515, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, 'B7832E8C-888D-8FE9-ABEF-E835BC45BB4F', '1-04d68e3e746990fc95e49d17ad0f854d', '25314469', '-34.197109,-58.9713166', '2017-07-27 16:51:32', '', '', '528051', '16-25', 'B', 'B', 'NS/NC', 'Tránsito/transporte,Luminarias,Inseguridad', 'Si'),
(516, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, 'DB8539BF-8985-DCFB-9427-C371F7C99BE3', '1-cad4e660f7c550ec54d00effa8822b00', '25314469', '-34.1968664,-58.9713614', '2017-07-27 16:58:34', '', 'juan carlos morales', '40389303586', '+60', 'B', 'B', 'Cambiemos', 'Luminarias,Mal estado del barrio,Tránsito/transporte', 'Si'),
(517, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, 'DBC1F41A-E190-E1EC-A884-66A650B891F2', '1-544318d14db18fb20243d4907a92cd92', 'Nicotra', '-34.1989731,-58.9708239', '2017-07-27 16:54:46', '', '', '', '', '', '', '', '', ''),
(518, '2017-07-27 17:00:04', '2017-07-27 20:00:04', 0, 'E26E9DDF-02D8-FC07-A395-E3DEC002DF12', '1-1ab23e25293eab24cfa9f4eeb09d139e', '23528843', '-34.1988803,-58.9656501', '2017-07-27 16:51:55', '', '', '', '', '', '', '', '', ''),
(519, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'E5B84559-4BF9-1608-B759-28502CB5A31B', '1-70e17083e5ce27c74b3a6f68f6ac9db2', 'Roxana', '-34.1966883,-58.9614619', '2017-07-27 16:52:31', '', '', '', '', '', '', '', '', '');
INSERT INTO `app_campana_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`) VALUES
(520, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'EA5EECD4-94FD-97DA-8B00-EACD8CADA5FF', '1-572a2e0c0ac8af9942b3922f28bdee32', '25314469', '-34.1970171,-58.971339', '2017-07-27 16:53:54', '', 'adrian ermelo', '3489524199', '16-25', '', 'R', 'NS/NC', 'Inseguridad,Tránsito/transporte', 'Si'),
(521, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'F0F7C8A8-8CBD-33F8-9C02-96B224C95856', '1-b0a6f102cedef09a2877c3348197331b', 'Roxana', '-34.200063,-58.9594029', '2017-07-27 16:54:54', '', '', '', '', '', '', '', '', ''),
(522, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'F10E2568-C60B-6F3A-82AC-9BDD14F8DDB9', '1-6125e5bfbee523ea4ebd8fbc0f245d22', 'Roxana', '-34.1968486,-58.9613905', '2017-07-27 16:51:52', '', '', '', '', '', '', '', '', ''),
(523, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'F420D877-6DBE-A1FB-9065-2406FCA9AF63', '1-e5177561d5cbed1e6edbb3d9a1d8641d', 'Roxana', '-34.1971421,-58.9612604', '2017-07-27 16:50:52', '', '', '', '', '', '', '', '', ''),
(524, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'F92B6158-7B11-2F87-8B48-AE0AE8A27536', '1-f44d24ee763a3f96e3bc69995062390d', 'Alejandra', '-34.1978485,-58.9665571', '2017-07-27 16:52:45', '', 'Carlos hassll', '', '40-59', 'R', 'B', 'Cambiemos', 'Inseguridad,Educación,Higiene', 'Si'),
(525, '2017-07-27 17:00:05', '2017-07-27 20:00:05', 0, 'FC602919-82CC-516D-B5B1-575D4D34BA38', '1-6468956f8ff60597a086329641252350', '23528843', '-34.1986849,-58.9655829', '2017-07-27 16:57:01', '', 'Javier palmieri', '664622', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Inseguridad', 'Si'),
(526, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '0A1200DE-1888-4911-BE36-CB920AAA310A', '1-3742211138665db9f03a2755d97b5c24', 'Márgara Pons', '-34.1980524,-58.9706895', '2017-07-27 17:01:52', '', '', '', '', '', '', '', '', ''),
(527, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '23D7C400-C1EB-27AA-AB68-CC04082EE42F', '1-59e632d31abb2b84a84d0f8c65afc524', 'Márgara Pons', '-34.1978081,-58.9708687', '2017-07-27 17:02:33', '', '', '', '', '', '', '', '', ''),
(528, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '2641DC27-036F-EE9E-BEFB-3FF61DF1C7FB', '1-b51e6476adcb3e9543dcf1de8cc68e5e', 'Roxana', '-34.1962824,-58.9625369', '2017-07-27 17:02:56', '', 'Iris tapia', '427668', '+60', 'B', 'B', 'Cambiemos', 'Cloacas,Tránsito/transporte', 'Si'),
(529, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '28E74933-765C-103B-82E9-9E8712C59532', '1-0d6de0c77ca76b1eaf30ffcd6e4dbbe3', '23528843', '-34.1989714,-58.9656949', '2017-07-27 17:02:34', '', 'Daiana ruiz', '15537192', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Educación,Desempleo', 'No'),
(530, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '300EE499-A459-4BE5-ACF3-83AD318AA691', '1-85a9949315e035665d43a0fda97f4629', 'Márgara Pons', '-34.1978018,-58.9708463', '2017-07-27 17:03:09', '', '', '', '', '', '', '', '', ''),
(531, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '37ED3734-E72D-7548-A79F-B27512127C38', '1-3d3357435f8f2655dea29c5dba22f9ac', 'Márgara Pons', '-34.1977884,-58.9708687', '2017-07-27 17:03:52', '', '', '', '', '', '', '', '', ''),
(532, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '38A07930-0E51-700C-BA36-FA35F4B17100', '1-aa3520e3c2de7244981d3706f19f3709', '23528843', '-34.1989872,-58.9654709', '2017-07-27 17:05:44', '', 'Daniel gomez', '447640', '40-59', 'R', 'B', 'UV', 'Cloacas,Inseguridad,Tránsito/transporte', 'Si'),
(533, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '3AA10399-BB2D-968F-87B6-576969788533', '1-de1da104d7acdc4fd1512b5301dd6519', 'juan carlos gimeneZ', '-34.1982348,-58.9691664', '2017-07-27 17:03:52', '', '', '', '', '', '', '', '', ''),
(534, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '3B9C95F4-79BC-95B2-BBA5-0A817A07090D', '1-bb16036d811afe1bb87801748b89cb51', 'Márgara Pons', '-34.1977884,-58.9708687', '2017-07-27 17:04:26', '', '', '', '', '', '', '', '', ''),
(535, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '40488D9B-1CAB-D2AF-B7C5-058D5BBA9EB5', '1-43735a5a1851b0f4f4e20f13bd26fe70', 'Leandro', '-34.198341,-58.9646296', '2017-07-27 17:09:16', '', 'Susana morvillo', '3489466535', '+60', 'R', 'R', 'Cambiemos', 'Inseguridad,Mal estado del barrio', 'Si'),
(536, '2017-07-27 17:10:01', '2017-07-27 20:10:01', 0, '561C8D48-41D2-F0AF-A5BE-BFEBB95F3E89', '1-bb41ec4be68210bd8e689b7f515e90b1', 'Roxana', '-34.1961004,-58.9624474', '2017-07-27 16:59:15', '', '', '', '', '', '', '', '', ''),
(537, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, '5BF30F3D-8617-4AE1-9EA5-C018599B6689', '1-3d219c7697b286fcae3069f321b88c5f', 'Marina', '', '2017-07-27 17:07:03', '', 'Ceci silvia', '', '26-39', 'R', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Tránsito/transporte', 'Si'),
(538, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, '61AC8863-9782-1D2A-8A97-655AD26312F4', '1-cfb79424cce91dbf5b4a17f72f595d3f', 'Marina', '', '2017-07-27 17:03:39', '', 'Orona Miriam', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(539, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, '8730D202-8B4C-BCB0-B41A-ABCF2273A886', '1-8be824221263e315d2ab0209b2692ffd', 'Alejandra', '-34.1974689,-58.9655157', '2017-07-27 17:05:02', '', '', '', '', '', '', '', '', ''),
(540, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, '8FB9D670-E2A5-0FD7-8915-973A1E724C31', '1-bb9404ca5417e477b4cbea7bbc4efa81', 'Márgara Pons', '-34.198176,-58.9712718', '2017-07-27 17:07:22', '', 'Ahumada Jorge', '543336', '40-59', 'R', 'R', 'NS/NC', 'Inseguridad,Cloacas,Luminarias', 'No'),
(541, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'A6878465-1C18-A85C-8574-233DC2F02F74', '1-1ae30b313f601497bb11a4e75dd8e340', 'Roxana', '-34.1959926,-58.9621674', '2017-07-27 17:04:29', '', '', '', '', '', '', '', '', ''),
(542, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'A7E27510-ED0B-42ED-8B20-59DB7D146A68', '1-8fd617ebb00341dc171b1bd82c3e6215', '2531449', '-34.1964143,-58.9715476', '2017-07-27 17:01:31', '', 'karina espindola', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte', 'Si'),
(543, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'AC9367E0-CE66-5BEB-8854-37322FC2C246', '1-f45e7cba0c98e5e270a0250c58dd0ce8', 'Alejandra', '-34.1978406,-58.9661428', '2017-07-27 17:02:36', '', '', '', '', '', '', '', '', ''),
(544, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'B26BA357-51B9-6BEB-B188-38A5ED07DC50', '1-8dfb298591e84c4fab3073e6479e6425', 'juan carlos gimeneZ', '-34.1982106,-58.9690097', '2017-07-27 17:02:23', '', 'nicol romero', '15514446', '26-39', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(545, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'B327A6BC-77C3-0C85-952F-57943F1EFDD0', '1-3afc53b365fc8e8d470b1c0925197867', 'Nicotra', '-34.1988683,-58.9713614', '2017-07-27 17:03:06', '', '', '', '16-25', 'B', 'B', 'Unidad Ciudadana (Ruben Romano)', 'Inseguridad,Desempleo,Mal estado del barrio', 'Si'),
(546, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'C071CA31-A076-4F85-B1DF-32A5F522B391', '1-e575ea01469e65453f78d76a06b47a98', 'Nicotra', '-34.1991101,-58.9713838', '2017-07-27 17:05:00', '', '', '', '', '', '', '', '', ''),
(547, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'C1BE36E7-B5D7-4465-B725-64C0F6C704FE', '1-c0edd4e9a9f4e32941c4032fa33143d7', 'Marina', '', '2017-07-27 17:00:04', '', 'Maria rodriguez', '', '40-59', 'M', 'R', 'Unidad Ciudadana (Ruben Romano)', 'Desempleo,Tránsito/transporte', ''),
(548, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'DAF5B451-8AE9-588D-87F0-3316634B363C', '1-a361d0e7d9f4233000af8ca5ccd4a0c2', 'juan carlos gimeneZ', '-34.1981171,-58.9691664', '2017-07-27 17:07:37', '', 'dante cruz', '15361079', '16-25', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', ''),
(549, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'E4198F60-D52A-D593-9E23-DFD21216A820', '1-3f381b3795e3c434cc9954f2a81b681f', 'Nicotra', '-34.1992688,-58.9712494', '2017-07-27 17:07:49', '', '', '', '16-25', 'R', 'R', 'NS/NC', 'Luminarias,Desempleo,Higiene', 'No'),
(550, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'E50E5723-36A2-C745-86AA-DB871A92CA0A', '1-6d12cbf66278cef3b3dbf71c9955068e', 'Caseres gustavo', '-34.1987969,-58.9713166', '2017-07-27 17:07:49', '', 'De los santos diego oscar', '15655721', '26-39', 'B', 'B', 'NS/NC', 'Desempleo,Inseguridad,Educación', 'Si'),
(551, '2017-07-27 17:10:02', '2017-07-27 20:10:02', 0, 'F39EBF95-7892-045C-B443-EC8DC532696E', '1-fa39861ac14272280ae83efbe99d9e0e', 'Leandro', '-34.1986811,-58.9648326', '2017-07-27 17:02:59', '', 'Rodríguez Néstor', '', '+60', 'M', 'M', 'NS/NC', 'Mal estado del barrio,Cloacas,Inseguridad', 'Si'),
(552, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '122942F3-2B63-115E-AF8E-6E637CDBD592', '1-364d8fde82e933de87ea7196f31e39e0', 'Márgara Pons', '-34.1974953,-58.9712942', '2017-07-27 17:12:23', '', '', '', '', '', '', '', '', ''),
(553, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '1C6CAFAE-FE20-C688-B48D-B0FFDE633E52', '1-21079b25f2380aca9ce00931807e4df4', 'juan carlos gimenez', '-34.1978511,-58.9689873', '2017-07-27 17:12:44', '', 'jonatan', '15544898', '26-39', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(554, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '2260534B-B787-6163-B286-91D4AED3BFFC', '1-24e6145dcd61a90ef3548de76fc84559', 'Márgara Pons', '-34.1974694,-58.9712718', '2017-07-27 17:12:59', '', '', '', '', '', '', '', '', ''),
(555, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '285D282B-9E18-29D5-97F9-5810B77B7BDE', '1-d7d7e203dc93e45bc118931a282c747b', 'Nicotra', '-34.1995757,-58.9707679', '2017-07-27 17:19:47', '', 'Segovia', '', '40-59', 'R', 'R', 'UV', 'Higiene,Mal estado del barrio,Cloacas', 'Si'),
(556, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '2A00FE66-0133-A6E2-BAE5-8BC47EF0A283', '1-a93401dc050237690c227aa86261ba44', 'Caseres gustavo', '-34.1989986,-58.9708799', '2017-07-27 17:15:28', '', 'Fleita jorgue', '15531738', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Salud,Desempleo', 'Si'),
(557, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '2C9D8A11-0F5B-0D21-B847-B3F977171EE4', '1-0a8f4e3d157d2f19b6e5d7797e153b70', 'Alejandra', '-34.196777,-58.967432', '2017-07-27 17:17:03', '', '', '', '', '', '', '', '', ''),
(558, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '3034A155-F92C-257A-86B3-6BD4EC99D74B', '1-07862bf21906469c08cb359779ab93ba', 'Márgara Pons', '-34.1973032,-58.9714846', '2017-07-27 17:13:36', '', '', '', '', '', '', '', '', ''),
(559, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '37F40469-33FF-064B-A713-62DD0F12C9BC', '1-e0c74d92b2c3f3ecbe0ebc8a107b26c8', 'Nicotra', '-34.1987958,-58.9714048', '2017-07-27 17:10:40', '', 'Susana redes', '', '26-39', 'B', 'B', 'NS/NC', 'Cloacas,Luminarias,Mal estado del barrio', 'No'),
(560, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '3BA90F5A-8571-07FC-B93D-B8BC99BB1E6B', '1-8361258977d4bed2d36fb7ae02214c51', 'Alejandra', '-34.1968656,-58.9672179', '2017-07-27 17:11:45', '', '', '', '', '', '', '', '', ''),
(561, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '3E69434B-582F-113B-B1DE-43AF9199CB80', '1-528ed5346cdca07c9573e34dda5e1910', 'Márgara Pons', '-34.1972965,-58.9714958', '2017-07-27 17:18:06', 'ulluajazmin@gmail.com', 'Jazmín Ullua', '', '16-25', 'R', 'R', 'NS/NC', 'Inseguridad,Higiene,Desempleo', 'Si'),
(562, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '48C3FD36-EF2E-D835-A22C-9B2B5DC94A3D', '1-1ecc7ddebb9d45aa1c2525411bb4c462', 'Alejandra', '-34.1968317,-58.9673075', '2017-07-27 17:09:49', '', '', '', '', '', '', '', '', ''),
(563, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '4BB3704E-2713-F94E-AC6C-AD879F941D20', '1-d375ebb098ef5f01d19e1a9c41332196', 'Marina', '', '2017-07-27 17:14:25', '', 'Lopez gladys', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo', 'Si'),
(564, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '4C6A0C06-AA8E-8124-8ADA-B56E6DED03A0', '1-c7ff4dfea8f1c420f8b53218143d1741', 'Márgara Pons', '-34.1976335,-58.971227', '2017-07-27 17:11:19', '', '', '', '', '', '', '', '', ''),
(565, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '5CB09B7A-0FF6-2E9E-BAF2-85100865FC58', '1-a243cd9417339f66834b3b2831aca870', 'Leandro', '-34.1979241,-58.964687', '2017-07-27 17:19:41', '', 'Silvia', '15549525', '40-59', 'B', 'B', '', 'Inseguridad,Mal estado del barrio', 'Si'),
(566, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '6114F039-4643-3828-A9ED-DC99307EFCCD', '1-a7230828f4803ad819fc86d47137c88b', '23528843', '-34.200063,-58.9594029', '2017-07-27 17:11:20', '', 'Gabriel tuama', '15358277', '16-25', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo,Falta de vivienda', 'Si'),
(567, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '616320BD-50E1-FF90-8DE6-A532EA3DA305', '1-3516c34b2494f75e29b11c32157bcfd8', 'Márgara Pons', '-34.1975805,-58.971283', '2017-07-27 17:10:31', '', '', '', '', '', '', '', '', ''),
(568, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '701C758A-0679-42F2-891C-5D1343B3194D', '1-fa6275bdbe015f1dfad21a547d7a924d', 'Márgara Pons', '-34.1973132,-58.9712046', '2017-07-27 17:16:02', '', '', '', '', '', '', '', '', ''),
(569, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '84F63E4E-86F9-8FE2-81DF-B65CE0F4C5B8', '1-9d2e5041669df0b69deb4cade69d1659', 'Nicotra', '-34.199567,-58.9708113', '2017-07-27 17:16:03', '', 'Zapata walter', '', '26-39', 'R', 'R', 'Unidad Ciudadana (Alejo Sarna)', 'Mal estado del barrio,Higiene,Cloacas', 'Si'),
(570, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '879A1463-3906-ACC0-9C6D-6C9B75D26220', '1-43a0e3929f9505cb261e885447f0c417', 'Márgara Pons', '-34.1975871,-58.9712718', '2017-07-27 17:10:47', '', '', '', '', '', '', '', '', ''),
(571, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '8BB63352-73DB-A182-9B85-46238E0C2B70', '1-1a0b80906cef550e0b251689800ed228', 'juan carlos gimenez', '-34.1976765,-58.9682929', '2017-07-27 17:13:49', '', '', '', '', '', '', '', '', ''),
(572, '2017-07-27 17:20:04', '2017-07-27 20:20:04', 0, '93A72851-0142-FDA5-8E89-906F7A8029E1', '1-e12bc60f894ec06f3bb342e728ba3791', 'Marina', '', '2017-07-27 17:12:09', '', '', '', '', '', '', '', '', ''),
(573, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, '9C2D52C6-99D9-786B-8937-C652D11B44DA', '1-782d406927ce4d39402ba2b0d4e11edb', 'Alejandra', '-34.196856,-58.9674642', '2017-07-27 17:13:11', '', '', '', '', '', '', '', '', ''),
(574, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'BEF1B9CF-CF27-2BA0-B2FB-7C18AD9BF245', '1-c37a645e68b0eb7946e0904ea9516f0e', 'Marina', '', '2017-07-27 17:09:58', '', '', '', '', '', '', '', '', ''),
(575, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'BF4BBF2A-F5C0-ECCA-B7D5-F081CE11848E', '1-36302e3db7c12b916d47813970b2cc9f', 'Alejandra', '-34.1970502,-58.9681586', '2017-07-27 17:18:59', '', '', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Salud', ''),
(576, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'C46893E6-522D-04C7-B8B0-F1588A3695C6', '1-b6465dc399738d4a32f5707ee12621cf', 'Leandro', '-34.198066,-58.9648438', '2017-07-27 17:15:22', '', 'Nilsa', '15564296', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Cloacas', 'Si'),
(577, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'C69DDC29-4411-A0E7-BFDB-6881BE8D027D', '1-9288f5d519651607c29360a670a61dcd', 'Caseres gustavo', '-34.1990429,-58.9710031', '2017-07-27 17:11:55', '', 'Benitez brenda', '15684658', '16-25', 'B', 'B', 'NS/NC', 'Salud,Inseguridad,Desempleo', 'Si'),
(578, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'E13A4685-5BF8-FD48-BF77-B57138A6BEBA', '1-9e7117e33d099a0ceeab28048f496604', 'Márgara Pons', '-34.1971712,-58.9710478', '2017-07-27 17:15:37', '', '', '', '', '', '', '', '', ''),
(579, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'E5902FFA-C75E-238B-88F9-BB19299E56FA', '1-fec5d6e372797bd2ae147835bb5c0836', 'Caseres gustavo', '-34.199012,-58.9708575', '2017-07-27 17:18:40', 'sabriina80@hotmail.com', 'Fernandez sabrina', '348715527063', '26-39', 'B', 'B', 'NS/NC', 'Salud,Inseguridad,Desempleo', 'Si'),
(580, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'E9DEBDF9-D6B4-47A0-BF9B-D34B186B1172', '1-94a7f375df871b216c408a5bf6fadbb1', '23528843', '-34.1991645,-58.966539', '2017-07-27 17:19:40', '', 'Rosa cardoso', '', '+60', '', 'B', '', 'Inseguridad,Desempleo', 'Si'),
(581, '2017-07-27 17:20:05', '2017-07-27 20:20:05', 0, 'F73ED4F0-4F53-E2F7-8FD3-3CBAE50BBF7E', '1-1d83af950c615b53de5325478de1af9b', 'Alejandra', '-34.1969462,-58.9675762', '2017-07-27 17:15:14', '', 'Néstor oscar', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Higiene,Desempleo', 'Si'),
(582, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '0298A924-09A0-7940-94C7-7171F49CF889', '1-aec19fe19c91ddc527ae1e862a3b1e30', 'Marina', '', '2017-07-27 17:21:35', '', '', '', '', '', '', '', '', ''),
(583, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '1100FBAF-0462-CE67-9258-80A901B6379F', '1-7d06d630d5ffdd3188c6ac93b06ac8c3', '23528843', '-34.1988415,-58.9666691', '2017-07-27 17:29:39', '', '', '', '', '', '', '', '', ''),
(584, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '20F97DE5-E60C-498C-8B5A-3BBCE8930B65', '1-479ab58c4a852370362e7c7336fa651c', 'Nicotra', '-34.199567,-58.9708113', '2017-07-27 17:22:49', '', 'María Ayala', '', '+60', 'B', 'B', 'Unidad Ciudadana (Alejo Sarna)', 'Inseguridad,Cloacas,Mal estado del barrio', 'No'),
(585, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '243F2500-AD3D-1DCD-A2BD-1FB3BD77E802', '1-d4ee81875cd046df32975ff343a6b8a3', 'Alejandra', '-34.1974519,-58.9679458', '2017-07-27 17:22:18', '', '', '', '', '', '', '', '', ''),
(586, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '31F6A365-C99B-6AE5-B04C-CC5A352C8306', '1-64c6d3faea7209d0089cafbc72368c7d', 'Alejandra', '-34.1975287,-58.9680802', '2017-07-27 17:21:41', '', '', '', '', '', '', '', '', ''),
(587, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '386EADD1-0247-6F32-B427-CB1BF91B2DBF', '1-3f1ccc35feef78a9ff30bab9ebc57bd2', 'Marina', '', '2017-07-27 17:22:31', '', '', '', '', '', '', '', '', ''),
(588, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '4CE20EAC-3AA5-6FF8-BB3E-247B646DF9A2', '1-180f540b80464c55658277dca791f0aa', 'Marina', '', '2017-07-27 17:20:25', 'micaela.nadia@hotmail.com', 'Nadia Blonski', '', '16-25', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Inseguridad', 'Si'),
(589, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '53B8DC52-42A4-6ED4-AD2F-42F78EEF6B07', '1-af7e7847322d9740b8dc2ca2039fb4d6', 'Marina', '', '2017-07-27 17:23:09', '', '', '', '', '', '', '', '', ''),
(590, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '696321BA-4223-D6D6-B027-19BB6948B645', '1-835f075e585807499aa17b44e57ff47c', '23528843', '-34.1991645,-58.966539', '2017-07-27 17:23:09', '', 'Liliana maria bela', '523473', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(591, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '6B32A50E-DD78-63E3-91AA-326AA7BC86E6', '1-894e286423a785c34988b95771a5f116', 'Nicotra', '-34.1997954,-58.9704655', '2017-07-27 17:28:35', '', 'Annabells', '', '26-39', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Cloacas', 'No'),
(592, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '6DBAB517-908C-CE78-A85A-41102A0030C4', '1-5c3d191e9e3a8fe945b08a8addf06f9c', 'Caseres gustavo', '-34.1985996,-58.9690978', '2017-07-27 17:29:03', 'priscilamb80@hotmail.com', 'Bolanio priscila', '15688776', '16-25', 'B', 'B', 'NS/NC', 'Desempleo,Mal estado del barrio,Inseguridad', 'Si'),
(593, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '747C6EBB-309B-742E-BA3E-8463638DD767', '1-267d8f27350160788278262a1cf7fa89', 'Márgara Pons', '-34.1970463,-58.9721454', '2017-07-27 17:24:32', '', '', '', '', '', '', '', '', ''),
(594, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '8C52F0D9-9F61-7902-94EA-259F12BEC56B', '1-0e09a890b93f50dc6e9f0ea998f1b9cd', 'Alejandra', '-34.1974193,-58.9679346', '2017-07-27 17:21:00', '', '', '', '', '', 'R', '', '', ''),
(595, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, '999E6F42-94AA-47C1-8DFC-A5D5530CD859', '1-792e1bf1e4b659bb4d2e9decd6c6715b', 'Nicotra', '-34.1997235,-58.9704543', '2017-07-27 17:24:51', '', '', '', '', '', '', '', '', ''),
(596, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'AD0DD264-FD65-603B-90ED-AB5C6DC738C9', '1-288d42654b8f4996ed9a4fe6e8144ab3', 'Márgara Pons', '-34.1970467,-58.9721118', '2017-07-27 17:24:01', '', '', '', '', '', '', '', '', ''),
(597, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'B7BB3C6C-9FB0-194B-BC5B-25164AC8B1CB', '1-606c605fd8a207d92271f0f197ce34eb', 'Alejandra', '-34.1976874,-58.9679458', '2017-07-27 17:23:11', '', '', '', '', '', '', '', '', ''),
(598, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'C638CC6C-9E13-0383-9684-EDAA4BAA78B1', '1-455133d6c562caf0f85050be5465047e', 'Leandro', '-34.1976819,-58.9652245', '2017-07-27 17:24:43', '', 'Matias', '348915695686', '16-25', 'R', 'R', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(599, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'CF577D65-DC84-1F3C-8809-586C43C2C353', '1-3b2d2af2f9fee9828c7908e44cb0303b', 'juan carlos gimenez', '-34.197945,-58.9682705', '2017-07-27 17:27:57', '', 'alejandra solis', '', '', '', '', '', 'Mal estado del barrio,Inseguridad', 'No'),
(600, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'D77E7360-F747-278F-97D8-D52AB8280089', '1-5b1bc087df85d918f718ace51fd7dfd4', 'Márgara Pons', '-34.1981634,-58.9717534', '2017-07-27 17:29:05', '', 'Mirta Isabel Flores', '311142', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(601, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'D7940908-A6CC-016B-A78B-7248CC68788A', '1-b51827798aff66ae1926d6407ecb3582', '23528843', '-34.1994679,-58.9665446', '2017-07-27 17:24:40', '', '', '', '', '', '', '', '', ''),
(602, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'D8B3C6BB-7702-236D-8533-BB5912480CE7', '1-8eb48cf02225cbc990abe6d9d81cf080', 'Márgara Pons', '-34.1972288,-58.971675', '2017-07-27 17:20:16', '', 'Guillermo Isauro', '466472', '40-59', 'M', 'R', 'UV', 'Inseguridad', 'Si'),
(603, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'DD83CEBE-CB25-CBF6-AA7F-72A3C0F2DD6B', '1-e09bac326eb31f1dd9a83d59c157a0d6', 'Márgara Pons', '-34.1972531,-58.9718318', '2017-07-27 17:21:28', '', '', '', '', '', '', '', '', ''),
(604, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'DDBAB09A-02CD-906D-905A-B747A49B34F4', '1-a52eb01c9329346d1698801613279b4d', 'Márgara Pons', '-34.1979898,-58.972102', '2017-07-27 17:26:53', 'ru_ge_perez@hotmail.com', 'Sergio Perez', '3487629479', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(605, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'DDD01666-CCBB-57AE-B6C0-6344CDA215CD', '1-411b462015102c1dab5412e4ca059503', 'Nicotra', '-34.1997312,-58.9704949', '2017-07-27 17:24:07', '', '', '', '', '', '', '', '', ''),
(606, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'E2517A28-F30C-6FAE-8424-2A2432CD0830', '1-3b9bf7d39ad095d7a76e9aed9f0ff50a', 'Alejandra', '-34.1975826,-58.967957', '2017-07-27 17:20:17', '', '', '', '', '', '', '', '', ''),
(607, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'E619604F-ED99-8144-979D-EA65E0C0974D', '1-bfe649f5910749a40f220b23489ed488', 'juan carlos gimenez', '-34.1978603,-58.9682481', '2017-07-27 17:25:22', '', 'graciela', '562256', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(608, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'F77D1343-AD55-2DCE-8A71-03E6729399CE', '1-ca7833556a12f83d409255634411672f', '23528843', '-34.1993451,-58.9666803', '2017-07-27 17:26:06', '', '', '', '', '', '', '', '', ''),
(609, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'F7A0A40E-1068-BF2F-ADF0-A2FDE1376F6E', '1-8aca5f5739651ca9b1ff5b545b24d383', 'juan carlos gimenez', '-34.1977901,-58.9686289', '2017-07-27 17:20:39', '', 'susana ojeda', '430885', '40-59', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'No'),
(610, '2017-07-27 17:30:02', '2017-07-27 20:30:02', 0, 'F8588EF4-BEDC-54E1-B459-ABA649020F50', '1-aee95d9928f6a48b6428205b79d65e3d', '23528843', '-34.1991702,-58.966546', '2017-07-27 17:27:38', '', 'Martinez miguel', '', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si'),
(611, '2017-07-27 17:30:02', '2017-07-27 20:30:03', 0, 'F9BE6386-CF2E-F3A4-996F-9286F3817577', '1-fff4cd6606f95f3be6c9ef157c7250ee', 'Márgara Pons', '-34.1971612,-58.9718542', '2017-07-27 17:22:56', '', '', '', '', '', '', '', '', ''),
(612, '2017-07-27 17:30:03', '2017-07-27 20:30:03', 0, 'FFD95E12-2D45-0BD0-BBE4-B0FF91CCCA14', '1-cda4dddf1baba9edd8ab9543548dd4a0', 'Leandro', '-34.1977048,-58.9649558', '2017-07-27 17:22:28', '', 'Belen', '15690449', '16-25', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(613, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '00319121-CA02-52EC-BD27-317F96C6EDDC', '1-86af617f450389ecb28f2296d3cb825f', 'Marina', '', '2017-07-27 17:36:00', '', '', '', '', '', '', '', '', ''),
(614, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '07F46FCC-FEBE-AAE7-B969-7FB08CD548EF', '1-7c9f759439396d5e0d02f6f010c0cc86', 'Nicotra', '-34.199635,-58.9691552', '2017-07-27 17:34:33', '', 'Fabián chiozza', '', '40-59', 'R', 'B', 'Cambiemos', 'Cloacas', 'Si'),
(615, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '2969C6FA-7A1F-6D59-8E39-49976D204297', '1-c18f4089a7f09f18ee39a752925c3127', 'Márgara Pons', '-34.198016,-58.9720334', '2017-07-27 17:35:15', '', '', '', '', '', '', '', '', ''),
(616, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '2D065591-912F-7811-ACB0-A87D4E40E7DF', '1-94d7989cd0886987cb2077ef5ce55f8a', '35432866', '-34.1981167,-58.9692', '2017-07-27 17:39:18', '', 'Roberto elias pianetti', '422552', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio,Desempleo', 'Si'),
(617, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '32F79FC6-FD08-E504-B012-374911DAB3F0', '1-35f358ae4a78fc30ddf1e3bcb2839309', 'Marina', '', '2017-07-27 17:38:18', '', '', '', '', '', '', '', '', ''),
(618, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '37B61A6D-7CC2-A0B3-819F-F497F4DA7711', '1-38980b65879ef6db66a62e0c9a4c42b8', 'Márgara Pons', '-34.1979898,-58.972102', '2017-07-27 17:31:04', '', 'Eduardo Torres', '544566', '26-39', 'B', 'B', 'Cambiemos', 'Educación', 'Si'),
(619, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '39237438-2587-B9D3-83D8-083CDD045F1E', '1-fcee4e3f83c35cc759d4ea9d8808c769', 'Nicotra', '-34.1967436,-58.9670274', '2017-07-27 17:39:55', '', 'Fabiana Aguilar', '', '40-59', 'B', 'B', '1 País', 'Inseguridad,Tránsito/transporte,Cloacas', 'No'),
(620, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '69623E89-2CF6-2C74-9230-83208FC78046', '1-bb734374d72af89f52aace09130d9f99', 'Marina', '', '2017-07-27 17:32:30', '', 'Liliana Gonzalez', '', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Mal estado del barrio', 'Si'),
(621, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '6A965B47-1844-8A87-85D1-8CE3ED7B14AE', '1-fe5ce2c93ec131bd610a7b6a9b9c5d7d', 'Marina', '', '2017-07-27 17:39:22', '', '', '', '', '', '', '', '', ''),
(622, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '7275E573-16B0-84BF-A1C2-78D34F695FBD', '1-d3f19f0fdd10eae36f47c90914ed2621', 'Márgara Pons', '-34.1979898,-58.972102', '2017-07-27 17:31:32', '', '', '', '', '', '', '', '', ''),
(623, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, '72CCD164-A6A3-853B-A455-24107CA8416E', '1-49e3793f679861707afaa3ac8a58b95a', 'Marina', '', '2017-07-27 17:35:23', '', '', '', '', '', '', '', '', ''),
(624, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'B5427747-4AE3-F951-BCBD-189AE50A574C', '1-312836d016fa4fd39c844c869683842e', 'Márgara Pons', '-34.1979898,-58.972102', '2017-07-27 17:33:40', '', 'Nancy Acosta', '323833', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(625, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'B8731A8E-8E3D-C025-BA1A-B55ACE8FC906', '1-4cb793e6f7efaa60ca4f9aaeb3ef785f', 'Marina', '', '2017-07-27 17:37:16', '', '', '', '', '', '', '', '', ''),
(626, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'CD2C3616-87D7-F1A8-9F54-6D4526684C23', '1-729b8e36acb7c864dbd41a3f7c4ecf20', 'Leandro', '-34.1977529,-58.9658292', '2017-07-27 17:36:20', '', 'Ramona ruiz', '432475', '+60', 'B', 'B', 'Cambiemos', 'Mal estado del barrio,Tránsito/transporte', 'Si'),
(627, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'D21349F2-EAD3-0B46-AD80-6CEBF4F6D1A9', '1-73d85040ef90b07fa121619f7a8bb05f', 'Leandro', '-34.198388,-58.9657845', '2017-07-27 17:30:11', '', 'Sara', '15563492', '40-59', 'B', 'B', 'Cambiemos', 'Mal estado del barrio', 'Si'),
(628, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'DA0487AF-23CE-2FB9-9105-2C783D145E45', '1-a17b9f6f1879fecc27d8e0d062129bde', 'Marina', '', '2017-07-27 17:33:45', '', '', '', '', '', '', '', '', ''),
(629, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'DD3EF9E2-4C5E-B4B4-A912-21B805C940AE', '1-c4b2088c36353be16f25a2a1175063fa', 'Nicotra', '-34.1995411,-58.9690282', '2017-07-27 17:35:55', '', '', '', '', '', '', '', '', ''),
(630, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'EE35CE02-A521-7E5E-A65A-F467D735C4AA', '1-b124ee3a66e76969852c11ac1215cd77', 'Leandro', '-34.1977249,-58.9659748', '2017-07-27 17:37:59', '', 'Marcelo', '15452031', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(631, '2017-07-27 17:40:02', '2017-07-27 20:40:02', 0, 'F7C2DF85-27E5-660A-8DDA-C0A1DB7DCCAD', '1-49f370b8b7ee4ed48d4a0788cfa4cd06', '23528843', '-34.1990554,-58.9668371', '2017-07-27 17:34:17', '', 'Raimundo luque', '', '+60', 'R', 'R', 'NS/NC', 'Inseguridad,Falta de vivienda,Educación', 'Si'),
(632, '2017-07-27 17:50:02', '2017-07-27 20:50:02', 0, '0836E588-2183-28E6-9226-8C331C6F9FD9', '1-5792f006c09da292d47c6f43efb310b6', '35432866', '-34.1980745,-58.9694352', '2017-07-27 17:46:38', '', 'Orellano gladys', '468931', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Inseguridad,Desempleo', 'Si'),
(633, '2017-07-27 17:50:02', '2017-07-27 20:50:02', 0, '14C0FB84-8EC6-2940-884C-E713A64F6C63', '1-e0b0eff633bd87eb005e120ac13f7484', 'Leandro', '-34.1979129,-58.9666467', '2017-07-27 17:44:06', '', 'Mirta', '15583686', '+60', 'B', 'B', 'Cambiemos', 'Cloacas,Mal estado del barrio,Inseguridad', 'Si'),
(634, '2017-07-27 17:50:02', '2017-07-27 20:50:02', 0, '42F6F49E-D3AB-7E13-857A-EEC964D4FDE1', '1-e50c6aac9b92f3df24d40bc1078c249f', '23528843', '-34.1987049,-58.965023', '2017-07-27 17:44:44', '', '', '', '', '', '', '', '', ''),
(635, '2017-07-27 17:50:02', '2017-07-27 20:50:02', 0, '7CB13E1A-187C-A6FC-A506-D9F10AEC0FA6', '1-012b50cc2b5b86c7e25364f8bbc20b57', '35432866', '-34.1979772,-58.969368', '2017-07-27 17:43:34', '', 'Duarte nelida paulina', '15575975', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Educación', 'Si'),
(636, '2017-07-27 17:50:03', '2017-07-27 20:50:03', 0, '82E88C9E-95A3-339C-85A2-21F098773D6D', '1-1581a98a6d0c4252359d8e45bfafceec', 'Nicotra', '-34.1990153,-58.9690097', '2017-07-27 17:43:05', '', '', '', '', '', '', '', '', ''),
(637, '2017-07-27 17:50:03', '2017-07-27 20:50:03', 0, 'B6983CF1-2CEE-7DF2-AA72-FE1B0C90C605', '1-afc43562625c9e64ba5dcaaa10155712', '23528843', '-34.1986381,-58.9651349', '2017-07-27 17:43:29', '', 'Alejandro rios chamorro', '432498', '+60', 'M', 'M', 'Cambiemos', 'Tránsito/transporte,Inseguridad', 'Si'),
(638, '2017-07-27 17:50:03', '2017-07-27 20:50:03', 0, 'F571666E-2DFE-02E0-9FE6-49E470ABB535', '1-0c531201f0da41201755d63d958ac1fd', 'Marina', '', '2017-07-27 17:48:12', '', 'Silvana Baroni', '', '16-25', 'M', '', 'NS/NC', 'Inseguridad,Mal estado del barrio', ''),
(639, '2017-07-27 18:00:03', '2017-07-27 21:00:03', 0, '8B9FFB62-91EA-13E5-9577-1878017FFCF6', '1-834c5a1434d6cac6e79ea8122f884656', '35432866', '-34.1980114,-58.9697712', '2017-07-27 17:56:01', 'vendranacho@hotmail.com', 'Vendramini ruben', '466478', '40-59', 'B', '', 'Cambiemos', 'Cloacas,Falta de vivienda,Salud', 'Si'),
(640, '2017-07-27 18:00:03', '2017-07-27 21:00:03', 0, 'A9966A48-94B0-5785-B642-DF97ABDB5211', '1-6223c3843b419982086824688e23e95e', '35432866', '-34.1980532,-58.9695696', '2017-07-27 17:51:40', '', 'Nuñez dora', '15687389', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo,Mal estado del barrio', 'Si'),
(641, '2017-07-27 19:00:05', '2017-07-27 22:00:05', 0, '741356F3-F5DE-C7E9-9479-CB7F7E1EC555', '1-b5c8ba177995b51229b8a0307ad25435', '37434636', '-34.1633264,-58.9747996', '2017-07-27 18:52:01', 'rodri_87_1@hotmail.com', 'Rodrigo Meoniz', '3489653901', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Salud', 'Si'),
(642, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '2D725356-DA8D-2D37-A57A-4A55F31AB961', '1-112bc799e3bf50ed456a1a8816b65eb4', 'M', '-34.1927101,-58.9460879', '2017-07-29 10:28:08', '', '', '', '', '', '', '', '', ''),
(643, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '3B9790AD-1ED8-8D96-AD1E-47D549DDA3AC', '1-ec0dce4b88eb0d5e7dcf17215bf1afab', 'M', '-34.1930662,-58.9458528', '2017-07-29 10:24:46', '', '', '', '', '', '', '', '', ''),
(644, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '44046B89-B415-8012-984C-377CB33A1441', '1-26b91f8ae34d741e13d60dc058bd9237', 'M', '-34.1927301,-58.9460544', '2017-07-29 10:27:39', '', '', '', '', '', '', '', '', ''),
(645, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '4A4D0C2F-F684-473C-A415-45EB204C6B11', '1-1414db647d3eb643d64a58e6a79ef87e', 'M', '-34.1926207,-58.9459088', '2017-07-29 10:29:22', '', '', '', '', '', '', '', '', ''),
(646, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '8EDE015E-6A52-7955-AC1B-18AAA26A8A80', '1-991d9c5310904378dde5e66572f28c06', 'M', '-34.1928023,-58.946032', '2017-07-29 10:27:24', '', '', '', '', '', '', '', '', ''),
(647, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '900C8FCC-0EB0-5F55-B20B-B7C59868FEC4', '1-942bfe92f8de304eb3aa6f560d669ea4', 'M', '-34.1929013,-58.9459648', '2017-07-29 10:26:13', '', '', '', '', '', '', '', '', ''),
(648, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '98EA509C-F9D9-9EEE-83BB-33F84BD7515A', '1-0d5a97b8fcd2e73a40ca5aa349fa0b9f', 'M', '-34.192647,-58.9458976', '2017-07-29 10:29:44', '', '', '', '', '', '', '', '', ''),
(649, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, '9D7F114F-1B7A-593F-86DE-9B98F6837E4D', '1-4707ea2b45c640a15098bc8db4719921', 'M', '-34.1930858,-58.9458528', '2017-07-29 10:24:19', '', '', '', '', '', '', '', '', ''),
(650, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, 'D6CA3585-70D7-59A7-AD00-81A74D2E2398', '1-35a73cd743a0c6641a249e5034039d3b', 'M', '-34.192994,-58.9458752', '2017-07-29 10:25:26', '', '', '', '', '', '', '', '', ''),
(651, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, 'EC194C46-6E4C-A221-B339-6E7489A08D15', '1-67cbec7f3ae8fb12262c7cd919dea830', 'M', '-34.1931054,-58.9458528', '2017-07-29 10:23:38', '', '', '', '', '', '', '', '', ''),
(652, '2017-07-29 10:30:02', '2017-07-29 13:30:02', 0, 'F822801C-68EF-2293-AE2E-62E9535073F4', '1-34e67874d3614bf2f0c3fe49519529f1', 'M', '-34.1930231,-58.9456289', '2017-07-29 10:24:03', '', '', '', '', '', '', '', '', ''),
(653, '2017-07-29 10:30:03', '2017-07-29 13:30:03', 0, 'FDD40E55-E37E-D305-AD88-F087412F1166', '1-1d8022a509e9c881d89eb204662dfa27', 'M', '-34.1926274,-58.9458976', '2017-07-29 10:28:50', '', '', '', '', '', '', '', '', ''),
(654, '2017-07-29 10:40:01', '2017-07-29 13:40:01', 0, '3C333242-0100-1343-A396-4225B185C735', '1-42b737ef3256e356b0b203676d45fbfd', 'M', '-34.1926519,-58.9454945', '2017-07-29 10:38:42', '', '', '', '', '', '', '', '', ''),
(655, '2017-07-29 10:40:02', '2017-07-29 13:40:02', 0, '8D3A8263-9FEB-6E84-BDB2-E119D87048F2', '1-e7d3d3442a17e2cac9628c180a9f7b0b', 'M', '-34.192378,-58.9454273', '2017-07-29 10:37:21', '', '', '', '', '', '', '', '', ''),
(656, '2017-07-29 10:40:02', '2017-07-29 13:40:02', 0, '9F3CAEE2-9569-47FC-98DF-45D8C53F52D2', '1-fe00b0ecd183659a821e3ba4fa17776b', 'M', '-34.1925818,-58.9458752', '2017-07-29 10:31:22', '', '', '', '40-59', 'B', 'B', 'Unidad Ciudadana (Ruben Romano)', '', 'Si'),
(657, '2017-07-29 10:40:02', '2017-07-29 13:40:02', 0, 'B33E40D9-CD37-E55F-84AF-1B8E67AB6DCE', '1-13de45231574236c24314471b760f4bc', 'M', '-34.1924908,-58.9458304', '2017-07-29 10:34:45', '', '', '', '+60', 'M', 'M', 'NS/NC', 'Mal estado del barrio', 'No'),
(658, '2017-07-29 10:40:02', '2017-07-29 13:40:02', 0, 'B5319FAD-0C06-7EA6-A878-7A44068A6336', '1-5fc7e01c5409614dc471e72342265fe1', 'M', '-34.1926386,-58.9455169', '2017-07-29 10:39:00', '', '', '', '', '', '', '', '', ''),
(659, '2017-07-29 10:40:02', '2017-07-29 13:40:02', 0, 'F7993EF7-B58A-D6E0-8ABD-9FC212563A72', '1-c22d69ea3fc01dd51e1651be87bb2466', 'M', '-34.1925183,-58.9457185', '2017-07-29 10:36:07', '', '', '', '', '', '', '', '', ''),
(660, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '12ED55AE-F429-4CCB-9068-77F5582532EB', '1-a060a53ca70de6e7d2e5184ad5c752be', 'juan carlos gimenez', '-34.2017406,-58.941475', '2017-07-29 10:47:10', '', '', '', '', '', '', '', '', ''),
(661, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '18489576-DB5A-EDC8-8F6D-228C6EA9AF2E', '1-a7bc84495216fceecdcee20e875bb19e', 'M', '-34.1927838,-58.945405', '2017-07-29 10:42:40', '', '', '', '', '', '', '', '', ''),
(662, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '1B68F355-0D95-F1BF-9B25-37604FD07184', '1-fbc95890768b4458ca0ae5f7883eaedc', 'Valeria novelli', '-34.1964069,-58.942785', '2017-07-29 10:48:52', '', 'Carmona lucas', '', '26-39', 'M', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(663, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '1B8336AE-CAE5-A247-A863-CCF09C9EEE8E', '1-d6edf493e48493a58b6a19ab7a7f2084', 'Ludmila', '-34.1982469,-58.9426282', '2017-07-29 10:45:48', '', '', '', '', '', '', '', '', ''),
(664, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '28708C6A-438E-9274-AD61-3B051B134203', '1-0c5e3caa8b64de1ec33875f2eef8f4dc', 'M', '-34.1932447,-58.9451586', '2017-07-29 10:46:32', '', '', '', '', '', '', '', '', ''),
(665, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '2F3E01EC-0AEB-409A-B79E-FD698359BCBE', '1-69caee856857af5b94ac0c8ca20d339e', 'M', '-34.1927972,-58.9453826', '2017-07-29 10:43:17', '', '', '', '', '', '', '', '', ''),
(666, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '325E59D7-7E87-8F1A-BF87-465FA531019A', '1-688016b95a6893176611a09e62ab9c75', '29433901', '-34.1945067,-58.9425163', '2017-07-29 10:49:42', '', 'Perla arocena', '442414', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Educación,Desempleo', 'Si'),
(667, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '3C013602-4C4C-15C9-9029-87AC0E3FA52F', '1-1484bc013427c5658e239bc812583c2c', '23528843', '-34.1952382,-58.943887', '2017-07-29 10:42:35', '', '', '', '', '', '', '', '', ''),
(668, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '4149F6E5-1FD3-0D03-9D97-154846002D34', '1-6ab25745e8bd7812d67df29351ea6f62', 'jose schirripa', '-34.1935125,-58.9457297', '2017-07-29 10:42:36', '', 'matias', '', '26-39', 'R', 'M', '', 'Tránsito/transporte,Servicio de Absa,Mal estado del barrio', 'Si'),
(669, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '456127A7-5B20-1FFB-AB18-A45C14D39D25', '1-3545aaae1b057f5f4c639e9768198bf2', 'Gaston Barrios / José alvarez bonola', '-34.19887433,-58.93935406', '2017-07-29 10:49:32', '', 'Patricia', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(670, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '4F111324-1A45-22DE-B3B1-B12B8E81BE7F', '1-47f395979af19556457f4c5ccca5d2c1', 'M', '-34.1930849,-58.9453938', '2017-07-29 10:46:59', '', '', '', '', '', '', '', '', ''),
(671, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '5C899356-7236-06E2-8976-B6ABAB8B8DF1', '1-2a44c6f56a9a0c15de92d0f929fe77a1', 'Ludmila', '-34.1982406,-58.9426058', '2017-07-29 10:48:07', '', 'Nadia', '442137', '26-39', 'B', 'B', '', '', ''),
(672, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '661889D7-2206-79C3-A2E6-E21A3B325031', '1-376a68a1b8b2de6aa838355d4eaf2ea1', 'M', '-34.1932385,-58.9451362', '2017-07-29 10:46:20', '', '', '', '', '', '', '', '', ''),
(673, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '672B7501-4100-BDBE-A65D-F2BAAD1F381C', '1-847160a536776e526f4a5bd731038f8e', 'Nicotra', '-34.2010419,-58.9408368', '2017-07-29 10:49:01', '', '', '', '', '', '', '', '', ''),
(674, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '7B3FB242-1B9F-6B29-A9E6-281C9D69F030', '1-f6260dd1efde191227f5e56419994694', 'juan carlos gimenez', '-34.2017606,-58.9414414', '2017-07-29 10:48:17', '', '', '', '', '', '', '', '', ''),
(675, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '7E2463CC-4FE5-2CE5-9EF8-2192350C6D99', '1-8a94835e53cbea72a7d48156b7dbda62', 'Nicotra', '-34.2009546,-58.9404898', '2017-07-29 10:46:03', '', '', '', '', '', '', '', '', ''),
(676, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '858BE6BB-6764-6656-9880-53DD984DE3CD', '1-3415305452a9ee1802d2e920f57b8d50', 'Nerio Nogueira', '-34.1996751,-58.9405696', '2017-07-29 10:43:45', '', '', '', '', '', '', '', '', ''),
(677, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '9E7A2D4D-6496-4A59-9210-AF51E1FB20A6', '1-41106b231a72f28802f4f50c00c0d936', 'juan carlos gimenez', '-34.2015598,-58.9412847', '2017-07-29 10:46:28', '', '', '', '', '', '', '', '', ''),
(678, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, '9FB2C355-4E39-670B-A5D7-7AACD50098B4', '1-2ded41585a4daa88bf5f757678e95f10', 'M', '-34.1928326,-58.9451586', '2017-07-29 10:44:52', '', '', '', '', '', '', '', '', ''),
(679, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, 'A5EAF4FB-3A82-D4E6-9806-242D86C092D9', '1-037a8977dcf2d15e16b6cca2cec42160', 'Nerio Nogueira', '-34.1998077,-58.9406765', '2017-07-29 10:42:59', '', '', '', '', '', '', '', '', ''),
(680, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'B12405B5-AB86-C4A3-9802-76C6EC6EC74F', '1-9f16641bfa7c1788683a42d6d007bf06', 'Nerio Nogueira', '-34.1996795,-58.9405725', '2017-07-29 10:45:13', '', '', '', '', '', '', '', '', ''),
(681, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'C30AC830-D52D-E9EC-9147-3E31DCC57D19', '1-7a54bc3183265f8df76156ab430c93de', '23528843', '-34.1780274,-58.9483944', '2017-07-29 10:46:55', '', 'Monica murua', '442636', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(682, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'C3EFDB44-F399-6831-A496-AD2E58A80E50', '1-746477bcdff80581d253ec54de927487', 'Ludmila', '-34.1979155,-58.9429865', '2017-07-29 10:44:49', '', 'Espinoza', '449117', '40-59', 'M', 'M', '', 'Higiene', ''),
(683, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'C454CFAF-812E-155B-B8BD-DF114D672CF0', '1-967dd2222760c51c74178e94798e31a9', 'Nicotra', '-34.2010223,-58.9408368', '2017-07-29 10:47:50', '', '', '', '', '', '', '', '', ''),
(684, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'CBA78362-9882-869A-8587-2096221F33D6', '1-8e607bcaafe8bfc78af503aeb24321a7', 'juan carlos gimenez', '-34.2015055,-58.9414414', '2017-07-29 10:49:15', '', '', '', '', '', '', '', '', ''),
(685, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'CEB4A1B7-EC17-43DD-A2E3-5E6C5FA7B9A7', '1-11e0eab30c39aea6a606a691c873c653', 'Nicotra', '-34.200942,-58.940445', '2017-07-29 10:44:53', '', '', '', '', '', '', '', '', ''),
(686, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'D1C17899-D337-A3E8-B0A6-C670152D70C3', '1-c16345d416f3838a6bba3b1c2f1355b4', 'M', '-34.1935067,-58.9456737', '2017-07-29 10:47:35', '', '', '', '', '', '', '', '', ''),
(687, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'D87757D1-6F69-8E70-AC0F-B83BDC73BBC5', '1-54f7aed67d6b8db641887b1a8e116a7a', 'M', '-34.1926983,-58.9454497', '2017-07-29 10:41:21', '', '', '', '40-59', 'B', 'B', 'Cambiemos', 'Luminarias,Mal estado del barrio', 'Si'),
(688, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'DD06B890-A4E8-097F-A26E-7019FD4E7203', '1-ed3dc0d3799329d83889fa865403985a', 'Valeria novelli', '-34.1968498,-58.9424043', '2017-07-29 10:45:53', '', 'Elsa', '', '+60', 'B', 'B', 'Cambiemos', 'Tránsito/transporte', 'Si'),
(689, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'EB6FC4AE-C922-14B7-B40F-245018D8733B', '1-b0ddd483138330a250b1245b052d1dcd', 'jose schirripa', '-34.1936737,-58.94592', '2017-07-29 10:45:50', '', 'nicolas gauna', '677108', '', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(690, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'F0603CE1-2757-34A3-8979-5A2FD38214F7', '1-d20067da6b7fc3e655e11012f4e7d27a', 'Nicotra', '-34.2009032,-58.9404114', '2017-07-29 10:43:45', '', 'Armesto 109', '', '', '', '', '', '', ''),
(691, '2017-07-29 10:50:03', '2017-07-29 13:50:03', 0, 'FC100187-D2B5-6688-8616-8B6F18EBDE2E', '1-27095e59fabf7e2b239cf608b9efeedb', 'M', '-34.1928435,-58.9453378', '2017-07-29 10:43:38', '', '', '', '', '', '', '', '', ''),
(692, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '151D18A5-F0EE-F063-8AD3-C13E0AA61107', '1-b4600888a82ea2448eef3092825e4565', 'N', '-34.1933123,-58.9449795', '2017-07-29 10:56:46', '', '', '', '', '', '', '', '', ''),
(693, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '1D560D7C-AE90-D697-84F6-2ABC04184968', '1-8bc01a39c8d425296f19a1fccf2f8d3e', 'N', '-34.1933123,-58.9449795', '2017-07-29 10:57:18', '', '', '', '', '', '', '', '', ''),
(694, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '1FC19E74-0F87-1EF4-B3D7-E5AA1EC1F0F7', '1-a1ce8673e6c3da83ca70f4d40c020bf8', 'juan carlos gimenez', '-34.2017121,-58.9411279', '2017-07-29 10:53:10', '', '', '', '', '', '', '', '', ''),
(695, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '32532ED7-000F-8D8B-B238-6ECA79EF0133', '1-1446bf2ef072c5739b0348606ebac32d', 'M', '-34.1931354,-58.9455393', '2017-07-29 10:51:03', '', '', '', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(696, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '4F56A92D-BF7E-6C42-B231-3C3F715BF8A8', '1-52e8aab06f11fb37c0b901281822a210', 'Nerio Nogueira', '-34.1995948,-58.9404338', '2017-07-29 10:53:43', '', 'Evangelina Lucía crespo', '441781', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(697, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '56D0DD9F-C08B-FD00-8213-ADB171B1B8FA', '1-35fe3eb464e24f55ea8e39bb8b081b16', 'Nicotra', '-34.2013276,-58.941016', '2017-07-29 10:51:17', '', '', '', '', '', '', '', '', ''),
(698, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '6E400FD2-19D4-C76B-A5FF-B11597C6A8E8', '1-7d8681cd10a63fdbc381fcbaffe558d6', 'Valeria novelli', '-34.1969991,-58.9430425', '2017-07-29 10:56:14', '', 'Romina', '348915519287', '26-39', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(699, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '7442466F-2E6D-0079-AEC4-8FBFD603855F', '1-1ba1107cd52b0017647e1082ed799e94', 'juan carlos gimenez', '-34.2013553,-58.9403442', '2017-07-29 10:58:03', '', '', '', '', '', '', 'NS/NC', '', ''),
(700, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '7D11A14A-8B32-81E2-853C-7012D672A6C7', '1-a83d1780fa38d27dd637ff8b82c69047', 'Nicotra', '-34.2011467,-58.9408256', '2017-07-29 10:50:03', '', '', '', '', '', '', '', '', ''),
(701, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '8C077E37-0C98-E8A9-8915-45A20C63BCB6', '1-3919ecc65fb2cdebd994b0f5a42e115e', 'juan carlos gimenez', '-34.2018758,-58.9411167', '2017-07-29 10:54:01', '', '', '', '', '', '', '', '', ''),
(702, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, '9650B4E7-80E8-4730-BA29-94B10A5DFB0A', '1-c6380cee2e5e75543476bae1e1977caf', 'Andrea ibar', '-34.1984506,-58.9398516', '2017-07-29 07:55:25', '', 'Horacio Martinelli', '440774', '40-59', 'R', 'R', '', 'Cloacas,Higiene', 'No'),
(703, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, '9F63583D-6CBC-5149-9B1D-BF0F0345DDCC', '1-7c81320db4313ba29bcb8a9739cd2674', 'N', '-34.1932251,-58.9451586', '2017-07-29 10:55:20', '', '', '', '', '', '', '', '', ''),
(704, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, '9FF47E07-7885-C374-AF3B-7CB7019D604C', '1-ba09c627c1b957b09e9cc0a0dd17dea4', 'Nerio Nogueira', '-34.1994732,-58.9402099', '2017-07-29 10:58:43', '', '', '', '', '', '', '', '', ''),
(705, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'AA20DE25-D3B2-4C58-AA39-23D4AC656D34', '1-ab19e0cdb7d36340fa11fda6b289c25d', 'M', '-34.1934171,-58.9449683', '2017-07-29 11:00:35', '', '', '', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Mal estado del barrio', 'Si'),
(706, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'AAACB554-5913-15B2-971D-417AF20CA2A5', '1-c492f2b64590d0007b97d149654f1f6e', 'jose schirripa', '-34.1940319,-58.9462581', '2017-07-29 10:53:54', '', 'chavez', '15599009', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte', 'Si'),
(707, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'B68E3CB9-170E-F034-B42B-F7B9230DBAAF', '1-9260ca63ba8630ea0edb4a796b17a409', 'N', '-34.1932431,-58.945293', '2017-07-29 10:54:03', '', '', '', '', '', '', '', '', ''),
(708, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'C2B894EF-F204-FB02-A027-D5896963EB95', '1-a9871a2e90e8a34bfb04a20f0c286998', 'juan carlos gimenez', '-34.2013302,-58.9402546', '2017-07-29 10:59:42', '', '', '', '', '', '', 'NS/NC', '', ''),
(709, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'C2F48A63-101F-2B89-9957-FD97235E59E0', '1-2a59736d78a2bfdd4d4ab6280b66077f', 'N', '-34.1932447,-58.9451586', '2017-07-29 10:54:40', '', '', '', '', '', '', '', '', ''),
(710, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'C5C9D948-42CE-A4D0-A1B5-CE083D86F806', '1-5665bd6f78a95ac4ca36281923f4b35e', 'Nicotra', '-34.2014366,-58.9411951', '2017-07-29 10:59:32', '', 'Gonzalo lopez', '', '40-59', 'B', 'B', 'Cambiemos', '', 'Si'),
(711, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'C9F80665-8481-8A86-8B28-CB7785E6FA24', '1-e9bacb383132e000a37e8fb12463b0e5', 'juan carlos gimenez', '-34.2015341,-58.9407025', '2017-07-29 10:55:13', '', '', '', '', '', '', '', '', ''),
(712, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'CC8933A8-9559-9533-98F4-0A16755B48C0', '1-53d6c7e2b055ea19076a848fd211bde4', 'N', '-34.1932259,-58.9450914', '2017-07-29 10:56:03', '', '', '', '', '', '', '', '', ''),
(713, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'D1BF3C66-23F7-DB96-A07D-6449B0CA3C2D', '1-2fc747bf59ae6d586622b9301f295015', '29433901', '-34.1946934,-58.9427626', '2017-07-29 10:52:50', '', '', '', '', '', '', '', '', ''),
(714, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'D3614996-A7E9-A89F-81A2-B1D65059FB92', '1-65a23cdb764498d069ac8a4f035a598b', '29433901', '-34.195096,-58.9430089', '2017-07-29 10:54:35', 'kcastro@campana.gov.ar', 'Karina castro', '442449', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Tránsito/transporte', 'Si');
INSERT INTO `app_campana_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`) VALUES
(715, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'D74F9832-58A0-D78E-B55F-D796DA19039E', '1-6addd4d25a84048636f8234b2092a5dc', 'juan carlos gimenez', '-34.201936,-58.9413428', '2017-07-29 10:52:46', '', '', '', '', 'R', 'R', 'NS/NC', '', ''),
(716, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'E423D20D-A821-FFEB-B632-752526C4A08F', '1-27d8ceea38f48fc04045c107a81f2ea4', 'Nicotra', '-34.2013126,-58.9411727', '2017-07-29 10:52:38', '', '', '', '', '', '', '', '', ''),
(717, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'E9F703AC-2629-32AF-873C-DC4AE48132FF', '1-2ba4ed9e3db17c5ba8479a40bffcf265', '23528843', '-34.1780274,-58.9483944', '2017-07-29 10:57:52', 'carolinaocampo@hotmail.com', 'Ocampo carolina', '15656312', '26-39', 'R', 'B', 'Cambiemos', 'Tránsito/transporte,Falta de vivienda', 'No'),
(718, '2017-07-29 11:00:03', '2017-07-29 14:00:03', 0, 'F4535F99-76B4-A67F-87CF-A753F5528F8C', '1-31ea5e39a922c2fe875dd61e009a81cb', '23528843', '-34.1947635,-58.9444702', '2017-07-29 10:53:25', '', '', '', '', '', '', '', '', ''),
(719, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '0402D4B5-3EAB-7B67-8E4C-299C3CEEF213', '1-a2cdb8cf30ac56d03b2273c4f0a9445b', 'M', '-34.1935353,-58.9449347', '2017-07-29 11:02:05', '', '', '', '', '', '', '', '', ''),
(720, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '08CF9924-D5E5-F424-87C2-60443BF19FB3', '1-d8712169ac937ee171c055b120b18a7b', 'Nerio Nogueira', '-34.1991524,-58.9396948', '2017-07-29 11:08:08', '', '', '', '', '', '', '', '', ''),
(721, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '197E85B3-3829-3766-86C8-D4FFF819E709', '1-8a8d840f63cbca7e1ba674a171344267', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:07:20', '', '', '', '', '', '', '', '', ''),
(722, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '1C2096F1-FFA9-550B-82ED-3D819453106E', '1-b411cc0518ebe5841093e281bf00ed1f', 'Nicotra', '-34.2015557,-58.9416206', '2017-07-29 11:01:59', '', '', '', '', '', '', '', '', ''),
(723, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '2D5D9D60-294A-8017-A4B8-B121B0EF74DF', '1-82563c9165cb39188a35b63ae64b9424', 'Nerio Nogueira', '-34.1992477,-58.9399299', '2017-07-29 11:06:28', '', '', '', '', '', '', '', '', ''),
(724, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '3918E9A4-0BDC-921E-A505-379617E921F8', '1-7718e0ab05e144ac0819b2e3efa97a31', 'M', '-34.1935495,-58.9448451', '2017-07-29 11:05:07', '', '', '', '', '', '', '', '', ''),
(725, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '5188AC03-CCBC-AB63-9DD2-426DD4B97463', '1-b9d722b9600c539e44f4b1df0f3e2500', 'M', '-34.1936209,-58.9448899', '2017-07-29 11:04:48', '', '', '', '', '', '', '', '', ''),
(726, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '5386778A-7589-E376-B668-4CB54848E8B9', '1-f598f92b98369ece27a1e9ac0438e663', 'Nerio Nogueira', '-34.1994402,-58.9402322', '2017-07-29 11:04:17', 'marinavanessa._@hitmail.com', 'Marina Rodríguez', '3489593816', '26-39', 'B', 'B', 'Cambiemos', '', 'Si'),
(727, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '557C4A10-2774-FC66-AFC5-6ACB39D6213F', '1-9a41eb6bed36e5b37649aaf88860c070', 'Pablo churruarin 28714105', '-34.199139,-58.9397172', '2017-07-29 11:05:21', '', 'Mariela caviggia', '3489514210', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Cloacas,Espacio Público', 'Si'),
(728, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '5C0F0EDF-89F4-4F2A-96D6-8D74BA0772EA', '1-d457f7c36ea77eb420c76a3257776907', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:05:08', '', '', '', '', '', '', '', '', ''),
(729, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '5EE00CB7-9165-DC03-A459-D43486EF88A9', '1-ae0c656dd60e543acdbf484cfb15b8c4', 'M', '-34.1935549,-58.9449347', '2017-07-29 11:02:55', '', '', '', '', '', '', '', '', ''),
(730, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '6289116D-934F-A60C-854C-F98558B81203', '1-80c21c33fedaaa908bb4f4c382bdb136', 'juan carlos gimenez', '-34.2007636,-58.9400531', '2017-07-29 11:03:15', '', '', '', '', '', '', '', '', ''),
(731, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '6938CF24-571E-0AD3-A4D0-D5F6B3185F50', '1-4aef8944bf71b9ba9e552a46c73c9d2c', 'juan carlos gimenez', '-34.201324,-58.9402322', '2017-07-29 11:00:48', '', '', '', '', '', '', '', '', ''),
(732, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '75CEB269-EFF3-FA52-B6D9-B589EB5DE473', '1-a1e9b61a724d324f71e03c39d6c8e0f0', 'Nicotra', '-34.2013445,-58.9417773', '2017-07-29 11:08:36', '', '', '', '', '', '', '', '', ''),
(733, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '770BE9C5-0E5B-31FB-BAAC-96646E16E7EF', '1-3bb804a42e090787cb007a70c9fc51f4', 'Andrea ibar', '-34.1999715,-58.94227', '2017-07-29 08:07:55', '', 'Rafaela', '', '26-39', 'B', 'B', '', 'Higiene', 'Si'),
(734, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '7864D3E6-1408-4C4B-9E6C-1A7BB68C4B9B', '1-09778c9ef733586cc88acf26e05433a9', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:04:19', '', 'Guillermo aranda', '442410', '', 'B', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(735, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '79BDEA67-74D0-DA90-849D-7619041B356B', '1-71e4e903e80038926cf32364ebdb4715', 'juan carlos gimenez', '-34.2007636,-58.9400531', '2017-07-29 11:05:28', '', '', '', '', '', '', '', '', ''),
(736, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '8F7F5831-6B84-603B-A3BD-F24822013681', '1-57cc796920de5eb2d78b08984092dbe6', 'M', '-34.1939302,-58.9447332', '2017-07-29 11:07:10', '', '', '', '', '', '', '', '', ''),
(737, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, '9E4C1578-4ECF-259D-96FB-683623C1E2FE', '1-e50b2c16206b4c8ba8d3b8b4245cd4e4', 'Nicotra', '-34.2012927,-58.9417325', '2017-07-29 11:07:37', '', '', '', '', '', '', '', '', ''),
(738, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'B568704C-4AF5-F0F5-A1D0-31A5603C920C', '1-5496ba70d4dfe5c33e0c2b2ac39707c8', 'Nicotra', '-34.2014359,-58.9417885', '2017-07-29 11:06:17', '', '', '', '26-39', 'B', 'B', 'NS/NC', 'Desempleo', 'Si'),
(739, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'B5ADA2BD-E929-4D58-8B17-E76D3664C88A', '1-2506bc220ec95a0367df00ead954a6dd', 'jose schirripa', '-34.1928395,-58.9461999', '2017-07-29 11:07:08', '', 'leinardo cartier', '', '40-59', 'R', 'B', 'NS/NC', 'Tránsito/transporte,Inseguridad,Salud', 'Si'),
(740, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'BCEE86B6-A3CD-BB67-A7CE-F23638B0299D', '1-52836237f522b58f5bc809ad3a2d857b', 'M', '-34.1935549,-58.9449347', '2017-07-29 11:03:37', '', '', '', '', '', '', '', '', ''),
(741, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'C27D23EB-0D44-AC75-B7DD-7AB51ABF3471', '1-7c158b76bce4c441fd8675bfa30263e2', 'juan carlos gimenez', '-34.2013365,-58.940277', '2017-07-29 11:02:06', '', '', '', '', '', '', '', '', ''),
(742, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'DEE418F0-94A1-9B1D-8553-B44BAF4E948E', '1-e46cbfb5b951fea6e32b5138bba1a093', 'M', '-34.1938989,-58.9446212', '2017-07-29 11:06:09', '', '', '', '', '', '', '', '', ''),
(743, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'DFC32050-0199-C111-8FBD-7E7D07F79871', '1-6ba80186b469a9557794cd6116b7b83a', 'juan carlos gimenez', '-34.2009612,-58.9404786', '2017-07-29 11:08:00', '', '', '', '', '', '', '', '', ''),
(744, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'E1E9BEA6-1AEE-0F60-9EEE-D38607674785', '1-f16b37c14ef15d2a6b17e1a1d56c466b', 'Valeria novelli', '-34.1970913,-58.9429865', '2017-07-29 11:07:07', '', 'Maria Elena', '442504', '+60', 'B', 'B', 'Cambiemos', 'Educación', 'Si'),
(745, '2017-07-29 11:10:04', '2017-07-29 14:10:04', 0, 'F8E73822-0EB9-6BF9-9380-3473471421E6', '1-7d913eed4f88e15192d55730e5765d01', 'Nicotra', '-34.2017214,-58.9414414', '2017-07-29 11:00:37', '', '', '', '', '', '', '', '', ''),
(746, '2017-07-29 11:10:05', '2017-07-29 14:10:05', 0, 'FD4DBFBB-14FA-93C8-95F6-F10693FE804E', '1-9b88f216113cfbc9f908d22e0c88c36d', 'Nerio Nogueira', '-34.1992347,-58.9399188', '2017-07-29 11:07:11', '', '', '', '', '', '', '', '', ''),
(747, '2017-07-29 11:20:01', '2017-07-29 14:20:01', 0, '01EF1ABE-576F-572C-8FB8-F32EF58C1602', '1-b12a6e52bf600bc18bbd611301e33a07', 'Betsabe arias', '-34.1977729,-58.9423371', '2017-07-29 11:11:52', '', 'Maria juana perez', '576536', '40-59', 'B', 'B', 'NS/NC', 'Inseguridad', 'Si'),
(748, '2017-07-29 11:20:01', '2017-07-29 14:20:01', 0, '0BE201F6-DDDA-C716-AB95-EAB4490E1496', '1-5895f2119fad50f264faa40e41977d58', 'Betsabe arias', '-34.1980392,-58.9419565', '2017-07-29 11:14:50', '', '', '', '', 'B', '', '', '', ''),
(749, '2017-07-29 11:20:01', '2017-07-29 14:20:01', 0, '3CA4287F-50F8-1692-B3A0-712500A420FA', '1-f446287c56d7187bbcd5d5a0f55ffa04', 'Nicotra', '-34.201172,-58.9414414', '2017-07-29 11:13:03', '', 'Claudio', '', '26-39', 'B', 'B', 'NS/NC', 'Servicio de Absa', 'Si'),
(750, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '4BC30A1B-3BCF-453C-BF32-FECE28041C52', '1-ca65e9e9802c3f95c4c63c8fdd3e9a90', 'juan carlos gimenez', '-34.20114,-58.9408368', '2017-07-29 11:12:00', '', 'milagros gonzalez', '', '16-25', 'B', 'B', 'Cambiemos', '', 'Si'),
(751, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '55D5DF34-D5A7-201E-A74D-6614FD97A3EA', '1-7a223dbbd7c32891528be7cf1aabf1f7', 'Betsabe arias', '-34.1981954,-58.9420236', '2017-07-29 11:17:22', '', '', '', '', '', '', '', '', ''),
(752, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '580FF8D5-0DE0-3908-89B6-6966E565E454', '1-beed61197a5ae2a61a94e20f281faf56', 'M', '-34.1937283,-58.9452034', '2017-07-29 11:19:41', '', '', '', '26-39', 'B', 'B', 'NS/NC', '', 'Si'),
(753, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '5C49ACC6-A578-C926-B6A0-8F9AC93FD1BA', '1-68ecdf4d8bdaa79a911311da1e54a71f', 'Betsabe arias', '-34.1980948,-58.9422252', '2017-07-29 11:13:48', '', '', '', '', '', '', '', '', ''),
(754, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '5F40B389-6EBA-80D5-BF2F-E0075322CAAE', '1-d46f5810991ba52d4494d294093ca153', 'Nicotra', '-34.2011327,-58.9414414', '2017-07-29 11:16:41', '', 'Yamila', '', '26-39', 'R', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(755, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '62834AF5-49E1-937C-A7A7-96D44D076C34', '1-b9244f0db04a6c38c0643331378f56ea', 'M', '-34.194084,-58.9450019', '2017-07-29 11:13:50', '', '', '', '', '', '', '', '', ''),
(756, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '66E22E5A-AFD6-ECAF-94A0-C2714FFEF12E', '1-0586db0474a418f8afacddbe79859350', 'juan carlos gimenez', '-34.2010415,-58.9408704', '2017-07-29 11:16:37', '', '', '', '', '', '', '', '', ''),
(757, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '670BB9A0-933A-ED42-B6B4-5A9451A33C22', '1-3c3c8d9635367cf8a796c3cbf63c9309', 'jose schirripa', '-34.1936282,-58.9458976', '2017-07-29 11:12:14', 'virzf@hotmail.com', 'virginia', '', '26-39', 'B', 'B', 'Cambiemos', 'Tránsito/transporte,Contaminación,Mal estado del barrio', 'Si'),
(758, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '68D40A83-36A7-3B83-AB2B-BC871ADAFE7B', '1-6cfa9b342917fa73519bc37237be9066', 'Andrea ibar', '-34.1997969,-58.942102', '2017-07-29 08:13:39', '', 'Cristian', '', '26-39', 'R', 'R', '', 'Mal estado del barrio', 'Si'),
(759, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '70201C8E-8C39-AD91-A58A-6761D0C486BE', '1-10d0635bf90d061818b63ac8f37eee6c', 'Betsabe arias', '-34.1984584,-58.9419117', '2017-07-29 11:18:32', '', '', '', '', '', '', '', '', ''),
(760, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '73FE9C4E-9FC7-5A56-8F41-305A5291D7AB', '1-5813ae7fcfba06a17a7fea239c956bab', 'M', '-34.1937424,-58.9451138', '2017-07-29 11:15:12', '', '', '', '', '', '', '', '', ''),
(761, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '7B1F0413-16DB-6EAB-B1FA-0C441C667FE7', '1-fdd67f325eaa97f6a19dfb8cbcdcdb8a', 'Betsabe arias', '-34.1980392,-58.9419565', '2017-07-29 11:15:30', '', '', '', '', '', '', '', '', ''),
(762, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '8204BA9A-1E4C-8319-80F5-270D835C2130', '1-61838257b09b876dca2372f02a630a26', 'Nerio Nogueira', '-34.1990175,-58.9394933', '2017-07-29 11:14:02', '', '', '', '', '', '', '', '', ''),
(763, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '8800C5BF-07F4-BAB2-BACF-F2078DCB6E54', '1-f9803ea26c941a4412032cd7ba427554', '39414354', '-34.1970341,-58.9428522', '2017-07-29 11:12:47', '', 'Adriana lemuchi', '', '40-59', 'B', '', 'Cambiemos', 'Inseguridad', 'Si'),
(764, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '90DBB8B1-A6EC-08E9-B602-4C6A5FD25D85', '1-f2c90228a75ae1252e683860574f26ea', 'Nerio Nogueira', '-34.1991724,-58.9396612', '2017-07-29 11:12:13', '', 'Sara silva', '442319', '+60', 'B', 'B', 'NS/NC', 'Servicio de Absa', 'Si'),
(765, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, '99D04594-3496-AE4A-A515-285CC5139718', '1-6abc5ed9aa9d8ec08f32c710ae6111f1', 'Valeria novelli', '-34.1973816,-58.9433224', '2017-07-29 11:17:19', '', 'Amalia', '', '40-59', 'R', 'B', 'Cambiemos', 'Inseguridad', 'Si'),
(766, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'A819C19F-DB57-3F75-B32F-411933FB37E9', '1-db207b46de5d9012632abb0433da7b4b', 'Betsabe arias', '-34.1980592,-58.9419229', '2017-07-29 11:16:30', '', '', '', '', '', '', '', '', ''),
(767, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'B131E609-7226-4E28-90C2-6B19ED078FAB', '1-32a998474099a0764017fbf5cc01cf95', 'Nicotra', '-34.2012349,-58.9411055', '2017-07-29 11:19:29', '', '', '', '', '', '', '', '', ''),
(768, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'CDEFCF21-C699-FFEC-B412-A40E2355011D', '1-ebd397e6cc5e647ce60e587dfafa10a4', 'M', '-34.193937,-58.9452482', '2017-07-29 11:14:42', '', '', '', '', '', '', '', '', ''),
(769, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'D6AFFC6C-89A2-1870-B8CE-B888A916E70F', '1-7f39ab305e167f87929912deb4a5d3f7', 'Nerio Nogueira', '-34.1990104,-58.9395381', '2017-07-29 11:16:05', '', '', '', '', '', '', '', '', ''),
(770, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'DB3532A9-8FB4-18AA-B4EE-7F0A6CCDF864', '1-0a1e47b5f6d950cdbf8a0a723f41e8d3', 'Nerio Nogueira', '-34.1988202,-58.9401203', '2017-07-29 11:18:32', '', '', '', '', '', '', '', '', ''),
(771, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'EA89BBAF-736A-C0ED-9B64-3D929A7E3897', '1-70498c5da1030d78ef662122482adb2e', 'M', '-34.1936064,-58.9455393', '2017-07-29 11:20:11', '', '', '', '', '', '', '', '', ''),
(772, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'F37CBD5A-AFA9-86FC-B6DB-E531F22A1B68', '1-3a5433fb101a35603d583b23d06d8043', 'jose schirripa', '-34.1940203,-58.9459312', '2017-07-29 11:17:23', '', 'miryan godoy', '705425', '40-59', 'B', 'B', 'NS/NC', 'Tránsito/transporte,Mal estado del barrio', 'Si'),
(773, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'F490E4D5-23A6-83CA-A127-D87736244235', '1-3da3252eb7b83514852448f4d729effd', 'Pablo churruarin 28714105', '-34.1990796,-58.9392246', '2017-07-29 11:12:23', '', 'Besa maria josefina', '3489442469', '+60', 'B', 'B', '1 País', 'Tránsito/transporte,Desempleo,Inseguridad', 'Si'),
(774, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'F9A90CE9-5A0A-D0B1-8A8E-7393A581A3EE', '1-d05d3aeadad0a72e4eefac76f1606b14', 'M', '-34.1940267,-58.9448675', '2017-07-29 11:11:31', '', '', '', '', '', '', '', '', ''),
(775, '2017-07-29 11:20:02', '2017-07-29 14:20:02', 0, 'FE2CDBCD-1689-A688-980E-11D58EAA7C26', '1-625a3f89f3983fe2ffd0b6612c03a7f8', 'Nerio Nogueira', '-34.1987262,-58.9397844', '2017-07-29 11:17:41', '', '', '', '', '', '', '', '', ''),
(776, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '05042694-2682-7C67-818E-E4E983F6BA28', '1-ad6e15b5ae61f6c5e60cb5680408aca4', 'Gaston Barrios / José alvarez bonola', '-34.1999101,-58.9408592', '2017-07-29 11:20:58', '', 'Alejandro tamburelli', '', '40-59', 'B', 'B', 'NS/NC', 'Mal estado del barrio,Luminarias,Inseguridad', 'Si'),
(777, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '0AF638ED-7262-4EE9-856E-9A69335D0745', '1-34461cba42e01facc851a9ffb149d144', 'Andrea ibar', '-34.1999208,-58.9415982', '2017-07-29 08:25:20', '', 'Leandro', '', '26-39', 'M', 'R', '', '', 'No'),
(778, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '13DE163E-CBB6-5395-8D16-116FB2BF7C83', '1-b222ad5e2c94ca74de263e537fdf4f40', 'Pablo churruarin 28714105', '-34.1996729,-58.9393813', '2017-07-29 11:28:02', '', 'Sergio soldati', '3489667948', '40-59', 'B', 'B', 'Cambiemos', 'Inseguridad,Salud,Servicio de Absa', 'Si'),
(779, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '2425F3E9-819D-6DDD-8130-43E222AC7043', '1-c05e27616e86bfd670de8a65aaa00f0e', 'Nicotra', '-34.2008754,-58.9410832', '2017-07-29 11:21:03', '', '', '', '', '', '', '', '', ''),
(780, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '243FEF76-8797-E486-B546-E91496095DDB', '1-cbef570266464b5731197f0350a15c75', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:21:10', '', 'Carlos basave', '442224', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Tránsito/transporte', 'Si'),
(781, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '2D4952DA-FC93-EE68-98F7-81947FCD6E50', '1-52ab4243979876376c8998761fa8c3c3', 'M', '-34.1936002,-58.9455169', '2017-07-29 11:20:44', '', '', '', '', '', '', '', '', ''),
(782, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '34177799-8430-BB3D-A35E-AA7F1A405FA9', '1-e6208a72e774054f6b1cd90833a61952', 'Nicotra', '-34.2007719,-58.9409936', '2017-07-29 11:27:28', '', 'Catalina ventura', '', '40-59', 'B', 'B', 'Cambiemos', 'Servicio de Absa', 'Si'),
(783, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '55328497-D7F1-58ED-A9FE-D60C200CB56F', '1-d0425cd1244cc0b5b29b0f7abe46085b', 'M', '-34.1935868,-58.9455393', '2017-07-29 11:21:56', '', '', '', '', '', '', '', '', ''),
(784, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '5CC2A522-6E1A-D78A-ACE5-2F15F45BE64F', '1-7c09378ebdf842735b8aa9cdd43aba6f', 'Valeria novelli', '-34.1975857,-58.9432104', '2017-07-29 11:23:22', '', 'Ana maria', '', '40-59', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(785, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '95968077-B584-059A-B904-762F63E6BAFF', '1-caf2709e09ea941df896258405f0c45b', 'Pablo churruarin 28714105', '-34.1995418,-58.9394366', '2017-07-29 11:22:34', '', 'Cozzarin mario', '', '40-59', 'R', 'R', 'Cambiemos', 'Educación,Salud,Tránsito/transporte', 'Si'),
(786, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, '9C3F0AF7-8E8E-CDAA-B506-A11D360E0220', '1-8e67f2e56bebe97a1069d4e364c44014', 'Nerio Nogueira', '-34.1988461,-58.9401427', '2017-07-29 11:27:58', '', '', '', '', '', '', '', '', ''),
(787, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'B069C6C3-24F3-FAFE-927F-4BE51DEB6FAC', '1-8dcf419ef7f242c6489dacb80921389d', 'Nerio Nogueira', '-34.1986456,-58.9399523', '2017-07-29 11:24:02', '', 'María Concepción aloe', '442605', '+60', 'B', 'B', 'NS/NC', '', 'Si'),
(788, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'BAF9F8D6-6F62-E44C-A5AF-84AD2678A376', '1-089d7e527af53e04b00222f023d098dd', 'M', '-34.1935446,-58.9452482', '2017-07-29 11:21:23', '', '', '', '', '', '', '', '', ''),
(789, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'D900E4C4-9289-B254-9399-8434FDEDF08A', '1-c2c340484fd149ca6aa02f215930ccb1', 'Nerio Nogueira', '-34.1988528,-58.9401315', '2017-07-29 11:26:23', '', '', '', '', '', '', '', '', ''),
(790, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'E893FCC7-9AD7-EF1A-911E-5FE139772DFE', '1-7d734832c549dc012f8b62f105c42c55', 'Nerio Nogueira', '-34.1988528,-58.9401315', '2017-07-29 11:27:06', '', '', '', '', '', '', '', '', ''),
(791, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'E94B97E6-FA05-8AE4-BA8B-53046932F9EB', '1-352dde6b9dd542088840137a6c6dd757', '39414354', '-34.1954023,-58.9441733', '2017-07-29 11:26:50', '', 'Barrios ramon', '', '40-59', 'R', '', '', 'Inseguridad', 'Si'),
(792, '2017-07-29 11:30:02', '2017-07-29 14:30:02', 0, 'EBB67078-C5A7-42DD-AF33-7A0F568E5392', '1-9e46f0bad8866dc233b6aff982d9fcb4', 'Betsabe arias', '-34.1993801,-58.941419', '2017-07-29 11:23:21', '', 'Alberto fea', '', '+60', 'R', 'R', 'NS/NC', 'Luminarias,Contaminación,Mal estado del barrio', 'Si'),
(793, '2017-07-29 11:30:03', '2017-07-29 14:30:03', 0, 'FECE99C0-421B-35E0-B23D-3A092BC20E92', '1-5d8da7a90a4cc18260150aa6cbde80a0', 'Nicotra', '-34.2008119,-58.9409264', '2017-07-29 11:23:03', '', '', '', '40-59', 'M', 'M', 'Unidad Ciudadana (Alejo Sarna)', 'Inseguridad,Desempleo,Luminarias', 'No'),
(794, '2017-07-29 11:40:01', '2017-07-29 14:40:01', 0, '234F0D2A-BF92-818A-89CF-1CAA4EBEEBE4', '1-ec0f350f73c4ff4750ef113db4747cfd', 'Nerio Nogueira', '-34.1989405,-58.940445', '2017-07-29 11:32:12', '', '', '', '', '', '', '', '', ''),
(795, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, '7130427F-2E32-02F0-BB1D-E0B577FBEFBB', '1-50d3323e0d9603ab1ba400cca61fdbca', 'jose schirripa', '-34.1939324,-58.9467038', '2017-07-29 11:37:25', '', 'soto leonor', '629376', '', 'B', 'B', 'NS/NC', 'Inseguridad,Desempleo', 'Si'),
(796, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, '78844FC3-690A-05F5-A12F-575FF7CE476E', '1-6f6c1e56920c0791bd78ed5a27703039', 'Nerio Nogueira', '-34.1987989,-58.9402546', '2017-07-29 11:31:16', '', 'Blanca Rosa cebrian', '442372', '+60', 'B', 'B', 'NS/NC', 'Desempleo', 'No'),
(797, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, '8332664E-E9ED-C70D-9CAA-677CB2F389F7', '1-5e80554931ffec58c3224790e582fb46', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:38:04', '', 'Mauro baquero', '', '26-39', 'R', 'R', 'Frente Izquierda', 'Inseguridad,Falta de vivienda,Desempleo', 'No'),
(798, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'A49D6710-5AFB-64D5-B4CB-65B5A67DAAC7', '1-ddf9b8add016b82090126b21a6661eb6', 'Nerio Nogueira', '-34.199174,-58.9406129', '2017-07-29 11:34:18', '', '', '', '', '', '', '', '', ''),
(799, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'A9D0FB4B-A61D-2C49-99AC-BE54B7177A14', '1-121245b06b387c149b69fc4f81132f6d', 'Andrea ibar', '-34.2002958,-58.9419565', '2017-07-29 08:34:08', '', 'Marina', '', '26-39', 'B', 'B', 'Cambiemos', '', 'Si'),
(800, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'ABA635CD-50C3-16FB-A273-DEED3E939098', '1-89346d81f872cedd6cd97d4e01c57a48', 'Nicotra', '-34.2006691,-58.9408368', '2017-07-29 11:37:54', '', 'Eleonora', '', '26-39', 'B', 'B', 'Cambiemos', 'Desempleo', 'Si'),
(801, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'AD06AD39-0563-2426-A76E-07D68F683312', '1-d38f10fcff341d75fe295a3f5535b741', 'Nerio Nogueira', '-34.1990963,-58.9405457', '2017-07-29 11:33:41', '', '', '', '', '', '', '', '', ''),
(802, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'C2F972DD-83B2-3E34-BED6-8955FCC9D5C6', '1-dab9e1f2095a2b7eb7ed6447c01251ea', 'Betsabe arias', '-34.1986034,-58.9423595', '2017-07-29 11:39:35', '', '', '', '', '', '', '', '', ''),
(803, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'CB90E1FC-A3B1-FC7C-B55D-6872D230C842', '1-71dfbefb6fd5a8de63dbdaf6601a6305', 'Betsabe arias', '-34.1986034,-58.9423595', '2017-07-29 11:39:17', '', 'Leonel astroza', '111524612595', '26-39', 'B', 'B', 'NS/NC', 'Luminarias,Tránsito/transporte', 'Si'),
(804, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'D4FDD60F-2A36-B6D1-91F5-B5F006BB38AD', '1-972a9e73e10eacd4a05c71bc4fcc4288', 'Nerio Nogueira', '-34.1994525,-58.9408368', '2017-07-29 11:39:24', '', 'Erica Martínez', '', '', '', '', 'NS/NC', '', 'No'),
(805, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'D6E526EB-6332-62D2-A63E-7A5EDB52612F', '1-17cff27411b0d90e700b6e76d9238c5b', 'Nicotra', '-34.2006612,-58.9409488', '2017-07-29 11:31:05', '', 'Alejandra', '', '26-39', 'B', 'B', 'Cambiemos', '', 'Si'),
(806, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'D8C66A65-39FB-5F6E-B2A0-AAA8C43C21A4', '1-86f088fb4f736b1f646b98258f843a0b', 'Nerio Nogueira', '-34.1991669,-58.9406577', '2017-07-29 11:35:53', '', '', '', '', '', '', '', '', ''),
(807, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'D92BF931-51F7-B65B-A7C0-7425DC37A7C4', '1-6139b5c2ee83d20a6dca469349c7db72', 'Betsabe arias', '-34.1987106,-58.9421468', '2017-07-29 11:31:39', '', 'Ricardo basile', '', '+60', 'B', 'B', 'NS/NC', 'Luminarias,Inseguridad', 'Si'),
(808, '2017-07-29 11:40:02', '2017-07-29 14:40:02', 0, 'FC82F72B-C835-575F-963A-3972FB8DFE83', '1-394c1d29b8d1c9a7c548834f518bcbac', 'Pablo churruarin 28714105', '-34.2002486,-58.9404562', '2017-07-29 11:34:21', '', 'Gracila gruppi', '3489440595', '+60', 'B', 'B', 'Cambiemos', 'Inseguridad,Desempleo,Salud', 'Si'),
(809, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '0DF47895-49C3-6F6E-8040-26A4406C0969', '1-0d471cb27b8d632b4ff48415ee712d36', 'Nicotra', '-34.2003952,-58.9407697', '2017-07-29 11:41:22', '', '', '', '', '', '', '', '', ''),
(810, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '124E9CCB-9DE4-1032-9711-61B08A12B1EE', '1-4f2b2030f752a6d727b90bb6960eb05b', 'Nicotra', '-34.2005704,-58.9403442', '2017-07-29 11:43:29', '', '', '', '', '', '', '', '', ''),
(811, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '13F5FA3F-6305-2511-8D2A-89BB4447FD38', '1-cac790a4e6c3f0206fc9113eeb392e87', 'Nerio Nogueira', '-34.199582,-58.9409488', '2017-07-29 11:40:55', '', '', '', '', '', '', '', '', ''),
(812, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '14E0EDC6-EBA2-4FD8-BA52-DF2C54C5D440', '1-fcc84d5e3fa7374e42c51b727bb4e2c1', 'Nerio Nogueira', '-34.1998747,-58.9410832', '2017-07-29 11:42:46', '', '', '', '', '', '', '', '', ''),
(813, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '32A96CD9-B7F5-57A8-987D-36E081B91451', '1-54e9b820b3b4b1ea55519c8b0bd3f112', 'Betsabe arias', '-34.1979351,-58.9429865', '2017-07-29 11:48:10', '', '', '', '', '', '', '', '', ''),
(814, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '3C330F77-D135-0E20-BB57-F8A080F6267A', '1-6cba003fc391b89093f60a786d0ad5f4', 'Nerio Nogueira', '-34.1999014,-58.9410384', '2017-07-29 11:43:35', '', '', '', '', '', '', '', '', ''),
(815, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '4EB31402-CE47-6BF2-B9FB-A72A1F0FB4E0', '1-10fa16096860fa4b7b25767a2b89b080', '23528843', '-34.1780274,-58.9483944', '2017-07-29 11:40:51', '', '', '', '', '', '', '', '', ''),
(816, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '5BA5DA2E-C750-DE33-AD38-764550581D31', '1-f6b8c33c0044be6ebf80f39f6a4d3a8c', 'Nerio Nogueira', '-34.1999101,-58.9408592', '2017-07-29 11:44:37', '', '', '', '', '', '', '', '', ''),
(817, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '66A4BF45-7502-9007-B527-6C038E420627', '1-0a7da687322aa234daf263783ab63ba4', 'Betsabe arias', '-34.1981959,-58.9425163', '2017-07-29 11:42:08', '', '', '', '', '', '', '', '', ''),
(818, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '7A2F3E28-AC20-A712-82EA-D3187EBD12F1', '1-dcd76459e2d810e6c06f8633879c7055', 'Betsabe arias', '-34.1984919,-58.9423819', '2017-07-29 11:40:51', '', '', '', '', '', '', '', '', ''),
(819, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '7BB28C6A-E047-8E95-A019-EA64A04F106F', '1-373845a292bcac7d3ba314a2f557a364', 'Betsabe arias', '-34.1983772,-58.942673', '2017-07-29 11:41:28', '', '', '', '', '', '', '', '', ''),
(820, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '7DEE0AA2-E6C9-5A7E-A9FF-B1EF39D19BF2', '1-47042aa9f8f9a97d79b3854645e1a233', 'Betsabe arias', '-34.1980761,-58.9426842', '2017-07-29 11:46:49', '', 'Walter buzón', '441656', '+60', 'B', 'B', 'NS/NC', 'Inseguridad,Tránsito/transporte,Mal estado del barrio', 'No'),
(821, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, '8276532F-D576-1CAC-A6D8-4F9794F990E4', '1-42c52d2ac61aa3c742e300ad8ebff17b', 'Nicotra', '-34.2004086,-58.9407473', '2017-07-29 11:41:01', '', '', '', '', '', '', '', '', ''),
(822, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, 'B007DF01-D33D-2063-87C0-84A024C90977', '1-73781d24a36cc04e5fb3d62a17f29bc6', 'Nicotra', '-34.2005767,-58.9403666', '2017-07-29 11:43:02', '', '', '', '', '', '', '', '', ''),
(823, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, 'CAF46FE7-93E1-F20E-98EC-E9C13A5EAE66', '1-23a933f35ec77319179e0986adee1b9b', 'Betsabe arias', '-34.1981955,-58.9425499', '2017-07-29 11:42:39', '', '', '', '', '', '', '', '', ''),
(824, '2017-07-29 11:50:02', '2017-07-29 14:50:02', 0, 'E2CA9308-AD8E-2D8B-BA55-3431BF573C41', '1-bbbe0791cfa17b32c0c24caf41273817', 'Andrea ibar', '-34.200566,-58.9423259', '2017-07-29 08:39:59', '', 'Sheila', '', '26-39', 'B', 'B', 'Cambiemos', '', 'Si'),
(825, '2017-07-29 12:30:02', '2017-07-29 15:30:02', 0, '4E47DFB5-B186-45E9-ACF3-362B63B2A4FB', '1-48809ccd5d184e5b5a6858443539da12', 'Valeria/20981354/valeriarrhh@gmail.com', '-34.2055448,-58.9365243', '2017-07-29 12:20:47', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_merlo_cargas`
--

CREATE TABLE IF NOT EXISTS `app_merlo_cargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `couchdb_id` varchar(255) NOT NULL,
  `couchdb_rev` varchar(255) NOT NULL,
  `identificacion` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL,
  `respuesta_1` varchar(255) NOT NULL,
  `respuesta_2` varchar(255) NOT NULL,
  `respuesta_3` varchar(255) NOT NULL,
  `respuesta_4` varchar(255) NOT NULL,
  `respuesta_5` varchar(255) NOT NULL,
  `respuesta_6` varchar(255) NOT NULL,
  `respuesta_7` varchar(255) NOT NULL,
  `respuesta_8` varchar(255) NOT NULL,
  `respuesta_9` varchar(255) NOT NULL,
  `respuesta_10` varchar(255) NOT NULL,
  `respuesta_11` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=256 ;

--
-- Volcado de datos para la tabla `app_merlo_cargas`
--

INSERT INTO `app_merlo_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`, `respuesta_6`, `respuesta_7`, `respuesta_8`, `respuesta_9`, `respuesta_10`, `respuesta_11`) VALUES
(1, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '08213E26-59BA-A20C-B9CB-737A8D8709E9', '1-3854d5ed651d81d52e41c99fba517586', 'Julieta-shuli@hotmail.com', '-34.6640562,-58.7576067', '2017-07-01 12:17:41', '', 'Antonio', '1131544070', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(2, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '0B90F9E6-A529-83D5-9814-D98E829D5BB7', '1-248d22ab09156bd8a1b86733c38a4906', 'Karen 37948707', '-34.6764249,-58.7595519', '2017-07-01 11:27:42', '', 'Perla', '', '18-30', 'No', 'R', 'No', 'No', 'M', 'No', 'No', 'No', 'No', 'No', 'Cambiemos'),
(3, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '0F986C43-FB3F-EFB9-9799-9FA7E3BD57F4', '1-76a7f5ed58a2bf15bdc21976ff57e697', 'Karen 37948707', '-34.6751447,-58.7604686', '2017-07-01 11:22:47', '', 'Marcela', '1149380248', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'No', 'Cambiemos'),
(4, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '10B7693A-F027-2959-8989-98DCC11F8EEC', '1-45684a078a5a9ff49f6eb410e61ca2fc', 'Daiana', '-34.6749914,-58.7610275', '2017-07-01 11:18:03', '', 'Pedro', '', '+50', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(5, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '12BFC9F8-9C22-7D19-8BBC-0FAB30006A94', '1-d7c7e52727ea53696ec46163082f56ac', '14851301', '-34.6746906,-58.7584563', '2017-07-01 12:13:01', 'javibogado@yahoo.com.com.ar', 'Javier bogado', '111557464804', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(6, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '132A9343-1852-F0E0-87C5-235F41DB87F6', '1-2f1fb9a097bd3c26b67a7adfdafba568', 'Araceli Arleo', '-34.6644795,-58.7518497', '2017-07-01 11:15:54', '', 'Jorge', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(7, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '1484667F-8B21-668B-B302-2997341E223D', '1-8e1b6786e295ce794ee441ecfb1a3c53', 'Abel salim', '-34.6623713,-58.7531129', '2017-07-01 11:24:34', '', 'Ester', '', '31-49', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(8, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '14B7FE17-74DC-9376-81C2-5B800F0C35FC', '1-1d40aa7ca96c57339914842fe571ee65', 'Julieta-shuli@hotmail.com', '-34.6693878,-58.7583222', '2017-07-01 10:51:38', '', '', '', '18-30', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(9, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '1A43BBBC-FEBD-03E9-AC96-425DBFABBAD7', '1-a0ba5ec45996a533ff7da478ba5ba9ee', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:29:45', '', 'Guido', '', '18-30', 'Si', 'R', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(10, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '1DBCAE7E-96B0-26E8-B264-D008523F7D81', '1-6084007e9fd01045fcd3446ba523d85c', 'Daiana', '-34.6744375,-58.7621678', '2017-07-01 11:53:47', '', 'Juana', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(11, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '1F1C76FB-EE4A-EC81-84C2-7DA2D9467DDE', '1-3a931f4101630074b0e139aa35e32c7d', 'Pato Claudio', '-34.6660703,-58.759619', '2017-07-01 11:07:48', '', '', '', '+50', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(12, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2072BF56-3529-18BB-BD5A-A146641373E0', '1-d8907438059f7bc0287aa2c3cc0bd661', 'Pedro', '-34.666742,-58.7593059', '2017-07-01 11:01:16', '', '', '', '18-30', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'Si', 'Cambiemos'),
(13, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '21ECA55E-6416-739E-A5F2-FAF9E6708DC8', '1-eb93190fbd9c13b6fde8404fbd8923b1', 'Akiyto123@gmail.com', '-34.6688221,-58.7639565', '2017-07-01 12:29:22', '', 'Jesús', '4892433', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '22D3142C-2216-FC08-97D5-8DF0B9A003B3', '1-38ded4620994101883c667309a794123', 'Daiana', '-34.6764381,-58.7595295', '2017-07-01 11:28:54', '', 'Juan', '', '31-49', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(15, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '266A6C88-1021-D58C-A386-D290252736CF', '1-394ef13f5a702625cc808b254a4b9d2e', 'Barria vanina', '-34.6637152,-58.7332615', '2017-07-01 12:38:44', '', '', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(16, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '26C0F1D4-9494-782E-9299-8AA1D8CB9E98', '1-3192339e1a20730f84f600c2b0149050', 'Julieta-shuli@hotmail.com', '-34.6640562,-58.7576067', '2017-07-01 12:21:35', '', '', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(17, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '28F8656D-3F52-D802-B8A4-E2127B910017', '1-bc325f59868a763f55368f4e4dc07bf6', 'maynat@speedy.com.ar', '-34.6694631,-58.7605804', '2017-07-01 10:53:38', '', 'Jose', '', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(18, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '29C3084E-165B-13BE-9AC5-370268BBACA1', '1-286e8604c9f3041d364fd1ed4579e69c', 'Abel salim', '-34.6642238,-58.7512237', '2017-07-01 11:37:36', '', 'Agustin diaz', '', '31-49', 'No', '', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(19, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2ACF382B-4CC4-3612-A1EC-DF8D2BC65180', '1-bd456d125fa4fc88486c002d96c1b00f', 'Abel salim', '-34.6624543,-58.7514473', '2017-07-01 11:09:26', '', 'Hernan', '', '31-49', 'Si', 'M', 'No', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(20, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2AF4E2C3-D58D-B6E4-9BA5-35FB4D7EE9BA', '1-2aa1c8f2351b87b6b157dd3e5d43e547', 'Maria Ines', '-34.6662385,-58.7597307', '2017-07-01 11:03:19', '', '', '', '+50', 'Si', '', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'No', 'Union Ciudadana'),
(21, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2C257AAC-2382-A073-B66E-8ADF4794A475', '1-2f701041abf48cf63785fcb6186a1cd2', 'Akiyto123@gmail.com', '-34.6681617,-58.7645155', '2017-07-01 12:24:16', '', 'Pamela', '4898551', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(22, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2C85D157-5DE5-43C0-A2BA-5C3A1958FF4F', '1-f31380b21e27fe59c016ea67a383b140', 'Sabrina', '-34.6718675,-58.7662707', '2017-07-01 11:07:23', '', 'Ariel', '1168896001', '18-30', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Otro'),
(23, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2E0A56CB-4848-9220-8555-222A7FFD79BC', '1-3fe5db608e327250ede581b3fb3c994f', 'esther18272425', '-34.6973596,-58.6956756', '2017-07-01 11:21:44', '', 'Luis Romero', '2204890578', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(24, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '2F33FF45-0C4C-82A0-920E-43F07328EA7E', '1-e23e1ebcba873da3a058a6b53e3d9530', 'Sabrina', '-34.6733869,-58.7665055', '2017-07-01 11:33:45', '', '', '', '+50', 'Si', 'R', 'No', 'No', 'R', 'No', 'Si', 'No', 'No', 'No', 'NS/NC'),
(25, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '3005847D-ED8E-D405-8CB0-907E03757668', '1-e402823f1952f047ceb812ff4ea37c0d', 'Akiyto123@gmail.com', '-34.6677609,-58.7642025', '2017-07-01 12:15:53', '', 'Patricia', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(26, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '3269C226-1A88-ACFC-8562-D5E663EC5763', '1-679b41114d428b74d0b2d4f088a86b9c', '18845491', '-34.6623405,-58.7528669', '2017-07-01 11:16:23', '', 'Daniel', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(27, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '32F5C224-4CB4-9B90-9967-6BAEBAC41573', '1-d915e9d47d8ba8d49cfd951112cc909e', 'Barria vanina', '-34.663644,-58.7332168', '2017-07-01 12:38:25', '', '', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(28, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '343919CF-2B7E-278B-9A75-7372EE699B19', '1-6a788fad421baeb0703651813502db2d', 'Patricia', '-34.6661366,-58.7612958', '2017-07-01 11:09:26', '', '', '', '31-49', 'No', 'M', 'No', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(29, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '36323A3A-2B38-2C25-9511-EB2BC408F538', '1-d4920614ae2abd850d1d34dee96730fd', 'Abel salim', '-34.6623244,-58.7514361', '2017-07-01 11:06:49', '', 'Eduardo', '', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(30, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '3639E408-B5F3-4779-B787-1DB8226DD1FC', '1-f4fbcc1ec65eb1869439bad5ccb80533', 'Akiyto123@gmail.com', '-34.667165,-58.7620337', '2017-07-01 11:47:01', '', 'Margarita', '4892165', '+50', 'Si', 'B', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(31, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '37C01CB0-4485-63CD-B943-176C16D7D4C3', '1-f5e6668f029a8665489d1dd8b1e6cf38', 'Akiyto123@gmail.com', '-34.6671516,-58.7611617', '2017-07-01 11:12:16', '', 'Zulma', '1156451610', '+50', 'Si', 'B', 'Si', 'Si', 'B', '', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(32, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '393B648B-0F54-4303-8C6D-613061C806B6', '1-727d6c726e9ad1eeecf74fece5c6a5f7', 'Abel salim', '-34.6632023,-58.751369', '2017-07-01 11:00:38', '', 'Lejandra', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(33, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '3DED5A3C-E689-57D8-8D3F-8AD5764AEC50', '1-1bb0a9b57f2a64956f77386bd720e927', 'Damianfreites9@gmail.com', '-34.662783,-58.7499606', '2017-07-01 11:07:06', '', 'Claudia', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'No', 'No', 'No', 'No', 'Cambiemos'),
(34, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '3E71AE12-663B-A944-BCFC-6913024DA503', '1-3b18a9fcca9e1a8aee2df6fafc8e595d', 'Abel salim', '-34.6627461,-58.7515479', '2017-07-01 11:03:34', '', 'Carlos', '', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(35, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '4103F455-4928-EAC8-B9CA-001344F6DFF1', '1-12ead4a7a4840f3cc5276ec88cdbe6d4', 'Abel salim', '-34.6638741,-58.753873', '2017-07-01 11:19:14', '', 'Mirna', '', '18-30', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(36, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '4266DCF0-594C-AEF8-8A70-30FBA7319EEE', '1-fa745eb47e36af7e3d9c97c6ef2ac7ad', 'Gabriel peralta', '-34.6745037,-58.7648062', '2017-07-01 11:15:50', '', 'Victoria', '', '18-30', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(37, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '43452112-7FB8-D16B-9DDD-E5BB760764E3', '1-59854bbb2e21dacf97a5095dda42b833', 'Barria vanina', '-34.6638381,-58.7333509', '2017-07-01 12:39:21', '', '', '', '', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(38, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '45C819BA-CB14-0C08-B925-B59ECCAA665B', '1-167c625125b4e279cbe0901c60ea15c7', 'Akiyto123@gmail.com', '-34.6677699,-58.7610387', '2017-07-01 11:04:25', '', 'Julieta', '1166622551', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(39, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '46CADC0C-C008-3766-81F4-529115706020', '1-35472745d3874ec5359a8e3663ed6500', 'soledad sarria', '-34.6687039,-58.7682943', '2017-07-01 08:37:25', '', 'mauro', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(40, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '48F1D18B-6B75-C69F-9F05-B3FAC6A5A16C', '1-21964607e8e1642c41e533ae6993eb49', 'Gabriel peralta', '-34.67411237,-58.76338934', '2017-07-01 11:41:08', '', 'Elena', '', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(41, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '495B0D7B-5D62-1872-BDAA-4D44FB9DAEFB', '1-4bbf561a099cd4555cd67c79f17ed91f', 'Abel salim', '-34.6630522,-58.7514585', '2017-07-01 11:02:34', '', 'Alejandro', '', '', 'Si', 'M', 'No', 'No', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Cumplir'),
(42, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '4A4A3E34-F931-AB6D-8CFF-30419E58D0B7', '1-d8f28925cbe0286a9d956659c13d7aa0', 'Araceli Arleo', '-34.6644795,-58.7518497', '2017-07-01 11:12:35', '', 'Jorge', '2204894646', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'No', 'No', 'No', 'No', 'NS/NC'),
(43, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '4D179700-CED6-892B-80F1-98425E5BAB7A', '1-397d912b25d5b8502073b1db2b698455', 'Sabrina', '-34.6723355,-58.7662707', '2017-07-01 11:44:55', '', 'Jorge', '', '+50', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(44, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '53DAD612-D9F7-49A5-BCBD-AEDD1E9BC190', '1-3dfc0ba65792d97a2dfce466b89f84ec', 'Daiana', '-34.6753878,-58.7629057', '2017-07-01 11:50:29', '', 'Juan carlos', '', '+50', 'Si', 'M', 'No', 'No', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(45, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '53F5DD90-5E22-8CC5-8DA8-4A3D39E8E333', '1-bffd2b502daf9e828174f15611ef2590', 'Irene María Bigi 18381733', '-34.6908482,-58.7377769', '2017-07-01 14:47:05', 'cjmaudet@hotmail.com', 'Claudio', '1150134007', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'No', 'Si', 'Cambiemos'),
(46, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '563464CE-232C-5986-8C76-A4DB1D820D40', '1-cb622da325c9f8162f42426bfb7b0b8e', 'Pato Claudio', '-34.6696875,-58.7610275', '2017-07-01 10:16:30', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(47, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '57757561-B63E-B6F3-882F-99DD9C453168', '1-fe89e5937212df74b3c295ca2d4500f1', '14851301', '-34.6747881,-58.7584563', '2017-07-01 12:23:03', '', 'Adelina chaparro', '2204895434', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'No', 'Cambiemos'),
(48, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '5A438537-C9C5-8E83-A913-6067BFA65F5C', '1-fe9df208fc83f8d391d9e581c8c12408', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:11:39', '', 'Claudio', '', '31-49', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Union Ciudadana'),
(49, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '5B9F8756-9FD3-86AA-9210-6A5E36325992', '1-c63cace38de00f3d0aa9ab219bc91d60', 'maynat@speedy.com.ar', '-34.6691231,-58.759932', '2017-07-01 11:07:42', '', 'Martin', '', '18-30', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(50, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '5F01EBF4-C919-7B3F-A137-10C00C4DB4F9', '1-38c5ca9fd0b121cfa7479c1a9d960cca', 'Juan Ochoa 17736958', '-34.6729647,-58.7711005', '2017-07-01 11:32:44', 'damko_85@yahoo.com.ar', 'Daniel Eduardo Gómez', '1523787757', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', '', 'Cambiemos'),
(51, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '5F2E8CA6-B7FE-C359-8B93-F2463050607A', '1-33ed242de682fc92c9fddb72389f671b', 'Daiana', '-34.6754987,-58.7600326', '2017-07-01 11:22:36', '', 'Maria', '', '18-30', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(52, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '5FA7F256-D0FF-0166-BEB0-46D7DEC3DEFC', '1-fcf5bd989e15dae8bdf91be60e8c9333', 'Flor Di Grillo', '-34.6752655,-58.7589706', '2017-07-01 11:26:13', '', 'Manuel', '', '+50', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(53, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '60DB300D-80E6-905E-A2C6-0D8AAFC9CCFF', '1-c961a1b62c4ad8bb2bf034daf4c2a2a7', '18845491', '-34.6636623,-58.7506536', '2017-07-01 10:58:00', '', 'Juan Mena', '', '+50', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(54, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '625E56EA-298A-D2A6-A0FA-0DC44CFF0411', '1-ad2be5ea9e5a8ad035b356a3edc0fee7', 'Akiyto123@gmail.com', '-34.6668875,-58.761743', '2017-07-01 11:28:23', '', 'Federico', '', '+50', 'No', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(55, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '638CD001-7240-21A2-8488-E42D9BF38F18', '1-a111c919745d887bafbc366c2e77a823', '27636129', '-34.6755009,-58.7587693', '2017-07-01 12:34:46', '', 'Lucas Monzon', '1155244732', '18-30', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Union Ciudadana'),
(56, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '63AE1D13-35C1-F4B3-89F8-97CA598D301F', '1-95d7af9a02a4c1eea434120c3c63f944', 'Laura Huguetti 24976181 laura.huguetti.adm@gmail.com', '-34.669372,-58.7577856', '2017-07-01 11:26:00', '', 'Zaida Luis Agote 545', '', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(57, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '64835A8C-380A-B68F-9903-3BD33456D8A5', '1-276bb10c24039fe44b85e3ce9d37456d', '14851301', '-34.6752746,-58.7585905', '2017-07-01 12:28:16', '', 'Berta vera', '2204895423', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(58, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '64EE48C0-DD55-71DF-8544-A589241075A6', '1-f2016acab58a681fca5b68aa91b427bb', 'salas Esther 18272425', '-34.6973596,-58.6956756', '2017-07-01 11:11:34', '', 'daiana', '', '31-49', 'Si', 'R', 'No', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(59, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6628D92F-3423-A3A2-9B1D-13ADF61D2908', '1-d4d81e54c68bc7487374e44bd61165d6', 'belen', '-34.6939159,-58.7474557', '2017-07-01 11:17:32', '', '', '', '31-49', 'Si', 'R', 'No', 'Si', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(60, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '66971E73-F90D-6D6C-B535-13484DE9FE51', '1-4cb7e1ee516e183874b724bc9d5f8d61', 'maynat@speedy.com.ar', '-34.6692188,-58.7602003', '2017-07-01 11:04:09', '', 'Manuel', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(61, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '672ADAA6-1516-3CEB-AD51-E81C3ACD5592', '1-92ca89dd51209bf7e3ab2780c62796fd', 'soledad sarria', '-34.6687039,-58.7682943', '2017-07-01 08:07:44', '', 'cacho', '', '+50', 'Si', 'R', 'No', 'No', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Cumplir'),
(62, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '690DDB8E-ADEF-F710-97A1-D1A656FEDFE7', '1-2b7c90d7e9ff75ddb5e8b21a15dda348', 'Abel salim', '-34.6630988,-58.752241', '2017-07-01 11:15:47', '', 'Alberto', '', '+50', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(63, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6A3B6609-CCA8-5023-969F-EA92B26549A0', '1-2d297db8e98f4233059b356ab56110ca', 'Akiyto123@gmail.com', '-34.667735,-58.7641801', '2017-07-01 12:18:14', '', 'Dora', '4891707', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Frente Renovador'),
(64, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6C915C60-D156-6229-BBBA-E9DB20A2D147', '1-79b821fda791a0949c31f36a52e9ab74', 'Pato Claudio', '-34.6667488,-58.7592612', '2017-07-01 11:00:50', '', 'Jorge', '', '', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(65, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6CBC4E9B-F98F-8744-84E1-3368B74C7B63', '1-d85c94e547600d3bff329944e6bcff0a', 'Gabriel peralta', '-34.6719628,-58.762861', '2017-07-01 10:58:42', '', 'Rodolfo', '2204892394', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'No', 'Cambiemos'),
(66, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6F577131-F98C-23B6-8937-CD636E75C51E', '1-64a349b5c17c888b8a670c544af70786', 'Araceli Arleo', '-34.6631003,-58.7557845', '2017-07-01 11:30:46', 'rochy_085@hotmail.com', 'Rocío', '', '31-49', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Frente Renovador'),
(67, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6F92E592-1A83-5CD4-845A-9972607D277A', '1-1db4c2be9e3c633c19fdbb03b0a99327', 'Gabriel peralta', '-34.67290866,-58.76215062', '2017-07-01 11:53:52', '', 'Raquel', '', '18-30', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(68, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '6FD4D9B3-11CF-96FE-A09D-BBFBD8D5D1B2', '1-f8190734e489e003facf3ccd9bd4e6a0', 'Sabrina', '-34.6724624,-58.76579', '2017-07-01 11:13:43', '', '', '', '+50', 'Si', 'M', 'Si', 'No', 'M', 'No', 'Si', 'Si', 'No', 'No', 'Cumplir'),
(69, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '719CC3BE-A2E3-DBCA-9FAD-B69C9176515E', '1-f1e4845a69d12f3c6932214d048bb706', 'Akiyto123@gmail.com', '-34.6679258,-58.762928', '2017-07-01 12:02:00', '', 'Eduardo', '1530506561', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(70, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '72533220-16E9-0F67-A57C-FC45A4E1EB82', '1-334711a9049c23ea69156b71b846dda4', '18845491', '-34.6639137,-58.7528446', '2017-07-01 11:45:04', '', 'Cristina', '', '+50', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(71, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '73F9F87C-F420-2979-A68F-11D8DDB9A01D', '1-67cc733bfa10b4eadd19b77d140dd4b8', 'Ramón Romero', '-34.6768527,-58.7616089', '2017-07-01 11:49:34', '', 'Hugo', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(72, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '745B2F33-E306-013C-98D0-7902EB1F648A', '1-c7944341ea2118cb6371603ff6df4caa', '14851301', '-34.6742136,-58.757875', '2017-07-01 12:53:29', '', 'Eduardo', '', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(73, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '7542452D-5948-7A8F-A3E1-BBC6916C05F6', '1-aabde023f6c14324e405ce0ae2ffe4f5', 'Barria vanina', '-34.6637279,-58.7333062', '2017-07-01 12:37:08', '', '', '', '18-30', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(74, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '77BA0D1A-32C6-358E-9F23-390DE56E06A5', '1-64b629ebc8bee7e5f31ff3529c9852c3', 'belen', '-34.6690926,-58.7615082', '2017-07-01 10:10:07', '', '', '', '18-30', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(75, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '77D488D3-60F3-A6D2-A2A8-ABEF2CCC1A77', '1-ba35bc4f879cba653c7e4154ff88d8de', 'Ramón Romero', '-34.6769722,-58.7631293', '2017-07-01 11:17:06', '', 'Suárez Luis', '2204894199', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(76, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '77EE2FEE-5487-9ACF-A035-1501BB71F502', '1-546eabd1b17012c13ef329b20d002dd8', 'Akiyto123@gmail.com', '-34.6675459,-58.7642696', '2017-07-01 12:14:35', '', 'María José', '4890013', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(77, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '79E3A675-E51A-D43F-9B41-E735A48FF2FC', '1-2dd48b0cab43ad8a76da2c8aa78fcf5f', 'Julieta-shuli@hotmail.com', '-34.6650048,-58.7604686', '2017-07-01 11:12:42', '', '', '', '+50', 'Si', 'M', 'No', 'No', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(78, '2017-07-03 18:03:47', '2017-07-03 21:03:47', 0, '7D02FEED-ACE3-A2DD-B9FC-419DC12A9D39', '1-bc57c742dd334071ce33bd5470296f6c', 'Flor Di Grillo', '-34.6737593,-58.7596749', '2017-07-01 11:36:51', '', 'Nadia', '', '18-30', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(79, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '7DCD7539-672F-E562-97A9-29D14EEB8617', '1-fcf66c712ee7ef77c510cb60f43fcec2', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:00:12', 'dezu_22@hotmail.com', 'Sabrina', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(80, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '7DEA178C-6664-5EBE-9211-781E48FA9FC8', '1-4b32ef760a475cfa8b2472990b578739', 'salas Esther 18272425', '-34.6973596,-58.6956756', '2017-07-01 10:47:40', '', 'Ana María', '2204894915', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(81, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '7E03C0E2-B54C-D89A-9E7D-2D099D005137', '1-10d8d6acaede49100c852d0a101bb941', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:24:12', '', 'Gracia', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(82, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '7ED592C4-08AD-6CFB-B931-B57AA03FB350', '1-08ec7c09ba299a9e98beda5f43682a46', '26116809', '-34.6909125,-58.7146203', '2017-07-01 15:13:47', '', 'Viviana', '2204855019', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(83, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '7F8075B0-6EBE-BF43-A7D2-7E87314CD029', '1-fd5d141ba5c3f49285770f7b3b5a952a', 'Sabrina', '-34.6730803,-58.7656667', '2017-07-01 11:27:18', '', 'Fines decristofaro', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(84, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '80ED1FEA-0797-B984-8C8D-ECC53C4656ED', '1-48638e7b0545d5387e9acf72b044dd2c', 'Akiyto123@gmail.com', '-34.6686184,-58.7642696', '2017-07-01 12:25:52', '', 'Nicolaza', '4892225', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(85, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '8119082D-8339-129A-AE87-C2ADDB9224BD', '1-46b91f7b4801315461f53158729fa5c3', 'Akiyto123@gmail.com', '-34.6669846,-58.7618101', '2017-07-01 11:37:28', '', 'Sergio', '1565133223', '31-49', 'No', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(86, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '81B77A5D-A4CC-E615-9B8E-A3D7F06A5F83', '1-54e00857299a9455513b460a82d9547e', 'maynat@speedy.com.ar', '-34.66911,-58.7599543', '2017-07-01 11:37:40', '', 'Aida', '', '+50', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'No', 'No', 'No', 'No', 'Otro'),
(87, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '82B72918-0EE7-CE8F-AA98-15A28F964563', '1-85d15955c93df6e87c4708e6bca69139', 'Abel salim', '-34.6628286,-58.7518385', '2017-07-01 11:04:21', '', 'Cintia', '', '31-49', 'Si', 'R', 'No', 'No', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cumplir'),
(88, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '82D1A7CE-D9BD-73A2-875E-8985EB1D7C5A', '1-e286644a6637b5e6e159489adecc917f', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:13:34', 'gladys@hotmail.com', 'Gladis', '', '31-49', 'Si', 'M', 'No', 'Si', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(89, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '83827831-1939-8510-8D72-8E2782E3D5D4', '1-ac212347ec81bdf17369b2ae047e5e37', 'Abel salim', '-34.6635936,-58.7540183', '2017-07-01 11:20:50', '', 'Pablo', '', '18-30', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(90, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '839F43D9-CDB9-C618-A215-87F009D0DB04', '1-63de5374cc66e44e08c6622601d161c9', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 10:54:37', '', 'Alberto', '', '31-49', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(91, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '842B99A0-035D-A0A8-B876-094FC2A04D7D', '1-8c407d90a839475ca095bb4a2a907547', 'Ramón Romero', '-34.6764148,-58.7638447', '2017-07-01 11:04:35', '', 'Fernando', '1562027144', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cumplir'),
(92, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '84752202-F1A6-28AC-84E5-36509596CDF8', '1-b435df679f6d3c6da6f8c013f479ad33', 'Akiyto123@gmail.com', '-34.6679488,-58.7633528', '2017-07-01 12:07:13', '', 'Fabián', '4983201', '', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(93, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '850EECD4-E634-89E7-BF75-6AA746F7AFF7', '1-fd49ddaa45d2f5e2193af8f5290b1e00', 'Araceli Arleo', '-34.6653433,-58.7471995', '2017-07-01 11:44:50', '', 'Andrea', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(94, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '862C7502-2A15-6DDF-B380-577B004BC25A', '1-4b5bff58a33c59066dd7c1175784ab18', 'Daiana', '-34.6763641,-58.7598873', '2017-07-01 11:30:23', '', 'Isibel', '', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(95, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '881B22A8-D4E2-AFD4-B3D9-B603629C48B1', '1-5996f91c75d79289d46622a1d61940db', 'Damianfreites9@gamail.com', '-34.6651457,-58.7513802', '2017-07-01 11:36:13', '', 'Leonardo', '', '31-49', 'Si', 'R', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(96, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '886450BB-E191-2413-A8EF-3A23BF6539D3', '1-363e12eb8c3bf9fb0445e700c4828f8e', 'Sabrina', '-34.6731687,-58.7663357', '2017-07-01 11:36:52', '', 'Mariela', '', '31-49', 'Si', 'M', 'No', 'No', 'B', 'No', '', 'No', 'No', 'No', 'Union Ciudadana'),
(97, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '892AAFD4-B92A-60E1-8774-8D46B1ADA92F', '1-66c3dfd96090dede794c92298c4967f6', '27636129', '-34.6749323,-58.7582775', '2017-07-01 12:26:31', '', 'Diego Vera', '', '31-49', 'Si', 'R', 'No', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(98, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '8A2555F7-EDEE-24A3-A50C-E8B6213D6D18', '1-f71b13c8a759e3027fb7f9a434968e24', 'Julieta-shuli@hotmail.com', '-34.6640562,-58.7576067', '2017-07-01 11:56:21', '', '', '', '+50', 'Si', 'R', 'No', 'Si', 'R', 'Si', 'Si', 'No', 'Si', 'Si', 'Otro'),
(99, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '8A2B0673-2B7F-374F-9D3D-25EF6B89BA44', '1-82b1ec91563939661bc06e7a6415f084', 'Araceli Arleo', '-34.6626793,-58.7565', '2017-07-01 11:23:37', '', 'Norma', '119449488844', '18-30', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'No', 'No', 'No', 'No', 'NS/NC'),
(100, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '8C361BE6-D2E7-4D5F-AE94-7B0B8C84617D', '1-14b22deb8430c142c3dff64d166964d5', '40292431', '-34.6672954,-58.7610499', '2017-07-01 11:15:28', 'sandraykss@gmail.com', 'Sandra Valdez', '2204898109', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'No', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(101, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '90432A41-2914-F052-A81C-810B08774463', '1-34960779fe85b39519b80d3aab0b81d3', 'soledad sarria', '-34.6687039,-58.7682943', '2017-07-01 08:13:47', '', 'norma', '', '+50', 'No', 'B', 'Si', 'Si', 'M', 'Si', 'No', 'No', 'Si', 'No', 'Cambiemos'),
(102, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '94532D46-3A59-1B01-A457-DA251D7AF768', '1-17de6aa9192a32268fcf521c9a20684a', 'Julieta-shuli@hotmail.com', '-34.6639767,-58.7606251', '2017-07-01 11:23:05', '', 'Lia cordoba', '1151261734', '18-30', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(103, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '95F10C5D-BB03-D8E3-9979-78F6303C01E3', '1-5ea55eb5c05a16983ebb8f62c6170a51', 'Akiyto123@gmail.com', '-34.6678558,-58.7636435', '2017-07-01 12:08:48', '', 'Miguel', '', '31-49', '', '', '', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(104, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '9628A56C-EF46-A11D-977F-A9FAADAA7BA8', '1-7deb6c25001455de06f458dbcda5665d', 'Sebastián', '-34.6661685,-58.7595183', '2017-07-01 11:22:01', '', '', '', '+50', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'No', 'No', 'Si', 'Cambiemos'),
(105, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '98145CBE-3EB1-99BB-AFF9-84D3DB03A71E', '1-0b01f2adccb4d6440478cedd4d4972a6', 'Akiyto123@gmail.com', '-34.6669185,-58.7610275', '2017-07-01 11:20:19', '', 'Glady', '114893571', '31-49', 'No', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(106, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '98F1A30F-81C4-C1C7-BE02-B3EB49DF05FE', '1-a1ead14cbc5a6c67246be50325193ad2', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:09:16', 'rodoelectric@yahoo.com.ar', 'Rodolfo', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(107, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '997B2DC8-4FC4-FECE-B504-0D42515D967D', '1-8747af59e120a01fc4a3a812b215ad8f', 'Akiyto123@gmail.com', '-34.6679311,-58.7629822', '2017-07-01 11:59:58', '', '', '4894791', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(108, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '9AB6A8FA-2416-6815-9D37-ED7DF39035F4', '1-1fd0e7bae8460f0a1bc80af72c5a8019', 'Barria vanina', '-34.6887568,-58.7276733', '2017-07-01 13:14:29', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(109, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, '9AD22754-C9F1-2573-80F5-6CB7CACE89D9', '1-d3c42fe03833dd73a071b218aea9c495', 'Daiana', '-34.6754921,-58.7600438', '2017-07-01 11:22:03', '', 'Monica', '', '31-49', 'Si', 'B', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(110, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A27E4273-A25E-2534-ACB1-5E6DC0278BE2', '1-95427f0cfff7da202e78a2959366ee14', 'Dario gato', '-34.6690978,-58.7598425', '2017-07-01 11:00:44', '', 'Analia', '2204890770', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'No', 'Si', 'No', 'No', 'Cambiemos'),
(111, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A442F83C-7C31-378B-952F-282BB2DA3789', '1-f5748a4318ab4a60c88c3ba46567c657', '27636129', '-34.6738531,-58.7583222', '2017-07-01 13:02:16', '', 'Helena Soria', '1164971611', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(112, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A4894D72-7635-9535-9D17-47FE643B5FA0', '1-09b0624dc6c2662b735bbe967300c90e', 'Pato Claudio', '-34.6667817,-58.7592053', '2017-07-01 11:33:55', '', '', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(113, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A52DD2C7-9F75-59FF-B21B-649AE813B263', '1-5785233110266a0b90b27d2342e1bb7e', 'Carlos', '-34.6713369,-58.7622014', '2017-07-01 11:56:18', '', '', '', '18-30', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(114, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A59184B5-CDFB-B7BD-993D-FDFE25969F7B', '1-0d0d8e8a29a682c4dcde70cc21bef38d', '18845491', '-34.6632667,-58.7514585', '2017-07-01 11:03:14', '', 'Ramírez Norma', '', '+50', 'Si', 'B', 'Si', 'No', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(115, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A5DBB950-8B02-31FF-8293-22643CD3608E', '1-cd483bb6c823f07dcdc2a4468a4e4891', '14851301', '-34.673901,-58.7598649', '2017-07-01 11:54:32', '', 'Andres Monzon', '2204892594', '+50', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'Si', 'Cambiemos'),
(116, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'A624FF63-AF78-7768-A3B3-72669F6494B5', '1-ba6a8ebcbfbac3ca88b3ba31c0c80fcf', 'Akiyto123@gmail.com', '-34.6675913,-58.7642919', '2017-07-01 12:20:16', '', 'Jhony parra', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(117, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'AA878B2C-1B08-3438-A2BD-DEBC31CD09B1', '1-6c284b12c58bb81e4ec8e12438eedf9f', 'Abel salim', '-34.6627765,-58.7499718', '2017-07-01 11:33:22', '', 'Riel', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(118, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'AAB5E9C7-A5DA-F562-BAE6-D68AD0916D27', '1-94be3b4e024dcfb2f181e1d8f09bcc3c', '17736958', '-34.674397908139,-58.773039792471', '2017-07-01 12:02:44', '', '', '', '31-49', 'Si', 'M', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(119, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'AD9F7DBA-473A-534B-A153-5A8C02385C43', '1-6df9fd0bc710dd9a7115517c9b5e9646', 'Ramón Romero', '-34.6771037,-58.7629057', '2017-07-01 11:23:39', '', 'Alba ocampo', '1137005072', '+50', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(120, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'ADE2DD3A-2C52-42A4-A1C1-62CD8C48B402', '1-47cecea358f3cf4a0ab806e59217be9d', '14851301', '-34.6741831,-58.7594848', '2017-07-01 11:47:07', '', 'Indalecia valdez', '2204894180', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(121, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'AEB4AC24-924E-F6EE-B206-8D4F250088C6', '1-202059dc5b6fc28e2b531af1c992959f', 'Gabriel peralta', '-34.67445894,-58.76366412', '2017-07-01 11:27:05', '', 'Esteban Óscar Pérez Méndez', '', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(122, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B0F63F56-A283-61E6-A041-5D2178A78884', '1-7f0502d7ccbc4bccf6feb030b8710c5a', 'salas Esther 18272425', '-34.6973596,-58.6956756', '2017-07-01 10:50:38', '', 'Juan cuevas', '2204894915', '18-30', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'No', 'Si', 'Cambiemos'),
(123, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B10D225A-CF71-A1AA-A034-8B6479567B76', '1-eb3e643d08828c6fc0c0ae63a84ed3ae', 'Akiyto123@gmail.com', '-34.6688353,-58.7639342', '2017-07-01 12:36:38', '', 'Lola diaz', '4891660', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(124, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B34FCF89-1AAF-3E97-83E2-15807C63E0E2', '1-f6e7d6c4c4e03a393b11c14d180669c3', 'Ramón Romero', '-34.6776298,-58.7611362', '2017-07-01 11:35:47', '', 'Maria', '', '18-30', 'Si', 'M', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(125, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B3DA44A8-7A81-D932-9C63-B9E4E58F1BB0', '1-1a306ac82979acbdbbc1c36937c8c4d3', 'Barria vanina', '-34.6637343,-58.7333286', '2017-07-01 12:36:34', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(126, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B42F324B-CD78-ED10-813A-AC5CA056BD24', '1-6b92969570b6aa317064138c5ba0e1e3', 'Gerardo', '-34.6743732,-58.7667515', '2017-07-01 11:04:26', '', 'Cristina', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'No', 'No', 'No', 'No', 'Cambiemos'),
(127, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'B52E9E7F-0A80-D437-A5C7-838D9CA0A1E4', '1-8f363da75a36ab193e0eba9fd709c6e9', 'Juan Ochoa 17736958', '-34.669538357491,-58.761036041117', '2017-07-01 10:15:34', '', '', '', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(128, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BAAB0EBB-297F-DEBC-8713-AE87412735C9', '1-ab17c41296259dc76091d6c01decb9fb', 'soledad sarria', '-34.6687039,-58.7682943', '2017-07-01 08:08:29', '', 'carlo', '', '31-49', 'No', 'R', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'No', 'Si', 'Union Ciudadana'),
(129, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BAE0D949-071E-802C-82D8-F37FBB644FC6', '1-5e7a58b8ca9fc15750050d03ce9fefec', 'Laura Huguetti 24976181 laura.huguetti.adm@gmail.com', '-34.6698182,-58.758121', '2017-07-01 11:10:10', '', 'Laura Aizpurua 549', '', '+50', 'Si', 'B', 'Si', 'Si', '', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(130, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BC28863C-C4F8-7E3F-8AB4-A0280DC3FCE6', '1-bd4876c42e44b377451c29aefc1536b3', 'Barria vanina', '-34.6637978,-58.7335521', '2017-07-01 12:40:32', '', '', '', '+50', '', '', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(131, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BD944A5A-548B-AAD8-8BE3-0352BF4D03BF', '1-e7d12c042047711a6b0c291a1c41f6cb', 'Karen 37948707', '-34.6760204,-58.7616648', '2017-07-01 11:37:16', '', 'Gisela', '4704125', '31-49', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'Si', 'Union Ciudadana'),
(132, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BDF2599B-DFF1-DF16-B861-3BB54787EBE2', '1-2927353465be5338b25c9e2a754e2b20', 'Akiyto123@gmail.com', '-34.6678946,-58.7636771', '2017-07-01 12:10:43', '', 'Daniel', '4890236', '31-49', '', '', '', '', '', '', '', '', '', '', 'Cambiemos'),
(133, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'BF344AAD-82B0-DB5C-94CC-27519F84D29E', '1-4ab65fb95feaf8fe88f1da6697794d83', '14851301', '-34.6746693,-58.7587246', '2017-07-01 12:19:04', 'gracielatorres1956@gmail.com', 'Graciela torres', '1132192971', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(134, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C02420E3-CC09-6565-A298-1CDAEB14F8BF', '1-ec46a51e3e87840e40569423c04e304e', '27636129', '-34.6748512,-58.7577856', '2017-07-01 12:40:48', '', 'Raul', '', '+50', 'Si', 'M', 'No', 'No', 'M', 'No', 'Si', 'No', 'No', 'Si', 'Otro'),
(135, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C4C0567E-FB72-9419-B10C-4F0F5FE1BB8A', '1-4613200d2e6bec1711f9ac8082765c79', '27636129', '-34.6747491,-58.7584563', '2017-07-01 12:18:31', '', 'Julia Aguirre', '46287342', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(136, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C4D8DC43-BA52-6EA1-9EBD-B003FFB2BB47', '1-02a9dfa1af6f2421a6f52f61465b1a7e', 'Araceli Arleo', '-34.6656978,-58.7561422', '2017-07-01 11:08:11', 'jesicadzuj@gmail.com', 'Jesica', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(137, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C543D047-83AB-C214-AC75-8843869B11E4', '1-dd00810d340e12c32d605ee035788267', 'Flor Di Grillo', '-34.6733816,-58.7607145', '2017-07-01 11:13:56', '', 'Paula', '', '18-30', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'Si', 'Cambiemos'),
(138, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C622292B-21C1-410B-BB80-29A3500152FE', '1-df283ba5dfe06c097c69ae6e2d1f9cd4', 'Akiyto123@gmail.com', '-34.6667475,-58.7613182', '2017-07-01 11:22:25', '', 'Hernan', '1167885155', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(139, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'C9C27699-565E-6191-A238-9BA9BEA3DED9', '1-aa257ad96aa6b5d7976f5fea7eaadedc', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 10:55:47', '', 'Alicia', '', '', 'Si', 'R', 'No', 'No', 'M', 'No', 'Si', 'Si', 'No', 'No', 'Union Ciudadana'),
(140, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CBEFCF33-F453-A074-B548-CBF625C63937', '1-9b639a71ebb839b677a33d7f19d2b381', 'Sabrina', '-34.6723367,-58.7655241', '2017-07-01 11:18:24', '', '', '', '+50', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'Si', 'NS/NC'),
(141, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CC200C97-06EB-0E96-8856-3EDA5CCA80C0', '1-ebeadb3f3823351ba33577eb6beaa4a6', '14851301', '-34.6742552,-58.7593954', '2017-07-01 12:06:49', '', 'Inocencia impa cuiza', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'No', 'No', 'No', 'No', 'Cambiemos'),
(142, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CC7A3912-C2AC-BCCB-A0C1-4C8EE19F6CFA', '1-b6270566b6f472161e18bb9fae3adad2', 'Camila', '-34.6755485,-58.7584563', '2017-07-01 11:28:20', '', '', '', '18-30', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'No', 'No', 'No', 'No', 'Union Ciudadana'),
(143, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CC82F1D9-7998-3DA4-A4C5-BDC6BE155B9A', '1-54f83811848659478f8d47a96af7817d', 'Gabriel peralta', '-34.6745891,-58.763733', '2017-07-01 11:20:22', '', 'Marcelo', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(144, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CDA5B0A9-9F75-FE0B-9C35-18BF97FD1AC8', '1-918abb51d667db6d1360935aa97cf3be', 'Abel salim', '-34.6632218,-58.751369', '2017-07-01 10:57:29', '', 'Mirta', '', '', 'Si', 'B', 'Si', '', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(145, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CEBA33ED-893C-5867-B693-2C7013FE9627', '1-7b9085ab7b01258f57ed42779a92c291', '18845491', '-34.6622702,-58.7526881', '2017-07-01 11:21:18', '', 'Martha', '', '+50', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'No', 'No', 'No', 'No', 'Cambiemos'),
(146, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CF9717BE-4091-96A2-BFAF-77D1CCCD2699', '1-ee2addad7dbdc522d09ca369b087a059', 'Flor Di Grillo', '-34.6755335,-58.758747', '2017-07-01 11:28:00', '', 'Gabriela', '', '31-49', 'Si', 'R', 'No', 'No', 'B', 'Si', 'No', 'No', 'No', 'No', 'Union Ciudadana'),
(147, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'CFC426CF-6700-8539-9501-DAC57330449A', '1-d425ce5fe06f9e02da35c15bfcf17015', '14851301', '-34.6748176,-58.7579421', '2017-07-01 12:42:08', '', 'Lucia', '', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(148, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'D0085499-CD3E-B34B-AF94-87D7AFD1D85E', '1-6e9f139f0f58fc9ff91081f545f252d1', 'Karen 37948707', '-34.6750111,-58.760994', '2017-07-01 11:19:37', '', 'Gomez osacar', '4891763', '+50', 'No', 'M', 'No', 'No', 'B', 'Si', 'Si', 'No', 'No', 'Si', 'NS/NC'),
(149, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'D3C7FA3A-E2C7-B5B8-BC08-26EAC25ABE72', '1-2fc3fa71ac2fb26313f96b9147e73e4c', 'Carlos', '-34.6735317,-58.7644292', '2017-07-01 11:18:14', 'nancilorenafilloldediaz@hotmail.com.ar', 'Nanci lorena fillol', '1559062429', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(150, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'D8E0178F-E6D9-3BAD-8B72-7B11C650CDDE', '1-21d0a4e161e622b341be4c3e9eb943fe', 'Laura Huguetti 24976181 laura.huguetti.adm@gmail.com', '-34.6693285,-58.7574949', '2017-07-01 11:25:12', '', 'Milkar Luis Agote 541', '', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'No', 'Si', 'Cambiemos'),
(151, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'DC49904C-0FF9-3CAF-9F1C-EF78AAC79504', '1-2363ac9a8d6ed00e1997327db438d88c', 'belen', '-34.6939159,-58.7474557', '2017-07-01 11:28:03', '', 'mario', '', '31-49', 'Si', 'M', 'No', 'No', 'R', 'Si', 'No', 'No', 'No', 'No', 'Union Ciudadana'),
(152, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E2F93233-2733-57CD-9A23-493E5475A73D', '1-0ffd183a934b6f1a50e1167aed6bdf57', 'Abel salim', '-34.6624672,-58.7514585', '2017-07-01 11:05:41', '', 'Gerareo', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(153, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E396C5CD-A5F0-3203-B54D-E1A227C92DD7', '1-163e5e190e0ed8a99f57a2d8f80c0a22', 'Gabriel peralta', '-34.6732136,-58.7643143', '2017-07-01 11:07:04', '', 'Mara', '', '18-30', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(154, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E4686921-1E06-6C89-8648-073063268D56', '1-0a18d876439adf559582961c9dee765e', 'Daiana', '-34.6760335,-58.7616424', '2017-07-01 11:35:19', '', 'Amalia', '', '+50', 'Si', 'M', 'No', 'No', 'R', 'Si', 'No', 'No', 'No', 'No', 'Union Ciudadana'),
(155, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E4A255AF-9DE3-7420-B08F-4E6A4E4E2329', '1-07c8febb8c80e30ee5a8007a6a55c06a', 'Dario gato', '-34.6689009,-58.7601108', '2017-07-01 11:14:05', '', 'Esperanza peralta', '', '31-49', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(156, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E67C17BE-B418-845C-9864-F9A0F17F773F', '1-2f9f139042290678e7521afe447af60b', '14851301', '-34.6754624,-58.7587023', '2017-07-01 12:32:59', '', 'Soraya', '', '18-30', 'Si', 'M', 'No', '', 'B', 'No', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(157, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E6CCFF11-2CE8-B7CA-8DEC-8A642A46D656', '1-8940a245576bae37ac45d01dbd6cf865', 'Pato Claudio', '-34.6662009,-58.7586017', '2017-07-01 11:22:16', '', '', '', '+50', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(158, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E83FBD81-0CD1-E8D0-9CE9-2747B758E533', '1-9f9c5084357413bf917e86f1abb5c08b', 'Barria vanina', '-34.6610927,-58.7565783', '2017-07-01 11:13:00', '', 'Yanina', '', '18-30', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(159, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E8506D15-A189-FFCD-AE65-3DA4032D250A', '1-492cafc23bc260b2f54ff9baac1f9688', 'Carlos', '-34.6715901,-58.7622349', '2017-07-01 11:48:12', '', 'Veronica', '', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(160, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E8A86CC3-587B-4372-89B7-3C15E3B1DFB4', '1-555afb5bc6ca193769973b2605a870c9', 'Flor Di Grillo', '-34.6740134,-58.7595742', '2017-07-01 11:21:03', '', 'Maria', '', '31-49', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'Si', 'NS/NC'),
(161, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E9469394-A851-76F3-B618-A35BECC782D0', '1-8d71994d72d85d9cf6538e68628d2cdd', 'maynat@speedy.com.ar', '-34.6684458,-58.7591941', '2017-07-01 11:22:23', '', 'Cristian', '', '18-30', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(162, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'E974639E-B014-9FED-B534-7EEE988765CC', '1-cab393ce22ef177b53e0ea28cf2f6e6e', 'esther18272425', '-34.6973596,-58.6956756', '2017-07-01 11:24:44', '', 'María velez', '2204896964', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(163, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'EC360BFC-8978-ED83-8BAA-E23105216A1B', '1-850189433c09f251171db21b268606bd', 'Pato Claudio', '-34.6658962,-58.7594177', '2017-07-01 11:14:19', '', '', '', '+50', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(164, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'EEA09CEC-9263-874D-B3C4-9D8402B0D600', '1-ab68890d1a834510bfa7bb9b368f0f7e', 'Abel salim', '-34.6631955,-58.7514138', '2017-07-01 11:01:21', '', '', '', '31-49', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', '', 'Cambiemos'),
(165, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'F0C3C7B2-B2A6-798A-8B13-F10C6DCBE280', '1-99000a25c6af2ab3aa7612afe3aeb8e1', 'belen', '-34.6939159,-58.7474557', '2017-07-01 11:20:40', '', '', '', '31-49', 'No', 'M', 'No', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana');
INSERT INTO `app_merlo_cargas` (`id`, `fecha_carga`, `fecha_modificacion`, `user_id`, `couchdb_id`, `couchdb_rev`, `identificacion`, `position`, `time`, `email`, `nombre`, `telefono`, `edad`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`, `respuesta_6`, `respuesta_7`, `respuesta_8`, `respuesta_9`, `respuesta_10`, `respuesta_11`) VALUES
(166, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'F1AE5B58-2D2F-4F22-94D2-2C9BA29563B9', '1-0db726c26b150e6c28cfc135e305f4fb', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:04:04', '', 'Sandra', '', '31-49', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Frente Renovador'),
(167, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'F4A9AE89-DF9E-1A1A-8CC8-63758AD81EC8', '1-af3a77c4d8923b15f64ea4c1614150e6', 'Pato Claudio', '-34.6675323,-58.759686', '2017-07-01 10:57:03', '', '', '', '18-30', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(168, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'F8FB9A1A-F61A-088F-B47E-67BA7FD5CEE0', '1-47f515782ca24c1b1902178ed28e5ec2', 'Barria vanina', '-34.6611891,-58.7576738', '2017-07-01 11:06:26', '', 'María de los angeles', '', '31-49', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(169, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'F95DC2EB-068D-DB79-A8EF-67D9B27B3614', '1-f8dc6e83affd282999756c0031feee7d', 'nrodriguezescofet@buenosaires.gob.ar', '', '2017-07-01 11:20:42', 'mir_saso@hotmail.com', 'Mirta', '', '31-49', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Cumplir'),
(170, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FB3AD96D-8F20-E5EC-AC21-A10266DC2D2A', '1-26a3b22b9d0fbb29ad5d490898210c14', 'Dario gato', '-34.6692954,-58.7604015', '2017-07-01 10:53:56', '', 'Gabriel', '1161611241', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(171, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FB88046D-7676-D4C2-99EC-1DBAC7051959', '1-5dd80dc5f42154b988bdf1e3fc5f7684', 'Sara', '-34.6675998,-58.7593395', '2017-07-01 10:57:47', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'No', 'No', 'Si', 'Cambiemos'),
(172, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FDF4069B-5D7F-A89E-BE74-13760577E7E0', '1-8ba255e65fd7fa42e1617e6b3bc4e5d2', 'Daiana', '-34.6727595,-58.7604462', '2017-07-01 11:09:54', '', 'Hubo roberto', '', '+50', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(173, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FED8E3EE-7131-D437-9348-2D529B432FAC', '1-b9b7c9be16c8656532d0ec060be17dca', 'Pato Claudio', '-34.6662702,-58.7598425', '2017-07-01 11:04:05', '', '', '', '31-49', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(174, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FEDE8168-6A07-8D10-98A6-C130ACC66337', '1-ed43b731d1f0815b0ff7ec8666ce0512', 'Akiyto123@gmail.com', '-34.6669007,-58.7617207', '2017-07-01 11:33:46', '', 'Graciela alvarez', '1535640275', '+50', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(175, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FEF6E517-D27D-229F-B328-E44207E3B03A', '1-907f2f5cd27bc3778a6af77cb0f5ba9d', 'Julieta-shuli@hotmail.com', '-34.6640562,-58.7576067', '2017-07-01 12:06:21', '', 'Victerbo', '', '+50', 'No', 'R', 'No', 'Si', 'R', 'Si', 'No', 'No', 'No', 'No', 'Otro'),
(176, '2017-07-03 18:03:48', '2017-07-03 21:03:48', 0, 'FF1892CD-427D-6B5B-8D40-6C5B3F73ABE1', '1-ee071c589bba887698d951d88b8cfbe4', 'Akiyto123@gmail.com', '-34.6677566,-58.7610946', '2017-07-01 11:00:12', '', 'Pedro villafañe', '4891761', '+50', 'No', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(182, '2017-07-06 21:10:01', '2017-07-07 00:10:01', 0, '82225EBE-E7BD-D10B-B283-B9F52BFBB8DD', '1-b85746d1e9006d0bc65718c77723a9b1', 'fede', '-34.6322192,-58.4348342', '2017-07-06 20:47:33', 'aaa@aaa.com', 'aaaa', '222', '31-49', 'Si', 'R', 'Si', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'No', 'Cumplir'),
(183, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '0648C368-0EDB-AA76-9509-D52B4FEA2371', '1-71bf5a413f38d0ed0bf089da49478a22', '14851301', '-34.7465178,-58.6944738', '2017-07-22 10:59:08', 'roby-estudio@hotmail.com', 'Roberto', '2204923318', '+50', 'Si', 'R', 'No', 'No', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(184, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '0A62966C-6128-E9F9-9DEA-D747A635080C', '1-bdccb2004e58577f2f767fb2d5a3a692', '39465828', '-34.7466682,-58.7044405', '2017-07-22 10:41:20', '', '', '', '', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'Si', 'Si', 'No', 'NS/NC'),
(185, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '26366B08-E795-B1B4-8E12-D45CC97E00A8', '1-c09b91f504400ad2195c5d8dc05dfce0', '39465828', '-34.7487959,-58.7036024', '2017-07-22 10:24:34', '', '', '', '26-39', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(186, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '3131F55E-47CB-1D99-9706-B48602317E0D', '1-60612d09702e8c8ab4df0063eae02cb7', '39465828', '-34.7487751,-58.7027085', '2017-07-22 10:54:40', '', 'Gisela', '', '26-39', 'Si', 'B', 'Si', 'Si', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(187, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '327B8090-C2DD-44BF-B17B-DD95030AF101', '1-246d264d00618a64c85f03a74732bcda', 'Brenda temperan', '-34.747599,-58.6961162', '2017-07-22 10:37:41', '', 'Rosalina fernandez', '', '+60', 'Si', 'M', 'No', 'No', 'R', 'Si', 'Si', 'Si', 'Si', 'No', 'Union Ciudadana'),
(188, '2017-07-22 15:08:31', '2017-07-22 18:08:31', 0, '34260162-5F65-C518-A854-7B6A3AD4309D', '1-bbabb287c9012ab2197cd120c793ff2f', 'Alejandro', '', '2017-07-22 10:33:05', '', 'Silvia', '', '40-59', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(189, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '3889932B-C6FD-CF8F-9258-B9B0D524EF5C', '1-74529e859cfd7b92e1bf9d7e94871aaa', 'Román', '-34.7513692,-58.6906192', '2017-07-22 10:58:24', '', 'Javier', '', '40-59', 'Si', 'R', 'Si', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(190, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '388C5640-CC4F-468C-AFA9-D6528F6D61D8', '1-c89fa57bcbcf4464990046fc70abb86e', 'Román', '-34.7506224,-58.6918258', '2017-07-22 11:42:10', '', 'Ansal', '', '26-39', 'No', '', 'No', 'Si', 'M', 'No', 'No', 'No', 'No', 'No', ''),
(191, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '41D9B759-01C5-D33E-9C97-3D96AFC5BDF9', '1-cd7741a74b0a23cd4644f431beb7bdd0', 'Román', '-34.749981,-58.6904628', '2017-07-22 11:32:23', '', 'Evan', '', '16-25', 'No', 'B', 'Si', 'Si', 'R', 'Si', 'No', 'No', 'No', 'No', ''),
(192, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '466470FE-B7AD-E788-A294-520B826E08AA', '1-2cc19707617285d939cb4d1000faff7a', '39465828', '-34.7476391,-58.7049433', '2017-07-22 10:34:31', '', '', '', '26-39', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(193, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '46DBC2CF-831D-72EF-865A-364AF7BB9B7A', '1-9421b3038a2083692d8f9ad6086c7934', 'Román', '-34.750467,-58.6905968', '2017-07-22 10:52:15', '', 'Bla.', '', '40-59', 'Si', 'R', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(194, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '4BA5F145-2E56-8FAB-8F16-E8E53BE1CA87', '1-0ce01bfb6d7381ebbb04f8c8e0aa060a', 'Bruno lalin', '-34.7498001,-58.6903063', '2017-07-22 11:22:09', '', '', '', '31-49', 'Si', 'B', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(195, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '4E960A3F-3E5D-8E96-9C22-B2E97673D84D', '1-8033012eda59b35a16b74bd4f2614950', '14851301', '-34.7467737,-58.695133', '2017-07-22 11:14:09', 'luismengochea@gmail.com', 'Luis', '1132728034', '18-30', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(196, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '4EAA71FE-01A8-3615-914C-CDF2DF98F1FF', '1-f203d5718c5e6709625b87ed9e4e552a', 'Brenda temperan', '-34.7469366,-58.6984402', '2017-07-22 10:34:16', '', 'Federico García', '', '26-39', 'Si', 'M', 'No', 'No', 'M', 'Si', 'Si', 'No', 'No', 'No', 'Cumplir'),
(197, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '5D013020-675F-246B-9E77-D57C320B6E36', '1-b1e48c4cc68da4770ad9034b9aeb61fc', '14851301', '-34.7469149,-58.6954235', '2017-07-22 11:48:25', '', 'Jorge', '2204924135', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(198, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '5F7CCFEC-AAD5-23C1-B885-156B21710DA5', '1-aadbb5c4d336ad8db677a9f0127fd3f7', 'Brenda temperan', '-34.7479174,-58.6960715', '2017-07-22 10:38:48', '', 'Diego gomez', '', '16-25', 'Si', 'R', 'No', 'Si', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(199, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '6BBF8AF5-0C27-00BD-9876-51B2F58AF861', '1-358fc3b2c6a202abd49d14f2d30fd2ae', '29333141', '-34.7463221,-58.7036695', '2017-07-22 10:50:54', '', 'Jorgelina', '', '26-39', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(200, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '6EB26CEC-3178-8951-809C-F32D14BF96E5', '1-54aacf3f68981d86f900d7bcbd9c1274', 'Román', '-34.7504578,-58.6910772', '2017-07-22 11:39:39', '', 'Carmelo', '', '+60', 'No', '', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(201, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '705697C1-FF02-1068-9A64-A3CF3A56AD0B', '1-e336184b961d98e169696620a782a0bc', 'Marisa martinez 23508760', '-34.748575,-58.7002615', '2017-07-22 10:48:26', '', 'Lidia Huaylla', '', '40-59', 'Si', 'R', 'No', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(202, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '73123C3C-4124-5632-82A2-C0F71CCA6D7E', '1-f8125ec4f176a74a229119c1fb398160', '39465828', '-34.7480508,-58.704474', '2017-07-22 10:31:11', '', '', '', '40-59', 'No', 'R', 'No', 'No', 'R', 'No', 'No', 'No', 'No', 'No', 'NS/NC'),
(203, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '765745E0-D174-0674-8C25-B9B547BCAB29', '1-7b19f8c116296f78a6d536f809a1ab04', 'Matias', '-34.6340877,-58.6382797', '2017-07-06 18:43:03', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(204, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '809C0EAB-33E7-E643-A263-AE9A102B8533', '1-38769ceb024c49e0dd9b8346643e647d', 'Román', '-34.7499079,-58.6907532', '2017-07-22 11:36:33', '', 'Fernaldo.', '', '26-39', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(205, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '83252D2A-F1DE-EC36-ABEE-B792A5C2C022', '1-a26fb318dace1ea25ed52b5dca5f5db1', 'Gregorio', '-34.7496794,-58.6967196', '2017-07-22 10:33:38', '', 'Gregorio', '', '40-59', 'Si', 'M', 'No', 'No', 'R', 'No', 'Si', 'Si', 'Si', 'No', 'NS/NC'),
(206, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '864959BE-3148-BC22-B7F9-9548DBCF8439', '1-3a818da56794978f52938f4856bff54f', '14851301', '-34.7473693,-58.6942838', '2017-07-22 10:44:40', '', 'Gina', '2205456106190', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(207, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '96763D46-5CF2-854F-8604-0F6A60C66F97', '1-08df36eb20172b344ba82eaa32589bda', '39465828', '-34.7490439,-58.703379', '2017-07-22 10:22:16', '', '', '', '40-59', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(208, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '9EFB82EC-55A0-A57A-BE06-875A659E6878', '1-57c13d25f70149d40a568ac7b6d47379', 'Marisa martinez 23508760', '-34.7481951,-58.699714', '2017-07-22 10:55:54', '', 'Susana coronel', '1151116214', '40-59', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(209, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, '9FCE89FF-49C0-6D39-8343-EFF07888CCB8', '1-0e4f7e0a7bf37a603a133ebb61048853', 'Esteban Christiansen', '-37.3099952,-59.1560499', '2017-07-16 14:50:15', '', '', '', '18-30', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(210, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'A1818330-08D1-7BB3-A8E9-7526ACD6305E', '1-805b6ec537cb27c6c391bb9ca82fd997', '29333141', '-34.7463867,-58.7048539', '2017-07-22 10:45:01', '', 'Pedro martin', '', '40-59', 'Si', 'R', 'Si', 'No', 'B', 'No', 'Si', 'No', 'No', 'Si', 'Union Ciudadana'),
(211, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'A2208ED5-C4B6-2FA9-8C32-52AC53444C26', '1-377017a1277daf5095f0969c2d03f865', 'Pato Claudio', '-34.6848817,-58.7300874', '2017-07-11 15:23:13', '', '', '', '18-30', 'Si', 'B', 'Si', 'No', 'R', 'Si', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(212, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'A2BA7BA0-6735-7F19-B074-28824ABCC5D2', '1-ebaa8ebb79c2fd6b2d1cc662d3f34f5e', 'Román', '-34.749473,-58.6907644', '2017-07-22 11:18:49', '', 'Rocina', '', '26-39', 'Si', 'R', 'No', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(213, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'A858A4D5-92A7-D663-B485-80A174D5AF7B', '1-7289fe7f1f7087dde7ec2db4c9339391', 'Román', '-34.7505719,-58.6904181', '2017-07-22 10:54:29', '', 'Sara.', '', '40-59', 'Si', 'M', 'No', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(214, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'B1172003-48B6-E844-95ED-3B35B4B3120B', '1-c734e8b864aa14b5edd50045e9763fab', 'Román', '-34.7506928,-58.6920046', '2017-07-22 11:09:12', '', '', '', '+60', 'Si', 'R', 'Si', 'No', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(215, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'B4392779-FD2D-B6C5-B426-1384237BD0E2', '1-1eec6583839513a3ca3aeaa5e484771d', '39465828', '-34.7488806,-58.7035577', '2017-07-22 10:23:07', '', '', '', '', 'Si', 'B', '', 'No', '', '', '', '', '', '', ''),
(216, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'B84CEBF6-1A6A-EA5A-8F6D-F825A7F200E2', '1-68872bcad1e9ba4fce8384c14aa2372c', 'Marisa martinez 23508760', '-34.7485673,-58.7004738', '2017-07-22 10:43:01', '', 'Maria Caivano', '', '26-39', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(217, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'C9B889F5-FF27-7A85-A4A6-6A9ECDC494E2', '1-71929fa7e83ab0dbe5889aed887a83f6', 'Pato Claudio', '-34.6837551,-58.7294838', '2017-07-04 18:22:44', '', '', '', '', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(218, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'CED78C14-FCEB-FDE4-82E9-EE52ECA6E578', '1-c8921e6761005ec6429bda1fb2c1ce4b', '29333141', '-34.7472483,-58.7040494', '2017-07-22 10:43:00', '', 'Jose', '', '+60', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(219, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'CF16CFDB-BC14-2467-8783-8A3DE01AE788', '1-a50852ab564b77160dd0db44ab233536', '14851301', '-34.7467539,-58.6952', '2017-07-22 11:33:41', 'camilapons71@gmail.com', 'Elida bagnasco', '2204924972', '+50', 'Si', 'B', 'Si', 'Si', 'M', 'No', 'Si', 'No', 'Si', 'Si', 'Cambiemos'),
(220, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'D0F8C260-6DBD-DB77-A2D1-25CDC39C4BE2', '1-d7f935b92995a4e88a1338d6e02ecb79', 'Román', '-34.7499428,-58.6903287', '2017-07-22 11:22:12', '', '', '', '40-59', 'Si', 'R', 'No', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(221, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'DAB2690A-AD8E-A22F-A6F8-6017A7BECC7A', '1-58e1b52b438ca0384b4ce61dd7d047fd', 'Brenda temperan', '-34.7465912,-58.6975352', '2017-07-22 10:35:58', '', 'Georgina Sánchez', '', '+60', 'Si', 'R', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(222, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'E5CFFA1C-B94A-F820-BA40-3889F4828633', '1-bb0814cbf99f6bf2535fca95afe1ec6b', 'Román', '-34.7504202,-58.6908426', '2017-07-22 10:46:59', '', 'Miguel Ángel.', '', '40-59', 'Si', 'R', 'No', 'No', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(223, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'E7A5B11F-64AB-8098-B3EE-05729D4E684F', '1-295cc0c0333fda55c9c2e33530617a9e', '22580415', '-34.6786858,-58.7345915', '2017-07-08 21:15:33', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(224, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'EDCD6C2B-2BC7-B0E4-BBF0-C6BAE77DEB44', '1-2e337c14b988e27e926bf24e4006173c', 'Marisa martinez 23508760', '-34.7485881,-58.7002392', '2017-07-22 10:45:53', 'cardosoclaudio2286@gmail.com', 'Claudio', '1134000298', '26-39', 'Si', 'B', 'Si', 'Si', 'R', 'No', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(225, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'F04AA43B-3505-66BB-9926-E473FDD5C096', '1-577f1f5e774ddaf7493ed7efb0be425d', 'PAREDES, CRISTIAN', '-25.1197762,-58.2553123', '2017-07-10 10:51:44', 'cristianfedericoparedes@gmail.com', 'Cristian', '3718419742', '18-30', 'Si', 'M', 'No', 'No', 'M', 'No', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(226, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'F0EDFF0B-BD8E-3A81-ADED-78298EEBD15D', '1-bb9dd747d13479bae724d75df7634a48', '14851301', '-34.7481406,-58.6956246', '2017-07-22 10:31:56', '', 'Cintia', '', '+50', 'Si', 'M', 'No', 'No', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cumplir'),
(227, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'F31B69D8-B9DE-1217-8B06-029FFE1DD414', '1-0aab964657bbf487e2a31d123aa018e1', 'Bruno Lslin', '-34.7505786,-58.6903734', '2017-07-22 10:53:00', '', '', '', '31-49', 'Si', 'M', 'No', 'No', 'B', 'No', 'Si', 'Si', 'No', 'No', 'Otro'),
(228, '2017-07-22 15:08:32', '2017-07-22 18:08:32', 0, 'FAFD50C7-249B-3036-87E4-006AF9414FA0', '1-3812e66d989adebf9ffa8c82c24a60de', '22580415', '-34.7503567,-58.7020046', '2017-07-22 10:07:10', '', '', '', '31-49', 'Si', 'B', 'Si', 'Si', 'M', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(229, '2017-07-24 14:40:01', '2017-07-24 17:40:01', 0, '76485034-AADF-2E64-93F8-F58BA2C92512', '1-37df8d8d5e844d0273b49499a3606615', 'Alicia 14585587', '', '2017-07-24 14:35:19', 'aliviviro@hotmail.com', 'Alicia', '46029890', '40-59', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(230, '2017-07-25 18:50:02', '2017-07-25 21:50:02', 0, '0A20AB49-0C28-6E4C-B620-B616FA7579FC', '1-e60624292210388d287ccff971e77e9d', 'Alicia 14585587', '', '2017-07-25 18:46:25', 'aliviviro@hotmail.com', 'Alicia', '561280200', '40-59', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(231, '2017-07-29 10:20:02', '2017-07-29 13:20:02', 0, '1949AE92-416A-BD19-BC2E-21026CC0A5F0', '1-b2351f131b0197e1c0a618b7fb484213', '14851301', '-34.6904883,-58.7430973', '2017-07-29 10:19:11', '', 'Eugenia', '', '+50', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'No', 'Cambiemos'),
(232, '2017-07-29 10:20:02', '2017-07-29 13:20:02', 0, '97BCBB47-9DA1-FD90-B8F0-E36BAF23A8B0', '1-38ef24a3c5eef11f4e1088e62d138d2c', '14851301', '-34.69014,-58.7436898', '2017-07-29 10:15:06', '', 'Alejandra', '2204807057', '+50', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'No', 'Si', 'No', 'Cambiemos'),
(233, '2017-07-29 10:30:01', '2017-07-29 13:30:01', 0, '0041C95F-3221-6A25-8010-A35C278A3313', '1-1a0f2d0f8fd35790b738bae0ba3e4955', '12166189', '-34.6903098,-58.7435668', '2017-07-29 10:26:23', '', 'Carmen Antonia Albarracin', '', '+60', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(234, '2017-07-29 10:50:02', '2017-07-29 13:50:02', 0, 'CC22517C-E352-2507-AFD9-C5942DFE9BA2', '1-60ebb935bfcccbd0b37196c810f6cd23', '14851301', '-34.6907475,-58.7441816', '2017-07-29 10:45:28', '', 'Pamela', '1115518508', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'NS/NC'),
(235, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '012DC4E8-F214-0935-98D0-F0463DD7BD00', '1-02370dabdd9d02517a3feda82c5598b8', '12166189', '-34.6911933,-58.7435892', '2017-07-29 10:55:35', '', 'Alicia Cristina Segovia', '114871341', '+60', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(236, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, '20DF9709-D50D-B42D-9A33-E0A3DA1F9E1B', '1-a251de697d3a946eb72463341f2550fa', '14851301', '-34.6907348,-58.7441369', '2017-07-29 10:55:09', '', 'Rosa beatriz arios', '', '31-49', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Cambiemos'),
(237, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, 'CA03F2B3-E1E4-8BC9-A500-11BA804FF70D', '1-fe72a3fb12afeed9c663101fe4b96e71', 'Brenda Temperan', '-34.6932055,-58.7429185', '2017-07-29 10:53:30', '', 'Guadalupe ancona', '', '40-59', 'Si', 'B', 'Si', 'No', 'B', 'No', 'Si', 'Si', 'Si', 'Si', 'Otro'),
(238, '2017-07-29 11:00:02', '2017-07-29 14:00:02', 0, 'D8DF5E86-2F78-943D-A369-5514A2CEBF6C', '1-c92dc2b4787ef777f154fed608d4b767', '14851301', '-34.6907405,-58.7442598', '2017-07-29 10:59:58', 'dadosredon2@gmail.com', 'Hector', '', '31-49', 'Si', 'M', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'No', 'Union Ciudadana'),
(239, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '1172FFFA-2691-887B-A2F7-E3BE6B845D7B', '1-6b04258274fb834010b6b0d6d4697810', '14845301', '-34.6906642,-58.7449864', '2017-07-29 11:07:48', '', 'Joel Fernandez', '2204808095', '31-49', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(240, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '22E7193A-35AB-765B-B95D-EAC7B4159551', '1-d9aeb107c84d619c425cbb5817efd6b0', 'Lalin bruno', '-34.6977141,-58.7459588', '2017-07-29 11:02:20', '', '', '', '31-49', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Cambiemos'),
(241, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '5E9412D2-B5AC-ED99-87DF-83D8708605C9', '1-e6cfd58f9043abe8c91c7f89bbeb487f', 'lsin bruno', '-34.6969464,-58.747099', '2017-07-29 11:09:29', '', '', '', '18-30', 'Si', 'R', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'No', 'No', 'Otro'),
(242, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '6F7F43D5-58D8-B904-A0E1-D1EDD95596F5', '1-86a821617b80eac2dd708524e2535210', 'Gonzalo 39759127 gonzi_08_elmasgrande@hotmail.com', '-34.6978646,-58.7458023', '2017-07-29 11:01:35', '', 'Natalia', '', '26-39', 'Si', 'R', 'Si', 'No', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(243, '2017-07-29 11:10:03', '2017-07-29 14:10:03', 0, '8D8D5B2A-6521-C60C-9418-64AAC0A17A6F', '1-c60e69bfb10d76b3532bf88cc292adf6', 'lalin bruno', '-34.6976412,-58.7461824', '2017-07-29 11:05:29', '', '', '', '+50', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(244, '2017-07-29 11:20:01', '2017-07-29 14:20:01', 0, '4FC10D17-B599-F944-B9C6-36F2E6E71F82', '1-c3013233ebc23f1c594876213f560bb3', '33240543', '-34.6969991,-58.7450199', '2017-07-29 11:18:36', '', 'German', '', '+60', 'Si', 'R', 'Si', 'No', 'R', 'No', 'Si', 'No', 'No', 'No', 'Frente Renovador'),
(245, '2017-07-29 11:20:01', '2017-07-29 14:20:01', 0, 'C1605CAB-B0B9-2B79-B11E-3AA0B9BB30BC', '1-2b6aa0acbc37169674241d8b92679d6e', 'Gonzalo 39759127 gonzi_08_elmasgrande@hotmail.com', '-34.6964873,-58.7477473', '2017-07-29 11:15:35', '', 'Oscar', '', '+60', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'No', 'Cambiemos'),
(246, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '473B76E2-425F-0C22-A37C-A098F98AE767', '1-263247c0b07d5bec82a3604879bffd5d', 'Jessica demichelis', '-34.699161,-58.7482391', '2017-07-29 11:22:26', '', 'Tomas', '', '16-25', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(247, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '492E04BF-DCBF-9E69-A462-C4DD4685F126', '1-695100c85bfdd75a0d29ad17350fe966', 'Jessica demichelis', '-34.6988399,-58.7486527', '2017-07-29 11:24:40', '', 'Marta', '', '40-59', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(248, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '73FE5361-2C06-16D9-8A5B-CEA54F07CCA4', '1-851a8e60250f4729cacb4413abc6423e', '33240543', '-34.6965586,-58.7458023', '2017-07-29 11:24:40', '', 'Lidia', '', '+60', 'Si', 'B', 'Si', 'Si', 'B', 'Si', 'No', 'No', 'No', 'No', 'Union Ciudadana'),
(249, '2017-07-29 11:30:01', '2017-07-29 14:30:01', 0, '91A728B9-CA8E-876A-9F24-B3607F20C5D7', '1-80a67a1dc9e8f1d0e9ee0f088ea0d60f', '33240543', '-34.6969373,-58.7455229', '2017-07-29 11:21:39', '', 'Ariel', '', '26-39', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'No', 'No', 'No', 'Union Ciudadana'),
(250, '2017-07-29 11:40:01', '2017-07-29 14:40:01', 0, 'AA1DABCA-B742-DA65-9261-2C0E5DE286FC', '1-575242df871f11db8eb7e3ce0dc7608b', 'Lalin bruno', '-34.6958149,-58.7501841', '2017-07-29 11:31:17', '', '', '', '+50', 'Si', 'M', 'No', 'No', 'R', 'No', 'Si', 'Si', 'No', 'No', 'NS/NC'),
(251, '2017-07-29 11:40:01', '2017-07-29 14:40:01', 0, 'C2B964B6-7512-3CF4-B57E-4891BF57116B', '1-20683ac6bb07610e7166dbf80da910ae', '33240543', '-34.6950019,-58.7483509', '2017-07-29 11:34:33', '', 'Clara', '', '+60', 'Si', 'R', 'Si', 'Si', 'R', 'No', 'Si', 'Si', 'No', 'No', 'Frente Renovador'),
(252, '2017-07-29 11:40:01', '2017-07-29 14:40:01', 0, 'CEAA692A-A0B3-0DEE-87E4-E7E1CB52A13C', '1-c3511c1d68f20d0ca09405df46e7fa08', 'Gonzalo 39759127 gonzi_08_elmasgrande@hotmail.com', '-34.6965619,-58.7492452', '2017-07-29 11:36:19', '', 'Jorge', '1165209908', '40-59', 'Si', 'B', 'Si', 'Si', 'R', 'Si', 'Si', 'Si', 'Si', 'Si', 'Cambiemos'),
(253, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '25707401-A4CF-CC45-9C75-1D627F3D7439', '1-00d856cad845354c0d6dc4c15d7f242d', 'Gonzalo 39759127 gonzi_08_elmasgrande@hotmail.com', '-34.6969689,-58.7486192', '2017-07-29 11:44:50', '', 'María', '', '+60', 'Si', 'R', 'Si', 'Si', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'NS/NC'),
(254, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '47585436-8704-70DF-BDFB-2F4E4543FBCD', '1-d6b83a8a424592cab6ffe7b33152fe03', 'Jessica demichelis', '-34.6970283,-58.7494464', '2017-07-29 11:42:27', '', 'Viviana', '', '40-59', 'Si', 'B', 'Si', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana'),
(255, '2017-07-29 11:50:01', '2017-07-29 14:50:01', 0, '6BC1CF6B-7F41-8DD0-8237-5ECC685F3F56', '1-45e385b31665ee33523006e46e4f71bd', '33240543', '-34.6947442,-58.7470319', '2017-07-29 11:46:55', '', 'Nancy herrera', '', '40-59', 'Si', 'M', 'No', 'No', 'B', 'Si', 'Si', 'Si', 'Si', 'Si', 'Union Ciudadana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `das_charts`
--

CREATE TABLE IF NOT EXISTS `das_charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Activo',
  `type` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `group_field` varchar(100) NOT NULL,
  `group_type` varchar(100) NOT NULL,
  `display_field` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_entrantes`
--

CREATE TABLE IF NOT EXISTS `msg_entrantes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_mensaje` varchar(100) NOT NULL,
  `server_id` int(10) NOT NULL,
  `remitente` varchar(100) NOT NULL,
  `asunto` varchar(500) NOT NULL,
  `cuerpo` text NOT NULL,
  `error` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_mensajes`
--

CREATE TABLE IF NOT EXISTS `msg_mensajes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_envio` datetime NOT NULL,
  `prioridad` int(1) NOT NULL DEFAULT '3',
  `server_id` int(10) NOT NULL,
  `html` varchar(2) NOT NULL DEFAULT 'Si',
  `destino` varchar(100) NOT NULL,
  `asunto` varchar(500) NOT NULL,
  `cuerpo` text NOT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `vista` varchar(100) DEFAULT NULL,
  `variables` mediumtext,
  `headers` varchar(1000) NOT NULL DEFAULT '[]',
  `adjuntos` varchar(200) NOT NULL DEFAULT '[]',
  `estado` varchar(20) NOT NULL DEFAULT 'Sin enviar',
  `intentos` int(1) NOT NULL DEFAULT '0',
  `error` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_notifications`
--

CREATE TABLE IF NOT EXISTS `msg_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `model_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `read` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_notifications_messages`
--

CREATE TABLE IF NOT EXISTS `msg_notifications_messages` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `model` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`,`action`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_notifications_users`
--

CREATE TABLE IF NOT EXISTS `msg_notifications_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `notificacion_id` (`notification_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `read` (`read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msg_servers`
--

CREATE TABLE IF NOT EXISTS `msg_servers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `estado` varchar(8) NOT NULL DEFAULT 'Activo',
  `tipo` varchar(10) NOT NULL,
  `seguridad` varchar(3) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `puerto` int(5) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `cuenta` varchar(100) NOT NULL,
  `remitente` varchar(500) NOT NULL,
  `responder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `host` (`host`,`cuenta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `msg_servers`
--

INSERT INTO `msg_servers` (`id`, `fecha_carga`, `fecha_modificacion`, `estado`, `tipo`, `seguridad`, `host`, `puerto`, `usuario`, `clave`, `cuenta`, `remitente`, `responder`) VALUES
(1, '2016-03-03 07:50:40', '2016-08-29 17:04:57', 'Activo', 'SMTP', 'SSL', 'smtp.buenosaires.gob.ar', 465, 'servicios_atciu@buenosaires.gob.ar', 'Sistemas10.', 'servicios_atciu@buenosaires.gob.ar', 'Secretaría de Descentralización', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_bans`
--

CREATE TABLE IF NOT EXISTS `sys_bans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_bloqueos`
--

CREATE TABLE IF NOT EXISTS `sys_bloqueos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `model` varchar(50) NOT NULL,
  `model_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `sys_bloqueos`
--

INSERT INTO `sys_bloqueos` (`id`, `fecha_carga`, `session_id`, `user_id`, `model`, `model_id`) VALUES
(27, '2017-07-29 17:43:36', 'cmtvbahjd16dknequ2d7k5qk11', 2, 'CargaCampana', 1),
(28, '2017-07-29 17:45:47', 'cmtvbahjd16dknequ2d7k5qk11', 2, 'CargaCampana', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_compilations`
--

CREATE TABLE IF NOT EXISTS `sys_compilations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_configurations`
--

CREATE TABLE IF NOT EXISTS `sys_configurations` (
  `id` int(10) NOT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `empresa` varchar(250) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `footer` varchar(200) NOT NULL,
  `server_emails` int(2) DEFAULT NULL,
  `server_sms` int(2) DEFAULT NULL,
  `max_emails` int(5) NOT NULL DEFAULT '1',
  `max_emails_dominio` int(5) NOT NULL DEFAULT '1',
  `version` varchar(10) DEFAULT '1.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sys_configurations`
--

INSERT INTO `sys_configurations` (`id`, `fecha_modificacion`, `empresa`, `telefono`, `fax`, `email`, `web`, `footer`, `server_emails`, `server_sms`, `max_emails`, `max_emails_dominio`, `version`) VALUES
(1, '2017-07-26 13:31:13', 'PRO', '', '', 'federicobouzas@gmail.com', 'admin.timbrea.me', 'PRO - Cambiemos', NULL, NULL, 5, 5, '1.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_crons`
--

CREATE TABLE IF NOT EXISTS `sys_crons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `clase_shell` varchar(100) NOT NULL,
  `fecha_ultima_ejecucion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clase_shell` (`clase_shell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_estados`
--

CREATE TABLE IF NOT EXISTS `sys_estados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sys_estados`
--

INSERT INTO `sys_estados` (`id`, `nombre`, `valor`) VALUES
(1, 'enviando_emails', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_files`
--

CREATE TABLE IF NOT EXISTS `sys_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `model` varchar(100) NOT NULL,
  `model_id` int(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `model` (`model`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_logins`
--

CREATE TABLE IF NOT EXISTS `sys_logins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_logs`
--

CREATE TABLE IF NOT EXISTS `sys_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_carga` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `model` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `model_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `fecha_carga`, `user_id`, `model`, `action`, `model_id`) VALUES
(1, '2017-07-03 15:46:55', 1, 'Right', 'Agregó un registro', 16),
(2, '2017-07-03 15:47:08', 1, 'Rol', 'Editó el registro', 1),
(3, '2017-07-03 15:48:53', 1, 'Right', 'Editó el registro', 16),
(4, '2017-07-03 20:25:53', 1, 'Rol', 'Editó el registro', 1),
(5, '2017-07-06 20:23:25', 1, 'CargaMerlo', 'Eliminó el registro', 177),
(6, '2017-07-06 20:23:30', 1, 'CargaMerlo', 'Eliminó el registro', 178),
(7, '2017-07-06 21:04:22', 1, 'CargaMerlo', 'Eliminó el registro', 179),
(8, '2017-07-06 21:04:26', 1, 'CargaMerlo', 'Eliminó el registro', 180),
(9, '2017-07-06 21:04:31', 1, 'CargaMerlo', 'Eliminó el registro', 181),
(10, '2017-07-22 15:08:11', 1, 'Right', 'Editó el registro', 16),
(11, '2017-07-22 15:09:27', 1, 'Button', 'Agregó un registro', 4),
(12, '2017-07-22 15:09:57', 1, 'Button', 'Agregó un registro', 5),
(13, '2017-07-22 15:10:37', 1, 'Button', 'Agregó un registro', 6),
(14, '2017-07-22 15:10:47', 1, 'Rol', 'Editó el registro', 1),
(15, '2017-07-22 15:20:59', 1, 'Right', 'Editó el registro', 16),
(16, '2017-07-22 15:21:13', 1, 'Right', 'Agregó un registro', 17),
(17, '2017-07-22 15:21:21', 1, 'Rol', 'Editó el registro', 1),
(18, '2017-07-22 15:21:47', 1, 'Rol', 'Agregó un registro', 2),
(19, '2017-07-22 15:22:01', 1, 'Button', 'Editó el registro', 6),
(20, '2017-07-22 15:22:11', 1, 'Rol', 'Editó el registro', 2),
(21, '2017-07-22 15:22:33', 1, 'Rol', 'Agregó un registro', 3),
(22, '2017-07-22 15:23:17', 1, 'User', 'Agregó un registro', 2),
(23, '2017-07-22 15:23:32', 1, 'User', 'Editó el registro', 1),
(24, '2017-07-22 15:24:23', 1, 'User', 'Agregó un registro', 3),
(25, '2017-07-24 10:14:12', 1, 'Rol', 'Editó el registro', 1),
(26, '2017-07-26 09:31:13', 1, 'Configuration', 'Editó el registro', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acc_buttons`
--
ALTER TABLE `acc_buttons`
  ADD CONSTRAINT `acc_buttons_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `acc_buttons_rols`
--
ALTER TABLE `acc_buttons_rols`
  ADD CONSTRAINT `acc_buttons_rols_ibfk_1` FOREIGN KEY (`button_id`) REFERENCES `acc_buttons` (`id`),
  ADD CONSTRAINT `acc_buttons_rols_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `acc_rols` (`id`);

--
-- Filtros para la tabla `acc_permisos`
--
ALTER TABLE `acc_permisos`
  ADD CONSTRAINT `acc_permisos_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `acc_rights`
--
ALTER TABLE `acc_rights`
  ADD CONSTRAINT `acc_rights_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `acc_rights_rols`
--
ALTER TABLE `acc_rights_rols`
  ADD CONSTRAINT `acc_rights_rols_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `acc_rights` (`id`),
  ADD CONSTRAINT `acc_rights_rols_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `acc_rols` (`id`);

--
-- Filtros para la tabla `acc_right_permisos`
--
ALTER TABLE `acc_right_permisos`
  ADD CONSTRAINT `acc_right_permisos_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `acc_rights` (`id`);

--
-- Filtros para la tabla `acc_rols`
--
ALTER TABLE `acc_rols`
  ADD CONSTRAINT `acc_rols_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `acc_users_recovers`
--
ALTER TABLE `acc_users_recovers`
  ADD CONSTRAINT `acc_users_recovers_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `msg_entrantes`
--
ALTER TABLE `msg_entrantes`
  ADD CONSTRAINT `msg_entrantes_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `msg_servers` (`id`);

--
-- Filtros para la tabla `msg_notifications`
--
ALTER TABLE `msg_notifications`
  ADD CONSTRAINT `msg_notifications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `msg_notifications_messages`
--
ALTER TABLE `msg_notifications_messages`
  ADD CONSTRAINT `msg_notifications_messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `msg_notifications_users`
--
ALTER TABLE `msg_notifications_users`
  ADD CONSTRAINT `msg_notifications_users_ibfk_3` FOREIGN KEY (`notification_id`) REFERENCES `msg_notifications` (`id`),
  ADD CONSTRAINT `msg_notifications_users_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `sys_bloqueos`
--
ALTER TABLE `sys_bloqueos`
  ADD CONSTRAINT `sys_bloqueos_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

--
-- Filtros para la tabla `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD CONSTRAINT `sys_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `acc_users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET foreign_key_checks = 1;