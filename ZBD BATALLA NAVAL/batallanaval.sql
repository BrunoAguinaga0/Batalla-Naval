-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2026 a las 12:55:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `batallanaval`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `nombre_jugador` varchar(30) NOT NULL,
  `password_jugador` varchar(255) DEFAULT NULL,
  `token_recuerdame` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `nombre_jugador`, `password_jugador`, `token_recuerdame`) VALUES
(1, 'bruno321', '$2y$10$JnuKzFVN8QnQGeXsd7aglO7wsXwokQAqvPaAfW8oMYqBAm7jNQxZ6', '69536cb71459eaea57b5a3663b6c848e17cb764feabc85d5b7e12dbf67473358'),
(2, 'ocus', '$2y$10$zgCqZpQwye1tcjXsKDmCQexlGqi7Ol.U0aDx/JLgZ5Z42SjtmpZ6m', '1744ffaabd3bf6bf5cd105e2dcbe14bff56766709529e2d3d313463a5f3bfaf1'),
(3, 'ocus1', '$2y$10$YIOOUQkQpWNkbLb8UDsz1Ob2ilE5fdUaZz8SB3gBungJI4pRLxjMy', 'd3891f0f3463ebf92ef7a7c19e20a112669387707d4a4842ae79584fd6003256'),
(4, 'ocus2', '$2y$10$./a8ZVg7zl/67CrPNoV47.0EI3Ov/4isc9oWQl6cH44cXfPxYgYnC', 'c19fdbd97c296cc60fec49e04180fedb00b7f1c0500e20226163fe72478b9191'),
(5, 'nicolas12', '$2y$10$FhSMMufXJLsrDkSWUVWcN.sspyL67DKewiRin6YcXwPOvZ0.4jDt6', '89ff3ef06bd85bb31787478d12524a2040a04bc5ecf841aa99c20c4c0213181c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id_partida` int(11) NOT NULL,
  `id_jugador` int(11) DEFAULT NULL,
  `fecha_partida` datetime DEFAULT current_timestamp(),
  `tiempo_segundos` int(11) DEFAULT NULL,
  `resultado` enum('victoria','derrota','abandonada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`id_partida`, `id_jugador`, `fecha_partida`, `tiempo_segundos`, `resultado`) VALUES
(1, 1, '2026-04-10 02:16:49', 2017, 'abandonada'),
(2, 1, '2026-04-10 02:22:05', 313, 'abandonada'),
(3, 1, '2026-04-10 02:30:09', 481, 'abandonada'),
(4, 1, '2026-04-10 02:37:33', 441, 'abandonada'),
(5, 1, '2026-04-10 02:39:17', 101, 'abandonada'),
(6, 1, '2026-04-10 02:39:39', 19, 'abandonada'),
(7, 1, '2026-04-10 02:40:21', 39, 'abandonada'),
(8, 1, '2026-04-10 02:40:53', 30, 'abandonada'),
(9, 1, '2026-04-10 02:42:21', 86, 'abandonada'),
(10, 1, '2026-04-10 02:43:12', 49, 'abandonada'),
(11, 1, '2026-04-10 02:43:31', 17, 'abandonada'),
(12, 1, '2026-04-10 02:43:49', 16, 'abandonada'),
(13, 1, '2026-04-10 02:44:07', 15, 'abandonada'),
(14, 1, '2026-04-10 02:44:25', 15, 'abandonada'),
(15, 1, '2026-04-10 02:44:44', 17, 'abandonada'),
(16, 1, '2026-04-10 02:45:35', 49, 'abandonada'),
(17, 1, '2026-04-10 02:46:11', 33, 'abandonada'),
(18, 1, '2026-04-10 02:53:55', 98, 'abandonada'),
(19, 1, '2026-04-10 04:01:39', 4061, 'abandonada'),
(20, 1, '2026-04-10 04:02:33', 51, 'abandonada'),
(21, 1, '2026-04-10 04:12:16', 29, 'abandonada'),
(22, 1, '2026-04-10 04:22:25', 210, 'abandonada'),
(23, 1, '2026-04-10 04:23:49', 30, 'abandonada'),
(24, 1, '2026-04-10 04:24:17', 25, 'abandonada'),
(25, 1, '2026-04-10 04:25:20', 61, 'abandonada'),
(26, 1, '2026-04-10 05:01:55', 423, 'abandonada'),
(27, 1, '2026-04-10 05:05:46', 204, 'victoria'),
(28, 1, '2026-04-10 06:48:33', 65, 'abandonada'),
(29, 1, '2026-04-10 07:05:44', 6, 'abandonada'),
(30, 1, '2026-04-10 07:07:09', 17, 'abandonada'),
(31, 1, '2026-04-10 07:17:45', 33, 'abandonada'),
(32, 1, '2026-04-10 07:23:52', 1691, 'victoria'),
(33, 1, '2026-04-10 07:37:33', 153, 'derrota'),
(34, 1, '2026-04-10 07:37:53', 3, 'abandonada'),
(35, 1, '2026-04-10 07:44:14', 199, 'victoria'),
(36, 1, '2026-04-10 07:46:00', 175, 'victoria'),
(37, 1, '2026-04-10 07:47:24', 168, 'victoria'),
(38, 1, '2026-04-10 07:48:34', 156, 'victoria'),
(39, 1, '2026-04-10 07:48:58', 9, 'abandonada'),
(40, 2, '2026-04-10 07:53:53', 11, 'abandonada'),
(41, 2, '2026-04-10 07:56:28', 6, 'abandonada'),
(42, 2, '2026-04-10 08:03:48', 3, 'abandonada'),
(43, 2, '2026-04-10 08:10:50', 16, 'abandonada'),
(44, 2, '2026-04-10 08:12:15', 26, 'abandonada'),
(45, 2, '2026-04-10 08:15:11', 1154, 'victoria'),
(46, 3, '2026-04-10 08:29:00', 27, 'abandonada'),
(47, 1, '2026-04-10 08:51:30', 18, 'abandonada'),
(48, 1, '2026-04-10 08:55:58', 265, 'victoria'),
(49, 1, '2026-04-10 08:59:42', 109, 'abandonada'),
(50, 1, '2026-04-10 10:15:29', 4544, 'abandonada'),
(51, 1, '2026-04-10 10:22:56', 63, 'abandonada'),
(52, 1, '2026-04-10 10:27:54', 293, 'abandonada'),
(53, 1, '2026-04-10 10:28:19', 3, 'abandonada'),
(54, 1, '2026-04-10 10:37:57', 574, 'abandonada'),
(55, 1, '2026-04-10 10:38:47', 48, 'abandonada'),
(56, 1, '2026-04-10 10:38:59', 2, 'abandonada'),
(57, 1, '2026-04-10 10:39:43', 3, 'abandonada'),
(58, 1, '2026-04-10 10:41:41', 89, 'abandonada'),
(59, 1, '2026-04-10 10:42:08', 1, 'abandonada'),
(60, 1, '2026-04-10 10:42:26', 2, 'abandonada'),
(61, 1, '2026-04-10 10:43:25', 54, 'abandonada'),
(62, 1, '2026-04-10 10:48:27', 299, 'abandonada'),
(63, 1, '2026-04-10 11:09:18', 617, 'abandonada'),
(64, 1, '2026-04-10 11:15:33', 368, 'abandonada'),
(65, 1, '2026-04-10 11:17:10', 12, 'abandonada'),
(66, 1, '2026-04-10 11:38:55', 113, 'derrota'),
(67, 1, '2026-04-10 11:39:38', 2, 'abandonada'),
(68, 1, '2026-04-10 11:43:24', 219, 'derrota'),
(69, 1, '2026-04-10 22:10:32', 1137, 'victoria'),
(70, 1, '2026-04-10 22:10:58', 5, 'abandonada'),
(71, 1, '2026-04-10 22:13:24', 96, 'derrota'),
(72, 1, '2026-04-11 07:34:03', 16, 'abandonada'),
(73, 1, '2026-04-11 11:21:02', 335, 'victoria'),
(74, 1, '2026-04-11 12:36:52', 19, 'abandonada'),
(105, 2, '2026-04-10 02:16:49', 142, 'victoria'),
(106, 2, '2026-04-10 02:16:49', 153, 'victoria'),
(107, 1, '2026-04-11 12:51:30', 5, 'abandonada'),
(125, 5, '2026-04-10 02:16:49', 150, 'victoria'),
(126, 5, '2026-04-11 12:52:38', 2, 'abandonada'),
(127, 5, '2026-04-11 12:54:40', 2, 'abandonada'),
(128, 5, '2026-04-11 12:54:50', 4, 'abandonada'),
(129, 1, '2026-04-11 12:55:08', 6, 'abandonada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`),
  ADD UNIQUE KEY `nombre_jugador` (`nombre_jugador`),
  ADD KEY `nombre_jugador_2` (`nombre_jugador`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id_partida`),
  ADD KEY `fk_jugador_en_partida` (`id_jugador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `fk_jugador_en_partida` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
