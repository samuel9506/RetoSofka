-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2022 a las 01:04:58
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegosofka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `ValorPremio` int(50) NOT NULL,
  `Nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `Nombre`, `ValorPremio`, `Nivel`) VALUES
(7, 'Geografía y historia ', 1, 5),
(8, 'Cultura', 2, 3),
(9, 'Deportes', 3, 2),
(10, 'Arte', 4, 1),
(11, 'Ciencias', 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `idNivel` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idPreguntas` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idPreguntas`, `Descripcion`, `idCategoria`) VALUES
(1, '¿De qué país forma parte Hawaii?', 7),
(2, '¿Cuántos estados tiene integrados Estados Unidos?', 7),
(3, '¿De qué año es la Constitución Española?', 7),
(4, '¿Dónde se usó la primera bomba atómica en un conflicto armado? ', 7),
(5, '¿Cuándo acabó la II Guerra Mundial?', 7),
(6, '¿Cuál es el nombre del río más largo del mundo?', 8),
(7, '¿Cuál es el océano más grande del mundo?', 8),
(8, ' ¿Cuál es el país más grande del mundo?', 8),
(9, '¿Cuál es el país que tiene forma de bota?', 8),
(10, '¿Cuál es el país más poblado de la tierra?', 8),
(11, '¿Cuál fue la primera película que apareció de Disney?', 10),
(12, '¿Quién escribió \"Cien años de soledad\"?', 10),
(13, '¿Quién es el autor de \"La Odisea\"?', 10),
(14, '¿De qué grupo es la canción \"Let It Be\"?', 10),
(15, '¿De qué pintor es la obra \"El grito\"?', 10),
(19, '¿De dónde surgió la celebración de los juegos olímpicos?', 9),
(20, '¿Cómo se llama el estadio de fútbol del Real Madrid?', 9),
(21, '¿Cuántas Champions tiene el Real Madrid?', 9),
(22, '¿Quién ganó el mundial de de fútbol del año 2014?', 9),
(23, '¿Cuál es el atleta con más medallas de oro olímpicas? ', 9),
(24, '¿Cuál es el número que viene después del 14 en el número pi?', 11),
(25, '¿La distancia entre el tiempo equivale a qué variable?', 11),
(26, '¿Cómo se le llama al proceso de división celular para formar dos células hijas?', 11),
(27, '¿Quién planteó la teoría de la evolución?', 11),
(28, '¿Cuántos elementos tiene la tabla periódica?', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premios`
--

CREATE TABLE `premios` (
  `idPremios` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `premios`
--

INSERT INTO `premios` (`idPremios`, `Descripcion`) VALUES
(1, '10 Monedeas'),
(2, '20 Monedas'),
(3, '30 Monedas'),
(4, '40 Monedas'),
(5, '50 Monedas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `idRespuestas` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `idPreguntas` int(11) NOT NULL,
  `ValorRespuesta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`idRespuestas`, `Descripcion`, `idPreguntas`, `ValorRespuesta`) VALUES
(1, 'Estados Unidos', 1, 1),
(2, 'España', 1, 0),
(3, 'Australia', 1, 0),
(4, 'Canada', 1, 0),
(5, 'Italia', 1, 0),
(9, '50 estados', 2, 1),
(10, '32 estados', 2, 0),
(11, '48 estados', 2, 0),
(12, '45 estados', 2, 0),
(13, '60 estados', 2, 0),
(14, '1978', 3, 1),
(15, '1982', 3, 0),
(16, '1990', 3, 0),
(17, '1963', 3, 0),
(18, '1985', 3, 0),
(19, 'Japón', 4, 1),
(20, 'Alemania', 4, 0),
(21, 'Italia', 4, 0),
(22, 'Francia', 4, 0),
(23, 'Corea', 4, 0),
(25, 'En 1945', 5, 1),
(26, 'En 1955', 5, 0),
(27, 'En 1940', 5, 0),
(28, 'En 1960', 5, 0),
(29, 'En 1970', 5, 0),
(30, 'El río Amazonas', 6, 1),
(31, 'El río Nilo', 6, 0),
(33, 'El río Danubio', 6, 0),
(34, 'El río  Misisipi', 6, 0),
(35, 'El rio Obi', 6, 0),
(36, 'Océano Pacífico', 7, 1),
(37, 'Océano Atlantico', 7, 0),
(38, 'Océano Índico', 7, 0),
(39, 'Océano Ártico', 7, 0),
(40, 'Océano/Mar Antártico', 7, 0),
(42, 'Rusia', 8, 1),
(43, 'China', 8, 0),
(44, 'Estados Unidos', 8, 0),
(45, 'Australia', 8, 0),
(46, 'Canada', 8, 0),
(47, 'Italia', 9, 1),
(48, 'Francia', 9, 0),
(49, 'Grecia', 9, 0),
(50, 'Belgica', 9, 0),
(51, 'Inglaterra', 9, 0),
(52, 'China', 10, 1),
(53, 'Estados Unidos', 10, 0),
(54, 'Rusia', 10, 0),
(55, 'India', 10, 0),
(56, 'Brasil', 10, 0),
(57, 'Blanca Nieves', 11, 1),
(58, 'Bella bestia', 11, 0),
(59, 'Encanto', 11, 0),
(62, 'Pinocho', 11, 0),
(65, 'La bella durmiente', 11, 0),
(66, 'Gabriel García Márquez ', 12, 1),
(70, 'Edgar Allan Poe', 12, 0),
(71, 'Miguel de Cervantes', 12, 0),
(72, 'Jorge Luis Borgues', 12, 0),
(73, 'Charles Dickens', 12, 0),
(74, 'Homero', 13, 1),
(76, 'Hector', 13, 0),
(77, 'Platon', 13, 0),
(78, 'Ovidio', 13, 0),
(79, 'Sófocles', 13, 0),
(81, 'Los Beatles', 14, 1),
(82, 'Elvis Presly', 14, 0),
(84, 'Jimi Hendrix', 14, 0),
(85, 'Hector Lavoe', 14, 0),
(86, 'Kurt Kobain', 14, 0),
(87, 'Edvard Munch', 15, 1),
(88, 'Pablo Picasso', 15, 0),
(89, 'Vincent van Gogh', 15, 0),
(90, 'Leonardo Da Vinci', 15, 0),
(91, 'Fernado Botero', 15, 0),
(93, 'Grecia', 19, 1),
(94, 'Italia', 19, 0),
(95, 'China', 19, 0),
(96, 'Inglaterra', 19, 0),
(97, 'Rusia', 19, 0),
(98, 'Santiago Bernabeu', 20, 1),
(99, 'Pascual Guerreo', 20, 0),
(100, 'Old Trafford', 20, 0),
(101, 'Camp Nou', 20, 0),
(102, 'Allianz Arena', 20, 0),
(103, '13', 21, 1),
(104, '15', 21, 0),
(105, '8', 21, 0),
(106, '9', 21, 0),
(107, '18', 21, 0),
(108, 'Alemania', 22, 1),
(109, 'Argentina', 22, 0),
(110, 'Brasil', 22, 0),
(111, 'Bélgica', 22, 0),
(112, 'Colombia', 22, 0),
(113, 'Michael Phelps', 23, 1),
(114, 'Larissa Latynina', 23, 0),
(115, 'Carl Lewis', 23, 0),
(116, 'Birgit Fischer', 23, 0),
(117, 'Mark Spitz', 23, 0),
(118, '1', 24, 1),
(119, '5', 24, 0),
(120, '2', 24, 0),
(121, '7', 24, 0),
(122, '3', 24, 0),
(123, 'Velocidad', 25, 1),
(124, 'Masa', 25, 0),
(125, 'Tiempo', 25, 0),
(126, 'Longitud', 25, 0),
(127, 'Intensidad', 25, 0),
(128, 'Mitosis', 26, 1),
(129, 'Meiosis', 26, 0),
(130, 'Interface', 26, 0),
(135, 'La fisión binaria', 26, 0),
(136, 'Charle Darwin', 27, 1),
(137, 'Albert Einstein', 27, 0),
(138, 'Stephen Hawking', 27, 0),
(139, 'Nicolás Copérnico', 27, 0),
(140, 'Marie Curie', 27, 0),
(141, '118', 28, 1),
(142, '116', 28, 0),
(143, '110', 28, 0),
(144, '125', 28, 0),
(145, '113', 28, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `premioTotal` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `premioTotal`) VALUES
(1, 'samuel', 15),
(2, 'Pedro', 15),
(3, '2', 0),
(4, 'samuel', 15),
(5, 'samuel', 15),
(6, 'pedro', 4),
(7, 'samuel', 1),
(8, 'Andrea', 0),
(9, 'Samuel', 15),
(10, 'samuel', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`idNivel`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idPreguntas`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `premios`
--
ALTER TABLE `premios`
  ADD PRIMARY KEY (`idPremios`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`idRespuestas`),
  ADD KEY `idPreguntas` (`idPreguntas`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `idNivel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idPreguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `premios`
--
ALTER TABLE `premios`
  MODIFY `idPremios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `idRespuestas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`idPreguntas`) REFERENCES `preguntas` (`idPreguntas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
