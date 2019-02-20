-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2019 a las 13:06:35
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t001_users`
--

CREATE TABLE `t001_users` (
  `f001_username` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `f001_email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `f001_password` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `f001_create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f001_update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t002_portfolio`
--

CREATE TABLE `t002_portfolio` (
  `f002_id` int(11) NOT NULL,
  `f002_description` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f002_id_category` int(11) NOT NULL,
  `f002_id_user` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t003_categories`
--

CREATE TABLE `t003_categories` (
  `f003_id` int(11) NOT NULL,
  `f003_name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `f003_description` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t004_information`
--

CREATE TABLE `t004_information` (
  `f004_id` int(11) NOT NULL,
  `f004_id_username` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `f004_resume`varchar(2000) COLLATE utf8_spanish_ci not null,
  `f004_birth_date` date NOT NULL,
  `f004_phone` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `f004_address` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `f004_link` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f004_avatar` mediumblob,
  `f004_photo` mediumblob,
  `f004_gender` enum('male','female') COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t005_jobs`
--

CREATE TABLE `t005_jobs` (
  `f005_id` int(11) NOT NULL,
  `f005_position` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `f005_description` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f005_date_in` date NOT NULL,
  `f005_date_out` date DEFAULT NULL,
  `f005_contact_number` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `f005_contact_position` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `f005_id_portfolio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t006_projects`
--

CREATE TABLE `t006_projects` (
  `f006_id` int(11) NOT NULL,
  `f006_name` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `f006_description` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f006_theme` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f006_advance_percent` int(11) NOT NULL,
  `f006_photo` mediumblob,
  `f006_link` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f006_id_portfolio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t007_studies`
--

CREATE TABLE `t007_studies` (
  `f007_id` int(11) NOT NULL,
  `f007_name` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `f007_description` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f007_institution` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `f007_ind_actually` enum('actually','noActually') COLLATE utf8_spanish2_ci NOT NULL,
  `f007_date_init` date NOT NULL,
  `f007_date_end` date DEFAULT NULL,
  `f007_id_portfolio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t008_acknowlegments`
--

CREATE TABLE `t008_acknowlegments` (
  `f008_id` int(11) NOT NULL,
  `f008_name` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `f008_description` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f008_id_job` int(11) DEFAULT NULL,
  `f008_id_study` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t009_contributions`
--

CREATE TABLE `t009_contributions` (
  `f009_id` int(11) NOT NULL,
  `f009_name` int(11) NOT NULL,
  `f009_description` int(11) DEFAULT NULL,
  `f009_ind_aceptation` enum('acept','noimplement','rejected') COLLATE utf8_spanish2_ci NOT NULL,
  `f009_id_project` int(11) DEFAULT NULL,
  `f009_id_job` int(11) DEFAULT NULL,
  `f009_id_studie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t010_functions`
--

CREATE TABLE `t010_functions` (
  `f010_id` int(11) NOT NULL,
  `f010_name` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `f010_description` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `f010_photo` mediumblob NOT NULL,
  `f010_complexity_percent` int(11) DEFAULT NULL,
  `f010_id_job` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t001_users`
--
ALTER TABLE `t001_users`
  ADD PRIMARY KEY (`f001_username`);

--
-- Indices de la tabla `t002_portfolio`
--
ALTER TABLE `t002_portfolio`
  ADD PRIMARY KEY (`f002_id`),
  ADD KEY `f002_id_user` (`f002_id_user`),
  ADD KEY `f002_id_category` (`f002_id_category`);

--
-- Indices de la tabla `t003_categories`
--
ALTER TABLE `t003_categories`
  ADD PRIMARY KEY (`f003_id`);

--
-- Indices de la tabla `t004_information`
--
ALTER TABLE `t004_information`
  ADD PRIMARY KEY (`f004_id`,`f004_id_username`),
  ADD KEY `f004_id_username` (`f004_id_username`);

--
-- Indices de la tabla `t005_jobs`
--
ALTER TABLE `t005_jobs`
  ADD PRIMARY KEY (`f005_id`),
  ADD KEY `f005_id_portfolio` (`f005_id_portfolio`);

--
-- Indices de la tabla `t006_projects`
--
ALTER TABLE `t006_projects`
  ADD PRIMARY KEY (`f006_id`),
  ADD KEY `f006_id_portfolio` (`f006_id_portfolio`);

--
-- Indices de la tabla `t007_studies`
--
ALTER TABLE `t007_studies`
  ADD PRIMARY KEY (`f007_id`),
  ADD KEY `f007_id_portfolio` (`f007_id_portfolio`);

--
-- Indices de la tabla `t008_acknowlegments`
--
ALTER TABLE `t008_acknowlegments`
  ADD PRIMARY KEY (`f008_id`),
  ADD KEY `f008_id_job` (`f008_id_job`,`f008_id_study`),
  ADD KEY `f008_id_study` (`f008_id_study`);

--
-- Indices de la tabla `t009_contributions`
--
ALTER TABLE `t009_contributions`
  ADD PRIMARY KEY (`f009_id`),
  ADD KEY `f009_id_project` (`f009_id_project`,`f009_id_job`,`f009_id_studie`),
  ADD KEY `f009_id_job` (`f009_id_job`),
  ADD KEY `f009_id_studie` (`f009_id_studie`);

--
-- Indices de la tabla `t010_functions`
--
ALTER TABLE `t010_functions`
  ADD PRIMARY KEY (`f010_id`),
  ADD KEY `f010_id_job` (`f010_id_job`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t002_portfolio`
--
ALTER TABLE `t002_portfolio`
  MODIFY `f002_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t003_categories`
--
ALTER TABLE `t003_categories`
  MODIFY `f003_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t004_information`
--
ALTER TABLE `t004_information`
  MODIFY `f004_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t005_jobs`
--
ALTER TABLE `t005_jobs`
  MODIFY `f005_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t006_projects`
--
ALTER TABLE `t006_projects`
  MODIFY `f006_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t007_studies`
--
ALTER TABLE `t007_studies`
  MODIFY `f007_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t008_acknowlegments`
--
ALTER TABLE `t008_acknowlegments`
  MODIFY `f008_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t009_contributions`
--
ALTER TABLE `t009_contributions`
  MODIFY `f009_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t010_functions`
--
ALTER TABLE `t010_functions`
  MODIFY `f010_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t002_portfolio`
--
ALTER TABLE `t002_portfolio`
  ADD CONSTRAINT `t002_portfolio_ibfk_1` FOREIGN KEY (`f002_id_user`) REFERENCES `t001_users` (`f001_username`),
  ADD CONSTRAINT `t002_portfolio_ibfk_2` FOREIGN KEY (`f002_id_category`) REFERENCES `t003_categories` (`f003_id`);

--
-- Filtros para la tabla `t004_information`
--
ALTER TABLE `t004_information`
  ADD CONSTRAINT `t004_information_ibfk_1` FOREIGN KEY (`f004_id_username`) REFERENCES `t001_users` (`f001_username`);

--
-- Filtros para la tabla `t005_jobs`
--
ALTER TABLE `t005_jobs`
  ADD CONSTRAINT `t005_jobs_ibfk_1` FOREIGN KEY (`f005_id_portfolio`) REFERENCES `t002_portfolio` (`f002_id`);

--
-- Filtros para la tabla `t006_projects`
--
ALTER TABLE `t006_projects`
  ADD CONSTRAINT `t006_projects_ibfk_1` FOREIGN KEY (`f006_id_portfolio`) REFERENCES `t002_portfolio` (`f002_id`);

--
-- Filtros para la tabla `t008_acknowlegments`
--
ALTER TABLE `t008_acknowlegments`
  ADD CONSTRAINT `t008_acknowlegments_ibfk_2` FOREIGN KEY (`f008_id_job`) REFERENCES `t005_jobs` (`f005_id`),
  ADD CONSTRAINT `t008_acknowlegments_ibfk_3` FOREIGN KEY (`f008_id_study`) REFERENCES `t007_studies` (`f007_id`);

--
-- Filtros para la tabla `t009_contributions`
--
ALTER TABLE `t009_contributions`
  ADD CONSTRAINT `t009_contributions_ibfk_2` FOREIGN KEY (`f009_id_job`) REFERENCES `t005_jobs` (`f005_id`),
  ADD CONSTRAINT `t009_contributions_ibfk_3` FOREIGN KEY (`f009_id_project`) REFERENCES `t006_projects` (`f006_id`),
  ADD CONSTRAINT `t009_contributions_ibfk_4` FOREIGN KEY (`f009_id_studie`) REFERENCES `t007_studies` (`f007_id`);

--
-- Filtros para la tabla `t010_functions`
--
ALTER TABLE `t010_functions`
  ADD CONSTRAINT `t010_functions_ibfk_1` FOREIGN KEY (`f010_id_job`) REFERENCES `t005_jobs` (`f005_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
