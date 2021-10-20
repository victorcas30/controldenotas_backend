CREATE DATABASE  IF NOT EXISTS `cyrcorrespondencia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cyrcorrespondencia`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cyrcorrespondencia
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aseguradoras`
--

DROP TABLE IF EXISTS `aseguradoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aseguradoras` (
  `idaseguradora` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `activa` char(1) DEFAULT '1',
  PRIMARY KEY (`idaseguradora`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseguradoras`
--

LOCK TABLES `aseguradoras` WRITE;
/*!40000 ALTER TABLE `aseguradoras` DISABLE KEYS */;
INSERT INTO `aseguradoras` VALUES (1,'ASESUISA','1'),(2,'ACSA','1'),(3,'SISA','1');
/*!40000 ALTER TABLE `aseguradoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaciones`
--

DROP TABLE IF EXISTS `asignaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaciones` (
  `idasignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idcorrespondencia` int(11) DEFAULT NULL,
  `fechaasignacion` datetime DEFAULT NULL,
  `idusuarioasigna` int(11) DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,1,8,'2021-10-10 08:31:39',1),(2,1,9,'2021-10-14 08:31:51',1),(3,1,3,'2021-10-14 08:31:55',1),(4,1,4,'2021-10-14 08:31:59',1),(5,1,5,'2021-10-14 12:28:43',1),(6,1,1,'2021-10-14 14:54:37',1),(7,1,2,'2021-10-15 14:15:41',1),(8,1,6,'2021-10-15 15:25:51',1),(9,1,7,'2021-10-15 15:42:51',1),(10,1,10,'2021-10-16 10:34:41',1),(11,1,11,'2021-10-18 08:29:18',1);
/*!40000 ALTER TABLE `asignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondencia_recibida`
--

DROP TABLE IF EXISTS `correspondencia_recibida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correspondencia_recibida` (
  `idcorrespondencia_recibida` int(11) NOT NULL AUTO_INCREMENT,
  `tipodocumento` int(11) DEFAULT NULL,
  `fechasellodocumento` date DEFAULT NULL,
  `fechasellocyr` date DEFAULT NULL,
  `horasellocyr` varchar(20) DEFAULT NULL,
  `recibidopor` int(11) DEFAULT NULL,
  `asegurado` varchar(200) DEFAULT NULL,
  `referencia` varchar(200) DEFAULT NULL,
  `fechavencimientorenov` date DEFAULT NULL,
  `procedencia` varchar(100) DEFAULT NULL,
  `aseg_remi` varchar(100) DEFAULT NULL,
  `entregadoa` int(11) DEFAULT NULL,
  `formadeingreso` varchar(45) DEFAULT NULL,
  `fecha_ingreso_sistema` datetime DEFAULT NULL,
  `idusuarioregistra` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idcorrespondencia_recibida`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,1,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','3',9,'fisico','2021-10-05 08:06:13',1,5,'0'),(2,4,'2021-10-05','2021-10-05','08:39',2,'rolando loza','carta de cesion de beneficios carlos perez','2021-10-05','asegurado','rolando cabrera lopez',9,'electronico','2021-10-05 08:41:40',1,5,'0'),(3,2,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','2',9,'electronico','2021-10-07 08:28:51',1,5,'0'),(4,3,'2021-10-14','2021-10-08','14:35',2,'salma hayek','inclusion de recien nacido carta 252343 del dia 24 de marzo','2021-10-07','aseguradora','2',9,'fisico','2021-10-07 14:35:35',1,4,'0'),(5,3,'2021-10-08','2021-10-08','09:51',1,'casilda','bonos de regalo para todos los empleados','2021-10-09','aseguradora','2',9,'fisico','2021-10-08 09:50:59',1,4,'0'),(6,1,'2021-10-11','2021-10-11','11:12',1,'rene perez lopez','cheque por premio de participacion','2021-10-11','asegurado','salome perez',9,'fisico','2021-10-11 11:13:00',1,5,'0'),(7,1,'2021-10-12','2021-10-12','10:23',1,'rene perez','carta de inclusion','2021-10-12','asegurado','carlos perez',9,'fisico','2021-10-12 10:23:06',1,4,'0'),(8,1,'2021-10-12','2021-10-12','13:34',1,'sonia lara','exclusion carro sonia lara','2021-10-12','aseguradora','1',9,'electronico','2021-10-12 13:35:13',1,5,'0'),(9,2,'2021-10-13','2021-10-12','13:35',1,'andres mendez','carta de reclamo de gastos medicos','2021-10-12','aseguradora','1',9,'fisico','2021-10-12 13:36:00',1,5,'0'),(10,2,'2021-10-13','2021-10-13','13:38',1,'monica liz','carta de solicitud de defuncion','2021-10-12','asegurado','catrino lopez',9,'fisico','2021-10-12 13:36:58',1,4,'0'),(11,3,'2021-10-18','2021-10-18','08:24',1,'claudia perez','carta de inclusion de recien nacido con fecha 14 de enero de 2021, nacion en el hospital primero de mayo de sal salvador','2021-10-18','asegurado','andres lopez obrador',9,'fisico','2021-10-18 08:25:33',1,4,'0');
/*!40000 ALTER TABLE `correspondencia_recibida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondenciaenviada`
--

DROP TABLE IF EXISTS `correspondenciaenviada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correspondenciaenviada` (
  `idcorrespondencia_env` int(11) NOT NULL AUTO_INCREMENT,
  `idcorrespondencia` int(11) DEFAULT NULL,
  `asegurado` varchar(100) DEFAULT NULL,
  `referencia` varchar(500) DEFAULT NULL,
  `destino` varchar(200) DEFAULT NULL,
  `aseguradora` int(11) DEFAULT NULL,
  `cbdevoluciondocs` char(1) DEFAULT NULL,
  `cbcc` char(1) DEFAULT NULL,
  `atencion` varchar(100) DEFAULT NULL,
  `destino_otro` varchar(100) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idcorrespondencia_env`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
/*!40000 ALTER TABLE `correspondenciaenviada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyr_departamentos`
--

DROP TABLE IF EXISTS `cyr_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyr_departamentos` (
  `idcyr_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  `activo` char(1) DEFAULT '1',
  PRIMARY KEY (`idcyr_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyr_departamentos`
--

LOCK TABLES `cyr_departamentos` WRITE;
/*!40000 ALTER TABLE `cyr_departamentos` DISABLE KEYS */;
INSERT INTO `cyr_departamentos` VALUES (1,'COBROS',NULL,'1'),(2,'CONTROL DE CALIDAD',NULL,'1'),(3,'DIRECCION TECNICA',NULL,'1'),(4,'DIRECCION EJECUTIVA',NULL,'1'),(5,'OPERACIONES',NULL,'1'),(6,'RECLAMOS DAÑOS',NULL,'1'),(7,'RECLAMOS PERSONAS',NULL,'1'),(8,'RENOVACIONES',NULL,'1'),(9,'INFORMATICA',1,'1');
/*!40000 ALTER TABLE `cyr_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_correspondencia`
--

DROP TABLE IF EXISTS `estados_correspondencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_correspondencia` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_correspondencia`
--

LOCK TABLES `estados_correspondencia` WRITE;
/*!40000 ALTER TABLE `estados_correspondencia` DISABLE KEYS */;
INSERT INTO `estados_correspondencia` VALUES (1,1,'Registrada'),(2,2,'Recibida por jefe de departamento'),(3,3,'Asignada'),(4,4,'Esperando aprovación'),(5,5,'Aprobada Jefe'),(6,6,'Descargada jefa'),(7,7,'Recibida cobros'),(8,8,'Asignada a mensajero'),(9,9,'Finalizada');
/*!40000 ALTER TABLE `estados_correspondencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documentos`
--

DROP TABLE IF EXISTS `tipo_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documentos` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` char(1) DEFAULT '1',
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documentos`
--

LOCK TABLES `tipo_documentos` WRITE;
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` VALUES (1,'Cheque','1'),(2,'Cesión','1'),(3,'Inclusión','1'),(4,'Exclusión','1');
/*!40000 ALTER TABLE `tipo_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `recibe_correspondencia` char(1) DEFAULT '1',
  `aplica_reporte_trabajo_pendiente` char(1) DEFAULT '1',
  `activo` char(1) DEFAULT '1',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael Adalberto','Parada Gómez','rparada','$2b$10$UdmN/XjK/VveWLdQ/rMRQ.fDjjrkskV4RaeIXX6W6IQEkyn7CCt12',9,'1','1','1'),(2,'Ana María','Blanco Méndez','amaria','$2b$10$DyUoHmre6gBQhSn6BkSyiejzXXVoL3/frjqLqWX5WXErS9OT8T.zu',1,'1','1','1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vida_estado_correspondencia`
--

DROP TABLE IF EXISTS `vida_estado_correspondencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vida_estado_correspondencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcorrespondencia` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `idusuarioaccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,8,2,'2021-10-14 08:31:23',1),(2,9,2,'2021-10-14 08:31:28',1),(3,3,2,'2021-10-14 08:31:31',1),(4,4,2,'2021-10-14 08:31:32',1),(5,8,3,'2021-10-14 08:31:39',1),(6,9,3,'2021-10-14 08:31:51',1),(7,3,3,'2021-10-14 08:31:55',1),(8,4,3,'2021-10-14 08:31:59',1),(9,5,2,'2021-10-14 12:28:39',1),(10,5,3,'2021-10-14 12:28:43',1),(11,1,2,'2021-10-14 14:54:32',1),(12,1,3,'2021-10-14 14:54:37',1),(13,2,2,'2021-10-15 14:15:37',1),(14,2,3,'2021-10-15 14:15:41',1),(15,6,2,'2021-10-15 15:25:47',1),(16,6,3,'2021-10-15 15:25:51',1),(17,7,2,'2021-10-15 15:42:46',1),(18,7,3,'2021-10-15 15:42:51',1),(19,10,2,'2021-10-16 10:34:37',1),(20,10,3,'2021-10-16 10:34:41',1),(21,11,1,'2021-10-18 08:25:33',1),(22,11,2,'2021-10-18 08:29:14',1),(23,11,3,'2021-10-18 08:29:18',1),(24,8,4,'2021-10-18 11:10:12',1),(25,9,4,'2021-10-18 11:11:54',1),(26,3,4,'2021-10-18 11:12:13',1),(27,4,4,'2021-10-18 11:12:40',1),(28,5,4,'2021-10-18 11:12:44',1),(29,1,5,'2021-10-19 08:33:58',1),(30,2,5,'2021-10-19 08:42:19',1),(31,6,5,'2021-10-19 08:43:13',1),(32,6,5,'2021-10-19 08:44:07',1),(33,7,5,'2021-10-19 08:53:56',1),(34,7,4,'2021-10-19 09:12:36',1),(35,10,4,'2021-10-19 09:13:11',1),(36,11,4,'2021-10-19 09:22:43',1),(37,8,5,'2021-10-19 09:27:29',1),(38,9,5,'2021-10-19 09:27:54',1),(39,3,5,'2021-10-19 09:30:26',1);
/*!40000 ALTER TABLE `vida_estado_correspondencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20 16:58:21
