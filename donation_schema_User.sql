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
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `User_ID` int NOT NULL,
  `User_name` varchar(40) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `City_Name` varchar(30) NOT NULL,
  `User_phone_no` varchar(10) NOT NULL,
  `Medical_Insurance` int DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Adem Aydın','1978-08-21','Bursa','5437888896',1),(2,'Ayşe Yılmaz','1985-04-12','İstanbul','5551234567',0),(3,'Mehmet Kaya','1990-12-05','Ankara','5329876543',1),(4,'Fatma Demir','1982-07-17','İzmir','5056789123',0),(5,'Ahmet Yıldız','1975-03-29','Antalya','5543217890',1),(6,'Zeynep Arslan','1988-09-14','Bursa','5334567890',0),(7,'Ali Can','1983-11-02','Adana','5559876543',0),(8,'Aylin Kara','1995-06-25','Trabzon','5423456789',0),(9,'Mustafa Yılmaz','1980-02-18','İstanbul','5552223333',1),(10,'Elif Şahin','1991-10-30','Ankara','5334445556',0),(11,'Emre Tekin','1987-05-12','Antalya','5059876543',1),(12,'Aslı Demir','1984-08-07','İzmir','5321234567',0),(13,'Deniz Kaya','1993-03-19','Bursa','5423456789',1),(14,'Selma Toprak','1979-12-23','Adana','5336789123',0),(15,'Cem Yılmaz','1986-01-15','Trabzon','5052345678',1),(16,'Ayşe Can','1990-07-08','İstanbul','5327890123',0),(17,'Kemal Arslan','1982-04-03','Ankara','5421112233',1),(18,'Seda Yıldız','1988-09-27','Antalya','5334445556',0),(19,'Eren Yaman','1981-11-10','İzmir','5545678912',1),(20,'Nazlı Uçar','1994-05-04','Adana','5557890123',0),(21,'Burak Taş','1989-02-28','Trabzon','5323456789',1),(22,'İrem Korkmaz','1983-10-17','İstanbul','5423456789',0),(23,'Engin Tanrıkulu','1987-06-09','Ankara','5339876543',1),(24,'Berna Aslan','1980-03-22','Antalya','5056789123',0),(25,'Şevval Şahin','1992-09-05','İzmir','5543217890',1),(26,'Ahmet Kaya','1977-04-18','Adana','5334567890',0),(27,'Gamze Çelik','1985-12-31','Trabzon','5421234567',1),(28,'Mert Uysal','1996-08-14','İstanbul','5329876543',0),(29,'Pelin Doğan','1984-01-27','Ankara','5333456789',1),(30,'Canan Kara','1993-07-10','Antalya','5055556666',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
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
