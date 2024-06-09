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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile_number` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nipunimadushani52@gmail.com','Nipuni','F','Perera',717032254,'$2a$10$yFTOo1M.i8ax31En1Sroveq842vVGKJBq89maNHonu/N2DyKUaLbi','20240130210142','nipunimadushani52@gmail.com'),(2,'yunethperera987@gmail.com','Yuneth','M','Perera',717032254,'$2a$10$yFTOo1M.i8ax31En1Sroveq842vVGKJBq89maNHonu/N2DyKUaLbi','20240130210142','yunethperera987@gmail.com'),(3,'yumneth253@gmail.com','Amal','M','Perera',767855214,'$2a$10$K3ml8j0owjApOkh.v1vKwOe.ACrekOe0G9F7cl.cCzvBEjBu1.fje','20243302093319','yumneth253@gmail.com'),(4,'saman@gmail.com','Saman','M','Silva',754588963,'$2a$10$vXivecFAlYL9nr4LgerfYOmdb5oKPoQPVGYDwk3ABZ0zONsiFhB5O','20242802132806','saman@gmail.com'),(5,'abcd@gmail.com','abvc','F','dddddd',714525589,'$2a$10$akcpHGVZFZQoMRGdfPMuUebfQyATjNzp7vJnWW5Zk4PXTXbx8y16S','20242405092457','abcd@gmail.com'),(6,'abcd@gmail.com','ajhcbc','F','cccac',713456643,'$2a$10$kUA64XZOaVBTmbos9usq4.XHnSlZ03LRDtZVpkYBZ3t8dqKpZZb/q','20240524100501','abcd@gmail.com'),(7,'abcd1236@gmail.com','asaa','F','sasacsa',773454456,'$2a$10$eJBwO6P7MJEV/bwI9es1gu3YR1ONVN2sJwsLvGrNm.xKEiG2THqm6','20241224101230','abcd1236@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
