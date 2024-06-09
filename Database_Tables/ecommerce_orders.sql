-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_mobile` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` decimal(38,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Mathugama','nipunimadushani52@gmail.com','717032254','Nipuni Perera','2024-04-30 21:32:23.564000','2024-04-30 21:32:23.564000','Delivered',NULL,0,1),(2,'Colombo','yumneth253@gmail.com','767855214','Amal Perera','2024-05-02 09:34:14.126000','2024-05-02 09:34:14.127000','Delivered',NULL,0,3),(3,'Kaluthara','yumneth253@gmail.com','767855214','Amal Perera','2024-05-05 06:33:18.047000','2024-05-05 06:33:18.048000','Delivered',NULL,0,3),(4,'Mathugama','nipunimadushani52@gmail.com','717032254','Nipuni Perera','2024-05-05 09:11:25.204000','2024-05-05 09:11:25.204000','Delivered',NULL,0,1),(5,'Panadura','yumneth253@gmail.com','767855214','Amal Perera','2024-05-05 11:32:32.409000','2024-05-05 11:32:32.409000','Delivered',NULL,0,3),(6,'Moratuwa','yumneth253@gmail.com','767855214','Amal Perera','2024-05-05 21:31:29.944000','2024-05-05 21:31:29.944000','Cancelled',NULL,0,3),(7,'Malabe','yumneth253@gmail.com','767855214','Amal Perera','2024-05-08 09:14:51.541000','2024-05-08 09:14:51.541000','Delivered',NULL,0,3),(8,'Columbo','yumneth253@gmail.com','767855214','Amal Perera','2024-05-08 09:32:36.913000','2024-05-08 09:32:36.913000','Delivered',NULL,0,3),(9,'Panadura','yumneth253@gmail.com','767855214','Amal Perera','2024-05-08 10:18:11.867000','2024-05-08 10:18:11.867000','Delivered',NULL,0,3),(10,'Gampaha','yumneth253@gmail.com','767855214','Amal Perera','2024-05-08 10:21:41.221000','2024-05-08 10:21:41.221000','Delivered',NULL,0,3),(11,'Panadura','yumneth253@gmail.com','767855214','Amal Perera','2024-05-09 20:57:55.629000','2024-05-09 20:57:55.629000','Delivered',NULL,0,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09  9:50:15
