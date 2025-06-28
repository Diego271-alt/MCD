-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 29-01-2025 a las 04:53:07
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciencia_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `correoProfesor` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `actividad` text COLLATE utf8_bin,
  `inicio` date DEFAULT NULL,
  `fin` date NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `id` bigint(11) NOT NULL,
  `validado` tinyint(4) NOT NULL DEFAULT '1',
  `comprobante` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`correoProfesor`, `actividad`, `inicio`, `fin`, `descripcion`, `id`, `validado`, `comprobante`) VALUES
('ccroldan@mixteco.utm.mx', 'Elaboración de reactivos para el examen de selección para ingenierías SUNEO 2016 ', '2016-05-13', '2016-01-01', 'Esta actividad se realiza para poder generar ...', 1, 1, ''),
('cmillanh@mixteco.utm.mx', 'Actividad 2', '2024-01-01', '2024-01-10', 'Desc 2', 2, 1, ''),
('rafagarcia@mixteco.utm.mx', 'Actividad 3', '2023-02-20', '2023-02-23', 'Desc 3', 3, 1, ' '),
('ejusto@mixteco.utm.mx', 'Actividad 4', '2023-09-30', '2023-10-02', 'Desc 4', 4, 1, ' '),
('thaliarr@mixteco.utm.mx', 'Actividad 5', '2023-04-05', '2023-04-12', 'Desc 5', 5, 1, ' '),
('rcruz@mixteco.utm.mx', 'Actividad 6', '2022-09-01', '2022-09-12', 'Desc 6', 6, 1, ' '),
('jorge@gs.utm.mx', 'Actividad 7', '2024-07-10', '2024-07-12', 'Desc 7', 7, 1, ' '),
('pabtamar@mixteco.utm.mx', 'Actividad 8', '2023-02-20', '2023-02-23', 'Desc 8', 8, 1, ' '),
('jlinares@mixteco.utm.mx', 'Actividad 9', '2018-09-01', '2018-09-01', 'Desc 9', 9, 1, ' '),
('mmoralesj@mixteco.utm.mx', 'Actividad 10', '2023-07-19', '2023-07-21', 'Desc 10', 10, 1, ' '),
('abravo@mixteco.utm.mx', 'Actividad 11', '2024-07-11', '2024-07-12', 'Desc 11', 11, 1, ' '),
('edith@mixteco.utm.mx', 'Actividad 12', '2023-04-05', '2023-04-07', 'Desc 12', 12, 1, ' '),
('smontesinos@mixteco.utm.mx', 'Actividad 13', '2023-10-18', '2023-10-19', 'Desc 13', 13, 1, ' '),
('mdbarreiro@mixteco.utm.mx', 'Actividad 14', '2018-09-01', '2018-09-01', 'Desc 14', 14, 1, ' '),
('jgml@mixteco.utm.mx', 'Actividad 15', '2023-06-04', '2023-06-06', 'Desc 15', 15, 1, ' '),
('ana.olvera@mixteco.utm.mx', 'Actividad 16', '2023-02-20', '2023-02-23', 'Desc 16', 16, 1, ' '),
('mramirez@mixteco.utm.mx', 'Actividad 17', '2019-09-13', '2019-09-15', 'Desc 17', 17, 1, ' '),
('jcds@mixteco.utm.mx', 'Actividad 18', '2024-01-01', '2024-01-10', 'Desc 18', 18, 1, ' '),
('octavioalberto@mixteco.utm.mx', 'Actividad 19', '2019-03-04', '2019-03-05', 'Desc 19', 19, 1, ' '),
('sreyes@mixteco.utm.mx', 'Actividad 20', '2019-02-09', '2019-02-12', 'Desc 20', 20, 1, ' '),
('maxvell@mixteco.utm.mx', 'Actividad 21', '2024-05-06', '2024-05-17', 'Desc 21', 21, 1, ' '),
('alvaromj@mixteco.utm.mx', 'Actividad 22', '2019-07-14', '2019-07-17', 'Desc 22', 22, 1, ' '),
('atellezv@mixteco.utm.mx', 'Actividad 23', '2024-01-01', '2024-01-10', 'Desc 23', 23, 1, ' '),
('eguzman@mixteco.utm.mx', 'Actividad 24', '2025-01-12', '2025-01-14', 'Desc 24', 24, 1, ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `numero` bigint(11) NOT NULL,
  `tipoCRL` text COLLATE utf8_bin NOT NULL,
  `titulo` text COLLATE utf8_bin NOT NULL,
  `nombreCRL` text COLLATE utf8_bin NOT NULL,
  `tipoNI` text COLLATE utf8_bin NOT NULL,
  `volumen` text COLLATE utf8_bin NOT NULL,
  `paginas` text COLLATE utf8_bin NOT NULL,
  `anyo` text COLLATE utf8_bin NOT NULL,
  `issnisbn` text COLLATE utf8_bin NOT NULL,
  `doi` text COLLATE utf8_bin NOT NULL,
  `estado` text COLLATE utf8_bin NOT NULL,
  `fechaedicion` date NOT NULL,
  `comprobante` text COLLATE utf8_bin NOT NULL,
  `indexada` text COLLATE utf8_bin NOT NULL,
  `issue` text COLLATE utf8_bin NOT NULL,
  `editores` text COLLATE utf8_bin NOT NULL,
  `ciudad` text COLLATE utf8_bin NOT NULL,
  `pais` text COLLATE utf8_bin NOT NULL,
  `editorial` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`numero`, `tipoCRL`, `titulo`, `nombreCRL`, `tipoNI`, `volumen`, `paginas`, `anyo`, `issnisbn`, `doi`, `estado`, `fechaedicion`, `comprobante`, `indexada`, `issue`, `editores`, `ciudad`, `pais`, `editorial`) VALUES
(1, 'Congreso', 'Small Petal Tools used to Parabolize Mirrors', 'OSA Latin America Optics & Photonics Conference (LAOP) 2016', 'Internacional', '', '1-3', '2016', 'ISBN', 'https://doi.org/10.1364/LAOP.2016.LTu4A.19', 'Publicado', '2016-08-22', '1jgonzal@mixteco.utm.mx.pdf', 'No', '', '', '', '', ''),
(2, 'Revista', 'Titulo Artículo 2', 'Revista1', 'Nacional', '				', '40', '2022', 'ISSN', 'https://doi.org/1', 'Enviado', '2022-05-23', '				', 'No', '				', '				', '				', '				', '				'),
(3, 'Libro', 'Titulo Artículo 3', 'Libro1', 'Nacional', '				', '120', '2024', 'ISBN', 'https://doi.org/2', 'Aceptado', '2024-12-31', '				', 'No', '				', '				', '				', '				', '				'),
(4, 'Congreso', 'Titulo Artículo 4', 'Congreso2', 'Internacional', '				', '1-4', '2020', 'ISBN', 'https://doi.org/3', 'Aceptado', '2020-05-02', '				', 'Si', '				', '				', '				', '				', '				'),
(5, 'Congreso', 'Titulo Artículo 5', 'Congreso2', 'Nacional', '				', '2-8', '2024', 'ISBN', 'https://doi.org/4', 'Aceptado', '2024-02-28', '				', 'Si', '				', '				', '				', '				', '				'),
(6, 'Congreso', 'Titulo Artículo 6', 'Congreso3', 'Nacional', '				', '4-7', '2020', 'ISBN', 'https://doi.org/5', 'Aceptado', '2020-09-12', '				', 'Si', '				', '				', '				', '				', '				'),
(7, 'Libro', 'Titulo Artículo 7', 'Libro2', 'Internacional', '				', '220', '2025', 'ISBN', 'https://doi.org/6', 'Enviado', '2025-01-01', '				', 'No', '				', '				', '				', '				', '				'),
(8, 'Libro', 'Titulo Artículo 8', 'Libro3', 'Internacional', '				', '167', '2020', 'ISBN', 'https://doi.org/7', 'Enviado', '2020-05-09', '				', 'No', '				', '				', '				', '				', '				'),
(9, 'Libro', 'Titulo Artículo 9', 'Libro4', 'Nacional', '				', '134', '2025', 'ISBN', 'https://doi.org/8', 'Publicado', '2025-01-15', '				', 'No', '				', '				', '				', '				', '				'),
(10, 'Libro', 'Titulo Artículo 10', 'Libro5', 'Nacional', '				', '190', '2019', 'ISBN', 'https://doi.org/9', 'Publicado', '2019-08-01', '				', 'No', '				', '				', '				', '				', '				'),
(11, 'Revista', 'Titulo Artículo 11', 'Revista2', 'Nacional', '				', '55', '2021', 'ISSN', 'https://doi.org/10', 'Enviado', '2021-10-30', '				', 'No', '				', '				', '				', '				', '				'),
(12, 'Congreso', 'Titulo Artículo 12', 'Congreso3', 'Nacional', '				', '6-7', '2023', 'ISBN', 'https://doi.org/11', 'Publicado', '2023-04-20', '				', 'Si', '				', '				', '				', '				', '				'),
(13, 'Revista', 'Titulo Artículo 13', 'Revista3', 'Internacional', '				', '23', '2020', 'ISSN', 'https://doi.org/12', 'Enviado', '2020-09-11', '				', 'No', '				', '				', '				', '				', '				'),
(14, 'Revista', 'Titulo Artículo 14', 'Revista4', 'Internacional', '				', '45', '2021', 'ISSN', 'https://doi.org/13', 'Enviado', '2021-11-28', '				', 'No', '				', '				', '				', '				', '				'),
(15, 'Revista', 'Titulo Artículo 15', 'Revista5', 'Nacional', '				', '76', '2022', 'ISSN', 'https://doi.org/14', 'Publicado', '2022-08-17', '				', 'Si', '				', '				', '				', '				', '				'),
(16, 'Congreso', 'Titulo Artículo 16', 'Congreso4', 'Nacional', '				', '1-6', '2020', 'ISBN', 'https://doi.org/15', 'Aceptado', '2020-03-16', '				', 'No', '				', '				', '				', '				', '				'),
(17, 'Libro', 'Titulo Artículo 17', 'Revista2', 'Nacional', '				', '23', '2021', 'ISSN', 'https://doi.org/16', 'Enviado', '2021-06-07', '				', 'No', '				', '				', '				', '				', '				');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ca`
--

CREATE TABLE `ca` (
  `codigo` text COLLATE utf8_bin NOT NULL,
  `correo` varchar(120) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ca`
--

INSERT INTO `ca` (`codigo`, `correo`) VALUES
('UTMIX-CA-40', 'icorrales@mixteco.utm.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `nombre` text NOT NULL,
  `codigo` bigint(20) NOT NULL,
  `sigla` text NOT NULL,
  `idInstituto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`nombre`, `codigo`, `sigla`, `idInstituto`) VALUES
('Ingeniería en Computación', 2, 'IC', 2),
('Ingeniería en Diseño', 3, 'ID', 3),
('Ingeniería en Electrónica', 4, 'IE', 1),
('Licenciatura en Ciencias Empresariales', 5, 'LCE', 5),
('Ingeniería en Alimentos', 6, 'IA', 8),
('Licenciatura en Matemáticas Aplicadas', 7, 'LMA', 4),
('Ingeniería Industrial', 11, 'II', 13),
('Estudios de Nuevos Materiales', 12, 'ENM', 11),
('Ingeniería en Mecatrónica', 14, 'IM', 1),
('Ingeniería en Física Aplicada', 17, 'IFA', 4),
('Ingeniería Mecánica Automotriz', 31, 'IMA', 13),
('Ingeniería Civil', 32, 'ICV', 3),
('Centro de Idiomas', 33, 'CI', 12),
('Ingeniería Química en Procesos Sostenibles', 36, 'IQ', 8),
('Maestría en Ciencia de Datos', 37, 'MCD', 100),
('Maestría en Diseño de Modas', 50, 'MDMO', 100),
('Maestría en Diseño de Muebles', 51, 'MDMU', 100),
('Maestría en Medios Interactivos', 52, 'MMI', 100),
('Maestría en Ciencias de Materiales', 53, 'MCM', 100),
('Maestría en Modelación Matemática', 54, 'MMM', 100),
('Maestría en Robótica', 55, 'MR', 100),
('Maestría en Administración de Negocios', 56, 'MAN', 100),
('Maestría en Tecnología Avanzada de Manufactura', 57, 'MTAM', 100),
('Maestría en Tecnologías de Cómputo Aplicado', 58, 'MTCA', 100),
('Maestría en Ciencias: Productos Naturales y Alimentos', 59, 'MCPNA', 100),
('Maestría en Electrónica Opción: Sistemas Inteligentes Aplicados', 60, 'MESIA', 100),
('Doctorado en Robótica', 61, 'DR', 100),
('Doctorado en Tecnologías de Cómputo Aplicado', 62, 'DTCA', 100),
('Doctorado en Modelación Matemática', 63, 'DMM', 100),
('Doctorado en Electrónica, Opción: Sistemas Inteligentes Aplicados', 64, 'DESIA', 100),
('Maestría en Inteligencia Artificial', 65, 'MIA', 100),
('Doctorado en Inteligencia Artificial', 66, 'DIA', 100),
('Doctorado en Ciencias: Productos Naturales y Alimentos', 67, 'DCPNA', 100),
('Maestría en Ingeniería de Software', 68, 'MIS', 100),
('Licenciatura en Estudios Mexicanos', 90, 'LEM', 100),
('Maestría en Sistemas Distribuidos', 91, 'MSD', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comision`
--

CREATE TABLE `comision` (
  `id` bigint(20) NOT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `asignacion` text COLLATE utf8_bin NOT NULL,
  `periodo` text COLLATE utf8_bin NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `comprobante` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT '"no hay"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `comision`
--

INSERT INTO `comision` (`id`, `nombre`, `descripcion`, `asignacion`, `periodo`, `inicio`, `fin`, `comprobante`) VALUES
(1, 'Comisión para la selección de alumnos de nuevo ingreso de la carrera de\r\nIngeniería en Computación', 'Analizar la situación académica de los alumnos de nuevo ingreso', 'Jefatura', 'Definido', '2018-07-02', '2019-06-30', ''),
(2, 'Comision 2', 'Desc 2', 'Direccion', 'Indefinido', '2022-09-15', '9999-01-01', '\"no hay\"'),
(3, 'Comision 3', 'Desc 3', 'Vicerectoria', 'Indefinido', '2024-01-23', '9999-01-01', '\"no hay\"'),
(4, 'Comision 4', 'Desc 4', 'Jefatura', 'Indefinido', '2023-09-02', '9999-01-01', '\"no hay\"'),
(5, 'Comision 5', 'Desc 5', 'Jefatura', 'Indefinido', '2024-09-09', '9999-01-01', '\"no hay\"'),
(6, 'Comision 6', 'Desc 6', 'Jefatura', 'Indefinido', '2025-01-18', '9999-01-01', '\"no hay\"'),
(7, 'Comision 7', 'Desc 7', 'Jefatura', 'Indefinido', '2017-03-04', '9999-01-01', '\"no hay\"'),
(8, 'Comision 8', 'Desc 8', 'Direccion', 'Indefinido', '2018-05-12', '9999-01-01', '\"no hay\"'),
(9, 'Comision 9', 'Desc 9', 'Direccion', 'Definido', '2019-09-14', '2020-07-12', '\"no hay\"'),
(10, 'Comision 10', 'Desc 10', 'Jefatura', 'Definido', '2021-11-02', '2023-09-19', '\"no hay\"'),
(11, 'Comision 11', 'Desc 11', 'Vicerectoria', 'Indefinido', '2024-04-02', '9999-01-01', '\"no hay\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` bigint(20) NOT NULL,
  `correoProfesor` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `tipoEvento` text COLLATE utf8_bin NOT NULL,
  `nombreEvento` text COLLATE utf8_bin NOT NULL,
  `participacion` text COLLATE utf8_bin NOT NULL,
  `afectaLinea` text COLLATE utf8_bin NOT NULL,
  `tipoParticipacion` text COLLATE utf8_bin NOT NULL,
  `titulo` text COLLATE utf8_bin NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `comprobante` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `correoProfesor`, `tipoEvento`, `nombreEvento`, `participacion`, `afectaLinea`, `tipoParticipacion`, `titulo`, `inicio`, `fin`, `comprobante`) VALUES
(20170707085234, 'odramirez@mixteco.utm.mx', 'Congreso', 'IX Simposium de Software\r\nLibre de la Mixteca', 'Nacional', 'Si', 'Asistente', 'Herramientas usadas en el desarrollo de un sistemas de localizaciÃ3n en\r\ninteriores', '2017-04-26', '2017-04-28', ''),
(2, 'admm@mixteco.utm.mx', 'Congreso', 'Evento 2', 'Nacional', 'No', 'Asistente', 'Titulo 1', '2015-11-30', '2016-01-01', ' '),
(3, 'ssanchez@mixteco.utm.mx', 'Congreso', 'Evento 3', 'Nacional', 'No', 'Asistente', 'Titulo 2', '2020-12-01', '2021-12-01', ' '),
(4, 'oyola_romer@mixteco.utm.mx', 'Congreso', 'Evento 4', 'Nacional', 'No', 'Asistente', 'Titulo 3', '2019-11-01', '2020-08-29', ' '),
(5, 'jtenorio@mixteco.utm.mx', 'Congreso', 'Evento 5', 'Nacional', 'No', 'Presentador', 'Titulo 4', '2024-05-14', '2025-01-27', ' '),
(6, 'jtenorio@mixteco.utm.mx', 'Congreso', 'Evento 6', 'Nacional', 'Si', 'Asistente', 'Titulo 5', '2021-05-19', '2022-11-08', ' '),
(7, 'admm@mixteco.utm.mx', 'Congreso', 'Evento 7', 'Internacional', 'Si', 'Presentador', 'Titulo 6', '2022-10-16', '2024-07-01', ' '),
(8, 'jtenorio@mixteco.utm.mx', 'Taller', 'Evento 8', 'Nacional', 'Si', 'Asistente', 'Titulo 7', '2018-04-19', '2018-12-23', ' '),
(9, 'cantu@mixteco.utm.mx', 'Congreso', 'Evento 9', 'Internacional', 'Si', 'Asistente', 'Titulo 8', '2024-01-23', '2024-11-23', ' '),
(10, 'jtenorio@mixteco.utm.mx', 'Congreso', 'Evento 10', 'Nacional', 'No', 'Presentador', 'Titulo 9', '2017-01-24', '2019-04-14', ' '),
(11, 'rcruz@mixteco.utm.mx', 'Taller', 'Evento 11', 'Nacional', 'No', 'Presentador', 'Titulo 10', '2023-04-03', '2024-02-14', ' '),
(12, 'admm@mixteco.utm.mx', 'Taller', 'Evento 12', 'Nacional', 'Si', 'Asistente', 'Titulo 11', '2019-08-19', '2023-05-01', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutos`
--

CREATE TABLE `institutos` (
  `nombre` text NOT NULL,
  `codigo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `institutos`
--

INSERT INTO `institutos` (`nombre`, `codigo`) VALUES
('vice-rectoria académica', 0),
('Instituto de electrónica y mecatrónica', 1),
('Instituto de computación', 2),
('Instituto de diseño', 3),
('Instituto de física y matemáticas', 4),
('Instituto de ciencias sociales y humanidades', 5),
('Instituto de agroindustrias', 8),
('Instituto de hidrología', 9),
('Instituto de minería', 10),
('Centro de Estudios de Nuevos Materiales', 11),
('Centro de Idiomas', 12),
('Instituto de Ingeniería Industrial y Automotriz', 13),
('Centro de Modelación Matemática, Vinculación y Consultoría ', 14),
('Posgrado', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `idPlan` bigint(20) NOT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `semestre` int(11) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idPlan`, `nombre`, `semestre`, `id`) VALUES
(1, 'Programación estructurada', 1, 1),
(1, 'Precálculo', 1, 2),
(1, 'Estructuras de Datos', 2, 3),
(1, 'Teoría de la Computación', 3, 4),
(1, 'Métodos Numéricos', 5, 5),
(1, 'Programación Web I', 5, 6),
(1, 'Mercadotecnia', 8, 7),
(1, 'Análisis de Algoritmos', 4, 8),
(1, 'Bases de datos', 4, 9),
(2, 'Informática Empresarial', 1, 10),
(2, 'Macroeconomía', 5, 11),
(2, 'Microeconomía', 4, 12),
(2, 'Presupuestos', 8, 13),
(2, 'Emprendurismo', 8, 14),
(2, 'Derecho Mercantil', 3, 15),
(2, 'Contabilidad Financiera', 2, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `codigoCarrera` bigint(20) NOT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`codigoCarrera`, `nombre`, `id`) VALUES
(2, '4', 1),
(5, '3', 2),
(12, '1', 3),
(6, '2', 4),
(14, '4', 5),
(11, '1', 6),
(17, '7', 7),
(52, '9', 8),
(37, '1', 9),
(33, '1', 10),
(59, '6', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `correo` varchar(120) NOT NULL,
  `idCarrera` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `correo`, `idCarrera`) VALUES
(1, 'Erik Ramos', 'erik@gs.utm.mx', 2),
(2, 'Enrique Guzman', 'enrique@gs.utm.mx', 2),
(3, 'Jorge Barahona', 'jorge@gs.utm.mx', 17),
(4, 'Alicia Santiago Santos', 'alicia@mixteco.utm.mx', 7),
(5, 'Armando Alcalá Vallejo', 'avallejo@mixteco.utm.mx', 7),
(6, 'Franco Barragán Mendoza', 'franco@mixteco.utm.mx', 7),
(7, 'Luz Del Carmen Álvarez Marín', 'lalvarez@mixteco.utm.mx', 7),
(8, 'Cuauhtémoc Héctor Castañeda Roldán', 'ccroldan@mixteco.utm.mx', 7),
(9, 'Graciela Castro González', 'castro@mixteco.utm.mx', 7),
(10, 'Juan Luis Hernández López', 'jlopez@mixteco.utm.mx', 7),
(11, 'José Margarito Hernández Morales', 'jmhm@mixteco.utm.mx', 7),
(12, 'Guillermo Arturo Lancho Romero', 'lanchoga@mixteco.utm.mx', 7),
(13, 'Mario Lomeli Haro', 'mario.lomeli@gmail.com', 7),
(14, 'Adolfo Maceda Méndez', 'admm@mixteco.utm.mx', 7),
(15, 'Juan Carlos Mendoza Santos', 'jcsantos@mixteco.utm.mx', 7),
(16, 'Alma Lidia Piceno Rivera', 'apiceno@mixteco.utm.mx', 7),
(17, 'Tirso Miguel Ángel Ramírez Solano', 'mramirez@mixteco.utm.mx', 7),
(18, 'Silvia Reyes Mora', 'sreyes@mixteco.utm.mx', 63),
(19, 'Salvador Sánchez Perales', 'ssanchez@mixteco.utm.mx', 7),
(20, 'Jesús Fernando Tenorio Arvide', 'jtenorio@mixteco.utm.mx', 7),
(21, 'Vulfrano Tochihuitl Bueno', 'vtochi@mixteco.utm.mx', 7),
(22, 'Raúl Juárez Amaro', 'rjamaro@mixteco.utm.mx', 17),
(23, 'Ana Delia Olvera Cervantes', 'ana.olvera@mixteco.utm.mx', 7),
(24, 'Jorge González García', 'jgonzal@mixteco.utm.mx', 17),
(25, 'Salomón González Martínez', 'salomong@mixteco.utm.mx', 17),
(26, 'Iván René Corrales Mendoza', 'icorrales@mixteco.utm.mx', 17),
(27, 'Maxvell Gustavo Jiménez Escamilla', 'maxvell@mixteco.utm.mx', 17),
(28, 'Julián Javier Carmona Rodríguez', 'jcarmona@mixteco.utm.mx', 17),
(29, 'Hugo David Sánchez Chávez', 'hchavez@mixteco.utm.mx', 17),
(30, 'Angel S. Cruz Félix', 'sinue@mixteco.utm.mx', 17),
(31, 'Ricardo Rosas Rodríguez', 'rrosas@mixteco.utm.mx', 17),
(32, 'Verónica Borja Macías', 'vero0304@mixteco.utm.mx', 7),
(33, 'Jesús Alejandro Hernández Tello', 'alheran@mixteco.utm.mx', 7),
(34, 'José del Carmen Jiménez Hernández', 'jcjim@mixteco.utm.mx', 7),
(35, 'Marisol López Cerino', 'marisol@mixteco.utm.mx', 7),
(36, 'Armando Romero Morales', 'armando@mixteco.utm.mx', 7),
(37, 'Juan Ramón Tijerina González', 'ramon@mixteco.utm.mx', 7),
(38, 'José Luis Carrasco Pacheco', 'pacheco@mixteco.utm.mx', 7),
(39, 'Rafael Martínez Martínez', 'rafaelmtz@mixteco.utm.mx', 17),
(40, 'Sergio Palafox Delgado', 'palafox@mixteco.utm.mx', 7),
(41, 'Alejandro Iván Aguirre Salado', 'aleaguirre@mixteco.utm.mx', 7),
(42, 'Virgilio Vázquez Hipólito', 'virgilio@mixteco.utm.mx', 7),
(43, 'Erik Germán Ramos Pérez', 'erikue@gmail.com', 2),
(44, 'Octavio Alberto Agustín Aquino', 'octavioalberto@mixteco.utm.mx', 7),
(45, 'Moisés Emmanuel Ramírez Guzmán', 'merg@mixteco.utm.mx', 2),
(46, 'Raúl Cruz Barbosa', 'rcruz@mixteco.utm.mx', 2),
(47, 'Manuel Hernández Gutiérrez', 'manuelhg@mixteco.utm.mx', 2),
(48, 'Moises Homero Sánchez López', 'moises@mixteco.utm.mx', 2),
(49, 'Everth Haydee Rocha Trejo', 'everth@mixteco.utm.mx', 2),
(50, 'David Martínez Torres', 'dtorres@mixteco.utm.mx', 2),
(51, 'Luis Anselmo Zarza López', 'zarza@mixteco.utm.mx', 2),
(52, 'Mario Alberto Moreno Rocha', 'mmoreno@mixteco.utm.mx', 2),
(53, 'Carlos Alberto Fernández  y Fernández', 'caff@mixteco.utm.mx', 2),
(54, 'Verónica Rodríguez López', 'veromix@mixteco.utm.mx', 2),
(55, 'Enrique Alejandro López López', 'alopez@mixteco.utm.mx', 2),
(56, 'Gerardo Cruz González', 'gercruz@mixteco.utm.mx', 2),
(57, 'Jorge Arturo Hernández Perales', 'jahdezp@mixteco.utm.mx', 2),
(58, 'Juan Juárez Fuentes', 'jjf@mixteco.utm.mx', 2),
(59, 'María Esperanza Pérez Cordoba Sánchez', 'mapercor@mixteco.utm.mx', 2),
(60, 'Mónica Edith García García', 'mgarcia@mixteco.utm.mx', 2),
(61, 'Ricardo Ruiz Rodríguez', 'rruiz@mixteco.utm.mx', 2),
(62, 'Laura Catalina Torres Araujo', 'ltaraujo@mixteco.utm.mx', 2),
(63, 'Hugo Enrique Martínez Cortés', 'hugoe@mixteco.utm.mx', 2),
(64, 'Celia Bertha Reyes Espinoza', 'creyes@mixteco.utm.mx', 2),
(65, 'Wendy Yaneth García Martínez', 'yaneth@mixteco.utm.mx', 2),
(66, 'Liliana Eneida Sánchez Platas', 'liliana@mixteco.utm.mx', 3),
(67, 'Fernando Iturbide Jiménez', 'iturbide@mixteco.utm.mx', 3),
(68, 'Maria De La Luz Palacios Villavicencio', 'luzpavi@mixteco.utm.mx', 3),
(69, 'Eruvid Cortés Camacho', 'eruvid@mixteco.utm.mx', 3),
(70, 'Alejandra Velarde Galván', 'alevelar@mixteco.utm.mx', 3),
(71, 'Alfonso Acosta Romero', 'acosta@mixteco.utm.mx', 3),
(72, 'Jorge Vázquez  Sánchez', 'jvazquez@mixteco.utm.mx', 3),
(73, 'Alejandro Alberto Bravo Guzmán', 'abravo@mixteco.utm.mx', 3),
(74, 'María del Rubí Olivos Contreras', 'rubi@mixteco.utm.mx', 3),
(75, 'Consuelo Jaqueline Estrada Bautista', 'jaesba@mixteco.utm.mx', 3),
(76, 'Oscar Díaz De León Sánchez', 'odiaz@mixteco.utm.mx', 3),
(77, 'Armando López Torres', 'altorres@mixteco.utm.mx', 3),
(78, 'Agustin Santiago Alvarado', 'santiago@mixteco.utm.mx', 50),
(79, 'Mario Márquez Miranda', 'mmarquez@mixteco.utm.mx', 11),
(80, 'Moisés Manzano Herrera', 'mmanzano@mixteco.utm.mx', 11),
(81, 'Ignacio Hernández Castillo', 'castillo@mixteco.utm.mx', 11),
(82, 'Álvaro Jesús Mendoza Jasso', 'alvaromj@mixteco.utm.mx', 11),
(83, 'Orquídea Sánchez López', 'orquidea@mixteco.utm.mx', 11),
(84, 'Carlos Vázquez Cid De León', 'carlosvazquezc@mixteco.utm.mx', 11),
(85, 'Elizabeth Duarte Beltrán', 'eduarte@mixteco.utm.mx', 11),
(86, 'José Alfredo Carazo  Luna', 'alfredo@mixteco.utm.mx', 11),
(87, 'Salvador Montesinos González', 'smontesinos@mixteco.utm.mx', 11),
(88, 'Beatriz Hernández Carlos', 'bhcarlos@mixteco.utm.mx', 36),
(89, 'Norma Francenia Santos Sánchez', 'nsantos@mixteco.utm.mx', 6),
(90, 'Raúl Salas Coronado', 'rsalas@mixteco.utm.mx', 6),
(91, 'Rogelio Valadez Blanco', 'rvaladez@mixteco.utm.mx', 6),
(92, 'Edith Graciela González Mondragón', 'edith@mixteco.utm.mx', 6),
(93, 'Mirna Patricia Santiago Gómez', 'patsanmx@mixteco.utm.mx', 6),
(94, 'Paula Cecilia Guadarrama Mendoza', 'pcgm@mixteco.utm.mx', 6),
(96, 'Alma Yadira Salazar Govea', 'almasalazar@mixteco.utm.mx', 6),
(97, 'Luz Hermila Villalobos Delgado', 'vidluz@mixteco.utm.mx', 6),
(98, 'Enrique Lemus Fuentes', 'elf@mixteco.utm.mx', 6),
(100, 'Juana Ramírez Andrade', 'jramirez@mixteco.utm.mx', 6),
(101, 'María Gricelda Bravo Villa', 'gris@mixteco.utm.mx', 6),
(105, 'Virginia Berrón Lara', 'berron@mixteco.utm.mx', 58),
(107, 'Irma Salinas Pérez', 'isalinas@mixteco.utm.mx', 50),
(108, 'José Aníbal Arias Aguilar', 'anibal@mixteco.utm.mx', 50),
(109, 'Ivan Antonio Garcia Pacheco', 'ivan@mixteco.utm.mx', 50),
(110, 'Carla Leninca Pacheco Agüero', 'leninca@mixteco.utm.mx', 58),
(111, 'Juan Carlos Duran Salazar', 'jcds@mixteco.utm.mx', 50),
(112, 'Domingo Salazar Mendoza', 'dsalazar@mixteco.utm.mx', 6),
(115, 'Víctor Rodolfo Escalante Jarero', 'viresc@mixteco.utm.mx', 5),
(116, 'Conrado Aguilar Cruz', 'conrado@mixteco.utm.mx', 5),
(117, 'Mónica Teresa Espinosa Espíndola', 'monitte@mixteco.utm.mx', 5),
(118, 'Juan Arturo Vargas Santiago', 'jvargas@mixteco.utm.mx', 5),
(119, 'Cecilia Ibarra Cantú', 'cantu@mixteco.utm.mx', 5),
(120, 'Lilia Alejandra Flores Castillo', 'floresaly22@mixteco.utm.mx', 5),
(121, 'Perseo Rosales Reyes', 'perseo@mixteco.utm.mx', 5),
(122, 'Olivia Allende-Hernández', 'oallende@mixteco.utm.mx', 5),
(123, 'Maria Guadalupe Juana Noriega Gómez ', 'gnoriega@mixteco.utm.mx', 5),
(124, 'Iliana Herrera Arellano', 'iliana@mixteco.utm.mx', 5),
(125, 'Adriana Mejía Alcauter', 'alcauter@mixteco.utm.mx', 5),
(126, 'Miguel Ángel Coronado Alcántara', 'corona@mixteco.utm.mx', 5),
(127, 'María De Jesús Pérez Álvarez', 'mjesus@mixteco.utm.mx', 5),
(128, 'Yannet Paz Calderón', 'ypaz@mixteco.utm.mx', 5),
(129, 'María Luisa Antonieta Guerrero Ramírez', 'grmary@mixteco.utm.mx', 5),
(130, 'Pablo Tamariz Domínguez', 'pabtamar@mixteco.utm.mx', 5),
(131, 'Evelia Acevedo Villegas', 'evelia@mixteco.utm.mx', 5),
(132, 'Ricardo García Jiménez', 'rgarcia@mixteco.utm.mx', 5),
(133, 'Martín Carlos Ramales Osorio', 'mramales@mixteco.utm.mx', 5),
(134, 'Francisca Adriana Sánchez Meza', 'fadriana@mixteco.utm.mx', 5),
(135, 'Martín Reyes García', 'mreyesg@mixteco.utm.mx', 5),
(136, 'María Del Carmen Bartolo Moscosa', 'carmenb@mixteco.utm.mx', 5),
(137, 'Enrique Guzmán Ramírez', 'eguzman@mixteco.utm.mx', 4),
(138, 'Marco Antonio Contreras Ordaz', 'marco.contreras@mixteco.utm.mx', 4),
(139, 'José Antonio Moreno Espinosa', 'jamoreno@mixteco.utm.mx', 4),
(140, 'Esteban Osvaldo Guerrero Ramírez', 'eguerrero@mixteco.utm.mx', 4),
(141, 'Felipe Santiago Espinosa', 'fsantiag@mixteco.utm.mx', 4),
(142, 'Heriberto  Ildefonso Hernández Martínez', 'hhdez@mixteco.utm.mx', 4),
(143, 'Alejandro Ernesto Ramírez González', 'ocetxim@mixteco.utm.mx', 4),
(144, 'Fermín Hugo Ramírez Leyva', 'hugo@mixteco.utm.mx', 4),
(145, 'Felipe de Jesús Rivera López', 'frivera@mixteco.utm.mx', 4),
(146, 'Enrique Espinosa  Justo', 'ejusto@mixteco.utm.mx', 4),
(147, 'Edgardo Yescas Mendoza', 'yescas@mixteco.utm.mx', 4),
(148, 'Hugo Suárez Onofre', 'hsuarez@mixteco.utm.mx', 4),
(149, 'Arturo Pablo Sandoval García', 'arturosg@mixteco.utm.mx', 4),
(150, 'Jesús Linares Flores', 'jlinares@mixteco.utm.mx', 14),
(151, 'Antonio Orantes Molina', 'tonito@mixteco.utm.mx', 14),
(152, 'Carlos García Rodríguez', 'sofosmaster@mixteco.utm.mx', 14),
(153, 'Manuel Arias Montiel', 'mam@mixteco.utm.mx', 14),
(154, 'Rosebet Miranda Luna', 'rmiranda@mixteco.utm.mx', 14),
(155, 'Alberto Antonio  García', 'antoniog@mixteco.utm.mx', 14),
(156, 'Jorge Luis Barahona Avalos', 'jbarahona@mixteco.utm.mx', 14),
(157, 'Richard Jacinto Marquez Contreras', 'rmarquez@mixteco.utm.mx', 14),
(158, 'Laura Marquez De Santis', 'lauramar@mixteco.utm.mx', 14),
(159, 'Víctor Manuel Cruz Martínez', 'vmcruzm@mixteco.utm.mx', 31),
(160, 'Dulce María Clemente Guerrero', 'dulce@mixteco.utm.mx', 3),
(161, 'Armando Rosas González', 'arosas@mixteco.utm.mx', 3),
(162, 'Emmanuel Abdías Romano Castillo', 'aromano@mixteco.utm.mx', 7),
(163, 'Esther Lugo González', 'elugog@mixteco.utm.mx', 14),
(164, 'Arturo Tellez Velázquez', 'atellezv@mixteco.utm.mx', 2),
(165, 'José Antonio Juárez Abad', 'abad@mixteco.utm.mx', 4),
(166, 'Jesús Godofredo López Luna', 'jesuslopezluna@mixteco.utm.mx', 5),
(167, 'Martha Angélica Ruíz González', 'martharuiz@mixteco.utm.mx', 5),
(168, 'Ignacio Castellanos Balderas', 'cabi@mixteco.utm.mx', 5),
(169, 'Guillermo Juárez López', 'gjuarezl@mixteco.utm.mx', 12),
(170, 'Josefina Calvo Cortés', 'jcalvo@mixteco.utm.mx', 5),
(171, 'Laura Trujillo Soberanes', 'ltrujillo@mixteco.utm.mx', 5),
(172, 'Carlos Alberto Peral Cisneros', 'carlos.peral@mixteco.utm.mx', 3),
(173, 'Ivonne Maya Espinoza', 'maya@mixteco.utm.mx', 5),
(174, 'Itzcóatl Bolaños Gómez', 'itzco80@mixteco.utm.mx', 3),
(176, 'José Rodríguez Lázaro', 'jose@mixteco.utm.mx', 3),
(177, 'María del Rosario Barradas Martínez', 'rosario@mixteco.utm.mx', 5),
(178, 'Eduardo Sánchez Soto', 'esanchez@mixteco.utm.mx', 2),
(179, 'José Gabriel Mendoza Larios', 'jgml@mixteco.utm.mx', 31),
(180, 'Thalia Isolda Ramírez Reyes', 'thaliarr@mixteco.utm.mx', 59),
(181, 'Edgar Guevara Avendaño', 'edkarguevaraa@gmail.com', 59),
(182, 'Ricardo Tapia Herrera', 'rtapia@mixteco.utm.mx', 61),
(183, 'Yoshaira Soledad Alexandres Carrizosa', 'yoshi@mixteco.utm.mx', 5),
(184, 'Ignacio Arroyo Fernández', 'iaf@mixteco.utm.mx', 62),
(185, 'Beatriz Alejandra Orduña Muñoz', 'anonimo@empresariales', 5),
(186, 'José Antonio García Hernández', 'josegahez@mixteco.utm.mx', 2),
(187, 'Héctor Gerardo Campos Silva', 'hcampos@mixteco.utm.mx', 32),
(188, ' Jesús Díaz Reyes', 'jesusdiaz@mixteco.utm.mx', 7),
(189, 'Christian Eduardo Millán Hernández', 'cmillanh@mixteco.utm.mx', 2),
(190, 'Iván Alberto Guillen Cancino', 'iguillenc@mixteco.utm.mx', 14),
(191, 'Alexis Vázquez Villa', 'avazquez@mixteco.utm.mx', 17),
(192, 'Eduardo Barredo Hernández', 'eduardin@mixteco.utm.mx', 31),
(193, 'Arturo Hernández Méndez', 'arturohm54@mixteco.utm.mx', 31),
(194, 'Víctor Hugo Castellanos García', 'victorhugo@mixteco.utm.mx', 3),
(195, 'Gabriel Gerónimo Castillo', 'gcgero@mixteco.utm.mx', 2),
(196, 'Tomás Pérez Becerra', 'tomas@mixteco.utm.mx', 7),
(197, 'José Eduardo Cruz Mayo', 'eduardomayo@mixteco.utm.mx', 31),
(198, 'Oscar David Ramìrez Càrdenas', 'odramirez@mixteco.utm.mx', 61),
(199, 'Jorge Arellano Hernàndez', 'jarellano@mixteco.utm.mx', 7),
(200, 'Cenobio Yescas Aparicio', 'cenobio@mixteco.utm.mx', 7),
(201, 'María del Carmen López Bautista', 'maria.lopez@mixteco.utm.mx', 55),
(202, 'Héctor Manuel Arreaga González', 'arreagahm@mixteco.utm.mx', 6),
(203, 'José Juan Nicanor Méndez', 'josejuan@mixteco.utm.mx', 52),
(204, 'Mirna Denisse Barreiro Argüelles', 'mdbarreiro@mixteco.utm.mx', 17),
(205, 'Mario Zaragoza', 'marioz@mixteco.utm.mx', 4),
(206, 'Tania Martinez Manzo', 'taniam@mixteco.utm.mx', 4),
(207, 'Juan Javier Montesinos Garcìa', 'jmontesinos@mixteco.utm.mx', 14),
(208, 'Luis Vázquez Sánchez', 'luisvazquez@mixteco.utm.mx', 14),
(209, 'Luis Eduardo Angoa Caballero', 'angoaprovis@mixteco.utm.mx', 5),
(210, 'María Yesica Espinosa Cerón', 'yceron@mixteco.utm.mx', 17),
(211, 'Saúl Solorio Fernández', 'solorio@mixteco.utm.mx', 7),
(212, 'Rafael Aguilar Alderete', 'raguilaralderete@mixteco.utm.mx', 17),
(213, 'José Alfredo Soto Álvarez', 'jose.alfredo@mixteco.utm.mx', 17),
(214, 'Jetzael Gustavo Barragán Chávez', 'jbarragan@mixteco.utm.mx', 32),
(215, 'Elfego Villalba Cruz', 'elfego@mixteco.utm.mx', 32),
(216, 'Romeo García Báez', 'romeo.garcia@mixteco.utm.mx', 5),
(217, 'Galdino Cardenal Santos Reyes', 'galdino.cardel@mixteco.utm.mx', 31),
(218, 'David Bedolla Martínez', 'dbedolla@mixteco.utm.mx', 31),
(219, 'Mario Enrique Herrera Cordero', 'marcor@mixteco.utm.mx', 14),
(220, 'Pedro Alberto Antonio Soto', 'pedroantonio@mixteco.utm.mx', 7),
(221, 'Juan Montes Pérez', 'juanmp@mixteco.utm.mx', 17),
(222, 'Enrique Valdés Pliego', 'plaza@mixteco.utm.mx', 5),
(223, 'Ulises Ramírez Meza', 'ulisesrmeza@mixteco.utm.mx', 17),
(224, 'Miguel Alberto Domínguez Gurría', 'madg@mixteco.utm.mx', 50),
(225, 'Carlos Alberto Martínez Sandoval', 'carlosmtz@mixteco.utm.mx', 2),
(226, 'Rafael Adrian García García', 'rafagarcia@mixteco.utm.mx', 14),
(227, 'Araceli Hernández Jiménez', 'aracelihj@mixteco.utm.mx', 5),
(228, 'Onésimo Chavez López', 'ochavez@mixteco.utm.mx', 5),
(229, 'Leyver Ponce Ruiz', 'ponce@mixteco.utm.mx', 5),
(230, 'Romer Daniel Oyola Guzmán', 'oyola_romer@mixteco.utm.mx', 32),
(231, 'Ulises Pérez Salmorán', 'ulisesps@mixteco.utm.mx', 5),
(232, 'Mónica Leticia Mejía Ramírez', 'monicamejia@mixteco.utm.mx', 5),
(233, 'Rebeca Hernández', 'rebecahdz@mixteco.utm.mx', 5),
(234, 'Profesor 1 Empresariales', 'profesor1empresariales@mixteco.utm.mx', 5),
(235, 'Mónica Morales Jiménez', 'mmoralesj@mixteco.utm.mx', 6),
(236, 'Guyelmo García Santiago', 'guyelmo_gs@mixteco.utm.mx', 32),
(237, 'Pamela Bibiana Márquez Arellano', 'pamelamqz@mixteco.utm.mx', 32),
(238, 'Eliezer Luna Rivera', 'Eliezer@mixteco.utm.mx', 32),
(239, 'María de Jesús Martínez López', 'mmartinez@mixteco.utm.mx', 17),
(240, 'Enrique Reyes Arzola', 'enriquereyesarzola@mixteco.utm.mx', 11),
(241, 'Claudia Janette Urbano López', 'claudiaurbano@mixteco.utm.mx', 5),
(242, 'Rocío Martínez González', 'rosmag@mixteco.utm.mx', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesoryarticulo`
--

CREATE TABLE `profesoryarticulo` (
  `correo` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `numero` bigint(11) NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '1',
  `validado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesoryarticulo`
--

INSERT INTO `profesoryarticulo` (`correo`, `numero`, `pos`, `validado`) VALUES
('abad@mixteco.utm.mx', 1, 1, 1),
('grmary@mixteco.utm.mx', 2, 1, 1),
('jgonzal@mixteco.utm.mx', 3, 1, 1),
('solorio@mixteco.utm.mx', 4, 1, 1),
('hcampos@mixteco.utm.mx', 5, 1, 1),
('cabi@mixteco.utm.mx', 6, 1, 1),
('ltrujillo@mixteco.utm.mx', 7, 1, 1),
('martharuiz@mixteco.utm.mx', 8, 1, 1),
('gcgero@mixteco.utm.mx', 9, 1, 1),
('ypaz@mixteco.utm.mx', 10, 1, 1),
('enrique@gs.utm.mx', 11, 1, 1),
('hugo@mixteco.utm.mx', 12, 1, 1),
('rebecahdz@mixteco.utm.mx', 13, 1, 1),
('castillo@mixteco.utm.mx', 14, 1, 0),
('mdbarreiro@mixteco.utm.mx', 15, 1, 1),
('eduardin@mixteco.utm.mx', 16, 1, 1),
('oyola_romer@mixteco.utm.mx', 17, 1, 1),
('fadriana@mixteco.utm.mx', 2, 2, 1),
('octavioalberto@mixteco.utm.mx', 2, 3, 1),
('thaliarr@mixteco.utm.mx', 9, 2, 1),
('pcgm@mixteco.utm.mx', 14, 2, 0),
('alevelar@mixteco.utm.mx', 14, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesorycomision`
--

CREATE TABLE `profesorycomision` (
  `id` bigint(11) NOT NULL,
  `correoProfesor` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `idComision` bigint(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `final` date DEFAULT NULL,
  `comprobante` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesorycomision`
--

INSERT INTO `profesorycomision` (`id`, `correoProfesor`, `idComision`, `pos`, `final`, `comprobante`) VALUES
(1, 'conrado@mixteco.utm.mx', 1, 2, NULL, '20180928105904caff@mixteco.utm.mx.pdf'),
(2, 'salomong@mixteco.utm.mx', 2, 1, NULL, ''),
(3, 'profesor1empresariales@mixteco.utm.mx', 3, 1, NULL, ' '),
(4, 'marioz@mixteco.utm.mx', 4, 2, NULL, ' '),
(5, 'carlos.peral@mixteco.utm.mx', 5, 2, NULL, ' '),
(6, 'ejusto@mixteco.utm.mx', 6, 1, NULL, ' '),
(7, 'maxvell@mixteco.utm.mx', 7, 1, NULL, ' '),
(8, 'marcor@mixteco.utm.mx', 8, 2, NULL, ' '),
(9, 'sofosmaster@mixteco.utm.mx', 9, 1, NULL, ' '),
(10, 'cabi@mixteco.utm.mx', 10, 2, NULL, ' '),
(11, 'enriquereyesarzola@mixteco.utm.mx', 11, 1, NULL, ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesorymateria`
--

CREATE TABLE `profesorymateria` (
  `profesor` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `idMateria` bigint(20) NOT NULL,
  `grupo` int(11) NOT NULL,
  `anyo` int(11) NOT NULL,
  `nombrePeriodo` text COLLATE utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesorymateria`
--

INSERT INTO `profesorymateria` (`profesor`, `idMateria`, `grupo`, `anyo`, `nombrePeriodo`, `id`) VALUES
('hcampos@mixteco.utm.mx', 1, 0, 2017, 'Verano', 1),
('rafagarcia@mixteco.utm.mx', 2, 0, 2017, 'Verano', 2),
('liliana@mixteco.utm.mx', 3, 0, 2017, 'Verano', 3),
('yaneth@mixteco.utm.mx', 3, 1, 2017, 'Verano', 4),
('profesor1empresariales@mixteco.utm.mx', 4, 0, 2017, 'Verano', 5),
('jaesba@mixteco.utm.mx', 5, 0, 2017, 'A', 6),
('jaesba@mixteco.utm.mx', 6, 0, 2017, 'B', 7),
('ejusto@mixteco.utm.mx', 7, 0, 2017, 'Verano', 8),
('rafagarcia@mixteco.utm.mx', 8, 0, 2017, 'Verano', 9),
('merg@mixteco.utm.mx', 9, 0, 2017, 'Verano', 10),
('jaesba@mixteco.utm.mx', 10, 0, 2017, 'Verano', 11),
('profesor1empresariales@mixteco.utm.mx', 11, 0, 2017, 'Verano', 12),
('rafagarcia@mixteco.utm.mx', 12, 0, 2017, 'A', 13),
('pamelamqz@mixteco.utm.mx', 13, 0, 2017, 'B', 14),
('sofosmaster@mixteco.utm.mx', 14, 0, 2017, 'B', 15),
('profesor1empresariales@mixteco.utm.mx', 15, 0, 2017, 'B', 16),
('virgilio@mixteco.utm.mx', 16, 0, 2017, 'A', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesorytesis`
--

CREATE TABLE `profesorytesis` (
  `correo` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `id` bigint(20) NOT NULL,
  `rol` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesorytesis`
--

INSERT INTO `profesorytesis` (`correo`, `id`, `rol`) VALUES
('sreyes@mixteco.utm.mx', 1, 'Director'),
('ana.olvera@mixteco.utm.mx', 2, 'Director'),
('floresaly22@mixteco.utm.mx', 3, 'Director'),
('creyes@mixteco.utm.mx', 4, 'Director'),
('mapercor@mixteco.utm.mx', 5, 'Director'),
('edith@mixteco.utm.mx', 6, 'Director'),
('arturosg@mixteco.utm.mx', 7, 'Director'),
('ejusto@mixteco.utm.mx', 8, 'Director'),
('enrique@gs.utm.mx', 9, 'Director'),
('enrique@gs.utm.mx', 10, 'Director'),
('ponce@mixteco.utm.mx', 11, 'Director'),
('angoaprovis@mixteco.utm.mx', 12, 'Director');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sni`
--

CREATE TABLE `sni` (
  `correoProfesor` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `nivelSNI` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `sni`
--

INSERT INTO `sni` (`correoProfesor`, `inicio`, `fin`, `nivelSNI`) VALUES
('rafaelmtz@mixteco.utm.mx', '2020-01-01', '2024-12-31', 'Nivel I'),
('avallejo@mixteco.utm.mx', '2024-01-30', '2025-12-31', 'Nivel I'),
('franco@mixteco.utm.mx', '2023-01-24', '2025-05-12', 'Nivel I'),
('lalvarez@mixteco.utm.mx', '2022-01-24', '2025-05-12', 'Nivel II'),
('ccroldan@mixteco.utm.mx', '2023-05-03', '2025-12-31', 'Nivel I'),
('castro@mixteco.utm.mx', '2023-07-21', '2023-09-30', 'Nivel II'),
('jlopez@mixteco.utm.mx', '2023-01-01', '2025-12-31', 'Nivel I'),
('jmhm@mixteco.utm.mx', '2024-01-01', '2025-12-31', 'Nivel II'),
('lanchoga@mixteco.utm.mx', '2020-12-31', '2022-11-30', 'Nivel I'),
('castillo@mixteco.utm.mx', '2024-12-01', '2025-05-12', 'Nivel III'),
('alvaromj@mixteco.utm.mx', '2023-01-01', '2025-05-12', 'Nivel I'),
('orquidea@mixteco.utm.mx', '2023-01-01', '2027-01-01', 'Nivel I'),
('carlosvazquezc@mixteco.utm.mx', '2019-01-01', '2021-09-30', 'Nivel I'),
('eduarte@mixteco.utm.mx', '2023-01-12', '2028-09-30', 'Nivel I'),
('alfredo@mixteco.utm.mx', '2023-01-01', '2026-07-20', 'Nivel II'),
('mario.lomeli@gmail.com', '2023-01-01', '2027-01-01', 'Nivel I'),
('vmcruzm@mixteco.utm.mx', '2024-05-06', '2027-01-01', 'Nivel I'),
('dulce@mixteco.utm.mx', '2022-01-01', '2026-07-20', 'Nivel I'),
('arosas@mixteco.utm.mx', '2022-01-01', '2026-07-20', 'Nivel I'),
('aromano@mixteco.utm.mx', '2024-07-01', '2026-07-20', 'Nivel I'),
('elugog@mixteco.utm.mx', '2020-06-02', '2025-12-31', 'Nivel II'),
('atellezv@mixteco.utm.mx', '2024-07-01', '2025-12-31', 'Nivel II'),
('abad@mixteco.utm.mx', '2024-07-01', '2025-12-31', 'Nivel I'),
('profesor1empresariales@mixteco.utm.mx', '2019-02-06', '2026-07-20', 'Nivel I'),
('mmoralesj@mixteco.utm.mx', '2023-01-01', '2026-07-20', 'Nivel I'),
('guyelmo_gs@mixteco.utm.mx', '2023-01-01', '2025-12-31', 'Nivel I'),
('pamelamqz@mixteco.utm.mx', '2023-01-01', '2025-12-31', 'Nivel I'),
('Eliezer@mixteco.utm.mx', '2024-06-30', '2025-12-31', 'Nivel I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesistas`
--

CREATE TABLE `tesistas` (
  `matricula` text COLLATE utf8_bin NOT NULL,
  `status` text COLLATE utf8_bin NOT NULL,
  `inicioTesis` date NOT NULL,
  `finTesis` date NOT NULL,
  `nombreTesis` text COLLATE utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL,
  `nombreEstudiante` text COLLATE utf8_bin NOT NULL,
  `nivel` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'Licenciatura',
  `comprobante` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tesistas`
--

INSERT INTO `tesistas` (`matricula`, `status`, `inicioTesis`, `finTesis`, `nombreTesis`, `id`, `nombreEstudiante`, `nivel`, `comprobante`) VALUES
('2009070114', 'En proceso', '2015-11-30', '2016-01-01', 'El método de variación total como un método de Regularización\r\ndel problema de reconstrucción de dominios perdidos en imágenes', 1, '', 'Licenciatura', ''),
('2009070112', 'Terminada', '2020-12-01', '2021-12-01', 'Tesis 2', 2, 'Saul', 'Licenciatura', ''),
('2109070112', 'En proceso', '2019-11-01', '2020-08-29', 'Tesis 3', 3, 'Pedro', 'Licenciatura', ' '),
('2209070112', 'En proceso', '2024-05-14', '2025-01-27', 'Tesis 4', 4, 'Alberto', 'Licenciatura', ' '),
('2209070321', 'En proceso', '2021-05-19', '2022-11-08', 'Tesis 5', 5, 'Ricardo', 'Licenciatura', ' '),
('2209170321', 'Terminada', '2022-10-16', '2024-07-01', 'Tesis 6', 6, 'Adrian', 'Licenciatura', ' '),
('2209170425', 'En proceso', '2018-04-19', '2018-12-23', 'Tesis 7', 7, 'Marcos', 'Licenciatura', ' '),
('2009070761', 'En proceso', '2024-01-23', '2024-11-23', 'Tesis 8', 8, 'Maria', 'Maestria', ' '),
('2019070363', 'En proceso', '2017-01-24', '2019-04-14', 'Tesis 9', 9, 'Ana', 'Licenciatura', ' '),
('2109074121', 'En proceso', '2023-04-03', '2024-02-14', 'Tesis 10', 10, 'Patricia', 'Licenciatura', ' '),
('2219075152', 'Terminada', '2019-08-19', '2023-05-01', 'Tesis 11', 11, 'Neydi', 'Maestria', ' '),
('2103050256', 'Terminada', '2025-01-23', '9999-01-01', 'Tesis 12', 12, 'Erik', 'Licenciatura', ' ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_act_profesor_email` (`correoProfesor`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `ca`
--
ALTER TABLE `ca`
  ADD KEY `fk_ca_profesor` (`correo`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_ca_instituto` (`idInstituto`);

--
-- Indices de la tabla `comision`
--
ALTER TABLE `comision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD KEY `fk_eventos_profesor` (`correoProfesor`);

--
-- Indices de la tabla `institutos`
--
ALTER TABLE `institutos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materias_planes` (`idPlan`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_planes_carreras` (`codigoCarrera`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_profesor_email` (`correo`),
  ADD KEY `idCarrera` (`idCarrera`);

--
-- Indices de la tabla `profesoryarticulo`
--
ALTER TABLE `profesoryarticulo`
  ADD KEY `fk_proart_profesor` (`correo`),
  ADD KEY `fk_profart_articulos` (`numero`);

--
-- Indices de la tabla `profesorycomision`
--
ALTER TABLE `profesorycomision`
  ADD KEY `fk_procom_profesor` (`correoProfesor`),
  ADD KEY `fk_profcom_comision` (`idComision`);

--
-- Indices de la tabla `profesorymateria`
--
ALTER TABLE `profesorymateria`
  ADD KEY `fk_profmat_profesor` (`profesor`),
  ADD KEY `fk_profmat_materias` (`idMateria`);

--
-- Indices de la tabla `profesorytesis`
--
ALTER TABLE `profesorytesis`
  ADD KEY `fk_proftesis_profesor` (`correo`),
  ADD KEY `fk_proftesis_tesistas` (`id`);

--
-- Indices de la tabla `sni`
--
ALTER TABLE `sni`
  ADD KEY `fk_sni_profesor` (`correoProfesor`);

--
-- Indices de la tabla `tesistas`
--
ALTER TABLE `tesistas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `fk_act_profesor` FOREIGN KEY (`correoProfesor`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ca`
--
ALTER TABLE `ca`
  ADD CONSTRAINT `fk_ca_profesor` FOREIGN KEY (`correo`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `fk_ca_instituto` FOREIGN KEY (`idInstituto`) REFERENCES `institutos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_profesor` FOREIGN KEY (`correoProfesor`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `fk_materias_planes` FOREIGN KEY (`idPlan`) REFERENCES `planes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `fk_planes_carreras` FOREIGN KEY (`codigoCarrera`) REFERENCES `carreras` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_prof_carreras` FOREIGN KEY (`idCarrera`) REFERENCES `carreras` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesoryarticulo`
--
ALTER TABLE `profesoryarticulo`
  ADD CONSTRAINT `fk_proart_profesor` FOREIGN KEY (`correo`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profart_articulos` FOREIGN KEY (`numero`) REFERENCES `articulos` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesorycomision`
--
ALTER TABLE `profesorycomision`
  ADD CONSTRAINT `fk_procom_profesor` FOREIGN KEY (`correoProfesor`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profcom_comision` FOREIGN KEY (`idComision`) REFERENCES `comision` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesorymateria`
--
ALTER TABLE `profesorymateria`
  ADD CONSTRAINT `fk_profmat_materias` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_profmat_profesor` FOREIGN KEY (`profesor`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesorytesis`
--
ALTER TABLE `profesorytesis`
  ADD CONSTRAINT `fk_proftesis_profesor` FOREIGN KEY (`correo`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proftesis_tesistas` FOREIGN KEY (`id`) REFERENCES `tesistas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sni`
--
ALTER TABLE `sni`
  ADD CONSTRAINT `fk_sni_profesor` FOREIGN KEY (`correoProfesor`) REFERENCES `profesor` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
