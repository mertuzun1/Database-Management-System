-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: donation_schema
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `Donor`
--

DROP TABLE IF EXISTS `Donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donor` (
  `Donor_ID` int NOT NULL,
  `donated_organ` varchar(40) NOT NULL,
  `Hospital_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  PRIMARY KEY (`Donor_ID`,`donated_organ`),
  KEY `Hospital_ID` (`Hospital_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`Hospital_ID`) REFERENCES `Hospital` (`Hospital_ID`) ON DELETE CASCADE,
  CONSTRAINT `donor_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donor`
--

LOCK TABLES `Donor` WRITE;
/*!40000 ALTER TABLE `Donor` DISABLE KEYS */;
INSERT INTO `Donor` VALUES (1,'Heart',1,1),(2,'Pancreas',3,1),(3,'Pancreas',8,2),(4,'Intestine',6,2),(5,'Kidney',5,2),(6,'Pancreas',2,2),(7,'Kidney',10,3),(8,'Kidney',10,3),(9,'Heart',9,4),(10,'Heart',4,4),(11,'Kidney',3,5),(12,'Pancreas',2,5),(13,'Pancreas',6,6),(14,'Pancreas',1,6),(15,'Heart',5,7),(16,'Intestine',3,7),(17,'Intestine',8,8),(18,'Intestine',5,8),(19,'Pancreas',6,9),(20,'Intestine',5,9),(21,'Pancreas',9,10),(22,'Lung',2,10),(23,'Heart',4,11),(24,'Lung',5,11),(25,'Intestine',6,12),(26,'Intestine',3,12),(27,'Lung',5,13),(28,'Pancreas',8,13),(29,'Intestine',5,14),(30,'Kidney',2,14),(31,'Heart',10,15),(32,'Lung',10,16),(33,'Kidney',9,16),(34,'Heart',5,17),(35,'Heart',3,17),(36,'Heart',3,18),(37,'Heart',6,18),(38,'Pancreas',10,19),(39,'Intestine',1,19),(40,'Intestine',4,20),(41,'Intestine',8,20),(42,'Kidney',8,21),(43,'Kidney',10,21),(44,'Lung',1,22),(45,'Heart',3,23),(46,'Lung',5,23),(47,'Intestine',4,24),(48,'Lung',9,24),(49,'Kidney',7,25),(50,'Kidney',10,25),(51,'Intestine',9,26),(52,'Pancreas',7,26),(53,'Kidney',5,27),(54,'Intestine',3,27),(55,'Lung',1,28),(56,'Kidney',2,28),(57,'Intestine',4,29),(58,'Heart',6,29),(59,'Lung',8,30),(60,'Kidney',10,30);
/*!40000 ALTER TABLE `Donor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 18:38:15
