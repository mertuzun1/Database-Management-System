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
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `Doctor_ID` int NOT NULL,
  `Doctor_Name` varchar(40) NOT NULL,
  `Department_Name` varchar(35) NOT NULL,
  `Hospital_ID` int NOT NULL,
  PRIMARY KEY (`Doctor_ID`),
  KEY `Hospital_ID` (`Hospital_ID`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_ID`) REFERENCES `Hospital` (`Hospital_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Aylin Yılmaz ','Pulmonology',1),(2,'Emre Demir ','Cardiology',1),(3,'Fulya Özmantar','Endocrinology',1),(4,'Mert Uzun','Gastronology',1),(5,'Cemil Semih Yenikomşuoğlu','Nephrology',1),(6,'Eda Nur Güneş','Hepatology',2),(7,'Ceren Yılmaz','Pulmonology',2),(8,'Canan Kaya','Endocrinology',2),(9,'Burak Demir','Cardiology',2),(10,'Zehra Çelik','Nephrology',2),(11,'Gizem Aksoy','Gastronology',3),(12,'Oğuzhan Şahin','Endocrinology',3),(13,'Gülbahar Bozkurt','Hepatology',3),(14,'Kaan Yıldırım','Pulmonology',3),(15,'Yasemin Aslan','Cardiology',3),(16,'Cihan Yılmaz','Nephrology',3),(17,'Pelin Kaya','Endocrinology',4),(18,'Berkay Demir','Hepatology',4),(19,'Kerem Çelik','Pulmonology',4),(20,'Selin Topuz','Gastronology',4),(21,'Ayşe Kaya','Hepatology',4),(22,'Mehmet Demir','Pulmonology',4),(23,'Fatma Çelik','Nephrology',5),(24,'Elif Öztürk','Cardiology',5),(25,'Mustafa Aksoy','Endocrinology',5),(26,'Zeynep Şahin','Gastronology',5),(27,'Can Erdoğan','Nephrology',5),(28,'Esra Yıldırım','Pulmonology',5),(29,'Seda Aslan','Endocrinology',5),(30,'Burak Yılmaz','Hepatology',5),(31,'Gizem Kaya','Gastronology',6),(32,'Emre Demir','Nephrology',6),(33,'Büşra Çelik','Pulmonology',6),(34,'Onur Topçu','Cardiology',6),(35,'Selin Şahin','Endocrinology',6),(36,'Deniz Erdoğan','Hepatology',6),(37,'Ece Yıldırım','Gastronology',6),(38,'Tolga Aslan','Nephrology',6),(39,'İrem Yılmaz','Pulmonology',6),(40,'Oğuzhan Kaya','Cardiology',6),(41,'İpek Demir','Endocrinology',6),(42,'Cem Öztürk','Hepatology',7),(43,'Sevil Çelik','Gastronology',8),(44,'Ali Aksoy','Nephrology',8),(45,'Sibel Güneş','Pulmonology',8),(46,'Eren Sel','Cardiology',9),(47,'Melis Yıldırım','Endocrinology',9),(48,'Berk Aslan','Hepatology',10),(49,'Gülşen Bal','Gastronology',10),(50,'Berkay Kaya','Nephrology',10);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
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
