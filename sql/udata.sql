-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 45.40.164.70    Database: udata
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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'fersaavedra85@hotmail.com','2018-05-13 22:27:04');
INSERT INTO `contacts` VALUES (2,'fersaavedra85@hotmail.com','2018-05-13 22:29:38');
INSERT INTO `contacts` VALUES (3,'fersaavedra85@hotmail.com','2018-05-13 22:31:30');
INSERT INTO `contacts` VALUES (4,'ssrdrt@hotmail.com','2018-05-18 15:39:05');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Vulnerabilidad baja:','baja.png','¡Felicidades! tu grado de vulnerabilidad es bajo, eres consciente de qué compartes y cómo lo haces, además tienes un buen conocimiento de la seguridad digital. \r\n','baja');
INSERT INTO `profile` VALUES (2,'Vulnerabilidad media:','media.png','¡UPS! estás en la media, tu nivel de vulnerabilidad puede estar comprometido, te recomendamos poner atención en tus hábitos para correr menor riesgo.\r\n','media');
INSERT INTO `profile` VALUES (3,'Vulnerabilidad alta:','alta.png','¡Oh no! Tu nivel de vulnerabilidad es alta, tienes algunas nociones de tu privacidad en línea pero pasas varios detalles por alto.\r\n','alta');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaires`
--

DROP TABLE IF EXISTS `questionnaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question11` varchar(1) NOT NULL,
  `question12` varchar(1) NOT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `question4` varchar(255) DEFAULT NULL,
  `question5` varchar(255) DEFAULT NULL,
  `question6` varchar(255) DEFAULT NULL,
  `question7` varchar(255) DEFAULT NULL,
  `question8` varchar(255) DEFAULT NULL,
  `question9` varchar(255) DEFAULT NULL,
  `question10` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaires`
--

LOCK TABLES `questionnaires` WRITE;
/*!40000 ALTER TABLE `questionnaires` DISABLE KEYS */;
INSERT INTO `questionnaires` VALUES (11,'','','3','3','2','2','1','1','3','3','2','2','2018-06-05 19:52:09','','','');
INSERT INTO `questionnaires` VALUES (12,'2','1','3','2','1','3','2','1','3','2','1','3','2018-06-05 19:55:31','','','');
INSERT INTO `questionnaires` VALUES (13,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-05 21:34:09','632080181','632080181','');
INSERT INTO `questionnaires` VALUES (14,'3','3','3','3','2','3','3','3','3','3','3','3','2018-06-05 21:58:28','632080181','fersaavedra85','');
INSERT INTO `questionnaires` VALUES (15,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-05 22:00:53','632080181','fersaavedra85','');
INSERT INTO `questionnaires` VALUES (16,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-05 22:01:56','632080181','fersaavedra85','');
INSERT INTO `questionnaires` VALUES (17,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-05 22:03:06','632080181','fersaavedra85','');
INSERT INTO `questionnaires` VALUES (18,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-06 07:46:21','381212150','rpa4791','');
INSERT INTO `questionnaires` VALUES (19,'3','3','3','3','2','3','3','3','3','3','3','3','2018-06-06 09:43:25','10202721542051931','Fernando Saavedra','');
INSERT INTO `questionnaires` VALUES (20,'1','2','2','1','2','1','2','2','1','2','2','1','2018-06-06 10:05:40','10214306783557989','Roberto Pérez','');
INSERT INTO `questionnaires` VALUES (21,'3','3','2','3','3','3','3','3','3','3','3','3','2018-06-06 16:35:46','632080181','fersaavedra85','');
INSERT INTO `questionnaires` VALUES (22,'1','2','1','1','1','1','1','2','2','1','1','2','2018-06-06 17:53:56','10211034145797428','Katya Sotomayor','');
INSERT INTO `questionnaires` VALUES (23,'1','1','1','1','1','2','1','2','2','2','3','1','2018-06-06 19:08:30','10155638426156676','Javier O Pluma','');
INSERT INTO `questionnaires` VALUES (24,'1','1','3','2','3','3','3','1','1','1','1','1','2018-06-06 20:41:12','632080181','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png','');
INSERT INTO `questionnaires` VALUES (25,'1','2','1','1','1','1','2','2','2','1','3','1','2018-06-06 20:46:41','632080181','fernando saavedra','');
INSERT INTO `questionnaires` VALUES (26,'2','2','3','3','3','3','3','3','3','3','2','3','2018-06-06 20:48:38','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (27,'3','2','3','3','3','3','3','3','3','3','3','3','2018-06-06 20:51:33','10202721542051931','Fernando Saavedra','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10202721542051931&height=50&width=50&ext=1528602677&hash=AeRTXTuR_bgYFb3a');
INSERT INTO `questionnaires` VALUES (28,'2','2','1','2','3','1','2','2','2','3','1','1','2018-06-07 00:34:09','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528616023&hash=AeTd2Q9MW4v6hmcv');
INSERT INTO `questionnaires` VALUES (29,'1','1','1','1','1','1','1','1','1','1','1','1','2018-06-07 06:46:51','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528638388&hash=AeQ7ltNGlaTqwPhS');
INSERT INTO `questionnaires` VALUES (30,'1','1','1','1','1','1','1','1','1','1','1','1','2018-06-07 08:05:26','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (31,'1','3','1','2','1','2','2','2','2','1','3','1','2018-06-07 13:29:54','10216708369088001','Newt Arlandiz Delgado','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10216708369088001&height=50&width=50&ext=1528662446&hash=AeQ4lGYcINT99stO');
INSERT INTO `questionnaires` VALUES (32,'1','1','3','2','1','3','2','1','1','1','1','1','2018-06-07 14:26:22','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528665955&hash=AeQUsX-1_Wpisl8M');
INSERT INTO `questionnaires` VALUES (33,'3','3','2','2','3','1','3','2','2','3','2','2','2018-06-07 14:50:34','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (34,'1','1','1','1','1','1','1','1','1','1','1','1','2018-06-07 14:52:25','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (35,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-07 14:56:53','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (36,'3','1','3','2','1','1','2','1','2','3','2','2','2018-06-07 16:58:19','fersaavedra85@hotmail.com','fer','');
INSERT INTO `questionnaires` VALUES (37,'3','3','3','2','3','3','3','3','3','3','3','3','2018-06-07 17:23:41','rpa.4791@gmail.com','Roberto Perez','');
INSERT INTO `questionnaires` VALUES (38,'1','1','2','1','3','1','1','1','1','1','2','2','2018-06-07 17:30:43','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528676922&hash=AeQ9WTMcJrWHndMk');
INSERT INTO `questionnaires` VALUES (39,'3','2','3','3','2','2','3','2','3','3','1','3','2018-06-07 18:05:05','','','');
INSERT INTO `questionnaires` VALUES (40,'2','2','2','2','2','2','2','2','2','2','2','2','2018-06-07 18:22:02','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528680081&hash=AeR3ic8Q4TjOmZQf');
INSERT INTO `questionnaires` VALUES (41,'2','2','3','3','2','3','2','3','2','2','3','1','2018-06-07 18:24:42','','','');
INSERT INTO `questionnaires` VALUES (42,'2','2','3','3','3','3','2','2','2','1','2','2','2018-06-07 18:25:22','fersaavedra85@hotmail.com','fer','');
INSERT INTO `questionnaires` VALUES (43,'3','2','3','3','3','2','2','2','2','1','2','1','2018-06-07 18:34:10','fersaavedra85@hotmail.com','fer','');
INSERT INTO `questionnaires` VALUES (44,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-07 18:43:54','10155638426156676','Javier O Pluma','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10155638426156676&height=50&width=50&ext=1528681403&hash=AeQ2qxNKiOqscLg3');
INSERT INTO `questionnaires` VALUES (45,'2','2','2','2','2','2','2','2','2','2','2','2','2018-06-07 18:50:46','10155638426156676','Javier O Pluma','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10155638426156676&height=50&width=50&ext=1528681585&hash=AeSzehmAgD4WqUaZ');
INSERT INTO `questionnaires` VALUES (46,'2','3','2','2','2','3','3','2','3','2','3','2','2018-06-07 19:01:56','fegarizo_tony@hotmail.com','iloveswim','');
INSERT INTO `questionnaires` VALUES (47,'2','2','2','1','2','2','2','1','2','2','2','1','2018-06-07 19:17:58','10157474625022892','Ale S. Palomo','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10157474625022892&height=50&width=50&ext=1528683262&hash=AeR6oXB0WiV2OMdA');
INSERT INTO `questionnaires` VALUES (48,'2','2','2','2','2','2','1','1','2','2','2','1','2018-06-07 19:33:02','ochoaplumaabril@gmail.com','Abril','');
INSERT INTO `questionnaires` VALUES (49,'1','1','2','2','2','2','2','2','2','1','2','1','2018-06-07 19:38:49','10215667495018706','Gus Arriaga','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10215667495018706&height=50&width=50&ext=1528684655&hash=AeSFnAA91P7xeW0_');
INSERT INTO `questionnaires` VALUES (50,'1','2','2','1','2','1','1','1','2','2','2','2','2018-06-07 20:19:18','10156345955224666','Neph Acuña','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10156345955224666&height=50&width=50&ext=1528686936&hash=AeRf7xNcb0_wBsml');
INSERT INTO `questionnaires` VALUES (51,'3','2','2','1','1','2','2','1','2','2','1','1','2018-06-07 21:39:11','10155304867292680','Gibrana Pluma Ochoa','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10155304867292680&height=50&width=50&ext=1528691771&hash=AeS723jsDJnTrjWu');
INSERT INTO `questionnaires` VALUES (52,'3','2','1','1','2','2','1','2','2','1','2','1','2018-06-07 22:00:28','10215142353929013','Fanny Solano','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10215142353929013&height=50&width=50&ext=1528693055&hash=AeTnghHGLAQztgWq');
INSERT INTO `questionnaires` VALUES (53,'2','2','2','2','2','2','2','1','1','1','1','1','2018-06-07 22:31:35','fersalopz.20@gmail.com','Fernanda Salas','');
INSERT INTO `questionnaires` VALUES (54,'1','1','2','1','1','1','3','1','2','2','2','2','2018-06-08 06:53:52','1933497583348535','Jerome Adrian Blando','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1933497583348535&height=50&width=50&ext=1528725104&hash=AeRfzZQO00ZmI3v8');
INSERT INTO `questionnaires` VALUES (55,'2','3','3','2','2','3','3','2','3','1','3','1','2018-06-08 07:26:34','fersaavedra85@hotmail.com','Fernando Saavedra','');
INSERT INTO `questionnaires` VALUES (56,'2','1','2','1','3','2','3','2','3','2','3','2','2018-06-08 07:27:30','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (57,'1','2','2','1','2','2','2','1','2','2','3','1','2018-06-08 10:36:40','maura.marquezr@gmail.com','mermaiidsashimi','');
INSERT INTO `questionnaires` VALUES (58,'3','3','3','3','3','3','2','2','1','1','2','2','2018-06-08 11:19:20','fersaavedra85@hotmail.com','asdad','');
INSERT INTO `questionnaires` VALUES (59,'3','3','3','3','3','3','2','2','1','1','2','2','2018-06-08 11:19:32','fersaavedra85@hotmail.com','asdad','');
INSERT INTO `questionnaires` VALUES (60,'3','2','3','3','2','2','1','3','3','2','3','1','2018-06-08 11:20:28','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (61,'3','2','3','3','2','2','1','3','3','2','3','1','2018-06-08 11:21:10','632080181','fernando saavedra','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');
INSERT INTO `questionnaires` VALUES (62,'3','3','3','3','3','3','3','2','3','1','3','1','2018-06-08 11:25:57','fersaavedra85@hotmail.com','Fer','');
INSERT INTO `questionnaires` VALUES (63,'2','1','2','1','2','2','1','2','1','2','2','1','2018-06-08 12:05:29','lizetvaldes1@gmail.com','Lizet Valdes','');
INSERT INTO `questionnaires` VALUES (64,'1','2','1','1','1','1','1','2','2','1','1','2','2018-06-08 15:28:31','10211034145797428','Katya Sotomayor','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10211034145797428&height=50&width=50&ext=1528755874&hash=AeQxFu78VTw6JA4w');
INSERT INTO `questionnaires` VALUES (65,'1','1','1','1','2','1','2','1','1','1','1','2','2018-06-08 15:44:52','susan.barradas.cerna@escueladediseno.edu.mx','Susan','');
INSERT INTO `questionnaires` VALUES (66,'3','2','2','3','2','1','2','3','2','1','3','1','2018-06-08 16:04:20','juan.plerez.lalaland@gmai.com','tumamaeshombre','');
INSERT INTO `questionnaires` VALUES (67,'1','2','1','1','1','1','1','1','2','1','1','1','2018-06-08 16:42:50','kasiopea07@hotmail.com','Katya','');
INSERT INTO `questionnaires` VALUES (68,'1','2','2','1','2','1','1','2','2','1','1','2','2018-06-09 09:04:07','1957166124318214','Ivonne Childres','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1957166124318214&height=50&width=50&ext=1528819172&hash=AeRR0lESJUKdaSb0');
INSERT INTO `questionnaires` VALUES (69,'1','2','2','2','2','1','2','2','2','1','1','1','2018-06-09 09:55:22','10156101252941084','Leonor Garcia','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10156101252941084&height=50&width=50&ext=1528822324&hash=AeQyY1yhr4atjgi8');
INSERT INTO `questionnaires` VALUES (70,'2','2','1','1','2','2','1','1','1','1','2','1','2018-06-09 11:22:28','1994520527543869','Chamán Galván','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1994520527543869&height=50&width=50&ext=1528827649&hash=AeR-EUxAkXClO0VQ');
INSERT INTO `questionnaires` VALUES (71,'1','2','1','2','1','3','2','1','2','1','2','2','2018-06-09 12:27:31','valems15@hotmail.com','Valentina ','');
INSERT INTO `questionnaires` VALUES (72,'1','2','1','1','2','1','2','1','2','1','2','2','2018-06-09 12:30:39','derecho.unam@hotmail.com','carlos diaz','');
INSERT INTO `questionnaires` VALUES (73,'1','2','2','1','2','1','2','2','1','1','2','2','2018-06-09 13:12:17','espectritum@gmail.com','Spectro Peluso','');
INSERT INTO `questionnaires` VALUES (74,'3','2','3','2','3','2','3','2','3','1','2','3','2018-06-09 14:25:56','aloskop@gmail.com','china','');
INSERT INTO `questionnaires` VALUES (75,'1','2','1','1','1','2','1','3','3','1','3','3','2018-06-09 14:30:51','1673003569403090','Brian Pech Garcia','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1673003569403090&height=50&width=50&ext=1528838950&hash=AeTCTUqdOb3PhOCj');
INSERT INTO `questionnaires` VALUES (76,'1','1','2','1','2','3','1','3','3','2','2','1','2018-06-09 15:21:55','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1528842057&hash=AeSNGKGK_Zh0Tpga');
INSERT INTO `questionnaires` VALUES (77,'3','2','2','1','2','2','2','1','2','1','3','2','2018-06-09 17:14:27','396194587453246','Braian Monroy','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=396194587453246&height=50&width=50&ext=1528848765&hash=AeTpn_fmSByr8O6k');
INSERT INTO `questionnaires` VALUES (78,'2','3','2','1','3','3','2','1','2','2','3','1','2018-06-09 20:54:17','clk.2b4b@hotmail.com','benjamin Quintero','');
INSERT INTO `questionnaires` VALUES (79,'2','2','2','1','2','1','2','1','1','1','2','1','2018-06-09 21:03:39','gerryboymx@hotmail.com','Gerardo','');
INSERT INTO `questionnaires` VALUES (80,'1','2','2','1','1','1','1','2','2','2','1','1','2018-06-09 22:11:52','2098793687043502','Carlos Enrique Figueroa','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2098793687043502&height=50&width=50&ext=1528866557&hash=AeRB1zmLzKBGgA7j');
INSERT INTO `questionnaires` VALUES (81,'2','3','1','1','2','3','3','2','2','2','3','2','2018-06-09 22:18:51','otroconejitoblanco@hotmail.com','julia','');
INSERT INTO `questionnaires` VALUES (82,'2','3','2','1','1','1','1','2','2','2','2','2','2018-06-09 22:21:43','mfranco@resa.com.mx','Miguel Ángel ','');
INSERT INTO `questionnaires` VALUES (83,'1','2','2','1','1','1','1','1','1','1','1','2','2018-06-09 22:32:46','10216492441213193','Adri Oropeza','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10216492441213193&height=50&width=50&ext=1528867433&hash=AeRhXmKuNW8dI6Wb');
INSERT INTO `questionnaires` VALUES (84,'2','2','1','1','1','2','1','1','2','2','2','1','2018-06-10 07:44:53','493238881094359','Diana Ivonne Mondragon','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=493238881094359&height=50&width=50&ext=1528900976&hash=AeQbdtKKiSU3wTaG');
INSERT INTO `questionnaires` VALUES (85,'1','3','2','3','3','1','1','1','2','3','3','1','2018-06-10 09:02:59','derehofamiliar1617@hotmail.com','victor morales','');
INSERT INTO `questionnaires` VALUES (86,'3','2','2','3','2','3','2','2','2','2','2','3','2018-06-10 21:10:34','cesar_wou@hotmail.com','César Oswaldo Hernández Alamillo','');
INSERT INTO `questionnaires` VALUES (87,'1','2','2','2','2','2','1','1','1','1','2','2','2018-06-10 21:57:02','yunuenn_27@hotmail.com','yunuenn','');
INSERT INTO `questionnaires` VALUES (88,'1','3','1','2','2','3','2','1','2','3','2','3','2018-06-10 22:03:59','','','');
INSERT INTO `questionnaires` VALUES (89,'1','2','2','1','2','2','1','1','2','2','2','2','2018-06-11 07:02:09','psmonzon22@gmail.com','Paulo','');
INSERT INTO `questionnaires` VALUES (90,'1','2','2','1','2','2','1','1','2','2','2','2','2018-06-11 07:03:28','psmonzon22@gmail.com','Paulo','');
INSERT INTO `questionnaires` VALUES (91,'3','3','3','3','3','3','3','3','3','3','3','3','2018-06-11 13:45:17','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=50&width=50&ext=1529009091&hash=AeReiLpRX4uBHo0p');
INSERT INTO `questionnaires` VALUES (92,'1','1','1','1','2','1','1','2','1','1','2','2','2018-06-11 17:18:42','fruiz.fb@outlook.com','Fer','');
INSERT INTO `questionnaires` VALUES (93,'2','3','1','1','2','2','3','2','2','1','2','2','2018-06-11 20:07:23','123009985259911','Gladys Ochoa','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=123009985259911&height=50&width=50&ext=1529031816&hash=AeRd3Yla6mecCyzC');
INSERT INTO `questionnaires` VALUES (94,'2','3','1','1','2','2','1','1','2','2','3','2','2018-06-11 20:10:02','1958639494170779','Palaxsz Raul','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1958639494170779&height=50&width=50&ext=1529031982&hash=AeTnt0EroHcbn5W4');
INSERT INTO `questionnaires` VALUES (95,'1','2','2','2','1','2','1','1','2','1','2','1','2018-06-12 04:55:20','10216669457152438','Juan Carlos Vr','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10216669457152438&height=50&width=50&ext=1529063518&hash=AeTD8zu9YLa5ObAv');
INSERT INTO `questionnaires` VALUES (96,'1','1','2','1','2','2','3','1','2','2','2','3','2018-06-12 07:58:26','2187995254550015','Dzoara Fonseca','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2187995254550015&height=50&width=50&ext=1529074582&hash=AeReI0iZbdYLni0B');
INSERT INTO `questionnaires` VALUES (97,'2','2','3','2','3','2','3','2','3','2','3','1','2018-06-12 14:12:06','10202721542051931','Fernando Saavedra','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10202721542051931&height=50&width=50&ext=1529097110&hash=AeRLIvC-4BM6nzHw');
INSERT INTO `questionnaires` VALUES (98,'3','3','3','2','2','2','3','3','2','2','3','3','2018-06-12 14:24:41','10202721542051931','Fernando Saavedra','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10202721542051931&height=200&width=200&ext=1529097864&hash=AeTBb7fz9mR1DXh6');
INSERT INTO `questionnaires` VALUES (99,'2','2','2','2','2','1','1','2','2','1','2','2','2018-06-13 18:53:02','1737956932951661','Raquel Labrador','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1737956932951661&height=200&width=200&ext=1529200241&hash=AeSZTlpy2uzO-oVG');
INSERT INTO `questionnaires` VALUES (100,'1','1','2','2','2','1','2','1','2','2','2','2','2018-06-14 10:34:18','shaindel@outlook.com','Shais','');
INSERT INTO `questionnaires` VALUES (101,'1','1','2','1','1','2','2','2','2','2','3','2','2018-06-14 10:40:36','2158060381084004','Armando Admon','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2158060381084004&height=200&width=200&ext=1529257107&hash=AeQfywjxlx3vbnQr');
INSERT INTO `questionnaires` VALUES (102,'1','2','2','1','2','2','3','2','2','2','1','2','2018-06-14 10:42:43','2531700643522165','Naíma Cherry','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2531700643522165&height=200&width=200&ext=1529257175&hash=AeQZ864cdhNEMyQI');
INSERT INTO `questionnaires` VALUES (103,'2','1','2','1','3','3','2','1','1','1','1','3','2018-06-14 10:44:41','10156075238020412','Shaindel Tapia','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10156075238020412&height=200&width=200&ext=1529257368&hash=AeTNr1MrViiFrstY');
INSERT INTO `questionnaires` VALUES (104,'2','3','2','2','2','1','2','2','2','2','2','2','2018-06-14 10:49:56','10157399228232786','Leon Avila','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10157399228232786&height=200&width=200&ext=1529257294&hash=AeTt-gK4Ucmr3IGd');
INSERT INTO `questionnaires` VALUES (105,'3','2','2','3','2','3','3','2','1','2','3','2','2018-06-14 11:19:20','cesar.hdz.alamillo@gmail.com','César Oswaldo Hernández Alamillo','');
INSERT INTO `questionnaires` VALUES (106,'1','1','3','2','1','3','1','3','2','2','1','1','2018-06-14 11:22:37','1541343355991065','Baxter Estevez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1541343355991065&height=200&width=200&ext=1529259583&hash=AeSn_NGBG-j4qopP');
INSERT INTO `questionnaires` VALUES (107,'3','3','2','1','1','3','1','1','2','2','1','2','2018-06-14 13:44:57','2085835248369075','Ivan Pluma','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2085835248369075&height=200&width=200&ext=1529267877&hash=AeSNHItfcMUe2oT9');
INSERT INTO `questionnaires` VALUES (108,'1','1','1','1','2','1','1','2','1','1','2','2','2018-06-14 14:06:18','d.hrnndz@gmail.com','David','');
INSERT INTO `questionnaires` VALUES (109,'1','2','2','1','1','2','1','1','1','2','2','1','2018-06-14 15:40:11','10156494917396103','Kahíta Muñoz','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10156494917396103&height=200&width=200&ext=1529275090&hash=AeRKT0A9F80KIEj3');
INSERT INTO `questionnaires` VALUES (110,'1','1','2','3','2','2','1','2','2','2','2','2','2018-06-14 15:41:12','1785902368134700','Lilu Minai','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1785902368134700&height=200&width=200&ext=1529275184&hash=AeTmZXw5WmvU0EaC');
INSERT INTO `questionnaires` VALUES (111,'1','2','2','2','2','2','1','1','2','2','3','2','2018-06-14 16:53:03','975997765892923','Fernanda Lobato','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=975997765892923&height=200&width=200&ext=1529279410&hash=AeTGq7ZrUriBjKGL');
INSERT INTO `questionnaires` VALUES (112,'2','3','2','2','1','3','2','2','1','2','1','2','2018-06-14 17:33:00','2011824682170288','Lore Barrañón Hernández','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2011824682170288&height=200&width=200&ext=1529281066&hash=AeTO_6mDhvND4uXx');
INSERT INTO `questionnaires` VALUES (113,'3','2','2','2','2','2','2','2','3','1','3','3','2018-06-14 18:38:59','2014700975266905','Mario Palacios','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2014700975266905&height=200&width=200&ext=1529285719&hash=AeSCTQB4jS7Ljpcf');
INSERT INTO `questionnaires` VALUES (114,'3','3','1','3','1','1','2','1','2','1','1','1','2018-06-14 20:26:32','hernadezangelgabriel128@gmail.com','angel gabriel','');
INSERT INTO `questionnaires` VALUES (115,'3','2','1','1','2','2','2','1','2','1','2','2','2018-06-15 06:36:25','1917011531695348','Romina Castro','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1917011531695348&height=200&width=200&ext=1529328894&hash=AeQsuk6axpty7wPH');
INSERT INTO `questionnaires` VALUES (116,'2','3','2','1','2','1','1','2','2','2','3','2','2018-06-15 08:02:00','10216077227340495','Omar Moremont','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10216077227340495&height=200&width=200&ext=1529333947&hash=AeSovDb6DnEr358x');
INSERT INTO `questionnaires` VALUES (117,'3','3','1','1','2','2','2','1','2','1','2','1','2018-06-15 09:21:25','mendez_garcia_89@hotmail.com','Dareus89','');
INSERT INTO `questionnaires` VALUES (118,'2','2','1','1','1','2','2','2','2','1','2','1','2018-06-15 18:10:24','1764724143612277','Viiriidiiana Rivera','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1764724143612277&height=200&width=200&ext=1529370447&hash=AeSCbT33Crhb0KL_');
INSERT INTO `questionnaires` VALUES (119,'2','2','1','2','1','1','3','1','3','1','1','1','2018-06-16 00:35:59','175033976679020','Víctor Roldán','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=175033976679020&height=200&width=200&ext=1529393487&hash=AeSneB-KpwCnOKsv');
INSERT INTO `questionnaires` VALUES (120,'3','2','1','2','1','1','1','1','3','3','3','3','2018-06-16 06:34:02','10214306783557989','Roberto Pérez','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10214306783557989&height=200&width=200&ext=1529415225&hash=AeStaZbAdFp9YUOZ');
INSERT INTO `questionnaires` VALUES (121,'1','2','1','2','2','1','1','1','2','2','2','1','2018-06-16 07:49:28','j.art@hotmail.com','Nathaly Rangel','');
INSERT INTO `questionnaires` VALUES (122,'2','2','2','3','2','3','3','2','2','2','2','3','2018-06-16 08:39:24','cesar.hdz.alamillo@gmail.com','César Oswaldo Hernández Alamillo','');
INSERT INTO `questionnaires` VALUES (123,'2','3','2','2','2','3','2','1','1','1','1','1','2018-06-16 08:52:12','roldanangulo@gmail.com','Emiliano','');
INSERT INTO `questionnaires` VALUES (124,'3','3','1','1','2','2','1','1','1','1','2','2','2018-06-16 20:19:16','salaslopezmarco6im14@gmail.com','salopz8','');
INSERT INTO `questionnaires` VALUES (125,'3','3','1','1','2','2','1','1','1','1','2','2','2018-06-16 20:19:16','salaslopezmarco6im14@gmail.com','salopz8','');
INSERT INTO `questionnaires` VALUES (126,'3','3','1','1','2','2','1','1','1','1','2','2','2018-06-16 20:19:17','salaslopezmarco6im14@gmail.com','salopz8','');
INSERT INTO `questionnaires` VALUES (127,'2','2','1','1','2','3','2','1','1','1','2','2','2018-06-20 08:22:30','10211329731534283','Tony Barradas','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10211329731534283&height=200&width=200&ext=1529725481&hash=AeTFKjSuBRY7jR9B');
INSERT INTO `questionnaires` VALUES (128,'2','2','2','2','2','2','2','2','2','2','2','2','2018-06-20 18:06:35','2531700643522165','Naíma Cherry','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2531700643522165&height=200&width=200&ext=1529802371&hash=AeRRF2wcHJWW8dLL');
INSERT INTO `questionnaires` VALUES (129,'1','2','1','2','1','3','1','1','1','1','2','2','2018-06-22 13:43:28','teotleco13@gmail.com','Miguel','');
INSERT INTO `questionnaires` VALUES (130,'1','1','2','2','2','3','2','3','2','1','3','1','2018-08-22 17:26:17','francohst@gmail.com','Franco','');
/*!40000 ALTER TABLE `questionnaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 17:03:54