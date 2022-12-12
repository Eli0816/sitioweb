-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 21:37:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar` ()   BEGIN
	SELECT imagen FROM cursos WHERE id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar1` ()   BEGIN
	DELETE FROM cursos WHERE id=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cursos` ()   BEGIN
	SELECT * FROM cursos;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cursosdisponibles` ()   BEGIN	
	SELECT * FROM cursosdisponibles;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `imagen`) VALUES
(34, 'Shakirs Barria', '1670875739_maxresdefault.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosdisponibles`
--

CREATE TABLE `cursosdisponibles` (
  `id` int(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursosdisponibles`
--

INSERT INTO `cursosdisponibles` (`id`, `nombre`, `imagen`) VALUES
(26, 'PHP', '1624045787_1622960605_PHPGrow.png'),
(27, 'NODE', '1624045794_1623020017_NodeJSGrow.png'),
(28, 'JAVA SCRIPT', '624045787_1622960605_PHPGrow.png'),
(29, 'JAVA', '162404794_1623020017_NodeJSGrow.png'),
(30, 'PYTHON', '162045787_1622960605_PHPGrow.png'),
(31, 'C++', '162405794_1623020017_NodeJSGrow.png'),
(32, 'VISUALBASIC.NET', '1624045787_162960605_PHPGrow.png'),
(33, 'SCRUM', '1624045794_162302017_NodeJSGrow.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursosdisponibles`
--
ALTER TABLE `cursosdisponibles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `cursosdisponibles`
--
ALTER TABLE `cursosdisponibles`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
