-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-11-2024 a las 01:43:38
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
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `contrato` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  `num_nomina` varchar(8) COLLATE utf8_bin NOT NULL,
  `numero_cliente` varchar(8) COLLATE utf8_bin NOT NULL,
  `valor` double NOT NULL,
  `fecha_operacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`contrato`, `id_producto`, `num_nomina`, `numero_cliente`, `valor`, `fecha_operacion`) VALUES
('00740797049002927038', 2, '11430001', 'OUOQQLWY', 150000.56, '2024-11-24'),
('00741124500079229905', 3, '67219248', 'E9YSXVSJ', 1, '2024-11-24'),
('00741308892009342730', 11, '56417784', 'NRAMPBCK', 54897.31, '2024-11-24'),
('00741525583229174253', 3, '65152580', 'M7NUKYTQ', 1, '2024-11-24'),
('00743235064974820395', 19, '77190960', 'ZE7P6S7M', 43000.98, '2024-11-24'),
('00743565507860549496', 3, '18265306', 'NRAMPBCK', 1, '2024-11-24'),
('00743720290733676981', 18, '56417784', 'UFC2852F', 750002.45, '2024-11-24'),
('00744327761986080255', 5, '14731331', 'UFC2852F', 1.5, '2024-11-24'),
('00745685532321983953', 11, '77190960', '4DGT0TYS', 123123.43, '2024-11-24'),
('00746526085899083038', 1, '72985619', 'C4IB8SZZ', 23000, '2024-11-24'),
('00746589133521054634', 16, '79263417', 'E2Q3N9XY', 80000, '2024-11-24'),
('00746628399350495205', 17, '46112654', '54MV4DZK', 98000.12, '2024-11-24'),
('00747287919570958883', 5, '72985619', 'UFC2852F', 2.5, '2024-11-24'),
('00747617525773559644', 13, '77190960', 'C11ODSVU', 345700.89, '2024-11-24'),
('00748284708669432114', 20, '72985619', 'W5ZF0KO1', 198005.67, '2024-11-24'),
('00748754286147371363', 7, '24870257', 'C11ODSVU', 1, '2024-11-24'),
('00749158804963760033', 1, '11430001', 'SNYHOHKO', 1762895.87, '2024-11-24'),
('00749290166213726628', 4, '46112654', '8K2QXZWG', 1, '2024-11-24'),
('00749420467548017962', 9, '29313095', 'STS8VXYC', 1, '2024-11-24'),
('00749928322276810767', 12, '67219248', 'ZMV2457L', 2456789.76, '2024-11-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`contrato`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `numero_cliente` (`numero_cliente`),
  ADD KEY `num_nomina` (`num_nomina`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `catalogo_productos` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`numero_cliente`) REFERENCES `clientes` (`numero_cliente`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`num_nomina`) REFERENCES `plantilla` (`num_nomina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
