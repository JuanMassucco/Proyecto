-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-09-2020 a las 13:58:04
-- Versión del servidor: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupo11`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_estudiante_taller`
--

CREATE TABLE `asistencia_estudiante_taller` (
  `estudiante_id` int(11) NOT NULL,
  `taller_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia_estudiante_taller`
--

INSERT INTO `asistencia_estudiante_taller` (`estudiante_id`, `taller_id`, `fecha`) VALUES
(7, 1, '2019-12-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id`, `nombre`) VALUES
(1, 'Barrio Náutico'),
(2, 'Barrio Obrero'),
(3, 'Berisso'),
(4, 'Barrio Solidaridad'),
(5, 'Barrio Obrero'),
(6, 'Barrio Bco. Pcia.'),
(7, 'Barrio J.B. Justo'),
(8, 'Barrio Obrero'),
(9, 'El Carmen'),
(10, 'El Labrador'),
(11, 'Ensenada'),
(12, 'La Hermosura'),
(13, 'La PLata'),
(14, 'Los Talas'),
(15, 'Ringuelet'),
(16, 'Tolosa'),
(17, 'Villa Alba'),
(18, 'Villa Arguello'),
(19, 'Villa B. C'),
(20, 'Villa Elvira'),
(21, 'Villa Nueva'),
(22, 'Villa Paula'),
(23, 'Villa Progreso'),
(24, 'Villa San Carlos'),
(25, 'Villa Zula');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo_lectivo`
--

CREATE TABLE `ciclo_lectivo` (
  `id` int(11) NOT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `semestre` tinyint(1) NOT NULL DEFAULT '1',
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciclo_lectivo`
--

INSERT INTO `ciclo_lectivo` (`id`, `fecha_ini`, `fecha_fin`, `semestre`, `baja_logica`) VALUES
(1, '2019-07-28', '2019-12-21', 1, 0),
(2, '2020-03-01', '2020-07-18', 1, 1),
(3, '2022-02-01', '2022-05-24', 1, 1),
(4, '2020-03-01', '2020-07-18', 1, 1),
(5, '2020-01-01', '2020-07-30', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cant` int(11) NOT NULL,
  `ok` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `titulo`, `descrip`, `email`, `cant`, `ok`) VALUES
(1, 'Orquesta escuela de berisso', 'una descripcion', '125555555553@dwd.com', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `localidad_id` int(11) NOT NULL,
  `domicilio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genero_id` int(11) NOT NULL,
  `tipo_doc_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `usuario_id`, `apellido`, `nombre`, `fecha_nac`, `localidad_id`, `domicilio`, `genero_id`, `tipo_doc_id`, `numero`, `tel`, `baja_logica`) VALUES
(12, 6, 'mario', 'mario', '2018-08-17', 9, 'mariomariomariomariomario', 1, 1, 457465345, '85345353', 0),
(13, 7, 'pedropedropedropedropedropedro', 'pedro', '1975-06-17', 4, 'pedropedropedropedropedro', 1, 1, 65463645, '436575', 0),
(14, 12, 'lorena', 'lorena', '1993-03-04', 5, 'lorenalorenalorenalorena', 2, 1, 543643523, '652345234', 0),
(15, 13, 'gisela', 'gisela', '1988-02-02', 11, 'giselagiselagisela', 2, 1, 65478654, '68675464', 0),
(16, 11, 'nico', 'nico', '1998-03-04', 6, 'niconiconico', 1, 1, 255646355, '654753453', 0),
(17, 16, 'alicia', 'alicia', '1989-02-16', 12, 'aliciaaliciaaliciaaliciaaliciaalicia', 2, 1, 2147483647, '747546546', 0),
(18, 20, 'maria', 'maria', '1998-12-09', 1, 'analiaanaliaanaliaanalia', 2, 2, 46554655, '54654733', 0),
(19, 25, 'magali', 'magali', '2018-08-17', 3, 'magalimagalimagalimagali', 2, 4, 2147483647, '4365235344', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_responsable_taller`
--

CREATE TABLE `docente_responsable_taller` (
  `docente_id` int(11) NOT NULL,
  `taller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docente_responsable_taller`
--

INSERT INTO `docente_responsable_taller` (`docente_id`, `taller_id`) VALUES
(12, 1),
(14, 1),
(12, 5),
(14, 6),
(15, 6),
(18, 6),
(19, 6),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(12, 8),
(13, 8),
(14, 8),
(19, 8),
(13, 9),
(14, 9),
(15, 9),
(16, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id`, `nombre`, `direccion`, `telefono`) VALUES
(1, '502', NULL, NULL),
(2, 'Albert Thomas', NULL, NULL),
(3, 'Anexa', NULL, NULL),
(4, 'Anexo T. Speroni', NULL, NULL),
(5, 'Basiliana', NULL, NULL),
(6, 'Basiliano', NULL, NULL),
(7, 'Bellas Artes', NULL, NULL),
(8, 'Canossiano', NULL, NULL),
(9, 'Castañeda', NULL, NULL),
(10, 'Col. Nacional', NULL, NULL),
(11, 'Conquista Cristiana', NULL, NULL),
(12, 'Dardo Rocha N° 24', NULL, NULL),
(13, 'E.E.M.N° 2', NULL, NULL),
(14, 'E.M. N°26', NULL, NULL),
(15, 'E.P. Municipal N° 2', NULL, NULL),
(16, 'EE N° 2', NULL, NULL),
(17, 'EEE N° 501', NULL, NULL),
(18, 'EEE N°501', NULL, NULL),
(19, 'EEM N° 1', NULL, NULL),
(20, 'EEM N° 26 L.P', NULL, NULL),
(21, 'EEM N°128', NULL, NULL),
(22, 'EEM N°2', NULL, NULL),
(23, 'EES N° 10', NULL, NULL),
(24, 'EES N° 14', NULL, NULL),
(25, 'EES N° 4', NULL, NULL),
(26, 'EES N° 4 Berisso', NULL, NULL),
(27, 'EES N° 4 El Pino', NULL, NULL),
(28, 'EEST N° 1 bsso', NULL, NULL),
(29, 'EET Nº 1', NULL, NULL),
(30, 'EET Nº1', NULL, NULL),
(31, 'EGB N°25', NULL, NULL),
(32, 'EM N° 2', NULL, NULL),
(33, 'EMM N° 3', NULL, NULL),
(34, 'EP N° 1 L.P-', NULL, NULL),
(35, 'EP N° 11', NULL, NULL),
(36, 'EP N° 129', NULL, NULL),
(37, 'EP N° 14', NULL, NULL),
(38, 'EP N° 15', NULL, NULL),
(39, 'EP N° 17', NULL, NULL),
(40, 'EP N° 18', NULL, NULL),
(41, 'EP N° 19', NULL, NULL),
(42, 'EP N° 2', NULL, NULL),
(43, 'EP N° 20', NULL, NULL),
(44, 'EP N° 22', NULL, NULL),
(45, 'EP N° 25', NULL, NULL),
(46, 'EP N° 27', NULL, NULL),
(47, 'EP N° 3', NULL, NULL),
(48, 'EP N° 37 LP', NULL, NULL),
(49, 'EP N° 43', NULL, NULL),
(50, 'EP N° 45', NULL, NULL),
(51, 'EP N° 5', NULL, NULL),
(52, 'EP N° 6', NULL, NULL),
(53, 'EP N° 65 La Plata', NULL, NULL),
(54, 'EP N° 7', NULL, NULL),
(55, 'EPB N° 10', NULL, NULL),
(56, 'EPB N° 14', NULL, NULL),
(57, 'EPB N° 15', NULL, NULL),
(58, 'EPB N° 19', NULL, NULL),
(59, 'EPB N° 2', NULL, NULL),
(60, 'EPB N° 20', NULL, NULL),
(61, 'EPB N° 24', NULL, NULL),
(62, 'EPB N° 25', NULL, NULL),
(63, 'EPB N° 45', NULL, NULL),
(64, 'EPB N° 5', NULL, NULL),
(65, 'EPB N° 55', NULL, NULL),
(66, 'EPB N° 6', NULL, NULL),
(67, 'EPB N° 65', NULL, NULL),
(68, 'EPB N° 8', NULL, NULL),
(69, 'ESB N° 10', NULL, NULL),
(70, 'ESB N° 11', NULL, NULL),
(71, 'ESB N° 14', NULL, NULL),
(72, 'ESB N° 3', NULL, NULL),
(73, 'ESB N° 61', NULL, NULL),
(74, 'ESB N° 66', NULL, NULL),
(75, 'ESB N° 8', NULL, NULL),
(76, 'ESB N° 9', NULL, NULL),
(77, 'ESC N° 10', NULL, NULL),
(78, 'ESC N° 13', NULL, NULL),
(79, 'ESC N° 19', NULL, NULL),
(80, 'ESC N° 2', NULL, NULL),
(81, 'ESC N° 20', NULL, NULL),
(82, 'ESC N° 22', NULL, NULL),
(83, 'ESC N° 23', NULL, NULL),
(84, 'ESC N° 24', NULL, NULL),
(85, 'ESC N° 25', NULL, NULL),
(86, 'ESC N° 27', NULL, NULL),
(87, 'ESC N° 3', NULL, NULL),
(88, 'ESC N° 43', NULL, NULL),
(89, 'ESC N° 45', NULL, NULL),
(90, 'ESC N° 5', NULL, NULL),
(91, 'ESC N° 501', NULL, NULL),
(92, 'ESC N° 6', NULL, NULL),
(93, 'ESC N° 66', NULL, NULL),
(94, 'ESC N° 7', NULL, NULL),
(95, 'ESC N° 8', NULL, NULL),
(96, 'ESC N°11', NULL, NULL),
(97, 'ESC N°17', NULL, NULL),
(98, 'ESC N°19', NULL, NULL),
(99, 'ESC N°3', NULL, NULL),
(100, 'ESC N°7', NULL, NULL),
(101, 'ESC de Arte', NULL, NULL),
(102, 'ESS N° 4', NULL, NULL),
(103, 'Enseñanza Media', NULL, NULL),
(104, 'Especial N° 502', NULL, NULL),
(105, 'Estrada', NULL, NULL),
(106, 'FACULTAD', NULL, NULL),
(107, 'INDUSTRIAL', NULL, NULL),
(108, 'Italiana', NULL, NULL),
(109, 'J 904', NULL, NULL),
(110, 'J. Manuel Strada', NULL, NULL),
(111, 'Jacarandá', NULL, NULL),
(112, 'Jardín Euforion', NULL, NULL),
(113, 'Jardín N° 903', NULL, NULL),
(114, 'Jardín N° 907', NULL, NULL),
(115, 'JoaquinV.Gonzalez', NULL, NULL),
(116, 'Lola Mora sec', NULL, NULL),
(117, 'Lujan Sierra', NULL, NULL),
(118, 'MUNICIOAL 11', NULL, NULL),
(119, 'María Auxiliadora', NULL, NULL),
(120, 'María Reina', NULL, NULL),
(121, 'Media 2 España', NULL, NULL),
(122, 'Media N 1', NULL, NULL),
(123, 'Mercedita de S.Martin', NULL, NULL),
(124, 'Monseñor Alberti', NULL, NULL),
(125, 'Mtro Luis MKEY', NULL, NULL),
(126, 'Mñor. Rasore', NULL, NULL),
(127, 'N1 Francisco', NULL, NULL),
(128, 'Normal 2', NULL, NULL),
(129, 'Normal 3 LP', NULL, NULL),
(130, 'Normal n 2', NULL, NULL),
(131, 'Ntra Sra Lourdes', NULL, NULL),
(132, 'Ntra. Sra. del Valle', NULL, NULL),
(133, 'PSICOLOGIA', NULL, NULL),
(134, 'Parroquial', NULL, NULL),
(135, 'Pasos del Libertedor', NULL, NULL),
(136, 'Ped 61', NULL, NULL),
(137, 'Pedagogica', NULL, NULL),
(138, 'SEC N° 8', NULL, NULL),
(139, 'SEC N°17', NULL, NULL),
(140, 'San Simón', NULL, NULL),
(141, 'Santa Rosa', NULL, NULL),
(142, 'Sra de Fátima', NULL, NULL),
(143, 'Sta Margarita', NULL, NULL),
(144, 'Sta Ro. de Lima', NULL, NULL),
(145, 'Sta Rosa', NULL, NULL),
(146, 'Sta Rosa Lima', NULL, NULL),
(147, 'Sta. R. de Lima', NULL, NULL),
(148, 'Sta. Rosa de lima', NULL, NULL),
(149, 'Técnica N° 1', NULL, NULL),
(150, 'Técnica N° 1 Berisso', NULL, NULL),
(151, 'Técnica N° 5', NULL, NULL),
(152, 'Técnica N° 7', NULL, NULL),
(153, 'UCALP', NULL, NULL),
(154, 'UNLP', NULL, NULL),
(155, 'UTN', NULL, NULL),
(156, 'Universitas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `localidad_id` int(11) NOT NULL,
  `nivel_id` int(11) NOT NULL,
  `domicilio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genero_id` int(11) NOT NULL,
  `escuela_id` int(11) NOT NULL,
  `tipo_doc_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barrio_id` int(11) NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `apellido`, `nombre`, `fecha_nac`, `localidad_id`, `nivel_id`, `domicilio`, `genero_id`, `escuela_id`, `tipo_doc_id`, `numero`, `tel`, `barrio_id`, `baja_logica`) VALUES
(5, 'marioj', 'marioj', '2019-11-17', 1, 1, 'mariojmariojmariojmariojmariojmarioj', 1, 1, 1, 23423423, '43423424', 18, 0),
(6, 'pabloj', 'pabloooooooo', '2002-04-10', 1, 6, 'pablopablopablopablopablopablopablo', 1, 16, 1, 213213213, '213123322', 14, 0),
(7, 'Abbott', 'Abbott', '2019-11-20', 9, 9, 'domicilio 123123', 1, 1, 1, 23567093, '134123414314', 1, 0),
(8, 'ABRIL', 'ABRIL', '2019-11-20', 9, 9, 'domicilio 123123', 1, 1, 1, 23567093, '134123414314', 1, 0),
(9, 'ADRIÁN', 'ADRIÁN', '2019-11-20', 9, 9, 'domicilio 123123', 1, 1, 1, 23567093, '134123414314', 1, 0),
(10, 'ALBÀ', 'ALBÀ', '2019-11-20', 9, 9, 'domicilio 123123', 1, 1, 1, 23567093, '134123414', 1, 0),
(11, 'Elena', 'Elena', '2019-11-04', 6, 7, 'tobiastobiastobiastobias', 2, 15, 1, 21321313, '', 1, 0),
(12, 'Lopez', 'Abey', '2019-11-20', 8, 6, 'domicilio 123123', 2, 1, 1, 23567093, '222222222222222', 9, 0),
(13, 'Beltrame', 'Abey', '2019-11-05', 10, 3, 'brown 1235', 1, 1, 1, 33567093, '2218975664', 1, 0),
(14, 'Simpsons', 'Bort', '1997-05-12', 12, 1, 'la matanza', 1, 2, 1, 41567823, '2214568967', 1, 0),
(15, 'Erika', 'Erika', '2019-11-06', 11, 10, 'pablopablopablopablopablopablopablo', 1, 14, 3, 32432565, '423454543', 17, 0),
(17, 'liser', 'simpsons', '1985-03-12', 12, 1, 'la matanza', 2, 2, 1, 42672123, '2217438593', 1, 0),
(18, 'Evelyn ', 'Evelyn ', '2019-05-09', 9, 4, 'mariojmariojmariojmariojmariojmarioj', 2, 13, 4, 2147483647, '23534163', 17, 0),
(19, 'Mercedes', 'Funetes', '1800-02-22', 10, 5, 'siempreviva 123', 2, 1, 1, 43287403, '2235542444', 7, 0),
(20, 'Evelyn ', 'Evelyn ', '2019-05-09', 8, 4, 'mariojmariojmariojmariojmariojmarioj', 2, 13, 1, 2343253, '23534163', 17, 0),
(21, 'maggie', 'simpsons', '2001-04-22', 12, 1, 'la matanza', 2, 2, 1, 42674892, '2217489823', 1, 0),
(22, 'Elisabeth ', 'Elisabeth ', '2019-11-14', 8, 1, '3 num 89', 1, 1, 1, 23567093, '1234567899', 17, 0),
(23, 'Emma ', 'Emma  ', '2019-11-14', 8, 1, '3 num 89', 1, 1, 1, 23567093, '1234567899', 17, 0),
(24, 'Ramiro', 'Ramirez', '2019-11-14', 8, 1, '3 num 89', 1, 1, 1, 23567093, '1234567899', 17, 0),
(25, 'carlos', 'carlos', '2019-11-14', 8, 1, '3 num 89', 1, 1, 1, 23567093, '123456789', 17, 0),
(26, 'simspsons', 'bart', '1982-03-12', 8, 1, 'la matanza', 1, 2, 1, 38728123, '2217648291', 1, 0),
(27, 'Bertone', 'Gonzalo', '1990-08-10', 8, 3, 'Alvear 390', 1, 15, 1, 35907080, '221456789', 17, 0),
(28, 'Ramiro', 'Ramiro', '2019-11-14', 8, 1, 'calle 89', 1, 1, 1, 23567093, '123456789', 17, 0),
(29, 'Eva ', 'Eva ', '2019-10-23', 7, 3, 'mariojmariojmariojmariojmariojmarioj', 1, 10, 2, 34234325, '21321455', 14, 0),
(30, 'CARLA', 'CARLA', '2019-11-14', 10, 1, 'calle 89', 1, 1, 1, 23567093, '123456789', 17, 0),
(31, 'lenny', 'lenard', '1992-07-12', 1, 1, 'bahia blanca', 1, 2, 1, 30123845, '2217648904', 1, 0),
(32, 'Mazza', 'Juan', '1999-04-20', 6, 8, 'Olivera 300', 1, 15, 1, 40909090, '2216795046', 11, 0),
(33, 'David ', 'David ', '2019-11-14', 5, 10, 'mariojmariojmariojmariojmariojmarioj', 1, 10, 1, 42343256, '12335463452', 11, 0),
(34, 'Bayaceto', 'Mia', '2019-11-11', 3, 1, 'brown 1235', 2, 3, 1, 382910483, '2215566778', 1, 0),
(35, 'rafa', 'gorgojo', '1999-08-27', 12, 1, 'la matanza', 1, 16, 1, 43782984, '2219854567', 1, 0),
(36, 'Amiotti', 'Belen', '1998-09-14', 4, 6, 'Portugal 340', 2, 8, 4, 32090909, '221-2390292', 6, 0),
(37, 'pablo', 'pablo', '2019-04-12', 6, 4, 'mariojmariojmariojmariojmariojmarioj', 1, 9, 1, 32423523, '4353643', 13, 0),
(38, 'Juarez', 'Valentina', '1996-09-30', 10, 5, 'Faustino 300', 2, 15, 2, 32940934, '2223094849', 16, 0),
(39, 'barreda', 'milton', '1994-08-23', 1, 1, 'bahia blanca', 1, 1, 1, 39876345, '2218906547', 1, 0),
(40, 'Natalia', 'Bayaceto', '2003-11-08', 12, 1, 'calle 89', 1, 1, 1, 382910483, '2215566778', 15, 0),
(41, 'ElNoQuerido', 'Abdala', '2019-11-13', 10, 3, 'brown 1235', 1, 1, 1, 12312312, '123456789', 14, 0),
(42, 'pablo', 'Ryan ', '2009-07-09', 3, 7, 'mariojmariojmariojmariojmariojmarioj', 1, 8, 1, 8798797, '78980556', 18, 0),
(43, 'sargento', 'pepe', '1992-09-08', 11, 1, 'ensenada', 1, 2, 1, 32874012, '2217896349', 1, 0),
(44, 'Jacinto', 'Ramirez', '1996-09-14', 3, 10, 'Rivadavia890', 1, 1, 3, 21039029, '2233989898', 18, 0),
(45, 'LaQuerida', 'Abdala', '2019-11-21', 9, 10, 'brown 1235', 2, 1, 1, 33567093, '1234567899', 1, 0),
(46, 'Emilia ', 'Emilia ', '1972-02-17', 8, 5, 'mariojmariojmariojmariojmariojmarioj', 2, 16, 1, 90889098, '7978965', 1, 0),
(47, 'sargento', 'monica', '1999-04-23', 4, 1, 'pergamino', 1, 8, 1, 41980273, '221874029|', 1, 0),
(48, 'Laura', 'Perez', '2000-10-09', 9, 3, 'Dorrego200', 2, 11, 1, 38009090, '221029090', 15, 0),
(49, 'macri', 'antonia', '1998-02-27', 8, 1, 'mar del plata ', 2, 11, 1, 45982482, '2217849037', 1, 0),
(50, 'Yanina', 'Latorre', '2003-09-12', 8, 8, 'Herrera 400', 2, 12, 1, 34909090, '0129019209', 14, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_taller`
--

CREATE TABLE `estudiante_taller` (
  `estudiante_id` int(11) NOT NULL,
  `taller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante_taller`
--

INSERT INTO `estudiante_taller` (`estudiante_id`, `taller_id`) VALUES
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(25, 1),
(26, 1),
(27, 1),
(48, 2),
(49, 2),
(50, 2),
(5, 3),
(6, 3),
(8, 3),
(15, 3),
(17, 3),
(18, 3),
(5, 4),
(7, 4),
(8, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(7, 5),
(8, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(17, 5),
(18, 5),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(18, 6),
(19, 6),
(20, 6),
(5, 7),
(6, 7),
(9, 7),
(10, 7),
(15, 7),
(19, 7),
(5, 8),
(7, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(14, 9),
(15, 9),
(17, 9),
(18, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id` int(11) NOT NULL,
  `inventario` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `instrumento`
--

INSERT INTO `instrumento` (`id`, `inventario`, `nombre`, `tipo_id`, `imagen`) VALUES
(4, 23543, 'guitarra 222', 1, 'img23535'),
(5, 2147483647, 'zanfona', 2, 'img45897987394233244'),
(6, 2147483647, 'zamfona', 2, 'img23124124234134');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nombre`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII'),
(9, 'IX'),
(10, 'X'),
(11, 'XI'),
(12, 'XII');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nucleo`
--

CREATE TABLE `nucleo` (
  `id` int(11) NOT NULL,
  `nombre_nucleo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0',
  `latitud` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `longitud` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `nucleo`
--

INSERT INTO `nucleo` (`id`, `nombre_nucleo`, `direccion`, `telefono`, `baja_logica`, `latitud`, `longitud`, `descripcion`) VALUES
(1, 'Escuela N°25', '126 e/ 29 y 30 ', '12341234', 0, '-34.92614', '-57.89337', 'Crucero General Belgrano'),
(2, 'Escuela Primaria N°17', '164 y 26', '12341234', 0, '-34.88106', '-57.86989', 'Ignacio Gorriti'),
(3, 'Club Villa Roca', '26 e/ 163 y 164', '12341234', 0, '-34.88106', '-57.86989', ''),
(4, 'CIC', '169 y 33', '12341234', 0, '-34.88197', '-57.85786', '(Centro Integración Complementaria)'),
(5, 'Parroquia', '63 y 124', '12341234', 0, '-34.90742', '-57.92209', 'San Miguel Arcangel'),
(6, 'Club Español', '6 entre 53 y 54', '12341234', 0, '-34.91549', '-57.94636', ''),
(7, 'Escuela Primaria N°19', '6 entre 143 y 144', '12341234', 0, '-34.88968', '-57.90651', 'Santiago del Estero '),
(8, 'Escuela Primaria N°7', '151 entre 8 y 9', '12341234', 0, '-34.88432', '-57.89835', 'General Enrique Mosconi'),
(9, 'Escuela Primaria N°6', '8 y 158', '12341234', 0, '-34.87643', '-57.89288', 'Gabriela Mistral'),
(10, 'Escuela Primaria N°22 ', '32 y 173', '12341234', 0, '-34.87646', '-57.85595', 'Independencia del Peru'),
(11, 'Escuela N°20', 'ruta 11 km 13- Pje La Hermosura', '12341234', 0, '-34.958026', '-57.817933', ''),
(12, 'Escuela Primaria N°8', '63 y 125', '12341234', 0, '-34.906503', '-57.921736', ''),
(13, 'Escuela Primaria N°14', '96 y 126', '12341234', 0, '-34.929916', '-57.885622', ''),
(14, 'Jardin N°904', '164 30 y 31', '12341234', 0, '-34.884417', '-57.864037', ''),
(15, 'Escuela N°501', 'Pascual Ruberto e/ 168 y 169', '12341234', 0, '-34.881210', '-57.860280', ''),
(16, 'Centro Cultural', '44 y 126', '12341234', 0, '-34.933835', '-57.880966', 'Papa Francisco'),
(17, 'Teatro Argentino', '53 9 y 10', '12341234', 0, '-34.917821', '-57.951451', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id`, `nombre`, `ruta`, `visible`) VALUES
(1, 'Mostrar los estudiantes', 'estudiante_index', 1),
(2, 'Mostrar los usuarios', 'usuario_index', 1),
(3, 'Cargar un estudiante', 'estudiante_new', 0),
(4, 'Cargar un estudiante', 'estudiante_create', 0),
(5, 'Mostrar estudiante', 'estudiante_show', 0),
(6, 'Editar un estudiante', 'estudiante_edit', 0),
(7, 'Cargar un usuario', 'usuario_new', 0),
(8, 'Cargar un usuario', 'usuario_create', 0),
(9, 'Editar un usuario', 'usuario_edit', 0),
(10, 'Mostrar usuario', 'usuario_show', 0),
(11, 'Eliminar un estudiante', 'estudiante_destroy', 0),
(12, 'Eliminar un usuario', 'usuario_destroy', 0),
(13, 'Setear configuración', 'configurar_pagina_guardar', 0),
(14, 'Setear configuración', 'configurar_pagina', 1),
(15, 'Bloquear un usuario', 'usuario_block', 0),
(16, 'Editar un usuario', 'usuario_mostrar_edit', 0),
(17, 'Editar un estudiante', 'estudiante_mostrar_edit', 0),
(18, 'Asignar permisos', 'asignar_permisos', 1),
(19, 'Asignar permisos', 'rolpermiso_destroy', 0),
(20, 'Asignar permisos', 'rolpermiso_create', 0),
(21, 'Mostrar cliclos lectivos', 'ciclo_lectivo_index', 1),
(22, 'Mostrar ciclo lectivo', 'ciclo_lectivo_show', 0),
(23, 'Crear nuevo ciclo lectivo', 'ciclo_lectivo_new', 0),
(24, 'Crear nuevo ciclo lectivo', 'ciclo_lectivo_create', 0),
(25, 'Modificar nuevo ciclo lectivo', 'ciclo_lectivo_edit', 0),
(26, 'Asignar taller a un ciclo lectivo', 'taller_new', 0),
(27, 'Asignar taller a un ciclo lectivo', 'taller_create', 0),
(64, 'Cargar tipo de taller', 'tipo_taller_new', 0),
(65, 'Cargar tipo de taller', 'tipo_taller_create', 0),
(66, 'Editar tipo de taller', 'tipo_taller_edit', 0),
(67, 'Editar tipo de taller', 'tipo_taller_mostrar_para_edit', 0),
(68, 'Eliminar tipo de taller', 'tipo_taller_bajalogica', 0),
(69, 'Crear nucleo', 'nucleo_new', 0),
(70, 'Crear nucleo', 'nucleo_create', 0),
(71, 'Editar nucleo', 'nucleo_edit', 0),
(72, 'Editar nucleo', 'nucleo_mostrar_para_edit', 0),
(73, 'eliminar nucleo', 'nucleo_bajalogica', 0),
(74, 'Mostrar nucleos', 'nucleo_index', 1),
(75, 'Mostrar tipo de talleres ', 'tipo_taller_index', 1),
(76, 'Cargar docente', 'docente_new', 0),
(77, 'Cargar docente', 'docente_create', 0),
(78, 'Editar docente', 'docente_edit', 0),
(79, 'Editar docente', 'docente_mostrar_para_edit', 0),
(80, 'Eliminar docente', 'docente_bajalogica', 0),
(81, 'Mostrar docentes', 'docente_index', 1),
(82, 'Mostrar los estudiantes', 'estudiante_buscar', 0),
(83, 'Cargar un estudiante', 'estudiante_buscarRes', 0),
(84, 'Mostrar los estudiantes', 'estudiante_buscarInactivo', 0),
(85, 'Cargar un estudiante', 'estudiante_activarEstudiante', 0),
(86, 'Mis talleres', 'taller_mis_talleres', 1),
(87, 'Mostrar docente', 'docente_show', 0),
(88, 'Mostrar tallér', 'taller_show', 0),
(90, 'Asignar taller a un ciclo lectivo', 'taller_agregar_estudiante', 0),
(91, 'Asignar taller a un ciclo lectivo', 'taller_quitar_estudiante', 0),
(92, 'Asignar taller a un ciclo lectivo', 'taller_agregar_docente', 0),
(93, 'Asignar taller a un ciclo lectivo', 'taller_quitar_docente', 0),
(94, 'Cargar docente', 'docente_altalogica', 0),
(95, 'Modificar nuevo ciclo lectivo', 'ciclo_lectivo_mostrar_para_edit', 0),
(96, 'Eliminar ciclo lectivo', 'ciclo_lectivo_bajalogica', 0),
(97, 'Pasar lista', 'taller_pasar_lista', 0),
(98, 'Mostrar asistencias', 'taller_mostrar_asistencia_completa', 0),
(99, 'Pasar lista', 'taller_agregar_asistecia_estudiante', 0),
(100, 'Pasar lista', 'taller_quitar_asistecia_estudiante', 0),
(101, 'Mis horarios', 'docente_mostrar_calendario', 1),
(102, 'Mostrar instrumentos', 'instrumento_index', 1),
(103, 'Mostrar detalle instrumento', 'instrumento_show', 0),
(104, 'Alta instrumento', 'instrumento_new', 0),
(105, 'Alta instrumento', 'instrumento_create', 0),
(106, 'Editar instrumento', 'instrumento_editar', 0),
(107, 'Editar instrumento', 'instrumento_guardar', 0),
(108, 'Eliminar instrumento', 'instrumento_baja', 0),
(109, 'Eliminar taller', 'taller_bajalogica', 0),
(110, 'Mostrar mapa de nucleos', 'mapa_de_nucleos', 0),
(111, 'Mapa de mis talleres ', 'docente_mostrar_mi_mapa', 1),
(112, 'Asignar taller a un ciclo lectivo', 'taller_create_cargar', 0),
(113, 'Asignar taller a un ciclo lectivo', 'taller_new_cargar', 0),
(114, 'Mapa de talleres del docente', 'showMap', 0),
(115, 'Mostrar Ciclo Para Editar', 'ciclo_lectivo_mostrar_para_edit', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptor`
--

CREATE TABLE `preceptor` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptor_nucleo`
--

CREATE TABLE `preceptor_nucleo` (
  `preceptor_id` int(11) NOT NULL,
  `nucleo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable`
--

CREATE TABLE `responsable` (
  `id` int(11) NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `localidad_id` int(11) NOT NULL,
  `domicilio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genero_id` int(11) NOT NULL,
  `tipo_doc_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `responsable`
--

INSERT INTO `responsable` (`id`, `apellido`, `nombre`, `fecha_nac`, `localidad_id`, `domicilio`, `genero_id`, `tipo_doc_id`, `numero`, `tel`) VALUES
(2, 'marios', 'marios', '2019-05-15', 4, 'mariosmariosmariosmarios', 1, 1, 31232133, '4324234'),
(3, 'AbdalaAbdala', 'Abdala', '2019-11-26', 10, 'asdfasdfasdf2323', 1, 1, 23423412, '221221222'),
(4, 'juanfa', 'juanfa', '2019-11-20', 7, 'mariosmariosmariosmarios', 1, 1, 24354353, '213213213'),
(5, 'asdfasdfasdf', 'ElPadreDec', '2019-11-19', 4, 'asdfasdfasdf2323', 1, 1, 2147483647, '2215757574'),
(6, 'Barden', 'Bancroft', '2019-11-28', 1, 'QueSeYoVieja123', 1, 1, 5432214, '221221232'),
(7, 'Simpsons', 'Marge', '1981-08-31', 12, 'La matanza', 2, 1, 24736234, '24736234'),
(8, 'tobiaspadre', 'tobiaspadre', '2019-07-29', 5, 'Evelyn Evelyn Evelyn ', 1, 1, 312131, '3234'),
(9, 'Lirez', 'Rumualdo', '2019-11-08', 9, ' noseque 2323', 1, 1, 2147483647, '221221222'),
(10, 'simpsons', 'homero', '1960-08-12', 12, 'la matanza', 1, 1, 22763123, '221874267'),
(11, 'Migliavacca', 'Pablo', '1999-07-20', 11, 'Ensenada 3000', 1, 5, 30303030, '0110928392'),
(12, 'alicia', 'alicia', '2019-11-14', 7, 'aliciaaliciaaliciaaliciaalicia', 2, 1, 235235325, '32657234'),
(13, 'Lanciotti', 'Gabriela', '1980-09-10', 9, 'Gomes 230', 1, 3, 34090909, '2214340938'),
(14, 'Salvatore', 'Pablo', '2019-11-22', 6, 'noseque 2323', 1, 1, 99887654, '2215748930'),
(15, 'Nevares', 'Hector', '1960-09-12', 7, 'Escobar 500', 1, 1, 30909090, '2394984389'),
(16, 'Vellezo', 'Fabio', '1950-09-29', 7, 'Gibert2302', 1, 2, 293092030, '0293092300'),
(17, 'paredes', 'armando', '1980-08-12', 6, 'lomas de zamora', 1, 1, 25984278, '2218904532'),
(18, 'Esmeralda ', 'Esmeralda ', '1994-01-10', 7, 'Esmeralda Esmeralda Esmeralda Esmeralda ', 2, 1, 87976554, '685675467'),
(19, 'sargento', 'jorge', '1962-08-12', 11, 'ensenada', 1, 1, 15983234, '2218540398'),
(20, 'Emilia Emilia Emilia ', 'Emilia ', '1980-02-28', 7, 'padrepadrepadre', 2, 1, 97897886, '5675747'),
(21, 'garcia', 'jose', '1970-08-23', 12, 'la matanza', 2, 1, 33928234, '2218794356'),
(22, 'macri', 'mauricio', '1950-07-12', 8, 'mar del plata', 1, 1, 20789378, '2217840923');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable_estudiante`
--

CREATE TABLE `responsable_estudiante` (
  `responsable_id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `responsable_estudiante`
--

INSERT INTO `responsable_estudiante` (`responsable_id`, `estudiante_id`) VALUES
(2, 5),
(2, 6),
(2, 15),
(2, 25),
(2, 33),
(2, 37),
(3, 7),
(3, 8),
(3, 13),
(3, 19),
(3, 41),
(4, 10),
(4, 11),
(5, 40),
(6, 13),
(7, 9),
(7, 14),
(7, 17),
(7, 21),
(8, 20),
(9, 28),
(9, 30),
(10, 26),
(10, 31),
(10, 35),
(11, 18),
(11, 27),
(11, 44),
(11, 50),
(12, 29),
(13, 32),
(14, 23),
(14, 34),
(15, 36),
(16, 38),
(16, 48),
(17, 12),
(17, 39),
(18, 42),
(19, 24),
(19, 43),
(20, 46),
(21, 47),
(22, 22),
(22, 49);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Docente'),
(3, 'Preceptor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_tiene_permiso`
--

CREATE TABLE `rol_tiene_permiso` (
  `rol_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol_tiene_permiso`
--

INSERT INTO `rol_tiene_permiso` (`rol_id`, `permiso_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 87),
(1, 88),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(2, 5),
(2, 86),
(2, 87),
(2, 88),
(2, 97),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 110),
(2, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id` int(11) NOT NULL,
  `ciclo_lectivo_id` int(11) NOT NULL,
  `tipo_taller_id` int(11) NOT NULL,
  `nucleo_id` int(11) NOT NULL,
  `dia_semana` varchar(255) NOT NULL,
  `hora` time NOT NULL,
  `hora_fin` time NOT NULL,
  `duracion` time NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taller`
--

INSERT INTO `taller` (`id`, `ciclo_lectivo_id`, `tipo_taller_id`, `nucleo_id`, `dia_semana`, `hora`, `hora_fin`, `duracion`, `baja_logica`) VALUES
(1, 1, 1, 1, 'domingo', '11:00:00', '17:00:00', '06:00:00', 0),
(2, 1, 1, 1, 'lunes', '11:00:00', '17:00:00', '06:00:00', 0),
(3, 4, 3, 4, 'martes', '04:00:00', '07:00:00', '03:00:00', 1),
(4, 5, 3, 4, 'viernes', '10:00:00', '13:00:00', '03:00:00', 1),
(5, 1, 2, 4, 'miercoles', '01:00:00', '04:00:00', '03:00:00', 0),
(6, 2, 3, 3, 'martes', '10:00:00', '14:00:00', '04:00:00', 1),
(7, 1, 3, 12, 'miercoles', '00:00:00', '05:00:00', '05:00:00', 0),
(8, 1, 4, 3, 'viernes', '17:00:00', '20:00:00', '03:00:00', 0),
(9, 5, 3, 16, 'martes', '00:00:00', '04:00:00', '04:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_instrumento`
--

CREATE TABLE `tipo_instrumento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_instrumento`
--

INSERT INTO `tipo_instrumento` (`id`, `nombre`) VALUES
(1, 'Viento'),
(2, 'Cuerda'),
(3, 'Percusión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_taller`
--

CREATE TABLE `tipo_taller` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_corto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baja_logica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_taller`
--

INSERT INTO `tipo_taller` (`id`, `nombre`, `nombre_corto`, `baja_logica`) VALUES
(1, 'Taller de lenguaje', 'Lenguaje', 0),
(2, 'Taller de coro', 'Coro', 0),
(3, 'taller de instrumento', 'Instrumento', 0),
(4, 'taller de orquesta', 'Orquesta', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `username`, `password`, `activo`, `updated_at`, `created_at`, `first_name`, `last_name`) VALUES
(1, 'admin@admin.com', 'admin', 'sha256$tRS8l4Gv$9acd536aba1fd432e6c43739ae0bf28d2c4a0593dad7b6931e209ed4db985b9e', 0, '2019-11-19 00:00:00', '2019-11-19 00:00:00', 'admin', 'admin'),
(3, 'juan@gmail.com', 'juan', 'sha256$et8TuRUl$2cf72cfb0ad472324b5b30bc6e26e78763af9bb5a52bb01292b684977b31d931', 0, '2019-11-11 07:59:20', '2019-11-11 07:59:20', 'juan', 'massucco'),
(4, 'pablo@gmail.com', 'pablo', 'sha256$zr5GMXe5$8965e8d14cfe8294db6f9f43bf7a7e7884aa44e6fd47caa222a25ea44635a29d', 0, '2019-11-17 22:04:56', '2019-11-17 22:04:56', 'pablo', 'pablo'),
(5, 'caro@gmail.com', 'caro', 'sha256$nHHZMwM8$da133e60008300e80a0820679fc57acca02d640d692397d0a64f263b57718012', 0, '2019-11-17 22:05:24', '2019-11-17 22:05:24', 'caro', 'caro'),
(6, 'mario@gmail.com', 'mario', 'sha256$vkPNZxyO$a2a9e1b0b40a8d0b3ebb8a8cb3373135a4387428128a04f85fbf8720c1fd4c67', 0, '2019-11-17 22:05:44', '2019-11-17 22:05:44', 'mario', 'mario'),
(7, 'pedro@gmail.com', 'pedro', 'sha256$lMk9gh7n$62c613b1bf1d496cbe3fdef83ec44fbf2f33445753d44a041783129726e1f00a', 1, '2019-11-17 22:06:11', '2019-11-17 22:06:11', 'pedro', 'pedro'),
(8, 'juanfa@gmail.com', 'juanfa', 'sha256$UuojmzpA$92361ea07971658001279d912ca75e12d93e9cc1d473f84fbbc088554b04a5a7', 0, '2019-11-17 22:06:41', '2019-11-17 22:06:41', 'juanfa', 'juanfa'),
(9, 'cristian@gmail.com', 'cristian', 'sha256$pKxvdGZ0$0bf1440366d72017ab9422e29785dde82dda2c0b8b30243972f87233ce228248', 0, '2019-11-17 22:06:59', '2019-11-17 22:06:59', 'cristian', 'cristian'),
(10, 'raul@gmail.com', 'raul', 'sha256$RitGBmra$844150d0bdec4a5b86aefff8b413e943fec2cd457238173a70066dfe302770a0', 0, '2019-11-17 22:07:14', '2019-11-17 22:07:14', 'raul', 'raul'),
(11, 'nico@gmail.com', 'nico', 'sha256$DAbFHGrP$f17d18a90596e670951b713f5c8ae11c35793bfb57bac685bf883360fd3653b3', 0, '2019-11-17 22:07:53', '2019-11-17 22:07:53', 'nico', 'nico'),
(12, 'lorena@gmail.com', 'lorena', 'sha256$tP1jQhJ9$9b88ec8d76471bd9dc3ffa2f2a55daf64b891489a503380b48299da0cdfb37e4', 0, '2019-11-17 22:08:11', '2019-11-17 22:08:11', 'lorena', 'lorena'),
(13, 'gisela@gmail.com', 'gisela', 'sha256$I08g7Z2G$5d3e116b9a9929bd65a8f7d416396239e2c568cc0f4d50b24d0572943d82866f', 0, '2019-11-17 22:08:28', '2019-11-17 22:08:28', 'gisela', 'gisela'),
(14, 'fede@gmail.com', 'fede', 'sha256$F0gGWKsV$9802eb8818ab6bff789f09639ec89a2d4241f52fc188d2b831bac35bd7f60f21', 0, '2019-11-17 22:08:46', '2019-11-17 22:08:46', 'fede', 'fede'),
(15, 'jose@gmail.com', 'jose', 'sha256$7nLz4IRV$9630eb6eba25fbe5bf5303fee4922a107468b973596c45065e1e36ce06ad260e', 0, '2019-11-17 22:08:58', '2019-11-17 22:08:58', 'jose', 'jose'),
(16, 'alicia@gmail.com', 'alicia', 'sha256$hlEvKgJd$b1674a527bed429184ea36c35d79c90251d548b357ceb6d3c402ec276fba3b72', 0, '2019-11-17 22:09:21', '2019-11-17 22:09:21', 'alicia', 'alicia'),
(17, 'manuel@gmail.com', 'manuel', 'sha256$P6r6HsNc$8a81821e2c1a3d5a7ade655f200f5a0117d26efa4e6843a78c00dc0d65c92c24', 0, '2019-11-17 22:10:41', '2019-11-17 22:10:41', 'manuel', 'manuel'),
(18, 'fernando.1995.4.4@hotmail.es', 'fernando', 'sha256$96HMKHGx$eedf53fe56a4b92864d3ce7ab8497a23cbb6f08b469cb40ea5cfc0ffa0bc28ba', 0, '2019-11-17 22:11:01', '2019-11-17 22:11:01', 'fernando', 'fernando'),
(19, 'cata@gmail.com', 'cata', 'sha256$bumCHnNi$ece02f8b63d103c974a4925e7df7154a303537e7cb209876fb70d463dd5515ed', 0, '2019-11-17 22:11:45', '2019-11-17 22:11:45', 'cata', 'cata'),
(20, 'maria@gmail.com', 'maria', 'sha256$rBz4s5Wj$60836b5993e918435ef3b22f89936209b915f4c5299c6b74b011304c4a45e642', 0, '2019-11-17 22:11:59', '2019-11-17 22:11:59', 'maria', 'maria'),
(21, 'analia@gmail.com', 'analia', 'sha256$Sdg486pq$488af14485df1bfb01f19494e48d68b8696cb07b86be661fb663c54eab603871', 0, '2019-11-17 22:12:11', '2019-11-17 22:12:11', 'analia', 'analia'),
(22, 'mariano@gmail.com', 'mariano', 'sha256$OM5neqbk$bdad54628262d5392d0b10f19129558f91bba9ce94fb99d469ea9239b18234cc', 0, '2019-11-17 22:12:31', '2019-11-17 22:12:31', 'mariano', 'mariano'),
(23, 'alfonso@gmail.com', 'alfonso', 'sha256$sY2BCO9M$42d7a4de46bf7b044fa40a5d472080974a3c6ffd580e06209da110c841c1c7ee', 0, '2019-11-17 22:12:53', '2019-11-17 22:12:53', 'alfonso', 'alfonso'),
(24, 'lucas@gmail.com', 'lucas', 'sha256$okEmu866$6576389bcfb903718d822189f701bfefde6236bf1e45a928b5933b70a661d880', 0, '2019-11-17 22:13:34', '2019-11-17 22:13:34', 'lucas', 'lucas'),
(25, 'magali@gmail.com', 'magali', 'sha256$xIIUBP0u$a38d8f34f4b90748dc4fa78f0e7b06da245cf8c6ceb72302909115d397f515cf', 0, '2019-11-17 22:14:30', '2019-11-17 22:14:30', 'magali', 'magali'),
(26, 'camila@gmail.com', 'camila', 'sha256$XHiU7gAx$ae5850c094f8771ec8edfb3f6d359a2538a0a19c7016d6b8cedce50627c3c0f2', 0, '2019-11-17 22:14:47', '2019-11-17 22:14:47', 'camila', 'camila'),
(27, 'noelia@gmail.com', 'noelia', 'sha256$4ddf8EgB$91bf49f4fde57a2b5b839d87e0482df9be716f7b488b7d593049a8bd70beead1', 0, '2019-11-17 22:15:02', '2019-11-17 22:15:02', 'noelia', 'noelia'),
(28, 'francisco@gmail.com', 'francisco', 'sha256$OGUdSDU4$41ded0a2de4f261b92cf553d7d2d8353f1ab69c070ba5068c638df1ed4646157', 0, '2019-11-17 22:15:34', '2019-11-17 22:15:34', 'francisco', 'francisco'),
(29, 'pepe@homail.com', 'pepe', 'sha256$zPD6vCjW$021e5bd4727afbbdb4e9097e61889f8d6342d3a9ff809ccb06e98094d4cec395', 0, '2020-03-09 01:31:16', '2020-03-09 01:31:16', 'pepe', 'elartesano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tiene_rol`
--

CREATE TABLE `usuario_tiene_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_tiene_rol`
--

INSERT INTO `usuario_tiene_rol` (`usuario_id`, `rol_id`) VALUES
(6, 2),
(13, 2),
(11, 2),
(16, 2),
(25, 2),
(1, 1),
(5, 1),
(9, 1),
(8, 1),
(3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia_estudiante_taller`
--
ALTER TABLE `asistencia_estudiante_taller`
  ADD KEY `estudiante_id` (`estudiante_id`),
  ADD KEY `taller_id` (`taller_id`) USING BTREE;

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciclo_lectivo`
--
ALTER TABLE `ciclo_lectivo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_genero_docente_id` (`genero_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `docente_responsable_taller`
--
ALTER TABLE `docente_responsable_taller`
  ADD KEY `docente_id` (`docente_id`),
  ADD KEY `taller_id` (`taller_id`) USING BTREE;

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_nivel_id` (`nivel_id`),
  ADD KEY `FK_genero_estudiante_id` (`genero_id`),
  ADD KEY `FK_escuela_id` (`escuela_id`),
  ADD KEY `FK_barrio_id` (`barrio_id`);

--
-- Indices de la tabla `estudiante_taller`
--
ALTER TABLE `estudiante_taller`
  ADD KEY `estudiante_id` (`estudiante_id`),
  ADD KEY `taller_id` (`taller_id`) USING BTREE;

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tipo_instrumento_id` (`tipo_id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nucleo`
--
ALTER TABLE `nucleo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preceptor`
--
ALTER TABLE `preceptor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `preceptor_nucleo`
--
ALTER TABLE `preceptor_nucleo`
  ADD PRIMARY KEY (`preceptor_id`,`nucleo_id`),
  ADD KEY `FK_nucleo_id` (`nucleo_id`);

--
-- Indices de la tabla `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_genero_responsable_id` (`genero_id`);

--
-- Indices de la tabla `responsable_estudiante`
--
ALTER TABLE `responsable_estudiante`
  ADD PRIMARY KEY (`responsable_id`,`estudiante_id`),
  ADD KEY `FK_estudiante_id` (`estudiante_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_tiene_permiso`
--
ALTER TABLE `rol_tiene_permiso`
  ADD PRIMARY KEY (`rol_id`,`permiso_id`),
  ADD KEY `FK_permiso_id` (`permiso_id`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciclo_lectivo_id` (`ciclo_lectivo_id`),
  ADD KEY `taller_id` (`tipo_taller_id`),
  ADD KEY `nucleo_id` (`nucleo_id`);

--
-- Indices de la tabla `tipo_instrumento`
--
ALTER TABLE `tipo_instrumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_taller`
--
ALTER TABLE `tipo_taller`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_tiene_rol`
--
ALTER TABLE `usuario_tiene_rol`
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `ciclo_lectivo`
--
ALTER TABLE `ciclo_lectivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `escuela`
--
ALTER TABLE `escuela`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `nucleo`
--
ALTER TABLE `nucleo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT de la tabla `preceptor`
--
ALTER TABLE `preceptor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `responsable`
--
ALTER TABLE `responsable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `taller`
--
ALTER TABLE `taller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tipo_instrumento`
--
ALTER TABLE `tipo_instrumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_taller`
--
ALTER TABLE `tipo_taller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia_estudiante_taller`
--
ALTER TABLE `asistencia_estudiante_taller`
  ADD CONSTRAINT `asistencia_estudiante_taller_ibfk_1` FOREIGN KEY (`taller_id`) REFERENCES `taller` (`id`),
  ADD CONSTRAINT `asistencia_estudiante_taller_ibfk_2` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `FK_genero_docente_id` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
