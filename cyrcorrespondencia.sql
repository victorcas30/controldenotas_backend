CREATE DATABASE  IF NOT EXISTS `cyrcorrespondencia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cyrcorrespondencia`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: cyrcorrespondencia
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accesos` (
  `idacceso` int(11) NOT NULL AUTO_INCREMENT,
  `idrol` int(11) DEFAULT NULL,
  `idopcion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idacceso`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (3,1,2),(4,1,3),(5,1,4),(11,2,1),(17,3,3),(19,1,5),(20,1,6),(21,1,7),(22,1,8),(23,1,9),(24,2,2),(25,2,3),(27,3,5),(28,3,1),(29,1,1),(31,2,5);
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aseguradoras`
--

DROP TABLE IF EXISTS `aseguradoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,14,1,'2021-11-19 09:22:17',6,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,6,'2021-11-19 13:29:55',3,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,2,'2021-11-19 13:34:12',3,NULL,NULL,NULL,NULL,NULL,NULL),(4,9,5,'2021-11-19 14:29:59',9,NULL,NULL,NULL,NULL,NULL,NULL),(5,9,18,'2021-11-19 14:33:24',9,NULL,NULL,NULL,NULL,NULL,NULL),(6,18,23,'2021-11-19 14:33:49',9,NULL,NULL,NULL,NULL,NULL,NULL),(7,16,19,'2021-11-19 14:35:41',9,NULL,NULL,NULL,NULL,NULL,NULL),(8,9,20,'2021-11-19 14:36:00',9,NULL,NULL,NULL,NULL,NULL,NULL),(9,16,21,'2021-11-19 14:36:14',9,NULL,NULL,NULL,NULL,NULL,NULL),(10,16,22,'2021-11-19 14:36:18',9,NULL,NULL,NULL,NULL,NULL,NULL),(11,8,3,'2021-11-19 16:02:39',6,NULL,NULL,NULL,NULL,NULL,NULL),(12,14,7,'2021-11-19 16:02:49',6,NULL,NULL,NULL,NULL,NULL,NULL),(13,14,15,'2021-11-19 16:02:52',6,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `asignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondencia_recibida`
--

DROP TABLE IF EXISTS `correspondencia_recibida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,19,'2021-11-10','2021-11-19','08:55',22,'pimi','anexo declaracion mensual de trma-214068 y aviso de cobro','0000-00-00','aseguradora','19',5,'electronico','2021-11-19 09:18:17',10,3,'0','2021-11-19 09:22:06'),(2,17,'2021-11-16','2021-11-19','08:45',22,'JOSE ALBERTO ORTIZ','ANEXO DE MODIFICACION NO. 95618/131713 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'electronico','2021-11-19 09:36:42',10,3,'0','2021-11-19 13:34:05'),(3,4,'2021-11-19','2021-11-19','11:00',22,'ANA LETICIA CALDERON DE REVELO','SOLICITUD DE EXCLUSION VEHICULO','0000-00-00','asegurado','ASEGURADO',5,'electronico','2021-11-19 11:03:40',10,3,'0','2021-11-19 15:14:19'),(4,19,'2021-11-19','2021-11-19','11:16',22,'impressa','2 cedulas de modificacion no. 09b715/33512 y 70b279/33514','0000-00-00','aseguradora','3',2,'electronico','2021-11-19 12:32:24',10,1,'0',NULL),(5,14,'2021-11-19','2021-11-19','12:27',22,'cassa','oferta de renovacion de vcd-8141 firmada por el asegurado','0000-00-00','asegurado','asegurado',8,'electronico','2021-11-19 12:43:33',10,4,'0','2021-11-19 14:29:51'),(6,19,'2021-11-19','2021-11-19','12:58',22,'QUALITAS','COBRO TRIMESTRASL DE VC-33654','0000-00-00','aseguradora','25',2,'electronico','2021-11-19 13:15:01',10,3,'0','2021-11-19 13:29:30'),(7,19,'2021-11-19','2021-11-19','01:13',22,'LIOD','CERT. DE VC-131','0000-00-00','aseguradora','12',5,'electronico','2021-11-19 13:17:30',10,3,'0','2021-11-19 15:07:50'),(8,17,'2021-11-19','2021-11-19','11:45',21,'RAFAEL JAIME ALVAREZ','ANEXO DE MODIFICACION NO. 95686/131733 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:28:15',10,1,'0',NULL),(9,17,'2021-11-19','2021-11-19','11:45',21,'LOLY AGUILAR','ANEXO DE MODIFICACION NO. 97051/131736 Y AVISO DE COBTO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:29:17',10,1,'0',NULL),(10,17,'2021-11-19','2021-11-19','11:45',21,'JOSE ALBERTO ORTI','ANEXO DE MODIFICACION NO. 95618/131713 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:30:05',10,1,'0',NULL),(11,18,'2021-11-19','2021-11-19','11:45',21,'GERARDO VALENZUELA','ANEXO DE CANCELACION NO. 95697/262848','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:30:55',10,1,'0',NULL),(12,11,'2021-11-19','2021-11-19','11:45',21,'CASSA','ANEXO DE RENOVACION DE RECI-213251 Y AVISO DE COBRO','2021-09-28','aseguradora','30',2,'fisico','2021-11-19 13:32:07',10,1,'0',NULL),(13,19,'2021-11-19','2021-11-19','09:20',21,'SERSAPROSA','CEDULA DE MODIFICACINO DE VICO-516017/31 Y CERT. ','0000-00-00','aseguradora','30',2,'fisico','2021-11-19 13:33:06',10,1,'0',NULL),(14,10,'2021-11-19','2021-11-19','09:20',21,'INMOB. LA CASA','POLIZA INICIAL DE TORI-226102 Y AVISO DE COBRO','0000-00-00','aseguradora','30',2,'fisico','2021-11-19 13:34:04',10,1,'0',NULL),(15,2,'2021-11-19','2021-11-19','10:40',21,'COND. SPAZIO','CESION DE BENEFICIO DE IN-18613/19','0000-00-00','aseguradora','30',5,'fisico','2021-11-19 13:34:55',10,3,'0','2021-11-19 15:06:57'),(16,1,'2021-11-19','2021-11-19','09:20',21,'MARTA FIGUEROA','3 CHEQUES NO. 174497, 174498, 174499 Y FINIQUITOS','0000-00-00','aseguradora','30',7,'fisico','2021-11-19 13:35:59',10,1,'0',NULL),(17,1,'2021-11-19','2021-11-19','09:20',21,'ANA ZUAZU','CHEQUE NO. 174495 POR $ 157.22 Y FINIQUITO','0000-00-00','aseguradora','30',7,'fisico','2021-11-19 13:40:16',10,1,'0',NULL),(18,11,'2021-11-19','2021-11-19','11:45',21,'LUCIA DE CORPEÑO','3 ANEXOS DE RENOVACION NO. 97500, 97499, 97504 Y AVISOS DE COBROS','2021-12-31','aseguradora','27',8,'fisico','2021-11-19 13:42:28',10,3,'0','2021-11-19 14:33:13'),(19,11,'2021-11-19','2021-11-19','11:45',21,'ANNA CATANI','ANEXO DE RENOVACION DE 97498 Y AVISOS DE COBROS','2021-12-31','aseguradora','27',8,'fisico','2021-11-19 13:43:20',10,3,'0','2021-11-19 14:35:36'),(20,11,'2021-11-19','2021-11-19','11:45',21,'CONACERO GUATEMALA','ANEXO DE RENOVACION NO. 97505 Y AVISO DE COBRO','2021-12-06','aseguradora','27',8,'fisico','2021-11-19 13:44:07',10,3,'0','2021-11-19 14:35:55'),(21,11,'2021-11-19','2021-11-19','11:45',21,'IVONNE DE OCHOA','ANEXO DE RENOVACION DE 97506 Y AVISO DE COBRO','2021-12-05','aseguradora','27',8,'fisico','2021-11-19 13:44:59',10,3,'0','2021-11-19 14:36:08'),(22,11,'2021-11-19','2021-11-19','11:45',21,'ANA MARCELA DE MOLINA','ANEXO DE RENOVACION DE 97485 Y AVISO DE COBRO','2021-12-03','aseguradora','27',8,'fisico','2021-11-19 13:45:43',10,3,'0','2021-11-19 14:33:57'),(23,11,'2021-11-19','2021-11-19','11:45',21,'W INGENIERIA Y SERVICIOS','5 ANEXOS DE RENOVACION NO. 97511 AL 97514, 97516 Y AVISOS DE COBROS','2021-12-19','aseguradora','27',8,'fisico','2021-11-19 13:47:16',10,3,'0','2021-11-19 14:33:43'),(24,11,'2021-11-19','2021-11-19','01:54',22,'dizucar','2 anexos de renovacion gmg-1-35-56 y vg-1-36-50, y avisos de cobros','2021-10-30','aseguradora','1',2,'electronico','2021-11-19 14:23:27',10,1,'0',NULL),(25,19,'2021-11-19','2021-11-19','03:06',22,'QUALITAS','COBRO MENSUALDE 336543','0000-00-00','aseguradora','25',2,'electronico','2021-11-19 15:16:30',10,1,'0',NULL),(26,19,'2021-11-19','2021-11-19','04:03',22,'coop. cuzcachapa','solicitud de cambio de propiertario','0000-00-00','asegurado','coop. cuzcachapa',5,'electronico','2021-11-19 16:06:21',10,1,'0',NULL),(27,19,'2021-11-19','2021-11-19','04:07',22,'fudem','anexo declaracion mensual de t-16647/28 y aviso de cobro','0000-00-00','aseguradora','19',5,'electronico','2021-11-19 16:13:37',10,1,'0',NULL),(28,19,'2021-11-19','2021-11-19','03:35',20,'AMERICAN IND. PARK','CONSTANCIAS DE RENOVACION DE CESION DE INC-16915','0000-00-00','aseguradora','19',5,'fisico','2021-11-19 16:40:20',10,1,'0',NULL),(29,19,'2021-11-19','2021-11-19','03:35',20,'GIMNASIOS DE EL SALVADOR','INFORME DE AUDITORIA','0000-00-00','aseguradora','19',5,'fisico','2021-11-19 16:41:13',10,1,'0',NULL);
/*!40000 ALTER TABLE `correspondencia_recibida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondenciaenviada`
--

DROP TABLE IF EXISTS `correspondenciaenviada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
INSERT INTO `correspondenciaenviada` VALUES (1,5,'CASSA','OFERTA DE RENOVACION DE VCD-8141 FIRMADA POR EL ASEGURADO','Compañia de seguros','','0','1','0','Milagro de Choriego ','','CARTA Y CORREO ELECTRONICO DEL 19.11.2021',9,'2021-11-19 16:08:23',NULL);
/*!40000 ALTER TABLE `correspondenciaenviada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyr_departamentos`
--

DROP TABLE IF EXISTS `cyr_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reasignaciones` (
  `idreasignacion` int(11) NOT NULL AUTO_INCREMENT,
  `idasignacion` int(11) DEFAULT NULL,
  `iduserantes` int(11) DEFAULT NULL,
  `iduserhoy` int(11) DEFAULT NULL,
  `fechareasignacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idreasignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasignaciones`
--

LOCK TABLES `reasignaciones` WRITE;
/*!40000 ALTER TABLE `reasignaciones` DISABLE KEYS */;
INSERT INTO `reasignaciones` VALUES (1,3,2,3,'2021-11-19 13:35:19');
/*!40000 ALTER TABLE `reasignaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recados`
--

DROP TABLE IF EXISTS `recados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recados`
--

LOCK TABLES `recados` WRITE;
/*!40000 ALTER TABLE `recados` DISABLE KEYS */;
/*!40000 ALTER TABLE `recados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael','parada','rparada','$2b$10$mjon8aaIhag2lO44jbfk6etd5vj.tuBOPZ/XKO8Z8bfJyyY1HRm.6',1,9,'0','0','1'),(2,'ana','pineda','apineda','$2b$10$l.GKA3iNy6erSLAb9P9hHuQrucwwwHq8eLvuWuqfxX/1S6MScRsta',3,2,'0','1','1'),(3,'chimi','herrera','cherrera','$2b$10$E.OYZt39dn8puyJrxsf0RutWufaN4.mELtQAmk6IFmpRySQcn2xIW',2,2,'0','1','1'),(4,'elena','osorio','eosorio','$2b$10$p5sTrQQrAabAH7pD2pjzTuJ9jbtVvr.kjL1USep/kO8sNeOc1iGzq',3,2,'0','1','1'),(5,'erick','giron','egiron','$2b$10$cvXkht48Nqy8YY.gy.9KSetbQWmhImkJcB0Ag03yEpsJGWo42OBb6',3,6,'0','1','1'),(6,'evelyn','de andrade','eosegueda','$2b$10$7xabuTi4zyERjTGAJ7xdUesyQlQFlJVNQB0u6vP8GGWBp40DIsYZ6',2,5,'1','1','1'),(7,'Lucy','de escobar','lescobar','$2b$10$.FH91NStqgYi5vPgUK60seyob6AtL/JDIEwqdzFO.nPuB8RusucFW',2,6,'1','1','1'),(8,'nora','de loza','nloza','$2b$10$I2XhNmbU1piz6tO9xUOsaeye42ORuXxOFj09hgudrIvz2I1zp9tAG',3,5,'1','1','1'),(9,'sandra','rivas','srivas','$2b$10$olOwxWx5nJQttaYIf4dsLOtBE.wlNsYdEkCbf8ydtocuyGqFTY.S6',2,8,'1','1','1'),(10,'SILVIA','QUEZADA','SQUEZADA','$2b$10$CkAfh/Zd.0VFwcsYeia6lOM9V8mZeGpnUD2TfKVMcoI2xJKKe7XV6',1,1,'1','0','1'),(11,'YOHANA','VALIENTE','YVALIENTE','$2b$10$9mAzmlxxzeqMadeuJ1IpguzG0//wEJ3PWv2McjdDVacp4kw5cUyRa',2,7,'1','1','1'),(12,'ANA','CORNEJO','ACORNEJO','$2b$10$LkOi61GJ5AodCVAOi0K80.i1STiuLLESeZ3YEKgRmTiu6WyQuol2G',3,2,'0','1','1'),(13,'RICARDO','ESQUIVEL','RESQUIVEL','$2b$10$tJzkhsSAeEzzUZF1B5A3P.19kVBjm1vJgABAxect5L1eFf11EsM86',3,2,'1','1','1'),(14,'claudia','liquez','cliquez','$2b$10$ivIt6ZBF6ZvAfzKZSrJTB.rGuRLeuOmfkfIldXFq2jGOfORkqsQvG',3,5,'1','1','1'),(15,'Patricia','alfaro','palfaro','$2b$10$KNH/TFoKF6hEXPZWCvgaluWR2NtSx47O4ae1fiOo5CfSUSZFUXJq.',3,6,'0','1','1'),(16,'jacqueline','hernandez','JHERNANDEZ','$2b$10$DhU3JJu89dgInmYu2Lgmouj4uqCj.OUbMHeeBP84t4TaS486F7TRy',3,8,'0','1','1'),(17,'DELMY','VASQUEZ','DVASQUEZ','$2b$10$DjPU8wq6rVh2DCUNpLwwJOOAOjl/t2mbl18AdTkigZS78jrBfTz6C',3,7,'0','1','1'),(18,'NANCY','VASQUEZ','NVASQUEZ','$2b$10$MgcJS/bG3YfJ7D.UmB5nPeSBtPjB/mFvw6w4gHG/ciiaJR3Qqk2Xi',3,8,'0','1','1'),(19,'roberto','reyes','rreyes','$2b$10$8qhtnKzTlSkcMZVZKIr6E.h8WC96Eh/IK0dP/DQ1dsPL4phwopag.',1,9,'0','0','1'),(20,'Martin','aguirre','maguirre','$2b$10$mZ/cztNixXG5546yarTuXOFowt1E6kBi6ogwSu4NSAF2kRh1I0qGe',3,1,'1','0','1'),(21,'luis','martinez','lmartinez','$2b$10$87WF0REKG9NjAi.bxrN/P.pXLwZ7MTTJ1pKLS8osm1iUQAz7d/xUa',3,1,'1','0','1'),(22,'Correo','Electronico','celectronico',NULL,NULL,NULL,'1','1','1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vida_estado_correspondencia`
--

DROP TABLE IF EXISTS `vida_estado_correspondencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vida_estado_correspondencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcorrespondencia` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `idusuarioaccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,1,1,'2021-11-19 09:18:17',10),(2,1,2,'2021-11-19 09:22:06',6),(3,1,3,'2021-11-19 09:22:17',6),(4,2,1,'2021-11-19 09:36:42',10),(5,3,1,'2021-11-19 11:03:40',10),(6,4,1,'2021-11-19 12:32:24',10),(7,5,1,'2021-11-19 12:43:33',10),(8,6,1,'2021-11-19 13:15:01',10),(9,7,1,'2021-11-19 13:17:30',10),(10,8,1,'2021-11-19 13:28:15',10),(11,6,2,'2021-11-19 13:29:30',3),(12,9,1,'2021-11-19 13:29:17',10),(13,6,3,'2021-11-19 13:29:55',3),(14,10,1,'2021-11-19 13:30:05',10),(15,11,1,'2021-11-19 13:30:55',10),(16,12,1,'2021-11-19 13:32:07',10),(17,13,1,'2021-11-19 13:33:06',10),(18,2,2,'2021-11-19 13:34:05',3),(19,2,3,'2021-11-19 13:34:12',3),(20,14,1,'2021-11-19 13:34:04',10),(21,15,1,'2021-11-19 13:34:55',10),(22,16,1,'2021-11-19 13:35:59',10),(23,17,1,'2021-11-19 13:40:16',10),(24,18,1,'2021-11-19 13:42:28',10),(25,19,1,'2021-11-19 13:43:20',10),(26,20,1,'2021-11-19 13:44:07',10),(27,21,1,'2021-11-19 13:44:59',10),(28,22,1,'2021-11-19 13:45:43',10),(29,23,1,'2021-11-19 13:47:16',10),(30,24,1,'2021-11-19 14:23:27',10),(31,5,2,'2021-11-19 14:29:51',9),(32,5,3,'2021-11-19 14:29:59',9),(33,18,2,'2021-11-19 14:33:13',9),(34,18,3,'2021-11-19 14:33:24',9),(35,23,2,'2021-11-19 14:33:43',9),(36,23,3,'2021-11-19 14:33:49',9),(37,22,2,'2021-11-19 14:33:57',9),(38,19,2,'2021-11-19 14:35:36',9),(39,19,3,'2021-11-19 14:35:41',9),(40,20,2,'2021-11-19 14:35:55',9),(41,20,3,'2021-11-19 14:36:00',9),(42,21,2,'2021-11-19 14:36:08',9),(43,21,3,'2021-11-19 14:36:14',9),(44,22,3,'2021-11-19 14:36:18',9),(45,15,2,'2021-11-19 15:06:57',6),(46,7,2,'2021-11-19 15:07:50',6),(47,3,2,'2021-11-19 15:14:19',6),(48,25,1,'2021-11-19 15:16:30',10),(49,3,3,'2021-11-19 16:02:39',6),(50,7,3,'2021-11-19 16:02:49',6),(51,15,3,'2021-11-19 16:02:52',6),(52,26,1,'2021-11-19 16:06:21',10),(53,5,4,'2021-11-19 16:08:23',9),(54,27,1,'2021-11-19 16:13:37',10),(55,28,1,'2021-11-19 16:40:20',10),(56,29,1,'2021-11-19 16:41:13',10);
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

-- Dump completed on 2021-11-19 16:51:54
