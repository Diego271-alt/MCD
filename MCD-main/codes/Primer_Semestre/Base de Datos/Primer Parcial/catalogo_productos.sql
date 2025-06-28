-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-11-2024 a las 01:43:23
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
-- Estructura de tabla para la tabla `catalogo_productos`
--

CREATE TABLE `catalogo_productos` (
  `id` bigint(20) NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `metrica` text COLLATE utf8_bin NOT NULL,
  `familia` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catalogo_productos`
--

INSERT INTO `catalogo_productos` (`id`, `descripcion`, `metrica`, `familia`) VALUES
(1, 'Préstamo Personal Inmediato', 'IMPORTE', 'CONSUMO'),
(2, 'Adelanto Nómina', 'IMPORTE', 'CONSUMO'),
(3, 'Azul', 'PUNTOS', 'TDC'),
(4, 'Oro', 'PUNTOS', 'TDC'),
(5, 'Platinum', 'PUNTOS', 'TDC'),
(6, 'Infinite', 'PUNTOS', 'TDC'),
(7, 'IPN', 'PUNTOS', 'TDC'),
(8, 'UNAM', 'PUNTOS', 'TDC'),
(9, 'Rayados', 'PUNTOS', 'TDC'),
(10, 'Vida Segura Individual', 'PRIMA', 'SEGUROS'),
(11, 'Vida Segura Familiar', 'PRIMA', 'SEGUROS'),
(12, 'Vida Segura Empresas', 'PRIMA', 'SEGUROS'),
(13, 'Auto Seguro Flotilla', 'PRIMA', 'SEGUROS'),
(14, 'Auto Seguro Dinámico', 'PRIMA', 'SEGUROS'),
(15, 'Auto Seguro', 'PRIMA', 'SEGUROS'),
(16, 'Hogar Seguro', 'PRIMA', 'SEGUROS'),
(17, 'Seguro Estudia', 'PRIMA', 'SEGUROS'),
(18, 'Meta Segura', 'PRIMA', 'SEGUROS'),
(19, 'Seguro de Viaje', 'PRIMA', 'SEGUROS'),
(20, 'Terminal Punto de Venta', 'FACTURACION', 'TPV');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo_productos`
--
ALTER TABLE `catalogo_productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo_productos`
--
ALTER TABLE `catalogo_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
