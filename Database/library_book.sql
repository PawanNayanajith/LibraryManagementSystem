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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `bookID` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `mainClass` varchar(45) DEFAULT NULL,
  `subClass` varchar(45) DEFAULT NULL,
  `yop` varchar(45) DEFAULT NULL,
  `lpy` varchar(45) DEFAULT NULL,
  `isbnNo` varchar(45) DEFAULT NULL,
  `nop` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('3','3','3','3','3','3','3','3','3','3'),('4','4','4','4','4','4','4','4','4','4'),('5','5','5','5','5','5','5','5','5','5'),('7','7','7','7','7','7','7','7','7','7'),('A123','Origami','Xuen Juan','Funghai','Arts','Crafts','2017','2018','369-X-96-783695-5','520'),('A200','Nirvana','Sri Sumangala Thero','Daham Publications','Arts','Religious','1990','2015','963-7-89-412036-3','600'),('B234','Human Anatomy','Dr. Sendreyas','Medocx','Medical','Anatomy','1998','2017','228-3-16-567810-2','1225'),('E222','Aero Dynamics','Dr. Jonathan','Sun Corp','Engineering','Civil','1889','2013','639-4-85-457896-2','1658'),('E543','Units & Dimensions','Mr. Ashok Kumar','IndianText','Engineering','Civil','1998','2018','789-8-25-784512-2','1369'),('E879','Water Turbines Handbook','Fernando D','Spring','Engineering','Marine ','2017','2018','364-751-326985-2','963'),('M567','Human Cadavers ',' Mary Roach','Goodreads Author','Medical','Diseases','1889','2016','144-5-26-369856-1','1693'),('M980','Genetic Engineering','Johnathen Flask','House D','Medical','Genetics','1993','2003','852-78-6-895623-7','2000'),('N123','Titanic','James Cameran','Pablo','Novel','Romances','1889','2008','789-4-23-789632-6','363'),('N211','Origin','Dan Brown','ReadersView','Novel','Fiction','2003','2014','785-9-56-123698-2','852'),('N90','Harry Poter','Marks Collin','Hensan','Novel','Kids','1998','2010','1-236-89654-78-6','944');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-26 12:46:07
