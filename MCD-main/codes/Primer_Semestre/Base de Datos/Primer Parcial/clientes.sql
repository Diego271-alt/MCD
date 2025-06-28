-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-11-2024 a las 01:43:29
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
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `numero_cliente` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `primer_apellido` text COLLATE utf8_bin NOT NULL,
  `segundo_apellido` text COLLATE utf8_bin NOT NULL,
  `correo` text COLLATE utf8_bin NOT NULL,
  `celular` text COLLATE utf8_bin NOT NULL,
  `fecha_apertura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`numero_cliente`, `nombre`, `primer_apellido`, `segundo_apellido`, `correo`, `celular`, `fecha_apertura`) VALUES
('4DGT0TYS', 'Darb', 'Pegg', 'Abdee', 'dabdee0@prweb.com', '9574028146', '2024-10-27'),
('54MV4DZK', 'Nell', 'Cullum', 'Pietrusiak', 'npietrusiakj@twitter.com', '9522128238', '2023-12-16'),
('8K2QXZWG', 'Pietra', 'Dalgetty', 'Mariolle', 'pmariolle2@elegantthemes.com', '9575865237', '2024-08-06'),
('C11ODSVU', 'Rowland', 'Mathiasen', 'Aaronson', 'raaronsond@techcrunch.com', '9538500600', '2024-04-07'),
('C4IB8SZZ', 'Davie', 'Popescu', 'Allsepp', 'dallsepp3@engadget.com', '9530553766', '2024-04-25'),
('E2Q3N9XY', 'Saba', 'Beeckx', 'Pitney', 'spitney9@drupal.org', '9585292633', '2024-04-21'),
('E9YSXVSJ', 'Francene', 'Boddie', 'Rowlett', 'frowlett6@1688.com', '9599128457', '2024-04-19'),
('HJW28W2L', 'Brooke', 'Guitt', 'Willcocks', 'bwillcocks5@fotki.com', '9556842857', '2024-02-03'),
('M7NUKYTQ', 'Jessica', 'Gajownik', 'Spadollini', 'jspadollinig@nifty.com', '9560817910', '2024-03-20'),
('NRAMPBCK', 'Jordon', 'Poetz', 'Tremeer', 'jtremeere@phpbb.com', '9567011174', '2023-12-16'),
('OUOQQLWY', 'Kurtis', 'Maybey', 'Fritschmann', 'kfritschmannb@bluehost.com', '9588395714', '2024-07-11'),
('S1593UMF', 'Ruthy', 'Janew', 'Gosart', 'rgosart1@mapy.cz', '9520724488', '2024-11-06'),
('SNYHOHKO', 'Jordanna', 'Reburn', 'Chucks', 'jchucksc@cpanel.net', '9588173031', '2024-01-06'),
('SSG9EZPA', 'Marlena', 'Crossthwaite', 'Lavigne', 'mlavigne7@studiopress.com', '9514011486', '2023-11-24'),
('STS8VXYC', 'Riannon', 'Rosenshine', 'Malbon', 'rmalbon8@printfriendly.com', '9559679443', '2024-10-15'),
('UFC2852F', 'Neville', 'Caile', 'Du Fray', 'ndufrayi@npr.org', '9563622332', '2024-08-09'),
('W5ZF0KO1', 'Dalila', 'Hendin', 'Harpur', 'dharpura@vkontakte.ru', '9531082837', '2024-10-27'),
('X2L18VHF', 'Llywellyn', 'Doel', 'Greson', 'lgresonh@comcast.net', '9521428111', '2024-11-12'),
('ZE7P6S7M', 'Arie', 'Matchett', 'Wheway', 'awheway4@skyrock.com', '9516465583', '2024-02-06'),
('ZMV2457L', 'Lloyd', 'Strewther', 'Daniells', 'ldaniellsf@parallels.com', '9542231428', '2024-08-17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`numero_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
