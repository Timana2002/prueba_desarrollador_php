-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2022 a las 09:39:07
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_department`
--

CREATE TABLE `appx_department` (
  `id_department` int(11) NOT NULL,
  `department_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appx_department`
--

INSERT INTO `appx_department` (`id_department`, `department_name`, `department_city`) VALUES
(3, 'CUNDIMARCA', 'BOGOTÁ'),
(4, 'BOYACÁ', 'TUNJA'),
(5, 'ARAUCA', 'ARAUCA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_educationlevel`
--

CREATE TABLE `appx_educationlevel` (
  `id_education` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appx_educationlevel`
--

INSERT INTO `appx_educationlevel` (`id_education`, `description`) VALUES
(1, 'TÉCNICO'),
(2, 'TECNOLOGO'),
(3, 'BACHILLER'),
(4, 'PROFESIONAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_employee`
--

CREATE TABLE `appx_employee` (
  `id_employee` int(11) NOT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `salary` int(20) NOT NULL,
  `educationlevel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appx_employee`
--

INSERT INTO `appx_employee` (`id_employee`, `lastname`, `department_id`, `salary`, `educationlevel_id`) VALUES
(1, 'Persona Uno', 5, 260000, 3),
(2, 'Persona Dos', 5, 2550000, 4),
(3, 'Persona Tres', 3, 45550000, 4),
(4, 'Persona Cuatro', 5, 5555553, 4),
(5, 'Persona Cinco', 4, 120000, 3),
(6, 'Carlos', 4, 800000, 3),
(7, 'Carlos', 4, 800000, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appx_department`
--
ALTER TABLE `appx_department`
  ADD PRIMARY KEY (`id_department`);

--
-- Indices de la tabla `appx_educationlevel`
--
ALTER TABLE `appx_educationlevel`
  ADD PRIMARY KEY (`id_education`);

--
-- Indices de la tabla `appx_employee`
--
ALTER TABLE `appx_employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `educationlevel_id` (`educationlevel_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appx_department`
--
ALTER TABLE `appx_department`
  MODIFY `id_department` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `appx_educationlevel`
--
ALTER TABLE `appx_educationlevel`
  MODIFY `id_education` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `appx_employee`
--
ALTER TABLE `appx_employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appx_employee`
--
ALTER TABLE `appx_employee`
  ADD CONSTRAINT `APPX_employee_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `appx_department` (`id_department`),
  ADD CONSTRAINT `APPX_employee_ibfk_2` FOREIGN KEY (`educationlevel_id`) REFERENCES `appx_educationlevel` (`id_education`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
