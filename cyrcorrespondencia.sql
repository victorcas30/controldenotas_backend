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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,1,8,'2021-10-10 08:31:39',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(2,1,9,'2021-10-14 08:31:51',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(3,1,3,'2021-10-14 08:31:55',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(4,1,4,'2021-10-14 08:31:59',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(5,1,5,'2021-10-14 12:28:43',1,NULL,'2021-10-26 22:02:40','2021-10-26 22:04:37',NULL),(6,1,1,'2021-10-14 14:54:37',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(7,1,2,'2021-10-15 14:15:41',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(8,1,6,'2021-10-15 15:25:51',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(9,1,7,'2021-10-15 15:42:51',1,NULL,'2021-10-26 10:46:04','2021-10-26 22:10:48',NULL),(10,1,10,'2021-10-16 10:34:41',1,NULL,'2021-10-26 10:46:04','2021-10-26 22:09:50',NULL),(11,1,11,'2021-10-18 08:29:18',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(12,1,12,'2021-10-23 09:22:21',1,NULL,'2021-10-26 22:11:19','2021-10-26 22:11:52',NULL),(13,1,13,'2021-10-23 10:38:19',1,NULL,'2021-10-26 10:46:04',NULL,NULL),(14,3,15,'2021-10-25 16:39:39',3,NULL,'2021-10-26 22:11:24',NULL,NULL),(15,4,14,'2021-10-25 16:39:44',3,NULL,'2021-10-26 10:46:04',NULL,NULL),(16,13,18,'2021-10-25 16:40:18',9,NULL,'2021-10-26 22:11:27','2021-10-26 22:12:20',NULL),(17,7,16,'2021-10-25 16:40:51',8,NULL,'2021-10-26 10:46:04',NULL,NULL),(18,6,17,'2021-10-25 16:40:56',8,NULL,'2021-10-26 10:46:04',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,1,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','3',9,'fisico','2021-10-05 08:06:13',1,6,'0'),(2,4,'2021-10-05','2021-10-05','08:39',2,'rolando loza','carta de cesion de beneficios carlos perez','2021-10-05','asegurado','rolando cabrera lopez',9,'electronico','2021-10-05 08:41:40',1,6,'0'),(3,2,'2021-10-05','2021-10-05','08:06',2,'rafael adalberto parada gomez','carta de inclusion','2021-10-05','aseguradora','2',9,'electronico','2021-10-07 08:28:51',1,6,'0'),(4,3,'2021-10-14','2021-10-08','14:35',2,'salma hayek','inclusion de recien nacido carta 252343 del dia 24 de marzo','2021-10-07','aseguradora','2',9,'fisico','2021-10-07 14:35:35',1,6,'0'),(5,3,'2021-10-08','2021-10-08','09:51',1,'casilda','bonos de regalo para todos los empleados','2021-10-09','aseguradora','2',9,'fisico','2021-10-08 09:50:59',1,6,'0'),(6,1,'2021-10-11','2021-10-11','11:12',1,'rene perez lopez','cheque por premio de participacion','2021-10-11','asegurado','salome perez',9,'fisico','2021-10-11 11:13:00',1,6,'0'),(7,1,'2021-10-12','2021-10-12','10:23',1,'rene perez','carta de inclusion','2021-10-12','asegurado','carlos perez',9,'fisico','2021-10-12 10:23:06',1,6,'0'),(8,1,'2021-10-12','2021-10-12','13:34',1,'sonia lara','exclusion carro sonia lara','2021-10-12','aseguradora','1',9,'electronico','2021-10-12 13:35:13',1,6,'0'),(9,2,'2021-10-13','2021-10-12','13:35',1,'andres mendez','carta de reclamo de gastos medicos','2021-10-12','aseguradora','1',9,'fisico','2021-10-12 13:36:00',1,6,'0'),(10,2,'2021-10-13','2021-10-13','13:38',1,'monica liz','carta de solicitud de defuncion','2021-10-12','asegurado','catrino lopez',9,'fisico','2021-10-12 13:36:58',1,6,'0'),(11,3,'2021-10-18','2021-10-18','08:24',1,'claudia perez','carta de inclusion de recien nacido con fecha 14 de enero de 2021, nacion en el hospital primero de mayo de sal salvador','2021-10-18','asegurado','andres lopez obrador',9,'fisico','2021-10-18 08:25:33',1,6,'0'),(12,3,'2021-10-23','2021-10-23','09:21',1,'rocio molina','es la inclusion de la rocio','2021-10-23','asegurado','demo remitente',9,'fisico','2021-10-23 09:22:05',1,6,'0'),(13,1,'2021-10-23','2021-10-23','10:37',1,'rafael parada','carta de anexo','2021-10-23','asegurado','rosa maria de juarez',9,'fisico','2021-10-23 10:37:40',1,3,'0'),(14,1,'2021-10-25','2021-10-25','16:32',6,'SONIA ALCAPATE','CHEQUE DEVOLUCION DE POLIZA','2021-10-25','asegurado','CARLOS SIGUENZA',2,'fisico','2021-10-25 16:34:03',1,3,'0'),(15,3,'2021-10-25','2021-10-25','16:34',6,'CATARINA MENDEZ','carta de inclusion','2021-10-21','aseguradora','1',2,'fisico','2021-10-25 16:35:05',1,5,'0'),(16,2,'2021-10-25','2021-10-25','16:35',6,'CARMENCIO PINEDA','CESION POR APARTAMENTO NUEVO','2021-10-25','asegurado','rolando cabrera lopez',5,'fisico','2021-10-25 16:36:12',1,4,'0'),(17,4,'2021-10-25','2021-10-25','16:36',6,'CATRINO PAZ','EXCLUSION DE LAND ROBER PLACAS 3422434','2021-10-25','asegurado','rafael parada',5,'fisico','2021-10-25 16:37:01',1,4,'0'),(18,1,'2021-10-25','2021-10-25','16:37',6,'FURGENCIO LOPEZ','CHUEQUE DEVOLUCION DE GASTOS MEDICOS','2021-10-25','asegurado','carlos perez',7,'fisico','2021-10-25 16:38:34',1,6,'0');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
INSERT INTO `correspondenciaenviada` VALUES (1,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:29:03',NULL),(2,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:34:26',NULL),(3,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:37:08',NULL),(4,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:39:03',NULL),(5,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:43:37',NULL),(6,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:47:23',NULL),(7,8,'SONIA LARA','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','no se que funcione','',1,'2021-10-20 21:49:34',NULL),(8,9,'ANDRES MENDEZ','CARTA DE RECLAMO DE GASTOS MEDICOS','Compañia de seguros','1','1','1','1','doris marisela perez','los avisos de cobros estan mal, por eso se devuelve','',1,'2021-10-21 09:08:29',NULL),(9,9,'ANDRES MENDEZ','CARTA DE RECLAMO DE GASTOS MEDICOS','Otro','','','1','1','demo','demo demo','demo',1,'2021-10-21 09:32:28',NULL),(10,9,'ANDRES MENDEZ','CARTA DE RECLAMO DE GASTOS MEDICOS','Otro','','','1','0','demo atencion','demo comentario','demo destino',1,'2021-10-21 09:36:04',NULL),(11,3,'RAFAEL ADALBERTO PARADA GOMEZ','CARTA DE INCLUSION','Asegurado natural','','','1','1','','','este debe caer en el comentario',1,'2021-10-21 09:47:06',NULL),(12,3,'RAFAEL ADALBERTO PARADA GOMEZ','CARTA DE INCLUSION','Otro','','','1','0','no','si','no se',1,'2021-10-21 09:57:00',NULL),(13,3,'RAFAEL ADALBERTO PARADA GOMEZ','CARTA DE INCLUSION','Compañia de seguros','3','1','1','1','carlos molienda perez','','es un comentario bonito',1,'2021-10-21 10:02:09',NULL),(14,1,'RAFAEL ADALBERTO PARADA GOMEZ','CARTA DE INCLUSION','Asegurado natural','','','1','0','','','Julia magdalena lopez ',1,'2021-10-21 10:03:41',NULL),(15,6,'RENE PEREZ LOPEZ','CHEQUE POR PREMIO DE PARTICIPACION','Asegurado natural','','','1','1','','','entregar personalmente al señor lopez molina',1,'2021-10-21 10:07:15',NULL),(16,2,'ROLANDO LOZA','CARTA DE CESION DE BENEFICIOS CARLOS PEREZ','Compañia de seguros','1','1','1','1','orlando arevalo','','entregar al señor en sus manos',1,'2021-10-21 10:07:50',NULL),(17,4,'SALMA HAYEK','INCLUSION DE RECIEN NACIDO CARTA 252343 DEL DIA 24 DE MARZO','Asegurado natural','','','1','0','','','',1,'2021-10-23 09:41:23',NULL),(18,11,'CLAUDIA PEREZ','CARTA DE INCLUSION DE RECIEN NACIDO CON FECHA 14 DE ENERO DE 2021, NACION EN EL HOSPITAL PRIMERO DE MAYO DE SAL SALVADOR','Asegurado natural','','','1','0','','','zvzvvzxvzxvzxvzvzxv',1,'2021-10-23 09:47:38',NULL),(19,15,'CATARINA MENDEZ','CARTA DE INCLUSION','Asegurado natural','','','0','0','','','ya se termino',3,'2021-10-25 16:47:40',NULL),(20,18,'FURGENCIO LOPEZ','CHUEQUE DEVOLUCION DE GASTOS MEDICOS','Asegurado natural','','','1','0','','','demo demo',13,'2021-10-25 16:49:18',2),(21,17,'CATRINO PAZ','EXCLUSION DE LAND ROBER PLACAS 3422434','Asegurado jurídico','','','1','0','juan berenjeno','','demo demo',6,'2021-10-25 16:50:29',NULL),(22,16,'CARMENCIO PINEDA','CESION POR APARTAMENTO NUEVO','Asegurado jurídico','','','0','0','rosendo molina','','demo enviado',7,'2021-10-25 16:51:36',NULL);
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
INSERT INTO `estados_correspondencia` VALUES (1,1,'Registrada'),(2,2,'Recibida por jefe de departamento'),(3,3,'Asignada'),(4,4,'Esperando aprovación'),(5,5,'Aprobada Jefe'),(6,6,'Enviada encargado'),(7,7,'Despachada mensajeria'),(8,8,'Finalizada'),(9,9,'reasignada');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael Adalberto','Parada Gómez','rparada','$2b$10$UdmN/XjK/VveWLdQ/rMRQ.fDjjrkskV4RaeIXX6W6IQEkyn7CCt12',9,'1','1','1'),(2,'Ana María','Blanco Méndez','amaria','$2b$10$DyUoHmre6gBQhSn6BkSyiejzXXVoL3/frjqLqWX5WXErS9OT8T.zu',1,'1','1','1'),(3,'Chimi','An','cherrera','$2b$10$WGJohKUdJvYrO0V1ehjY7uzm.BJakeDxYK7KYeWEF.8EWYM.3ytxi',2,'1','1','1'),(4,'Elena','Osorio','eosorio','$2b$10$NusqfvViyfvuuUYYjlCMPeFkzj3jrki02S3jWppikVCgT6.SS86rq',2,'1','1','1'),(5,'Ana','Pineda','apineda','$2b$10$6.s/8qIfF748ZTNNX77sJ.uMpurQlTj0Y0156q7VEoTvQMauLVeEK',2,'1','1','1'),(6,'Nora','de Loza','nloza','$2b$10$uOElnErirnnRHWEXyWzgcerzgbW0.5ZpyR7.B1Q1K5YDeLs.0yN0G',5,'1','1','1'),(7,'Claudia','Liquez','cliquez','$2b$10$EcQnILbLwC7vz3bK.7DMJuPTiNn0QZA1UDnoyPQJF0z8Wjs/.Awey',5,'1','1','1'),(8,'Evelin','Osegueda','eosegueda','$2b$10$Ep8g1d7AxZWFrjt9qOHuRu5RdemdKF2jdSZTR5PIUvo.vCkN1R93G',5,'1','1','1'),(9,'Yohana','Pérez','yperez','$2b$10$WKJ4x1FZr4G0.TlbsxzOHuv9H3bauAx/4XqyU.RMMCL.De/bIUZXG',7,'1','1','1'),(10,'Patricia','Alfaro','palfaro','$2b$10$3qehngwWUNk3VcITwoqYdu0WL6zMZOo2SH1zqY..bjO7LiXonuUf2',6,'1','1','1'),(11,'Nancy','Vasquez','nvasques','$2b$10$qJTTxItmCdAYUeojCu96fOzwGEujwtzNvoxXfzNPjWQwmhQuiVg.K',8,'1','1','1'),(12,'Jaqueline','Hernandez','jhernandez','$2b$10$BnR0Nq9KCy8JGFdypOLlTOqR8dR8E2z/0zPPZdJb.3oyFDn9w.THW',8,'1','1','1'),(13,'Delmy','Vasquez','dvasquez','$2b$10$za9VjAcSgQ3oP2ZhkcTpJeHwgT.fEm3d/qZbHnQQNZg.Eg0Eo9mw6',7,'1','1','1'),(14,'Erick','Giron','egiron','$2b$10$IBWKwRoHz2hKKvhZnfwI4.dUOMBHwXL3MNUgMbEcqYYXoM26if7ha',6,'1','1','1'),(15,'Sandra','Rivas','srivas','$2b$10$qqUJ17S6Ex9zB5ofNM8ZMOLyG8A9SCEqhFtVK08XK4306y3jUhJW.',8,'1','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,8,2,'2021-10-14 08:31:23',1),(2,9,2,'2021-10-14 08:31:28',1),(3,3,2,'2021-10-14 08:31:31',1),(4,4,2,'2021-10-14 08:31:32',1),(5,8,3,'2021-10-14 08:31:39',1),(6,9,3,'2021-10-14 08:31:51',1),(7,3,3,'2021-10-14 08:31:55',1),(8,4,3,'2021-10-14 08:31:59',1),(9,5,2,'2021-10-14 12:28:39',1),(10,5,3,'2021-10-14 12:28:43',1),(11,1,2,'2021-10-14 14:54:32',1),(12,1,3,'2021-10-14 14:54:37',1),(13,2,2,'2021-10-15 14:15:37',1),(14,2,3,'2021-10-15 14:15:41',1),(15,6,2,'2021-10-15 15:25:47',1),(16,6,3,'2021-10-15 15:25:51',1),(17,7,2,'2021-10-15 15:42:46',1),(18,7,3,'2021-10-15 15:42:51',1),(19,10,2,'2021-10-16 10:34:37',1),(20,10,3,'2021-10-16 10:34:41',1),(21,11,1,'2021-10-18 08:25:33',1),(22,11,2,'2021-10-18 08:29:14',1),(23,11,3,'2021-10-18 08:29:18',1),(24,8,4,'2021-10-18 11:10:12',1),(25,9,4,'2021-10-18 11:11:54',1),(26,3,4,'2021-10-18 11:12:13',1),(27,4,4,'2021-10-18 11:12:40',1),(28,5,4,'2021-10-18 11:12:44',1),(29,1,5,'2021-10-19 08:33:58',1),(30,2,5,'2021-10-19 08:42:19',1),(31,6,5,'2021-10-19 08:43:13',1),(32,6,5,'2021-10-19 08:44:07',1),(33,7,5,'2021-10-19 08:53:56',1),(34,7,4,'2021-10-19 09:12:36',1),(35,10,4,'2021-10-19 09:13:11',1),(36,11,4,'2021-10-19 09:22:43',1),(37,8,5,'2021-10-19 09:27:29',1),(38,9,5,'2021-10-19 09:27:54',1),(39,3,5,'2021-10-19 09:30:26',1),(40,8,6,'2021-10-20 21:43:37',1),(41,8,6,'2021-10-20 21:49:34',1),(42,9,6,'2021-10-21 09:08:29',1),(43,9,6,'2021-10-21 09:32:28',1),(44,9,6,'2021-10-21 09:36:04',1),(45,3,6,'2021-10-21 09:47:06',1),(46,3,6,'2021-10-21 09:57:00',1),(47,3,6,'2021-10-21 10:02:09',1),(48,1,6,'2021-10-21 10:03:41',1),(49,6,6,'2021-10-21 10:07:15',1),(50,2,6,'2021-10-21 10:07:50',1),(51,4,5,'2021-10-21 10:25:43',1),(52,12,1,'2021-10-23 09:22:05',1),(53,12,2,'2021-10-23 09:22:16',1),(54,12,3,'2021-10-23 09:22:21',1),(55,12,4,'2021-10-23 09:36:11',1),(56,5,5,'2021-10-23 09:37:54',1),(57,11,5,'2021-10-23 09:38:16',1),(58,4,6,'2021-10-23 09:41:23',1),(59,11,6,'2021-10-23 09:47:38',1),(60,13,1,'2021-10-23 10:37:40',1),(61,13,2,'2021-10-23 10:38:04',1),(62,13,3,'2021-10-23 10:38:19',1),(63,14,1,'2021-10-25 16:34:03',1),(64,15,1,'2021-10-25 16:35:05',1),(65,16,1,'2021-10-25 16:36:12',1),(66,17,1,'2021-10-25 16:37:01',1),(67,18,1,'2021-10-25 16:38:34',1),(68,15,2,'2021-10-25 16:38:59',3),(69,14,2,'2021-10-25 16:39:01',3),(70,15,3,'2021-10-25 16:39:39',3),(71,14,3,'2021-10-25 16:39:44',3),(72,18,2,'2021-10-25 16:40:12',9),(73,18,3,'2021-10-25 16:40:18',9),(74,16,2,'2021-10-25 16:40:41',8),(75,17,2,'2021-10-25 16:40:42',8),(76,16,3,'2021-10-25 16:40:51',8),(77,17,3,'2021-10-25 16:40:56',8),(78,15,4,'2021-10-25 16:46:56',3),(79,15,5,'2021-10-25 16:47:20',3),(80,15,6,'2021-10-25 16:47:40',3),(81,18,4,'2021-10-25 16:48:40',13),(82,18,5,'2021-10-25 16:48:52',13),(83,18,6,'2021-10-25 16:49:18',13),(84,17,4,'2021-10-25 16:49:55',6),(85,17,5,'2021-10-25 16:50:03',6),(86,17,6,'2021-10-25 16:50:29',6),(87,16,4,'2021-10-25 16:51:01',7),(88,16,5,'2021-10-25 16:51:11',7),(89,16,6,'2021-10-25 16:51:36',7),(90,7,5,'2021-10-26 09:02:56',1),(91,7,5,'2021-10-26 09:03:03',1),(92,10,5,'2021-10-26 09:18:16',1),(93,10,5,'2021-10-26 09:23:10',1),(94,5,5,'2021-10-26 10:34:24',1),(95,5,5,'2021-10-26 10:42:47',1),(96,5,5,'2021-10-26 10:46:04',1),(97,5,5,'2021-10-26 14:22:52',1),(98,5,5,'2021-10-26 21:49:27',1),(99,5,5,'2021-10-26 21:50:38',1),(100,5,5,'2021-10-26 22:02:40',1),(101,5,6,'2021-10-26 22:04:37',1),(102,10,6,'2021-10-26 22:09:50',1),(103,7,6,'2021-10-26 22:10:48',1),(104,12,5,'2021-10-26 22:11:19',1),(105,15,5,'2021-10-26 22:11:24',1),(106,18,5,'2021-10-26 22:11:27',1),(107,12,6,'2021-10-26 22:11:52',1),(108,18,6,'2021-10-26 22:12:20',1);
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

-- Dump completed on 2021-10-26 22:18:02
