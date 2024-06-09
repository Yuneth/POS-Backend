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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `likes` int NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_photo` varchar(255) NOT NULL,
  `product_price` int NOT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'2024-04-30 21:22:08.226000',1,1,'Include Extended Warranty Plus (2 Years Extended Warranty + Fire, Lightning, Electrical Inclusion, Explosion, Flood, Cyclone, Storm, Tempest & Natural Disasters Cover) for Rs.23370.00','HUAWEI MateBook','20242230212208',267999,'2024-04-30 21:22:08.226000'),(2,1,'2024-04-30 21:27:08.753000',1,1,'Include Extended Warranty Plus (2 Years Extended Warranty + Fire, Lightning, Electrical Inclusion, Explosion, Flood, Cyclone, Storm, Tempest & Natural Disasters Cover) for Rs.49470.00','MSI Cyborg 15 AI A1VFK','20242730212708',560999,'2024-04-30 21:27:08.753000'),(3,2,'2024-04-30 21:29:41.101000',1,1,'Include Extended Warranty Plus for Mobile (Normal + 1 Year) for Rs.3200.00','HONOR X8B ','20242930212941',79999,'2024-04-30 21:29:41.101000'),(52,1,'2024-05-05 08:51:05.859000',1,1,'Include Extended Warranty Plus (2 Years Extended Warranty + Fire, Lightning, Electrical Inclusion, Explosion, Flood, Cyclone, Storm, Tempest & Natural Disasters Cover) for Rs.29499.00','Dell Inspiron 3530','20245105085105',338899,'2024-05-24 05:35:35.274000'),(102,1,'2024-06-07 16:31:45.742000',1,1,'Intel Core i3 – 1215U Processor\r\n256GB M.2 NVMe SSD\r\n8GB Soldered DDR4 RAM\r\n15.6″ FHD Display\r\n Integrated Intel UHD Graphics\r\nDos','Lenovo IdeaPad 3','20243107163145',119500,'2024-06-07 16:31:45.742000');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
