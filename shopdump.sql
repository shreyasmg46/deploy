-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: shop1
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `itemname` varchar(20) DEFAULT NULL,
  `itemprice` varchar(20) DEFAULT NULL,
  `itemquantity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,'adidasshoes','2500','1'),(2,1,'Tshirt','800','1'),(3,2,'nikeshoes','5000','1'),(4,5,'nikeshoes','5000','1'),(5,5,'nikeshoes','5000','1'),(6,8,'nikeshoes','5000','1'),(7,8,'nikeshoes','5000','1'),(8,9,'nikeshoes','5000','1'),(9,10,'nikeshoes','5000','1'),(10,11,'nikeshoes','5000','1'),(11,12,'nikeshoes','5000','1'),(12,12,'iwatch','50000','1'),(13,12,'drone','70000','1'),(14,12,'drone','70000','1'),(15,13,'drone','70000','1'),(16,14,'drone','70000','1'),(17,14,'iwatch','50000','1'),(18,14,'nikeshoes','5000','1'),(19,15,'drone','70000','1'),(20,15,'iwatch','50000','1'),(21,15,'nikeshoes','5000','1'),(22,16,'iwatch','50000','1'),(23,17,'nikeshoes','5000','1'),(24,18,'nikeshoes','5000','1'),(25,19,'iwatch','50000','1'),(26,20,'drone','70000','1'),(27,21,'iwatch','50000','1'),(28,21,'drone','70000','1');
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(20) DEFAULT NULL,
  `totalcost` varchar(20) DEFAULT NULL,
  `orderstatus` varchar(20) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'hpk@gmail.com','2722','shipped','2023-02-23'),(2,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(3,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(4,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(5,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(6,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(7,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(8,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(9,'hpk@gmail.com',NULL,'shipped','2023-02-24'),(10,'sam@gmail.com',NULL,'shipped','2023-02-24'),(11,'sam@gmail.com',NULL,'shipped','2023-02-24'),(12,'hpk@gmail.com',NULL,'shipped','2023-02-25'),(13,'sam@gmail.com',NULL,'shipped','2023-02-25'),(14,'hpk@gmail.com',NULL,'shipped','2023-02-27'),(15,'virat@gmail.com',NULL,'shipped','2023-02-27'),(16,'virat@gmail.com',NULL,'shipped','2023-02-27'),(17,'virat@gmail.com',NULL,'shipped','2023-02-27'),(18,'sam@gmail.com',NULL,'shipped','2023-02-27'),(19,'virat@gmail.com',NULL,'shipped','2023-02-27'),(20,'sam@gmail.com',NULL,'shipped','2023-02-27'),(21,'sam@gmail.com',NULL,'shipped','2023-03-01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `emailid` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('harsha','hpk@gmail.com','1234'),('sam','sam@gmail.com','12'),('virat','virat@gmail.com','123'),('messi','messi@gmail.com','10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01 17:16:36
