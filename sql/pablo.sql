-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.217.45    Database: pablo1
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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(55) NOT NULL,
  `video` varchar(55) NOT NULL,
  `published` int(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'prueba de a','prueba-de-aa-e-n','ferfer','20141025233627.jpg','107305488',1,'2014-10-24 16:48:50');
INSERT INTO `blog` VALUES (2,'prueba de a','prueba-de-a','ferfer','','107305488',1,'2014-10-26 11:32:44');
INSERT INTO `blog` VALUES (4,'prueba de aá é ñ','prueba-de-aa-e-n','ferfer','20141025233627.jpg','',0,'2014-10-24 16:56:07');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'evento nombre','direcion del evento , mexico','2015-04-30 14:14:23');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frases`
--

DROP TABLE IF EXISTS `frases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frases` (
  `id` int(11) NOT NULL,
  `frases` varchar(500) NOT NULL,
  `published` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frases`
--

LOCK TABLES `frases` WRITE;
/*!40000 ALTER TABLE `frases` DISABLE KEYS */;
INSERT INTO `frases` VALUES (0,'frase del dia  publicada',1);
INSERT INTO `frases` VALUES (0,'frase del dia NO PUBLICADA',0);
/*!40000 ALTER TABLE `frases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galery`
--

DROP TABLE IF EXISTS `galery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `noticias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galery`
--

LOCK TABLES `galery` WRITE;
/*!40000 ALTER TABLE `galery` DISABLE KEYS */;
INSERT INTO `galery` VALUES (1,'foto 1','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (2,'foto 2','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (3,'foto 3','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (4,'foto 4','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (5,'foto 5 ','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (6,'foto 6','photo-1.jpg','2015-04-26',1);
INSERT INTO `galery` VALUES (7,'','20150504230217.','2015-05-05',0);
INSERT INTO `galery` VALUES (8,'','20150504230916.','2015-05-05',0);
INSERT INTO `galery` VALUES (9,'','20150504231149.','2015-05-05',0);
INSERT INTO `galery` VALUES (10,'','20150504235019.','2015-05-05',0);
INSERT INTO `galery` VALUES (11,'nuevo','20150505001000.jpg','2015-05-05',0);
INSERT INTO `galery` VALUES (12,'nueva prueba','20150505001121.jpg','2015-05-05',0);
/*!40000 ALTER TABLE `galery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join`
--

DROP TABLE IF EXISTS `join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(55) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join`
--

LOCK TABLES `join` WRITE;
/*!40000 ALTER TABLE `join` DISABLE KEYS */;
INSERT INTO `join` VALUES (1,'201.157.90.170','2015-04-29');
INSERT INTO `join` VALUES (2,'201.157.90.170','2015-04-29');
INSERT INTO `join` VALUES (3,'187.188.72.17','2015-04-29');
INSERT INTO `join` VALUES (4,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (5,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (6,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (7,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (8,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (9,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (10,'187.178.161.89','2015-04-30');
INSERT INTO `join` VALUES (11,'187.178.161.89','2015-04-30');
INSERT INTO `join` VALUES (12,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (13,'187.188.72.17','2015-04-30');
INSERT INTO `join` VALUES (14,'187.188.72.17','2015-04-30');
/*!40000 ALTER TABLE `join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(55) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,' Por un mejor distrito','Hoy inicia la contienda electoral por el Distrito XVII del Estado de México. Pablo Peralta llevará al Congreso propuestas para mejorar la seguridad pública, la pavimentación, el agua potable y los espacios para la convivencia y atención a la salud, en Huixquilucan y las colonias vecinas de Naucalpan. Gestionará más programas sociales, becas escolares y proyectos productivos para el autoempleo. Impulsará la transparencia y la rendición de cuentas.','noticia1.png','2015-04-25');
INSERT INTO `noticias` VALUES (10,'Campaña Plural','Pablo Peralta inicio su campaña electoral al cumplirse los tiempos legales e hizo un recorrido por las diferentes secciones de su distrito. Pablo, en compañía de su esposa Raquel, se comprometió a realizar reuniones abiertas en donde la ciudadanía tenga la oportunidad de participar. Junto con David Parra, candidato a la alcaldía de Naucalpan, Peralta escuchó y atendió a los colonos.','20150501194440.jpg','2015-05-01');
INSERT INTO `noticias` VALUES (12,'Atención a la salud cerca de tu casa','Festejando el día de la Santa Cruz, Pablo Peralta continuó visitando casa por casa algunas localidades de Huixquilucan y Naucalpan correspondientes al distrito XVII. El candidato Peralta agradeció la confianza y reiteró su compromiso con los ciudadanos para crear, desde el congreso, programas sociales para mujeres, jóvenes y adultos mayores.','20150504215411.jpg','2015-05-04');
INSERT INTO `noticias` VALUES (13,'Trabajando de la mano con la gente','Con su lema de campaña: Siempre Contigo; el Maestro Pablo Peralta continuó con su larga caminata para escuchar, una a una, las necesidades de los colonos de la sección XVII del Estado de México. El candidato para diputado local dialogó y se comprometió a gestionar proyectos que ofrezcan oportunidades para el autoempleo.','20150504221434.jpg','2015-05-04');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slider` varchar(55) NOT NULL,
  `order` int(1) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `target` varchar(55) DEFAULT NULL,
  `date` datetime NOT NULL,
  `published` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (2,'galeria - cambio','20141123224748.jpg',1,'https://www.youtube.com/watch?v=JV4__jBRt7Y','_blank','2014-11-23 16:47:48',0);
INSERT INTO `slider` VALUES (3,'galeria','20141123224657.jpg',7,'https://www.youtube.com/watch?v=JV4__jBRt7Y','_self','2014-11-23 16:46:57',1);
INSERT INTO `slider` VALUES (8,'galeria','20141123224400.jpg',7,'https://www.youtube.com/watch?v=JV4__jBRt7Y','_self','2014-11-23 16:44:00',1);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `area` varchar(255) NOT NULL,
  `user_type` enum('user','admin','superadmin') NOT NULL DEFAULT 'user',
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fersaavedra85@hotmail.com','ae005ceb7e9a217cced2f8aa354187c7:KJLzUNW4','fer','saa ó ñ','kreativeco','superadmin',1,'2014-08-26 15:38:25');
INSERT INTO `users` VALUES (7,'jc@kreativeco.com','ae005ceb7e9a217cced2f8aa354187c7:KJLzUNW4','Juan Carlos','Tlaxque','kreativeco','superadmin',1,'2014-10-23 11:22:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersPermissions`
--

DROP TABLE IF EXISTS `usersPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersPermissions` (
  `user` varchar(55) NOT NULL,
  `home` int(1) NOT NULL,
  `settings` int(1) NOT NULL,
  `blog` int(1) NOT NULL,
  `slider` int(1) NOT NULL,
  `noticias` int(1) NOT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersPermissions`
--

LOCK TABLES `usersPermissions` WRITE;
/*!40000 ALTER TABLE `usersPermissions` DISABLE KEYS */;
INSERT INTO `usersPermissions` VALUES ('fersaavedra85@hotmail.com',1,1,1,1,0);
/*!40000 ALTER TABLE `usersPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 16:45:49