-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 10-10-2022 a las 13:52:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constellation`
--

CREATE TABLE `constellation` (
  `constellation_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `meaning` varchar(50) NOT NULL,
  `id_star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `constellation`
--

INSERT INTO `constellation` (`constellation_id`, `name`, `year_discovered`, `meaning`, `id_star`) VALUES
(27, 'Eridanuss', NULL, 'La palabra Eridanus o Erídano es el nombre de una ', 1),
(28, 'Eridanus', NULL, 'La palabra Eridanus o Erídano es el nombre de una ', 2),
(29, 'Cassiopeia', NULL, 'En la mitología griega, Casiopea o Casiepea era un', 3),
(30, 'Scorpius', NULL, 'El origen de la constelación se encuentra en la le', 4),
(31, 'Crux', 1589, 'Se denomina así porque su ubicación está próxima a', 5),
(32, 'Cancer', NULL, 'La constelación del cangrejo y la constelación de ', 6),
(33, 'Leo', NULL, 'Los mitógrafos griegos de la Antigüedad indicaban ', 7),
(34, 'Canis Maior', NULL, 'Mayor (Canis Maior) es una constelación que parece', 8),
(35, 'Andromeda', NULL, 'El término \"andrómeda\" o \"andromeda\" significa muj', 9),
(36, 'Taurus', NULL, 'Signo del zodíaco correspondiente a esta constelac', 10),
(37, 'Sagittarius', NULL, 'La palabra \"sagitario\" viene del latín \"sagitta\" (', 11),
(38, 'Cygnus', NULL, 'Cygnus (el cisne) es una constelación del hemisfer', 12),
(39, 'Sagitatio', NULL, 'La palabra \"sagitario\" viene del latín \"sagitta\" (', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galaxy`
--

CREATE TABLE `galaxy` (
  `galaxy_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `designations` varchar(40) DEFAULT NULL,
  `name_meaning` varchar(100) DEFAULT NULL,
  `id_constellation` int(11) NOT NULL,
  `is_visible_to_the_eye` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galaxy`
--

INSERT INTO `galaxy` (`galaxy_id`, `name`, `designations`, `name_meaning`, `id_constellation`, `is_visible_to_the_eye`) VALUES
(14, 'Espiral Intermedia', 'SAB', 'Se denomina galaxia espiral intermedia a una galaxia que, de acuerdo a su forma, se clasifica entre ', 1, 0),
(15, 'Intermedia Espeiral', 'SABB', 'Se denomina galaxia espiral intermedia a una galaxia que, de acuerdo a su forma, se clasifica entre ', 2, 0),
(16, 'Andromeda', 'M 31', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 3, 1),
(17, 'Andromeda', 'NGC 224', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 4, 1),
(18, 'Milky Way', 'SB', 'Vast nebulosity, in the form of a discontinuous band, which is made up of millions of stars and goes', 5, 1),
(19, 'Andromeda', 'UGC 454', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 5, 1),
(20, 'Andromeda', 'PGC 2557', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 6, 1),
(21, 'Galaxia enana del Can Mayor', 'NGC 1851', 'La Enana del Can Mayor, como su nombre lo dice, es una galaxia Enana ubicada en el Grupo Local (El d', 7, 0),
(22, 'Andromeda', '2C 56 (Core)', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 8, 1),
(23, 'Andromeda', 'CGCG 535-17', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 9, 1),
(24, 'Andromeda', 'MCG +07-02-016', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 10, 1),
(25, 'Milky Way', 'SBB', 'Vast nebulosity, in the form of a discontinuous band, which is made up of millions of stars and goes', 11, 1),
(26, 'Andromeda', 'IRAS 00400+4059', 'El término \"andrómeda\" o \"andromeda\" significa mujer que puede con todo. Andrómeda, constelación bor', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moon`
--

CREATE TABLE `moon` (
  `moon_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `year_discovered` int(11) DEFAULT NULL,
  `diameter_in_km` int(11) DEFAULT NULL,
  `id_planet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `moon`
--

INSERT INTO `moon` (`moon_id`, `name`, `year_discovered`, `diameter_in_km`, `id_planet`) VALUES
(1, 'Moon', NULL, 3476, 3),
(2, 'Phobos', 1877, 23, 4),
(3, 'Deimos', 1877, 13, 4),
(4, 'Io', 1610, 3630, 5),
(5, 'Europa', 1610, 3138, 5),
(6, 'Ganymede', 1610, 5262, 5),
(7, 'Callisto', 1610, 4800, 5),
(8, 'Amalthea', 1892, 200, 5),
(9, 'Himalia', 1904, 170, 5),
(10, 'Thebe', 1979, 90, 5),
(11, 'Mimas', 1789, 394, 6),
(12, 'Enceladus', 1789, 502, 6),
(13, 'Tethys', 1684, 1048, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planet`
--

CREATE TABLE `planet` (
  `planet_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `orbital_period_in_years` decimal(7,2) NOT NULL,
  `rotation_period_in_days` decimal(5,2) DEFAULT NULL,
  `has_moon` tinyint(1) NOT NULL,
  `id_star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planet`
--

INSERT INTO `planet` (`planet_id`, `name`, `orbital_period_in_years`, `rotation_period_in_days`, `has_moon`, `id_star`) VALUES
(1, 'Mercury', '0.24', '58.65', 0, 13),
(2, 'Venus', '0.62', '243.02', 0, 7),
(3, 'Earth', '1.00', '1.00', 1, 5),
(4, 'Mars', '1.88', '1.03', 1, 8),
(5, 'Jupiter', '11.86', '0.41', 1, 9),
(6, 'Saturn', '29.45', '0.44', 1, 4),
(7, 'Uranus', '84.02', '0.72', 1, 2),
(8, 'Neptune', '164.79', '0.67', 1, 1),
(9, 'Ceres', '4.60', '0.38', 0, 7),
(10, 'Orcus', '247.50', NULL, 1, 11),
(11, 'Pluto', '247.90', '6.39', 1, 11),
(12, 'Haumea', '283.80', '0.16', 1, 3),
(13, 'Quaoar', '288.00', '0.37', 1, 12),
(14, 'Makemake', '306.20', '0.95', 1, 6),
(15, 'Gonggong', '552.50', '0.93', 1, 1),
(16, 'Eris', '559.00', '14.56', 1, 9),
(17, 'Sedna', '12059.00', '0.43', 0, 8),
(18, 'Salacia', '273.98', '0.25', 1, 10),
(19, 'Varda', '313.12', '0.23', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `star`
--

CREATE TABLE `star` (
  `star_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `brightness_star` decimal(4,2) NOT NULL,
  `bavaria_designation` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `galaxy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `star`
--

INSERT INTO `star` (`star_id`, `name`, `brightness_star`, `bavaria_designation`, `designation`, `approval_date`, `galaxy_id`) VALUES
(1, 'Acamar', '99.99', 'θ1 Eridani A', 'HR 897', '2016-07-20', 14),
(2, 'Achernar', '99.99', 'α Eridani A', 'HR 472', '2016-06-30', 15),
(3, 'Achird', '0.07', 'η Cassiopeiae A', 'HR 219', '2017-09-05', 16),
(4, 'Acrab', '99.99', '1 Scorpio Aa', 'HR 4730', '2016-07-20', 17),
(5, 'Acrux', '0.77', 'α Cross Aa', 'HR 897', '2016-07-20', 18),
(6, 'Acubens', '99.99', 'α Cancer Aa', 'HR 3572', '2016-07-20', 19),
(7, 'Adhafera', '99.99', 'ζ Leonis Aa', 'HR 4031', '2016-07-20', 20),
(8, 'Adhara', '99.99', 'ε Canis Majoris A', 'HR 2618', '2016-08-21', 21),
(9, 'Adhil', '99.99', 'ξ of Andromeda', 'HR 390', '2016-08-21', 22),
(10, 'Ain', '73.00', 'ε Tauri Aa1', 'HR 1409', '2015-12-15', 23),
(11, 'Ainalrami', '99.99', 'ν1 Sagittarius A', 'HR 7116', '2017-09-05', 24),
(12, 'Albireo', '99.99', 'β1 Cygni Aa', 'HR 7417', '2016-07-20', 25),
(13, 'Albaldah', '99.99', 'π Sagittarius A', 'HR 7264', '2017-09-05', 26);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `constellation`
--
ALTER TABLE `constellation`
  ADD PRIMARY KEY (`constellation_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `galaxy`
--
ALTER TABLE `galaxy`
  ADD PRIMARY KEY (`galaxy_id`),
  ADD UNIQUE KEY `designations` (`designations`);

--
-- Indices de la tabla `moon`
--
ALTER TABLE `moon`
  ADD PRIMARY KEY (`moon_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `planet`
--
ALTER TABLE `planet`
  ADD PRIMARY KEY (`planet_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`star_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `constellation`
--
ALTER TABLE `constellation`
  MODIFY `constellation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `galaxy`
--
ALTER TABLE `galaxy`
  MODIFY `galaxy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `moon`
--
ALTER TABLE `moon`
  MODIFY `moon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `planet`
--
ALTER TABLE `planet`
  MODIFY `planet_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `star`
--
ALTER TABLE `star`
  MODIFY `star_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
