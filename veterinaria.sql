-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 21:07:13
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueño`
--

CREATE TABLE `dueño` (
  `dni_dueño` int(11) NOT NULL,
  `nombre_dueño` varchar(100) NOT NULL,
  `apellido_dueño` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dueño`
--

INSERT INTO `dueño` (`dni_dueño`, `nombre_dueño`, `apellido_dueño`, `telefono`, `direccion`) VALUES
(23411092, 'Maria', 'Lopez', '3764586491', 'madrid 333'),
(28609968, 'Tomas', 'Perez', '3794658598', 'Cordoba 333'),
(33505420, 'Tere', 'Silva', '3265458798', 'La Rioja 435'),
(41562334, 'Jose', 'Sosa', '6487254682', 'libertad 123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_perro` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `fecha`, `id_perro`, `descripcion`, `monto`) VALUES
(951, '0000-00-00', 10, 'control', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `id_perro` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `dni_dueño` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueño`) VALUES
(10, 'luna', '0000-00-00', 'hembra', 28609968),
(209, 'osi', '0000-00-00', 'hembra', 33505420),
(501, 'mini', '0000-00-00', 'hembra', 41562334),
(601, 'tom', '0000-00-00', 'macho', 23411092);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueño`
--
ALTER TABLE `dueño`
  ADD PRIMARY KEY (`dni_dueño`),
  ADD UNIQUE KEY `dni_dueño` (`dni_dueño`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD UNIQUE KEY `id_historial` (`id_historial`),
  ADD KEY `id_perro` (`id_perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`id_perro`),
  ADD UNIQUE KEY `id_perro` (`id_perro`),
  ADD KEY `dni_dueño` (`dni_dueño`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_perro`) REFERENCES `perro` (`id_perro`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`dni_dueño`) REFERENCES `dueño` (`dni_dueño`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
