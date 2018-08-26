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
-- Table structure for table `subclassification`
--

DROP TABLE IF EXISTS `subclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subclassification` (
  `subID` int(11) NOT NULL AUTO_INCREMENT,
  `mainClass` varchar(45) NOT NULL,
  `subClass` varchar(45) NOT NULL,
  PRIMARY KEY (`subID`,`mainClass`),
  KEY `mainClass_idx` (`mainClass`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subclassification`
--

LOCK TABLES `subclassification` WRITE;
/*!40000 ALTER TABLE `subclassification` DISABLE KEYS */;
INSERT INTO `subclassification` VALUES (3,'Engineering','Mechanical'),(4,'Engineering','Civil'),(79,'Engineering','Marine'),(80,'Arts','Poem'),(81,'Arts2','x'),(82,'Medical','Anatomy'),(83,'Arts','Decorative Art'),(84,'Arts','Crafts'),(85,'Arts','Architecture'),(86,'Arts','Calligraphy'),(87,'Arts','Collage'),(88,'Arts','Drawing'),(89,'Arts','Folk Art'),(90,'Arts','Graffiti'),(91,'Arts','Photography'),(92,'Arts','Religious'),(93,'Arts','Sculpture'),(95,'Languages','Tamil'),(96,'Languages','Japanese'),(97,'Languages','Sinhala'),(98,'Languages','Arabic'),(99,'Languages','Hindi'),(100,'Engineering','Robotics'),(101,'Engineering','Aerodynamic'),(102,'Engineering','Telecommunication'),(103,'Engineering','High Voltage'),(104,'Engineering','Quantity Surveying'),(105,'Novel','Western'),(106,'Novel','Romances'),(107,'Novel','Fiction'),(108,'Novel','Horror'),(109,'Novel','Adventure'),(110,'Medical','Pharmacy'),(111,'Medical','Ayuruvedic'),(112,'Medical','Siddha'),(113,'Medical','Pathology'),(114,'Medical','Microbiology'),(115,'Medical','Genetics'),(116,'Medical','General Surgery'),(117,'Medical','Diseases');
/*!40000 ALTER TABLE `subclassification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-26 12:46:09
