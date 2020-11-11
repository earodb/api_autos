-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-11-2020 a las 18:18:24
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deposito_autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automovil`
--

DROP TABLE IF EXISTS `automovil`;
CREATE TABLE IF NOT EXISTS `automovil` (
  `id_auto` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `linea` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `modelo` int NOT NULL,
  `num_motor` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `num_chasis` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `num_cilindros` int NOT NULL,
  `cc` int NOT NULL,
  `tipo_transmision` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int NOT NULL,
  `imagenes` json NOT NULL,
  PRIMARY KEY (`id_auto`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `automovil`
--

INSERT INTO `automovil` (`id_auto`, `marca`, `linea`, `modelo`, `num_motor`, `num_chasis`, `num_cilindros`, `cc`, `tipo_transmision`, `estado`, `id_categoria`, `imagenes`) VALUES
(1, 'Aixam', 'Crossline Premium', 2018, '466HM2U2000001', '11000237', 4, 600, 'Manual', 'Nuevo', 1, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/1-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/1-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/1-3.png\"}]'),
(2, 'Honda', 'Life', 2008, '473EF2U4000003', '14000432', 4, 500, 'Manual', 'Usado', 1, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/2-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/2-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/2-3.jpg\"}]'),
(3, 'Fiat', '500', 2018, '567DH4U6000003', '23000763', 4, 1242, 'Manual', 'Chocado', 2, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/3-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/3-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/3-3.jpg\"}]'),
(4, 'Hyundai', ' Grand i10', 2020, '736SD5U6000009', '84000938', 5, 1250, 'Mecánica', 'Nuevo', 2, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/4-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/4-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/4-3.jpg\"}]'),
(5, 'Chevrolet', 'Sonic', 2017, '739KD5U8000004', '94000832', 4, 1350, 'Mecánica', 'Usado', 3, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/5-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/5-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/5-3.jpg\"}]'),
(6, 'Hyundai', 'Accent Sedán', 2021, '573HR5H6000033', '96000956', 4, 1460, 'Mecánica', 'Nuevo', 3, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/6-1.jpeg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/6-2.jpeg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/6-3.jpeg\"}]'),
(7, 'Peugeot', '308', 2014, '937KF9E8000432', '34600765', 4, 1360, 'Mecánica', 'Nuevo', 4, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/7-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/7-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/7-3.jpg\"}]'),
(8, 'Toyota', 'Auris', 2015, '938TR3D6000897', '92700765', 4, 1250, 'Mecánica', 'Usado', 4, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/8-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/8-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/8-3.jpg\"}]'),
(9, 'Chevrolet', 'Malibu', 2021, '235GH5Y9000734', '82700045', 4, 1550, 'Automática', 'Nuevo', 5, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/9-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/9-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/9-3.jpg\"}]'),
(10, 'Ford', 'Mondeo', 2018, '937LY7M8700437', '56000328', 4, 1250, 'Mecánica', 'Usado', 5, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/10-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/10-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/10-3.jpg\"}]'),
(11, 'Jaguar', 'XF', 2021, '875LR9N8000076', '64000563', 5, 1250, 'Automático', 'Chocado', 6, '[{\"foto\": \"http://localhost/deposito_autos/imagenes/11-1.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/11-2.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/11-3.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/11-4.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/11-5.jpg\"}, {\"foto\": \"http://localhost/deposito_autos/imagenes/11-6.jpg\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_auto`
--

DROP TABLE IF EXISTS `categoria_auto`;
CREATE TABLE IF NOT EXISTS `categoria_auto` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria_auto`
--

INSERT INTO `categoria_auto` (`id_categoria`, `categoria`) VALUES
(1, 'Microcoche'),
(2, 'Segmento A'),
(3, 'Segmento B'),
(4, 'Segmento C'),
(5, 'Segmento D'),
(6, 'Segmento E'),
(7, 'Todocamino mixto'),
(8, 'Monovolúmenes'),
(9, 'De lujo'),
(10, 'Deportivo'),
(11, 'Todoterreno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `UsuarioId` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `Usuario`, `Password`, `Estado`) VALUES
(1, 'usuario1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo'),
(2, 'usuario2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_token`
--

DROP TABLE IF EXISTS `usuarios_token`;
CREATE TABLE IF NOT EXISTS `usuarios_token` (
  `TokenId` int NOT NULL AUTO_INCREMENT,
  `UsuarioId` varchar(45) DEFAULT NULL,
  `Token` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`TokenId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_token`
--

INSERT INTO `usuarios_token` (`TokenId`, `UsuarioId`, `Token`, `Estado`, `Fecha`) VALUES
(1, '2', 'd391f4dba60d07cabe695650c827092b', 'Activo', '2020-10-23 21:37:00'),
(11, '2', 'a5d9bb96fa0f66da00d1498025838c22', 'Activo', '2020-10-23 16:04:20'),
(12, '1', '08e3d1f011cbdd721bf722ae41e14b80', 'Activo', '2020-10-26 22:10:56'),
(13, '1', 'bfba3fd25cbc8c6ea88369a34ad43f40', 'Activo', '2020-10-28 11:55:16'),
(14, '1', '8590d3fe6592dabe689ee2b3956494a4', 'Activo', '2020-10-28 16:19:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
