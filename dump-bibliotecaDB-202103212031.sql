-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.32    Database: bibliotecaDB
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Lesley-Ann','Jones'),(2,'Woody','Allen'),(3,'Amin','Maalouf'),(4,'Marcos','Chicot'),(5,'Dan','Brown'),(6,'Stella','Gibbons'),(7,'Thomas','Coraghessan Boyle'),(8,'Oscar','Wilde'),(9,'Pablo','Neruda'),(10,'Franz','Kafka'),(11,'William',' Shakespeare'),(13,'Pepe','Jones'),(14,'Lesley-Ann','Jones');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Alianza Editorial'),(2,'Editorial Planeta'),(3,'Cátedra'),(4,'Mondadori'),(5,'Ediciones Siruela'),(6,'Blackie Books'),(7,'Impedimenta'),(9,'Nordica'),(10,'Cruilla2');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `tematica` varchar(255) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `imagen` blob,
  `paginas` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `veces_prestado` int DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `editorial` int DEFAULT NULL,
  `autor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`),
  KEY `editorial` (`editorial`),
  KEY `autor` (`autor`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`editorial`) REFERENCES `editorial` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`autor`) REFERENCES `autor` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (2,'A propósito de nada','9788491819950','Autobiografía, Biografía','','',440,'',0,'jazamo',1,2),(3,'Nuestros inesperados hermanos','9788413621210','Ficción de aventuras','','',296,'',0,'orlares',1,3),(4,'El asesinato de Platón','9788408236702','Novela contemporánea | General Novela histórica | Antigua Grecia','','',944,'',0,'valarias5',2,4),(5,'El código Da Vinci','9789584240323','Novela contemporánea | General Novela','','',624,'',0,'valarias5',2,5),(6,'La hija de Robert Poste','9788493760137','Novela, Ciencia ficción,','','',368,'',0,'andregar',7,6),(7,'Los Terranautas','9788417553722','Ciencia ficción','','',568,'',0,'andregar',7,7),(8,'Cuentos de Oscar Wilde','9788408239420','Novela literaria | Relatos','','',160,'',0,'homersi',10,8),(9,'Cien sonetos de amor','9788432237812','Poesía | General poesía','','',144,'',0,'kasan',10,9),(10,'La metamorfosis','9788467043648','Novela literaria | Narrativa literaria clásicos','','',128,'',0,'epe',10,10);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario1` varchar(255) DEFAULT NULL,
  `usuario2` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario1` (`usuario1`),
  KEY `usuario2` (`usuario2`),
  CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`usuario1`) REFERENCES `usuario` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`usuario2`) REFERENCES `usuario` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (2,'kasan','andregar',NULL),(3,'epe','lulo',NULL);
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valoracion_libro` varchar(255) DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `libro` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`),
  KEY `libro` (`libro`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`libro`) REFERENCES `libro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (2,'Regular','2021-03-20','2021-02-22','lumar',2),(4,'Excelente','2021-03-20','2021-02-22','lumar',2);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `username` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` blob,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('andregar','Andres','Ospina','andruw15@hotmail.com','123456789','',''),('epe','Erika','Perez','kika24@hotmail.com','123456789','',''),('homersi','Homero','Simsomp','homerito45@gmail.com','123456789','',''),('jazamo','Javier','Zamorano','jaza23@outlook.es','123456789','',''),('kasan','Katerine','Robles','katerrible@hotmail.com','123456789','',''),('lulo','Luis','Preciado','lucho25@gmail.com','123456789','',''),('lumar','Luisa','Martinez','lumartinez5@gmail.com','123456789','',''),('orlares','Orlando','Lopez','orlando1995@gmail.com','123456789','',''),('valarias5','Valeria','Arias','valeri1@hotmail.com','123456789','',''),('vilo','Victor','Lozano','victor.lozano1780@gmail.com','123456789','','');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bibliotecaDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 20:31:07
