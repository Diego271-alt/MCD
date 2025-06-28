-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-11-2024 a las 01:43:34
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
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombre_sucursal` text COLLATE utf8_bin NOT NULL,
  `nombre_division` text COLLATE utf8_bin NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre_sucursal`, `nombre_division`, `latitud`, `longitud`) VALUES
('0618', 'Plaza Aldama', 'BAJIO', -7.3055182, 110.4947314),
('0777', 'Moisés Solana', 'BAJIO', 33.8430437, 44.5219358),
('1292', 'Av. Ricardo Flores Magón', 'METROPOLITANA', 38.963066, 100.177294),
('1424', 'Tlaxco', 'SUR', 49.793263, 18.9515077),
('2017', 'Torre Reforma', 'METROPOLITANA', 49.8282067, 21.2002807),
('2104', 'Huatulco Santa Cruz', 'SUR', 46.23333, 29.83333),
('2114', 'Plaza La Cúspide', 'METROPOLITANA', -11.8480193, -55.5081012),
('3023', 'Centro Histórico Oaxaca', 'SUR', 56.0302709, 14.7602035),
('3172', 'Chiapas Zona Centro', 'SUR', -6.1418556, 106.8281623),
('3581', 'Nazario Ortiz Saltillo', 'NORESTE', 31.2481932, 35.1103736),
('4847', 'Municipio Santa Cruz Xoxocotlán', 'SUR', 30.453667, 114.872199),
('5140', 'San Pedro Pochutla', 'SUR', 56.155293, 13.7676059),
('6916', 'Francisco I. Madero', 'SUR', 10.21883, -83.274957),
('7712', 'Pino Suárez Monterrey', 'NOROESTE', 15.482604, -90.308511),
('8026', 'Av. Jorge Jiménez Cantú', 'METROPOLITANA', -44.7299187, -72.6822812),
('8094', 'Echegaray Periférico', 'METROPOLITANA', 59.6794853, 18.67843),
('8245', 'Autopista México Querétaro', 'METROPOLITANA', 65.4026, 21.1886684),
('8757', 'Valerio Trujano Huajuapan de León', 'SUR', -37.324188, 110.509841),
('9035', 'Parques Polanco', 'METROPOLITANA', -20.8420055, -40.7357215),
('9713', 'Sor Juana Inés de la Cruz', 'METROPOLITANA', 42.0040445, 21.3760767);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
