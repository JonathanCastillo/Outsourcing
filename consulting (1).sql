-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 03:47 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consulting`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplicaciones`
--

CREATE TABLE `aplicaciones` (
  `Id_Aplicacion` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Oferta` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aplicaciones`
--

INSERT INTO `aplicaciones` (`Id_Aplicacion`, `Id_Usuario`, `Id_Oferta`, `Fecha`) VALUES
(1, 1, 1, '2019-04-09 18:14:49'),
(2, 1, 2, '2019-04-09 18:56:10'),
(5, 1, 3, '2019-08-13 12:22:05'),
(6, 1, 7, '2019-08-14 01:09:57'),
(7, 1, 5, '2019-08-14 01:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `Id_Curriculum` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Ruta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`Id_Curriculum`, `Id_Usuario`, `Nombre`, `Descripcion`, `Tipo`, `Ruta`) VALUES
(1, 1, 'Curriculum de Jonathan ultima version', 'Curriculum Completo Actualizado ultima version', 'application/pdf', '../../upload/Curriculum de Jonathan ultima version_Jonathan Josue Castillo Cruz9.pdf'),
(2, 2, 'Curriculum de Marelyn', '', 'application/pdf', 'upload/Curriculum de Marelyn_27.pdf'),
(3, 3, 'Curriculum Francisco', '', 'application/pdf', 'upload/Curriculum Francisco_30.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `Id_Empresa` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Rubro` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`Id_Empresa`, `Nombre`, `Rubro`, `Email`, `Password`, `Descripcion`) VALUES
(1, 'Dany Cafe', 'Restaurant', 'DanyCafe19@hotmail.com', '1234', ''),
(2, 'Rutas Orientales', 'Transporte', 'RutasOrientales@hotmail.com', '12345', 'Rutas 306 y 304'),
(3, 'Rutas Orientales', 'Transporte', 'RutasOrientales@hotmail.com', '12345', 'Rutas 306 y 304'),
(4, 'Rutas Orientales', 'Transporte', 'RutasOrientales@hotmail.com', '12345', 'Rutas 306 y 304'),
(5, 'Rutas Orientales', 'Transporte', 'RutasOrientales@hotmail.com', '12345', 'Rutas 306 y 304'),
(6, 'Uber', 'Transporte', 'UberNova@hotmail.com', '12345', 'Prueba nova'),
(7, 'Uber', 'Transporte', 'UberNova@hotmail.com', '12345', 'Prueba nova'),
(8, 'Uber2', 'Transporte', 'UberNova@hotmail.com', '1234', 'Prueba nova'),
(9, 'Polo', 'Textil', 'PoloIndustries@gmail.com', '1234', 'Empresa textil'),
(10, 'Yoli Restaurant', 'Restaurante', 'YoliRestaurant@hotmail.com', '1234', 'Restaurante Gourmet'),
(11, 'Yoli Restaurant2', 'Restaurante', 'YoliRestaurant@hotmail.com', '1234', 'Restaurante Gourmet'),
(12, 'Pupuseria Carmencita', 'Restaurante', 'PupuseriaCarmencita@hotmail.com', '12345', 'Restaurante Gourmet');

-- --------------------------------------------------------

--
-- Table structure for table `ficha`
--

CREATE TABLE `ficha` (
  `Id_Ficha` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Domicilio` varchar(200) NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `Estudios` varchar(200) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `FotoRuta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ficha`
--

INSERT INTO `ficha` (`Id_Ficha`, `Id_Usuario`, `Nombre`, `Domicilio`, `Profesion`, `Estudios`, `Descripcion`, `FotoRuta`) VALUES
(5, 1, 'Jonathan Castillo', 'Pasaquina, La Union, El Salvador', 'Ingeniero en Sistemas y Redes Informaticas', 'Universidad Gerardo Barrios', 'Liderazgo, capacidad de resolver problemas. Facildad para trabajar en equipo.', 'upload/photos/1550790622079.jpg'),
(6, 3, 'Francisco Jose Alvarez Mejia', 'Santa Rosa de Lima, La Union.', 'Actor', 'Universidad Gerardo Barrios', 'Facilidad de palabra y trabajo en equipo', 'upload/photos/portrait-2865605.jpg'),
(7, 4, 'Edwin Antonio', 'Menjivar Abrego', 'Ingeniero en Sistemas y Redes Informaticas', 'Universidad Gerardo Barrios', 'Liderazgo, capacidad de resolver problemas. Facildad para trabajar en equipo.', 'upload/photos/Logonuevo2.png'),
(8, 6, 'Jose Ramon Romero Orellana', 'La Union', 'Mecanico', 'Ninguno', 'Trabajo responsable y honrado.', 'upload/photos/compra-hotouch-casual-camisa-algodon-suelto-de-3-4-manga-para-mujer-blanco-online-1541-500x500_0.jpg'),
(13, 8, 'Heyling Elizabeth Montenegro Reyes', 'Pasaquina, La Union, El Salvador', 'Licenciado en Idioma Ingles', 'Universidad Gerardo Barrios', 'Facilidad para trabajar en equipo, carismatica y bonita', 'upload/photos/most-beautiful-girls-in-the-world-zarine-khan-800x416.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ofertas`
--

CREATE TABLE `ofertas` (
  `Id_Oferta` int(11) NOT NULL,
  `Id_Empresa` int(11) NOT NULL,
  `Puesto` varchar(100) NOT NULL,
  `Salario` double NOT NULL,
  `Requisitos` varchar(350) NOT NULL,
  `Disponible` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofertas`
--

INSERT INTO `ofertas` (`Id_Oferta`, `Id_Empresa`, `Puesto`, `Salario`, `Requisitos`, `Disponible`, `Estado`) VALUES
(1, 1, 'Gerente General', 500, '- Sexo masculino.\r\n- Mayor de edad.', '2019-04-01 06:00:00', 1),
(2, 1, 'Cocinero', 400, 'Con mas de 2 años de experiencia', '2019-08-13 12:20:46', 1),
(3, 10, 'Cajero', 450, 'Mayor de edad y con disponibilidad de tiempo.', '2019-08-14 01:00:18', 1),
(4, 10, 'Mesera', 300, 'Experiencia en el area, buena presentacion, soltera.', '2019-07-16 14:30:35', 1),
(5, 10, 'Gerente de ventas', 500, 'Que sea mujer', '2019-07-21 16:17:31', 1),
(6, 10, '', 0, '', '2019-08-14 01:05:39', 0),
(7, 10, 'Chef gourmet', 500, 'Experiencia minima  de 4 años', '2019-08-14 01:07:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profesiones`
--

CREATE TABLE `profesiones` (
  `Id_Profesion` int(11) NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesiones`
--

INSERT INTO `profesiones` (`Id_Profesion`, `Profesion`, `Estado`) VALUES
(1, 'Contador', 1),
(2, 'Actor', 1),
(3, 'Arquitecto', 1),
(4, 'Astronómo', 1),
(5, 'Autor', 1),
(6, 'Panadero', 1),
(7, 'Operario de construcción', 1),
(8, 'Chofer de bus', 1),
(9, 'Carnicero', 1),
(10, 'Carpintero', 1),
(11, 'Chef  / Cocinero', 1),
(12, 'Diseñador ', 1),
(13, 'Doctor', 1),
(14, 'Recolector de basura', 1),
(15, 'Electricista', 1),
(16, 'Ingeniero Civil', 1),
(17, 'Ingeniero Industrial', 1),
(18, 'Ingeniero en Sistemas y Redes Informaticas', 1),
(19, 'Granjero', 1),
(20, 'Bombero', 1),
(21, 'Pescador', 1),
(22, 'Florista', 1),
(23, 'Jardinero', 1),
(24, 'Peluquero / Estilista', 1),
(25, 'Periodista', 1),
(26, 'Juez', 1),
(27, 'Abogado', 1),
(28, 'Conferencista', 1),
(29, 'Bibliotecario', 1),
(30, 'Salvavidas', 1),
(31, 'Mecanico', 1),
(32, 'Modelo', 1),
(33, 'Enfermero / a', 1),
(34, 'Optometra', 1),
(35, 'Pintor', 1),
(36, 'Regente de farmacia', 1),
(37, 'Motorista', 1),
(38, 'Plomero', 1),
(39, 'Cartero', 1),
(40, 'Agente de bienes raices', 1),
(41, 'Recepcionista', 1),
(42, 'Secretaria / o', 1),
(43, 'Asistente de compras', 1),
(44, 'Sastre', 1),
(45, 'Psicologo / a', 1),
(46, 'Profesor', 1),
(47, 'Licenciado en Administracion de empresas', 1),
(48, 'Tecnico', 1),
(49, 'Agente de viajes', 1),
(50, 'Veterinario', 1),
(51, 'Mesero', 1),
(52, 'Trabajador social', 1),
(53, 'Licenciado en Idioma Ingles', 1),
(54, 'Ama de casa', 1),
(55, 'Otro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombres` varchar(200) NOT NULL,
  `Apellidos` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Fecha_Nacimiento` varchar(100) NOT NULL,
  `Domicilio` varchar(200) NOT NULL,
  `Tipo` varchar(50) NOT NULL DEFAULT 'Estandar',
  `Estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombres`, `Apellidos`, `Email`, `Telefono`, `Password`, `Fecha_Nacimiento`, `Domicilio`, `Tipo`, `Estado`) VALUES
(1, 'Jonathan Josue', 'Castillo Cruz', 'JonaCastillo96@hotmail.com', '72331232', '1234', '', 'Pasaquina, La Union', 'Estandar', 1),
(2, 'Marelyn Orbelina', 'Arias Romero', 'MArias12@hotmail.com', '72331232', '1234', '1996-10-02', 'San Miguel', 'Estandar', 1),
(3, 'Jose Francisco', 'Alvarez Mejia', 'Franchico@hotmail.com', '72331232', '12345', '1995-05-11', 'La Union', 'Estandar', 1),
(4, 'Edwin Antonio', 'Menjivar Abrego', 'edmenjivar92@gmail.com', '76231144', '12345', '1994-02-11', 'San Miguel', 'Estandar', 1),
(5, 'Dilcia Esmeralda', 'Lopez Lopez', 'DilciaLop2@hotmail.com', '76091243', '12345', '1996-12-11', 'San Miguel', 'Estandar', 1),
(6, 'Jose Ramon', 'Romero Orellana', 'JoseRome1211@hotmail.com', '78091232', '12345', '1991-09-12', 'La Union', 'Estandar', 1),
(8, 'Heyling Elizabeth', 'Montenegro Reyes', 'HeyMont2@hotmail.com', '72910421', '12345', '1995-11-08', 'La Union', 'Estandar', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD PRIMARY KEY (`Id_Aplicacion`),
  ADD KEY `Id_Oferta` (`Id_Oferta`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`Id_Curriculum`),
  ADD KEY `curriculum_ibfk_1` (`Id_Usuario`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`Id_Empresa`);

--
-- Indexes for table `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`Id_Ficha`),
  ADD KEY `ficha_ibfk_1` (`Id_Usuario`);

--
-- Indexes for table `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`Id_Oferta`),
  ADD KEY `Id_Empresa` (`Id_Empresa`);

--
-- Indexes for table `profesiones`
--
ALTER TABLE `profesiones`
  ADD PRIMARY KEY (`Id_Profesion`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplicaciones`
--
ALTER TABLE `aplicaciones`
  MODIFY `Id_Aplicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `Id_Curriculum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `Id_Empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ficha`
--
ALTER TABLE `ficha`
  MODIFY `Id_Ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `Id_Oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profesiones`
--
ALTER TABLE `profesiones`
  MODIFY `Id_Profesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD CONSTRAINT `aplicaciones_ibfk_1` FOREIGN KEY (`Id_Oferta`) REFERENCES `ofertas` (`Id_Oferta`),
  ADD CONSTRAINT `aplicaciones_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Constraints for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `curriculum_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Constraints for table `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Constraints for table `ofertas`
--
ALTER TABLE `ofertas`
  ADD CONSTRAINT `ofertas_ibfk_1` FOREIGN KEY (`Id_Empresa`) REFERENCES `empresas` (`Id_Empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
