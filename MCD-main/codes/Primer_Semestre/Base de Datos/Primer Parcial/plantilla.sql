-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-11-2024 a las 01:43:32
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `MCD`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `num_nomina` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `primer_apellido` varchar(120) COLLATE utf8_bin NOT NULL,
  `segundo_apellido` varchar(120) COLLATE utf8_bin NOT NULL,
  `correo` text COLLATE utf8_bin NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `id_sucursal` varchar(4) COLLATE utf8_bin NOT NULL,
  `puesto` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`num_nomina`, `nombre`, `primer_apellido`, `segundo_apellido`, `correo`, `fecha_ingreso`, `fecha_salida`, `id_sucursal`, `puesto`) VALUES
('01308216', 'Cathie', 'Holton', 'Road', 'croad5@tripod.com', '2024-07-20', NULL, '2017', 'Ejecutivo Comercial'),
('03433724', 'Rufe', 'Barlass', 'Elliss', 'rellissd@telegraph.co.uk', '2024-06-07', NULL, '9035', 'Ejecutivo Comercial'),
('05932059', 'Maude', 'Yes', 'McWhannel', 'mmcwhannel0@marriott.com', '2024-07-16', NULL, '2104', 'Ejecutivo Comercial'),
('11430001', 'Adrian', 'Spaice', 'Langeley', 'alangeleyj@yellowbook.com', '2024-02-13', NULL, '2114', 'Ejecutivo Comercial'),
('14731331', 'Peadar', 'Blight', 'Castellani', 'pcastellanie@facebook.com', '2024-10-21', NULL, '8094', 'Asesor Digital'),
('18265306', 'Pyotr', 'Mountcastle', 'Realff', 'prealff4@usnews.com', '2024-06-14', NULL, '1424', 'Ejecutivo Comercial'),
('24870257', 'Livvie', 'Bree', 'Marcinkowski', 'lmarcinkowski8@cbsnews.com', '2024-05-14', NULL, '3023', 'Ejecutivo Comercial'),
('26327327', 'Charlene', 'Freeland', 'Glyn', 'cglyn9@shareasale.com', '2024-07-05', '2024-11-01', '3172', 'Ejecutivo Comercial'),
('29313095', 'Donella', 'Asquez', 'Vane', 'dvane7@apple.com', '2024-06-25', NULL, '7712', 'Asesor Digital'),
('46112654', 'Randie', 'Hannan', 'Bilsborrow', 'rbilsborrowi@bizjournals.com', '2024-01-04', '2024-09-27', '3581', 'Asesor Digital'),
('56380020', 'Lu', 'Di Dello', 'Josling', 'ljosling3@networksolutions.com', '2024-05-01', NULL, '0777', 'Ejecutivo Comercial'),
('56417784', 'Dulcia', 'Boxen', 'Tiesman', 'dtiesmanf@unblog.fr', '2024-06-01', '2024-10-17', '0618', 'Ejecutivo Comercial'),
('65152580', 'Emlyn', 'Ball', 'Barhems', 'ebarhems2@devhub.com', '2024-09-04', NULL, '1292', 'Ejecutivo Comercial'),
('67219248', 'Fenelia', 'Baroch', 'Pitcher', 'fpitcher1@comsenz.com', '2023-11-26', NULL, '9713', 'Asesor Digital'),
('72985619', 'Johanna', 'Yves', 'Rainard', 'jrainardh@ucoz.com', '2024-05-12', NULL, '8245', 'Ejecutivo Comercial'),
('77190960', 'Gus', 'Iannuzzi', 'Bratchell', 'gbratchellg@typepad.com', '2024-03-17', NULL, '8026', 'Ejecutivo Comercial'),
('78459375', 'Nara', 'Raff', 'Lude', 'nludec@oracle.com', '2023-12-06', NULL, '4847', 'Asesor Digital'),
('79263417', 'Karine', 'Lomath', 'Dehn', 'kdehnb@spotify.com', '2023-12-18', NULL, '6916', 'Ejecutivo Comercial'),
('87007599', 'Chilton', 'Pocknell', 'Shotter', 'cshottera@prlog.org', '2023-12-01', NULL, '5140', 'Asesor Digital'),
('96093156', 'Rodd', 'Ciani', 'Hanmer', 'rhanmer6@cornell.edu', '2024-03-29', NULL, '8757', 'Ejecutivo Comercial');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`num_nomina`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD CONSTRAINT `plantilla_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
