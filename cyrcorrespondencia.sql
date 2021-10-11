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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,1,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','3',1,'fisico','2021-10-05 08:06:13',1,1,'1'),(2,4,'2021-10-05','2021-10-05','08:39',2,'rolando loza','carta de cesion de beneficios carlos perez','2021-10-05','asegurado','rolando cabrera lopez',8,'electronico','2021-10-05 08:41:40',1,1,'1'),(3,2,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','2',2,'electronico','2021-10-07 08:28:51',1,1,'0'),(4,3,'2021-10-14','2021-10-08','14:35',2,'salma hayek','inclusion de recien nacido carta 252343 del dia 24 de marzo','2021-10-07','aseguradora','2',8,'fisico','2021-10-07 14:35:35',1,1,'0'),(5,3,'2021-10-08','2021-10-08','09:51',1,'casilda','bonos de regalo para todos los empleados','2021-10-09','aseguradora','2',3,'fisico','2021-10-08 09:50:59',1,1,'0'),(6,1,'2021-10-11','2021-10-11','11:12',1,'rene perez lopez','cheque por premio de participacion','2021-10-11','asegurado','salome perez',9,'fisico','2021-10-11 11:13:00',1,1,'0');
/*!40000 ALTER TABLE `correspondencia_recibida` ENABLE KEYS */;
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
INSERT INTO `estados_correspondencia` VALUES (1,1,'Registrada'),(2,2,'Recibida por jefe de departamento'),(3,3,'Asignada'),(4,4,'Reasignada'),(5,5,'Terminada encargado'),(6,6,'Descargada jefa'),(7,7,'Recibida cobros'),(8,8,'Asignada a mensajero'),(9,9,'Finalizada');
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
-- Table structure for table `vida_correspondencia_estado`
--

DROP TABLE IF EXISTS `vida_correspondencia_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vida_correspondencia_estado` (
  `idvida_c` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idvida_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_correspondencia_estado`
--

LOCK TABLES `vida_correspondencia_estado` WRITE;
/*!40000 ALTER TABLE `vida_correspondencia_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `vida_correspondencia_estado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-11 17:13:25
