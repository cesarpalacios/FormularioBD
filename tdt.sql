-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-08-2018 a las 22:00:40
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tdt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdt`
--

CREATE TABLE IF NOT EXISTS `tdt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Autorizacion` text NOT NULL,
  `Nombres` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Apellidos` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Telefono` text NOT NULL,
  `Correo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Area` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tdt`
--

INSERT INTO `tdt` (`ID`, `Autorizacion`, `Nombres`, `Apellidos`, `Telefono`, `Correo`, `Area`) VALUES
(1, 'SI', 'Cesar Augusto', 'Palacios Alarcon', '3217982082', 'ceapalaciosal@gmail.com', 'Tecnologia');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
