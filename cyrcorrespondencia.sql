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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (3,1,2),(4,1,3),(5,1,4),(11,2,1),(17,3,3),(19,1,5),(20,1,6),(21,1,7),(22,1,8),(23,1,9),(24,2,2),(25,2,3),(27,3,5),(28,3,1),(29,1,1),(31,2,5),(32,4,1),(34,4,3),(35,4,5),(36,4,6),(37,6,1),(38,6,2),(39,6,3),(40,6,4),(41,6,6),(42,4,2),(43,2,6);
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
INSERT INTO `aseguradoras` VALUES (1,'﻿ABANK','1'),(2,'ACSA','1'),(3,'ASSA','1'),(4,'ASSA','0'),(5,'ASSA COSTA RICA','0'),(6,'ASSA GUATEMALA','0'),(7,'ASSA GUATEMALA','0'),(8,'ASSA HONDURAS','0'),(9,'ASSA NICARAGUA','0'),(10,'ASSA VIDA','0'),(11,'AZUL','1'),(12,'AZUL VIDA','0'),(13,'CENTRAL','0'),(14,'DAVIVIENDA','1'),(15,'DAVIVIENDA','0'),(16,'FICOHSA HONDURAS','0'),(17,'FUTURO','1'),(18,'INISER','1'),(19,'MAPFRE','1'),(20,'MAPFRE COSTA RICA','0'),(21,'MAPFRE GUATEMALA','0'),(22,'MAPFRE HONDURAS','0'),(23,'MAPFRE NICARAGUA','0'),(24,'PACIFICO','1'),(25,'PALIG','1'),(26,'POPULAR','1'),(27,'QUALITAS','1'),(28,'SEGUROS AGROMERCANTIL','1'),(29,'SEGUROS SURA','1'),(30,'SISA','1'),(31,'SISA SV','0'),(32,'SISA VIDA','0'),(33,'SURA VIDA','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciones`
--

LOCK TABLES `asignaciones` WRITE;
/*!40000 ALTER TABLE `asignaciones` DISABLE KEYS */;
INSERT INTO `asignaciones` VALUES (1,14,1,'2021-11-19 09:22:17',6,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,6,'2021-11-19 13:29:55',3,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,2,'2021-11-19 13:34:12',3,NULL,NULL,NULL,NULL,NULL,NULL),(4,9,5,'2021-11-19 14:29:59',9,NULL,'2021-11-23 13:43:26','2021-11-23 13:47:40','2021-11-23 14:25:52',NULL,NULL),(5,9,18,'2021-11-19 14:33:24',9,NULL,NULL,NULL,NULL,NULL,NULL),(6,18,23,'2021-11-19 14:33:49',9,NULL,NULL,NULL,NULL,NULL,NULL),(7,16,19,'2021-11-19 14:35:41',9,NULL,'2021-11-23 08:27:52',NULL,NULL,'1','enviando por correo 20/11/21'),(8,9,20,'2021-11-19 14:36:00',9,NULL,NULL,NULL,NULL,NULL,NULL),(9,16,21,'2021-11-19 14:36:14',9,NULL,'2021-11-23 08:27:47',NULL,NULL,'1','enviado el 20/11/21'),(10,16,22,'2021-11-19 14:36:18',9,NULL,'2021-11-23 08:28:01',NULL,NULL,'1','enviado por correo el 20/11/21'),(11,8,3,'2021-11-19 16:02:39',6,NULL,'2021-11-23 08:34:28',NULL,NULL,'1','CORREO DE FECHA 20/11/2021'),(12,14,7,'2021-11-19 16:02:49',6,NULL,NULL,NULL,NULL,NULL,NULL),(13,14,15,'2021-11-19 16:02:52',6,NULL,'2021-11-23 13:39:17','2021-11-23 13:39:23',NULL,NULL,NULL),(14,3,25,'2021-11-20 08:40:25',3,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,14,'2021-11-20 08:40:39',3,NULL,NULL,NULL,NULL,NULL,NULL),(16,12,31,'2021-11-20 08:41:03',3,NULL,NULL,NULL,NULL,NULL,NULL),(17,4,24,'2021-11-20 08:41:30',3,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,4,'2021-11-20 08:42:23',3,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,8,'2021-11-20 08:42:59',3,NULL,NULL,NULL,NULL,NULL,NULL),(20,4,9,'2021-11-20 08:43:26',3,NULL,'2021-11-23 15:02:14',NULL,NULL,'1','ENVIADO 20 DE NOVIEMBRE DE 2021'),(21,4,10,'2021-11-20 08:44:08',3,NULL,'2021-11-23 15:09:57','2021-11-23 15:10:23','2021-11-23 15:10:42',NULL,NULL),(22,2,11,'2021-11-20 08:45:03',3,NULL,NULL,NULL,NULL,NULL,NULL),(23,2,13,'2021-11-20 08:45:56',3,NULL,NULL,NULL,NULL,NULL,NULL),(24,3,12,'2021-11-20 08:46:13',3,NULL,NULL,NULL,NULL,NULL,NULL),(25,11,17,'2021-11-20 09:23:42',11,NULL,'2021-11-22 16:18:18','2021-11-22 16:18:24','2021-11-22 16:20:56',NULL,NULL),(26,8,26,'2021-11-20 10:51:28',6,NULL,'2021-11-22 08:59:20',NULL,NULL,'1','ENVIADO A LA COMPAÑIA EN CORREO DE FECHA 20/11/2021'),(27,14,27,'2021-11-20 10:51:51',6,NULL,NULL,NULL,NULL,NULL,NULL),(28,14,28,'2021-11-20 10:52:20',6,NULL,NULL,NULL,NULL,NULL,NULL),(29,14,29,'2021-11-20 10:52:22',6,NULL,NULL,NULL,NULL,NULL,NULL),(30,14,35,'2021-11-20 10:52:32',6,NULL,NULL,NULL,NULL,NULL,NULL),(31,8,33,'2021-11-20 10:52:40',6,NULL,'2021-11-22 10:12:54',NULL,NULL,'1','ENVIADO A LA COMPAÑIA EN CORREO DE FECHA 20/11/2021'),(32,8,34,'2021-11-20 10:52:42',6,NULL,'2021-11-22 10:12:22',NULL,NULL,'1','ENVIADO A LA COMPAÑIA EN CORREO DE FECHA 20/11/2021'),(33,15,41,'2021-11-20 11:12:49',7,NULL,'2021-11-23 12:37:17','2021-11-23 12:37:36','2021-11-23 12:37:41',NULL,NULL),(34,15,42,'2021-11-20 11:13:00',7,NULL,'2021-11-23 13:49:09','2021-11-23 13:49:22',NULL,NULL,NULL),(35,3,32,'2021-11-20 11:16:07',3,NULL,NULL,NULL,NULL,NULL,NULL),(36,11,38,'2021-11-20 11:35:43',11,NULL,'2021-11-23 08:34:16',NULL,NULL,'2','CHEQUE SERA ENTREGADO AL ING. PINEDA'),(37,11,37,'2021-11-20 11:35:48',11,NULL,'2021-11-22 08:37:09','2021-11-22 14:46:16','2021-11-23 08:50:05',NULL,NULL),(38,11,30,'2021-11-20 11:38:08',11,NULL,'2021-11-22 16:22:45','2021-11-22 16:22:50','2021-11-22 16:23:02',NULL,NULL),(39,17,16,'2021-11-20 11:40:02',11,NULL,'2021-11-22 16:50:37',NULL,NULL,'2','ASEGURADO PASARA A RETIRAR CHEQUES DE REEMBOLSO A C Y R  CON CARTA DE FECHA 20/11/21'),(40,11,39,'2021-11-20 11:44:08',11,NULL,'2021-11-23 13:50:21',NULL,NULL,'1','2 RECLAMOS REGISTRADOS EN PORTAL DE ASESUISA EN FECHA 23.11.2021 GASTOS JAVIER Y DANIELLA'),(41,11,36,'2021-11-20 11:44:26',11,NULL,'2021-11-23 13:41:05','2021-11-23 13:41:10',NULL,NULL,NULL),(42,11,40,'2021-11-20 11:45:04',11,NULL,'2021-11-23 13:42:20',NULL,NULL,'1','DOCUMENTOS DE RECLAMOS INGRESADOS EN PORTAL DE ASESUISA EN FECHA 23.11.2021'),(43,17,43,'2021-11-20 11:45:14',11,NULL,'2021-11-22 15:35:27','2021-11-22 15:35:57','2021-11-23 08:50:29',NULL,NULL),(44,18,47,'2021-11-22 09:55:24',18,NULL,'2021-11-22 13:09:19','2021-11-22 14:46:20','2021-11-23 08:50:19',NULL,NULL),(45,3,44,'2021-11-22 13:40:23',3,NULL,NULL,NULL,NULL,NULL,NULL),(46,4,45,'2021-11-22 13:40:56',3,NULL,NULL,NULL,NULL,NULL,NULL),(47,2,51,'2021-11-22 13:41:02',3,NULL,NULL,NULL,NULL,NULL,NULL),(48,14,57,'2021-11-22 13:43:26',14,NULL,'2021-11-23 08:30:52','2021-11-23 08:31:57','2021-11-23 14:26:17',NULL,NULL),(49,17,59,'2021-11-22 13:49:46',17,NULL,'2021-11-22 15:35:31','2021-11-22 15:35:59','2021-11-23 14:26:58',NULL,NULL),(50,17,52,'2021-11-22 15:13:16',11,NULL,'2021-11-23 13:43:15','2021-11-23 13:49:54',NULL,NULL,NULL),(51,11,56,'2021-11-22 15:13:30',11,NULL,'2021-11-23 13:41:39','2021-11-23 13:47:49',NULL,NULL,NULL),(52,18,65,'2021-11-22 16:21:03',9,NULL,'2021-11-23 13:46:05','2021-11-23 13:49:37',NULL,NULL,NULL),(53,8,46,'2021-11-22 17:01:20',6,NULL,'2021-11-23 15:16:34',NULL,NULL,'1','información enviada por whatsapp'),(54,6,48,'2021-11-22 17:01:39',6,NULL,'2021-11-23 16:20:04',NULL,NULL,'1','Enviado por correo electrónico el 22.11.2021'),(55,14,50,'2021-11-22 17:02:20',6,NULL,NULL,NULL,NULL,NULL,NULL),(56,8,53,'2021-11-22 17:02:40',6,NULL,'2021-11-23 15:16:37',NULL,NULL,'1','enviada por whatsapp'),(57,14,54,'2021-11-22 17:02:56',6,NULL,NULL,NULL,NULL,NULL,NULL),(58,8,60,'2021-11-22 17:03:36',6,NULL,NULL,NULL,NULL,NULL,NULL),(59,14,62,'2021-11-22 17:03:53',6,NULL,NULL,NULL,NULL,NULL,NULL),(60,6,63,'2021-11-22 17:04:15',6,NULL,'2021-11-23 16:20:09',NULL,NULL,'1','Enviado por correo electrónico el 22.11.2021'),(61,6,64,'2021-11-22 17:04:24',6,NULL,'2021-11-23 16:20:15',NULL,NULL,'1','Enviado por correo electrónico el 22.11.2021'),(62,6,66,'2021-11-22 17:04:27',6,NULL,'2021-11-23 16:20:18',NULL,NULL,'1','Enviado a ASSA el 22.11.2021'),(63,14,73,'2021-11-22 17:04:49',6,NULL,NULL,NULL,NULL,NULL,NULL),(64,6,74,'2021-11-22 17:04:55',6,NULL,NULL,NULL,NULL,NULL,NULL),(65,14,76,'2021-11-22 17:05:33',6,NULL,NULL,NULL,NULL,NULL,NULL),(66,12,75,'2021-11-23 09:27:38',3,NULL,NULL,NULL,NULL,NULL,NULL),(67,3,70,'2021-11-23 09:27:46',3,NULL,NULL,NULL,NULL,NULL,NULL),(68,12,68,'2021-11-23 09:34:17',3,NULL,NULL,NULL,NULL,NULL,NULL),(69,4,67,'2021-11-23 09:34:30',3,NULL,NULL,NULL,NULL,NULL,NULL),(70,2,69,'2021-11-23 09:34:37',3,NULL,NULL,NULL,NULL,NULL,NULL),(71,3,61,'2021-11-23 09:34:44',3,NULL,NULL,NULL,NULL,NULL,NULL),(72,15,58,'2021-11-23 09:45:50',7,NULL,'2021-11-23 13:45:28','2021-11-23 13:48:54',NULL,NULL,NULL),(73,15,72,'2021-11-23 09:45:54',7,NULL,'2021-11-23 13:49:12','2021-11-23 13:50:03',NULL,NULL,NULL),(74,18,87,'2021-11-23 10:42:35',9,NULL,NULL,NULL,NULL,NULL,NULL),(75,9,77,'2021-11-23 10:42:39',9,NULL,NULL,NULL,NULL,NULL,NULL),(76,17,90,'2021-11-23 11:01:29',17,NULL,'2021-11-23 13:46:14','2021-11-23 13:48:05',NULL,NULL,NULL),(77,11,86,'2021-11-23 12:47:07',11,NULL,'2021-11-23 13:41:51','2021-11-23 13:48:24',NULL,NULL,NULL),(78,5,88,'2021-11-23 13:22:18',7,NULL,'2021-11-23 13:34:06','2021-11-23 13:34:30','2021-11-23 13:34:36',NULL,NULL),(79,15,89,'2021-11-23 13:22:26',7,NULL,NULL,NULL,NULL,NULL,NULL),(80,17,71,'2021-11-23 13:26:01',11,NULL,NULL,NULL,NULL,NULL,NULL),(81,17,82,'2021-11-23 13:26:29',11,NULL,NULL,NULL,NULL,NULL,NULL),(82,17,83,'2021-11-23 13:26:35',11,NULL,NULL,NULL,NULL,NULL,NULL),(83,17,84,'2021-11-23 13:26:42',11,NULL,NULL,NULL,NULL,NULL,NULL),(84,11,85,'2021-11-23 13:26:48',11,NULL,NULL,NULL,NULL,NULL,NULL),(85,11,98,'2021-11-23 13:30:24',11,NULL,NULL,NULL,NULL,NULL,NULL),(86,3,79,'2021-11-23 13:48:35',3,NULL,NULL,NULL,NULL,NULL,NULL),(87,3,80,'2021-11-23 13:48:37',3,NULL,NULL,NULL,NULL,NULL,NULL),(88,3,92,'2021-11-23 13:48:42',3,NULL,NULL,NULL,NULL,NULL,NULL),(89,8,81,'2021-11-23 14:17:47',8,NULL,NULL,NULL,NULL,NULL,NULL),(90,9,55,'2021-11-23 15:44:23',9,NULL,NULL,NULL,NULL,NULL,NULL),(91,16,96,'2021-11-23 15:44:33',9,NULL,NULL,NULL,NULL,NULL,NULL),(92,14,49,'2021-11-23 16:02:49',6,NULL,NULL,NULL,NULL,NULL,NULL),(93,14,78,'2021-11-23 16:04:33',6,NULL,NULL,NULL,NULL,NULL,NULL),(94,14,93,'2021-11-23 16:05:55',6,NULL,NULL,NULL,NULL,NULL,NULL),(95,14,94,'2021-11-23 16:06:59',6,NULL,NULL,NULL,NULL,NULL,NULL),(96,6,95,'2021-11-23 16:07:06',6,NULL,NULL,NULL,NULL,NULL,NULL),(97,14,100,'2021-11-23 16:07:23',6,NULL,NULL,NULL,NULL,NULL,NULL),(98,14,102,'2021-11-23 16:07:58',6,NULL,NULL,NULL,NULL,NULL,NULL),(99,14,103,'2021-11-23 16:08:04',6,NULL,NULL,NULL,NULL,NULL,NULL),(100,6,91,'2021-11-23 16:47:54',6,NULL,NULL,NULL,NULL,NULL,NULL),(101,8,107,'2021-11-23 16:50:15',6,NULL,NULL,NULL,NULL,NULL,NULL),(102,17,108,'2021-11-23 16:51:51',17,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondencia_recibida`
--

LOCK TABLES `correspondencia_recibida` WRITE;
/*!40000 ALTER TABLE `correspondencia_recibida` DISABLE KEYS */;
INSERT INTO `correspondencia_recibida` VALUES (1,19,'2021-11-10','2021-11-19','08:55',22,'pimi','anexo declaracion mensual de trma-214068 y aviso de cobro','0000-00-00','aseguradora','19',5,'electronico','2021-11-19 09:18:17',10,3,'0','2021-11-19 09:22:06'),(2,17,'2021-11-16','2021-11-19','08:45',22,'JOSE ALBERTO ORTIZ','ANEXO DE MODIFICACION NO. 95618/131713 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'electronico','2021-11-19 09:36:42',10,3,'0','2021-11-19 13:34:05'),(3,4,'2021-11-19','2021-11-19','11:00',22,'ANA LETICIA CALDERON DE REVELO','SOLICITUD DE EXCLUSION VEHICULO','0000-00-00','asegurado','ASEGURADO',5,'electronico','2021-11-19 11:03:40',10,9,'0','2021-11-19 15:14:19'),(4,19,'2021-11-19','2021-11-19','11:16',22,'impressa','2 cedulas de modificacion no. 09b715/33512 y 70b279/33514','0000-00-00','aseguradora','3',2,'electronico','2021-11-19 12:32:24',10,3,'0','2021-11-20 08:42:20'),(5,14,'2021-11-19','2021-11-19','12:27',22,'cassa','oferta de renovacion de vcd-8141 firmada por el asegurado','0000-00-00','asegurado','asegurado',8,'electronico','2021-11-19 12:43:33',10,7,'0','2021-11-19 14:29:51'),(6,19,'2021-11-19','2021-11-19','12:58',22,'QUALITAS','COBRO TRIMESTRASL DE VC-33654','0000-00-00','aseguradora','25',2,'electronico','2021-11-19 13:15:01',10,3,'0','2021-11-19 13:29:30'),(7,19,'2021-11-19','2021-11-19','01:13',22,'LIOD','CERT. DE VC-131','0000-00-00','aseguradora','12',5,'electronico','2021-11-19 13:17:30',10,3,'0','2021-11-19 15:07:50'),(8,17,'2021-11-19','2021-11-19','11:45',21,'RAFAEL JAIME ALVAREZ','ANEXO DE MODIFICACION NO. 95686/131733 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:28:15',10,3,'0','2021-11-20 08:42:56'),(9,17,'2021-11-19','2021-11-19','11:45',21,'LOLY AGUILAR','ANEXO DE MODIFICACION NO. 97051/131736 Y AVISO DE COBTO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:29:17',10,9,'0','2021-11-20 08:43:23'),(10,17,'2021-11-19','2021-11-19','11:45',21,'JOSE ALBERTO ORTI','ANEXO DE MODIFICACION NO. 95618/131713 Y AVISO DE COBRO','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:30:05',10,7,'0','2021-11-20 08:44:05'),(11,18,'2021-11-19','2021-11-19','11:45',21,'GERARDO VALENZUELA','ANEXO DE CANCELACION NO. 95697/262848','0000-00-00','aseguradora','27',2,'fisico','2021-11-19 13:30:55',10,4,'0','2021-11-20 08:44:56'),(12,11,'2021-11-19','2021-11-19','11:45',21,'CASSA','ANEXO DE RENOVACION DE RECI-213251 Y AVISO DE COBRO','2021-09-28','aseguradora','30',2,'fisico','2021-11-19 13:32:07',10,3,'0','2021-11-20 08:45:15'),(13,19,'2021-11-19','2021-11-19','09:20',21,'SERSAPROSA','CEDULA DE MODIFICACINO DE VICO-516017/31 Y CERT. ','0000-00-00','aseguradora','30',2,'fisico','2021-11-19 13:33:06',10,3,'0','2021-11-20 08:45:52'),(14,10,'2021-11-19','2021-11-19','09:20',21,'INMOB. LA CASA','POLIZA INICIAL DE TORI-226102 Y AVISO DE COBRO','0000-00-00','aseguradora','30',2,'fisico','2021-11-19 13:34:04',10,3,'0','2021-11-20 08:40:35'),(15,2,'2021-11-19','2021-11-19','10:40',21,'COND. SPAZIO','CESION DE BENEFICIO DE IN-18613/19','0000-00-00','aseguradora','30',5,'fisico','2021-11-19 13:34:55',10,6,'0','2021-11-19 15:06:57'),(16,1,'2021-11-19','2021-11-19','09:20',21,'MARTA FIGUEROA','3 CHEQUES NO. 174497, 174498, 174499 Y FINIQUITOS','0000-00-00','aseguradora','30',7,'fisico','2021-11-19 13:35:59',10,9,'0','2021-11-20 09:22:57'),(17,1,'2021-11-19','2021-11-19','09:20',21,'ANA ZUAZU','CHEQUE NO. 174495 POR $ 157.22 Y FINIQUITO','0000-00-00','aseguradora','30',7,'fisico','2021-11-19 13:40:16',10,7,'0','2021-11-20 09:23:28'),(18,11,'2021-11-19','2021-11-19','11:45',21,'LUCIA DE CORPEÑO','3 ANEXOS DE RENOVACION NO. 97500, 97499, 97504 Y AVISOS DE COBROS','2021-12-31','aseguradora','27',8,'fisico','2021-11-19 13:42:28',10,3,'0','2021-11-19 14:33:13'),(19,11,'2021-11-19','2021-11-19','11:45',21,'ANNA CATANI','ANEXO DE RENOVACION DE 97498 Y AVISOS DE COBROS','2021-12-31','aseguradora','27',8,'fisico','2021-11-19 13:43:20',10,9,'0','2021-11-19 14:35:36'),(20,11,'2021-11-19','2021-11-19','11:45',21,'CONACERO GUATEMALA','ANEXO DE RENOVACION NO. 97505 Y AVISO DE COBRO','2021-12-06','aseguradora','27',8,'fisico','2021-11-19 13:44:07',10,3,'0','2021-11-19 14:35:55'),(21,11,'2021-11-19','2021-11-19','11:45',21,'IVONNE DE OCHOA','ANEXO DE RENOVACION DE 97506 Y AVISO DE COBRO','2021-12-05','aseguradora','27',8,'fisico','2021-11-19 13:44:59',10,9,'0','2021-11-19 14:36:08'),(22,11,'2021-11-19','2021-11-19','11:45',21,'ANA MARCELA DE MOLINA','ANEXO DE RENOVACION DE 97485 Y AVISO DE COBRO','2021-12-03','aseguradora','27',8,'fisico','2021-11-19 13:45:43',10,9,'0','2021-11-19 14:33:57'),(23,11,'2021-11-19','2021-11-19','11:45',21,'W INGENIERIA Y SERVICIOS','5 ANEXOS DE RENOVACION NO. 97511 AL 97514, 97516 Y AVISOS DE COBROS','2021-12-19','aseguradora','27',8,'fisico','2021-11-19 13:47:16',10,3,'0','2021-11-19 14:33:43'),(24,11,'2021-11-19','2021-11-19','01:54',22,'dizucar','2 anexos de renovacion gmg-1-35-56 y vg-1-36-50, y avisos de cobros','2021-10-30','aseguradora','1',2,'electronico','2021-11-19 14:23:27',10,3,'0','2021-11-20 08:41:26'),(25,19,'2021-11-19','2021-11-19','03:06',22,'QUALITAS','COBRO MENSUALDE 336543','0000-00-00','aseguradora','25',2,'electronico','2021-11-19 15:16:30',10,3,'0','2021-11-20 08:40:18'),(26,19,'2021-11-19','2021-11-19','04:03',22,'coop. cuzcachapa','solicitud de cambio de propiertario','0000-00-00','asegurado','coop. cuzcachapa',5,'electronico','2021-11-19 16:06:21',10,9,'0','2021-11-20 10:51:24'),(27,19,'2021-11-19','2021-11-19','04:07',22,'fudem','anexo declaracion mensual de t-16647/28 y aviso de cobro','0000-00-00','aseguradora','19',5,'electronico','2021-11-19 16:13:37',10,3,'0','2021-11-20 10:51:42'),(28,19,'2021-11-19','2021-11-19','03:35',20,'AMERICAN IND. PARK','CONSTANCIAS DE RENOVACION DE CESION DE INC-16915','0000-00-00','aseguradora','19',5,'fisico','2021-11-19 16:40:20',10,3,'0','2021-11-20 10:52:17'),(29,19,'2021-11-19','2021-11-19','03:35',20,'GIMNASIOS DE EL SALVADOR','INFORME DE AUDITORIA','0000-00-00','aseguradora','19',5,'fisico','2021-11-19 16:41:13',10,3,'0','2021-11-20 10:52:18'),(30,19,'2021-11-20','2021-11-19','16:00',11,'LUZ DINORA DIAZ DE FERNANDEZ','RECLAMO DE GASTOS MEDICOS','0000-00-00','asegurado','LUZ DINORA DIAZ DE FERNANDEZ',7,'fisico','2021-11-20 08:32:56',8,7,'0','2021-11-20 09:23:52'),(31,10,'2021-11-20','2021-11-19','23:17',22,'JAIME FUNES','poliza inicial no. 41179 y avisos de cobro','0000-00-00','aseguradora','33',2,'electronico','2021-11-20 08:38:31',10,3,'0','2021-11-20 08:40:56'),(32,17,'2021-11-20','2021-11-19','19:37',22,'camco','anexo de modificacion de trin-199780 y aviso de cobro','0000-00-00','aseguradora','30',2,'electronico','2021-11-20 08:43:16',10,3,'0','2021-11-20 11:16:01'),(33,19,'2021-11-20','2021-11-19','17:24',22,'lactosa','declaracion de existencias de octubre','0000-00-00','asegurado','lactosa',5,'electronico','2021-11-20 08:47:22',10,9,'0','2021-11-20 10:52:33'),(34,19,'2021-11-20','2021-11-19','17:31',22,'cassa','declaracion de existencias mes de octubre','0000-00-00','asegurado','cassa',5,'electronico','2021-11-20 08:48:34',10,9,'0','2021-11-20 10:52:34'),(35,3,'2021-11-20','2021-11-19','16:36',22,'cetya','solicitud de inclusion seguro deuda','0000-00-00','asegurado','cetya',5,'electronico','2021-11-20 08:57:15',10,3,'0','2021-11-20 10:52:25'),(36,5,'2021-11-20','2021-11-19','15:00',21,'PERSONAL EXPRESS','carta declinando reclamo de vico-517107','0000-00-00','aseguradora','30',7,'fisico','2021-11-20 09:14:32',10,6,'0','2021-11-20 11:43:49'),(37,1,'2021-11-20','2021-11-19','16:15',22,'grupo econ-william renderos','cheque no. 19309 por $ 614.93 y finiquito','0000-00-00','aseguradora','11',7,'fisico','2021-11-20 09:15:55',10,7,'0','2021-11-20 11:34:33'),(38,1,'2021-11-20','2021-11-19','16:15',21,'cyr-carlos pineda','cheque no. 19310 por $ 231.88 y finiquito','0000-00-00','aseguradora','11',7,'fisico','2021-11-20 09:16:44',10,9,'0','2021-11-20 11:34:44'),(39,5,'2021-11-20','2021-11-19','15:50',21,'anamaria montenegro hernandez','documentos de reclamo de gastos medicos','0000-00-00','asegurado','anamaria montenegro hernandez',7,'fisico','2021-11-20 09:17:31',10,9,'0','2021-11-20 11:44:05'),(40,5,'2021-11-20','2021-11-19','15:20',21,'marcos godoy','documentos de reclamo de gastos medicos','0000-00-00','asegurado','marcos godoy',7,'fisico','2021-11-20 09:18:17',10,9,'0','2021-11-20 11:44:56'),(41,1,'2021-11-20','2021-11-19','16:15',21,'carlos boza','cheque no. 21447 por $ 1,584.70 y finiqutio','0000-00-00','aseguradora','11',6,'fisico','2021-11-20 09:18:54',10,7,'0','2021-11-20 11:12:38'),(42,19,'2021-11-20','2021-11-19','15:20',21,'COND. TORRE SAN BENITO','finiquitos firmados por el asegura','0000-00-00','asegurado','COND. TORRE SAN BENITO',6,'fisico','2021-11-20 09:19:30',10,6,'0','2021-11-20 11:12:51'),(43,5,'2021-11-20','2021-11-20','10:15',20,'CINDY ARDON','documento de reclamos de gastos medicos','0000-00-00','asegurado','CINDY ARDON',7,'fisico','2021-11-20 11:09:25',10,7,'0','2021-11-20 11:45:10'),(44,19,'2021-11-22','2021-11-22','08:24',22,'AMERICAN IND. PARK','ANEXO DE MODIFICACION NO. 09B738/33525','0000-00-00','aseguradora','3',2,'electronico','2021-11-22 08:55:28',10,3,'0','2021-11-22 13:40:19'),(45,10,'2021-11-22','2021-11-22','08:17',22,'JAIME FUNES','POLIZA INICIAL NO. 41179/4 Y AVISO DE COBRO','0000-00-00','aseguradora','29',2,'electronico','2021-11-22 09:02:51',10,3,'0','2021-11-22 13:40:51'),(46,4,'2021-11-22','2021-11-21','20:35',22,'CITY EXPRESS','SOLICITUD DE EXCLUSION 3 MOTOS','0000-00-00','asegurado','CITY EXPRESS',5,'electronico','2021-11-22 09:06:54',10,9,'0','2021-11-22 17:01:15'),(47,10,'2021-11-22','2021-11-22','09:53',22,'CARMEN ELENA FELIZA MONTENEGRO DE JOKISCH','DOCUMENTOS PARA CONTRATACION DE SEGURO DE VIDA','0000-00-00','otro','CARMEN ELENA FELIZA MONTENEGRO DE JOKISCH',8,'electronico','2021-11-22 09:55:11',18,7,'0','2021-11-22 09:55:18'),(48,3,'2021-11-22','2021-11-22','10:01',22,'cassa','solicitud de inclusion de equipo electronico 18a3','0000-00-00','asegurado','cassa',5,'electronico','2021-11-22 10:21:56',10,9,'0','2021-11-22 17:01:34'),(49,19,'2021-11-22','2021-11-22','09:40',22,'PIMI','anexo declaracion mensual de trma-214068 y aviso de cobro','0000-00-00','aseguradora','30',5,'electronico','2021-11-22 10:30:03',10,3,'0','2021-11-23 16:02:44'),(50,3,'2021-11-22','2021-11-22','09:26',22,'CETYA','SOLICITUD INCLUSION SEGURO DEUDA','0000-00-00','asegurado','CETYA',5,'electronico','2021-11-22 10:33:57',10,3,'0','2021-11-22 17:02:14'),(51,11,'2021-11-22','2021-11-22','09:05',22,'INV. SANTA TERESA','anexo de renovacion no. 15b610/152930 y aviso de cobro','2021-11-18','aseguradora','3',2,'electronico','2021-11-22 10:38:42',10,3,'0','2021-11-22 13:40:57'),(52,5,'2021-11-22','2021-11-22','09:39',8,'INFRASAL','2 formularios de reclamo paciente angelica maria de romero dependiente de julio romero','0000-00-00','asegurado','INFRASAL',7,'fisico','2021-11-22 10:39:08',8,6,'0','2021-11-22 15:13:07'),(53,4,'2021-11-22','2021-11-22','08:51',22,'CITY EXPRESS','solicitud de exclusion 1 moto','0000-00-00','asegurado','CITY EXPRESS',5,'electronico','2021-11-22 10:41:37',10,9,'0','2021-11-22 17:02:36'),(54,19,'2021-11-22','2021-11-22','08:56',22,'HENRIQUEZ','anexo declaracion mensual de t-01271 y avisos de cobros','0000-00-00','asegurado','HENRIQUEZ',5,'electronico','2021-11-22 10:45:31',10,3,'0','2021-11-22 17:02:52'),(55,19,'2021-11-22','2021-11-22','12:20',22,'bernardo javier bonilla','solicitud de ayuda para asegurar nuevo vehiculo','0000-00-00','asegurado','bernardo javier bonilla',8,'electronico','2021-11-22 12:48:36',10,3,'0','2021-11-23 15:44:20'),(56,19,'2021-11-20','2021-11-20','09:00',21,'dizucar','documentos de reclamo de fallecido','0000-00-00','asegurado','dizucar',7,'fisico','2021-11-22 13:29:01',10,6,'0','2021-11-22 15:13:24'),(57,19,'2021-11-22','2021-11-22','13:40',14,'INVERSIONES VIDA, S.A. DE C.V.','certificados seguro vida pol.140','0000-00-00','aseguradora','11',5,'fisico','2021-11-22 13:43:05',14,7,'0','2021-11-22 13:43:18'),(58,19,'2021-11-20','2021-11-20','09:20',21,'GALVANIZA','finiquitos firmados por el asegurado','0000-00-00','asegurado','GALVANIZA',6,'fisico','2021-11-22 13:48:26',10,6,'0','2021-11-23 09:45:38'),(59,19,'2021-11-22','2021-11-22','13:47',11,'RENATA EUGENIA MORENO ','DEVOLUCION DE CREDITO FISCAL','0000-00-00','asegurado','RENATA EUGENIA MORENO ',7,'fisico','2021-11-22 13:49:24',17,7,'0','2021-11-22 13:49:37'),(60,3,'2021-11-22','2021-11-22','13:31',14,'SERSAPROSA','INCLUSIONES-EXCLUSIONES ','0000-00-00','asegurado','SERSAPROSA',5,'fisico','2021-11-22 13:51:21',14,4,'0','2021-11-22 17:03:30'),(61,19,'2021-11-22','2021-11-22','13:39',22,'almapac','cedula de modificacion de vc-2874/1741527','0000-00-00','aseguradora','19',2,'electronico','2021-11-22 14:19:43',10,3,'0','2021-11-23 09:34:38'),(62,19,'2021-11-22','2021-11-22','13:27',22,'cetya','solicitud de inclusion seguro deuda','0000-00-00','asegurado','cetya',5,'electronico','2021-11-22 14:21:11',10,3,'0','2021-11-22 17:03:47'),(63,3,'2021-11-22','2021-11-22','11:45',22,'cassa','inclusion de 7 vehiculos','0000-00-00','asegurado','cassa',5,'electronico','2021-11-22 14:29:00',10,9,'0','2021-11-22 17:04:11'),(64,4,'2021-11-22','2021-11-22','11:45',22,'ingenio chaparrasituq','exclusion de maquinatia','0000-00-00','asegurado','ingenio chaparrasituq',5,'electronico','2021-11-22 14:31:50',10,9,'0','2021-11-22 17:04:20'),(65,2,'2021-11-22','2021-11-22','11:47',22,'ana berta de osegueda','constancia de renovacion cesion de beneficio de sa-59489','0000-00-00','aseguradora','19',8,'electronico','2021-11-22 14:34:21',10,6,'0','2021-11-22 16:20:59'),(66,3,'2021-11-22','2021-11-22','11:27',22,'cassa','inclusion de maquinaria','0000-00-00','asegurado','cassa',5,'electronico','2021-11-22 14:35:09',10,9,'0','2021-11-22 17:04:25'),(67,10,'2021-11-22','2021-11-22','11:08',22,'maria cifuentes de amesti','poliza inicial no. 97722 y avisos de cobros','0000-00-00','aseguradora','27',2,'electronico','2021-11-22 14:36:56',10,3,'0','2021-11-23 09:34:26'),(68,11,'2021-11-22','2021-11-22','14:06',22,'AMERICAN IND. PARK','5 anexos de renovacion de inc-16915, inc-17739, rc-1011, si-332, cf-2043 y avisos de cobros','2021-11-15','aseguradora','19',2,'electronico','2021-11-22 15:06:43',10,3,'0','2021-11-23 09:34:13'),(69,18,'2021-11-22','2021-11-22','15:17',22,'moises recinos deras','anexo de cancelacion no. 02a733/152747','0000-00-00','aseguradora','3',2,'electronico','2021-11-22 15:17:56',10,3,'0','2021-11-23 09:34:33'),(70,17,'2021-11-22','2021-11-22','14:57',22,'lactosa','2 anexos de modificacion de 13148/96 y 24445/33','0000-00-00','aseguradora','29',2,'electronico','2021-11-22 15:22:13',10,3,'0','2021-11-23 09:27:42'),(71,5,'2021-11-22','2021-11-22','09:42',21,'fusafe','documento de reclamos de gastos medicos','0000-00-00','asegurado','fusafe',7,'fisico','2021-11-22 15:25:55',10,3,'0','2021-11-23 13:25:51'),(72,6,'2021-11-22','2021-11-22','10:05',21,'orsa','finiquitos firmados por el asegurado','0000-00-00','asegurado','orsa',6,'fisico','2021-11-22 15:27:10',10,6,'0','2021-11-23 09:45:42'),(73,19,'2021-11-22','2021-11-22','16:24',22,'reasa','anexo declaracion mensual no. 1000377/409 y aviso de cobro','0000-00-00','aseguradora','29',5,'electronico','2021-11-22 16:35:40',10,3,'0','2021-11-22 17:04:44'),(74,19,'2021-11-22','2021-11-22','15:42',22,'cassa','2 cert. de transp. 05a137 (357 y 358)','0000-00-00','aseguradora','3',5,'electronico','2021-11-22 16:40:53',10,3,'0','2021-11-22 17:04:51'),(75,17,'2021-11-22','2021-11-22','15:28',22,'edificio avante','anexo de modificacion de tr-01596/2 y aviso de cobro','0000-00-00','aseguradora','2',2,'electronico','2021-11-22 16:46:35',10,3,'0','2021-11-23 09:27:32'),(76,9,'2021-11-22','2021-11-22','16:48',22,'casa','cesion de beneficio de 97046','0000-00-00','aseguradora','27',5,'electronico','2021-11-22 16:56:40',10,3,'0','2021-11-22 17:05:30'),(77,11,'2021-11-23','2021-11-08','10:49',22,'fraNCISCO MENJIVAR','ANEXO DE RENOVACION DE RTR-00436 Y AVISO DE COBRO','2021-12-08','aseguradora','2',8,'electronico','2021-11-23 08:56:49',10,3,'0','2021-11-23 10:42:27'),(78,19,'2021-11-23','2021-11-22','18:00',22,'orsa','anexo declaracion mensual de trma-222137 y aviso de cobro','0000-00-00','aseguradora','30',5,'electronico','2021-11-23 09:37:25',10,3,'0','2021-11-23 16:04:30'),(79,17,'2021-11-23','2021-11-22','15:50',21,'camco','anexo de modificacion de trin-199780','0000-00-00','aseguradora','30',2,'fisico','2021-11-23 10:00:53',10,3,'0','2021-11-23 13:48:29'),(80,19,'2021-11-23','2021-11-22','14:10',21,'INVERSIONES VIDA','cedula de modificacion de vidac-139/6 y aviso de cobro','0000-00-00','aseguradora','11',2,'fisico','2021-11-23 10:02:05',10,3,'0','2021-11-23 13:48:31'),(81,19,'2021-11-23','2021-11-22','15:50',7,'SERSAPROSA','devolucion de solicitudes','0000-00-00','aseguradora','30',5,'fisico','2021-11-23 10:02:40',10,4,'0','2021-11-23 14:16:55'),(82,1,'2021-11-23','2021-11-22','15:50',20,'CETYA-JAIME CASTRO','cheque no. 894 por $ 83.30 y finiquito','0000-00-00','aseguradora','25',7,'fisico','2021-11-23 10:04:29',10,3,'0','2021-11-23 13:25:54'),(83,1,'2021-11-23','2021-11-22','15:50',20,'cetya-maria de castro','cheque no. 895 por $ 11.19 y finiquito','0000-00-00','aseguradora','25',7,'fisico','2021-11-23 10:06:43',10,3,'0','2021-11-23 13:25:54'),(84,19,'2021-11-23','2021-11-22','15:50',20,'cetya','hojas de liquidacion de gastos medicos','0000-00-00','aseguradora','25',7,'fisico','2021-11-23 10:07:21',10,3,'0','2021-11-23 13:25:55'),(85,1,'2021-11-23','2021-11-22','15:50',21,'ERNESTO LIMA','cheque no. 174632 por $ 33.14 y finiquito','0000-00-00','aseguradora','30',7,'fisico','2021-11-23 10:08:35',10,3,'0','2021-11-23 13:25:56'),(86,1,'2021-11-23','2021-11-22','16:05',21,'cetya','cheque no. 19317 por $ 10,884.12 y finiquito','0000-00-00','aseguradora','11',7,'fisico','2021-11-23 10:09:54',10,6,'0','2021-11-23 12:47:02'),(87,16,'2021-11-23','2021-11-22','16:20',21,'CARMEN ELENA DE JOKISCH','cotizacion de vida firmada por el asegurado','0000-00-00','asegurado','CARMEN ELENA DE JOKISCH',8,'fisico','2021-11-23 10:10:44',10,3,'0','2021-11-23 10:42:31'),(88,19,'2021-11-23','2021-11-22','13:50',21,'cyr','ccf-33208','0000-00-00','aseguradora','3',6,'fisico','2021-11-23 10:11:16',10,7,'0','2021-11-23 13:22:07'),(89,1,'2021-11-23','2021-11-22','15:20',20,'GALVANIZA','2 cheques no. 268926 y 268925 y finiquito','0000-00-00','aseguradora','19',6,'fisico','2021-11-23 10:12:45',10,3,'0','2021-11-23 13:22:11'),(90,7,'2021-10-30','2021-11-23','10:59',11,'norma canjura de ayala - cetya ','remision de cheque ','0000-00-00','asegurado','norma canjura de ayala - cetya ',7,'fisico','2021-11-23 11:01:08',17,6,'0','2021-11-23 11:01:21'),(91,3,'2021-11-23','2021-11-23','11:53',22,'EUFEMIA','SOLICITUD DE INCLUSION DE MAQUINARIA A LA INTEMPERIE','0000-00-00','asegurado','EUFEMIA',5,'electronico','2021-11-23 12:52:52',10,3,'0','2021-11-23 16:47:41'),(92,17,'2021-11-23','2021-11-23','11:50',22,'INAUTO DE HONDURAS','2 cedulas de modificacion no. 09b20 (36002 y 35996) y avisos de cobros','0000-00-00','aseguradora','3',2,'electronico','2021-11-23 12:54:43',10,3,'0','2021-11-23 13:48:40'),(93,19,'2021-11-23','2021-11-23','10:54',22,'steiner','cert. de vc-0063','0000-00-00','aseguradora','2',5,'electronico','2021-11-23 13:08:00',10,3,'0','2021-11-23 16:05:52'),(94,19,'2021-11-23','2021-11-23','10:12',22,'corinca','cert. de vc-124','0000-00-00','aseguradora','11',5,'electronico','2021-11-23 13:08:50',10,3,'0','2021-11-23 16:06:56'),(95,14,'2021-11-23','2021-11-23','10:06',22,'sersaprosa','orden de renovacion no. 1001560','0000-00-00','aseguradora','29',5,'electronico','2021-11-23 13:10:07',10,3,'0','2021-11-23 16:07:02'),(96,14,'2021-11-23','2021-11-23','10:04',22,'oreli','solicitud de renovacion de inc-19070, tra-16830 firmada por el asegurado','0000-00-00','asegurado','oreli',8,'electronico','2021-11-23 13:13:42',10,3,'0','2021-11-23 15:44:29'),(97,11,'2021-11-23','2021-11-23','09:40',22,'silvia quezada','anexo de renovacion de sali-518295 y aviso d ecobro','2022-01-30','aseguradora','30',8,'electronico','2021-11-23 13:19:18',10,2,'0','2021-11-23 15:44:37'),(98,5,'2021-10-02','2021-11-22','03:00',11,'ERNESTO ARTURO BONILLA GUZMAN','RECLAMO GM ERNESTO ARTURO BONILLA GUZMAN','0000-00-00','asegurado','ERNESTO ARTURO BONILLA GUZMAN',7,'fisico','2021-11-23 13:29:46',11,3,'0','2021-11-23 13:30:20'),(99,19,'2021-11-23','2021-11-23','11:30',21,'LOLY AGULAR','carnet de auto no. 97051','0000-00-00','aseguradora','27',2,'fisico','2021-11-23 14:17:22',10,1,'0',NULL),(100,2,'2021-11-23','2021-11-23','11:30',21,'cassa','cesion de beneficio de 97046','0000-00-00','aseguradora','27',5,'fisico','2021-11-23 14:17:59',10,3,'0','2021-11-23 16:07:17'),(101,12,'2021-11-23','2021-11-23','13:36',22,'SILVIO GONZALEZ','2 avisos de cobros 12t812 y 12t813','0000-00-00','aseguradora','3',2,'electronico','2021-11-23 14:29:27',10,1,'0',NULL),(102,19,'2021-11-23','2021-11-23','12:55',22,'mezesa','3 declaraciones mensuales no. 1000457 (222 al 224) y avisos de cobros','0000-00-00','aseguradora','29',5,'electronico','2021-11-23 14:38:34',10,3,'0','2021-11-23 16:07:55'),(103,19,'2021-11-23','2021-11-23','12:55',22,'tco','2 declaraciones mensuales de 1000988 (15 y 16) y avisos de cobros','0000-00-00','aseguradora','29',5,'electronico','2021-11-23 14:39:12',10,3,'0','2021-11-23 16:08:02'),(104,19,'2021-11-23','2021-11-23','13:55',22,'INAUTO DE HONDURAS','anexo de modificacion de 09b20/36007 y aviso de cobro','0000-00-00','aseguradora','3',2,'electronico','2021-11-23 14:47:59',10,1,'0',NULL),(105,5,'2021-11-23','2021-11-23','10:47',8,'GALVANISSA','RECLAMO DE GASTOS MEDICOS','0000-00-00','asegurado','GALVANISSA',7,'fisico','2021-11-23 15:40:17',8,1,'0',NULL),(106,19,'2021-11-23','2021-11-23','09:30',8,'INFRASAL','finiquitos firmados por pago de indemnizacion','0000-00-00','asegurado','INFRASAL',7,'fisico','2021-11-23 15:44:15',8,1,'0',NULL),(107,18,'2021-11-23','2021-11-23','14:56',22,'fudem','solicitud cambio de categoria','0000-00-00','asegurado','fudem',5,'electronico','2021-11-23 16:47:26',10,3,'0','2021-11-23 16:50:09'),(108,19,'2021-11-23','2021-11-23','16:51',11,'INFRA - ANGELICA MARIA CORDERO ','SOLICITUD DE DOCUMENTOS ','0000-00-00','asegurado','INFRA - ANGELICA MARIA CORDERO ',7,'fisico','2021-11-23 16:51:06',17,4,'0','2021-11-23 16:51:41'),(109,19,'2021-11-23','2021-11-23','16:03',22,'SW INVENTA','cert. de vc-13066','0000-00-00','aseguradora','29',5,'electronico','2021-11-23 16:51:25',10,1,'0',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondenciaenviada`
--

LOCK TABLES `correspondenciaenviada` WRITE;
/*!40000 ALTER TABLE `correspondenciaenviada` DISABLE KEYS */;
INSERT INTO `correspondenciaenviada` VALUES (1,5,'CASSA','OFERTA DE RENOVACION DE VCD-8141 FIRMADA POR EL ASEGURADO','Compañia de seguros','','0','1','0','Milagro de Choriego ','','CARTA Y CORREO ELECTRONICO DEL 19.11.2021',9,'2021-11-19 16:08:23',2),(2,17,'ANA ZUAZU','CHEQUE NO. 174495 POR $ 157.22 Y FINIQUITO','Asegurado natural','','','0','0','','','',11,'2021-11-20 11:34:00',1),(3,37,'GRUPO ECON-WILLIAM RENDEROS','CHEQUE NO. 19309 POR $ 614.93 Y FINIQUITO','Asegurado jurídico','','','0','0','','','',11,'2021-11-20 11:36:27',2),(4,30,'LUZ DINORA DIAZ DE FERNANDEZ','RECLAMO DE GASTOS MEDICOS','Compañia de seguros','25','0','0','0','sra. claudia de arias','','',11,'2021-11-20 11:39:04',1),(5,47,'CARMEN ELENA FELIZA MONTENEGRO DE JOKISCH','DOCUMENTOS PARA CONTRATACION DE SEGURO DE VIDA','Asegurado natural','','','0','0','','','',18,'2021-11-22 09:57:29',2),(6,57,'INVERSIONES VIDA, S.A. DE C.V.','CERTIFICADOS SEGURO VIDA POL.140','Asegurado jurídico','','','0','0','licda. guadalupe deras montano','','No.573/2021',14,'2021-11-22 13:44:22',1),(7,43,'CINDY ARDON','DOCUMENTO DE RECLAMOS DE GASTOS MEDICOS','Compañia de seguros','33','0','0','0','depto. reclamos de gastos medicos ','','',17,'2021-11-22 14:36:29',2),(8,59,'RENATA EUGENIA MORENO ','DEVOLUCION DE CREDITO FISCAL','Asegurado jurídico','','','0','0','','','ENVIADO EN CARTA DE FECHA 22/11/21',17,'2021-11-22 15:17:12',2),(9,65,'ANA BERTA DE OSEGUEDA','documentos de renovacion pol n° sa-59489 CESION DE BENEFICIO','Asegurado natural','','','0','0','','','',18,'2021-11-23 09:25:42',2),(10,41,'CARLOS BOZA','CHEQUE NO. 21447 POR $ 1,584.70 Y FINIQUTIO','Asegurado natural','','','0','0','','','CHEQUE NO. 21447 POR $ 1,584.70 Y FINIQUTIO',15,'2021-11-23 09:49:42',1),(11,90,'NORMA CANJURA DE AYALA - CETYA ','REMISION DE CHEQUE ','Asegurado jurídico','','','0','0','NORMA CANJURA DE AYALA ','','',17,'2021-11-23 11:03:09',2),(12,42,'COND. TORRE SAN BENITO','FINIQUITOS FIRMADOS POR EL ASEGURADO','Compañia de seguros','19','','0','0','SARA AYALA RECLAMOS DAÑOS MAPFRE','','FINIQUITOS FIRMADOS POR EL ASEGURADO',15,'2021-11-23 11:56:29',1),(13,58,'GALVANIZA','FINIQUITOS FIRMADOS POR EL ASEGURADO','Compañia de seguros','19','0','0','0','SARA AYALA RECLAMOS DAÑOS MAPFRE','','FINIQUITOS FIRMADOS POR EL ASEGURADO',15,'2021-11-23 11:57:04',1),(14,72,'ORSA','FINIQUITOS FIRMADOS POR EL ASEGURADO','Compañia de seguros','30','0','0','0','SERVICIO AL CLIENTE ','','FINIQUITOS FIRMADOS POR EL ASEGURADO',15,'2021-11-23 11:57:58',2),(15,52,'INFRASAL','reclamo gm infra el salvador - JULIO cesar ROMERO','Compañia de seguros','11','','0','0','lic. irene moran ','','reclamo enviado en carta de fecha 23/11/21',17,'2021-11-23 12:28:35',2),(16,36,'PERSONAL EXPRESS','CARTA DECLINANDO RECLAMO DE VICO-517107','Asegurado jurídico','','','0','0','lic. isabel de sigaran','','',11,'2021-11-23 12:44:24',2),(17,56,'DIZUCAR','DOCUMENTOS DE RECLAMO DE FALLECIDO','Compañia de seguros','1','0','0','0','karen iraheta','','',11,'2021-11-23 12:44:57',2),(18,86,'CETYA','CHEQUE NO. 19317 POR $ 10,884.12 Y FINIQUITO SEGURO DE DEUDA-JOSE EMILIO SANDOVAL','Asegurado jurídico','','','0','0','LIC. LAURA ESCOBAR','','',11,'2021-11-23 12:47:50',2),(19,88,'CYR','CCF-33208','Asegurado jurídico','','','0','0','cyr consultores, s.a. de c.v.','','CCF entregado a yohana esta mañana',5,'2021-11-23 13:24:50',2),(20,15,'COND. SPAZIO','CESION DE BENEFICIO DE IN-18613/19','Compañia de seguros','19','1','0','0','lic. claudia cruz','','',14,'2021-11-23 13:38:22',1),(21,10,'JOSE ALBERTO ORTI','ANEXO DE MODIFICACION NO. 95618/131713 Y AVISO DE COBRO','Asegurado natural','','','0','0','','','SE DESPACHO POR 22/11/2021 POR COREO',4,'2021-11-23 15:09:13',2),(22,11,'GERARDO VALENZUELA','ANEXO DE CANCELACION NO. 95697/262848','Asegurado natural','','','0','0','','','',2,'2021-11-23 16:35:33',NULL),(23,60,'SERSAPROSA','INCLUSIONES-EXCLUSIONES ','Compañia de seguros','30','0','0','0','PATRICIA VALLADARES','','',8,'2021-11-23 16:40:27',NULL),(24,81,'SERSAPROSA','DEVOLUCION DE SOLICITUDES ','Asegurado jurídico','','','0','0','LICDA. ISABEL DE SIGARAN','','',8,'2021-11-23 16:41:10',NULL),(25,108,'INFRA - ANGELICA MARIA CORDERO ','SOLICITUD DE DOCUMENTOS ','Asegurado jurídico','','','0','0','','','SOLICITUD DE DOCUMENTOS EN CARTA DE FECHA 23/11/21',17,'2021-11-23 16:53:01',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,'Home','ImHome3','/home'),(2,'En oficina','ImOffice','/inoffice'),(3,'Mis Asignaciones','ImList2','/misasignaciones'),(4,'Recados','CgUserList','/asignarmensajes'),(5,'Mis Recados','BiMessage','/misrecados'),(6,'Recibir Correspondencia','HiOutlineInboxIn','/recibir'),(7,'Aprovar correspondencia','RiMailSendLine','/aprovarcorrespondencia'),(8,'Reportes','VscFilePdf','/reportes'),(9,'Usuarios','FaUsersCog','/usuarios'),(10,'Consultas','AiOutlineFileSearch','/consultas');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasignaciones`
--

LOCK TABLES `reasignaciones` WRITE;
/*!40000 ALTER TABLE `reasignaciones` DISABLE KEYS */;
INSERT INTO `reasignaciones` VALUES (1,3,2,3,'2021-11-19 13:35:19'),(2,14,4,3,'2021-11-23 09:28:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recados`
--

LOCK TABLES `recados` WRITE;
/*!40000 ALTER TABLE `recados` DISABLE KEYS */;
INSERT INTO `recados` VALUES (1,1,'Recado de prueba','2021-11-20 09:38:02','Asignado',NULL,NULL,NULL,NULL,2,'0','1'),(2,1,'Recado de prueba Por Rafparada','2021-11-20 11:35:32','Asignado','2021-11-20 11:35:42',NULL,NULL,NULL,2,'0','1'),(3,13,'LUNES 22 POR LA MAÑANA/ SEÑORA MARIA EUGENIA LACAYO DARA CHEQUE PARA QUÁLITAS COMPAÑÍA DE SEGUROS, S.A. POR $ 39.65','2021-11-20 11:44:25','Asignado','2021-11-22 08:51:00',NULL,NULL,NULL,1,'0','0'),(4,13,'LUNES 22/ EN ASOCIACION COMUNAL CONDOMINIO PORTAL DEL CASCO, SRITA. YANSI CONFIRMA ENTREGA DE CHEQUE PARA SEGUROS AZUL, S.A., LA CANTIDAD DE $ 1,739.71','2021-11-20 11:44:42','Asignado','2021-11-22 08:51:08',NULL,NULL,NULL,2,'0','0'),(5,8,'HAY DOCUMENTOS DONDE MARIA EUGENIA SAMAYOA, COLONIA SAN BENITO AVENIDA LA CAPILLA 539','2021-11-22 08:41:18','Asignado','2021-11-22 08:51:18',NULL,NULL,NULL,2,'0','0'),(6,10,'LUNES 22/ EN ASOCIACION COMUNAL CONDOMINIO PORTAL DEL CASCO, SRITA. YANSI CONFIRMA ENTREGA DE CHEQUE PARA SEGUROS AZUL, S.A., LA CANTIDAD DE $ 1,739.71','2021-11-22 08:48:48','No asignado',NULL,NULL,NULL,NULL,NULL,'0','0'),(7,10,'LUNES 22 POR LA MAÑANA/ SEÑORA MARIA EUGENIA LACAYO DARA CHEQUE PARA QUÁLITAS COMPAÑÍA DE SEGUROS, S.A. POR $ 39.65','2021-11-22 08:49:48','No asignado',NULL,NULL,NULL,NULL,NULL,'0','0'),(8,10,'LUNES, ENLACES INTEGRADAS DARA CHEQUE PARA AZUL','2021-11-22 08:52:18','Asignado','2021-11-22 08:52:23',NULL,NULL,NULL,1,'0','0'),(9,10,'FAVOR RECOGER CHEQUES EN MAPFRE, RECLAMOS DAÑOS CON SARA AYALA, A NOMBRE DE GALVANISSA','2021-11-22 08:52:45','Asignado','2021-11-22 08:52:48',NULL,NULL,NULL,1,'0','0'),(10,10,'MIERCOLES 24/CORP. AMSI DARAN CHEQUE PARA ASSA Y SEGUROS SURA, S.A.','2021-11-22 08:53:15','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(11,10,'MARTES 23/COND. LAS ARBOLEDAS HAY CHEQUE PERO HAY QUE LLAMAR ANTES DE SALIR DE AQUI','2021-11-22 09:42:24','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(12,13,'MARTES 23/ DON DAVID ZAVALETA CONFIRMA ENTREGA DE EFECTIVO POR $32.54 EN CONDOMINIO MURANO PORTERIA.','2021-11-22 09:57:47','Asignado','2021-11-23 08:35:40',NULL,NULL,NULL,1,'0','0'),(13,13,'LUNES 22 POR LA TARDE, SRA. MARIA MAURA REBECA FLOR ALFARO DARA CHEQUE PARA ASSA COMPAÑIA DE SEGUROS, S.A. POR $ 66.30','2021-11-22 11:13:26','Asignado','2021-11-22 13:24:23',NULL,NULL,NULL,1,'0','0'),(14,8,'RETIRAR DOCUMENTOS EN PALIG','2021-11-22 11:39:27','Asignado','2021-11-22 13:24:29',NULL,NULL,NULL,1,'0','0'),(15,13,'MARTES 23 LIC. ROSAURA EN MOTOCITY CONFIRMA ENTREGA DE CHEQUE PARA SEGUROS E INVERSIONES, S.A. POR $ 28.25','2021-11-22 13:43:24','Asignado','2021-11-23 08:36:09',NULL,NULL,NULL,1,'0','0'),(16,18,'FAVOR RECOGER DOCUMENTOS ORIGINALES DE CONTRATACION DE SEGURO DONDE CARMEN ELENA MONTENEGRO DE JOKISCH','2021-11-22 14:32:33','Asignado','2021-11-22 14:34:05',NULL,NULL,NULL,2,'0','0'),(17,13,'EN ALMAPAC, LIC. EDGAR ZAMORA CONFIRMA ENTREGA DE PAGO DE ING. JOSE RICARDO IRAHETA VEGA, PARA MAPFRE SEGUROS EL SALVADOR S.A. POR $ 30.77','2021-11-22 14:35:18','Asignado','2021-11-22 14:35:31',NULL,NULL,NULL,1,'0','0'),(18,13,'LIC. THELMO PATRICIO ALFARO DARA OTRO CHEQUE POR $ 369.82 PARA SEGUROS SURA, S.A. SEGUROS DE PERSONAS POR FIRMA DIFERENTE Y/O NO LEGIBLE, YA HABLE CON EL.','2021-11-22 15:51:47','Asignado','2021-11-22 15:52:09',NULL,NULL,NULL,2,'0','0'),(19,13,'DON ALBERTO TOMAS CARBONELL CENDAN\nDARA PAGO PARA ASEGURADORA ABANK, S.A, SEGUROS DE PERSONAS POR $ 397.46	\n','2021-11-23 09:37:04','Asignado','2021-11-23 09:37:10',NULL,NULL,NULL,1,'0','0'),(20,13,'QUALITAS RETIRAR CARNET DE LOLY AGUILAR por ELENA OSORIO','2021-11-23 09:41:36','Asignado','2021-11-23 09:41:43',NULL,NULL,NULL,2,'0','0'),(21,13,'FAVOR RECOGER CHEQUES EN MAPFRE RECLAMOS DAÑOS CON SARA AYALA, CHEQUES A NOMBRE DE GALVANISSA POR PATY PALACIOS','2021-11-23 09:42:05','Asignado','2021-11-23 09:53:04',NULL,NULL,NULL,1,'0','0'),(22,4,'QUALITAS RETIRA CARNTE DE LOLY AGUILRA','2021-11-23 09:44:13','Asignado','2021-11-23 09:46:01',NULL,NULL,NULL,2,'0','1'),(23,15,'FAVOR RECOGER CHEQUES EN MAPFRE RECLAMOS DAÑOS CON SARA AYALA, A NOMBRE DE GALVANISSA','2021-11-23 09:51:37','Asignado','2021-11-23 09:52:37',NULL,NULL,NULL,1,'0','0'),(24,13,'EN SERSAPROSA A PARTIR DE LAS 2:00 P.M. LIC. DORA DE VAQUERANO CONFIRMA ENTREGA DE CHEQUES A/F CYR CONSULTORES , S.A. DE C.V.  Y SEGUROS E INVERSIONES, S.A.','2021-11-23 09:58:14','Asignado','2021-11-23 14:15:49',NULL,NULL,NULL,2,'0','0'),(25,13,'VIERNES 26/ LIC. RENE LEOPOLDO DIAZ DARA PAGO PARA ASSA COMPAÑIA DE SEGUROS, S.A. POR $ 59.36 EN EUFEMIA.','2021-11-23 10:17:00','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(26,5,'Retirar en Qualitas comprobante de pago por $26.57 de la asegurada Claudia Maria Roque de Zelaya (EX-BFA) Automotores. ','2021-11-23 13:23:24','Asignado','2021-11-23 14:16:03',NULL,NULL,NULL,2,'0','0'),(27,13,'EN EDIFICIO D´CORA HAY CHEQUES DE HENCORP EN RECEPCION Y CON DON MANUEL MARTINEZ PARA ACSA ANTES DE 4:30 P.M. INDICAN.','2021-11-23 14:36:08','Asignado','2021-11-23 14:36:14',NULL,NULL,NULL,2,'0','0'),(28,13,'MIERCOLES 23/ DE 9 A 1:00 P.M. CONFIRMADO LA ENTREGA DE CHEQUE EN CONDOMINIO RESIDENCIAL MONTECASTELLO PARA MAPFRE SEGUROS EL SALVADOR S.A.	$ 1,831.91\n','2021-11-23 15:34:32','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(29,5,'Retirar de las oficinas de TRANSAR, con el Ing. Ismael Hanania, caratula de CD-Player. Vehículo placas P-815918 declarado PERDIDA TOTAL.','2021-11-23 16:27:11','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0'),(30,13,'MIERCOLES 24/ POR LA MAÑANA NIÑA MERCEDES HERLINDA DELGADO DARA EFECTIVO POR EL TOTAL DE $ 112.09','2021-11-23 16:32:55','No asignado',NULL,NULL,NULL,NULL,NULL,'1','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Adminsitrador'),(2,'Jefe departamento'),(3,'Usuario Básico'),(4,'Reciben correspondencia'),(6,'resquivel');
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
INSERT INTO `usuarios` VALUES (1,'Rafael','parada','rparada','$2b$10$mjon8aaIhag2lO44jbfk6etd5vj.tuBOPZ/XKO8Z8bfJyyY1HRm.6',1,9,'0','0','1'),(2,'ana','pineda','apineda','$2b$10$l.GKA3iNy6erSLAb9P9hHuQrucwwwHq8eLvuWuqfxX/1S6MScRsta',3,2,'0','1','1'),(3,'chimi','herrera','cherrera','$2b$10$E.OYZt39dn8puyJrxsf0RutWufaN4.mELtQAmk6IFmpRySQcn2xIW',2,2,'0','1','1'),(4,'elena','osorio','eosorio','$2b$10$p5sTrQQrAabAH7pD2pjzTuJ9jbtVvr.kjL1USep/kO8sNeOc1iGzq',3,2,'0','1','1'),(5,'erick','giron','egiron','$2b$10$cvXkht48Nqy8YY.gy.9KSetbQWmhImkJcB0Ag03yEpsJGWo42OBb6',3,6,'0','1','1'),(6,'evelyn','de andrade','eosegueda','$2b$10$7xabuTi4zyERjTGAJ7xdUesyQlQFlJVNQB0u6vP8GGWBp40DIsYZ6',2,5,'1','1','1'),(7,'Lucy','de escobar','lescobar','$2b$10$.FH91NStqgYi5vPgUK60seyob6AtL/JDIEwqdzFO.nPuB8RusucFW',2,6,'1','1','1'),(8,'NORA','DE LOZA','NLOZA','$2b$10$I2XhNmbU1piz6tO9xUOsaeye42ORuXxOFj09hgudrIvz2I1zp9tAG',2,5,'1','1','1'),(9,'sandra','rivas','srivas','$2b$10$olOwxWx5nJQttaYIf4dsLOtBE.wlNsYdEkCbf8ydtocuyGqFTY.S6',2,8,'1','1','1'),(10,'SILVIA','QUEZADA','SQUEZADA','$2b$10$CkAfh/Zd.0VFwcsYeia6lOM9V8mZeGpnUD2TfKVMcoI2xJKKe7XV6',1,1,'1','0','1'),(11,'YOHANA','VALIENTE','YVALIENTE','$2b$10$9mAzmlxxzeqMadeuJ1IpguzG0//wEJ3PWv2McjdDVacp4kw5cUyRa',2,7,'1','1','1'),(12,'ANA','CORNEJO','ACORNEJO','$2b$10$LkOi61GJ5AodCVAOi0K80.i1STiuLLESeZ3YEKgRmTiu6WyQuol2G',3,2,'0','1','1'),(13,'RICARDO','ESQUIVEL','RESQUIVEL','$2b$10$tJzkhsSAeEzzUZF1B5A3P.19kVBjm1vJgABAxect5L1eFf11EsM86',6,2,'1','1','1'),(14,'CLAUDIA','LIQUEZ','CLIQUEZ','$2b$10$ivIt6ZBF6ZvAfzKZSrJTB.rGuRLeuOmfkfIldXFq2jGOfORkqsQvG',4,5,'1','1','1'),(15,'Patricia','alfaro','palfaro','$2b$10$KNH/TFoKF6hEXPZWCvgaluWR2NtSx47O4ae1fiOo5CfSUSZFUXJq.',3,6,'0','1','1'),(16,'jacqueline','hernandez','JHERNANDEZ','$2b$10$DhU3JJu89dgInmYu2Lgmouj4uqCj.OUbMHeeBP84t4TaS486F7TRy',3,8,'0','1','1'),(17,'DELMY','VASQUEZ','DVASQUEZ','$2b$10$DjPU8wq6rVh2DCUNpLwwJOOAOjl/t2mbl18AdTkigZS78jrBfTz6C',4,7,'0','1','1'),(18,'NANCY','VASQUEZ','NVASQUEZ','$2b$10$MgcJS/bG3YfJ7D.UmB5nPeSBtPjB/mFvw6w4gHG/ciiaJR3Qqk2Xi',4,8,'0','1','1'),(19,'roberto','reyes','rreyes','$2b$10$8qhtnKzTlSkcMZVZKIr6E.h8WC96Eh/IK0dP/DQ1dsPL4phwopag.',1,9,'0','0','1'),(20,'Martin','aguirre','maguirre','$2b$10$mZ/cztNixXG5546yarTuXOFowt1E6kBi6ogwSu4NSAF2kRh1I0qGe',3,1,'1','0','1'),(21,'luis','martinez','lmartinez','$2b$10$87WF0REKG9NjAi.bxrN/P.pXLwZ7MTTJ1pKLS8osm1iUQAz7d/xUa',3,1,'1','0','1'),(22,'Correo','Electronico','celectronico',NULL,NULL,NULL,'1','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vida_estado_correspondencia`
--

LOCK TABLES `vida_estado_correspondencia` WRITE;
/*!40000 ALTER TABLE `vida_estado_correspondencia` DISABLE KEYS */;
INSERT INTO `vida_estado_correspondencia` VALUES (1,1,1,'2021-11-19 09:18:17',10),(2,1,2,'2021-11-19 09:22:06',6),(3,1,3,'2021-11-19 09:22:17',6),(4,2,1,'2021-11-19 09:36:42',10),(5,3,1,'2021-11-19 11:03:40',10),(6,4,1,'2021-11-19 12:32:24',10),(7,5,1,'2021-11-19 12:43:33',10),(8,6,1,'2021-11-19 13:15:01',10),(9,7,1,'2021-11-19 13:17:30',10),(10,8,1,'2021-11-19 13:28:15',10),(11,6,2,'2021-11-19 13:29:30',3),(12,9,1,'2021-11-19 13:29:17',10),(13,6,3,'2021-11-19 13:29:55',3),(14,10,1,'2021-11-19 13:30:05',10),(15,11,1,'2021-11-19 13:30:55',10),(16,12,1,'2021-11-19 13:32:07',10),(17,13,1,'2021-11-19 13:33:06',10),(18,2,2,'2021-11-19 13:34:05',3),(19,2,3,'2021-11-19 13:34:12',3),(20,14,1,'2021-11-19 13:34:04',10),(21,15,1,'2021-11-19 13:34:55',10),(22,16,1,'2021-11-19 13:35:59',10),(23,17,1,'2021-11-19 13:40:16',10),(24,18,1,'2021-11-19 13:42:28',10),(25,19,1,'2021-11-19 13:43:20',10),(26,20,1,'2021-11-19 13:44:07',10),(27,21,1,'2021-11-19 13:44:59',10),(28,22,1,'2021-11-19 13:45:43',10),(29,23,1,'2021-11-19 13:47:16',10),(30,24,1,'2021-11-19 14:23:27',10),(31,5,2,'2021-11-19 14:29:51',9),(32,5,3,'2021-11-19 14:29:59',9),(33,18,2,'2021-11-19 14:33:13',9),(34,18,3,'2021-11-19 14:33:24',9),(35,23,2,'2021-11-19 14:33:43',9),(36,23,3,'2021-11-19 14:33:49',9),(37,22,2,'2021-11-19 14:33:57',9),(38,19,2,'2021-11-19 14:35:36',9),(39,19,3,'2021-11-19 14:35:41',9),(40,20,2,'2021-11-19 14:35:55',9),(41,20,3,'2021-11-19 14:36:00',9),(42,21,2,'2021-11-19 14:36:08',9),(43,21,3,'2021-11-19 14:36:14',9),(44,22,3,'2021-11-19 14:36:18',9),(45,15,2,'2021-11-19 15:06:57',6),(46,7,2,'2021-11-19 15:07:50',6),(47,3,2,'2021-11-19 15:14:19',6),(48,25,1,'2021-11-19 15:16:30',10),(49,3,3,'2021-11-19 16:02:39',6),(50,7,3,'2021-11-19 16:02:49',6),(51,15,3,'2021-11-19 16:02:52',6),(52,26,1,'2021-11-19 16:06:21',10),(53,5,4,'2021-11-19 16:08:23',9),(54,27,1,'2021-11-19 16:13:37',10),(55,28,1,'2021-11-19 16:40:20',10),(56,29,1,'2021-11-19 16:41:13',10),(57,30,1,'2021-11-20 08:32:56',8),(58,31,1,'2021-11-20 08:38:31',10),(59,25,2,'2021-11-20 08:40:18',3),(60,25,3,'2021-11-20 08:40:25',3),(61,14,2,'2021-11-20 08:40:35',3),(62,14,3,'2021-11-20 08:40:39',3),(63,31,2,'2021-11-20 08:40:56',3),(64,31,3,'2021-11-20 08:41:03',3),(65,24,2,'2021-11-20 08:41:26',3),(66,24,3,'2021-11-20 08:41:30',3),(67,4,2,'2021-11-20 08:42:20',3),(68,4,3,'2021-11-20 08:42:23',3),(69,8,2,'2021-11-20 08:42:56',3),(70,8,3,'2021-11-20 08:42:59',3),(71,9,2,'2021-11-20 08:43:23',3),(72,9,3,'2021-11-20 08:43:26',3),(73,32,1,'2021-11-20 08:43:16',10),(74,10,2,'2021-11-20 08:44:05',3),(75,10,3,'2021-11-20 08:44:08',3),(76,11,2,'2021-11-20 08:44:56',3),(77,11,3,'2021-11-20 08:45:03',3),(78,12,2,'2021-11-20 08:45:15',3),(79,13,2,'2021-11-20 08:45:52',3),(80,13,3,'2021-11-20 08:45:56',3),(81,12,3,'2021-11-20 08:46:13',3),(82,33,1,'2021-11-20 08:47:22',10),(83,34,1,'2021-11-20 08:48:34',10),(84,35,1,'2021-11-20 08:57:15',10),(85,36,1,'2021-11-20 09:14:32',10),(86,37,1,'2021-11-20 09:15:55',10),(87,38,1,'2021-11-20 09:16:44',10),(88,39,1,'2021-11-20 09:17:31',10),(89,40,1,'2021-11-20 09:18:17',10),(90,41,1,'2021-11-20 09:18:54',10),(91,42,1,'2021-11-20 09:19:30',10),(92,16,2,'2021-11-20 09:22:57',11),(93,17,2,'2021-11-20 09:23:28',11),(94,17,3,'2021-11-20 09:23:42',11),(95,30,2,'2021-11-20 09:23:52',11),(96,3,4,'2021-11-20 10:05:49',8),(97,26,2,'2021-11-20 10:51:24',6),(98,26,3,'2021-11-20 10:51:28',6),(99,27,2,'2021-11-20 10:51:42',6),(100,27,3,'2021-11-20 10:51:51',6),(101,28,2,'2021-11-20 10:52:17',6),(102,29,2,'2021-11-20 10:52:18',6),(103,28,3,'2021-11-20 10:52:20',6),(104,29,3,'2021-11-20 10:52:22',6),(105,35,2,'2021-11-20 10:52:25',6),(106,35,3,'2021-11-20 10:52:32',6),(107,33,2,'2021-11-20 10:52:33',6),(108,34,2,'2021-11-20 10:52:34',6),(109,33,3,'2021-11-20 10:52:40',6),(110,34,3,'2021-11-20 10:52:42',6),(111,43,1,'2021-11-20 11:09:25',10),(112,41,2,'2021-11-20 11:12:38',7),(113,41,3,'2021-11-20 11:12:49',7),(114,42,2,'2021-11-20 11:12:51',7),(115,42,3,'2021-11-20 11:13:00',7),(116,32,2,'2021-11-20 11:16:01',3),(117,32,3,'2021-11-20 11:16:07',3),(118,26,4,'2021-11-20 11:26:49',8),(119,33,4,'2021-11-20 11:27:06',8),(120,34,4,'2021-11-20 11:27:27',8),(121,17,4,'2021-11-20 11:34:00',11),(122,37,2,'2021-11-20 11:34:33',11),(123,38,2,'2021-11-20 11:34:44',11),(124,38,3,'2021-11-20 11:35:43',11),(125,37,3,'2021-11-20 11:35:48',11),(126,37,4,'2021-11-20 11:36:27',11),(127,38,4,'2021-11-20 11:37:25',11),(128,30,3,'2021-11-20 11:38:08',11),(129,30,4,'2021-11-20 11:39:04',11),(130,16,3,'2021-11-20 11:40:02',11),(131,36,2,'2021-11-20 11:43:49',11),(132,39,2,'2021-11-20 11:44:05',11),(133,39,3,'2021-11-20 11:44:08',11),(134,36,3,'2021-11-20 11:44:26',11),(135,40,2,'2021-11-20 11:44:56',11),(136,40,3,'2021-11-20 11:45:04',11),(137,43,2,'2021-11-20 11:45:10',11),(138,43,3,'2021-11-20 11:45:14',11),(139,19,4,'2021-11-20 11:52:12',16),(140,22,4,'2021-11-20 11:52:42',16),(141,21,4,'2021-11-20 11:53:02',16),(142,37,5,'2021-11-22 08:37:09',10),(143,44,1,'2021-11-22 08:55:28',10),(144,26,9,'2021-11-22 08:59:20',10),(145,45,1,'2021-11-22 09:02:51',10),(146,46,1,'2021-11-22 09:06:54',10),(147,47,1,'2021-11-22 09:55:11',18),(148,47,2,'2021-11-22 09:55:18',18),(149,47,3,'2021-11-22 09:55:24',18),(150,47,4,'2021-11-22 09:57:29',18),(151,34,9,'2021-11-22 10:12:22',10),(152,33,9,'2021-11-22 10:12:54',10),(153,48,1,'2021-11-22 10:21:56',10),(154,49,1,'2021-11-22 10:30:03',10),(155,50,1,'2021-11-22 10:33:57',10),(156,16,4,'2021-11-22 10:38:30',17),(157,51,1,'2021-11-22 10:38:42',10),(158,52,1,'2021-11-22 10:39:08',8),(159,53,1,'2021-11-22 10:41:37',10),(160,54,1,'2021-11-22 10:45:31',10),(161,55,1,'2021-11-22 12:48:36',10),(162,47,5,'2021-11-22 13:09:19',10),(163,56,1,'2021-11-22 13:29:01',10),(164,44,2,'2021-11-22 13:40:19',3),(165,44,3,'2021-11-22 13:40:23',3),(166,45,2,'2021-11-22 13:40:51',3),(167,45,3,'2021-11-22 13:40:56',3),(168,51,2,'2021-11-22 13:40:57',3),(169,51,3,'2021-11-22 13:41:02',3),(170,57,1,'2021-11-22 13:43:05',14),(171,57,2,'2021-11-22 13:43:18',14),(172,57,3,'2021-11-22 13:43:26',14),(173,57,4,'2021-11-22 13:44:22',14),(174,58,1,'2021-11-22 13:48:26',10),(175,59,1,'2021-11-22 13:49:24',17),(176,59,2,'2021-11-22 13:49:37',17),(177,59,3,'2021-11-22 13:49:46',17),(178,60,1,'2021-11-22 13:51:21',14),(179,61,1,'2021-11-22 14:19:43',10),(180,62,1,'2021-11-22 14:21:11',10),(181,63,1,'2021-11-22 14:29:00',10),(182,64,1,'2021-11-22 14:31:50',10),(183,65,1,'2021-11-22 14:34:21',10),(184,66,1,'2021-11-22 14:35:09',10),(185,43,4,'2021-11-22 14:36:29',17),(186,67,1,'2021-11-22 14:36:56',10),(187,37,6,'2021-11-22 14:46:16',10),(188,47,6,'2021-11-22 14:46:20',10),(189,68,1,'2021-11-22 15:06:43',10),(190,52,2,'2021-11-22 15:13:07',11),(191,52,3,'2021-11-22 15:13:16',11),(192,56,2,'2021-11-22 15:13:24',11),(193,56,3,'2021-11-22 15:13:30',11),(194,59,4,'2021-11-22 15:17:12',17),(195,69,1,'2021-11-22 15:17:56',10),(196,70,1,'2021-11-22 15:22:13',10),(197,71,1,'2021-11-22 15:25:55',10),(198,72,1,'2021-11-22 15:27:10',10),(199,43,5,'2021-11-22 15:35:27',10),(200,59,5,'2021-11-22 15:35:31',10),(201,43,6,'2021-11-22 15:35:57',10),(202,59,6,'2021-11-22 15:35:59',10),(203,17,5,'2021-11-22 16:18:18',10),(204,17,6,'2021-11-22 16:18:24',10),(205,65,2,'2021-11-22 16:20:59',9),(206,65,3,'2021-11-22 16:21:03',9),(207,17,7,'2021-11-22 16:20:56',10),(208,30,5,'2021-11-22 16:22:45',10),(209,30,6,'2021-11-22 16:22:50',10),(210,30,7,'2021-11-22 16:23:02',10),(211,73,1,'2021-11-22 16:35:40',10),(212,74,1,'2021-11-22 16:40:53',10),(213,75,1,'2021-11-22 16:46:35',10),(214,16,9,'2021-11-22 16:50:37',10),(215,76,1,'2021-11-22 16:56:40',10),(216,46,2,'2021-11-22 17:01:15',6),(217,46,3,'2021-11-22 17:01:20',6),(218,48,2,'2021-11-22 17:01:34',6),(219,48,3,'2021-11-22 17:01:39',6),(220,50,2,'2021-11-22 17:02:14',6),(221,50,3,'2021-11-22 17:02:20',6),(222,53,2,'2021-11-22 17:02:36',6),(223,53,3,'2021-11-22 17:02:40',6),(224,54,2,'2021-11-22 17:02:52',6),(225,54,3,'2021-11-22 17:02:56',6),(226,60,2,'2021-11-22 17:03:30',6),(227,60,3,'2021-11-22 17:03:36',6),(228,62,2,'2021-11-22 17:03:47',6),(229,62,3,'2021-11-22 17:03:53',6),(230,63,2,'2021-11-22 17:04:11',6),(231,63,3,'2021-11-22 17:04:15',6),(232,64,2,'2021-11-22 17:04:20',6),(233,64,3,'2021-11-22 17:04:24',6),(234,66,2,'2021-11-22 17:04:25',6),(235,66,3,'2021-11-22 17:04:27',6),(236,73,2,'2021-11-22 17:04:44',6),(237,73,3,'2021-11-22 17:04:49',6),(238,74,2,'2021-11-22 17:04:51',6),(239,74,3,'2021-11-22 17:04:55',6),(240,76,2,'2021-11-22 17:05:30',6),(241,76,3,'2021-11-22 17:05:33',6),(242,21,9,'2021-11-23 08:27:47',10),(243,19,9,'2021-11-23 08:27:52',10),(244,22,9,'2021-11-23 08:28:01',10),(245,57,5,'2021-11-23 08:30:52',10),(246,57,6,'2021-11-23 08:31:57',10),(247,38,9,'2021-11-23 08:34:16',10),(248,3,9,'2021-11-23 08:34:28',10),(249,37,7,'2021-11-23 08:50:05',10),(250,47,7,'2021-11-23 08:50:19',10),(251,43,7,'2021-11-23 08:50:29',10),(252,77,1,'2021-11-23 08:56:49',10),(253,65,4,'2021-11-23 09:25:42',18),(254,75,2,'2021-11-23 09:27:32',3),(255,75,3,'2021-11-23 09:27:38',3),(256,70,2,'2021-11-23 09:27:42',3),(257,70,3,'2021-11-23 09:27:46',3),(258,68,2,'2021-11-23 09:34:13',3),(259,68,3,'2021-11-23 09:34:17',3),(260,67,2,'2021-11-23 09:34:26',3),(261,67,3,'2021-11-23 09:34:30',3),(262,69,2,'2021-11-23 09:34:33',3),(263,69,3,'2021-11-23 09:34:37',3),(264,61,2,'2021-11-23 09:34:38',3),(265,61,3,'2021-11-23 09:34:44',3),(266,78,1,'2021-11-23 09:37:25',10),(267,58,2,'2021-11-23 09:45:38',7),(268,72,2,'2021-11-23 09:45:42',7),(269,58,3,'2021-11-23 09:45:50',7),(270,72,3,'2021-11-23 09:45:54',7),(271,41,4,'2021-11-23 09:49:42',15),(272,79,1,'2021-11-23 10:00:53',10),(273,80,1,'2021-11-23 10:02:05',10),(274,81,1,'2021-11-23 10:02:40',10),(275,82,1,'2021-11-23 10:04:29',10),(276,83,1,'2021-11-23 10:06:43',10),(277,84,1,'2021-11-23 10:07:21',10),(278,85,1,'2021-11-23 10:08:35',10),(279,86,1,'2021-11-23 10:09:54',10),(280,87,1,'2021-11-23 10:10:44',10),(281,88,1,'2021-11-23 10:11:16',10),(282,89,1,'2021-11-23 10:12:45',10),(283,77,2,'2021-11-23 10:42:27',9),(284,87,2,'2021-11-23 10:42:31',9),(285,87,3,'2021-11-23 10:42:35',9),(286,77,3,'2021-11-23 10:42:39',9),(287,90,1,'2021-11-23 11:01:08',17),(288,90,2,'2021-11-23 11:01:21',17),(289,90,3,'2021-11-23 11:01:29',17),(290,90,4,'2021-11-23 11:03:09',17),(291,42,4,'2021-11-23 11:56:29',15),(292,58,4,'2021-11-23 11:57:04',15),(293,72,4,'2021-11-23 11:57:58',15),(294,52,4,'2021-11-23 12:28:35',17),(295,41,5,'2021-11-23 12:37:17',10),(296,41,6,'2021-11-23 12:37:36',10),(297,41,7,'2021-11-23 12:37:41',10),(298,36,4,'2021-11-23 12:44:24',11),(299,56,4,'2021-11-23 12:44:57',11),(300,40,4,'2021-11-23 12:46:38',11),(301,86,2,'2021-11-23 12:47:02',11),(302,86,3,'2021-11-23 12:47:07',11),(303,86,4,'2021-11-23 12:47:50',11),(304,91,1,'2021-11-23 12:52:52',10),(305,92,1,'2021-11-23 12:54:43',10),(306,93,1,'2021-11-23 13:08:00',10),(307,94,1,'2021-11-23 13:08:50',10),(308,95,1,'2021-11-23 13:10:07',10),(309,96,1,'2021-11-23 13:13:42',10),(310,97,1,'2021-11-23 13:19:18',10),(311,39,4,'2021-11-23 13:20:30',11),(312,88,2,'2021-11-23 13:22:07',7),(313,89,2,'2021-11-23 13:22:11',7),(314,88,3,'2021-11-23 13:22:18',7),(315,89,3,'2021-11-23 13:22:26',7),(316,88,4,'2021-11-23 13:24:50',5),(317,71,2,'2021-11-23 13:25:51',11),(318,82,2,'2021-11-23 13:25:54',11),(319,83,2,'2021-11-23 13:25:54',11),(320,84,2,'2021-11-23 13:25:55',11),(321,85,2,'2021-11-23 13:25:56',11),(322,71,3,'2021-11-23 13:26:01',11),(323,82,3,'2021-11-23 13:26:29',11),(324,83,3,'2021-11-23 13:26:35',11),(325,84,3,'2021-11-23 13:26:42',11),(326,85,3,'2021-11-23 13:26:48',11),(327,98,1,'2021-11-23 13:29:46',11),(328,98,2,'2021-11-23 13:30:20',11),(329,98,3,'2021-11-23 13:30:24',11),(330,88,5,'2021-11-23 13:34:06',10),(331,88,6,'2021-11-23 13:34:30',10),(332,88,7,'2021-11-23 13:34:36',10),(333,15,4,'2021-11-23 13:38:22',14),(334,15,5,'2021-11-23 13:39:17',10),(335,15,6,'2021-11-23 13:39:23',10),(336,36,5,'2021-11-23 13:41:05',10),(337,36,6,'2021-11-23 13:41:10',10),(338,56,5,'2021-11-23 13:41:39',10),(339,86,5,'2021-11-23 13:41:51',10),(340,40,9,'2021-11-23 13:42:20',10),(341,52,5,'2021-11-23 13:43:15',10),(342,5,5,'2021-11-23 13:43:26',10),(343,58,5,'2021-11-23 13:45:28',10),(344,65,5,'2021-11-23 13:46:05',10),(345,90,5,'2021-11-23 13:46:14',10),(346,5,6,'2021-11-23 13:47:40',10),(347,56,6,'2021-11-23 13:47:49',10),(348,79,2,'2021-11-23 13:48:29',3),(349,80,2,'2021-11-23 13:48:31',3),(350,79,3,'2021-11-23 13:48:35',3),(351,80,3,'2021-11-23 13:48:37',3),(352,92,2,'2021-11-23 13:48:40',3),(353,92,3,'2021-11-23 13:48:42',3),(354,90,6,'2021-11-23 13:48:05',10),(355,86,6,'2021-11-23 13:48:24',10),(356,58,6,'2021-11-23 13:48:54',10),(357,42,5,'2021-11-23 13:49:09',10),(358,72,5,'2021-11-23 13:49:12',10),(359,42,6,'2021-11-23 13:49:22',10),(360,65,6,'2021-11-23 13:49:37',10),(361,52,6,'2021-11-23 13:49:54',10),(362,72,6,'2021-11-23 13:50:03',10),(363,39,9,'2021-11-23 13:50:21',10),(364,46,4,'2021-11-23 14:12:51',8),(365,53,4,'2021-11-23 14:13:02',8),(366,81,2,'2021-11-23 14:16:55',8),(367,99,1,'2021-11-23 14:17:22',10),(368,81,3,'2021-11-23 14:17:47',8),(369,100,1,'2021-11-23 14:17:59',10),(370,5,7,'2021-11-23 14:25:52',10),(371,57,7,'2021-11-23 14:26:17',10),(372,59,7,'2021-11-23 14:26:58',10),(373,101,1,'2021-11-23 14:29:27',10),(374,102,1,'2021-11-23 14:38:34',10),(375,103,1,'2021-11-23 14:39:12',10),(376,104,1,'2021-11-23 14:47:59',10),(377,9,4,'2021-11-23 15:00:06',4),(378,9,9,'2021-11-23 15:02:14',10),(379,10,4,'2021-11-23 15:09:13',4),(380,10,5,'2021-11-23 15:09:57',10),(381,10,6,'2021-11-23 15:10:23',10),(382,10,7,'2021-11-23 15:10:42',10),(383,46,9,'2021-11-23 15:16:34',10),(384,53,9,'2021-11-23 15:16:37',10),(385,105,1,'2021-11-23 15:40:17',8),(386,55,2,'2021-11-23 15:44:20',9),(387,55,3,'2021-11-23 15:44:23',9),(388,96,2,'2021-11-23 15:44:29',9),(389,96,3,'2021-11-23 15:44:33',9),(390,97,2,'2021-11-23 15:44:37',9),(391,106,1,'2021-11-23 15:44:15',8),(392,49,2,'2021-11-23 16:02:44',6),(393,49,3,'2021-11-23 16:02:49',6),(394,78,2,'2021-11-23 16:04:30',6),(395,78,3,'2021-11-23 16:04:33',6),(396,93,2,'2021-11-23 16:05:52',6),(397,93,3,'2021-11-23 16:05:55',6),(398,94,2,'2021-11-23 16:06:56',6),(399,94,3,'2021-11-23 16:06:59',6),(400,95,2,'2021-11-23 16:07:02',6),(401,95,3,'2021-11-23 16:07:06',6),(402,100,2,'2021-11-23 16:07:17',6),(403,100,3,'2021-11-23 16:07:23',6),(404,102,2,'2021-11-23 16:07:55',6),(405,102,3,'2021-11-23 16:07:58',6),(406,103,2,'2021-11-23 16:08:02',6),(407,103,3,'2021-11-23 16:08:04',6),(408,66,4,'2021-11-23 16:11:43',6),(409,64,4,'2021-11-23 16:12:50',6),(410,63,4,'2021-11-23 16:14:01',6),(411,48,4,'2021-11-23 16:14:31',6),(412,48,9,'2021-11-23 16:20:04',10),(413,63,9,'2021-11-23 16:20:09',10),(414,64,9,'2021-11-23 16:20:15',10),(415,66,9,'2021-11-23 16:20:18',10),(416,11,4,'2021-11-23 16:35:33',2),(417,60,4,'2021-11-23 16:40:27',8),(418,81,4,'2021-11-23 16:41:10',8),(419,107,1,'2021-11-23 16:47:26',10),(420,91,2,'2021-11-23 16:47:41',6),(421,91,3,'2021-11-23 16:47:54',6),(422,107,2,'2021-11-23 16:50:09',6),(423,107,3,'2021-11-23 16:50:15',6),(424,108,1,'2021-11-23 16:51:06',17),(425,109,1,'2021-11-23 16:51:25',10),(426,108,2,'2021-11-23 16:51:41',17),(427,108,3,'2021-11-23 16:51:51',17),(428,108,4,'2021-11-23 16:53:01',17);
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

-- Dump completed on 2021-11-23 16:55:22
