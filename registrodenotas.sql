-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: registrodenotas
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Anna','white','74451200','Anna@s.com','0');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `apellido` varchar(500) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael adal','Parada G','rparada','$2b$10$nbSDK7kZVVeqDPUKD.O1KuVy40DxqL06r1QV.0vA1vg8x7BtXvE4i'),(2,'Alex ','Cast','vcastillo','$2b$10$fgMHbWFJLElI6u6kUrAWzONWl7w08R3kM0snf2DLqTuUO6CcPcUtG'),(3,'acastillo','Victor Alex','Castillo Mancia','$2b$10$ofaT2OtmHrzNHIB9IPJ.pOUBU9IkBRThwACmOM/ngk0vcOefXD3G2'),(4,'alopez','Alex','Lopezz','$2b$10$f1e883AE2F4tGMhlk0Os8.xRTXKASZ8hQ1XQJ57EE5uLUF4nt6AYO'),(5,'aaa','Victor Alex','Castillo Mancia','$2b$10$nk9r.v7Ty6PKlCCxP2AbCusqoI9LpRtaSs/4qN0DeI89HFAerT0zK'),(6,'Alex','Castillo','mmm','$2b$10$1M66tTlX5dKBnLn6.Q8U1OFSjNBbtdXRZPW2R/yWT72MFtBs2vW7.'),(7,'Victor Alex','Castillo Mancia','cccc','$2b$10$s/NYwF8Uu.XhBooUSftXUefBvNdnznInUPdn62T.nXdcr.LliSGiG'),(8,'alex','alex','alex','$2b$10$m/AnDTKlydGPbT0Taflc4OAv8WzyA1ZzbdePaZIbozzg1d9ZwB5qm'),(9,'dsa','das','asdas','$2b$10$5t.Z60cMOM97LGcrAdzAku.N7oOA.UZE28w/xz19OiLP0FfmYBbvG'),(10,'sad','dsa','dsad','$2b$10$.tOmWUowOnnduD4hUO2il.RBuPCJ2/AHOqU4suNAdeUn2XkNAbFA.'),(11,'sss','sss','sda','$2b$10$8nP5fe9mJ5noHyj8b2Jq0uQc86Jny1KwSwpyqCunJq7KWjNU8bCQe'),(12,'Maria','Perezz','mmaria','$2b$10$nrSnLRfViQS7Yy5ewrYhNOV0QQJQCC9gXMZXkMv9JsH7Y7vz6NkuS'),(13,'sssa','sssa','sssa','$2b$10$ae79T7gyj8DDzUB4bwPfN.5L7IIVjWZSEqMldz6wNtl5P4JjjbR.W');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 16:55:56
