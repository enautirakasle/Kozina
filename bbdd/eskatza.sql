-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2019 a las 10:46:41
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eskatza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `variedad` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cal_100` int(11) DEFAULT NULL,
  `proteinas_100` int(11) DEFAULT NULL,
  `grasas_100` int(11) DEFAULT NULL,
  `carbohidratos_100` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`id`, `nombre`, `variedad`, `descripcion`, `cal_100`, `proteinas_100`, `grasas_100`, `carbohidratos_100`) VALUES
(111, 'curri', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'cebolla', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'pimienta', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'pollo', NULL, 'ko ko k o', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `id_plato` int(11) NOT NULL,
  `id_alimento` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `id_plato`, `id_alimento`, `cantidad`) VALUES
(1, 3, 112, 500),
(2, 3, 111, 1),
(3, 3, 113, 1),
(4, 3, 114, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elavoracion` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`id`, `nombre`, `descripcion`, `elavoracion`) VALUES
(3, 'pollo al curri', NULL, '\r\n    El primer paso es sofreír en una sartén la cebolla y el ajo bien picados.\r\n    Cuando coja color añade el curry, la guindilla y una pizca del resto de especias, con las que conseguiréis aromatizar el pollo al curry. Remueve y deja que se cocine.\r\n    Añade el pollo troceado y bien salpimentado, mezcla y deja que se dore.\r\n    Después, introduce la nata y deja cocinar a fuego lento unos 10 minutos. Ya está listo este pollo al curry con nata.\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_plato` (`id_plato`,`id_alimento`),
  ADD KEY `id_ingrediente` (`id_alimento`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `alimentos` (`id`),
  ADD CONSTRAINT `ingredientes_ibfk_2` FOREIGN KEY (`id_plato`) REFERENCES `platos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
