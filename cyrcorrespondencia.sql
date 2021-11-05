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
  `fechaterminada` datetime DEFAULT NULL,
  `fechaaprobadacobros` datetime DEFAULT NULL,
  `fechadespachadacobros` datetime DEFAULT NULL,
  `fechafinalizada` datetime DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,1,1,'2021-10-28 11:14:56',1,NULL,'2021-10-28 11:20:37','2021-10-28 11:24:31','2021-10-28 11:30:13'),(2,1,2,'2021-10-28 12:20:52',1,NULL,'2021-10-28 12:22:43','2021-10-28 12:22:55','2021-10-28 14:28:53'),(3,1,3,'2021-10-28 13:49:31',1,NULL,'2021-10-28 14:29:00','2021-10-28 14:29:10','2021-10-28 14:29:15'),(4,1,4,'2021-10-30 09:36:10',1,NULL,NULL,NULL,NULL),(5,1,5,'2021-11-05 14:21:10',1,NULL,NULL,NULL,NULL),(6,1,6,'2021-11-05 14:22:21',1,NULL,NULL,NULL,NULL),(7,1,7,'2021-11-05 15:53:23',1,NULL,NULL,NULL,NULL),(8,1,8,'2021-11-05 15:53:26',1,NULL,NULL,NULL,NULL),(9,1,9,'2021-11-05 15:53:29',1,NULL,NULL,NULL,NULL),(10,1,10,'2021-11-05 15:53:31',1,NULL,NULL,NULL,NULL),(11,1,11,'2021-11-05 16:03:09',1,NULL,NULL,NULL,NULL),(12,1,12,'2021-11-05 16:03:13',1,NULL,NULL,NULL,NULL),(13,1,13,'2021-11-05 16:06:41',1,NULL,NULL,NULL,NULL),(14,1,14,'2021-11-05 16:06:53',1,NULL,NULL,NULL,NULL),(15,1,15,'2021-11-05 16:25:13',1,NULL,NULL,NULL,NULL),(16,1,16,'2021-11-05 16:25:17',1,NULL,NULL,NULL,NULL);
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
  `fecha_recibida_jefe_depto` datetime DEFAULT NULL,
  PRIMARY KEY (`idcorrespondencia_recibida`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,1,'2021-10-28','2021-10-28','11:12',6,'cristiano rolando perez','solicitud de cesion de beneficios del señor carlos lara','2021-10-28','asegurado','catrino lopez',9,'fisico','2021-10-28 11:14:40',1,7,'0','2021-11-05 14:22:14'),(2,2,'2021-10-28','2021-10-28','12:19',7,'don filiberto lopez','carta de cesion de beneficios carlos perez','2021-10-28','aseguradora','1',9,'fisico','2021-10-28 12:20:37',1,7,'0','2021-11-05 14:22:14'),(3,4,'2021-10-28','2021-10-28','13:48',7,'demo asegurado demo','exclusion carro sonia lara','2021-10-28','asegurado','rolando cabrera lopez',9,'fisico','2021-10-28 13:49:21',1,7,'0','2021-11-05 14:22:14'),(4,1,'2021-10-30','2021-10-30','09:35',6,'cheque de gastos medicos devolucion de todas las cosas','demo demo demo demo demo demo','2021-10-30','asegurado','rolando cabrera lopez',9,'fisico','2021-10-30 09:36:02',1,3,'0','2021-11-05 14:22:14'),(5,1,'2021-11-05','2021-11-05','14:14',9,'carlos azajuela','carta de inclusion','2021-11-05','asegurado','salome perez',9,'fisico','2021-11-05 14:15:03',1,3,'0','2021-11-05 14:22:14'),(6,1,'2021-11-03','2021-11-04','14:21',6,'carolina perez','solicitud de cesion de beneficios del señor carlos lara','2021-11-05','aseguradora','1',9,'fisico','2021-11-05 14:21:59',1,3,'0','2021-11-05 14:22:14'),(7,3,'2021-11-01','2021-11-02','15:49',6,'simon valenzuela','solicitud de cesion de beneficios del señor carlos lara','2021-11-27','aseguradora','1',9,'fisico','2021-11-05 15:50:17',1,3,'0','2021-11-05 15:53:15'),(8,1,'2021-11-01','2021-11-02','15:50',7,'roberto pereira','pago de indemnizacion por robo','2021-11-05','aseguradora','1',9,'electronico','2021-11-05 15:51:08',1,3,'0','2021-11-05 15:53:16'),(9,4,'2021-11-01','2021-11-02','15:51',7,'abigail lopez preza','se excluye un vehiculo de la marca toyota','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 15:52:04',1,3,'0','2021-11-05 15:53:17'),(10,2,'2021-11-01','2021-11-02','15:52',7,'coralia paz','es la coralia','2021-11-05','asegurado','rolando cabrera lopez',9,'fisico','2021-11-05 15:52:44',1,3,'0','2021-11-05 15:53:18'),(11,1,'2021-11-01','2021-11-02','16:01',6,'rosa dora de cabezas','cheque por el pago de los gastos medicos','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:02:11',1,3,'0','2021-11-05 16:03:05'),(12,2,'2021-11-01','2021-11-02','16:02',6,'rosalia medina pleitez','es una cesion por una casa de la señora','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:03:00',1,3,'0','2021-11-05 16:03:06'),(13,1,'2021-11-05','2021-11-01','16:04',7,'rosendo fortin','carta de inclusion','2021-11-05','asegurado','rafael parada',9,'fisico','2021-11-05 16:05:06',1,3,'0','2021-11-05 16:06:37'),(14,1,'2021-11-01','2021-11-02','16:05',7,'ana bell mendez','carta de inclusion','2021-11-05','asegurado','rolando cabrera lopez',9,'fisico','2021-11-05 16:06:33',1,3,'0','2021-11-05 16:06:38'),(15,2,'2021-11-05','2021-11-05','16:23',6,'rosa maria reyes de paz','carta de cesion de beneficios carlos perez','2021-11-05','aseguradora','1',9,'electronico','2021-11-05 16:24:25',1,3,'0','2021-11-05 16:25:09'),(16,2,'2021-11-01','2021-11-02','16:24',6,'coralia perz','solicitud de cesion de beneficios del señor carlos lara','2021-11-06','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:25:06',1,3,'0','2021-11-05 16:25:10');
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
  `aseguradora` varchar(5) DEFAULT NULL,
  `cbdevoluciondocs` char(1) DEFAULT NULL,
  `cbcc` char(1) DEFAULT NULL,
  `cbrutaespecial` char(1) DEFAULT NULL,
  `atencion` varchar(100) DEFAULT NULL,
  `destino_otro` varchar(100) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `idmensajero` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcorrespondencia_env`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
INSERT INTO `correspondenciaenviada` VALUES (1,1,'CRISTIANO ROLANDO PEREZ','SOLICITUD DE CESION DE BENEFICIOS DEL SEÑOR CARLOS LARA','Asegurado natural','','','1','0','','','no se que va pasar',1,'2021-10-28 11:19:24',2),(2,2,'DON FILIBERTO LOPEZ','CARTA DE CESION DE BENEFICIOS CARLOS PEREZ','Asegurado natural','','','1','0','','','algo debo de escribir en este dialog de cesiones',1,'2021-10-28 12:21:29',1),(3,3,'DEMO ASEGURADO DEMO','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','','demo demo demo',1,'2021-10-28 13:49:49',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_correspondencia`
--

LOCK TABLES `estados_correspondencia` WRITE;
/*!40000 ALTER TABLE `estados_correspondencia` DISABLE KEYS */;
INSERT INTO `estados_correspondencia` VALUES (1,1,'Registrada'),(2,2,'Recibida por jefe de departamento'),(3,3,'Asignada'),(4,4,'Esperando aprovación'),(5,5,'Aprobada Jefe'),(6,6,'Enviada encargado'),(7,7,'Finalizada'),(8,8,'Reasignada');
/*!40000 ALTER TABLE `estados_correspondencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajeros`
--

DROP TABLE IF EXISTS `mensajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajeros` (
  `idmensajero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idmensajero`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajeros`
--

LOCK TABLES `mensajeros` WRITE;
/*!40000 ALTER TABLE `mensajeros` DISABLE KEYS */;
INSERT INTO `mensajeros` VALUES (1,'Martin Aguirre','maguirre','3adecd0ae6dadeca258bbb004f3a1c67','1'),(2,'Luis Martinez','lmartinez','3adecd0ae6dadeca258bbb004f3a1c67','1');
/*!40000 ALTER TABLE `mensajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recados`
--

DROP TABLE IF EXISTS `recados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recados` (
  `id_recado` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `recado` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `estado` varchar(15) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'No asignado',
  `fecha_asignado` datetime DEFAULT NULL,
  `asignado_a` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_completado` datetime DEFAULT NULL,
  `id_user_asigno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idmensajero` int(11) DEFAULT NULL,
  `activo` char(1) CHARACTER SET utf8 DEFAULT '1',
  `urgente` char(1) COLLATE utf8_spanish_ci DEFAULT '0',
  PRIMARY KEY (`id_recado`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recados`
--

LOCK TABLES `recados` WRITE;
/*!40000 ALTER TABLE `recados` DISABLE KEYS */;
INSERT INTO `recados` VALUES (1,1,'Si funciona funciona debe de funcionar bien esta vaina','2021-11-01 11:59:10','Asignado',NULL,'1',NULL,NULL,2,'1','1'),(2,1,'pasar a comprar una pizza 4 estaciones para las personas que vengan','2021-11-01 12:01:39','No asignado',NULL,NULL,NULL,NULL,2,'0','1'),(3,1,'Pasar por cheque a nombre de rosendo lopez a la aseguradora asesuisa.','2021-11-01 12:03:28','No asignado',NULL,NULL,NULL,NULL,NULL,'0','1'),(4,1,'Pasar por cheque a nombre de rosendo lopez a la aseguradora asesuisa.','2021-11-01 12:15:22','Asignado',NULL,NULL,NULL,NULL,2,'1','1'),(5,1,'demo demo','2021-11-01 12:16:28','No asignado',NULL,NULL,NULL,NULL,NULL,'0','1'),(6,1,'demo demofgdgfgdgdfg','2021-11-01 12:16:47','Asignado',NULL,NULL,NULL,NULL,2,'1','1'),(7,1,'pasar a grupo sura a retirar poliza de doña elsa pato','2021-11-01 15:05:55','Asignado',NULL,NULL,NULL,NULL,1,'1','1'),(8,1,'Pasar a scotia a retirar compras','2021-11-01 15:06:32','Asignado',NULL,NULL,NULL,NULL,1,'1','1'),(9,1,'demo demo demo demo demo','2021-11-01 15:09:05','No asignado',NULL,NULL,NULL,NULL,NULL,'0','1'),(10,1,'sssss','2021-11-01 15:12:21','No asignado',NULL,NULL,NULL,NULL,NULL,'1','1'),(11,1,'ssdsdsdsd','2021-11-01 15:18:26','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(12,1,'si funciona','2021-11-01 16:05:46','No asignado',NULL,NULL,NULL,NULL,NULL,'1','1'),(13,1,'pasar a la aseguradora del pueblo a traer todas las cosas necesarias..., pero preguntar por don Casildo.','2021-11-03 09:04:43','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(14,1,'algo','2021-11-03 09:24:16','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(15,1,'recado de prueba','2021-11-03 10:37:04','No asignado',NULL,NULL,NULL,NULL,NULL,'1','1'),(16,1,'desde silvia','2021-11-03 10:57:17','No asignado',NULL,NULL,NULL,NULL,NULL,'1','1'),(17,1,'','2021-11-03 14:37:13','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(18,1,'','2021-11-03 14:37:15','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0');
/*!40000 ALTER TABLE `recados` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael Adalberto','Parada Gómez','rparada','$2b$10$UdmN/XjK/VveWLdQ/rMRQ.fDjjrkskV4RaeIXX6W6IQEkyn7CCt12',9,'0','1','1'),(2,'Ana María','Blanco Méndez','amaria','$2b$10$DyUoHmre6gBQhSn6BkSyiejzXXVoL3/frjqLqWX5WXErS9OT8T.zu',1,'0','1','1'),(3,'Chimi','An','cherrera','$2b$10$WGJohKUdJvYrO0V1ehjY7uzm.BJakeDxYK7KYeWEF.8EWYM.3ytxi',2,'0','1','1'),(4,'Elena','Osorio','eosorio','$2b$10$NusqfvViyfvuuUYYjlCMPeFkzj3jrki02S3jWppikVCgT6.SS86rq',2,'0','1','1'),(5,'Ana','Pineda','apineda','$2b$10$6.s/8qIfF748ZTNNX77sJ.uMpurQlTj0Y0156q7VEoTvQMauLVeEK',2,'0','1','1'),(6,'Nora','de Loza','nloza','$2b$10$uOElnErirnnRHWEXyWzgcerzgbW0.5ZpyR7.B1Q1K5YDeLs.0yN0G',5,'1','1','1'),(7,'Claudia','Liquez','cliquez','$2b$10$EcQnILbLwC7vz3bK.7DMJuPTiNn0QZA1UDnoyPQJF0z8Wjs/.Awey',5,'1','1','1'),(8,'Evelin','Osegueda','eosegueda','$2b$10$Ep8g1d7AxZWFrjt9qOHuRu5RdemdKF2jdSZTR5PIUvo.vCkN1R93G',5,'0','1','1'),(9,'Yohana','Pérez','yperez','$2b$10$WKJ4x1FZr4G0.TlbsxzOHuv9H3bauAx/4XqyU.RMMCL.De/bIUZXG',7,'1','1','1'),(10,'Patricia','Alfaro','palfaro','$2b$10$3qehngwWUNk3VcITwoqYdu0WL6zMZOo2SH1zqY..bjO7LiXonuUf2',6,'0','1','1'),(11,'Nancy','Vasquez','nvasques','$2b$10$qJTTxItmCdAYUeojCu96fOzwGEujwtzNvoxXfzNPjWQwmhQuiVg.K',8,'0','1','1'),(12,'Jaqueline','Hernandez','jhernandez','$2b$10$BnR0Nq9KCy8JGFdypOLlTOqR8dR8E2z/0zPPZdJb.3oyFDn9w.THW',8,'0','1','1'),(13,'Delmy','Vasquez','dvasquez','$2b$10$za9VjAcSgQ3oP2ZhkcTpJeHwgT.fEm3d/qZbHnQQNZg.Eg0Eo9mw6',7,'0','1','1'),(14,'Erick','Giron','egiron','$2b$10$IBWKwRoHz2hKKvhZnfwI4.dUOMBHwXL3MNUgMbEcqYYXoM26if7ha',6,'0','1','1'),(15,'Sandra','Rivas','srivas','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'0','1','1'),(16,'Lic. Carlos','Pineda','cjpineda','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'1','0','1'),(17,'Ing. Carlos','Pineda','cpineda','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'1','0','1'),(18,'Martin','Aguirre','maguirre','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'1','1','1'),(19,'Luis','Martinez','lmartinez','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'1','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,1,1,'2021-10-28 11:14:40',1),(2,1,2,'2021-10-28 11:14:48',1),(3,1,3,'2021-10-28 11:14:56',1),(4,1,4,'2021-10-28 11:19:24',1),(5,1,5,'2021-10-28 11:20:37',1),(6,1,6,'2021-10-28 11:22:49',1),(9,1,7,'2021-10-28 11:30:13',1),(10,2,1,'2021-10-28 12:20:37',1),(11,2,2,'2021-10-28 12:20:46',1),(12,2,3,'2021-10-28 12:20:52',1),(13,2,4,'2021-10-28 12:21:29',1),(14,2,5,'2021-10-28 12:22:43',1),(15,2,6,'2021-10-28 12:22:55',1),(16,3,1,'2021-10-28 13:49:21',1),(17,3,2,'2021-10-28 13:49:28',1),(18,3,3,'2021-10-28 13:49:31',1),(19,3,4,'2021-10-28 13:49:49',1),(20,2,7,'2021-10-28 14:28:53',1),(21,3,5,'2021-10-28 14:29:00',1),(22,3,6,'2021-10-28 14:29:10',1),(23,3,7,'2021-10-28 14:29:15',1),(24,4,1,'2021-10-30 09:36:02',1),(25,4,2,'2021-10-30 09:36:06',1),(26,4,3,'2021-10-30 09:36:10',1),(27,5,1,'2021-11-05 14:15:03',1),(28,5,2,'2021-11-05 14:16:36',1),(29,5,3,'2021-11-05 14:21:10',1),(30,6,1,'2021-11-05 14:21:59',1),(31,6,2,'2021-11-05 14:22:14',1),(32,6,3,'2021-11-05 14:22:21',1),(33,7,1,'2021-11-05 15:50:17',1),(34,8,1,'2021-11-05 15:51:08',1),(35,9,1,'2021-11-05 15:52:04',1),(36,10,1,'2021-11-05 15:52:44',1),(37,7,2,'2021-11-05 15:53:15',1),(38,8,2,'2021-11-05 15:53:16',1),(39,9,2,'2021-11-05 15:53:17',1),(40,10,2,'2021-11-05 15:53:18',1),(41,7,3,'2021-11-05 15:53:23',1),(42,8,3,'2021-11-05 15:53:26',1),(43,9,3,'2021-11-05 15:53:29',1),(44,10,3,'2021-11-05 15:53:31',1),(45,11,1,'2021-11-05 16:02:11',1),(46,12,1,'2021-11-05 16:03:00',1),(47,11,2,'2021-11-05 16:03:05',1),(48,12,2,'2021-11-05 16:03:06',1),(49,11,3,'2021-11-05 16:03:09',1),(50,12,3,'2021-11-05 16:03:13',1),(51,13,1,'2021-11-05 16:05:06',1),(52,14,1,'2021-11-05 16:06:33',1),(53,13,2,'2021-11-05 16:06:37',1),(54,14,2,'2021-11-05 16:06:38',1),(55,13,3,'2021-11-05 16:06:41',1),(56,14,3,'2021-11-05 16:06:53',1),(57,15,1,'2021-11-05 16:24:25',1),(58,16,1,'2021-11-05 16:25:06',1),(59,15,2,'2021-11-05 16:25:09',1),(60,16,2,'2021-11-05 16:25:10',1),(61,15,3,'2021-11-05 16:25:13',1),(62,16,3,'2021-11-05 16:25:17',1);
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

-- Dump completed on 2021-11-05 16:52:02
