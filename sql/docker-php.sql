-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mts
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `type` tinyint DEFAULT NULL,
                            `invoice_date` varchar(45) DEFAULT NULL,
                            `customer_name` varchar(45) DEFAULT NULL,
                            `customer_address` varchar(45) DEFAULT NULL,
                            `product_name` varchar(255) DEFAULT NULL,
                            `quantity` int DEFAULT NULL,
                            `price` double DEFAULT NULL,
                            `total` double DEFAULT NULL,
                            `grand_total` double DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,'43831','Idaline Mateuszczyk','95798 Fieldstone Point','Bread - Granary Small Pull',1,10.5,10.5,55.5),(2,1,'43831','Idaline Mateuszczyk','95798 Fieldstone Point','Soup - Knorr, Ministrone',2,20,40,55.5),(3,1,'43831','Idaline Mateuszczyk','95798 Fieldstone Point','Pepper - Green Thai',1,5,5,55.5),(4,2,'43832','Neill Manz','7 Commercial Road','Soup - Knorr, Ministrone',1,20,20,80.4),(5,2,'43832','Neill Manz','7 Commercial Road','Chicken - Wieners',2,30.2,60.4,80.4),(6,3,'43833','Alli Decker','09 Rieder Terrace','Chicken - Wieners',1,30.2,30.2,137.7),(7,3,'43833','Alli Decker','09 Rieder Terrace','Soup - Knorr, Ministrone',2,20,40,137.7),(8,3,'43833','Alli Decker','09 Rieder Terrace','Pepper - Green Thai',3,5,15,137.7),(9,3,'43833','Alli Decker','09 Rieder Terrace','Bread - Granary Small Pull',5,10.5,52.5,137.7);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tets`
--

DROP TABLE IF EXISTS `tets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tets` (
                        `idtetsf` int NOT NULL AUTO_INCREMENT,
                        PRIMARY KEY (`idtetsf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tets`
--

LOCK TABLES `tets` WRITE;
/*!40000 ALTER TABLE `tets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28  1:59:11
