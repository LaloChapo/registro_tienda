-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2022 a las 20:51:29
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abarrote`
--
CREATE DATABASE IF NOT EXISTS `abarrote` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `abarrote`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `entidad` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `credito_max` double NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `Nombre`, `entidad`, `credito_max`, `estado`) VALUES
(1, 'JOSE ANTONIO', 'CHIAPAS', 2000, 'A'),
(2, 'JOSE ANGEL', 'CHIAPAS', 1000, 'A'),
(3, 'DANIEL', 'CHIAPAS', 1000, 'A'),
(4, 'ELISAMA', 'TABASCO', 2000, 'A'),
(5, 'Fernando Agustín', 'Desconocida', 10000, 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_ventas`
--

CREATE TABLE `d_ventas` (
  `id_d_ventas` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `d_ventas`
--

INSERT INTO `d_ventas` (`id_d_ventas`, `id_venta`, `id_producto`, `cantidad`, `importe`) VALUES
(0, 14, 6, 0, 0),
(0, 14, 2, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 17, 2, 0, 0),
(0, 17, 2, 0, 0),
(0, 17, 4, 0, 0),
(0, 17, 10, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 17, 2, 0, 0),
(0, 19, 3, 0, 0),
(0, 19, 4, 0, 0),
(0, 19, 6, 0, 0),
(0, 19, 5, 0, 0),
(0, 22, 4, 0, 0),
(0, 22, 3, 0, 0),
(0, 22, 5, 0, 0),
(0, 22, 4, 0, 0),
(0, 22, 5, 0, 0),
(0, 22, 7, 0, 0),
(0, 22, 8, 0, 0),
(0, 22, 10, 0, 0),
(0, 0, 0, 0, 0),
(0, 26, 2, 0, 0),
(0, 26, 5, 0, 0),
(0, 26, 6, 0, 0),
(0, 26, 6, 0, 0),
(0, 27, 4, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 3, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 0, 0, 0, 0),
(0, 28, 5, 0, 0),
(0, 28, 2, 0, 0),
(0, 28, 6, 0, 0),
(0, 28, 5, 0, 0),
(0, 28, 6, 0, 0),
(0, 28, 6, 0, 0),
(0, 28, 8, 0, 0),
(0, 28, 0, 0, 0),
(0, 28, 2, 0, 0),
(0, 0, 0, 0, 0),
(0, 30, 1, 0, 0),
(0, 30, 3, 0, 0),
(0, 30, 5, 0, 0),
(0, 32, 2, 0, 0),
(0, 33, 2, 0, 0),
(0, 33, 3, 0, 0),
(0, 36, 0, 0, 0),
(0, 36, 4, 0, 0),
(0, 36, 0, 0, 0),
(0, 36, 5, 0, 0),
(0, 36, 6, 0, 0),
(0, 36, 0, 0, 0),
(0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `n_producto` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `n_producto`, `existencia`, `precio`) VALUES
(1, 'Aceite', 20, '35'),
(2, 'Frijol', 50, '28'),
(3, 'Arroz', 30, '20'),
(4, 'Pasta', 20, '7'),
(5, 'leche', 30, '20'),
(6, 'Azucar', 39, '28'),
(7, 'Sal', 46, '6'),
(8, 'Refresco', 35, '32'),
(9, 'Atun', 55, '21'),
(10, 'Puere de tomate', 63, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `monto_total` double DEFAULT NULL,
  `f_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `mes`, `dia`, `monto`, `iva`, `monto_total`, `f_pago`) VALUES
(12, 5, NULL, NULL, NULL, NULL, NULL, 0),
(13, 3, NULL, NULL, NULL, NULL, NULL, 0),
(14, 4, NULL, NULL, NULL, NULL, NULL, 0),
(15, 0, NULL, NULL, NULL, NULL, NULL, 0),
(16, 0, NULL, NULL, NULL, NULL, NULL, 0),
(17, 0, NULL, NULL, NULL, NULL, NULL, 0),
(18, 0, NULL, NULL, NULL, NULL, NULL, 0),
(19, 2, NULL, NULL, NULL, NULL, NULL, 0),
(20, 0, NULL, NULL, NULL, NULL, NULL, 0),
(21, 0, NULL, NULL, NULL, NULL, NULL, 0),
(22, 2, NULL, NULL, NULL, NULL, NULL, 0),
(23, 0, NULL, NULL, NULL, NULL, NULL, 0),
(24, 0, NULL, NULL, NULL, NULL, NULL, 0),
(25, 0, NULL, NULL, NULL, NULL, NULL, 0),
(26, 2, NULL, NULL, NULL, NULL, NULL, 0),
(27, 2, NULL, NULL, NULL, NULL, NULL, 0),
(28, 2, NULL, NULL, NULL, NULL, NULL, 0),
(29, 0, NULL, NULL, NULL, NULL, NULL, 0),
(30, 0, NULL, NULL, NULL, NULL, NULL, 0),
(31, 1, NULL, NULL, NULL, NULL, NULL, 0),
(32, 1, NULL, NULL, NULL, NULL, NULL, 0),
(33, 1, NULL, NULL, NULL, NULL, NULL, 0),
(34, 1, NULL, NULL, NULL, NULL, NULL, 0),
(35, 2, NULL, NULL, NULL, NULL, NULL, 0),
(36, 3, NULL, NULL, NULL, NULL, NULL, 0),
(37, 0, NULL, NULL, NULL, NULL, NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Base de datos: `abarrotes`
--
CREATE DATABASE IF NOT EXISTS `abarrotes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `abarrotes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `entidad` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `credito_max` double NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_ventas`
--

CREATE TABLE `d_ventas` (
  `id_d_ventas` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `d_ventas`
--

INSERT INTO `d_ventas` (`id_d_ventas`, `id_venta`, `id_producto`, `cantidad`, `importe`) VALUES
(1, 2, 0, 0, 0),
(2, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `n_producto` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `n_producto`, `existencia`, `precio`) VALUES
(1, 'Aceite', 20, '35'),
(2, 'Frijol', 50, '28'),
(3, 'Arroz', 30, '20'),
(4, 'Pasta', 20, '7'),
(5, 'Leche', 30, '20'),
(6, 'Azucar', 39, '28'),
(7, 'Sal', 46, '6'),
(8, 'Refresco', 35, '32'),
(9, 'Atun', 55, '21'),
(10, 'Pure de tomate', 63, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `monto` double NOT NULL,
  `f_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `mes`, `dia`, `monto`, `f_pago`) VALUES
(1, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `d_ventas`
--
ALTER TABLE `d_ventas`
  ADD PRIMARY KEY (`id_d_ventas`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_ventas`
--
ALTER TABLE `d_ventas`
  MODIFY `id_d_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `bdejemplo`
--
CREATE DATABASE IF NOT EXISTS `bdejemplo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bdejemplo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciondeltrabajador`
--

CREATE TABLE `asignaciondeltrabajador` (
  `idAsignacion` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `idrfc` varchar(15) NOT NULL,
  `fechaDelaAsiganacion` varchar(12) NOT NULL,
  `AsignacionDelTrabajadorcol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL,
  `nombreDepartamento` varchar(30) NOT NULL,
  `nombreDirector` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `rfc` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nombreUsuario` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipoUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciondeltrabajador`
--
ALTER TABLE `asignaciondeltrabajador`
  ADD PRIMARY KEY (`idAsignacion`),
  ADD UNIQUE KEY `idAsignacion_UNIQUE` (`idAsignacion`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`rfc`),
  ADD UNIQUE KEY `idTrabajador_UNIQUE` (`rfc`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD UNIQUE KEY `idUsuarios_UNIQUE` (`idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciondeltrabajador`
--
ALTER TABLE `asignaciondeltrabajador`
  MODIFY `idAsignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `bdejemplo3`
--
CREATE DATABASE IF NOT EXISTS `bdejemplo3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdejemplo3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `bd_gibmafe2`
--
CREATE DATABASE IF NOT EXISTS `bd_gibmafe2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `bd_gibmafe2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_disponibles`
--

CREATE TABLE `tb_disponibles` (
  `id_disponible` int(5) NOT NULL,
  `cod_producto` int(5) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(4) NOT NULL,
  `estado` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `mostrar` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `precio_compra` int(10) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_externos`
--

CREATE TABLE `tb_externos` (
  `identificacion_externo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_inventario`
--

CREATE TABLE `tb_inventario` (
  `id_inventario` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `no_inventario` varchar(20) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `serie` varchar(20) NOT NULL,
  `factura` varchar(20) NOT NULL,
  `f_adqusicion` varchar(10) NOT NULL,
  `orden_pago` int(11) NOT NULL,
  `cheque` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `partida` int(11) NOT NULL,
  `programa` varchar(10) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `importe` double NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `obervaciones` varchar(50) NOT NULL,
  `area_adscripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_inventario`
--

INSERT INTO `tb_inventario` (`id_inventario`, `id`, `no_inventario`, `descripcion`, `marca`, `modelo`, `color`, `serie`, `factura`, `f_adqusicion`, `orden_pago`, `cheque`, `condiciones`, `partida`, `programa`, `responsable`, `importe`, `codigo`, `obervaciones`, `area_adscripcion`) VALUES
(1, 155, 'TE-08-5101-01-0001', 'ARMARIO CON 2 PUERTAS', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 800, '5111030002', '', 'COORDINACI?N DE CULTURA - CDC'),
(2, 156, 'TE-08-5101-02-0004', 'ARCHIVERO CON 3 GAVETAS', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 620, '5111020013', '', 'COORDINACI?N DE CULTURA - CDC'),
(3, 158, 'TE-08-5101-14-0001', 'CREDENZA METALICA DE 5 GAVETAS', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 2120, '5111090005', '', 'COORDINACI?N DE CULTURA - CDC'),
(4, 159, 'TE-08-5101-18-0001', 'ESCRITORIO EJECUTIVO DE  5 GAVETAS', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1645, '5111110031', '', 'COORDINACI?N DE CULTURA - CDC'),
(5, 160, 'TE-08-5101-18-0008', 'ESCRITORIO SECRETARIAL DE 2 GAV.', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1195, '5111110034', '', 'COORDINACI?N DE CULTURA - CDC'),
(6, 161, 'TE-08-5101-18-0009', 'ESCRITORIO SECRETARIAL DE 2 GAV.', 'RIVIERA', 'S/N', 'NEGRO', 'S/N', '0', '1/1/1995', 0, 0, 'REGULAR', 51101, 'PAR', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1195, '5111110035', '', 'COORDINACI?N DE CULTURA - CDC'),
(7, 182, 'TE-2007-08-01-6101-4', 'MESA GRANDE DE PLASTICO', 'LIFETIME', 'S/N', 'BLANCO', 'S/N', '458', '7/5/2007', 3919, 31, 'REGULAR', 51101, 'ING', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1518, '5111220091', '', 'COORDINACI?N DE CULTURA - CDC'),
(8, 218, '16-2012-09-04-5151-0', 'IMPRESORA DE TINTA, SIN CABLES', 'H. P.', '2050', 'NEGRO', 'CN24K3BJKS', '551', '23/10/2012', 10218, 152, 'MALAS', 51501, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1740, '5151050025', '', 'COORDINACI?N DE CULTURA - CDC'),
(9, 219, '16-2012-09-04-5151-0', 'EQUIPO DE COMPUTO LAP-TOP', 'H. P.', 'LAP-TOP MICROSOFT', 'ROJO VINO', 'X16-96084', '551', '23/10/2012', 10218, 152, 'MALAS', 51501, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 17772.46, '5151030004', '', 'COORDINACI?N DE CULTURA - CDC'),
(10, 227, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170001', '', 'COORDINACI?N DE CULTURA - CDC'),
(11, 228, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170002', '', 'COORDINACI?N DE CULTURA - CDC'),
(12, 229, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170003', '', 'COORDINACI?N DE CULTURA - CDC'),
(13, 230, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170004', '', 'COORDINACI?N DE CULTURA - CDC'),
(14, 231, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170005', '', 'COORDINACI?N DE CULTURA - CDC'),
(15, 232, '16-2012-09-04-5291-0', 'MANDOLINA DE MADERA', 'S/N', 'S/N', 'MADERA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4176, '5291170006', '', 'COORDINACI?N DE CULTURA - CDC'),
(16, 233, '16-2012-09-04-5291-0', 'JARANA DE CAOBA', 'S/N', 'S/N', 'CAOBA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4627.18, '5291140001', '', 'COORDINACI?N DE CULTURA - CDC'),
(17, 234, '16-2012-09-04-5291-0', 'JARANA DE CAOBA', 'S/N', 'S/N', 'CAOBA', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 4627.18, '5291140002', '', 'COORDINACI?N DE CULTURA - CDC'),
(18, 268, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.55, '5291200007', '', 'COORDINACI?N DE CULTURA - CDC'),
(19, 269, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.55, '5291200009', '', 'COORDINACI?N DE CULTURA - CDC'),
(20, 270, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.55, '5291200010', '', 'COORDINACI?N DE CULTURA - CDC'),
(21, 271, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.55, '5291200012', '', 'COORDINACI?N DE CULTURA - CDC'),
(22, 272, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.55, '5291200013', '', 'COORDINACI?N DE CULTURA - CDC'),
(23, 273, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.54, '5291200016', '', 'COORDINACI?N DE CULTURA - CDC'),
(24, 274, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.54, '5291200017', '', 'COORDINACI?N DE CULTURA - CDC'),
(25, 275, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.54, '5291200018', '', 'COORDINACI?N DE CULTURA - CDC'),
(26, 276, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.54, '5291200019', '', 'COORDINACI?N DE CULTURA - CDC'),
(27, 277, '16-2012-09-04-5291-1', 'MICROFONO', 'SHURE', 'PG48', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'REGULAR', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 1358.54, '5291200020', '', 'COORDINACI?N DE CULTURA - CDC'),
(28, 279, '16-2012-09-04-5291-1', 'EQUIPO DE SONIDO', 'SAMSON', 'XP510', 'NEGRO', 'S/N', '547', '23/10/2012', 10088, 152, 'MALAS', 52901, 'CNF', 'DENY GUADALUPE CRUZ DE LA CRUZ', 14585.74, '5291120008', '', 'COORDINACI?N DE CULTURA - CDC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_movimientos`
--

CREATE TABLE `tb_movimientos` (
  `cod_movimiento` int(11) NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(5) NOT NULL,
  `tipo_movimiento` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `valor_movimiento` int(10) NOT NULL,
  `fecha_movimiento` date NOT NULL,
  `factura` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion_externo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cod_producto` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `cod_producto` int(5) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio_compra` int(10) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`cod_producto`, `descripcion`, `precio_compra`, `fecha_registro`) VALUES
(6, 'computadora', 20000, '2022-05-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(130) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ultima_sesion` datetime DEFAULT NULL,
  `activacion` int(11) NOT NULL DEFAULT 0,
  `token` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `token_password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password_request` int(11) DEFAULT 0,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`usuario`, `password`, `nombre`, `celular`, `correo`, `ultima_sesion`, `activacion`, `token`, `token_password`, `password_request`, `fecha_registro`) VALUES
('cristhel', '$2y$10$Z443XikYbYRl4us3y07f3eWzdMQE24/Jwynb206YiL30aUplOvJqW', 'Cristhel Vázquez ', '1234', 'jhoanacristheldelacruz18e30256', '2022-05-30 10:37:35', 1, '8947e64a39d852128ddd2cb5394ea1b1', '', 1, '2022-05-16 02:09:37'),
('jefesita', '$2y$10$ljFfNs32pbg//Y7.fQEKO.du4A/rTO373R0n6.or9VQKEPXpSQnc2', 'Ingri', '798546', 'jefesita@gmail.com', '2022-05-29 18:42:01', 1, 'b8f3e5f1b6a6ec1e29cd9e00d6c65097', '', 1, '2022-05-29 18:29:36'),
('stmendoxxa', '$2y$10$K6ClVugC/C0F82WK1PnESO4.c0i./E9FpLuNwsiiC7qwSIoZN2Vgy', 'cristhian mendoza', '3183448285', 'cristhiancm-1@hotmail.com', '2017-07-23 17:38:15', 1, 'af3299a1db0e5c0334d15c223d8e7647', '', 1, '2017-07-13 13:40:18'),
('stmendozza', '$2y$10$dWNxio9p8T3K4qyis3fxjeqxecIpUB0/OXG9qyevs.woHvgYt7j3a', 'Cristhian Mendoza Olaya', '3183448285', 'stmendozza@gmail.com', '2017-07-26 08:15:14', 1, '38f942768b843a23e58441c5ab6905bb', '', 1, '2017-07-08 14:53:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_disponibles`
--
ALTER TABLE `tb_disponibles`
  ADD PRIMARY KEY (`id_disponible`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- Indices de la tabla `tb_externos`
--
ALTER TABLE `tb_externos`
  ADD PRIMARY KEY (`identificacion_externo`);

--
-- Indices de la tabla `tb_movimientos`
--
ALTER TABLE `tb_movimientos`
  ADD PRIMARY KEY (`cod_movimiento`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_disponibles`
--
ALTER TABLE `tb_disponibles`
  MODIFY `id_disponible` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tb_movimientos`
--
ALTER TABLE `tb_movimientos`
  MODIFY `cod_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `cod_producto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_disponibles`
--
ALTER TABLE `tb_disponibles`
  ADD CONSTRAINT `tb_disponibles_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `tb_productos` (`cod_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `bescas`
--
CREATE DATABASE IF NOT EXISTS `bescas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `bescas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_Alumno` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido_p` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apeliido_m` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Genero` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Peso` double NOT NULL,
  `Altura` double NOT NULL,
  `Diabetes` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Tipo_Diabetes` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Madre_Soltera` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Estado` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nombre_Escuela` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Carrera` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Promedio` double NOT NULL,
  `Edad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_Alumno`, `Nombre`, `Apellido_p`, `Apeliido_m`, `Genero`, `Peso`, `Altura`, `Diabetes`, `Tipo_Diabetes`, `Madre_Soltera`, `Estado`, `Nombre_Escuela`, `Carrera`, `Promedio`, `Edad`) VALUES
(1, 'pedro', 'Colorado', 'Sánchez', 'M', 60, 160, 'Si', 'Tipo 2', 'Si', 'BCS', 'ITSS', 'Informatica', 88, 23),
(2, 'jaime', 'López', 'Sánchez', 'M', 87, 164, 'No', '', 'Si', 'Tabasco', 'UJAT', 'Informatica', 79, 47),
(3, 'pedro', 'Álvarez', 'Pérez', 'M', 88, 163, 'Si', 'Tipo 1', 'Si', 'Oaxaca', 'UJAT', 'Informatica', 82, 41),
(4, 'Jhoana', 'Colorado', 'Jiménez', 'F', 68, 174, 'Si', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Administracion', 95, 38),
(5, 'pedro', 'Colorado', 'López', 'M', 66, 164, 'Si', 'Tipo 2', 'Si', 'Veracruz', 'ITSS', 'Administracion', 95, 46),
(6, 'jhonatan', 'Álvarez', 'Jiménez', 'M', 84, 179, 'Si', 'Tipo 2', 'No', 'Chiapas', 'UJAT', 'Informatica', 93, 50),
(7, 'Felipa', 'Pérez', 'Díaz', 'F', 55, 166, 'No', 'Tipo 1', 'No', 'Veracruz', 'ITSS', 'Informatica', 77, 31),
(8, 'jhonatan', 'Jiménez', 'Pérez', 'M', 84, 171, 'Si', 'Tipo 2', '', 'Tabasco', 'ITSS', 'Informatica', 75, 32),
(9, 'jaime', 'Colorado', 'Álvarez', 'M', 88, 175, 'Si', 'Tipo 1', '', 'Chiapas', 'UJAT', 'Informatica', 97, 39),
(10, 'jhonatan', 'Colorado', 'Colorado', 'M', 69, 180, 'Si', 'Tipo 2', '', 'BCS', 'ITSS', 'Administracion', 82, 29),
(11, 'jhonatan', 'Colorado', 'Sánchez', 'M', 89, 171, 'No', 'Tipo 2', '', 'Chiapas', 'UJAT', 'Informatica', 80, 41),
(12, 'Cristhel', 'López', 'Sánchez', 'F', 86, 176, 'No', 'Tipo 2', 'Si', 'Chiapas', 'ITSS', 'Informatica', 91, 44),
(13, 'jaime', 'Jiménez', 'Jiménez', 'M', 53, 177, 'Si', 'Tipo 2', '', 'BCS', 'UJAT', 'Informatica', 89, 29),
(14, 'pedro', 'Díaz', 'Pérez', 'M', 86, 168, 'No', 'Tipo 2', '', 'Oaxaca', 'ITSS', 'Administracion', 95, 47),
(15, 'pedro', 'Jiménez', 'Jiménez', 'M', 85, 180, 'Si', 'Tipo 1', '', 'Chiapas', 'ITSS', 'Administracion', 79, 43),
(16, 'jaime', 'López', 'Jiménez', 'M', 51, 172, 'No', 'Tipo 1', '', 'Chiapas', 'ITSS', 'Informatica', 94, 29),
(17, 'Jhoana', 'Jiménez', 'Álvarez', 'F', 68, 180, 'Si', 'Tipo 2', 'Si', 'Chiapas', 'ITSS', 'Administracion', 84, 48),
(18, 'jhonatan', 'Álvarez', 'Díaz', 'M', 68, 165, 'Si', 'Tipo 1', 'Si', 'Tabasco', 'ITSS', 'Administracion', 98, 32),
(19, 'Cristhel', 'Sánchez', 'López', 'F', 87, 176, 'No', 'Tipo 1', 'Si', 'Tabasco', 'UJAT', 'Administracion', 82, 41),
(20, 'Eduardo', 'Colorado', 'Jiménez', 'M', 60, 178, 'Si', 'Tipo 2', 'Si', 'BCS', 'ITSS', 'Informatica', 77, 19),
(21, 'Rosa', 'Jiménez', 'Jiménez', 'F', 67, 174, 'Si', 'Tipo 2', 'Si', 'Chiapas', 'ITSS', 'Administracion', 86, 24),
(22, 'Felipa', 'Álvarez', 'Sánchez', 'F', 80, 176, 'Si', 'Tipo 1', 'No', 'Tabasco', 'UJAT', 'Administracion', 96, 42),
(23, 'Eduardo', 'Sánchez', 'Colorado', 'M', 78, 171, 'No', 'Tipo 1', 'No', 'Chiapas', 'UJAT', 'Informatica', 94, 49),
(24, 'Cristhel', 'Álvarez', 'López', 'F', 63, 167, 'Si', 'Tipo 1', 'No', 'Chiapas', 'UJAT', 'Informatica', 98, 34),
(25, 'Rosa', 'Sánchez', 'Sánchez', 'F', 59, 166, 'No', 'Tipo 1', 'Si', 'Tabasco', 'UJAT', 'Administracion', 84, 38),
(26, 'jaime', 'Sánchez', 'López', 'M', 58, 172, 'Si', 'Tipo 2', 'Si', 'Chiapas', 'ITSS', 'Informatica', 76, 34),
(27, 'Rosa', 'Jiménez', 'Hernández', 'F', 86, 164, 'Si', 'Tipo 2', 'Si', 'Tabasco', 'UJAT', 'Administracion', 98, 17),
(28, 'jaime', 'Hernández', 'Álvarez', 'M', 85, 164, 'Si', 'Tipo 2', '', 'Oaxaca', 'ITSS', 'Informatica', 83, 47),
(29, 'pedro', 'López', 'Pérez', 'M', 74, 174, 'Si', 'Tipo 1', '', 'Veracruz', 'UJAT', 'Informatica', 85, 47),
(30, 'Jhoana', 'Jiménez', 'Colorado', 'F', 59, 176, 'Si', 'Tipo 1', 'No', 'Veracruz', 'ITSS', 'Administracion', 77, 47),
(31, 'jaime', 'Sánchez', 'Díaz', 'M', 85, 167, 'No', 'Tipo 1', 'No', 'Veracruz', 'ITSS', 'Informatica', 83, 39),
(32, 'pedro', 'Jiménez', 'Pérez', 'M', 56, 178, 'No', 'Tipo 1', 'No', 'Chiapas', 'UJAT', 'Informatica', 87, 22),
(33, 'jhonatan', 'Díaz', 'Sánchez', 'M', 58, 164, 'Si', 'Tipo 2', 'No', 'Oaxaca', 'ITSS', 'Administracion', 83, 21),
(34, 'jaime', 'Colorado', 'López', 'M', 54, 167, 'Si', 'Tipo 2', 'No', 'BCS', 'UJAT', 'Administracion', 92, 31),
(35, 'Cristhel', 'Hernández', 'Hernández', 'F', 56, 165, 'No', '', 'No', 'Veracruz', 'UJAT', 'Informatica', 85, 25),
(36, 'Cristhel', 'Díaz', 'Colorado', 'F', 54, 177, 'No', '', 'No', 'Chiapas', 'ITSS', 'Administracion', 75, 32),
(37, 'Eduardo', 'Hernández', 'Álvarez', 'M', 84, 173, 'Si', 'Tipo 1', 'No', 'BCS', 'ITSS', 'Administracion', 99, 17),
(38, 'Jhoana', 'Hernández', 'López', 'F', 51, 168, 'Si', 'Tipo 1', 'Si', 'BCS', 'ITSS', 'Informatica', 92, 15),
(39, 'pedro', 'López', 'Sánchez', 'M', 63, 174, 'Si', 'Tipo 2', 'Si', 'Chiapas', 'ITSS', 'Informatica', 76, 24),
(40, 'Jhoana', 'Álvarez', 'Jiménez', 'F', 65, 163, 'Si', 'Tipo 1', 'Si', 'Chiapas', 'ITSS', 'Informatica', 77, 28),
(41, 'Cristhel', 'Sánchez', 'Colorado', 'F', 69, 167, 'No', 'Tipo 1', 'Si', 'Oaxaca', 'ITSS', 'Informatica', 95, 37),
(42, 'Rosa', 'Álvarez', 'Colorado', 'F', 70, 177, 'Si', 'Tipo 1', 'Si', 'Oaxaca', 'UJAT', 'Administracion', 97, 39),
(43, 'jaime', 'Hernández', 'Álvarez', 'M', 61, 176, 'No', 'Tipo 1', 'Si', 'Veracruz', 'UJAT', 'Informatica', 85, 21),
(44, 'jhonatan', 'Jiménez', 'Díaz', 'M', 62, 165, 'No', '', '', 'Oaxaca', 'UJAT', 'Administracion', 92, 50),
(45, 'Cristhel', 'Hernández', 'Colorado', 'F', 81, 167, 'No', '', 'Si', 'Veracruz', 'UJAT', 'Administracion', 83, 23),
(46, 'jaime', 'Colorado', 'Álvarez', 'M', 76, 180, 'Si', 'Tipo 1', 'Si', 'Tabasco', 'ITSS', 'Administracion', 84, 40),
(47, 'Rosa', 'Colorado', 'López', 'F', 73, 171, 'Si', 'Tipo 1', 'Si', 'Oaxaca', 'ITSS', 'Informatica', 79, 50),
(48, 'Cristhel', 'Sánchez', 'Colorado', 'F', 55, 161, 'Si', 'Tipo 2', 'No', 'Tabasco', 'UJAT', 'Informatica', 81, 28),
(49, 'pedro', 'Álvarez', 'Hernández', 'M', 74, 169, 'Si', 'Tipo 1', 'No', 'Oaxaca', 'UJAT', 'Administracion', 90, 35),
(50, 'Cristhel', 'Álvarez', 'Colorado', 'F', 62, 166, 'Si', 'Tipo 1', 'Si', 'Veracruz', 'ITSS', 'Administracion', 97, 21),
(51, 'Eduardo', 'Sánchez', 'Álvarez', 'M', 68, 170, 'No', 'Tipo 1', 'Si', 'Chiapas', 'UJAT', 'Informatica', 78, 40),
(52, 'pedro', 'Díaz', 'Hernández', 'M', 86, 177, 'No', 'Tipo 1', 'Si', 'Tabasco', 'UJAT', 'Informatica', 94, 42),
(53, 'Eduardo', 'López', 'Pérez', 'M', 57, 162, 'Si', 'Tipo 1', '', 'Oaxaca', 'ITSS', 'Administracion', 99, 46),
(54, 'Felipa', 'Jiménez', 'López', 'F', 83, 160, 'Si', 'Tipo 1', 'No', 'Veracruz', 'ITSS', 'Informatica', 90, 50),
(55, 'pedro', 'Pérez', 'Jiménez', 'M', 75, 163, 'Si', 'Tipo 1', '', 'Tabasco', 'UJAT', 'Administracion', 100, 28),
(56, 'Felipa', 'Hernández', 'Álvarez', 'F', 71, 175, 'Si', 'Tipo 1', 'No', 'Oaxaca', 'ITSS', 'Administracion', 83, 27),
(57, 'Eduardo', 'Colorado', 'Colorado', 'M', 50, 178, 'Si', 'Tipo 1', 'No', 'BCS', 'ITSS', 'Informatica', 76, 39),
(58, 'Felipa', 'Pérez', 'Pérez', 'F', 78, 177, 'Si', 'Tipo 1', 'No', 'Veracruz', 'UJAT', 'Informatica', 81, 27),
(59, 'Eduardo', 'Álvarez', 'López', 'M', 69, 160, 'Si', 'Tipo 1', '', 'Veracruz', 'UJAT', 'Administracion', 98, 18),
(60, 'Cristhel', 'Pérez', 'Álvarez', 'F', 62, 176, 'No', 'Tipo 1', 'Si', 'Veracruz', 'UJAT', 'Informatica', 75, 47),
(61, 'Felipa', 'Pérez', 'Díaz', 'F', 70, 177, 'No', '', 'Si', 'Tabasco', 'UJAT', 'Informatica', 94, 30),
(62, 'jhonatan', 'López', 'Sánchez', 'M', 74, 173, 'Si', 'Tipo 1', 'Si', 'Oaxaca', 'UJAT', 'Administracion', 95, 15),
(63, 'Cristhel', 'Díaz', 'Álvarez', 'F', 58, 163, 'No', 'Tipo 1', 'No', 'Tabasco', 'UJAT', 'Administracion', 85, 25),
(64, 'jaime', 'Pérez', 'López', 'M', 72, 165, 'Si', 'Tipo 2', 'No', 'Chiapas', 'UJAT', 'Informatica', 80, 25),
(65, 'Felipa', 'Jiménez', 'Álvarez', 'F', 74, 176, 'No', '', 'Si', 'Tabasco', 'ITSS', 'Informatica', 75, 26),
(66, 'jaime', 'López', 'Colorado', 'M', 77, 179, 'Si', 'Tipo 1', '', 'Veracruz', 'UJAT', 'Administracion', 100, 31),
(67, 'pedro', 'Jiménez', 'Sánchez', 'M', 90, 178, 'Si', 'Tipo 2', '', 'Oaxaca', 'ITSS', 'Administracion', 82, 43),
(68, 'Rosa', 'Sánchez', 'Jiménez', 'F', 66, 175, 'No', 'Tipo 2', 'No', 'Oaxaca', 'UJAT', 'Informatica', 89, 18),
(69, 'jhonatan', 'Jiménez', 'López', 'M', 55, 165, 'No', 'Tipo 2', 'No', 'Oaxaca', 'ITSS', 'Informatica', 99, 18),
(70, 'jaime', 'Díaz', 'Vera', 'M', 75, 179, 'Si', 'Tipo 1', '', 'Tabasco', 'ITSS', 'Informatica', 78, 44),
(71, 'Rosa', 'Pérez', 'Pérez', 'F', 53, 166, 'Si', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Informatica', 75, 34),
(72, 'Eduardo', 'Álvarez', 'Colorado', 'M', 51, 180, 'No', 'Tipo 2', 'No', 'Tabasco', 'ITSS', 'Administracion', 84, 44),
(73, 'Eduardo', 'Colorado', 'Díaz', 'M', 55, 167, 'No', '', '', 'Veracruz', 'ITSS', 'Administracion', 96, 43),
(74, 'Felipa', 'Pérez', 'López', 'F', 0, 88, '17', 'Si', 'Ti', 'Veracruz', 'ITSS', 'Informatica', 76, 19),
(75, 'pedro', 'López', 'Hernández', 'M', 88, 161, 'Si', 'Tipo 2', '', 'BCS', 'ITSS', 'Administracion', 77, 35),
(76, 'jaime', 'Díaz', 'Colorado', 'M', 60, 169, 'Si', 'Tipo 2', '', 'Chiapas', 'UJAT', 'Administracion', 82, 43),
(77, 'Felipa', 'Sánchez', 'Álvarez', 'F', 62, 177, 'Si', 'Tipo 2', 'Si', 'Veracruz', 'ITSS', 'Administracion', 82, 28),
(78, 'Jhoana', 'Vera', 'Díaz', 'F', 88, 180, 'Si', 'Tipo 2', 'Si', 'BCS', 'ITSS', 'Administracion', 85, 27),
(79, 'Jhoana', 'López', 'Pérez', 'F', 67, 160, 'No', '', 'Si', 'Tabasco', 'UJAT', 'Administracion', 78, 45),
(80, 'Cristhel', 'Vera', 'Vera', 'F', 77, 168, 'Si', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Administracion', 90, 22),
(81, 'Felipa', 'Pérez', 'Díaz', 'F', 61, 166, 'No', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Informatica', 89, 15),
(82, 'jaime', 'Sánchez', 'Hernández', 'M', 70, 172, 'Si', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Administracion', 100, 26),
(83, 'Eduardo', 'Díaz', 'Colorado', 'M', 86, 171, 'No', '', '', 'Oaxaca', 'ITSS', 'Informatica', 88, 30),
(84, 'Jhoana', 'Álvarez', 'Hernández', 'F', 60, 165, 'No', '', 'Si', 'Veracruz', 'ITSS', 'Administracion', 95, 46),
(85, 'jhonatan', 'Pérez', 'Jiménez', 'M', 72, 164, 'Si', 'Tipo 1', 'Si', 'Tabasco', 'ITSS', 'Informatica', 93, 34),
(86, 'Jhoana', 'Díaz', 'Vera', 'F', 82, 160, 'Si', 'Tipo 1', 'Si', 'Tabasco', 'UJAT', 'Informatica', 95, 35),
(87, 'Eduardo', 'Jiménez', 'Colorado', 'M', 55, 161, 'No', '', '', 'Oaxaca', 'UJAT', 'Administracion', 84, 35),
(88, 'Felipa', 'Sánchez', 'Vera', 'F', 67, 160, 'No', '', 'No', 'Oaxaca', 'ITSS', 'Administracion', 95, 34),
(89, 'jaime', 'Hernández', 'Hernández', 'M', 77, 174, 'No', '', 'No', 'Oaxaca', 'UJAT', 'Administracion', 87, 39),
(90, 'Jhoana', 'Jiménez', 'Álvarez', 'F', 52, 164, 'No', '', 'Si', 'Chiapas', 'ITSS', 'Informatica', 81, 21),
(91, 'Jhoana', 'Álvarez', 'López', 'F', 57, 161, 'S', 'Tipo 1', 'No', 'Oaxaca', 'UJAT', 'Administracion', 82, 16),
(92, 'Rosa', 'Colorado', 'Sánchez', 'F', 86, 175, 'N', 'Tipo 1', 'Si', 'Veracruz', 'UJAT', 'Informatica', 92, 37),
(93, 'pedro', 'Jiménez', 'Sánchez', 'M', 89, 162, 'S', 'Tipo 2', 'Si', 'Tabasco', 'UJAT', 'Informatica', 91, 31),
(94, 'Eduardo', 'Sánchez', 'Jiménez', 'M', 68, 172, 'N', 'Tipo 2', 'Si', 'Tabasco', 'UJAT', 'Informatica', 82, 16),
(95, 'Rosa', 'Hernández', 'Hernández', 'F', 54, 169, 'SI', 'Tipo 1', 'No', 'Oaxaca', 'UJAT', 'Informatica', 88, 36),
(96, 'Cristhel', 'Díaz', 'Vera', 'F', 62, 164, 'NO', 'Tipo 1', 'Si', 'Oaxaca', 'ITSS', 'Informatica', 84, 39),
(97, 'Rosa', 'Sánchez', 'Jiménez', 'F', 84, 164, 'SI', 'Tipo 1', 'No', 'Veracruz', 'UJAT', 'Informatica', 87, 50),
(98, 'jhonatan', 'Pérez', 'Sánchez', 'M', 71, 160, 'SI', 'Tipo 1', 'No', 'Chiapas', 'ITSS', 'Informatica', 83, 32),
(99, 'jaime', 'Pérez', 'Pérez', 'M', 85, 175, 'No', '', '', 'Oaxaca', 'UJAT', 'Administracion', 92, 44),
(100, 'Jhoana', 'Álvarez', 'Díaz', 'F', 69, 166, 'Si', '', 'Si', 'Chiapas', 'ITSS', 'Administracion', 98, 21),
(101, 'Rosa', 'Jiménez', 'Vera', 'F', 68, 170, 'Si', '', 'Si', 'Tabasco', 'UJAT', 'Informatica', 97, 41),
(102, 'jaime', 'Díaz', 'Colorado', 'M', 58, 180, 'Si', '', 'Si', 'Tabasco', 'ITSS', 'Administracion', 79, 17),
(103, 'Felipa', 'Jiménez', 'Colorado', 'F', 85, 163, 'Si', '', 'No', 'BCS', 'ITSS', 'Informatica', 75, 15),
(104, 'pedro', 'López', 'Jiménez', 'M', 71, 162, 'Si', '', 'No', 'Veracruz', 'UJAT', 'Administracion', 92, 37),
(105, 'pedro', 'Jiménez', 'Vera', 'M', 71, 160, 'Si', '', 'No', 'Tabasco', 'ITSS', 'Informatica', 89, 18),
(106, 'jaime', 'Pérez', 'Vera', 'M', 59, 174, 'No', '', 'No', 'BCS', 'ITSS', 'Administracion', 93, 26),
(107, 'jhonatan', 'López', 'Pérez', 'M', 70, 166, 'No', '', '', 'Tabasco', 'ITSS', 'Informatica', 83, 21),
(108, 'jhonatan', 'Sánchez', 'Hernández', 'M', 51, 180, 'No', '', '', 'Veracruz', 'ITSS', 'Administracion', 94, 33),
(109, 'jaime', 'Jiménez', 'Díaz', 'M', 82, 169, 'Si', '', '', 'Tabasco', 'UJAT', 'Informatica', 75, 15),
(110, 'jhonatan', 'López', 'Álvarez', 'M', 86, 176, 'Si', '', '', 'Oaxaca', 'ITSS', 'Administracion', 94, 43),
(111, 'Cristhel', 'Vera', 'Vera', 'F', 83, 168, 'No', '', 'No', 'Veracruz', 'ITSS', 'Administracion', 91, 20),
(112, 'pedro', 'López', 'Vera', 'M', 59, 162, 'Si', 'Tipo 2', 'No', 'BCS', 'UJAT', 'Informatica', 88, 23),
(113, 'Cristhel', 'Jiménez', 'Pérez', 'F', 71, 180, 'Si', 'Tipo 2', 'Si', 'Chiapas', 'UJAT', 'Administracion', 85, 39),
(114, 'Cristhel', 'López', 'Pérez', 'F', 54, 167, 'Si', 'Tipo 1', 'Si', 'Tabasco', 'UJAT', 'Administracion', 81, 46),
(115, 'jhonatan', 'Sánchez', 'Díaz', 'M', 64, 178, 'No', '', '', 'Veracruz', 'ITSS', 'Informatica', 97, 26),
(116, 'Eduardo', 'López', 'Álvarez', 'M', 50, 172, 'Si', 'Tipo 1', '', 'Veracruz', 'ITSS', 'Administracion', 77, 35),
(117, 'Cristhel', 'Díaz', 'Colorado', 'F', 75, 165, 'Si', 'Tipo 1', 'Si', 'Chiapas', 'UJAT', 'Informatica', 92, 45),
(118, 'Cristhel', 'Álvarez', 'Sánchez', 'F', 59, 165, 'Si', 'Tipo 1', 'Si', 'Veracruz', 'UJAT', 'Administracion', 78, 38),
(119, 'jhonatan', 'Álvarez', 'Sánchez', 'M', 51, 162, 'No', '', '', 'Chiapas', 'ITSS', 'Informatica', 94, 23),
(120, 'Jhoana', 'Díaz', 'Hernández', 'F', 57, 162, 'No', '', 'No', 'Chiapas', 'ITSS', 'Administracion', 88, 23),
(121, 'Felipa', 'Álvarez', 'Pérez', 'F', 87, 177, 'No', '', 'No', 'Oaxaca', 'UJAT', 'Informatica', 80, 35),
(122, 'jhonatan', 'López', 'Colorado', 'M', 66, 169, 'No', '', 'No', 'Veracruz', 'ITSS', 'Informatica', 91, 29),
(123, 'Jhoana', 'López', 'López', 'F', 67, 173, 'No', '', 'No', 'Oaxaca', 'ITSS', 'Administracion', 98, 17),
(124, 'pedro', 'Hernández', 'Jiménez', 'M', 51, 172, 'No', '', 'No', 'Veracruz', 'UJAT', 'Informatica', 93, 46),
(125, 'jhonatan', 'Sánchez', 'Pérez', 'M', 75, 172, 'No', '', 'No', 'Tabasco', 'ITSS', 'Administracion', 100, 45),
(126, 'Eduardo', 'Álvarez', 'Díaz', 'M', 80, 171, 'Si', 'Tipo 2', 'No', 'Veracruz', 'UJAT', 'Administracion', 89, 41),
(127, 'Rosa', 'Álvarez', 'Sánchez', 'F', 69, 173, 'Si', 'Tipo 1', '', 'Chiapas', 'UJAT', 'Informatica', 83, 18),
(128, 'pedro', 'Colorado', 'Vera', 'M', 78, 171, 'No', 'Tipo 1', '', 'Veracruz', 'ITSS', 'Administracion', 86, 32),
(129, 'jaime', 'Díaz', 'Sánchez', 'M', 86, 169, 'Si', 'Tipo 1', '', 'Tabasco', 'UJAT', 'Administracion', 82, 33),
(130, 'jaime', 'Hernández', 'Pérez', 'M', 51, 168, 'No', 'Tipo 1', '', 'Oaxaca', 'ITSS', 'Informatica', 81, 49),
(131, 'Felipa', 'Díaz', 'Álvarez', 'F', 89, 160, 'No', '', 'No', 'Oaxaca', 'UJAT', 'Informatica', 80, 26),
(132, 'Felipa', 'Díaz', 'López', 'F', 86, 169, 'No', '', 'No', 'Veracruz', 'ITSS', 'Informatica', 89, 24),
(133, 'Eduardo', 'Vera', 'Jiménez', 'M', 80, 178, 'Si', 'Tipo 2', 'No', 'Tabasco', 'ITSS', 'Administracion', 79, 25),
(134, 'Felipa', 'Vera', 'Álvarez', 'F', 76, 180, 'Si', 'Tipo 1', 'Si', 'Oaxaca', 'ITSS', 'Administracion', 95, 23),
(135, 'Felipa', 'Jiménez', 'Colorado', 'F', 70, 167, 'No', '', '', 'BCS', 'UJAT', 'Administracion', 89, 37),
(136, 'Rosa', 'López', 'Hernández', 'F', 67, 170, 'Si', 'Tipo 2', '', 'Oaxaca', 'ITSS', 'Informatica', 88, 26),
(137, 'Cristhel', 'Jiménez', 'Jiménez', 'F', 56, 174, 'No', '', '', 'Oaxaca', 'UJAT', 'Informatica', 90, 36),
(138, 'jaime', 'Vera', 'Álvarez', 'M', 58, 180, 'No', '', '', 'Chiapas', 'UJAT', 'Informatica', 92, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_Alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- Base de datos: `bibliotecas`
--
CREATE DATABASE IF NOT EXISTS `bibliotecas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `bibliotecas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `nombre_libro` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `autor_libro` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_publicacion` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `nombre_libro`, `autor_libro`, `fecha_publicacion`, `fecha_registro`) VALUES
(3, 'viaje en el tiempo', 'Eduard conll', 2022, '2022-03-12 19:13:32'),
(6, 'viaje en el tiempo', 'Stive haking', 2010, '2022-03-13 02:21:19'),
(7, 'la vida en marte', 'Adolf Berg', 2021, '2022-03-13 02:21:19'),
(8, 'La boda', 'Garg Guit', 2019, '2022-03-13 02:21:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Base de datos: `calificacion`
--
CREATE DATABASE IF NOT EXISTS `calificacion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `calificacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evualuacion_1`
--

CREATE TABLE `evualuacion_1` (
  `id_evaluacion` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `evualuacion_1`
--

INSERT INTO `evualuacion_1` (`id_evaluacion`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 5, 5, 0, 5, 3),
(2, 9, 6, 9, 3, 1),
(3, 7, 0, 4, 4, 5),
(4, 3, 2, 0, 9, 3),
(5, 6, 7, 9, 8, 0),
(6, 6, 0, 8, 7, 4),
(7, 0, 4, 2, 0, 0),
(8, 6, 1, 0, 4, 4),
(9, 9, 0, 9, 9, 3),
(10, 4, 5, 9, 1, 8),
(11, 3, 2, 2, 3, 2),
(12, 5, 7, 7, 1, 9),
(13, 3, 9, 4, 0, 9),
(14, 1, 3, 1, 8, 3),
(15, 7, 5, 9, 5, 1),
(16, 4, 9, 2, 4, 7),
(17, 5, 6, 4, 6, 1),
(18, 4, 1, 4, 6, 3),
(19, 3, 2, 1, 8, 9),
(20, 4, 0, 7, 6, 4),
(21, 3, 1, 3, 7, 0),
(22, 8, 5, 3, 4, 6),
(23, 3, 2, 5, 2, 6),
(24, 6, 8, 9, 1, 1),
(25, 6, 5, 1, 4, 6),
(26, 6, 8, 3, 5, 1),
(27, 3, 3, 9, 1, 0),
(28, 3, 0, 8, 2, 1),
(29, 7, 7, 9, 4, 4),
(30, 3, 7, 6, 1, 6),
(31, 4, 0, 5, 2, 6),
(32, 1, 4, 9, 6, 1),
(33, 5, 7, 4, 2, 3),
(34, 8, 2, 0, 2, 0),
(35, 0, 6, 6, 8, 9),
(36, 1, 5, 4, 7, 3),
(37, 4, 4, 4, 5, 3),
(38, 8, 9, 2, 5, 0),
(39, 5, 7, 7, 8, 9),
(40, 4, 8, 1, 8, 8),
(41, 2, 0, 1, 0, 6),
(42, 7, 6, 2, 4, 0),
(43, 8, 3, 6, 3, 1),
(44, 5, 2, 4, 1, 3),
(45, 6, 0, 5, 1, 5),
(46, 5, 1, 4, 3, 0),
(47, 3, 3, 3, 5, 2),
(48, 5, 3, 8, 2, 1),
(49, 2, 9, 8, 1, 6),
(50, 5, 1, 7, 7, 3),
(51, 6, 6, 9, 4, 9),
(52, 7, 0, 0, 5, 6),
(53, 6, 4, 1, 3, 2),
(54, 9, 4, 4, 7, 0),
(55, 5, 9, 8, 0, 1),
(56, 5, 9, 7, 2, 1),
(57, 5, 3, 3, 4, 3),
(58, 0, 4, 1, 3, 1),
(59, 7, 5, 6, 9, 9),
(60, 8, 8, 9, 6, 3),
(61, 5, 8, 4, 0, 2),
(62, 1, 8, 2, 3, 9),
(63, 1, 5, 1, 0, 2),
(64, 7, 8, 4, 6, 6),
(65, 5, 7, 8, 8, 3),
(66, 9, 8, 4, 9, 5),
(67, 6, 2, 6, 5, 4),
(68, 0, 6, 1, 7, 5),
(69, 7, 2, 0, 4, 1),
(70, 3, 4, 8, 1, 4),
(71, 9, 6, 3, 9, 2),
(72, 1, 3, 6, 4, 6),
(73, 3, 1, 8, 4, 0),
(74, 0, 2, 2, 4, 5),
(75, 4, 8, 3, 4, 7),
(76, 8, 1, 5, 5, 7),
(77, 7, 7, 2, 4, 6),
(78, 5, 8, 9, 0, 7),
(79, 6, 3, 5, 7, 0),
(80, 6, 4, 1, 8, 0),
(81, 5, 3, 3, 7, 1),
(82, 4, 4, 4, 2, 4),
(83, 4, 4, 2, 7, 5),
(84, 3, 1, 5, 6, 3),
(85, 1, 6, 2, 4, 2),
(86, 9, 3, 6, 6, 5),
(87, 3, 4, 1, 5, 2),
(88, 7, 6, 5, 2, 0),
(89, 4, 2, 0, 5, 7),
(90, 1, 3, 3, 4, 8),
(91, 8, 5, 7, 6, 3),
(92, 6, 9, 5, 3, 3),
(93, 2, 8, 8, 9, 1),
(94, 5, 7, 5, 0, 8),
(95, 8, 0, 6, 2, 9),
(96, 9, 7, 6, 4, 4),
(97, 2, 2, 1, 2, 4),
(98, 0, 5, 8, 2, 7),
(99, 4, 6, 9, 7, 0),
(100, 5, 5, 1, 5, 2),
(101, 5, 8, 3, 4, 1),
(102, 0, 0, 3, 2, 8),
(103, 9, 2, 4, 5, 1),
(104, 4, 7, 4, 3, 6),
(105, 2, 2, 8, 8, 6),
(106, 8, 0, 3, 8, 5),
(107, 8, 1, 3, 5, 2),
(108, 1, 1, 0, 2, 6),
(109, 7, 8, 7, 2, 1),
(110, 0, 3, 9, 3, 6),
(111, 7, 4, 0, 0, 0),
(112, 5, 0, 3, 4, 5),
(113, 1, 9, 9, 0, 1),
(114, 2, 9, 8, 7, 6),
(115, 8, 6, 7, 5, 0),
(116, 9, 4, 1, 3, 3),
(117, 5, 2, 3, 1, 5),
(118, 2, 6, 9, 1, 7),
(119, 5, 6, 9, 3, 1),
(120, 3, 5, 9, 3, 6),
(121, 2, 6, 2, 1, 1),
(122, 7, 9, 8, 9, 5),
(123, 1, 5, 1, 1, 2),
(124, 8, 1, 3, 3, 3),
(125, 9, 0, 5, 0, 4),
(126, 4, 1, 4, 8, 0),
(127, 4, 9, 2, 4, 5),
(128, 5, 5, 3, 5, 2),
(129, 9, 9, 6, 4, 5),
(130, 5, 7, 0, 6, 5),
(131, 0, 5, 6, 0, 7),
(132, 0, 7, 6, 0, 2),
(133, 7, 5, 8, 2, 8),
(134, 8, 0, 6, 9, 3),
(135, 0, 1, 4, 0, 5),
(136, 2, 5, 4, 3, 9),
(137, 1, 7, 2, 2, 9),
(138, 7, 0, 2, 7, 1),
(139, 7, 4, 2, 1, 6),
(140, 8, 5, 0, 8, 2),
(141, 2, 5, 6, 6, 3),
(142, 9, 3, 1, 0, 1),
(143, 2, 0, 4, 7, 5),
(144, 3, 6, 3, 0, 5),
(145, 0, 0, 8, 3, 0),
(146, 0, 2, 4, 6, 8),
(147, 8, 5, 5, 3, 2),
(148, 6, 9, 3, 8, 4),
(149, 1, 8, 0, 6, 2),
(150, 1, 6, 5, 0, 6),
(151, 2, 8, 5, 7, 4),
(152, 6, 2, 5, 9, 0),
(153, 2, 9, 3, 6, 5),
(154, 3, 0, 6, 2, 6),
(155, 9, 8, 2, 2, 1),
(156, 5, 4, 0, 8, 2),
(157, 8, 9, 3, 0, 9),
(158, 1, 4, 6, 8, 3),
(159, 6, 5, 9, 4, 9),
(160, 6, 7, 8, 9, 8),
(161, 6, 2, 3, 0, 3),
(162, 5, 9, 3, 5, 2),
(163, 8, 1, 6, 2, 3),
(164, 2, 1, 9, 8, 7),
(165, 5, 9, 6, 2, 3),
(166, 0, 8, 5, 8, 5),
(167, 0, 4, 2, 5, 4),
(168, 2, 8, 9, 7, 3),
(169, 7, 3, 3, 0, 8),
(170, 4, 2, 8, 4, 4),
(171, 0, 0, 8, 9, 4),
(172, 2, 8, 7, 5, 5),
(173, 3, 8, 7, 4, 8),
(174, 7, 1, 6, 5, 1),
(175, 3, 9, 7, 4, 8),
(176, 9, 9, 5, 0, 6),
(177, 7, 5, 2, 4, 8),
(178, 0, 5, 3, 1, 0),
(179, 9, 7, 8, 1, 9),
(180, 4, 5, 5, 0, 6),
(181, 7, 1, 0, 4, 3),
(182, 3, 6, 4, 7, 0),
(183, 5, 3, 8, 9, 8),
(184, 8, 9, 8, 2, 2),
(185, 3, 5, 0, 5, 1),
(186, 1, 1, 5, 4, 4),
(187, 6, 8, 7, 0, 0),
(188, 3, 1, 0, 5, 8),
(189, 5, 5, 8, 7, 7),
(190, 0, 6, 7, 1, 1),
(191, 5, 2, 3, 7, 3),
(192, 8, 6, 7, 4, 8),
(193, 0, 1, 0, 1, 0),
(194, 1, 1, 4, 4, 6),
(195, 4, 6, 6, 7, 4),
(196, 0, 6, 7, 9, 5),
(197, 6, 4, 5, 6, 2),
(198, 4, 8, 0, 9, 8),
(199, 9, 1, 4, 6, 2),
(200, 8, 7, 7, 1, 9),
(201, 2, 5, 9, 8, 5),
(202, 2, 2, 1, 8, 9),
(203, 4, 6, 0, 5, 2),
(204, 4, 5, 2, 3, 4),
(205, 8, 7, 5, 2, 3),
(206, 6, 0, 0, 5, 5),
(207, 2, 2, 8, 7, 6),
(208, 4, 9, 6, 4, 0),
(209, 6, 2, 5, 0, 0),
(210, 3, 1, 3, 4, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evualuacion_1`
--
ALTER TABLE `evualuacion_1`
  ADD PRIMARY KEY (`id_evaluacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evualuacion_1`
--
ALTER TABLE `evualuacion_1`
  MODIFY `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- Base de datos: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `name`, `password`, `create_at`) VALUES
(1, 'admin', 'baulphp', '$2y$10$3ZnwXA1hl0oSTOmnRC7KRu4jh0d8eVsZfIWpT.6nPuuvpb.MU96tW', '2021-11-18 12:48:40'),
(2, 'user', 'baulcode', '$2y$10$3ZnwXA1hl0oSTOmnRC7KRu4jh0d8eVsZfIWpT.6nPuuvpb.MU96tW', '2021-11-18 12:49:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `edwork`
--
CREATE DATABASE IF NOT EXISTS `edwork` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `edwork`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conbustibles`
--

CREATE TABLE `conbustibles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coutries`
--

CREATE TABLE `coutries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `module` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `module`) VALUES
(2, 'CIUDADES'),
(1, 'PAISES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `service_station_id` int(11) NOT NULL,
  `conbustible_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` decimal(7,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `active`) VALUES
(1, 'ADMINISTRADOR', 1),
(2, 'REPORTEADOR', 1),
(3, 'USUARIO PREMIUN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_stations`
--

CREATE TABLE `service_stations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL,
  `latitude` decimal(10,7) NOT NULL DEFAULT 0.0000000,
  `logitude` decimal(10,7) NOT NULL DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(1, 'JOSE EDUARDO DIAZ LORENZO', 'jose@gmail.com', 'b1a968054dfb2236c300dc3f1185bd72', NULL),
(2, 'GUSTAVO ANGEL DIAZ', 'gustavo@gmail.com', 'b1a968054dfb2236c300dc3f1185bd72', NULL),
(4, 'JOSE EDUARDO DIAZ LORENZO', 'edu@gmail.com', 'b1a968054dfb2236c300dc3f1185bd72', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_fk` (`country_id`);

--
-- Indices de la tabla `conbustibles`
--
ALTER TABLE `conbustibles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combustible_name_uk` (`name`);

--
-- Indices de la tabla `coutries`
--
ALTER TABLE `coutries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conutries_name_uk` (`name`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_module_uk` (`module`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_role_permission_id_role_id_uk` (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_fk` (`role_id`);

--
-- Indices de la tabla `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_service_station_id_fk` (`service_station_id`),
  ADD KEY `prices_conbustible_id_fk` (`conbustible_id`),
  ADD KEY `prices_user_id_fk` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_uk` (`name`);

--
-- Indices de la tabla `service_stations`
--
ALTER TABLE `service_stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_stations_city_id_fk` (`city_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_uk` (`email`),
  ADD KEY `users_role_id_fk` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conbustibles`
--
ALTER TABLE `conbustibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coutries`
--
ALTER TABLE `coutries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `service_stations`
--
ALTER TABLE `service_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `coutries` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_fk` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_conbustible_id_fk` FOREIGN KEY (`conbustible_id`) REFERENCES `conbustibles` (`id`),
  ADD CONSTRAINT `prices_service_station_id_fk` FOREIGN KEY (`service_station_id`) REFERENCES `service_stations` (`id`),
  ADD CONSTRAINT `prices_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `service_stations`
--
ALTER TABLE `service_stations`
  ADD CONSTRAINT `service_stations_city_id_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Base de datos: `ejemplom`
--
CREATE DATABASE IF NOT EXISTS `ejemplom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejemplom`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pasadmin` varchar(250) NOT NULL,
  `rol` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `user`, `password`, `email`, `pasadmin`, `rol`) VALUES
(1, 'Administrador', '', 'admin@gmail.com', '123456', 1),
(2, 'Joseph', '12345', 'josephg059@gmail.com', '', 2),
(4, 'joseph', '12345', 'joseph@gmail.com', '', 2),
(5, 'paul', '1234', 'paul@gmail.com', '', 2),
(6, 'Jose Eduardo Diaz Lorenzo', '12345', 'djose@gmail.com', '', 2),
(7, 'Jaime jimenez', '123456', 'jaime@gmail.com', '', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `escolares`
--
CREATE DATABASE IF NOT EXISTS `escolares` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `escolares`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `matricula` varchar(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `curp` varchar(18) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombres` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `edad` int(3) NOT NULL,
  `direccion` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `genero` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo_sangre` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `matricula`, `curp`, `nombres`, `apellidos`, `edad`, `direccion`, `genero`, `tipo_sangre`, `peso`, `altura`) VALUES
(1, '18E30252', 'AARJ990928', 'JUAN BARTOLO', 'ALCAZAR REYES', 0, '', '', '', 0, 0),
(4, '18E30262', 'GORL991218', 'LUIS GUSTAVO', 'GONZÁLEZ RUÍZ', 23, 'Tacotalpa', 'F', 'RO-', 65, 1.68),
(6, '', '', '', '', 0, '', '', '', 0, 0),
(7, '18E30259', 'DILE980612', 'Luis', 'Lopez', 45, 'Ixtacomitan', 'M', 'a+', 76, 1.76),
(8, '18E30258', 'DILE980612', 'Jhoana', 'FLORES', 24, 'Ixtacomitan', 'F', 'a+', 67, 1.69),
(9, '18E30258', 'DILE980612', 'Jhoana', 'FLORES', 24, 'Ixtacomitan', 'F', 'a+', 67, 1.69),
(10, '18E30258', 'DILE980612', 'Jhoana', 'FLORES', 24, 'Ixtacomitan', 'F', 'a+', 67, 1.69),
(11, '18E30258', 'DILE980612', 'Jhoana', 'FLORES', 24, 'Ixtacomitan', 'F', 'a+', 67, 1.69),
(12, '18E30259', 'DILE980612', 'Luis', 'Lopez', 45, 'Ixtacomitan', 'M', 'a+', 76, 1.76),
(14, '', '', '', '', 0, '', '', '', 0, 0),
(15, '', '', '', '', 0, '', '', '', 0, 0),
(18, '18E30259', 'saljo43736', 'Jose Edaurdo', 'SANCHEZ', 23, 'escobal', 'H', 'a+', 65, 1.68),
(25, '18E30258', 'GIBE991211', 'Gilberto', 'Cruz', 22, 'Solosuchiapa', 'M', 'a+', 76, 1.74);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Base de datos: `evaluación`
--
CREATE DATABASE IF NOT EXISTS `evaluación` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `evaluación`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificación`
--

CREATE TABLE `calificación` (
  `id_calificacion` int(11) NOT NULL,
  `c_1` int(11) NOT NULL,
  `c_2` int(11) NOT NULL,
  `c_3` int(11) NOT NULL,
  `c_4` int(11) NOT NULL,
  `c_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calificación`
--

INSERT INTO `calificación` (`id_calificacion`, `c_1`, `c_2`, `c_3`, `c_4`, `c_5`) VALUES
(1, 2, 5, 7, 8, 5),
(2, 9, 9, 0, 2, 8),
(3, 7, 2, 9, 8, 5),
(4, 0, 5, 3, 8, 8),
(5, 0, 1, 8, 4, 0),
(6, 2, 3, 3, 0, 7),
(7, 9, 3, 2, 0, 6),
(8, 7, 8, 6, 6, 4),
(9, 4, 0, 5, 0, 4),
(10, 4, 9, 0, 0, 1),
(11, 1, 6, 1, 0, 0),
(12, 3, 1, 0, 7, 7),
(13, 9, 9, 1, 6, 3),
(14, 4, 5, 8, 8, 5),
(15, 6, 5, 7, 9, 9),
(16, 0, 1, 1, 5, 3),
(17, 0, 7, 5, 2, 0),
(18, 6, 0, 8, 2, 7),
(19, 1, 7, 7, 6, 8),
(20, 7, 8, 8, 9, 2),
(21, 9, 6, 4, 4, 9),
(22, 6, 4, 6, 0, 7),
(23, 1, 9, 5, 2, 5),
(24, 0, 5, 6, 8, 0),
(25, 1, 4, 2, 8, 3),
(26, 4, 4, 6, 0, 4),
(27, 6, 3, 5, 7, 0),
(28, 2, 2, 2, 0, 5),
(29, 6, 5, 1, 9, 6),
(30, 5, 1, 5, 8, 1),
(31, 1, 4, 7, 7, 5),
(32, 2, 7, 8, 6, 6),
(33, 5, 7, 2, 5, 1),
(34, 3, 7, 1, 0, 6),
(35, 5, 0, 4, 3, 0),
(36, 6, 2, 1, 3, 6),
(37, 5, 8, 0, 3, 3),
(38, 7, 7, 0, 6, 9),
(39, 5, 0, 2, 0, 8),
(40, 6, 3, 3, 3, 8),
(41, 4, 2, 3, 9, 4),
(42, 6, 4, 9, 2, 6),
(43, 0, 6, 8, 7, 0),
(44, 4, 5, 5, 8, 0),
(45, 8, 4, 6, 9, 8),
(46, 9, 2, 7, 4, 6),
(47, 8, 8, 7, 1, 1),
(48, 3, 1, 7, 1, 6),
(49, 7, 3, 4, 1, 0),
(50, 2, 7, 6, 4, 0),
(51, 5, 3, 5, 7, 2),
(52, 9, 2, 3, 1, 0),
(53, 8, 4, 3, 6, 2),
(54, 1, 6, 1, 6, 1),
(55, 8, 1, 3, 4, 5),
(56, 9, 0, 1, 8, 9),
(57, 1, 6, 3, 9, 8),
(58, 3, 1, 9, 4, 2),
(59, 6, 9, 3, 7, 1),
(60, 9, 9, 3, 8, 4),
(61, 0, 4, 2, 9, 9),
(62, 7, 7, 0, 1, 5),
(63, 5, 4, 8, 6, 2),
(64, 3, 8, 2, 0, 3),
(65, 2, 4, 1, 7, 7),
(66, 0, 8, 3, 9, 1),
(67, 1, 2, 3, 3, 2),
(68, 6, 7, 1, 0, 2),
(69, 2, 7, 6, 6, 9),
(70, 2, 6, 5, 3, 0),
(71, 7, 9, 5, 9, 6),
(72, 5, 3, 8, 1, 1),
(73, 0, 8, 0, 1, 3),
(74, 3, 0, 7, 0, 7),
(75, 1, 0, 0, 3, 8),
(76, 8, 6, 5, 9, 4),
(77, 4, 1, 8, 5, 2),
(78, 8, 9, 8, 5, 5),
(79, 9, 6, 9, 5, 4),
(80, 3, 8, 3, 8, 5),
(81, 0, 5, 8, 5, 5),
(82, 8, 3, 3, 9, 3),
(83, 8, 9, 8, 8, 4),
(84, 8, 6, 0, 7, 6),
(85, 3, 7, 4, 9, 3),
(86, 6, 8, 5, 4, 8),
(87, 6, 0, 8, 1, 8),
(88, 0, 4, 3, 4, 2),
(89, 5, 3, 9, 2, 1),
(90, 4, 7, 8, 0, 9),
(91, 2, 0, 2, 3, 1),
(92, 1, 2, 1, 7, 2),
(93, 7, 8, 1, 7, 0),
(94, 2, 2, 6, 6, 6),
(95, 3, 8, 6, 6, 7),
(96, 3, 7, 4, 9, 0),
(97, 2, 5, 8, 3, 8),
(98, 5, 3, 0, 1, 5),
(99, 2, 0, 1, 9, 6),
(100, 5, 4, 4, 8, 2),
(101, 5, 7, 4, 2, 5),
(102, 9, 5, 3, 3, 9),
(103, 9, 7, 4, 2, 5),
(104, 6, 1, 0, 1, 0),
(105, 1, 0, 6, 9, 9),
(106, 1, 5, 8, 0, 3),
(107, 8, 0, 1, 8, 3),
(108, 4, 1, 3, 4, 6),
(109, 6, 7, 8, 7, 5),
(110, 7, 0, 2, 4, 0),
(111, 9, 0, 0, 2, 0),
(112, 8, 0, 9, 0, 5),
(113, 7, 2, 0, 0, 4),
(114, 2, 4, 0, 1, 5),
(115, 9, 2, 2, 0, 4),
(116, 7, 5, 5, 2, 2),
(117, 9, 7, 0, 8, 2),
(118, 6, 1, 9, 8, 5),
(119, 2, 3, 3, 2, 4),
(120, 5, 9, 8, 4, 2),
(121, 1, 0, 3, 0, 8),
(122, 6, 7, 2, 8, 3),
(123, 0, 1, 6, 7, 7),
(124, 8, 9, 2, 1, 3),
(125, 4, 0, 9, 1, 1),
(126, 5, 8, 5, 1, 7),
(127, 9, 9, 3, 3, 2),
(128, 6, 6, 4, 5, 8),
(129, 4, 4, 5, 6, 6),
(130, 0, 6, 9, 5, 7),
(131, 5, 3, 0, 9, 8),
(132, 5, 1, 5, 4, 4),
(133, 2, 4, 2, 7, 7),
(134, 8, 0, 6, 5, 5),
(135, 0, 6, 9, 5, 8),
(136, 3, 8, 1, 4, 1),
(137, 6, 7, 8, 9, 8),
(138, 1, 6, 7, 9, 0),
(139, 3, 3, 1, 3, 3),
(140, 8, 8, 6, 6, 5),
(141, 8, 6, 3, 7, 5),
(142, 6, 7, 3, 0, 1),
(143, 3, 4, 9, 1, 5),
(144, 2, 7, 0, 0, 4),
(145, 3, 5, 6, 8, 3),
(146, 2, 3, 4, 7, 3),
(147, 2, 3, 1, 3, 5),
(148, 4, 8, 8, 0, 4),
(149, 9, 5, 5, 1, 2),
(150, 7, 9, 5, 5, 4),
(151, 6, 1, 0, 0, 2),
(152, 1, 8, 2, 5, 8),
(153, 9, 2, 2, 9, 8),
(154, 1, 7, 3, 2, 1),
(155, 3, 3, 0, 3, 1),
(156, 6, 5, 1, 9, 4),
(157, 1, 1, 9, 6, 3),
(158, 4, 1, 5, 6, 9),
(159, 9, 6, 5, 6, 6),
(160, 0, 8, 4, 7, 1),
(161, 8, 6, 5, 2, 5),
(162, 2, 8, 7, 7, 2),
(163, 3, 5, 3, 5, 9),
(164, 1, 9, 6, 4, 9),
(165, 3, 7, 8, 1, 6),
(166, 6, 7, 8, 4, 8),
(167, 2, 6, 7, 6, 4),
(168, 2, 3, 5, 8, 9),
(169, 7, 9, 3, 4, 7),
(170, 6, 2, 7, 1, 3),
(171, 9, 9, 4, 6, 9),
(172, 0, 4, 2, 5, 0),
(173, 5, 9, 2, 5, 6),
(174, 3, 1, 7, 2, 1),
(175, 4, 9, 7, 6, 9),
(176, 6, 1, 7, 8, 8),
(177, 5, 7, 4, 1, 8),
(178, 8, 1, 5, 8, 8),
(179, 5, 7, 9, 7, 9),
(180, 4, 5, 9, 0, 3),
(181, 5, 6, 9, 4, 2),
(182, 6, 5, 0, 9, 6),
(183, 0, 0, 7, 5, 4),
(184, 1, 6, 7, 1, 4),
(185, 1, 3, 7, 4, 4),
(186, 5, 1, 6, 9, 3),
(187, 9, 4, 6, 8, 2),
(188, 8, 5, 9, 8, 4),
(189, 3, 0, 1, 6, 1),
(190, 3, 3, 9, 8, 8),
(191, 5, 5, 5, 9, 5),
(192, 5, 8, 4, 3, 3),
(193, 1, 9, 3, 4, 8),
(194, 4, 7, 0, 2, 1),
(195, 5, 6, 0, 4, 9),
(196, 9, 5, 9, 1, 5),
(197, 8, 2, 8, 2, 4),
(198, 0, 2, 8, 2, 9),
(199, 6, 8, 2, 8, 3),
(200, 1, 5, 4, 2, 0),
(201, 5, 7, 6, 5, 6),
(202, 9, 0, 6, 0, 6),
(203, 6, 7, 4, 4, 8),
(204, 6, 1, 4, 7, 4),
(205, 8, 9, 5, 3, 7),
(206, 8, 6, 8, 5, 2),
(207, 0, 8, 0, 3, 8),
(208, 5, 4, 9, 5, 8),
(209, 4, 9, 7, 9, 5),
(210, 0, 1, 0, 1, 7),
(211, 8, 3, 9, 1, 6),
(212, 2, 0, 7, 2, 7),
(213, 1, 5, 0, 1, 9),
(214, 8, 3, 2, 0, 6),
(215, 2, 2, 6, 1, 0),
(216, 2, 9, 6, 9, 7),
(217, 3, 5, 4, 1, 3),
(218, 3, 2, 0, 8, 1),
(219, 0, 7, 9, 7, 6),
(220, 0, 9, 0, 5, 7),
(221, 9, 6, 4, 2, 6),
(222, 1, 8, 8, 3, 3),
(223, 8, 4, 2, 6, 5),
(224, 0, 4, 9, 5, 3),
(225, 6, 1, 1, 6, 1),
(226, 0, 4, 0, 8, 1),
(227, 3, 9, 8, 2, 3),
(228, 4, 5, 3, 0, 9),
(229, 8, 8, 4, 3, 3),
(230, 3, 9, 4, 8, 2),
(231, 3, 2, 1, 9, 6),
(232, 6, 7, 2, 3, 6),
(233, 3, 1, 0, 2, 4),
(234, 9, 3, 0, 6, 9),
(235, 9, 5, 5, 2, 0),
(236, 9, 6, 5, 5, 7),
(237, 6, 2, 2, 2, 4),
(238, 7, 1, 0, 3, 1),
(239, 2, 4, 5, 8, 3),
(240, 4, 2, 7, 0, 5),
(241, 8, 4, 7, 4, 5),
(242, 4, 5, 8, 7, 1),
(243, 8, 9, 9, 4, 5),
(244, 5, 2, 4, 1, 3),
(245, 2, 6, 7, 1, 2),
(246, 7, 7, 0, 8, 5),
(247, 7, 8, 1, 0, 3),
(248, 9, 8, 0, 5, 4),
(249, 7, 1, 5, 2, 3),
(250, 3, 8, 2, 2, 2),
(251, 6, 3, 2, 4, 7),
(252, 0, 3, 1, 6, 2),
(253, 7, 9, 9, 5, 2),
(254, 6, 4, 6, 2, 0),
(255, 1, 8, 8, 4, 7),
(256, 9, 7, 0, 0, 8),
(257, 3, 5, 3, 3, 8),
(258, 7, 4, 9, 0, 4),
(259, 2, 7, 6, 0, 0),
(260, 5, 1, 3, 0, 3),
(261, 5, 5, 3, 9, 6),
(262, 3, 6, 2, 3, 0),
(263, 8, 6, 5, 7, 9),
(264, 3, 7, 3, 3, 2),
(265, 8, 3, 6, 9, 3),
(266, 9, 6, 6, 2, 1),
(267, 3, 4, 6, 2, 3),
(268, 9, 8, 7, 0, 3),
(269, 4, 6, 0, 5, 1),
(270, 9, 8, 7, 2, 9),
(271, 3, 5, 5, 2, 3),
(272, 7, 4, 6, 3, 9),
(273, 9, 7, 6, 1, 7),
(274, 7, 7, 0, 1, 5),
(275, 8, 6, 2, 5, 1),
(276, 2, 7, 1, 3, 0),
(277, 9, 5, 0, 5, 3),
(278, 8, 2, 6, 9, 4),
(279, 0, 4, 0, 1, 6),
(280, 2, 7, 5, 2, 3),
(281, 6, 6, 7, 3, 0),
(282, 4, 4, 3, 8, 2),
(283, 0, 3, 5, 1, 3),
(284, 0, 0, 5, 7, 1),
(285, 1, 4, 7, 5, 7),
(286, 3, 0, 7, 6, 0),
(287, 7, 0, 3, 8, 1),
(288, 2, 8, 9, 3, 1),
(289, 3, 7, 6, 6, 6),
(290, 5, 1, 8, 9, 7),
(291, 5, 5, 5, 9, 6),
(292, 2, 6, 9, 4, 3),
(293, 5, 3, 9, 5, 1),
(294, 6, 7, 0, 5, 0),
(295, 4, 6, 2, 5, 3),
(296, 8, 5, 8, 5, 9),
(297, 0, 6, 9, 9, 1),
(298, 5, 5, 4, 8, 6),
(299, 0, 4, 8, 3, 6),
(300, 5, 4, 4, 6, 8),
(301, 7, 7, 2, 1, 8),
(302, 3, 1, 3, 4, 0),
(303, 3, 2, 5, 1, 5),
(304, 7, 1, 7, 7, 6),
(305, 7, 7, 9, 1, 4),
(306, 6, 0, 3, 1, 3),
(307, 8, 5, 0, 1, 2),
(308, 6, 7, 5, 1, 7),
(309, 9, 8, 2, 7, 4),
(310, 1, 8, 9, 4, 4),
(311, 1, 6, 7, 2, 9),
(312, 4, 7, 2, 7, 3),
(313, 6, 9, 8, 3, 2),
(314, 2, 0, 5, 1, 4),
(315, 9, 2, 3, 8, 8),
(316, 5, 3, 7, 3, 7),
(317, 8, 3, 3, 6, 8),
(318, 3, 9, 8, 8, 8),
(319, 0, 0, 4, 7, 4),
(320, 6, 9, 5, 4, 7),
(321, 0, 0, 6, 6, 5),
(322, 7, 6, 1, 7, 4),
(323, 9, 4, 4, 5, 2),
(324, 8, 6, 5, 6, 3),
(325, 9, 3, 2, 2, 6),
(326, 9, 4, 9, 4, 1),
(327, 4, 4, 9, 4, 8),
(328, 9, 5, 1, 5, 7),
(329, 0, 3, 6, 2, 6),
(330, 0, 8, 1, 0, 9),
(331, 1, 3, 9, 5, 1),
(332, 2, 3, 1, 7, 4),
(333, 0, 0, 8, 0, 9),
(334, 5, 1, 6, 0, 4),
(335, 8, 8, 6, 2, 7),
(336, 0, 2, 0, 4, 5),
(337, 0, 3, 7, 4, 4),
(338, 1, 3, 9, 6, 3),
(339, 7, 6, 6, 2, 5),
(340, 5, 1, 4, 9, 5),
(341, 6, 7, 0, 8, 5),
(342, 2, 3, 9, 8, 9),
(343, 5, 1, 2, 7, 6),
(344, 8, 4, 9, 6, 6),
(345, 6, 4, 9, 6, 4),
(346, 9, 4, 1, 9, 8),
(347, 2, 8, 3, 4, 4),
(348, 1, 2, 7, 7, 1),
(349, 4, 8, 9, 4, 9),
(350, 2, 3, 6, 7, 8),
(351, 3, 2, 8, 4, 0),
(352, 7, 8, 3, 6, 6),
(353, 7, 9, 0, 7, 2),
(354, 7, 6, 7, 6, 4),
(355, 1, 2, 0, 5, 6),
(356, 7, 6, 7, 6, 0),
(357, 5, 1, 7, 1, 0),
(358, 2, 6, 7, 2, 9),
(359, 5, 2, 4, 0, 8),
(360, 5, 2, 6, 1, 1),
(361, 8, 6, 7, 5, 2),
(362, 0, 4, 6, 8, 5),
(363, 4, 3, 3, 7, 7),
(364, 0, 8, 7, 5, 0),
(365, 4, 5, 2, 7, 4),
(366, 0, 4, 9, 7, 7),
(367, 7, 6, 4, 3, 8),
(368, 3, 3, 3, 4, 4),
(369, 5, 2, 9, 0, 1),
(370, 1, 5, 0, 4, 1),
(371, 7, 0, 4, 8, 7),
(372, 1, 3, 3, 0, 7),
(373, 7, 5, 4, 3, 3),
(374, 6, 0, 9, 6, 4),
(375, 0, 8, 8, 0, 9),
(376, 7, 4, 1, 0, 2),
(377, 8, 4, 6, 3, 4),
(378, 9, 7, 4, 6, 0),
(379, 8, 3, 0, 7, 6),
(380, 1, 2, 7, 3, 1),
(381, 9, 3, 4, 9, 9),
(382, 2, 7, 7, 0, 3),
(383, 0, 5, 1, 0, 6),
(384, 3, 5, 4, 6, 1),
(385, 6, 5, 3, 5, 0),
(386, 1, 7, 0, 2, 4),
(387, 0, 9, 9, 2, 6),
(388, 0, 2, 1, 8, 7),
(389, 4, 4, 1, 7, 8),
(390, 1, 4, 3, 4, 4),
(391, 3, 6, 1, 6, 2),
(392, 7, 1, 0, 8, 7),
(393, 0, 6, 0, 8, 4),
(394, 9, 0, 7, 0, 9),
(395, 8, 7, 5, 8, 2),
(396, 9, 7, 3, 7, 2),
(397, 9, 8, 5, 0, 4),
(398, 9, 9, 4, 4, 9),
(399, 8, 8, 3, 7, 1),
(400, 9, 4, 9, 1, 0),
(401, 9, 1, 9, 3, 0),
(402, 3, 3, 1, 0, 4),
(403, 8, 3, 8, 4, 1),
(404, 8, 7, 6, 5, 3),
(405, 2, 5, 5, 1, 6),
(406, 0, 0, 4, 4, 1),
(407, 6, 5, 1, 3, 9),
(408, 7, 0, 9, 1, 8),
(409, 5, 6, 5, 9, 4),
(410, 2, 2, 6, 1, 9),
(411, 4, 5, 1, 3, 1),
(412, 1, 0, 3, 0, 4),
(413, 0, 8, 8, 1, 9),
(414, 9, 7, 9, 1, 7),
(415, 5, 8, 9, 7, 2),
(416, 7, 1, 0, 6, 4),
(417, 9, 5, 1, 7, 4),
(418, 0, 5, 3, 6, 3),
(419, 0, 4, 7, 9, 5),
(420, 9, 1, 9, 8, 4),
(421, 4, 8, 3, 2, 5),
(422, 0, 8, 0, 7, 6),
(423, 5, 8, 2, 0, 7),
(424, 2, 2, 3, 5, 5),
(425, 2, 0, 3, 6, 2),
(426, 5, 3, 4, 8, 6),
(427, 9, 6, 9, 1, 1),
(428, 3, 6, 9, 3, 5),
(429, 2, 8, 6, 1, 5),
(430, 1, 5, 5, 5, 9),
(431, 8, 6, 2, 6, 3),
(432, 7, 0, 2, 0, 3),
(433, 1, 8, 6, 7, 3),
(434, 9, 6, 0, 6, 9),
(435, 8, 0, 7, 9, 9),
(436, 6, 0, 7, 0, 2),
(437, 4, 6, 5, 5, 6),
(438, 3, 0, 4, 9, 2),
(439, 5, 2, 1, 4, 4),
(440, 3, 9, 1, 5, 0),
(441, 1, 1, 4, 1, 8),
(442, 1, 4, 4, 1, 5),
(443, 8, 6, 3, 8, 0),
(444, 1, 0, 8, 4, 1),
(445, 0, 7, 3, 6, 3),
(446, 8, 8, 1, 1, 6),
(447, 1, 9, 7, 1, 6),
(448, 9, 7, 3, 1, 5),
(449, 2, 9, 8, 6, 1),
(450, 7, 8, 2, 0, 1),
(451, 2, 8, 4, 3, 9),
(452, 7, 5, 5, 0, 1),
(453, 9, 9, 2, 9, 5),
(454, 6, 8, 6, 6, 6),
(455, 8, 5, 2, 4, 7),
(456, 0, 7, 0, 8, 5),
(457, 3, 2, 5, 6, 9),
(458, 0, 2, 5, 9, 9),
(459, 5, 5, 6, 0, 9),
(460, 1, 4, 8, 2, 4),
(461, 2, 2, 6, 3, 6),
(462, 1, 5, 3, 4, 7),
(463, 0, 6, 9, 1, 7),
(464, 5, 6, 5, 7, 4),
(465, 8, 0, 7, 1, 1),
(466, 9, 4, 1, 4, 9),
(467, 4, 1, 8, 0, 0),
(468, 1, 8, 1, 2, 9),
(469, 0, 8, 4, 8, 4),
(470, 8, 3, 2, 8, 7),
(471, 3, 4, 1, 3, 6),
(472, 8, 6, 5, 0, 0),
(473, 0, 5, 2, 6, 2),
(474, 8, 1, 1, 4, 1),
(475, 7, 3, 4, 6, 6),
(476, 0, 6, 6, 6, 9),
(477, 8, 5, 7, 5, 0),
(478, 3, 9, 7, 7, 9),
(479, 5, 3, 7, 2, 6),
(480, 7, 8, 3, 2, 5),
(481, 7, 3, 8, 9, 2),
(482, 0, 9, 5, 8, 1),
(483, 1, 4, 5, 5, 4),
(484, 9, 1, 4, 0, 9),
(485, 0, 5, 7, 7, 1),
(486, 0, 0, 4, 4, 2),
(487, 5, 5, 6, 7, 1),
(488, 4, 2, 7, 2, 1),
(489, 0, 3, 5, 7, 6),
(490, 1, 6, 3, 8, 9),
(491, 0, 0, 4, 5, 6),
(492, 3, 9, 8, 9, 6),
(493, 8, 9, 1, 7, 3),
(494, 8, 4, 9, 8, 3),
(495, 1, 0, 1, 9, 5),
(496, 6, 2, 0, 1, 8),
(497, 9, 2, 6, 0, 8),
(498, 6, 8, 5, 5, 5),
(499, 5, 0, 8, 6, 9),
(500, 5, 5, 7, 4, 8),
(501, 1, 4, 7, 6, 0),
(502, 9, 5, 1, 8, 8),
(503, 9, 9, 5, 7, 4),
(504, 6, 6, 4, 5, 8),
(505, 4, 5, 2, 3, 2),
(506, 7, 2, 5, 3, 6),
(507, 3, 5, 9, 4, 9),
(508, 8, 6, 4, 9, 6),
(509, 5, 9, 4, 5, 9),
(510, 7, 1, 6, 6, 6),
(511, 1, 4, 4, 5, 0),
(512, 4, 3, 9, 3, 7),
(513, 9, 3, 1, 1, 4),
(514, 8, 9, 8, 0, 7),
(515, 2, 3, 7, 6, 8),
(516, 1, 3, 1, 9, 0),
(517, 0, 1, 3, 0, 2),
(518, 5, 5, 8, 5, 1),
(519, 9, 3, 2, 2, 1),
(520, 1, 5, 2, 9, 1),
(521, 2, 3, 4, 3, 1),
(522, 2, 9, 4, 5, 6),
(523, 2, 9, 7, 7, 4),
(524, 7, 3, 9, 2, 6),
(525, 3, 9, 6, 0, 2),
(526, 1, 7, 2, 0, 7),
(527, 0, 2, 8, 8, 3),
(528, 0, 7, 0, 9, 5),
(529, 9, 4, 8, 6, 5),
(530, 4, 4, 7, 9, 7),
(531, 5, 5, 4, 7, 6),
(532, 9, 5, 5, 4, 6),
(533, 7, 2, 1, 6, 9),
(534, 4, 4, 9, 0, 2),
(535, 2, 6, 6, 6, 7),
(536, 9, 3, 4, 3, 0),
(537, 2, 2, 4, 7, 7),
(538, 8, 7, 6, 1, 8),
(539, 4, 5, 4, 8, 6),
(540, 9, 4, 3, 1, 9),
(541, 3, 5, 7, 2, 6),
(542, 8, 9, 1, 4, 1),
(543, 3, 5, 5, 0, 1),
(544, 7, 5, 3, 6, 2),
(545, 9, 7, 5, 6, 8),
(546, 5, 4, 4, 0, 0),
(547, 6, 2, 5, 4, 0),
(548, 6, 2, 2, 2, 9),
(549, 9, 2, 8, 1, 5),
(550, 4, 2, 5, 9, 0),
(551, 8, 4, 3, 7, 6),
(552, 5, 9, 9, 6, 9),
(553, 2, 7, 7, 0, 7),
(554, 3, 2, 7, 8, 7),
(555, 3, 5, 6, 4, 0),
(556, 8, 4, 3, 0, 2),
(557, 5, 7, 7, 0, 6),
(558, 2, 8, 9, 9, 0),
(559, 9, 1, 2, 2, 5),
(560, 9, 5, 7, 3, 3),
(561, 1, 2, 7, 6, 2),
(562, 9, 5, 7, 2, 2),
(563, 7, 1, 9, 4, 1),
(564, 0, 6, 7, 6, 8),
(565, 8, 9, 3, 3, 3),
(566, 5, 5, 3, 3, 7),
(567, 8, 7, 5, 6, 0),
(568, 1, 0, 9, 9, 1),
(569, 3, 5, 0, 0, 6),
(570, 6, 1, 6, 3, 7),
(571, 1, 4, 1, 0, 6),
(572, 8, 4, 2, 7, 7),
(573, 7, 4, 8, 3, 4),
(574, 2, 2, 3, 3, 2),
(575, 0, 6, 3, 2, 7),
(576, 4, 7, 5, 4, 2),
(577, 8, 2, 9, 3, 8),
(578, 4, 9, 1, 6, 1),
(579, 9, 1, 3, 6, 2),
(580, 5, 8, 1, 3, 0),
(581, 9, 9, 5, 7, 5),
(582, 3, 6, 4, 2, 2),
(583, 5, 5, 9, 5, 1),
(584, 4, 9, 3, 6, 8),
(585, 0, 6, 3, 6, 1),
(586, 9, 7, 0, 6, 5),
(587, 7, 9, 8, 8, 3),
(588, 0, 0, 5, 5, 4),
(589, 8, 2, 8, 5, 4),
(590, 5, 0, 9, 4, 5),
(591, 5, 8, 6, 8, 3),
(592, 5, 7, 4, 3, 4),
(593, 8, 4, 4, 4, 9),
(594, 1, 9, 9, 4, 0),
(595, 1, 6, 6, 4, 4),
(596, 6, 1, 2, 3, 7),
(597, 3, 7, 2, 4, 3),
(598, 1, 7, 3, 2, 8),
(599, 9, 3, 7, 9, 2),
(600, 5, 5, 6, 3, 2),
(601, 3, 7, 8, 3, 6),
(602, 6, 6, 2, 6, 3),
(603, 6, 8, 5, 5, 4),
(604, 5, 2, 7, 1, 1),
(605, 5, 5, 5, 8, 7),
(606, 0, 1, 4, 3, 7),
(607, 9, 9, 4, 4, 7),
(608, 1, 5, 8, 3, 0),
(609, 0, 8, 3, 9, 7),
(610, 1, 1, 7, 9, 9),
(611, 3, 4, 9, 9, 6),
(612, 9, 4, 2, 2, 0),
(613, 6, 6, 9, 9, 4),
(614, 4, 2, 8, 7, 5),
(615, 0, 5, 6, 4, 2),
(616, 4, 4, 2, 5, 0),
(617, 8, 7, 6, 3, 4),
(618, 6, 7, 2, 3, 2),
(619, 8, 5, 2, 9, 1),
(620, 3, 6, 3, 6, 8),
(621, 9, 4, 2, 1, 7),
(622, 0, 6, 5, 5, 4),
(623, 4, 2, 7, 2, 5),
(624, 3, 2, 4, 9, 4),
(625, 9, 8, 5, 5, 0),
(626, 4, 0, 4, 2, 7),
(627, 7, 7, 6, 1, 7),
(628, 4, 2, 3, 8, 3),
(629, 0, 9, 2, 4, 3),
(630, 7, 2, 7, 4, 1),
(631, 3, 0, 5, 5, 2),
(632, 4, 8, 1, 7, 8),
(633, 4, 4, 7, 0, 9),
(634, 7, 7, 1, 0, 3),
(635, 9, 0, 4, 2, 4),
(636, 5, 7, 5, 9, 5),
(637, 3, 8, 5, 1, 9),
(638, 5, 9, 0, 9, 9),
(639, 4, 8, 0, 1, 5),
(640, 4, 3, 1, 2, 9),
(641, 2, 4, 2, 8, 9),
(642, 6, 0, 3, 4, 1),
(643, 2, 2, 5, 2, 8),
(644, 1, 2, 7, 8, 2),
(645, 8, 4, 9, 5, 8),
(646, 6, 7, 3, 5, 5),
(647, 5, 2, 4, 2, 4),
(648, 5, 0, 3, 8, 0),
(649, 2, 2, 1, 9, 5),
(650, 0, 9, 5, 7, 9),
(651, 1, 9, 2, 7, 3),
(652, 4, 4, 7, 1, 1),
(653, 1, 2, 3, 0, 0),
(654, 7, 2, 3, 9, 2),
(655, 8, 6, 3, 6, 0),
(656, 3, 4, 7, 5, 3),
(657, 6, 0, 0, 4, 1),
(658, 8, 2, 7, 6, 1),
(659, 8, 3, 1, 8, 8),
(660, 9, 6, 4, 0, 8),
(661, 7, 2, 1, 1, 4),
(662, 3, 5, 3, 6, 1),
(663, 6, 9, 5, 5, 8),
(664, 3, 0, 7, 4, 6),
(665, 0, 4, 4, 8, 2),
(666, 6, 6, 8, 8, 5),
(667, 6, 3, 2, 0, 7),
(668, 5, 2, 6, 3, 7),
(669, 7, 0, 4, 4, 4),
(670, 8, 1, 8, 8, 6),
(671, 7, 6, 3, 8, 9),
(672, 3, 7, 4, 4, 1),
(673, 6, 2, 7, 8, 3),
(674, 3, 1, 7, 2, 1),
(675, 0, 6, 9, 6, 0),
(676, 2, 4, 5, 6, 7),
(677, 5, 0, 3, 4, 7),
(678, 6, 5, 5, 3, 1),
(679, 1, 0, 1, 8, 3),
(680, 5, 3, 0, 8, 3),
(681, 2, 0, 9, 4, 4),
(682, 6, 0, 2, 4, 2),
(683, 9, 4, 5, 0, 5),
(684, 8, 8, 1, 5, 2),
(685, 8, 8, 4, 7, 1),
(686, 8, 7, 1, 2, 6),
(687, 1, 1, 5, 0, 8),
(688, 1, 1, 0, 9, 5),
(689, 4, 3, 8, 3, 4),
(690, 2, 4, 5, 7, 0),
(691, 2, 1, 3, 7, 4),
(692, 0, 0, 7, 8, 8),
(693, 2, 1, 6, 6, 9),
(694, 1, 0, 3, 2, 3),
(695, 6, 6, 6, 2, 7),
(696, 9, 7, 4, 3, 4),
(697, 6, 3, 9, 5, 5),
(698, 2, 9, 3, 0, 4),
(699, 1, 1, 9, 8, 8),
(700, 0, 6, 8, 2, 2),
(701, 9, 3, 2, 6, 4),
(702, 7, 9, 6, 3, 0),
(703, 0, 0, 0, 6, 0),
(704, 7, 9, 5, 9, 0),
(705, 1, 1, 8, 9, 4),
(706, 9, 5, 4, 3, 6),
(707, 6, 9, 9, 4, 6),
(708, 4, 7, 5, 3, 2),
(709, 2, 2, 1, 7, 1),
(710, 4, 1, 7, 3, 5),
(711, 6, 8, 1, 2, 1),
(712, 1, 3, 2, 3, 6),
(713, 4, 1, 0, 1, 8),
(714, 4, 9, 7, 2, 7),
(715, 6, 1, 4, 7, 4),
(716, 0, 1, 4, 2, 1),
(717, 6, 1, 4, 4, 1),
(718, 8, 9, 5, 5, 6),
(719, 6, 5, 4, 8, 0),
(720, 2, 5, 6, 8, 6),
(721, 0, 8, 2, 6, 4),
(722, 8, 9, 9, 5, 3),
(723, 0, 3, 5, 7, 6),
(724, 4, 4, 4, 1, 4),
(725, 3, 1, 5, 0, 4),
(726, 7, 9, 4, 7, 6),
(727, 9, 6, 9, 7, 2),
(728, 9, 6, 2, 2, 6),
(729, 8, 1, 2, 1, 8),
(730, 1, 9, 2, 8, 7),
(731, 2, 6, 3, 3, 3),
(732, 1, 6, 5, 5, 8),
(733, 1, 0, 9, 5, 9),
(734, 3, 8, 3, 7, 4),
(735, 5, 1, 5, 3, 8),
(736, 0, 3, 8, 2, 3),
(737, 6, 0, 8, 7, 7),
(738, 9, 6, 0, 9, 7),
(739, 7, 3, 2, 7, 0),
(740, 7, 6, 9, 6, 4),
(741, 8, 5, 8, 4, 8),
(742, 6, 3, 4, 6, 6),
(743, 9, 1, 2, 4, 1),
(744, 5, 1, 9, 2, 2),
(745, 1, 9, 2, 2, 6),
(746, 2, 6, 5, 1, 2),
(747, 6, 8, 6, 5, 9),
(748, 9, 9, 1, 2, 4),
(749, 1, 5, 9, 6, 9),
(750, 3, 6, 5, 5, 4),
(751, 4, 2, 2, 9, 7),
(752, 2, 8, 5, 1, 6),
(753, 0, 5, 4, 7, 9),
(754, 3, 0, 3, 5, 4),
(755, 9, 5, 5, 1, 0),
(756, 0, 8, 1, 9, 3),
(757, 9, 3, 5, 0, 6),
(758, 1, 1, 4, 6, 5),
(759, 7, 6, 1, 6, 0),
(760, 0, 5, 8, 4, 3),
(761, 2, 1, 2, 1, 9),
(762, 8, 2, 6, 6, 3),
(763, 0, 4, 9, 1, 1),
(764, 6, 9, 8, 8, 4),
(765, 2, 4, 5, 4, 8),
(766, 8, 6, 4, 4, 4),
(767, 0, 5, 2, 8, 1),
(768, 9, 3, 1, 3, 9),
(769, 2, 4, 5, 4, 9),
(770, 6, 8, 4, 1, 4),
(771, 4, 8, 1, 1, 3),
(772, 0, 5, 2, 9, 8),
(773, 2, 1, 5, 7, 1),
(774, 2, 5, 5, 2, 7),
(775, 4, 4, 4, 5, 1),
(776, 5, 1, 7, 4, 1),
(777, 6, 3, 3, 6, 5),
(778, 4, 0, 5, 0, 9),
(779, 8, 0, 1, 7, 7),
(780, 7, 7, 5, 7, 2),
(781, 9, 0, 9, 3, 9),
(782, 1, 9, 9, 7, 1),
(783, 4, 7, 1, 1, 7),
(784, 1, 4, 1, 6, 0),
(785, 6, 2, 1, 9, 2),
(786, 5, 1, 8, 3, 4),
(787, 4, 1, 9, 8, 1),
(788, 6, 2, 3, 9, 0),
(789, 9, 1, 9, 5, 0),
(790, 6, 9, 2, 6, 3),
(791, 1, 8, 1, 4, 2),
(792, 9, 5, 3, 2, 2),
(793, 4, 0, 1, 4, 6),
(794, 7, 4, 5, 5, 7),
(795, 9, 2, 1, 4, 2),
(796, 8, 5, 8, 7, 9),
(797, 3, 6, 1, 6, 5),
(798, 6, 3, 8, 9, 1),
(799, 8, 6, 4, 4, 2),
(800, 9, 0, 9, 4, 0),
(801, 7, 8, 8, 7, 0),
(802, 9, 7, 9, 1, 9),
(803, 3, 0, 4, 5, 1),
(804, 1, 1, 2, 6, 5),
(805, 5, 4, 9, 3, 4),
(806, 9, 9, 0, 8, 1),
(807, 2, 8, 6, 4, 5),
(808, 7, 0, 0, 1, 4),
(809, 2, 8, 0, 0, 9),
(810, 8, 3, 5, 4, 0),
(811, 4, 0, 7, 7, 7),
(812, 7, 1, 5, 8, 6),
(813, 7, 4, 8, 5, 2),
(814, 6, 7, 6, 4, 2),
(815, 5, 9, 1, 8, 5),
(816, 2, 2, 4, 2, 3),
(817, 6, 5, 4, 8, 7),
(818, 4, 3, 2, 6, 8),
(819, 6, 4, 0, 2, 6),
(820, 8, 8, 8, 1, 9),
(821, 0, 3, 2, 4, 3),
(822, 9, 6, 6, 3, 5),
(823, 1, 0, 3, 9, 0),
(824, 2, 6, 1, 2, 8),
(825, 9, 3, 4, 6, 7),
(826, 5, 9, 8, 9, 1),
(827, 8, 4, 3, 1, 0),
(828, 7, 4, 8, 6, 7),
(829, 3, 5, 4, 8, 3),
(830, 4, 0, 0, 1, 0),
(831, 2, 3, 1, 9, 4),
(832, 4, 2, 8, 1, 5),
(833, 9, 3, 0, 9, 1),
(834, 3, 8, 5, 7, 4),
(835, 5, 1, 8, 1, 7),
(836, 8, 1, 7, 7, 8),
(837, 1, 4, 1, 6, 0),
(838, 4, 5, 9, 2, 3),
(839, 6, 6, 7, 6, 6),
(840, 7, 6, 2, 8, 8),
(841, 2, 8, 0, 2, 3),
(842, 7, 6, 3, 4, 0),
(843, 7, 5, 9, 7, 3),
(844, 2, 0, 6, 8, 8),
(845, 8, 1, 9, 4, 8),
(846, 8, 4, 3, 0, 1),
(847, 2, 1, 7, 4, 4),
(848, 7, 3, 4, 4, 0),
(849, 0, 5, 6, 4, 4),
(850, 0, 0, 6, 1, 6),
(851, 7, 4, 0, 0, 8),
(852, 9, 9, 1, 4, 2),
(853, 7, 2, 3, 9, 2),
(854, 0, 7, 8, 8, 6),
(855, 3, 0, 7, 5, 8),
(856, 5, 1, 3, 5, 3),
(857, 5, 7, 0, 5, 8),
(858, 0, 4, 2, 0, 6),
(859, 5, 8, 0, 6, 4),
(860, 9, 0, 4, 7, 8),
(861, 6, 5, 9, 9, 1),
(862, 5, 2, 2, 7, 6),
(863, 8, 1, 0, 0, 4),
(864, 5, 4, 5, 2, 2),
(865, 4, 6, 3, 7, 3),
(866, 7, 6, 5, 3, 4),
(867, 3, 5, 6, 4, 4),
(868, 6, 9, 8, 5, 0),
(869, 2, 2, 7, 9, 4),
(870, 5, 3, 8, 6, 7),
(871, 6, 4, 4, 5, 4),
(872, 7, 8, 3, 8, 1),
(873, 2, 3, 0, 7, 9),
(874, 9, 2, 4, 8, 0),
(875, 1, 5, 1, 4, 4),
(876, 1, 9, 4, 2, 4),
(877, 0, 6, 0, 1, 4),
(878, 8, 2, 9, 6, 6),
(879, 9, 8, 5, 1, 0),
(880, 7, 2, 1, 7, 9),
(881, 7, 2, 7, 9, 5),
(882, 3, 9, 0, 6, 9),
(883, 4, 5, 5, 8, 8),
(884, 9, 4, 8, 8, 1),
(885, 3, 4, 9, 7, 4),
(886, 0, 3, 2, 5, 3),
(887, 7, 9, 1, 4, 7),
(888, 5, 2, 2, 2, 3),
(889, 7, 7, 2, 1, 9),
(890, 7, 1, 5, 6, 9),
(891, 9, 9, 2, 8, 1),
(892, 1, 2, 4, 6, 7),
(893, 5, 8, 7, 8, 6),
(894, 9, 5, 7, 1, 0),
(895, 4, 7, 5, 3, 0),
(896, 8, 8, 4, 2, 9),
(897, 6, 5, 4, 8, 4),
(898, 9, 8, 8, 7, 6),
(899, 7, 8, 5, 2, 9),
(900, 0, 2, 4, 7, 3),
(901, 6, 6, 5, 3, 8),
(902, 4, 2, 5, 0, 0),
(903, 3, 6, 4, 1, 5),
(904, 3, 0, 3, 6, 2),
(905, 5, 1, 0, 7, 9),
(906, 5, 4, 1, 5, 6),
(907, 5, 4, 4, 7, 6),
(908, 4, 1, 3, 1, 3),
(909, 0, 5, 5, 4, 5),
(910, 0, 5, 3, 6, 8),
(911, 6, 4, 3, 9, 5),
(912, 0, 4, 3, 3, 1),
(913, 8, 9, 8, 3, 5),
(914, 6, 4, 4, 2, 0),
(915, 4, 7, 4, 5, 4),
(916, 0, 7, 8, 3, 3),
(917, 3, 2, 0, 5, 9),
(918, 4, 6, 7, 2, 0),
(919, 5, 4, 5, 8, 9),
(920, 9, 8, 3, 2, 8),
(921, 1, 6, 9, 4, 4),
(922, 6, 6, 9, 5, 7),
(923, 4, 4, 9, 7, 8),
(924, 0, 9, 8, 3, 0),
(925, 0, 5, 4, 2, 4),
(926, 9, 7, 9, 5, 7),
(927, 0, 4, 2, 9, 0),
(928, 7, 7, 4, 7, 8),
(929, 8, 4, 8, 1, 9),
(930, 2, 1, 8, 5, 2),
(931, 2, 5, 5, 6, 4),
(932, 4, 3, 9, 4, 1),
(933, 8, 3, 9, 8, 0),
(934, 9, 3, 1, 3, 7),
(935, 6, 5, 2, 5, 9),
(936, 7, 7, 2, 4, 2),
(937, 3, 1, 7, 5, 7),
(938, 5, 8, 3, 3, 4),
(939, 5, 7, 0, 8, 9),
(940, 5, 6, 1, 6, 4),
(941, 2, 6, 7, 3, 4),
(942, 7, 7, 1, 9, 9),
(943, 5, 2, 8, 4, 5),
(944, 3, 3, 1, 8, 8),
(945, 4, 4, 2, 6, 7),
(946, 3, 9, 8, 4, 4),
(947, 7, 5, 3, 8, 6),
(948, 0, 0, 2, 0, 6),
(949, 2, 5, 2, 9, 8),
(950, 8, 3, 9, 9, 7),
(951, 9, 5, 0, 8, 8),
(952, 8, 6, 9, 0, 3),
(953, 8, 9, 7, 5, 9),
(954, 2, 2, 8, 4, 5),
(955, 3, 1, 8, 5, 7),
(956, 2, 2, 5, 6, 1),
(957, 5, 7, 7, 4, 4),
(958, 0, 6, 0, 7, 5),
(959, 5, 2, 4, 6, 1),
(960, 2, 1, 7, 3, 8),
(961, 6, 0, 3, 2, 7),
(962, 1, 6, 0, 1, 9),
(963, 5, 2, 4, 7, 0),
(964, 5, 6, 1, 2, 0),
(965, 1, 7, 1, 5, 2),
(966, 4, 6, 7, 5, 2),
(967, 5, 5, 9, 1, 3),
(968, 8, 6, 3, 6, 1),
(969, 6, 3, 6, 7, 0),
(970, 1, 9, 1, 1, 1),
(971, 4, 4, 0, 5, 1),
(972, 7, 2, 5, 3, 5),
(973, 0, 6, 1, 2, 5),
(974, 1, 4, 3, 4, 5),
(975, 3, 6, 1, 7, 7),
(976, 3, 9, 0, 0, 0),
(977, 5, 1, 2, 9, 3),
(978, 1, 3, 6, 6, 6),
(979, 8, 6, 0, 9, 7),
(980, 6, 2, 9, 0, 4),
(981, 2, 1, 8, 3, 5),
(982, 8, 0, 6, 7, 9),
(983, 9, 7, 6, 3, 9),
(984, 0, 1, 0, 1, 3),
(985, 7, 2, 5, 8, 2),
(986, 0, 2, 3, 7, 3),
(987, 3, 3, 6, 1, 9),
(988, 7, 1, 5, 3, 8),
(989, 8, 5, 8, 0, 5),
(990, 0, 9, 2, 8, 9),
(991, 8, 6, 8, 0, 2),
(992, 6, 8, 6, 5, 6),
(993, 5, 6, 0, 3, 0),
(994, 0, 1, 0, 5, 6),
(995, 8, 0, 5, 2, 0),
(996, 8, 4, 3, 9, 4),
(997, 1, 1, 1, 1, 1),
(998, 4, 0, 9, 7, 2),
(999, 9, 6, 7, 0, 4),
(1000, 8, 2, 5, 2, 2),
(1001, 5, 7, 9, 3, 1),
(1002, 4, 3, 1, 7, 7),
(1003, 6, 3, 8, 3, 4),
(1004, 1, 8, 7, 4, 6),
(1005, 5, 7, 5, 1, 8),
(1006, 7, 7, 4, 3, 5),
(1007, 8, 6, 3, 2, 7),
(1008, 7, 2, 6, 5, 7),
(1009, 9, 4, 6, 8, 2),
(1010, 1, 7, 6, 4, 9),
(1011, 8, 4, 2, 5, 2),
(1012, 6, 7, 6, 6, 1),
(1013, 3, 1, 4, 2, 1),
(1014, 2, 2, 0, 3, 4),
(1015, 3, 8, 1, 8, 3),
(1016, 5, 7, 5, 0, 8),
(1017, 8, 5, 7, 4, 2),
(1018, 3, 6, 0, 6, 4),
(1019, 9, 4, 6, 1, 2),
(1020, 2, 8, 8, 8, 3),
(1021, 0, 4, 8, 0, 7),
(1022, 4, 0, 8, 9, 7),
(1023, 8, 4, 2, 4, 4),
(1024, 3, 3, 0, 6, 9),
(1025, 6, 3, 2, 2, 7),
(1026, 1, 9, 8, 1, 0),
(1027, 0, 6, 4, 1, 8),
(1028, 2, 6, 9, 9, 3),
(1029, 0, 7, 2, 5, 0),
(1030, 9, 7, 0, 1, 7),
(1031, 1, 2, 6, 1, 9),
(1032, 9, 1, 5, 3, 7),
(1033, 2, 5, 2, 0, 6),
(1034, 4, 9, 7, 4, 2),
(1035, 1, 1, 4, 8, 7),
(1036, 3, 3, 5, 2, 3),
(1037, 0, 8, 1, 5, 8),
(1038, 5, 2, 0, 6, 3),
(1039, 2, 8, 0, 7, 4),
(1040, 5, 5, 0, 6, 2),
(1041, 3, 1, 0, 8, 2),
(1042, 1, 9, 8, 1, 7),
(1043, 1, 5, 7, 7, 5),
(1044, 6, 3, 1, 7, 8),
(1045, 0, 1, 9, 1, 9),
(1046, 6, 1, 0, 1, 3),
(1047, 6, 6, 3, 2, 3),
(1048, 6, 8, 4, 6, 4),
(1049, 2, 6, 8, 0, 7),
(1050, 7, 0, 1, 6, 7),
(1051, 7, 6, 3, 7, 8),
(1052, 0, 8, 4, 8, 1),
(1053, 6, 8, 8, 3, 9),
(1054, 2, 6, 0, 2, 8),
(1055, 5, 8, 8, 2, 3),
(1056, 8, 4, 8, 6, 8),
(1057, 9, 9, 3, 4, 3),
(1058, 3, 5, 4, 5, 7),
(1059, 5, 4, 4, 8, 2),
(1060, 8, 8, 4, 5, 6),
(1061, 1, 3, 0, 0, 4),
(1062, 7, 5, 5, 5, 0),
(1063, 0, 3, 4, 9, 5),
(1064, 6, 9, 1, 2, 2),
(1065, 6, 1, 9, 2, 7),
(1066, 7, 5, 3, 6, 8),
(1067, 2, 9, 0, 8, 6),
(1068, 5, 7, 5, 3, 1),
(1069, 2, 8, 4, 4, 9),
(1070, 6, 2, 2, 1, 4),
(1071, 8, 6, 2, 0, 5),
(1072, 9, 1, 2, 8, 7),
(1073, 4, 4, 5, 0, 0),
(1074, 5, 7, 1, 7, 5),
(1075, 1, 0, 4, 4, 3),
(1076, 1, 6, 0, 9, 5),
(1077, 2, 5, 9, 9, 7),
(1078, 8, 1, 5, 6, 3),
(1079, 2, 7, 2, 4, 6),
(1080, 1, 5, 6, 9, 5),
(1081, 2, 5, 9, 6, 8),
(1082, 0, 8, 1, 4, 9),
(1083, 9, 3, 0, 8, 5),
(1084, 5, 5, 3, 8, 0),
(1085, 2, 6, 2, 7, 8),
(1086, 7, 7, 0, 2, 0),
(1087, 7, 7, 9, 3, 7),
(1088, 8, 4, 9, 4, 8),
(1089, 0, 9, 8, 9, 1),
(1090, 6, 9, 7, 9, 3),
(1091, 7, 9, 9, 4, 3),
(1092, 5, 5, 2, 5, 2),
(1093, 8, 9, 4, 3, 8),
(1094, 3, 1, 6, 0, 9),
(1095, 8, 1, 6, 6, 5),
(1096, 7, 0, 0, 0, 6),
(1097, 4, 7, 5, 6, 9),
(1098, 2, 6, 9, 1, 1),
(1099, 9, 3, 1, 5, 5),
(1100, 5, 6, 6, 9, 5),
(1101, 6, 1, 7, 2, 4),
(1102, 1, 7, 9, 9, 0),
(1103, 7, 8, 6, 2, 3),
(1104, 3, 7, 7, 8, 0),
(1105, 7, 8, 1, 9, 5),
(1106, 9, 3, 6, 4, 1),
(1107, 7, 5, 0, 4, 8),
(1108, 0, 9, 6, 1, 9),
(1109, 5, 2, 8, 5, 3),
(1110, 9, 4, 7, 3, 9),
(1111, 8, 4, 5, 5, 9),
(1112, 5, 6, 9, 6, 8),
(1113, 3, 7, 6, 9, 9),
(1114, 9, 6, 7, 4, 2),
(1115, 2, 5, 1, 1, 0),
(1116, 4, 5, 5, 7, 8),
(1117, 3, 3, 6, 4, 6),
(1118, 8, 7, 5, 7, 6),
(1119, 5, 8, 1, 0, 7),
(1120, 4, 7, 9, 3, 6),
(1121, 8, 6, 0, 2, 0),
(1122, 3, 0, 5, 2, 5),
(1123, 6, 8, 2, 5, 7),
(1124, 3, 1, 5, 4, 9),
(1125, 5, 4, 2, 1, 1),
(1126, 2, 0, 4, 5, 8),
(1127, 7, 6, 5, 8, 1),
(1128, 9, 7, 0, 7, 3),
(1129, 5, 6, 3, 1, 5),
(1130, 3, 6, 4, 2, 7),
(1131, 2, 1, 4, 9, 2),
(1132, 4, 2, 4, 9, 4),
(1133, 3, 2, 8, 5, 1),
(1134, 1, 6, 6, 9, 3),
(1135, 7, 8, 1, 2, 9),
(1136, 9, 3, 3, 8, 1),
(1137, 1, 4, 0, 4, 9),
(1138, 2, 0, 3, 3, 7),
(1139, 2, 6, 1, 0, 5),
(1140, 1, 7, 2, 7, 7),
(1141, 6, 2, 5, 4, 2),
(1142, 0, 2, 0, 8, 6),
(1143, 7, 2, 3, 4, 8),
(1144, 9, 3, 6, 9, 7),
(1145, 2, 5, 2, 1, 9),
(1146, 3, 0, 3, 8, 4),
(1147, 1, 9, 1, 2, 0),
(1148, 7, 3, 1, 5, 7),
(1149, 9, 6, 9, 2, 7),
(1150, 0, 1, 6, 5, 0),
(1151, 3, 0, 4, 6, 2),
(1152, 4, 0, 1, 9, 8),
(1153, 3, 5, 8, 1, 7),
(1154, 3, 5, 4, 2, 7),
(1155, 2, 5, 7, 4, 7),
(1156, 7, 3, 2, 5, 6),
(1157, 4, 3, 5, 4, 8),
(1158, 4, 6, 5, 3, 4),
(1159, 9, 8, 8, 2, 0),
(1160, 5, 2, 9, 8, 5),
(1161, 7, 8, 5, 2, 5),
(1162, 6, 6, 3, 5, 4),
(1163, 6, 0, 8, 1, 1),
(1164, 5, 4, 2, 4, 6),
(1165, 6, 9, 8, 6, 3),
(1166, 3, 3, 9, 3, 6),
(1167, 1, 8, 8, 6, 6),
(1168, 2, 5, 7, 3, 5),
(1169, 1, 9, 1, 6, 1),
(1170, 8, 5, 3, 0, 5),
(1171, 2, 9, 0, 1, 0),
(1172, 6, 8, 1, 6, 5),
(1173, 2, 2, 5, 0, 5),
(1174, 3, 8, 6, 5, 9),
(1175, 3, 0, 8, 5, 3),
(1176, 6, 5, 6, 1, 1),
(1177, 2, 7, 5, 0, 6),
(1178, 6, 3, 8, 7, 9),
(1179, 2, 4, 4, 9, 6),
(1180, 5, 9, 4, 6, 4),
(1181, 5, 0, 5, 5, 6),
(1182, 4, 7, 0, 1, 2),
(1183, 4, 8, 6, 3, 6),
(1184, 7, 7, 9, 5, 0),
(1185, 4, 6, 2, 6, 0),
(1186, 5, 8, 0, 0, 3),
(1187, 3, 3, 0, 6, 4),
(1188, 6, 2, 9, 5, 7),
(1189, 6, 7, 1, 7, 6),
(1190, 6, 7, 4, 4, 4),
(1191, 1, 7, 1, 1, 1),
(1192, 7, 9, 9, 8, 3),
(1193, 2, 0, 2, 3, 3),
(1194, 9, 7, 1, 9, 5),
(1195, 0, 2, 4, 1, 8),
(1196, 3, 4, 6, 3, 4),
(1197, 5, 1, 0, 2, 0),
(1198, 0, 1, 9, 1, 9),
(1199, 7, 3, 6, 2, 1),
(1200, 7, 3, 1, 1, 0),
(1201, 1, 1, 9, 2, 5),
(1202, 8, 2, 2, 3, 7),
(1203, 8, 4, 6, 5, 1),
(1204, 9, 4, 8, 6, 0),
(1205, 8, 6, 4, 0, 8),
(1206, 8, 9, 6, 4, 8),
(1207, 1, 0, 5, 1, 7),
(1208, 9, 1, 3, 0, 1),
(1209, 5, 7, 9, 1, 5),
(1210, 9, 1, 6, 9, 5),
(1211, 5, 7, 3, 7, 9),
(1212, 9, 3, 0, 6, 7),
(1213, 7, 8, 2, 1, 2),
(1214, 0, 5, 0, 7, 6),
(1215, 8, 5, 7, 2, 5),
(1216, 7, 9, 0, 8, 7),
(1217, 3, 9, 9, 1, 5),
(1218, 9, 1, 9, 5, 1),
(1219, 8, 9, 9, 8, 5),
(1220, 8, 9, 6, 9, 0),
(1221, 3, 0, 4, 8, 8),
(1222, 0, 3, 2, 9, 9),
(1223, 8, 3, 6, 1, 3),
(1224, 4, 5, 3, 0, 0),
(1225, 1, 1, 8, 3, 0),
(1226, 2, 0, 6, 2, 9),
(1227, 1, 5, 3, 1, 4),
(1228, 3, 5, 7, 3, 7),
(1229, 1, 8, 5, 8, 6),
(1230, 0, 6, 8, 9, 3),
(1231, 9, 0, 6, 2, 9),
(1232, 0, 5, 2, 4, 4),
(1233, 2, 2, 0, 6, 7),
(1234, 4, 8, 1, 9, 1),
(1235, 0, 8, 3, 9, 1),
(1236, 3, 3, 3, 8, 9),
(1237, 1, 5, 8, 2, 3),
(1238, 1, 1, 8, 2, 5),
(1239, 4, 8, 0, 9, 0),
(1240, 5, 4, 1, 3, 8),
(1241, 2, 8, 9, 8, 0),
(1242, 3, 3, 8, 9, 4),
(1243, 2, 8, 3, 3, 4),
(1244, 2, 0, 8, 6, 3),
(1245, 8, 4, 0, 5, 1),
(1246, 0, 3, 4, 4, 4),
(1247, 1, 4, 5, 2, 3),
(1248, 1, 9, 3, 5, 2),
(1249, 0, 1, 8, 2, 9),
(1250, 9, 5, 4, 1, 3),
(1251, 3, 3, 7, 3, 0),
(1252, 3, 7, 4, 2, 5),
(1253, 9, 9, 1, 8, 8),
(1254, 8, 8, 5, 4, 8),
(1255, 1, 3, 7, 1, 7),
(1256, 3, 4, 3, 4, 4),
(1257, 6, 8, 9, 0, 7),
(1258, 1, 5, 0, 9, 6),
(1259, 6, 2, 0, 9, 7),
(1260, 7, 0, 2, 7, 7),
(1261, 9, 4, 6, 0, 0),
(1262, 6, 0, 1, 9, 4),
(1263, 8, 5, 2, 7, 8),
(1264, 4, 1, 1, 9, 9),
(1265, 6, 7, 8, 0, 4),
(1266, 7, 2, 1, 3, 8),
(1267, 4, 9, 3, 1, 1),
(1268, 9, 2, 3, 1, 7),
(1269, 2, 0, 6, 3, 8),
(1270, 6, 1, 9, 6, 1),
(1271, 2, 9, 8, 6, 6),
(1272, 8, 1, 0, 9, 0),
(1273, 5, 8, 6, 6, 1),
(1274, 0, 6, 1, 9, 4),
(1275, 7, 4, 8, 7, 1),
(1276, 5, 3, 9, 7, 4),
(1277, 5, 3, 6, 2, 0),
(1278, 6, 1, 5, 5, 1),
(1279, 1, 4, 5, 9, 1),
(1280, 5, 3, 6, 1, 3),
(1281, 0, 6, 5, 0, 1),
(1282, 2, 1, 6, 5, 5),
(1283, 8, 1, 2, 7, 7),
(1284, 3, 5, 7, 6, 4),
(1285, 8, 5, 0, 8, 4),
(1286, 5, 9, 3, 1, 8),
(1287, 4, 0, 8, 2, 2),
(1288, 4, 1, 8, 3, 0),
(1289, 8, 8, 6, 1, 4),
(1290, 2, 2, 2, 8, 2),
(1291, 7, 6, 6, 8, 3),
(1292, 8, 7, 9, 9, 5),
(1293, 0, 6, 9, 1, 1),
(1294, 2, 3, 8, 2, 4),
(1295, 5, 9, 0, 3, 8),
(1296, 3, 1, 7, 2, 8),
(1297, 3, 4, 6, 6, 9),
(1298, 9, 1, 0, 6, 2),
(1299, 1, 4, 6, 5, 6),
(1300, 9, 3, 7, 8, 3),
(1301, 1, 6, 5, 7, 7),
(1302, 0, 3, 9, 4, 2),
(1303, 3, 8, 4, 6, 0),
(1304, 6, 4, 5, 1, 0),
(1305, 3, 1, 0, 5, 4),
(1306, 1, 3, 4, 6, 3),
(1307, 4, 5, 9, 5, 2),
(1308, 6, 2, 9, 0, 2),
(1309, 8, 4, 2, 4, 5),
(1310, 6, 6, 9, 0, 0),
(1311, 8, 8, 8, 3, 3),
(1312, 3, 8, 1, 0, 3),
(1313, 9, 8, 1, 9, 6),
(1314, 1, 6, 1, 4, 2),
(1315, 0, 2, 6, 3, 0),
(1316, 9, 2, 5, 2, 4),
(1317, 5, 9, 6, 0, 6),
(1318, 2, 1, 7, 7, 0),
(1319, 0, 3, 9, 1, 2),
(1320, 8, 6, 2, 9, 8),
(1321, 7, 4, 6, 6, 8),
(1322, 9, 7, 4, 8, 5),
(1323, 1, 9, 3, 7, 3),
(1324, 6, 8, 7, 6, 3),
(1325, 7, 0, 1, 8, 8),
(1326, 3, 4, 7, 1, 2),
(1327, 4, 9, 7, 0, 8),
(1328, 4, 1, 5, 6, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificación`
--
ALTER TABLE `calificación`
  ADD PRIMARY KEY (`id_calificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificación`
--
ALTER TABLE `calificación`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1329;
--
-- Base de datos: `login1`
--
CREATE DATABASE IF NOT EXISTS `login1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `login1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `login12`
--
CREATE DATABASE IF NOT EXISTS `login12` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `login12`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'djoseeduardo688@gmail.com', '$2y$10$iT/Ye9FXejFaSiR59udt2.30IO8kjNbkYP6l98vQOya1k3/znV1pe'),
(6, 'liz21@gmail.com', '$2y$10$VZfXhIl8bPhTDxiq4M936OnEsOAWFAKNoTdiMvzZjEqUTf2JOi6By');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `loginejemplo`
--
CREATE DATABASE IF NOT EXISTS `loginejemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loginejemplo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginn`
--

CREATE TABLE `loginn` (
  `id` int(11) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `contraseña` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contraseñaad` varchar(250) NOT NULL,
  `rol` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `loginn`
--

INSERT INTO `loginn` (`id`, `usuario`, `contraseña`, `email`, `contraseñaad`, `rol`) VALUES
(1, 'administrador', '', 'joselalo@gmail.com', '123456789', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loginn`
--
ALTER TABLE `loginn`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `loginn`
--
ALTER TABLE `loginn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `martienez`
--
CREATE DATABASE IF NOT EXISTS `martienez` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `martienez`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Disparadores `administrador`
--
DELIMITER $$
CREATE TRIGGER `movi_adminitrador` AFTER UPDATE ON `administrador` FOR EACH ROW INSERT INTO administrador(accion) VALUES(concat("Se realizo actualizacion de id viejo",old.id_administrador,"contraseña vieja",old.contraseña))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido_p` varchar(50) NOT NULL,
  `apellido_m` varchar(40) NOT NULL,
  `foto` varchar(40) NOT NULL,
  `fecha_r` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido_p`, `apellido_m`, `foto`, `fecha_r`) VALUES
(1, 'jose eduardo ', 'Diaz', 'Lorenzor', 'hshshs', '2021-12-14 20:02:48');

--
-- Disparadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `moviemietoregistrado_cliente` AFTER UPDATE ON `cliente` FOR EACH ROW INSERT INTO registro_m (accion) VALUES (concat("se actulizo el registro de cliente con id viejo",old.id_cliente,"nombre viejo",old.nombre))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_m`
--

CREATE TABLE `registro_m` (
  `id` int(11) NOT NULL,
  `accion` varchar(250) NOT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_m`
--

INSERT INTO `registro_m` (`id`, `accion`, `fecha_movimiento`) VALUES
(1, 'se actulizo el registro de cliente con id viejo1nombre viejojose eduardo ', '2021-12-14 14:03:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `re_adminitsrdor`
--

CREATE TABLE `re_adminitsrdor` (
  `id` int(11) NOT NULL,
  `accion` varchar(250) NOT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `registro_m`
--
ALTER TABLE `registro_m`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `re_adminitsrdor`
--
ALTER TABLE `re_adminitsrdor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro_m`
--
ALTER TABLE `registro_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `re_adminitsrdor`
--
ALTER TABLE `re_adminitsrdor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `peliculas`
--
CREATE DATABASE IF NOT EXISTS `peliculas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `peliculas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pelicula` int(11) NOT NULL,
  `nombre_pelicula` varchar(50) NOT NULL,
  `Año` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pelicula`, `nombre_pelicula`, `Año`) VALUES
(1, 'Volver al futuro 1', '1985'),
(2, 'Ready Player One: comienza el juego', '2018'),
(3, 'It', '2017'),
(4, 'Pulp Fiction', '1994');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"calificacion\",\"table\":\"evualuacion_1\"},{\"db\":\"evaluaci\\u00f3n\",\"table\":\"calificaci\\u00f3n\"},{\"db\":\"bescas\",\"table\":\"alumnos\"},{\"db\":\"escolares\",\"table\":\"alumnos\"},{\"db\":\"respuestas\",\"table\":\"respuesta\"},{\"db\":\"bibliotecas\",\"table\":\"libros\"},{\"db\":\"peliculas\",\"table\":\"peliculas\"},{\"db\":\"martienez\",\"table\":\"cliente\"},{\"db\":\"martienez\",\"table\":\"administrador\"},{\"db\":\"martienez\",\"table\":\"registro_m\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'usuarios', 'usuario', '[]', '2021-11-16 01:07:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-04-04 16:08:33', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\",\"Console\\/Height\":66.89089000000001}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `pinol`
--
CREATE DATABASE IF NOT EXISTS `pinol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pinol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password_admin` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombre`, `email`, `usuario`, `password`, `password_admin`, `fecha_registro`) VALUES
(1, '', 'djoseeduardo688@gmail.com', '', '$2y$10$DurQl2MTXa4FEPY45IfT.uiZGzq171PXiYT1exxqFwtc0kvKIbqWW', '', '2022-05-18 18:38:41'),
(2, '', 'fredy@gmail.com', '', '$2y$10$L4wti6EflZbEFI.zycIJXu.ahBnoZJ7Rv4np4n22.hhr6dFx8Cgvu', '', '2022-05-25 14:21:39'),
(3, '', 'jose@gmail.com', '', '$2y$10$aPN6CAmSo10ZWm0BTq5H8emfZ4RupUup/yaiIMOgZ1y1LI3F9arLi', '', '2022-05-26 11:58:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `rfc`) VALUES
(1, 'JOSE EDUARDO', 'DILE980612'),
(2, 'CARLOS', 'CALO906734'),
(3, 'ISAIS', 'JULI895643'),
(4, 'JULIAN', 'POLI7865456'),
(5, 'ABELARDO', 'abedk7865'),
(6, 'GUATAVO', 'GUATR78'),
(7, 'DIEGO', 'JULI895643'),
(8, 'JOSE', 'DILE986754');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_D_venta` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(40) NOT NULL,
  `precio` double NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_D_venta`, `id_venta`, `id_producto`, `cantidad`, `precio`, `importe`) VALUES
(1, 1, 1, 20, 23, 460),
(2, 2, 2, 45, 18, 810),
(3, 3, 4, 10, 23, 230),
(4, 3, 3, 45, 16, 720),
(5, 2, 1, 45, 23, 1035),
(6, 5, 3, 45, 16, 720),
(7, 3, 5, 45, 16, 720),
(8, 1, 1, 20, 23, 460),
(9, 2, 2, 45, 18, 810),
(10, 2, 2, 2, 18, 36),
(11, 3, 3, 45, 16, 720),
(12, 3, 3, 12, 16, 192),
(13, 1, 3, 20, 16, 320),
(14, 3, 4, 2, 23, 46),
(15, 3, 4, 20, 23, 460),
(16, 4, 4, 10, 23, 230),
(17, 5, 5, 45, 16, 720),
(18, 5, 5, 45, 16, 720);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `cantidad` int(40) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `cantidad`, `descripcion`, `precio`) VALUES
(1, 'Avena entera', 935, '500g', 23),
(2, 'choco avena', 953, '500g', 18),
(3, 'pewi', 878, '250g', 16),
(4, 'Avena Blanca', 968, '250g', 23),
(5, 'Avena con cacao', 865, '500g', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `importe` double NOT NULL,
  `IVA` double NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `dia`, `mes`, `año`, `importe`, `IVA`, `total`) VALUES
(1, 1, 26, 5, 2022, 1240, 198.4, 1438),
(2, 2, 19, 5, 2022, 2691, 430.56, 3122),
(3, 3, 11, 5, 2022, 3088, 494.08, 3582),
(4, 2, 17, 5, 2022, 230, 36.800000000000004, 267),
(5, 8, 10, 5, 2022, 2160, 345.6, 2506);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_D_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_D_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de datos: `pinol3`
--
CREATE DATABASE IF NOT EXISTS `pinol3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pinol3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password_admin` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nombre`, `email`, `usuario`, `password`, `password_admin`, `fecha_registro`) VALUES
(1, '', 'djoseeduardo688@gmail.com', '', '$2y$10$DurQl2MTXa4FEPY45IfT.uiZGzq171PXiYT1exxqFwtc0kvKIbqWW', '', '2022-05-18 18:38:41'),
(2, '', 'fredy@gmail.com', '', '$2y$10$L4wti6EflZbEFI.zycIJXu.ahBnoZJ7Rv4np4n22.hhr6dFx8Cgvu', '', '2022-05-25 14:21:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rfc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `rfc`) VALUES
(83, '', 'DILE980612'),
(84, '', 'sepa102030'),
(85, 'JULIAM', 'FDGTR675643');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_D_venta` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(40) NOT NULL,
  `precio` double NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_D_venta`, `id_venta`, `id_producto`, `cantidad`, `precio`, `importe`) VALUES
(1, 1, 1, 25, 18, 0),
(2, 1, 1, 45, 15, 0),
(3, 1, 3, 12, 13, 0),
(4, 1, 5, 10, 10, 0),
(5, 4, 4, 3, 17, 51),
(6, 4, 3, 2, 13, 26),
(7, 2, 1, 2, 18, 36),
(8, 4, 1, 2, 18, 36),
(9, 4, 1, 2, 18, 36),
(10, 4, 1, 2, 18, 36),
(11, 4, 1, 2, 18, 36),
(12, 5, 1, 5, 18, 90),
(13, 5, 1, 5, 18, 90),
(14, 5, 1, 1, 18, 18),
(15, 5, 1, 1, 18, 18),
(16, 6, 1, 4, 18, 72),
(17, 6, 4, 5, 17, 85),
(18, 6, 4, 5, 17, 85),
(19, 1, 3, 2, 13, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `cantidad` int(40) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `cantidad`, `descripcion`, `precio`) VALUES
(1, 'Avena entera', 0, '1kilo', 18),
(2, 'Avena con cacao', 25, '500g', 15),
(3, 'pewi', 43, '450g', 13),
(4, 'polvillo', 3, '250g', 17),
(5, 'Avena Blanca', 45, '250g', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `importe` double NOT NULL,
  `IVA` double NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `dia`, `mes`, `anio`, `importe`, `IVA`, `total`) VALUES
(1, 1, 0, 0, 0, 26, 4.16, 30),
(2, 83, 25, 5, 2022, 0, 0, 0),
(3, 83, 25, 5, 2022, 0, 0, 0),
(4, 83, 26, 5, 2022, 0, 0, 0),
(5, 83, 10, 5, 2022, 0, 0, 0),
(6, 84, 30, 5, 2022, 170, 27.2, 197),
(7, 0, 1, 1, 1970, 0, 0, 0),
(8, 0, 1, 1, 1970, 0, 0, 0),
(9, 83, 1, 1, 1970, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_D_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_D_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `producto`
--
CREATE DATABASE IF NOT EXISTS `producto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `producto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `entidad` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `credito_max` double NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `id_respuesta` int(11) NOT NULL,
  `r1` int(11) NOT NULL,
  `r2` int(11) NOT NULL,
  `r3` int(11) NOT NULL,
  `r4` int(11) NOT NULL,
  `r5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`id_respuesta`, `r1`, `r2`, `r3`, `r4`, `r5`) VALUES
(1, 1, 3, 4, 2, 1),
(2, 1, 2, 5, 3, 1),
(3, 2, 1, 2, 1, 2),
(4, 1, 1, 4, 4, 2),
(5, 2, 5, 4, 4, 2),
(6, 2, 2, 4, 2, 1),
(7, 2, 5, 2, 5, 2),
(8, 2, 4, 4, 3, 2),
(9, 1, 5, 1, 5, 1),
(10, 1, 3, 2, 4, 1),
(11, 1, 5, 1, 1, 1),
(12, 1, 3, 4, 2, 1),
(13, 1, 1, 1, 1, 2),
(14, 2, 5, 5, 2, 1),
(15, 1, 4, 5, 3, 1),
(16, 1, 2, 3, 4, 2),
(17, 2, 4, 2, 4, 1),
(18, 1, 5, 2, 3, 2),
(19, 1, 4, 1, 5, 2),
(20, 2, 2, 5, 4, 2),
(21, 2, 1, 3, 3, 1),
(22, 1, 1, 1, 4, 2),
(23, 2, 2, 3, 2, 1),
(24, 1, 4, 4, 1, 2),
(25, 2, 1, 3, 3, 2),
(26, 2, 2, 5, 3, 1),
(27, 2, 3, 4, 5, 1),
(28, 1, 4, 1, 3, 1),
(29, 1, 3, 1, 1, 1),
(30, 1, 1, 3, 3, 2),
(31, 2, 5, 3, 5, 2),
(32, 1, 2, 5, 4, 2),
(33, 2, 4, 3, 3, 1),
(34, 2, 3, 2, 5, 2),
(35, 2, 3, 3, 1, 1),
(36, 1, 2, 3, 3, 1),
(37, 2, 4, 1, 2, 1),
(38, 2, 1, 4, 5, 2),
(39, 2, 2, 2, 5, 2),
(40, 1, 3, 1, 5, 1),
(41, 2, 4, 1, 2, 1),
(42, 1, 5, 5, 3, 2),
(43, 2, 2, 4, 1, 1),
(44, 1, 2, 5, 3, 1),
(45, 1, 3, 2, 1, 2),
(46, 1, 5, 1, 2, 1),
(47, 1, 1, 1, 3, 1),
(48, 1, 1, 3, 4, 1),
(49, 1, 3, 4, 1, 1),
(50, 1, 1, 1, 1, 1),
(51, 1, 3, 3, 5, 1),
(52, 1, 2, 2, 4, 1),
(53, 2, 5, 4, 5, 2),
(54, 2, 3, 3, 1, 1),
(55, 2, 2, 2, 4, 1),
(56, 2, 2, 3, 3, 2),
(57, 1, 1, 3, 4, 2),
(58, 2, 2, 4, 3, 2),
(59, 2, 4, 2, 1, 1),
(60, 1, 1, 5, 5, 1),
(61, 1, 3, 4, 1, 1),
(62, 2, 1, 1, 4, 1),
(63, 2, 4, 4, 3, 1),
(64, 2, 5, 4, 1, 1),
(65, 2, 3, 2, 5, 2),
(66, 1, 1, 4, 2, 1),
(67, 1, 3, 1, 1, 1),
(68, 1, 5, 4, 1, 2),
(69, 1, 5, 1, 3, 2),
(70, 1, 2, 2, 2, 1),
(71, 1, 5, 1, 5, 1),
(72, 1, 1, 4, 3, 1),
(73, 2, 4, 2, 2, 1),
(74, 2, 1, 1, 2, 2),
(75, 2, 3, 2, 2, 2),
(76, 1, 2, 2, 5, 2),
(77, 1, 5, 2, 1, 2),
(78, 1, 4, 2, 4, 1),
(79, 2, 3, 5, 1, 1),
(80, 2, 1, 4, 3, 1),
(81, 2, 4, 4, 1, 2),
(82, 1, 1, 3, 2, 2),
(83, 1, 1, 1, 1, 1),
(84, 2, 1, 3, 5, 1),
(85, 1, 2, 2, 1, 2),
(86, 2, 4, 1, 1, 2),
(87, 1, 1, 3, 4, 1),
(88, 2, 3, 2, 1, 1),
(89, 1, 2, 4, 5, 1),
(90, 1, 5, 1, 5, 2),
(91, 1, 1, 1, 4, 1),
(92, 1, 2, 3, 4, 1),
(93, 1, 5, 2, 2, 2),
(94, 2, 1, 2, 4, 2),
(95, 2, 3, 4, 5, 1),
(96, 1, 3, 4, 4, 1),
(97, 1, 3, 3, 3, 2),
(98, 1, 5, 2, 1, 1),
(99, 1, 5, 1, 2, 1),
(100, 1, 5, 1, 3, 2),
(101, 1, 1, 2, 1, 2),
(102, 2, 3, 2, 1, 2),
(103, 1, 4, 1, 1, 2),
(104, 1, 3, 5, 4, 1),
(105, 2, 3, 5, 3, 2),
(106, 1, 5, 2, 4, 2),
(107, 2, 3, 1, 5, 2),
(108, 2, 3, 1, 5, 1),
(109, 2, 5, 4, 4, 2),
(110, 1, 2, 3, 1, 1),
(111, 2, 5, 3, 1, 1),
(112, 1, 1, 2, 4, 2),
(113, 2, 4, 5, 5, 1),
(114, 2, 1, 5, 1, 1),
(115, 1, 1, 2, 1, 2),
(116, 1, 2, 2, 4, 2),
(117, 1, 2, 3, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_ventas`
--

CREATE TABLE `d_ventas` (
  `id_d_ventas` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `n_producto` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `n_producto`, `existencia`, `precio`) VALUES
(1, 'Aceite', 20, '35'),
(2, 'Frijol', 50, '28'),
(3, 'Arroz', 30, '20'),
(4, 'Pasta', 20, '7'),
(5, 'Leche', 30, '20'),
(6, 'Azucar', 39, '28'),
(7, 'Sal', 46, '6'),
(8, 'Refresco', 35, '32'),
(9, 'Atun', 55, '21'),
(10, 'Pure de tomate', 63, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `monto` double NOT NULL,
  `f_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`id_respuesta`);

--
-- Indices de la tabla `d_ventas`
--
ALTER TABLE `d_ventas`
  ADD PRIMARY KEY (`id_d_ventas`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `d_ventas`
--
ALTER TABLE `d_ventas`
  MODIFY `id_d_ventas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `respuestas`
--
CREATE DATABASE IF NOT EXISTS `respuestas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `respuestas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_R` int(11) NOT NULL,
  `R1` int(11) NOT NULL,
  `R2` varchar(11) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_R`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_R` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `serv_1`
--
CREATE DATABASE IF NOT EXISTS `serv_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `serv_1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `Nom_Cliente` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido_p` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido_m` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Entidad` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `Color` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `genero` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `Nom_Cliente`, `Apellido_p`, `Apellido_m`, `Entidad`, `edad`, `Color`, `genero`) VALUES
(1, 'Belinda', 'Pérez', 'Colorado', 'Chiapas', 71, 'Azul', 'F'),
(2, 'Angela', 'López', 'López', 'Veracruz', 29, 'Negro', 'F'),
(3, 'Angela', 'López', 'Jiménez', 'Tabasco', 30, 'Rojo', 'F'),
(4, 'Lidia', 'Colorado', 'Hernández', 'Tabasco', 23, 'Amarillo', 'F'),
(5, 'Lidia', 'Álvarez', 'Álvarez', 'Oaxaca', 24, 'Amarillo', 'F'),
(6, 'José', 'Sánchez', 'López', 'Chiapas', 75, 'Amarillo', 'M'),
(7, 'Fabian', 'Hernández', 'López', 'Tabasco', 52, 'Amarillo', 'M'),
(8, 'Belinda', 'Colorado', 'Díaz', 'Veracruz', 50, 'Rojo', 'M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `editorial` varchar(40) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `editorial`, `fecha_registro`) VALUES
(11, 'La bellena azul', 'Dr. Jose EDL', 'MG_GRAMGIL', '2021-12-07 15:35:56'),
(12, 'El universo', 'Step hocking', 'COSMOS', '2021-12-07 15:35:56'),
(13, 'los misterios de l u', 'Carl Sagan', 'MG_GRAMGIL', '2021-12-07 15:35:56'),
(14, 'Base de datos', 'MI.Lenin V', 'MG_GRAMGIL', '2021-12-07 15:35:56'),
(15, 'Linux', 'Dr. Mis', 'MKwdiaz', '2021-12-07 15:35:56'),
(16, 'CSHARP', 'ING. MayL', 'MG_GRAMGIL', '2021-12-07 15:35:56'),
(19, 'Universo es una casc', 'Step hocking', 'COSMOS', '2021-12-07 15:35:56'),
(21, 'Universo', 'Step hocking', 'cosmos', '2021-12-07 17:15:37'),
(23, 'Universo', 'Dr. Jose E', 'COSMOS', '2021-12-07 17:20:32'),
(26, 'El ciclo ', 'DR.Jhon', 'MR.GRAM', '2021-12-08 00:02:55'),
(27, 'La tierra', 'Dr. Pedro', 'wmimage', '2021-12-09 18:03:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `Nombre`) VALUES
(1, 'JUAN'),
(2, 'LUIS'),
(3, 'EDUARDO'),
(4, 'GABRIEL'),
(5, 'JAIME');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`) VALUES
(1, 'Atún', 12.3),
(2, 'Frijol', 25),
(3, 'Salsa', 9.3),
(4, 'chocoavena', 45),
(5, 'horchata', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`id_proveedor`, `nombre`) VALUES
(1, 'Abarrotes Monterrey'),
(2, 'Los Sanchez'),
(3, 'San Lorenzo'),
(4, 'San Pascual');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `provedor`
--
ALTER TABLE `provedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `tiendalaguna`
--
CREATE DATABASE IF NOT EXISTS `tiendalaguna` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tiendalaguna`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleregistros`
--

CREATE TABLE `detalleregistros` (
  `idUsuario` int(15) NOT NULL,
  `idProducto` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(50) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `imagen` geometrycollection NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `fechar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(80) NOT NULL,
  `Perfil` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleregistros`
--
ALTER TABLE `detalleregistros`
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleregistros`
--
ALTER TABLE `detalleregistros`
  ADD CONSTRAINT `detalleregistros_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  ADD CONSTRAINT `detalleregistros_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);
--
-- Base de datos: `tiendasl`
--
CREATE DATABASE IF NOT EXISTS `tiendasl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tiendasl`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `f_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `categoria`, `f_registro`) VALUES
(4, 'sabrita', 10, 'sabritas papas', '2021-12-11 21:37:54'),
(5, 'sabrita', 10, 'sabritas papas', '2021-12-11 21:40:39'),
(7, 'nescafe', 23, 'dolca', '2021-12-11 21:53:02'),
(8, 'galleta animalito', 23, '1kilo', '2021-12-12 04:40:42'),
(9, 'avena', 16, 'Tres minutos', '2021-12-12 04:41:03'),
(10, 'soya', 18, '1 bolsa', '2021-12-12 04:44:09'),
(11, 'Cocaloca', 45, '3L', '2021-12-12 04:44:52'),
(12, 'Refresco fanta', 35, '3L', '2021-12-12 04:45:32'),
(13, 'Big Cola', 32, '2.5L', '2021-12-12 04:46:09'),
(14, 'Azucar', 20, '1kilo', '2021-12-13 01:52:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Base de datos: `topicosbd-1`
--
CREATE DATABASE IF NOT EXISTS `topicosbd-1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `topicosbd-1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentodeordenacionacademica`
--

CREATE TABLE `departamentodeordenacionacademica` (
  `escuela` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `numeroAlumnos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `departamentodeordenacionacademica`
--

INSERT INTO `departamentodeordenacionacademica` (`escuela`, `numeroAlumnos`) VALUES
('ETSIT', 2500),
('EUIT', 3000),
('EUI', 2800),
('FI', 2100),
('ITSS', 1200),
('TPOGRAFIA', 800),
('SUAT', 3000),
('ETSIT', 4000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentoinfrastructura`
--

CREATE TABLE `departamentoinfrastructura` (
  `Escuela` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `Situacion` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamentoinfrastructura`
--

INSERT INTO `departamentoinfrastructura` (`Escuela`, `Situacion`) VALUES
('ETSIT', 'CUIDAD UNIVERSITARIA'),
('EUIT', 'CAMPUS SUR'),
('EUIT', 'CAMPUS MONTENEGRO'),
('ITSS', 'CAMPUS REGION SIERRA'),
('TOPOGRAFIA', 'CAMPUS REGION SIERRA');
--
-- Base de datos: `usuarios`
--
CREATE DATABASE IF NOT EXISTS `usuarios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `usuarios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `a_p` varchar(20) NOT NULL,
  `a_m` varchar(20) NOT NULL,
  `dir` varchar(35) NOT NULL,
  `email` varchar(40) NOT NULL,
  `edo` varchar(15) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `genero` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `a_p`, `a_m`, `dir`, `email`, `edo`, `tel`, `genero`) VALUES
(1, 'JOSE ANTONIO', 'MIS', 'MARTIN', 'MAJAHUAL', 'mismartin.uvg@gmail.com', 'Campeche', '9321204534', 'Masculino'),
(2, 'ANDRES', 'GARCIA', 'REYES', 'HUIXTLA', 'GARCIA@ALGO.COM', 'Mexico', '9321204567', 'Masculino'),
(4, 'PEDRO', 'MESA', 'ANDRADE', '16 DE SEPT. VHSA', 'MESA@ALG0.COM', 'Sonora', '9321204567', 'Masculino'),
(8, 'LOURDES', 'SALVATIERRA', 'MARTÍNEZ', 'POR AHI', 'LULU@ALGO.COM', 'Veracruz', '9322313421', 'Femenino'),
(9, 'Oliver', 'Lujano', 'Bustamante', 'por aka', 'ejemplo@ejemplo.ejemplo', 'Chiapas', '9345265378', 'Masculino'),
(10, 'carlos', 'Diaz', 'rueda', 'colonia escobal', 'ksghsakghgsad@gmail.com', 'Chihuahua', '9321204534', 'Masculino'),
(11, 'Jose Eduardo', 'Diaz', 'rueda', 'maytamoro', 'djoseeduardo688@gmail.com', 'Oaxaca', '9321204567', 'Masculino'),
(12, 'Lizbeth Merari', 'Gomez', 'Rueda', 'matamoros 2da', 'liz21@gmail.com', 'Chiapas', '9322032563', 'Femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
