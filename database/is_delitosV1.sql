-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2023 a las 04:54:58
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `is_delitos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `Id_Accesorio` int(11) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla informativa de accesorios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adicciones`
--

CREATE TABLE `adicciones` (
  `Id_Adiccion` int(11) NOT NULL,
  `Adiccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de adicciones de los delincuentes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma`
--

CREATE TABLE `arma` (
  `Id_Arma` int(11) NOT NULL,
  `Tipo_Arma` varchar(30) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Tamanio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla descriptiva del arma asociada al detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzado`
--

CREATE TABLE `calzado` (
  `Id_Calzado` int(11) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla descriptiva del calzado';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_antropomorficos`
--

CREATE TABLE `datos_antropomorficos` (
  `Id_Datant` int(11) NOT NULL,
  `Estatura` float NOT NULL,
  `Peso` float NOT NULL,
  `Forma_cabeza` varchar(25) NOT NULL,
  `Cabello` varchar(25) NOT NULL,
  `Color_cabello` varchar(25) NOT NULL,
  `Cejas` varchar(25) NOT NULL,
  `Color_ojos` varchar(25) NOT NULL,
  `Tamaño_orejas` varchar(25) NOT NULL,
  `Tez` varchar(20) NOT NULL,
  `Vello_facial` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla de datos antropomórficos del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_detencion`
--

CREATE TABLE `datos_detencion` (
  `Id_Detencion` int(11) NOT NULL,
  `Lugar` varchar(80) NOT NULL,
  `Colonia` varchar(40) NOT NULL,
  `Sector` varchar(25) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `id_Detenido` int(11) NOT NULL,
  `Id_Vestimenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para los datos de la detención';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_familiares`
--

CREATE TABLE `datos_familiares` (
  `Id_Familiar` int(11) NOT NULL,
  `Id_Detenido` int(11) NOT NULL,
  `Tipo_Fam` varchar(30) NOT NULL,
  `Nombre_Fam` varchar(60) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para los datos de los familiares del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `Id_Detenido` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Nombre2` varchar(40) NOT NULL,
  `Ap_Paterno` varchar(40) NOT NULL,
  `Ap_Materno` varchar(40) NOT NULL,
  `Alias` varchar(40) NOT NULL,
  `INE` varchar(40) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Pref_Sexual` varchar(25) NOT NULL,
  `Ocupacion` varchar(40) NOT NULL,
  `Id_Domicilio` int(11) NOT NULL,
  `Id_DatAnt` int(11) NOT NULL,
  `Escolaridad` varchar(40) NOT NULL,
  `Est_Civil` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Para guardar los datos personales de los delincuentes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `Id_Domicilio` int(11) NOT NULL,
  `Calle` varchar(60) NOT NULL,
  `No_Ext` int(11) NOT NULL,
  `No_Int` int(11) NOT NULL,
  `Colonia` varchar(40) NOT NULL,
  `CP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para la información del domicilio del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modus_operandi`
--

CREATE TABLE `modus_operandi` (
  `Id_Modus` int(11) NOT NULL,
  `Modus` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para describir el modus operandi del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivos_detencion`
--

CREATE TABLE `motivos_detencion` (
  `Id_Motivo` int(11) NOT NULL,
  `Motivo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que contiene los motivos de detención';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_acceso`
--

CREATE TABLE `nivel_acceso` (
  `Id_Nivel` int(11) NOT NULL,
  `Acceso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para los tipos de acceso de los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oxxo`
--

CREATE TABLE `oxxo` (
  `Id_Oxxo` int(11) NOT NULL,
  `Num_Oxxo` int(11) NOT NULL,
  `Ubicacion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para indicar el oxxo o tienda robada';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parte_cuerpo`
--

CREATE TABLE `parte_cuerpo` (
  `Id_pCuerpo` int(11) NOT NULL,
  `ParteCuerpo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para indicar las partes del cuerpo';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_adicciones`
--

CREATE TABLE `relacion_adicciones` (
  `Id_Detenido` int(11) NOT NULL,
  `Id_Adiccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar las adicciones del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_arma_det`
--

CREATE TABLE `relacion_arma_det` (
  `Id_Detencion` int(11) NOT NULL,
  `Id_Arma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar el arma con la detencion';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_det_mot`
--

CREATE TABLE `relacion_det_mot` (
  `Id_Detencion` int(11) NOT NULL,
  `Id_Motivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar detención con motivos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_niv_usu`
--

CREATE TABLE `relacion_niv_usu` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar usuarios y sus niveles';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_robo_det`
--

CREATE TABLE `relacion_robo_det` (
  `Id_Detencion` int(11) NOT NULL,
  `Id_Roboxxo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar el robo con la detencion';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_ves_acc`
--

CREATE TABLE `relacion_ves_acc` (
  `Id_Vestimenta` int(11) NOT NULL,
  `Id_Accesorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla pivote para relacionar la vestimenta con accesorios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robo_oxxo`
--

CREATE TABLE `robo_oxxo` (
  `Id_Roboxxo` int(11) NOT NULL,
  `Id_Oxxo` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL,
  `Id_Modus` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para los datos del robo a oxxos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tatuajes_detenido`
--

CREATE TABLE `tatuajes_detenido` (
  `Id_Tatuaje` int(11) NOT NULL,
  `Id_Detenido` int(11) NOT NULL,
  `Id_pCuerpo` int(11) NOT NULL,
  `Descipcion` varchar(40) NOT NULL,
  `Link_Fotos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para unir la información de los tatuajes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `ApellidoP` varchar(25) NOT NULL,
  `ApellidoM` varchar(25) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Contraseña` varchar(40) NOT NULL,
  `Cargo` varchar(25) NOT NULL,
  `Comision` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para almacenar información de los usuarios del sistema';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Id_Vehiculo` int(11) NOT NULL,
  `Tipo_Vehiculo` varchar(20) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Serie` int(11) NOT NULL,
  `Num_Placa` varchar(10) NOT NULL,
  `Color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que describe el vehiculo';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vestimenta`
--

CREATE TABLE `vestimenta` (
  `Id_Vestimenta` int(11) NOT NULL,
  `Id_vSuperior` int(11) NOT NULL,
  `id_vInferior` int(11) NOT NULL,
  `Id_Calzado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para el tipo de vestimenta del detenido';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vestimenta_inferior`
--

CREATE TABLE `vestimenta_inferior` (
  `Id_vInferior` int(11) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para la información de la ropa inferior';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vestimenta_superior`
--

CREATE TABLE `vestimenta_superior` (
  `Id_vSuperior` int(11) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Color` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla para la información de la ropa superior';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`Id_Accesorio`);

--
-- Indices de la tabla `adicciones`
--
ALTER TABLE `adicciones`
  ADD PRIMARY KEY (`Id_Adiccion`);

--
-- Indices de la tabla `arma`
--
ALTER TABLE `arma`
  ADD PRIMARY KEY (`Id_Arma`);

--
-- Indices de la tabla `calzado`
--
ALTER TABLE `calzado`
  ADD PRIMARY KEY (`Id_Calzado`);

--
-- Indices de la tabla `datos_antropomorficos`
--
ALTER TABLE `datos_antropomorficos`
  ADD PRIMARY KEY (`Id_Datant`);

--
-- Indices de la tabla `datos_detencion`
--
ALTER TABLE `datos_detencion`
  ADD PRIMARY KEY (`Id_Detencion`),
  ADD UNIQUE KEY `id_Detenido` (`id_Detenido`),
  ADD UNIQUE KEY `Id_Vestimenta` (`Id_Vestimenta`);

--
-- Indices de la tabla `datos_familiares`
--
ALTER TABLE `datos_familiares`
  ADD PRIMARY KEY (`Id_Familiar`),
  ADD UNIQUE KEY `Id_Detenido` (`Id_Detenido`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`Id_Detenido`),
  ADD UNIQUE KEY `Id_Domicilio` (`Id_Domicilio`),
  ADD UNIQUE KEY `Id_DatAnt` (`Id_DatAnt`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`Id_Domicilio`);

--
-- Indices de la tabla `modus_operandi`
--
ALTER TABLE `modus_operandi`
  ADD PRIMARY KEY (`Id_Modus`);

--
-- Indices de la tabla `motivos_detencion`
--
ALTER TABLE `motivos_detencion`
  ADD PRIMARY KEY (`Id_Motivo`);

--
-- Indices de la tabla `nivel_acceso`
--
ALTER TABLE `nivel_acceso`
  ADD PRIMARY KEY (`Id_Nivel`);

--
-- Indices de la tabla `oxxo`
--
ALTER TABLE `oxxo`
  ADD PRIMARY KEY (`Id_Oxxo`);

--
-- Indices de la tabla `parte_cuerpo`
--
ALTER TABLE `parte_cuerpo`
  ADD PRIMARY KEY (`Id_pCuerpo`);

--
-- Indices de la tabla `relacion_adicciones`
--
ALTER TABLE `relacion_adicciones`
  ADD UNIQUE KEY `Id_Detenido` (`Id_Detenido`),
  ADD UNIQUE KEY `Id_Adiccion` (`Id_Adiccion`);

--
-- Indices de la tabla `relacion_arma_det`
--
ALTER TABLE `relacion_arma_det`
  ADD UNIQUE KEY `Id_Detencion` (`Id_Detencion`),
  ADD UNIQUE KEY `Id_Arma` (`Id_Arma`);

--
-- Indices de la tabla `relacion_det_mot`
--
ALTER TABLE `relacion_det_mot`
  ADD UNIQUE KEY `Id_Detencion` (`Id_Detencion`),
  ADD UNIQUE KEY `Id_Motivo` (`Id_Motivo`);

--
-- Indices de la tabla `relacion_niv_usu`
--
ALTER TABLE `relacion_niv_usu`
  ADD UNIQUE KEY `Id_Usuario` (`Id_Usuario`),
  ADD UNIQUE KEY `Id_Nivel` (`Id_Nivel`);

--
-- Indices de la tabla `relacion_robo_det`
--
ALTER TABLE `relacion_robo_det`
  ADD UNIQUE KEY `Id_Detencion` (`Id_Detencion`),
  ADD UNIQUE KEY `Id_Roboxxo` (`Id_Roboxxo`);

--
-- Indices de la tabla `relacion_ves_acc`
--
ALTER TABLE `relacion_ves_acc`
  ADD UNIQUE KEY `Id_Vestimenta` (`Id_Vestimenta`),
  ADD UNIQUE KEY `Id_Accesorio` (`Id_Accesorio`);

--
-- Indices de la tabla `robo_oxxo`
--
ALTER TABLE `robo_oxxo`
  ADD PRIMARY KEY (`Id_Roboxxo`),
  ADD UNIQUE KEY `Id_Oxxo` (`Id_Oxxo`),
  ADD UNIQUE KEY `Id_Vehiculo` (`Id_Vehiculo`),
  ADD UNIQUE KEY `Id_Modus` (`Id_Modus`);

--
-- Indices de la tabla `tatuajes_detenido`
--
ALTER TABLE `tatuajes_detenido`
  ADD PRIMARY KEY (`Id_Tatuaje`),
  ADD UNIQUE KEY `Id_Detenido` (`Id_Detenido`),
  ADD UNIQUE KEY `Id_pCuerpo` (`Id_pCuerpo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Id_Vehiculo`);

--
-- Indices de la tabla `vestimenta`
--
ALTER TABLE `vestimenta`
  ADD PRIMARY KEY (`Id_Vestimenta`),
  ADD UNIQUE KEY `Id_vSuperior` (`Id_vSuperior`),
  ADD UNIQUE KEY `id_vInferior` (`id_vInferior`),
  ADD UNIQUE KEY `Id_Calzado` (`Id_Calzado`);

--
-- Indices de la tabla `vestimenta_inferior`
--
ALTER TABLE `vestimenta_inferior`
  ADD PRIMARY KEY (`Id_vInferior`);

--
-- Indices de la tabla `vestimenta_superior`
--
ALTER TABLE `vestimenta_superior`
  ADD PRIMARY KEY (`Id_vSuperior`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  MODIFY `Id_Accesorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `adicciones`
--
ALTER TABLE `adicciones`
  MODIFY `Id_Adiccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `arma`
--
ALTER TABLE `arma`
  MODIFY `Id_Arma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calzado`
--
ALTER TABLE `calzado`
  MODIFY `Id_Calzado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_antropomorficos`
--
ALTER TABLE `datos_antropomorficos`
  MODIFY `Id_Datant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_detencion`
--
ALTER TABLE `datos_detencion`
  MODIFY `Id_Detencion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_familiares`
--
ALTER TABLE `datos_familiares`
  MODIFY `Id_Familiar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `Id_Detenido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `Id_Domicilio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modus_operandi`
--
ALTER TABLE `modus_operandi`
  MODIFY `Id_Modus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `motivos_detencion`
--
ALTER TABLE `motivos_detencion`
  MODIFY `Id_Motivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_acceso`
--
ALTER TABLE `nivel_acceso`
  MODIFY `Id_Nivel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oxxo`
--
ALTER TABLE `oxxo`
  MODIFY `Id_Oxxo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parte_cuerpo`
--
ALTER TABLE `parte_cuerpo`
  MODIFY `Id_pCuerpo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `robo_oxxo`
--
ALTER TABLE `robo_oxxo`
  MODIFY `Id_Roboxxo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tatuajes_detenido`
--
ALTER TABLE `tatuajes_detenido`
  MODIFY `Id_Tatuaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `Id_Vehiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vestimenta`
--
ALTER TABLE `vestimenta`
  MODIFY `Id_Vestimenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vestimenta_inferior`
--
ALTER TABLE `vestimenta_inferior`
  MODIFY `Id_vInferior` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vestimenta_superior`
--
ALTER TABLE `vestimenta_superior`
  MODIFY `Id_vSuperior` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_detencion`
--
ALTER TABLE `datos_detencion`
  ADD CONSTRAINT `datos_detencion_ibfk_1` FOREIGN KEY (`id_Detenido`) REFERENCES `datos_personales` (`Id_Detenido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_detencion_ibfk_2` FOREIGN KEY (`Id_Vestimenta`) REFERENCES `vestimenta` (`Id_Vestimenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_familiares`
--
ALTER TABLE `datos_familiares`
  ADD CONSTRAINT `datos_familiares_ibfk_1` FOREIGN KEY (`Id_Detenido`) REFERENCES `datos_personales` (`Id_Detenido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `datos_personales_ibfk_1` FOREIGN KEY (`Id_Domicilio`) REFERENCES `domicilio` (`Id_Domicilio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_personales_ibfk_2` FOREIGN KEY (`Id_DatAnt`) REFERENCES `datos_antropomorficos` (`Id_Datant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_adicciones`
--
ALTER TABLE `relacion_adicciones`
  ADD CONSTRAINT `relacion_adicciones_ibfk_1` FOREIGN KEY (`Id_Detenido`) REFERENCES `datos_personales` (`Id_Detenido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_adicciones_ibfk_2` FOREIGN KEY (`Id_Adiccion`) REFERENCES `adicciones` (`Id_Adiccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_arma_det`
--
ALTER TABLE `relacion_arma_det`
  ADD CONSTRAINT `relacion_arma_det_ibfk_1` FOREIGN KEY (`Id_Detencion`) REFERENCES `datos_detencion` (`Id_Detencion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_arma_det_ibfk_2` FOREIGN KEY (`Id_Arma`) REFERENCES `arma` (`Id_Arma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_det_mot`
--
ALTER TABLE `relacion_det_mot`
  ADD CONSTRAINT `relacion_det_mot_ibfk_1` FOREIGN KEY (`Id_Motivo`) REFERENCES `motivos_detencion` (`Id_Motivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_det_mot_ibfk_2` FOREIGN KEY (`Id_Detencion`) REFERENCES `datos_detencion` (`Id_Detencion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_niv_usu`
--
ALTER TABLE `relacion_niv_usu`
  ADD CONSTRAINT `relacion_niv_usu_ibfk_1` FOREIGN KEY (`Id_Nivel`) REFERENCES `nivel_acceso` (`Id_Nivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_niv_usu_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_robo_det`
--
ALTER TABLE `relacion_robo_det`
  ADD CONSTRAINT `relacion_robo_det_ibfk_1` FOREIGN KEY (`Id_Roboxxo`) REFERENCES `robo_oxxo` (`Id_Roboxxo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_robo_det_ibfk_2` FOREIGN KEY (`Id_Detencion`) REFERENCES `datos_detencion` (`Id_Detencion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_ves_acc`
--
ALTER TABLE `relacion_ves_acc`
  ADD CONSTRAINT `relacion_ves_acc_ibfk_1` FOREIGN KEY (`Id_Vestimenta`) REFERENCES `vestimenta` (`Id_Vestimenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_ves_acc_ibfk_2` FOREIGN KEY (`Id_Accesorio`) REFERENCES `accesorios` (`Id_Accesorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `robo_oxxo`
--
ALTER TABLE `robo_oxxo`
  ADD CONSTRAINT `robo_oxxo_ibfk_1` FOREIGN KEY (`Id_Oxxo`) REFERENCES `oxxo` (`Id_Oxxo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `robo_oxxo_ibfk_2` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculo` (`Id_Vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `robo_oxxo_ibfk_3` FOREIGN KEY (`Id_Modus`) REFERENCES `modus_operandi` (`Id_Modus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tatuajes_detenido`
--
ALTER TABLE `tatuajes_detenido`
  ADD CONSTRAINT `tatuajes_detenido_ibfk_1` FOREIGN KEY (`Id_Detenido`) REFERENCES `datos_personales` (`Id_Detenido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tatuajes_detenido_ibfk_2` FOREIGN KEY (`Id_pCuerpo`) REFERENCES `parte_cuerpo` (`Id_pCuerpo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vestimenta`
--
ALTER TABLE `vestimenta`
  ADD CONSTRAINT `vestimenta_ibfk_1` FOREIGN KEY (`Id_Calzado`) REFERENCES `calzado` (`Id_Calzado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vestimenta_ibfk_2` FOREIGN KEY (`Id_vSuperior`) REFERENCES `vestimenta_superior` (`Id_vSuperior`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vestimenta_ibfk_3` FOREIGN KEY (`id_vInferior`) REFERENCES `vestimenta_inferior` (`Id_vInferior`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
