CREATE DATABASE  IF NOT EXISTS `gym_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gym_db`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: gym_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'John','Doe','9865819'),(2,'Jane','Smith','2178967'),(3,'Michael','Johnson','1297379'),(4,'Emily','Davis','9949997'),(5,'David','Martinez','5857849'),(6,'Sophia','Garcia','9439252'),(7,'Daniel','Rodriguez','9622715'),(8,'Olivia','Wilson','9795818'),(9,'Matthew','Anderson','0110946'),(10,'Ava','Thomas','1167280'),(11,'James','Taylor','5503559'),(12,'Isabella','Moore','4015959'),(13,'Alexander','Jackson','3569117'),(14,'Mia','White','5797710'),(15,'Ethan','Harris','8281200'),(16,'Amelia','Martin','4012869'),(17,'William','Thompson','5220749'),(18,'Charlotte','Martinez','4065135'),(19,'Lucas','Robinson','4663431'),(20,'Harper','Clark','1121750'),(21,'Mason','Lewis','1618456'),(22,'Ella','Walker','4727034'),(23,'Logan','Hall','8779800'),(24,'Avery','Allen','9717898'),(25,'Jackson','Young','2250094'),(26,'Sofia','Hernandez','2096775'),(27,'Sebastian','King','3733594'),(28,'Grace','Wright','2377648'),(29,'Aiden','Lopez','0687457'),(30,'Chloe','Hill','6304341'),(31,'Henry','Scott','9459336'),(32,'Lily','Green','8383657'),(33,'Samuel','Adams','3540280'),(34,'Zoe','Baker','2550427'),(35,'Joseph','Gonzalez','2131296'),(36,'Hannah','Nelson','3005200'),(37,'David','Carter','8632115'),(38,'Emily','Mitchell','4144975'),(39,'Andrew','Perez','4828529'),(41,'Joshua','Turner','4053023'),(42,'Abigail','Phillips','5141950'),(43,'Christopher','Campbell','3550682'),(44,'Mia','Parker','2327559'),(45,'Anthony','Evans','0985752'),(46,'Avery','Edwards','7946083'),(47,'Dylan','Collins','6773160'),(48,'Daniel','Leyva','6527233'),(50,'Robert','Evans','3223345'),(51,'Juan','Gomez','6281923'),(52,'Albert','Turner','2345678');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-20 18:06:12
