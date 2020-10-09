-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.143.149    Database: expertips
-- ------------------------------------------------------
-- Server version	5.5.51-38.1-log

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
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(1) NOT NULL,
  `file_upload` varchar(55) NOT NULL,
  `file_upload_link` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` int(1) NOT NULL,
  `date_create` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,2,'','https://www.youtube.com/watch?v=IcrbM1l_BoI','',1,'2015-02-02 17:44:25',0);
INSERT INTO `experience` VALUES (2,1,'bg-background.jpg','','',1,'2015-02-14 19:15:13',1);
INSERT INTO `experience` VALUES (3,2,'20150404210415.jpg','','',1,'2015-04-04 21:15:08',6);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `zip` int(1) NOT NULL,
  `terms` int(1) NOT NULL,
  `newsletter` int(1) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fer','fersaavedra85@hotmail.com','fer','fer',0,1,0,'2015-02-02 15:50:22','2015-02-02 15:50:22');
INSERT INTO `users` VALUES (2,'fer','fersaavedra85@hotmail.com','fer','fer',0,1,0,'2015-02-02 15:51:28','2015-02-02 15:51:28');
INSERT INTO `users` VALUES (3,'Fernando Saavedra','fersaavedra85@hotmail.com','','',0,1,0,'2015-04-04 20:14:21','2015-04-04 20:14:21');
INSERT INTO `users` VALUES (4,'Fernando Saavedra','fersaavedra85@hotmail.com','','',0,1,0,'2015-04-04 20:18:08','2015-04-04 20:18:08');
INSERT INTO `users` VALUES (5,'Fernando Saavedra','fersaavedra85@hotmail.com','','',0,1,0,'2015-04-04 20:18:12','2015-04-04 20:18:12');
INSERT INTO `users` VALUES (6,'Fernando Saavedra','fersaavedra85@hotmail.com','','',0,1,0,'2015-04-04 20:28:56','2015-04-04 20:28:56');
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

-- Dump completed on 2020-02-21 16:41:50