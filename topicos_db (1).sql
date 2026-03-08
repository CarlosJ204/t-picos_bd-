-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2026 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topicos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `Cli_Id` int(11) NOT NULL,
  `Cli_Nombre` varchar(100) DEFAULT NULL,
  `Cli_Telefono` varchar(20) DEFAULT NULL,
  `Ub_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`Cli_Id`, `Cli_Nombre`, `Cli_Telefono`, `Ub_Id`) VALUES
(1, 'MARIA AUXILIADORA', '3001110001', 1),
(2, 'JUAN PEREZ', '3001110002', 2),
(3, 'CARLOS GOMEZ', '3001110003', 3),
(4, 'ANA MARTINEZ', '3001110004', 4),
(5, 'PEDRO LOPEZ', '3001110005', 5),
(6, 'ISABEL RODRIGUEZ', '3001110006', 6),
(7, 'JOSE GARCIA', '3001110007', 7),
(8, 'MARIA FERNANDEZ', '3001110008', 8),
(9, 'ANTONIO GONZALEZ', '3001110009', 9),
(10, 'CARMEN RAMIREZ', '3001110010', 10),
(11, 'FRANCISCO MORALES', '3001110011', 11),
(12, 'SUSANA GUZMAN', '3001110012', 12),
(13, 'ALBERTO TORRES', '3001110013', 13),
(14, 'PATRICIA VARGAS', '3001110014', 14),
(15, 'RAFAEL ORTIZ', '3001110015', 15),
(16, 'LUCIA CASTRO', '3001110016', 16),
(17, 'DIEGO AGUILAR', '3001110017', 17),
(18, 'TERESA ROMERO', '3001110018', 18),
(19, 'MIGUEL PENA', '3001110019', 19),
(20, 'LAURA NAVARRO', '3001110020', 20),
(21, 'DANIEL HERRERA', '3001110021', 21),
(22, 'PAULA SOTO', '3001110022', 22),
(23, 'JULIANA RIOS', '3001110023', 23),
(24, 'SANTIAGO DIAZ', '3001110024', 24),
(25, 'NATALIA SILVA', '3001110025', 25),
(26, 'ANDRES RUIZ', '3001110026', 26),
(27, 'SOFIA MENDOZA', '3001110027', 27),
(28, 'JAVIER CARDENAS', '3001110028', 28),
(29, 'CAROLINA SALAZAR', '3001110029', 29),
(30, 'FELIPE OSPINA', '3001110030', 30);

-- --------------------------------------------------------

--
-- Table structure for table `detalles_entrega`
--

CREATE TABLE `detalles_entrega` (
  `De_Id` int(11) NOT NULL,
  `De_FechaEntrega` date DEFAULT NULL,
  `De_EstadoEntrega` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalles_entrega`
--

INSERT INTO `detalles_entrega` (`De_Id`, `De_FechaEntrega`, `De_EstadoEntrega`) VALUES
(1, '2023-03-26', 'ENTREGADO'),
(2, '2023-03-27', 'EN BODEGA'),
(3, '2023-03-28', 'EN CAMINO'),
(4, '2023-03-29', 'ENTREGADO'),
(5, '2023-03-30', 'EN CAMINO'),
(6, '2023-03-31', 'ENTREGADO'),
(7, '2023-04-01', 'EN BODEGA'),
(8, '2023-04-02', 'EN CAMINO'),
(9, '2023-04-03', 'ENTREGADO'),
(10, '2023-04-04', 'EN CAMINO'),
(11, '2023-04-05', 'ENTREGADO'),
(12, '2023-04-06', 'EN BODEGA'),
(13, '2023-04-07', 'EN CAMINO'),
(14, '2023-04-08', 'ENTREGADO'),
(15, '2023-04-09', 'EN BODEGA'),
(16, '2023-04-10', 'EN CAMINO'),
(17, '2023-04-11', 'ENTREGADO'),
(18, '2023-04-12', 'EN CAMINO'),
(19, '2023-04-13', 'ENTREGADO'),
(20, '2023-04-14', 'EN BODEGA'),
(21, '2023-04-15', 'EN CAMINO'),
(22, '2023-04-16', 'ENTREGADO'),
(23, '2023-04-17', 'EN BODEGA'),
(24, '2023-04-18', 'EN CAMINO'),
(25, '2023-04-19', 'ENTREGADO'),
(26, '2023-04-20', 'EN CAMINO'),
(27, '2023-04-21', 'ENTREGADO'),
(28, '2023-04-22', 'EN BODEGA'),
(29, '2023-04-23', 'EN CAMINO'),
(30, '2023-04-24', 'ENTREGADO');

-- --------------------------------------------------------

--
-- Table structure for table `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `Dp_Id` int(11) NOT NULL,
  `Pro_Id` int(11) DEFAULT NULL,
  `Dp_Cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalles_pedido`
--

INSERT INTO `detalles_pedido` (`Dp_Id`, `Pro_Id`, `Dp_Cantidad`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 2),
(5, 5, 1),
(6, 6, 4),
(7, 7, 2),
(8, 8, 3),
(9, 9, 6),
(10, 10, 2),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 2),
(15, 15, 1),
(16, 16, 2),
(17, 17, 5),
(18, 18, 1),
(19, 19, 2),
(20, 20, 3),
(21, 21, 2),
(22, 22, 1),
(23, 23, 4),
(24, 24, 1),
(25, 25, 1),
(26, 26, 6),
(27, 27, 1),
(28, 28, 2),
(29, 29, 3),
(30, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `Inv_Id` int(11) NOT NULL,
  `Pro_Id` int(11) DEFAULT NULL,
  `Inv_CantidadInventario` int(11) DEFAULT NULL,
  `Us_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`Inv_Id`, `Pro_Id`, `Inv_CantidadInventario`, `Us_Id`) VALUES
(1, 1, 120, 1),
(2, 2, 80, 2),
(3, 3, 150, 3),
(4, 4, 60, 4),
(5, 5, 95, 5),
(6, 6, 210, 6),
(7, 7, 130, 7),
(8, 8, 110, 8),
(9, 9, 500, 9),
(10, 10, 160, 10),
(11, 11, 140, 11),
(12, 12, 75, 12),
(13, 13, 180, 13),
(14, 14, 125, 14),
(15, 15, 90, 15),
(16, 16, 100, 16),
(17, 17, 300, 17),
(18, 18, 55, 18),
(19, 19, 115, 19),
(20, 20, 160, 20),
(21, 21, 140, 21),
(22, 22, 85, 22),
(23, 23, 190, 23),
(24, 24, 70, 24),
(25, 25, 65, 25),
(26, 26, 420, 26),
(27, 27, 50, 27),
(28, 28, 105, 28),
(29, 29, 160, 29),
(30, 30, 130, 30);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `Ped_Id` int(11) NOT NULL,
  `Ped_FechaPedido` date DEFAULT NULL,
  `Cli_Id` int(11) DEFAULT NULL,
  `De_Id` int(11) DEFAULT NULL,
  `Dp_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`Ped_Id`, `Ped_FechaPedido`, `Cli_Id`, `De_Id`, `Dp_Id`) VALUES
(1, '2023-03-26', 1, 1, 1),
(2, '2023-03-27', 2, 2, 2),
(3, '2023-03-28', 3, 3, 3),
(4, '2023-03-29', 4, 4, 4),
(5, '2023-03-30', 5, 5, 5),
(6, '2023-03-31', 6, 6, 6),
(7, '2023-04-01', 7, 7, 7),
(8, '2023-04-02', 8, 8, 8),
(9, '2023-04-03', 9, 9, 9),
(10, '2023-04-04', 10, 10, 10),
(11, '2023-04-05', 11, 11, 11),
(12, '2023-04-06', 12, 12, 12),
(13, '2023-04-07', 13, 13, 13),
(14, '2023-04-08', 14, 14, 14),
(15, '2023-04-09', 15, 15, 15),
(16, '2023-04-10', 16, 16, 16),
(17, '2023-04-11', 17, 17, 17),
(18, '2023-04-12', 18, 18, 18),
(19, '2023-04-13', 19, 19, 19),
(20, '2023-04-14', 20, 20, 20),
(21, '2023-04-15', 21, 21, 21),
(22, '2023-04-16', 22, 22, 22),
(23, '2023-04-17', 23, 23, 23),
(24, '2023-04-18', 24, 24, 24),
(25, '2023-04-19', 25, 25, 25),
(26, '2023-04-20', 26, 26, 26),
(27, '2023-04-21', 27, 27, 27),
(28, '2023-04-22', 28, 28, 28),
(29, '2023-04-23', 29, 29, 29),
(30, '2023-04-24', 30, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `Pro_Id` int(11) NOT NULL,
  `Pro_Nombre` varchar(100) DEFAULT NULL,
  `Pro_Precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`Pro_Id`, `Pro_Nombre`, `Pro_Precio`) VALUES
(1, 'PAPAS FRITAS 150G', 3000.00),
(2, 'COCA COLA 400ML', 3500.00),
(3, 'PEPSI 400ML', 3000.00),
(4, 'CHOCOLATE 100G', 2500.00),
(5, 'DORITOS 150G', 3200.00),
(6, 'GOMITAS 80G', 2200.00),
(7, 'GALLETAS OREO 6U', 3100.00),
(8, 'GALLETA CHIPS 6U', 2900.00),
(9, 'AGUA 600ML', 2000.00),
(10, 'JUGO MANGO 300ML', 2800.00),
(11, 'JUGO MORA 300ML', 2800.00),
(12, 'ENERGIZANTE 250ML', 4200.00),
(13, 'SNACK MANI 100G', 2600.00),
(14, 'SNICKERS 50G', 2800.00),
(15, 'KITKAT 45G', 2600.00),
(16, 'TWIX 50G', 3000.00),
(17, 'CHOCOLATINA 35G', 1800.00),
(18, 'CAFÉ INSTANTANEO 50G', 5500.00),
(19, 'TE HELADO 500ML', 3300.00),
(20, 'SPRITE 400ML', 2700.00),
(21, 'FANTA 400ML', 3300.00),
(22, 'GASEOSA UVA 400ML', 3200.00),
(23, 'GALLETA VAINILLA 8U', 2400.00),
(24, 'ARROZ 1KG', 4800.00),
(25, 'AZUCAR 1KG', 4600.00),
(26, 'SAL 500G', 1800.00),
(27, 'ACEITE 1L', 9500.00),
(28, 'ATUN LATA 160G', 6200.00),
(29, 'PASTA 500G', 3200.00),
(30, 'SALSA TOMATE 200G', 2700.00);

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Ub_Id` int(11) NOT NULL,
  `Ub_ciudad` varchar(100) DEFAULT NULL,
  `Ub_departamento` varchar(100) DEFAULT NULL,
  `Ub_direccion` varchar(200) DEFAULT NULL,
  `Ub_codigoPostal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ubicacion`
--

INSERT INTO `ubicacion` (`Ub_Id`, `Ub_ciudad`, `Ub_departamento`, `Ub_direccion`, `Ub_codigoPostal`) VALUES
(1, 'Bogota', 'Cundinamarca', 'CRA 7 # 45-12', '110111'),
(2, 'Medellin', 'Antioquia', 'CL 10 # 30-55', '050021'),
(3, 'Cali', 'Valle del Cauca', 'AV 3N # 22-10', '760001'),
(4, 'Barranquilla', 'Atlantico', 'CL 72 # 41-20', '080001'),
(5, 'Cartagena', 'Bolivar', 'CRA 2 # 34-80', '130001'),
(6, 'Bucaramanga', 'Santander', 'CL 36 # 18-40', '680001'),
(7, 'Pereira', 'Risaralda', 'CRA 8 # 15-09', '660001'),
(8, 'Manizales', 'Caldas', 'CL 23 # 19-70', '170001'),
(9, 'Armenia', 'Quindio', 'CRA 14 # 12-33', '630001'),
(10, 'Santa Marta', 'Magdalena', 'CL 22 # 5-18', '470001'),
(11, 'Cucuta', 'Norte de Santander', 'AV 0 # 10-25', '540001'),
(12, 'Ibague', 'Tolima', 'CL 60 # 5-45', '730001'),
(13, 'Pasto', 'Narino', 'CRA 27 # 18-10', '520001'),
(14, 'Villavicencio', 'Meta', 'AV 40 # 20-02', '500001'),
(15, 'Neiva', 'Huila', 'CL 7 # 6-12', '410001'),
(16, 'Monteria', 'Cordoba', 'CRA 3 # 28-90', '230001'),
(17, 'Sincelejo', 'Sucre', 'CL 20 # 19-14', '700001'),
(18, 'Valledupar', 'Cesar', 'CL 16 # 9-30', '200001'),
(19, 'Popayan', 'Cauca', 'CRA 9 # 5-66', '190001'),
(20, 'Tunja', 'Boyaca', 'CL 19 # 10-15', '150001'),
(21, 'Riohacha', 'La Guajira', 'CL 1 # 7-20', '440001'),
(22, 'Yopal', 'Casanare', 'CRA 21 # 11-05', '850001'),
(23, 'Leticia', 'Amazonas', 'CL 8 # 4-10', '910001'),
(24, 'San Andres', 'San Andres y Providencia', 'AV Newball # 3-20', '880001'),
(25, 'Quibdo', 'Choco', 'CL 25 # 7-45', '270001'),
(26, 'Florencia', 'Caqueta', 'CRA 11 # 14-22', '180001'),
(27, 'Mocoa', 'Putumayo', 'CL 3 # 6-09', '860001'),
(28, 'Duitama', 'Boyaca', 'CRA 16 # 12-50', '150461'),
(29, 'Soacha', 'Cundinamarca', 'CL 13 # 8-33', '250051'),
(30, 'Girardot', 'Cundinamarca', 'CRA 10 # 24-11', '252431');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
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
-- Dumping data for table `usuario`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Cli_Id`),
  ADD KEY `FK_Cliente_Ubicacion` (`Ub_Id`);

--
-- Indexes for table `detalles_entrega`
--
ALTER TABLE `detalles_entrega`
  ADD PRIMARY KEY (`De_Id`);

--
-- Indexes for table `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD PRIMARY KEY (`Dp_Id`),
  ADD KEY `FK_DetallesPedido_Producto` (`Pro_Id`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Inv_Id`),
  ADD KEY `FK_Inventario_Producto` (`Pro_Id`),
  ADD KEY `FK_Inventario_Usuario` (`Us_Id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Ped_Id`),
  ADD KEY `FK_Pedido_Cliente` (`Cli_Id`),
  ADD KEY `FK_Pedido_DetallesEntrega` (`De_Id`),
  ADD KEY `FK_Pedido_DetallesPedido` (`Dp_Id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Pro_Id`);

--
-- Indexes for table `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Ub_Id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Us_Id`),
  ADD KEY `FK_Usuario_Ubicacion` (`Ub_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Cli_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `detalles_entrega`
--
ALTER TABLE `detalles_entrega`
  MODIFY `De_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  MODIFY `Dp_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `Inv_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Ped_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `Pro_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `Ub_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Us_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_Cliente_Ubicacion` FOREIGN KEY (`Ub_Id`) REFERENCES `ubicacion` (`Ub_Id`);

--
-- Constraints for table `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD CONSTRAINT `FK_DetallesPedido_Producto` FOREIGN KEY (`Pro_Id`) REFERENCES `producto` (`Pro_Id`);

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `FK_Inventario_Producto` FOREIGN KEY (`Pro_Id`) REFERENCES `producto` (`Pro_Id`),
  ADD CONSTRAINT `FK_Inventario_Usuario` FOREIGN KEY (`Us_Id`) REFERENCES `usuario` (`Us_Id`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_Pedido_Cliente` FOREIGN KEY (`Cli_Id`) REFERENCES `cliente` (`Cli_Id`),
  ADD CONSTRAINT `FK_Pedido_DetallesEntrega` FOREIGN KEY (`De_Id`) REFERENCES `detalles_entrega` (`De_Id`),
  ADD CONSTRAINT `FK_Pedido_DetallesPedido` FOREIGN KEY (`Dp_Id`) REFERENCES `detalles_pedido` (`Dp_Id`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_Usuario_Ubicacion` FOREIGN KEY (`Ub_Id`) REFERENCES `ubicacion` (`Ub_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
