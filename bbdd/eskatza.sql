-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2019 a las 00:09:34
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
(114, 'pollo', NULL, 'ko ko k o', NULL, NULL, NULL, NULL),
(115, 'laurel', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'semillasa de sesamo', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'mango', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'nata', NULL, NULL, NULL, NULL, NULL, NULL);

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
(4, 3, 114, 1000),
(5, 4, 112, 400),
(6, 4, 111, 5),
(7, 4, 115, 2),
(8, 4, 117, 100),
(9, 4, 113, 3),
(10, 4, 114, 500),
(11, 4, 116, 2),
(12, 3, 118, 75);

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
(3, 'pollo al curri con nata', NULL, '\r\n    El primer paso es sofreír en una sartén la cebolla y el ajo bien picados.\r\n    Cuando coja color añade el curry, la guindilla y una pizca del resto de especias, con las que conseguiréis aromatizar el pollo al curry. Remueve y deja que se cocine.\r\n    Añade el pollo troceado y bien salpimentado, mezcla y deja que se dore.\r\n    Después, introduce la nata y deja cocinar a fuego lento unos 10 minutos. Ya está listo este pollo al curry con nata.\r\n'),
(4, 'pollo en salsa de curry y mango', NULL, 'Hervimos la pechuga de pollo en abundante agua salada, con las hojas de laurel y unos granos de pimienta negra, durante unos 20 minutos. Para ahorrar energía, podemos llevar el agua a ebullición, apagar el fuego y dejar que el pollo se cueza lentamente a la vez que se enfría, dentro de la cacerola tapada.\r\n\r\nUna vez frío, retiramos el pollo del líquido de la cocción (del que reservamos un vaso). Escurrimos, deshebramos usando las manos o dos tenedores, colocamos en un cuenco y añadimos la salsa de mango y curry. Nosotros hemos usado salsa de una conocida marca americana, pero podéis hacerla casera con la receta que más os guste.\r\n\r\nSi la mezcla queda muy espesa, añadimos un poco del líquido de la cocción del pollo. Cortamos el pan de pita por la mitad sin llegar al final, dejando una especie de bolsillo en el que introducir el relleno. Tostamos el pan y lo rellenamos con una cama de espinacas frescas, el pollo en salsa y cebolla morada cortada en juliana. Espolvoreamos con sésamo negro y servimos.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
