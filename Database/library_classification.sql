CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mainClass` varchar(45) DEFAULT NULL,
  `subClass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
INSERT INTO `classification` VALUES (1,'Engineering','Civil'),(4,'Engineering','Mechanical'),(5,'Medical','Anatomy'),(6,'Medical','Diseases'),(7,'null11',NULL),(8,'Medical','Pharmacy'),(9,'Medical','Ayuruvedic'),(10,'Medical','Ancient Medicine'),(11,'Medical','Biochemistry'),(12,'Medical','Genetics'),(13,'Medical','Pathology'),(14,'Medical','Microbiology'),(15,'Medical','General Surgery'),(16,'Engineering','Architecture'),(17,'Engineering','Chemical'),(18,'Engineering','Mathematics'),(19,'Engineering','Biomedical'),(20,'Novel','Westerns'),(21,'Novel','Romances'),(22,'Novel','Mysteries'),(23,'Novel','Science Fiction'),(24,'Novel','Horror'),(25,'Novel','Action '),(26,'Novel','Adventure'),(27,'Arts','Fine Art'),(28,'Arts','Visual Art'),(29,'Arts','Decorative Art'),(30,'Arts2','Applied Art2'),(31,'Arts','Crafts'),(32,'Arts','Architecture'),(33,'Arts','Calligraphy'),(34,'Arts','Collage'),(35,'Arts','Drawing'),(36,'Arts','Folk Art'),(37,'Arts','Graffiti'),(38,'Arts','Photography'),(39,'Arts','Religious'),(40,'Arts','Sculpture'),(41,'Languages','Japanese'),(42,'Languages','Sinhala'),(43,'Languages','Sinhala'),(44,'Languages','Tamil'),(45,'Languages','Arabic'),(49,'Engineering','Mechatronics'),(53,'Medical','Nuerology'),(54,'Engineering','Robotics'),(62,'Music','Indian'),(63,'Music','Western'),(64,'Music','Jazz'),(65,'Music','Pop'),(68,'Novel','Historical'),(69,'Novel','Translation'),(70,'Novel','Poem'),(71,'Engineering','Marine '),(76,'asad','ada'),(77,'nnj','ytgf'),(78,'asf','af'),(79,'','null');
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-26 12:46:08
