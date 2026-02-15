-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2026 a las 23:36:38
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
-- Base de datos: `topicos_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Us_Id` int(11) NOT NULL,
  `Us_Nombre` varchar(100) DEFAULT NULL,
  `Us_Apellido` varchar(100) DEFAULT NULL,
  `Us_Correo` varchar(100) DEFAULT NULL,
  `Us_Contrasena` varchar(100) DEFAULT NULL,
  `Ub_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Us_Id`, `Us_Nombre`, `Us_Apellido`, `Us_Correo`, `Us_Contrasena`, `Ub_Id`) VALUES
(1, 'ANDRES', 'RUIZ', 'andres.ruiz@tienda.com', 'Pass2023_01', 2),
(2, 'DIANA', 'SUAREZ', 'diana.suarez@tienda.com', 'Pass2023_02', 3),
(3, 'MATEO', 'ROJAS', 'mateo.rojas@tienda.com', 'Pass2023_03', 4),
(4, 'CAMILA', 'VELEZ', 'camila.velez@tienda.com', 'Pass2023_04', 5),
(5, 'SEBASTIAN', 'MORA', 'sebastian.mora@tienda.com', 'Pass2023_05', 6),
(6, 'VALENTINA', 'PARRA', 'valentina.parra@tienda.com', 'Pass2023_06', 7),
(7, 'NICOLAS', 'ARANGO', 'nicolas.arango@tienda.com', 'Pass2023_07', 8),
(8, 'SARA', 'QUINTERO', 'sara.quintero@tienda.com', 'Pass2023_08', 9),
(9, 'JULIAN', 'RESTREPO', 'julian.restrepo@tienda.com', 'Pass2023_09', 10),
(10, 'MARIANA', 'GIL', 'mariana.gil@tienda.com', 'Pass2023_10', 11),
(11, 'DAVID', 'PINEDA', 'david.pineda@tienda.com', 'Pass2023_11', 12),
(12, 'LAURA', 'CASTRO', 'laura.castro@tienda.com', 'Pass2023_12', 13),
(13, 'TOMAS', 'SANCHEZ', 'tomas.sanchez@tienda.com', 'Pass2023_13', 14),
(14, 'PAULA', 'RIVERA', 'paula.rivera@tienda.com', 'Pass2023_14', 15),
(15, 'JUANA', 'MUNOZ', 'juana.munoz@tienda.com', 'Pass2023_15', 16),
(16, 'OSCAR', 'GONZALEZ', 'oscar.gonzalez@tienda.com', 'Pass2023_16', 17),
(17, 'KAREN', 'HURTADO', 'karen.hurtado@tienda.com', 'Pass2023_17', 18),
(18, 'FELIPE', 'MONTES', 'felipe.montes@tienda.com', 'Pass2023_18', 19),
(19, 'NATALIA', 'SOTO', 'natalia.soto@tienda.com', 'Pass2023_19', 20),
(20, 'JORGE', 'SALAS', 'jorge.salas@tienda.com', 'Pass2023_20', 21),
(21, 'ANGELA', 'MEDINA', 'angela.medina@tienda.com', 'Pass2023_21', 22),
(22, 'RICARDO', 'CORTES', 'ricardo.cortes@tienda.com', 'Pass2023_22', 23),
(23, 'LINA', 'FLOREZ', 'lina.florez@tienda.com', 'Pass2023_23', 24),
(24, 'MARIO', 'PEREZ', 'mario.perez@tienda.com', 'Pass2023_24', 25),
(25, 'GLORIA', 'GOMEZ', 'gloria.gomez@tienda.com', 'Pass2023_25', 26),
(26, 'HUGO', 'ORTIZ', 'hugo.ortiz@tienda.com', 'Pass2023_26', 27),
(27, 'MONICA', 'NAVAS', 'monica.navas@tienda.com', 'Pass2023_27', 28),
(28, 'IVAN', 'MARTINEZ', 'ivan.martinez@tienda.com', 'Pass2023_28', 29),
(29, 'SANDRA', 'LOPEZ', 'sandra.lopez@tienda.com', 'Pass2023_29', 30),
(30, 'DANIEL', 'RAMIREZ', 'daniel.ramirez@tienda.com', 'Pass2023_30', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Us_Id`),
  ADD KEY `FK_Usuario_Ubicacion` (`Ub_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Us_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_Usuario_Ubicacion` FOREIGN KEY (`Ub_Id`) REFERENCES `ubicacion` (`Ub_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
