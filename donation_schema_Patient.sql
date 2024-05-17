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
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `Patient_ID` int NOT NULL,
  `organ_req` varchar(50) NOT NULL,
  `Patient_phone_no` varchar(10) NOT NULL,
  `Doctor_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  PRIMARY KEY (`Patient_ID`,`organ_req`),
  KEY `User_ID` (`User_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`Doctor_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Heart','5551234567',2,1),(2,'Kidney','5339876543',5,2),(3,'Pancreas','5548765432',3,3),(4,'Kidney','5324567890',10,4),(5,'Heart','5376543210',9,5),(6,'Lung','5509876543',1,6),(7,'Intestine','5361234567',4,7),(8,'Intestine','5387654321',11,8),(9,'Lung','5312345678',7,9),(10,'Kidney','5398765432',16,10),(11,'Kidney','5412345678',23,11),(12,'Liver','5367890123',7,12),(13,'Intestine','5376543210',20,13),(14,'Heart','5387654321',15,14),(15,'Liver','5390123456',6,15),(16,'Lung','5310987654',14,16),(17,'Liver','5321098765',13,17),(18,'Kidney','5365432109',10,18),(19,'Kidney','5376543210',25,19),(20,'Liver','5409876543',18,20),(21,'Intestine','5432109876',26,21),(22,'Liver','5512345678',21,22),(23,'Lung','5523456789',19,23),(24,'Intestine','5534567890',31,24),(25,'Heart','5545678901',24,25),(26,'Lung','5556789012',22,26),(27,'Intestine','5567890123',37,27),(28,'Liver','5578901234',30,28),(29,'Kidney','5589012345',9,29),(30,'Intestine','5590123456',43,30),(31,'Pancreas','5501234567',8,1),(32,'Liver','5512345678',36,2),(33,'Heart','5523456789',34,3),(34,'Heart','5534567890',40,4),(35,'Liver','5545678901',42,5),(36,'Pancreas','5556789012',12,6),(37,'Heart','5567890123',46,7),(38,'Liver','5578901234',48,8),(39,'Pancreas','5589012345',17,9),(40,'Lung','5590123456',28,10);
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
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
