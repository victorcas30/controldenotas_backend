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
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `idacceso` int(11) NOT NULL AUTO_INCREMENT,
  `idrol` int(11) DEFAULT NULL,
  `idopcion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idacceso`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (2,1,1),(3,1,2),(4,1,3),(5,1,4),(11,2,1),(17,3,3),(18,3,4),(19,1,5),(20,1,6),(21,1,7),(22,1,8),(23,1,9),(24,2,2),(25,2,3),(26,2,5);
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aseguradoras`
--

LOCK TABLES `aseguradoras` WRITE;
/*!40000 ALTER TABLE `aseguradoras` DISABLE KEYS */;
INSERT INTO `aseguradoras` VALUES (1,'﻿ABANK','1'),(2,'ACSA','1'),(3,'ASSA','1'),(4,'ASSA','1'),(5,'ASSA COSTA RICA','1'),(6,'ASSA GUATEMALA','1'),(7,'ASSA GUATEMALA','1'),(8,'ASSA HONDURAS','1'),(9,'ASSA NICARAGUA','1'),(10,'ASSA VIDA','1'),(11,'AZUL','1'),(12,'AZUL VIDA','1'),(13,'CENTRAL','1'),(14,'DAVIVIENDA','1'),(15,'DAVIVIENDA','1'),(16,'FICOHSA HONDURAS','1'),(17,'FUTURO','1'),(18,'INISER','1'),(19,'MAPFRE','1'),(20,'MAPFRE COSTA RICA','1'),(21,'MAPFRE GUATEMALA','1'),(22,'MAPFRE HONDURAS','1'),(23,'MAPFRE NICARAGUA','1'),(24,'PACIFICO','1'),(25,'PALIG','1'),(26,'POPULAR','1'),(27,'QUALITAS','1'),(28,'SEGUROS AGROMERCANTIL','1'),(29,'SEGUROS SURA','1'),(30,'SISA','1'),(31,'SISA SV','1'),(32,'SISA VIDA','1'),(33,'SURA VIDA','1');
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
  `tipoarchivada` char(1) DEFAULT NULL,
  `comentarioarchivada` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,1,1,'2021-10-28 11:14:56',1,NULL,'2021-10-28 11:20:37','2021-10-28 11:24:31','2021-10-28 11:30:13',NULL,NULL),(2,1,2,'2021-10-28 12:20:52',1,NULL,'2021-10-28 12:22:43','2021-10-28 12:22:55','2021-10-28 14:28:53',NULL,NULL),(3,1,3,'2021-10-28 13:49:31',1,NULL,'2021-10-28 14:29:00','2021-10-28 14:29:10','2021-10-28 14:29:15',NULL,NULL),(4,1,4,'2021-10-30 09:36:10',1,NULL,'2021-11-16 15:51:10','2021-11-16 15:54:06',NULL,'2','Se devuelve a la compañia de seguros por motivos de no se que'),(5,48,5,'2021-11-05 14:21:10',1,NULL,NULL,NULL,NULL,NULL,NULL),(6,48,6,'2021-11-05 14:22:21',1,NULL,NULL,NULL,NULL,NULL,NULL),(7,48,7,'2021-11-05 15:53:23',1,NULL,NULL,NULL,NULL,NULL,NULL),(8,48,8,'2021-11-05 15:53:26',1,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,9,'2021-11-05 15:53:29',1,NULL,'2021-11-13 08:55:53','2021-11-13 08:56:08','2021-11-16 15:54:24',NULL,NULL),(10,1,10,'2021-11-05 15:53:31',1,NULL,'2021-11-16 15:51:18','2021-11-16 15:54:09',NULL,'1','demo demo demo demo demo demo'),(11,1,11,'2021-11-05 16:03:09',1,NULL,'2021-11-16 15:53:56',NULL,NULL,'1','Se archiva por obvias razones'),(12,1,12,'2021-11-05 16:03:13',1,NULL,'2021-11-16 15:51:25','2021-11-16 15:54:12','2021-11-16 15:54:22',NULL,NULL),(13,1,13,'2021-11-05 16:06:41',1,NULL,NULL,NULL,NULL,NULL,NULL),(14,1,14,'2021-11-05 16:06:53',1,NULL,NULL,NULL,NULL,'1','El asegurado pidió que se lo enviaran por correo'),(15,1,15,'2021-11-05 16:25:13',1,NULL,NULL,NULL,NULL,NULL,NULL),(16,1,16,'2021-11-05 16:25:17',1,NULL,NULL,NULL,NULL,NULL,NULL),(17,1,17,'2021-11-12 15:55:09',1,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,1,'2021-10-28','2021-10-28','11:12',6,'cristiano rolando perez','solicitud de cesion de beneficios del señor carlos lara','2021-10-28','asegurado','catrino lopez',9,'fisico','2021-10-28 11:14:40',1,7,'0','2021-11-05 14:22:14'),(2,2,'2021-10-28','2021-10-28','12:19',7,'don filiberto lopez','carta de cesion de beneficios carlos perez','2021-10-28','aseguradora','1',9,'fisico','2021-10-28 12:20:37',1,7,'0','2021-11-05 14:22:14'),(3,4,'2021-10-28','2021-10-28','13:48',7,'demo asegurado demo','exclusion carro sonia lara','2021-10-28','asegurado','rolando cabrera lopez',9,'fisico','2021-10-28 13:49:21',1,7,'0','2021-11-05 14:22:14'),(4,1,'2021-10-30','2021-10-30','09:35',6,'cheque de gastos medicos devolucion de todas las cosas','demo demo demo demo demo demo','2021-10-30','asegurado','rolando cabrera lopez',9,'fisico','2021-10-30 09:36:02',1,6,'0','2021-11-05 14:22:14'),(5,1,'2021-11-05','2021-11-05','14:14',9,'carlos azajuela','carta de inclusion','2021-11-05','asegurado','salome perez',9,'fisico','2021-11-05 14:15:03',1,3,'0','2021-11-05 14:22:14'),(6,1,'2021-11-03','2021-11-04','14:21',6,'carolina perez','solicitud de cesion de beneficios del señor carlos lara','2021-11-05','aseguradora','1',9,'fisico','2021-11-05 14:21:59',1,3,'0','2021-11-05 14:22:14'),(7,3,'2021-11-01','2021-11-02','15:49',6,'simon valenzuela','solicitud de cesion de beneficios del señor carlos lara','2021-11-27','aseguradora','1',9,'fisico','2021-11-05 15:50:17',1,3,'0','2021-11-05 15:53:15'),(8,1,'2021-11-01','2021-11-02','15:50',7,'roberto pereira','pago de indemnizacion por robo','2021-11-05','aseguradora','1',9,'electronico','2021-11-05 15:51:08',1,3,'0','2021-11-05 15:53:16'),(9,4,'2021-11-01','2021-11-02','15:51',7,'abigail lopez preza','se excluye un vehiculo de la marca toyota','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 15:52:04',1,7,'0','2021-11-05 15:53:17'),(10,2,'2021-11-01','2021-11-02','15:52',7,'coralia paz','es la coralia','2021-11-05','asegurado','rolando cabrera lopez',9,'fisico','2021-11-05 15:52:44',1,6,'0','2021-11-05 15:53:18'),(11,1,'2021-11-01','2021-11-02','16:01',6,'rosa dora de cabezas','cheque por el pago de los gastos medicos','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:02:11',1,9,'0','2021-11-05 16:03:05'),(12,2,'2021-11-01','2021-11-02','16:02',6,'rosalia medina pleitez','es una cesion por una casa de la señora','2021-11-05','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:03:00',1,7,'0','2021-11-05 16:03:06'),(13,1,'2021-11-05','2021-11-01','16:04',7,'rosendo fortin','carta de inclusion','2021-11-05','asegurado','rafael parada',9,'fisico','2021-11-05 16:05:06',1,4,'0','2021-11-05 16:06:37'),(14,1,'2021-11-01','2021-11-02','16:05',7,'ana bell mendez','carta de inclusion','2021-11-05','asegurado','rolando cabrera lopez',9,'fisico','2021-11-05 16:06:33',1,4,'0','2021-11-05 16:06:38'),(15,2,'2021-11-05','2021-11-05','16:23',6,'rosa maria reyes de paz','carta de cesion de beneficios carlos perez','2021-11-05','aseguradora','1',9,'electronico','2021-11-05 16:24:25',1,3,'0','2021-11-05 16:25:09'),(16,2,'2021-11-01','2021-11-02','16:24',6,'coralia perz','solicitud de cesion de beneficios del señor carlos lara','2021-11-06','asegurado','rolando cabrera lopez',9,'electronico','2021-11-05 16:25:06',1,3,'0','2021-11-05 16:25:10'),(17,1,'2021-11-12','2021-11-12','15:53',18,'RICHARD HERE','CHEQUE DE COMPENSACION ECONOMICA','2021-11-12','asegurado','rafael parada',9,'fisico','2021-11-12 15:54:58',1,3,'0','2021-11-12 15:55:04'),(18,11,'2021-11-17','2021-11-17','10:30',7,'ronoldi casimiro','carta de inclusion','2021-11-17','asegurado','rolando cabrera lopez',2,'fisico','2021-11-17 10:31:04',1,1,'0',NULL),(19,2,'2021-11-11','2021-11-17','10:44',6,'zsfsfsdfsd','sdfsdfsfsdf','0000-00-00','asegurado','dfdfsdfsdfsdfsdf',2,'electronico','2021-11-17 10:44:37',1,1,'0',NULL),(20,11,'2021-11-17','2021-11-17','10:45',9,'sdasdasdasdasd','asdasdasdasdasd','2021-11-17','asegurado','fsdfsdfsdfsdf',3,'fisico','2021-11-17 10:45:33',1,1,'0',NULL),(21,2,'2021-11-18','2021-11-17','10:55',6,'rosendo lopez','carta de inclusion','0000-00-00','aseguradora','1',9,'fisico','2021-11-17 10:56:31',1,1,'0',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
INSERT INTO `correspondenciaenviada` VALUES (1,1,'CRISTIANO ROLANDO PEREZ','SOLICITUD DE CESION DE BENEFICIOS DEL SEÑOR CARLOS LARA','Asegurado natural','','','1','0','','','no se que va pasar',1,'2021-10-28 11:19:24',2),(2,2,'DON FILIBERTO LOPEZ','CARTA DE CESION DE BENEFICIOS CARLOS PEREZ','Asegurado natural','','','1','0','','','algo debo de escribir en este dialog de cesiones',1,'2021-10-28 12:21:29',1),(3,3,'DEMO ASEGURADO DEMO','EXCLUSION CARRO SONIA LARA','Asegurado natural','','','1','0','','','demo demo demo',1,'2021-10-28 13:49:49',1),(4,9,'ABIGAIL LOPEZ PREZA','SE EXCLUYE UN VEHICULO DE LA MARCA TOYOTA','Asegurado natural','','','1','0','','','se manda por que ya no funciona',1,'2021-11-13 08:41:44',1),(5,12,'ROSALIA MEDINA PLEITEZ','ES UNA CESION POR UNA CASA DE LA SEÑORA','Asegurado jurídico','','','1','0','Lic. osiel mendez','','entregar en la caseta con el vigilante lopez',1,'2021-11-16 10:53:35',1),(6,13,'ROSENDO FORTIN','CARTA DE INCLUSION','Asegurado natural','','','1','0','','','entregar personalmente por favor',1,'2021-11-16 15:55:08',NULL);
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
INSERT INTO `estados_correspondencia` VALUES (1,1,'Registrada'),(2,2,'Recibida por jefe de departamento'),(3,3,'Asignada'),(4,4,'Esperando aprovación'),(5,5,'Aprobada Jefe'),(6,6,'Enviada encargado'),(7,7,'Finalizada'),(8,8,'Reasignada'),(9,9,'Archivada');
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
-- Table structure for table `opciones`
--

DROP TABLE IF EXISTS `opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones` (
  `idopcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idopcion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,'Home','ImHome3','/home'),(2,'En oficina','ImOffice','/inoffice'),(3,'Mis Asignaciones','ImList2','/misasignaciones'),(4,'Recados','CgUserList','/asignarmensajes'),(5,'Mis Recados','BiMessage','/misrecados'),(6,'Recibir Correspondencia','HiOutlineInboxIn','/recibir'),(7,'Aprovar correspondencia','RiMailSendLine','/aprovarcorrespondencia'),(8,'Reportes','VscFilePdf','/reportes'),(9,'Usuarios','FaUsersCog','/usuarios');
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reasignaciones`
--

DROP TABLE IF EXISTS `reasignaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reasignaciones` (
  `idreasignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idasignacion` int(11) DEFAULT NULL,
  `iduserantes` int(11) DEFAULT NULL,
  `iduserhoy` int(11) DEFAULT NULL,
  `fechareasignacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idreasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasignaciones`
--

LOCK TABLES `reasignaciones` WRITE;
/*!40000 ALTER TABLE `reasignaciones` DISABLE KEYS */;
INSERT INTO `reasignaciones` VALUES (1,17,45,1,'2021-11-12 21:32:54'),(2,4,1,48,'2021-11-12 21:38:44'),(3,5,1,48,'2021-11-12 21:40:00'),(4,5,1,48,'2021-11-12 21:40:25'),(5,6,1,48,'2021-11-12 21:55:34'),(6,7,1,48,'2021-11-12 21:56:23'),(7,8,1,48,'2021-11-12 21:56:47'),(8,4,48,1,'2021-11-13 09:04:46');
/*!40000 ALTER TABLE `reasignaciones` ENABLE KEYS */;
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Adminsitrador'),(2,'Jefe departamento'),(3,'Usuario Básico');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documentos`
--

LOCK TABLES `tipo_documentos` WRITE;
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` VALUES (1,'Cheque','1'),(2,'Cesión','1'),(3,'Inclusión','1'),(4,'Exclusión','1'),(5,'﻿DOCUMENTOS RECLAMOS GM','1'),(6,'DOCUMENTOS RECLAMOS DAÑOS','1'),(7,'LIQUIDACION GM','1'),(8,'LIQUIDACION DAÑOS','1'),(9,'CESION DE BENEFICIO','1'),(10,'POLIZA INICIAL','1'),(11,'POLIZA RENOVACION','1'),(12,'AVISOS DE COBROS','1'),(13,'CERTIFICADOS GM','1'),(14,'OFERTA RENOVACION','1'),(15,'CARNETS GM','1'),(16,'COTIZACION','1'),(17,'ANEXO DE MODIFICACION','1'),(18,'ANEXO DE CANCELACION','1'),(19,'OTRO','1');
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
  `idrol` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `recibe_correspondencia` char(1) DEFAULT '1',
  `aplica_reporte_trabajo_pendiente` char(1) DEFAULT '1',
  `activo` char(1) DEFAULT '1',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael','parada','rparada','$2b$10$mjon8aaIhag2lO44jbfk6etd5vj.tuBOPZ/XKO8Z8bfJyyY1HRm.6',1,9,'0','0','1'),(2,'ana','pineda','apineda','$2b$10$l.GKA3iNy6erSLAb9P9hHuQrucwwwHq8eLvuWuqfxX/1S6MScRsta',3,2,'0','1','1'),(3,'chimi','herrera','cherrera','$2b$10$E.OYZt39dn8puyJrxsf0RutWufaN4.mELtQAmk6IFmpRySQcn2xIW',2,2,'0','1','1'),(4,'elena','osorio','eosorio','$2b$10$p5sTrQQrAabAH7pD2pjzTuJ9jbtVvr.kjL1USep/kO8sNeOc1iGzq',3,2,'0','1','1'),(5,'erick','giron','egiron','$2b$10$cvXkht48Nqy8YY.gy.9KSetbQWmhImkJcB0Ag03yEpsJGWo42OBb6',3,6,'0','1','1'),(6,'evelyn','de andrade','eosegueda','$2b$10$7xabuTi4zyERjTGAJ7xdUesyQlQFlJVNQB0u6vP8GGWBp40DIsYZ6',2,5,'1','1','1'),(7,'Lucy','de escobar','lescobar','$2b$10$.FH91NStqgYi5vPgUK60seyob6AtL/JDIEwqdzFO.nPuB8RusucFW',2,6,'1','1','1'),(8,'nora','de loza','nloza','$2b$10$I2XhNmbU1piz6tO9xUOsaeye42ORuXxOFj09hgudrIvz2I1zp9tAG',3,5,'1','1','1'),(9,'sandra','rivas','srivas','$2b$10$olOwxWx5nJQttaYIf4dsLOtBE.wlNsYdEkCbf8ydtocuyGqFTY.S6',2,8,'1','1','1'),(10,'silvia','quezADA','SQUEZADA','$2b$10$CkAfh/Zd.0VFwcsYeia6lOM9V8mZeGpnUD2TfKVMcoI2xJKKe7XV6',2,1,'1','0','1'),(11,'YOHANA','VALIENTE','YVALIENTE','$2b$10$9mAzmlxxzeqMadeuJ1IpguzG0//wEJ3PWv2McjdDVacp4kw5cUyRa',2,7,'1','1','1'),(12,'ANA','CORNEJO','ACORNEJO','$2b$10$LkOi61GJ5AodCVAOi0K80.i1STiuLLESeZ3YEKgRmTiu6WyQuol2G',3,2,'0','1','1'),(13,'ricardo','esquivel','resquivel','$2b$10$tJzkhsSAeEzzUZF1B5A3P.19kVBjm1vJgABAxect5L1eFf11EsM86',3,2,'0','1','1'),(14,'claudia','liquez','cliquez','$2b$10$ivIt6ZBF6ZvAfzKZSrJTB.rGuRLeuOmfkfIldXFq2jGOfORkqsQvG',3,5,'1','1','1'),(15,'Patricia','alfaro','palfaro','$2b$10$KNH/TFoKF6hEXPZWCvgaluWR2NtSx47O4ae1fiOo5CfSUSZFUXJq.',3,6,'0','1','1'),(16,'jacqueline','hernandez','JHERNANDEZ','$2b$10$DhU3JJu89dgInmYu2Lgmouj4uqCj.OUbMHeeBP84t4TaS486F7TRy',3,8,'0','1','1'),(17,'DELMY','VASQUEZ','DVASQUEZ','$2b$10$DjPU8wq6rVh2DCUNpLwwJOOAOjl/t2mbl18AdTkigZS78jrBfTz6C',3,7,'0','1','1'),(18,'NANCY','VASQUEZ','NVASQUEZ','$2b$10$MgcJS/bG3YfJ7D.UmB5nPeSBtPjB/mFvw6w4gHG/ciiaJR3Qqk2Xi',3,8,'0','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,1,1,'2021-10-28 11:14:40',1),(2,1,2,'2021-10-28 11:14:48',1),(3,1,3,'2021-10-28 11:14:56',1),(4,1,4,'2021-10-28 11:19:24',1),(5,1,5,'2021-10-28 11:20:37',1),(6,1,6,'2021-10-28 11:22:49',1),(9,1,7,'2021-10-28 11:30:13',1),(10,2,1,'2021-10-28 12:20:37',1),(11,2,2,'2021-10-28 12:20:46',1),(12,2,3,'2021-10-28 12:20:52',1),(13,2,4,'2021-10-28 12:21:29',1),(14,2,5,'2021-10-28 12:22:43',1),(15,2,6,'2021-10-28 12:22:55',1),(16,3,1,'2021-10-28 13:49:21',1),(17,3,2,'2021-10-28 13:49:28',1),(18,3,3,'2021-10-28 13:49:31',1),(19,3,4,'2021-10-28 13:49:49',1),(20,2,7,'2021-10-28 14:28:53',1),(21,3,5,'2021-10-28 14:29:00',1),(22,3,6,'2021-10-28 14:29:10',1),(23,3,7,'2021-10-28 14:29:15',1),(24,4,1,'2021-10-30 09:36:02',1),(25,4,2,'2021-10-30 09:36:06',1),(26,4,3,'2021-10-30 09:36:10',1),(27,5,1,'2021-11-05 14:15:03',1),(28,5,2,'2021-11-05 14:16:36',1),(29,5,3,'2021-11-05 14:21:10',1),(30,6,1,'2021-11-05 14:21:59',1),(31,6,2,'2021-11-05 14:22:14',1),(32,6,3,'2021-11-05 14:22:21',1),(33,7,1,'2021-11-05 15:50:17',1),(34,8,1,'2021-11-05 15:51:08',1),(35,9,1,'2021-11-05 15:52:04',1),(36,10,1,'2021-11-05 15:52:44',1),(37,7,2,'2021-11-05 15:53:15',1),(38,8,2,'2021-11-05 15:53:16',1),(39,9,2,'2021-11-05 15:53:17',1),(40,10,2,'2021-11-05 15:53:18',1),(41,7,3,'2021-11-05 15:53:23',1),(42,8,3,'2021-11-05 15:53:26',1),(43,9,3,'2021-11-05 15:53:29',1),(44,10,3,'2021-11-05 15:53:31',1),(45,11,1,'2021-11-05 16:02:11',1),(46,12,1,'2021-11-05 16:03:00',1),(47,11,2,'2021-11-05 16:03:05',1),(48,12,2,'2021-11-05 16:03:06',1),(49,11,3,'2021-11-05 16:03:09',1),(50,12,3,'2021-11-05 16:03:13',1),(51,13,1,'2021-11-05 16:05:06',1),(52,14,1,'2021-11-05 16:06:33',1),(53,13,2,'2021-11-05 16:06:37',1),(54,14,2,'2021-11-05 16:06:38',1),(55,13,3,'2021-11-05 16:06:41',1),(56,14,3,'2021-11-05 16:06:53',1),(57,15,1,'2021-11-05 16:24:25',1),(58,16,1,'2021-11-05 16:25:06',1),(59,15,2,'2021-11-05 16:25:09',1),(60,16,2,'2021-11-05 16:25:10',1),(61,15,3,'2021-11-05 16:25:13',1),(62,16,3,'2021-11-05 16:25:17',1),(63,17,1,'2021-11-12 15:54:58',1),(64,17,2,'2021-11-12 15:55:04',1),(65,17,3,'2021-11-12 15:55:09',1),(66,9,4,'2021-11-13 08:41:44',1),(67,9,5,'2021-11-13 08:55:53',1),(68,9,6,'2021-11-13 08:56:08',1),(69,4,4,'2021-11-16 10:17:29',1),(70,10,4,'2021-11-16 10:23:12',1),(71,4,4,'2021-11-16 10:27:10',1),(72,4,4,'2021-11-16 10:41:22',1),(73,10,4,'2021-11-16 10:42:53',1),(74,11,4,'2021-11-16 10:52:07',1),(75,12,4,'2021-11-16 10:53:35',1),(76,12,5,'2021-11-16 15:50:51',1),(77,10,5,'2021-11-16 15:51:18',1),(78,4,5,'2021-11-16 15:51:10',1),(79,12,5,'2021-11-16 15:51:25',1),(80,11,9,'2021-11-16 15:53:56',1),(81,4,6,'2021-11-16 15:54:06',1),(82,10,6,'2021-11-16 15:54:09',1),(83,12,6,'2021-11-16 15:54:12',1),(84,12,7,'2021-11-16 15:54:22',1),(85,9,7,'2021-11-16 15:54:24',1),(86,13,4,'2021-11-16 15:55:08',1),(87,14,4,'2021-11-16 15:55:54',1),(88,18,1,'2021-11-17 10:31:04',1),(89,19,1,'2021-11-17 10:44:37',1),(90,20,1,'2021-11-17 10:45:33',1),(91,21,1,'2021-11-17 10:56:31',1);
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

-- Dump completed on 2021-11-17 14:07:51
