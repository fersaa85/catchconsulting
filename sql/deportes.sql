-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.217.4    Database: deportes
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
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_id` int(11) NOT NULL,
  `visitante_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `local_result` int(11) NOT NULL,
  `visitante_result` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,2,1,1,'2015-04-11 14:00:00',5,10);
INSERT INTO `calendar` VALUES (2,1,5,4,'0000-00-00 00:00:00',21,0);
INSERT INTO `calendar` VALUES (3,3,9,5,'2015-04-16 00:00:00',28,14);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2015-04-11 23:39:43');
INSERT INTO `orders` VALUES (2,0,'2015-04-13 19:39:31');
INSERT INTO `orders` VALUES (3,0,'2015-04-13 20:42:11');
INSERT INTO `orders` VALUES (4,9,'2015-04-13 20:43:46');
INSERT INTO `orders` VALUES (5,9,'2015-04-13 20:46:26');
INSERT INTO `orders` VALUES (6,9,'2015-04-13 21:15:29');
INSERT INTO `orders` VALUES (7,11,'2015-04-14 00:44:11');
INSERT INTO `orders` VALUES (8,11,'2015-04-14 00:44:38');
INSERT INTO `orders` VALUES (9,11,'2015-04-14 00:44:55');
INSERT INTO `orders` VALUES (10,11,'2015-04-14 21:52:54');
INSERT INTO `orders` VALUES (11,11,'2015-04-15 15:25:32');
INSERT INTO `orders` VALUES (12,11,'2015-04-17 21:07:41');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_has_products`
--

DROP TABLE IF EXISTS `orders_has_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_has_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_has_products`
--

LOCK TABLES `orders_has_products` WRITE;
/*!40000 ALTER TABLE `orders_has_products` DISABLE KEYS */;
INSERT INTO `orders_has_products` VALUES (1,1,1,0);
INSERT INTO `orders_has_products` VALUES (2,1,2,0);
INSERT INTO `orders_has_products` VALUES (3,2,1,10);
INSERT INTO `orders_has_products` VALUES (4,3,1,2);
INSERT INTO `orders_has_products` VALUES (5,4,1,2);
INSERT INTO `orders_has_products` VALUES (6,5,1,2);
INSERT INTO `orders_has_products` VALUES (7,6,1,2);
INSERT INTO `orders_has_products` VALUES (8,7,1,0);
INSERT INTO `orders_has_products` VALUES (9,8,1,2);
INSERT INTO `orders_has_products` VALUES (10,9,2,0);
INSERT INTO `orders_has_products` VALUES (11,10,1,2);
INSERT INTO `orders_has_products` VALUES (12,11,1,10);
INSERT INTO `orders_has_products` VALUES (13,12,1,10);
/*!40000 ALTER TABLE `orders_has_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `position` varchar(55) NOT NULL,
  `team_id` int(11) NOT NULL,
  `image` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11487 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Fernando',10,'corredor',1,'images.jpg');
INSERT INTO `players` VALUES (2,'Tom Brady',55,'quarterback',1,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (3,'Peyton Manning',23,'Offensive tackle',1,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (4,'Joseph Clifford Montana Jr',15,'Guard',1,'montana_feature1.gif');
INSERT INTO `players` VALUES (5,'Jerry Rice',17,'Center',1,'images.jpg');
INSERT INTO `players` VALUES (6,'Tony Romo',21,'Running back',1,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (7,'Jim Brown',25,'halfback (',1,'jimbrown03.jpg');
INSERT INTO `players` VALUES (8,'Michael Sam',27,'fullback',1,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (9,'Lawrence Taylor',30,'Wide receiver',1,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (10,'Johnny Unitas',33,'Tight end',1,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11,'Dick Butkus',40,'Dick Butkus',1,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (12,'Walter Payton',41,'Defensive end',1,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (15,'Ray Rice',48,'Linebackers',1,'images-reny rice.jpg');
INSERT INTO `players` VALUES (16,'Reggie White',49,'Cornerbacks',1,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (17,'Aaron Rodgers',51,'Safeties',1,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (18,'Drew Brees Rips Roger Goodell',60,'Running back',1,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (19,'Troy Polamalu',66,'Troy Polamalu',1,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (20,'Ben Roethlisberger',80,'Cornerbacks',1,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (21,'Russell Wilson',88,'Safeties',1,'russell-wilson.jpg');
INSERT INTO `players` VALUES (22,'LeSean McCoy',77,'Running back',1,'lesean.jpg');
INSERT INTO `players` VALUES (23,'Wes Welker',99,'Running back',1,'images-west.jpg');
INSERT INTO `players` VALUES (24,'Ray Lewis',92,'Defensive end',1,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11267,'Fernando',84,'corredor',2,'images.jpg');
INSERT INTO `players` VALUES (11268,'Tom Brady',98,'quarterback',2,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11269,'Peyton Manning',43,'Offensive tackle',2,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11270,'Joseph Clifford Montana Jr',28,'Guard',2,'montana_feature1.gif');
INSERT INTO `players` VALUES (11271,'Jerry Rice',81,'Center',2,'images.jpg');
INSERT INTO `players` VALUES (11272,'Tony Romo',82,'Running back',2,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11273,'Jim Brown',22,'halfback (',2,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11274,'Michael Sam',40,'fullback',2,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11275,'Lawrence Taylor',12,'Wide receiver',2,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11276,'Johnny Unitas',78,'Tight end',2,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11277,'Dick Butkus',86,'Dick Butkus',2,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11278,'Walter Payton',82,'Defensive end',2,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11279,'Ray Rice',56,'Linebackers',2,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11280,'Reggie White',14,'Cornerbacks',2,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11281,'Aaron Rodgers',20,'Safeties',2,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11282,'Drew Brees Rips Roger Goodell',68,'Running back',2,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11283,'Troy Polamalu',90,'Troy Polamalu',2,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11284,'Ben Roethlisberger',38,'Cornerbacks',2,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11285,'Russell Wilson',17,'Safeties',2,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11286,'LeSean McCoy',68,'Running back',2,'lesean.jpg');
INSERT INTO `players` VALUES (11287,'Wes Welker',98,'Running back',2,'images-west.jpg');
INSERT INTO `players` VALUES (11310,'Ray Lewis',95,'Defensive end',2,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11311,'Fernando',16,'corredor',3,'images.jpg');
INSERT INTO `players` VALUES (11312,'Tom Brady',73,'quarterback',3,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11313,'Peyton Manning',64,'Offensive tackle',3,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11314,'Joseph Clifford Montana Jr',96,'Guard',3,'montana_feature1.gif');
INSERT INTO `players` VALUES (11315,'Jerry Rice',11,'Center',3,'images.jpg');
INSERT INTO `players` VALUES (11316,'Tony Romo',71,'Running back',3,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11317,'Jim Brown',65,'halfback (',3,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11318,'Michael Sam',10,'fullback',3,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11319,'Lawrence Taylor',41,'Wide receiver',3,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11320,'Johnny Unitas',59,'Tight end',3,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11321,'Dick Butkus',85,'Dick Butkus',3,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11322,'Walter Payton',12,'Defensive end',3,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11323,'Ray Rice',31,'Linebackers',3,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11324,'Reggie White',71,'Cornerbacks',3,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11325,'Aaron Rodgers',22,'Safeties',3,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11326,'Drew Brees Rips Roger Goodell',76,'Running back',3,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11327,'Troy Polamalu',77,'Troy Polamalu',3,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11328,'Ben Roethlisberger',74,'Cornerbacks',3,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11329,'Russell Wilson',15,'Safeties',3,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11330,'LeSean McCoy',81,'Running back',3,'lesean.jpg');
INSERT INTO `players` VALUES (11331,'Wes Welker',70,'Running back',3,'images-west.jpg');
INSERT INTO `players` VALUES (11332,'Ray Lewis',62,'Defensive end',3,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11333,'Fernando',66,'corredor',4,'images.jpg');
INSERT INTO `players` VALUES (11334,'Tom Brady',47,'quarterback',4,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11335,'Peyton Manning',32,'Offensive tackle',4,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11336,'Joseph Clifford Montana Jr',82,'Guard',4,'montana_feature1.gif');
INSERT INTO `players` VALUES (11337,'Jerry Rice',28,'Center',4,'images.jpg');
INSERT INTO `players` VALUES (11338,'Tony Romo',71,'Running back',4,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11339,'Jim Brown',84,'halfback (',4,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11340,'Michael Sam',81,'fullback',4,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11341,'Lawrence Taylor',66,'Wide receiver',4,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11342,'Johnny Unitas',91,'Tight end',4,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11343,'Dick Butkus',55,'Dick Butkus',4,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11344,'Walter Payton',30,'Defensive end',4,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11345,'Ray Rice',88,'Linebackers',4,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11346,'Reggie White',57,'Cornerbacks',4,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11347,'Aaron Rodgers',91,'Safeties',4,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11348,'Drew Brees Rips Roger Goodell',53,'Running back',4,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11349,'Troy Polamalu',58,'Troy Polamalu',4,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11350,'Ben Roethlisberger',32,'Cornerbacks',4,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11351,'Russell Wilson',12,'Safeties',4,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11352,'LeSean McCoy',44,'Running back',4,'lesean.jpg');
INSERT INTO `players` VALUES (11353,'Wes Welker',35,'Running back',4,'images-west.jpg');
INSERT INTO `players` VALUES (11354,'Ray Lewis',34,'Defensive end',4,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11355,'Fernando',47,'corredor',5,'images.jpg');
INSERT INTO `players` VALUES (11356,'Tom Brady',10,'quarterback',5,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11357,'Peyton Manning',83,'Offensive tackle',5,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11358,'Joseph Clifford Montana Jr',22,'Guard',5,'montana_feature1.gif');
INSERT INTO `players` VALUES (11359,'Jerry Rice',15,'Center',5,'images.jpg');
INSERT INTO `players` VALUES (11360,'Tony Romo',64,'Running back',5,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11361,'Jim Brown',82,'halfback (',5,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11362,'Michael Sam',68,'fullback',5,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11363,'Lawrence Taylor',30,'Wide receiver',5,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11364,'Johnny Unitas',30,'Tight end',5,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11365,'Dick Butkus',90,'Dick Butkus',5,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11366,'Walter Payton',13,'Defensive end',5,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11367,'Ray Rice',48,'Linebackers',5,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11368,'Reggie White',62,'Cornerbacks',5,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11369,'Aaron Rodgers',88,'Safeties',5,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11370,'Drew Brees Rips Roger Goodell',30,'Running back',5,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11371,'Troy Polamalu',28,'Troy Polamalu',5,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11372,'Ben Roethlisberger',80,'Cornerbacks',5,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11373,'Russell Wilson',75,'Safeties',5,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11374,'LeSean McCoy',49,'Running back',5,'lesean.jpg');
INSERT INTO `players` VALUES (11375,'Wes Welker',68,'Running back',5,'images-west.jpg');
INSERT INTO `players` VALUES (11376,'Ray Lewis',32,'Defensive end',5,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11377,'Fernando',40,'corredor',6,'images.jpg');
INSERT INTO `players` VALUES (11378,'Tom Brady',21,'quarterback',6,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11379,'Peyton Manning',81,'Offensive tackle',6,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11380,'Joseph Clifford Montana Jr',63,'Guard',6,'montana_feature1.gif');
INSERT INTO `players` VALUES (11381,'Jerry Rice',24,'Center',6,'images.jpg');
INSERT INTO `players` VALUES (11382,'Tony Romo',25,'Running back',6,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11383,'Jim Brown',89,'halfback (',6,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11384,'Michael Sam',48,'fullback',6,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11385,'Lawrence Taylor',31,'Wide receiver',6,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11386,'Johnny Unitas',37,'Tight end',6,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11387,'Dick Butkus',49,'Dick Butkus',6,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11388,'Walter Payton',14,'Defensive end',6,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11389,'Ray Rice',50,'Linebackers',6,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11390,'Reggie White',54,'Cornerbacks',6,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11391,'Aaron Rodgers',68,'Safeties',6,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11392,'Drew Brees Rips Roger Goodell',32,'Running back',6,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11393,'Troy Polamalu',22,'Troy Polamalu',6,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11394,'Ben Roethlisberger',89,'Cornerbacks',6,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11395,'Russell Wilson',53,'Safeties',6,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11396,'LeSean McCoy',13,'Running back',6,'lesean.jpg');
INSERT INTO `players` VALUES (11397,'Wes Welker',92,'Running back',6,'images-west.jpg');
INSERT INTO `players` VALUES (11398,'Ray Lewis',91,'Defensive end',6,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11399,'Fernando',65,'corredor',7,'images.jpg');
INSERT INTO `players` VALUES (11400,'Tom Brady',81,'quarterback',7,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11401,'Peyton Manning',21,'Offensive tackle',7,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11402,'Joseph Clifford Montana Jr',84,'Guard',7,'montana_feature1.gif');
INSERT INTO `players` VALUES (11403,'Jerry Rice',61,'Center',7,'images.jpg');
INSERT INTO `players` VALUES (11404,'Tony Romo',87,'Running back',7,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11405,'Jim Brown',33,'halfback (',7,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11406,'Michael Sam',29,'fullback',7,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11407,'Lawrence Taylor',20,'Wide receiver',7,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11408,'Johnny Unitas',64,'Tight end',7,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11409,'Dick Butkus',41,'Dick Butkus',7,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11410,'Walter Payton',91,'Defensive end',7,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11411,'Ray Rice',28,'Linebackers',7,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11412,'Reggie White',55,'Cornerbacks',7,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11413,'Aaron Rodgers',16,'Safeties',7,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11414,'Drew Brees Rips Roger Goodell',17,'Running back',7,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11415,'Troy Polamalu',93,'Troy Polamalu',7,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11416,'Ben Roethlisberger',38,'Cornerbacks',7,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11417,'Russell Wilson',45,'Safeties',7,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11418,'LeSean McCoy',43,'Running back',7,'lesean.jpg');
INSERT INTO `players` VALUES (11419,'Wes Welker',42,'Running back',7,'images-west.jpg');
INSERT INTO `players` VALUES (11420,'Ray Lewis',85,'Defensive end',7,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11421,'Fernando',88,'corredor',8,'images.jpg');
INSERT INTO `players` VALUES (11422,'Tom Brady',11,'quarterback',8,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11423,'Peyton Manning',17,'Offensive tackle',8,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11424,'Joseph Clifford Montana Jr',10,'Guard',8,'montana_feature1.gif');
INSERT INTO `players` VALUES (11425,'Jerry Rice',91,'Center',8,'images.jpg');
INSERT INTO `players` VALUES (11426,'Tony Romo',60,'Running back',8,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11427,'Jim Brown',14,'halfback (',8,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11428,'Michael Sam',83,'fullback',8,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11429,'Lawrence Taylor',52,'Wide receiver',8,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11430,'Johnny Unitas',70,'Tight end',8,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11431,'Dick Butkus',65,'Dick Butkus',8,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11432,'Walter Payton',63,'Defensive end',8,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11433,'Ray Rice',54,'Linebackers',8,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11434,'Reggie White',26,'Cornerbacks',8,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11435,'Aaron Rodgers',50,'Safeties',8,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11436,'Drew Brees Rips Roger Goodell',78,'Running back',8,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11437,'Troy Polamalu',46,'Troy Polamalu',8,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11438,'Ben Roethlisberger',60,'Cornerbacks',8,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11439,'Russell Wilson',42,'Safeties',8,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11440,'LeSean McCoy',77,'Running back',8,'lesean.jpg');
INSERT INTO `players` VALUES (11441,'Wes Welker',52,'Running back',8,'images-west.jpg');
INSERT INTO `players` VALUES (11442,'Ray Lewis',61,'Defensive end',8,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11443,'Fernando',32,'corredor',9,'images.jpg');
INSERT INTO `players` VALUES (11444,'Tom Brady',59,'quarterback',9,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11445,'Peyton Manning',68,'Offensive tackle',9,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11446,'Joseph Clifford Montana Jr',26,'Guard',9,'montana_feature1.gif');
INSERT INTO `players` VALUES (11447,'Jerry Rice',87,'Center',9,'images.jpg');
INSERT INTO `players` VALUES (11448,'Tony Romo',14,'Running back',9,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11449,'Jim Brown',60,'halfback (',9,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11450,'Michael Sam',30,'fullback',9,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11451,'Lawrence Taylor',89,'Wide receiver',9,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11452,'Johnny Unitas',48,'Tight end',9,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11453,'Dick Butkus',31,'Dick Butkus',9,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11454,'Walter Payton',97,'Defensive end',9,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11455,'Ray Rice',49,'Linebackers',9,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11456,'Reggie White',22,'Cornerbacks',9,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11457,'Aaron Rodgers',58,'Safeties',9,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11458,'Drew Brees Rips Roger Goodell',53,'Running back',9,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11459,'Troy Polamalu',96,'Troy Polamalu',9,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11460,'Ben Roethlisberger',10,'Cornerbacks',9,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11461,'Russell Wilson',23,'Safeties',9,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11462,'LeSean McCoy',62,'Running back',9,'lesean.jpg');
INSERT INTO `players` VALUES (11463,'Wes Welker',64,'Running back',9,'images-west.jpg');
INSERT INTO `players` VALUES (11464,'Ray Lewis',68,'Defensive end',9,'ray-lewis-and-roger-4_3.jpg');
INSERT INTO `players` VALUES (11465,'Fernando',79,'corredor',10,'images.jpg');
INSERT INTO `players` VALUES (11466,'Tom Brady',15,'quarterback',10,'300px-TomBrady.jpg');
INSERT INTO `players` VALUES (11467,'Peyton Manning',46,'Offensive tackle',10,'200px-Peyton_Manning_(cropped).jpg');
INSERT INTO `players` VALUES (11468,'Joseph Clifford Montana Jr',25,'Guard',10,'montana_feature1.gif');
INSERT INTO `players` VALUES (11469,'Jerry Rice',66,'Center',10,'images.jpg');
INSERT INTO `players` VALUES (11470,'Tony Romo',79,'Running back',10,'dal_g_romo_b1_400-e1368198177262-150x150.jpg');
INSERT INTO `players` VALUES (11471,'Jim Brown',93,'halfback (',10,'jimbrown03.jpg');
INSERT INTO `players` VALUES (11472,'Michael Sam',18,'fullback',10,'hi-res-e115229548f86de793b0be89cc66050f_crop_north.jpg');
INSERT INTO `players` VALUES (11473,'Lawrence Taylor',40,'Wide receiver',10,'lawrence_taylor-300x450.jpg');
INSERT INTO `players` VALUES (11474,'Johnny Unitas',26,'Tight end',10,'1-2-13D4-25-ExplorePAHistory-a0l0r3-a_349.jpg');
INSERT INTO `players` VALUES (11475,'Dick Butkus',67,'Dick Butkus',10,'dick-butkus-lb-bears-1965-1973_pg_600.jpg');
INSERT INTO `players` VALUES (11476,'Walter Payton',99,'Defensive end',10,'chi_50greatest_02.jpg');
INSERT INTO `players` VALUES (11477,'Ray Rice',43,'Linebackers',10,'images-reny rice.jpg');
INSERT INTO `players` VALUES (11478,'Reggie White',54,'Cornerbacks',10,'reggie-190x300.jpg');
INSERT INTO `players` VALUES (11479,'Aaron Rodgers',13,'Safeties',10,'250px-Aaron_Rodgers_2008_(cropped).jpg');
INSERT INTO `players` VALUES (11480,'Drew Brees Rips Roger Goodell',93,'Running back',10,'s-DREW-BREES-large.jpg');
INSERT INTO `players` VALUES (11481,'Troy Polamalu',74,'Troy Polamalu',10,'troyP-485x356.jpg');
INSERT INTO `players` VALUES (11482,'Ben Roethlisberger',92,'Cornerbacks',10,'ben-roethlisberger-suspension.jpg');
INSERT INTO `players` VALUES (11483,'Russell Wilson',41,'Safeties',10,'russell-wilson.jpg');
INSERT INTO `players` VALUES (11484,'LeSean McCoy',96,'Running back',10,'lesean.jpg');
INSERT INTO `players` VALUES (11485,'Wes Welker',89,'Running back',10,'images-west.jpg');
INSERT INTO `players` VALUES (11486,'Ray Lewis',80,'Defensive end',10,'ray-lewis-and-roger-4_3.jpg');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_general50_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` varchar(11) COLLATE utf8_general50_ci NOT NULL,
  `file_image` varchar(55) COLLATE utf8_general50_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general50_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'jesey de  americano\r\ncolor azul\r\ntallas M,G',199,'72','images-jersey.jpg');
INSERT INTO `products` VALUES (2,'header(\\\"Location: http://tiempocreativo.com.mx/deportes.com/Proyecto/index.php\\\");',199,'100','descarga.jpg');
INSERT INTO `products` VALUES (5,'jersey puma',199,'100','jersey-playera-pumas.jpg');
INSERT INTO `products` VALUES (6,'jersey naranja',199,'100','Jersey-Nike.jpg');
INSERT INTO `products` VALUES (7,'jersey linces',199,'100','SAM_0500.JPG');
INSERT INTO `products` VALUES (8,'jersey mexico',299,'100','mex2011v-2.jpg');
INSERT INTO `products` VALUES (9,'jersey pumas dorado',199,'100','images-pumas.jpg');
INSERT INTO `products` VALUES (10,'jersey pieles rojas',199,'100','IPN-PR1.jpg');
INSERT INTO `products` VALUES (11,'jersey azul',199,'100','jersey-entrenamiento.jpg');
INSERT INTO `products` VALUES (12,'jersey stels',399,'100','images-stells.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stadium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `file_image` varchar(55) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Estadio Wilfrido Massieu','ubicado al norte de la Ciudad de MÃ©xico, dentro de la Unidad Profesional \\\"Adolfo LÃ³pez Mateos\\\", Zacatenco.','Estadio_Wilfrido_Massieu.jpg',1);
INSERT INTO `stadium` VALUES (2,'Estadio Gaspar Mass','San NicolÃ¡s de los Garza (Zona Metropolitana de Monterrey), Nuevo LeÃ³n, MÃ©xico Bandera de MÃ©xico','250px-EGM-UANL.jpg',2);
INSERT INTO `stadium` VALUES (3,'Estadio Burros Blancos','Av. Luis Enrique Erro S/N,  Unidad Profesional Adolfo LÃ³pez Mateos, Zacatenco,  DelegaciÃ³n Gustavo A. Madero, C.P. 07738,  MÃ©xico, Distrito Federal','burros_blancos.jpg',3);
INSERT INTO `stadium` VALUES (4,'General JoaquÃ­n Amaro','Av. del Conscripto s/n pta. 2 bis Campo Militar No 1.A, Lomas de Sotelo Miguel Hidalgo, Distrito Federal, Mexico','images.jpg',4);
INSERT INTO `stadium` VALUES (5,'Estadio Marte R. GÃ³mez','Ciudad Victoria','images (1).jpg',5);
INSERT INTO `stadium` VALUES (6,'Estadio Marte R. GÃ³mez','Ciudad Victoria','images (1).jpg',6);
INSERT INTO `stadium` VALUES (7,'Estadio \\\"Dr. Jacinto Licea\\\"','Ubicado en PerifÃ©rico Oriente esq. Eje 5 Sur, Col. Chinampac,','campo_jl_3.png',7);
INSERT INTO `stadium` VALUES (8,'Estadio del USBI','Avenida de las Culturas Veracruzanas #1 Zona Universitaria Col. Zapata Xalapa-EnrÃ­quez','estadio-halcones.jpg',8);
INSERT INTO `stadium` VALUES (9,'Estadio OlÃ­mpico Universitario','Ciudad Universitaria,  Ciudad de MÃ©xico, MÃ©xico','325px-Estadio_Olímpico_Universitario_2.jpeg',10);
INSERT INTO `stadium` VALUES (10,'Estadio Olímpico de la UACH','Chihuahua, Flag of Mexico.svg México','Estadio_Wilfrido_Massieu.jpg',9);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `institucion` varchar(255) NOT NULL,
  `ubicacion_campo` varchar(255) NOT NULL,
  `imagen` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Ãguilas Blancas','Instituto PolitÃ©cnico Nacional','Estadio Wilfrido Massieu','descarga.jpg');
INSERT INTO `team` VALUES (2,'AutÃ©nticos Tigres','Universidad AutÃ³noma de Nuevo LeÃ³n','San NicolÃ¡s de los Garza (Zona Metropolitana de Monterrey)','images (1).jpg');
INSERT INTO `team` VALUES (3,'Burros Blancos Zacatenco','Instituto PolitÃ©cnico Nacional','Zacatenco (MÃ©xico, D. F.)','descargaburros.jpg');
INSERT INTO `team` VALUES (4,'Centinelas del Cuerpo de Guardias Presidenciales','Cuerpo de Guardias Presidenciales','JoaquÃ­n Amaro','logo-centinelas_0.png');
INSERT INTO `team` VALUES (5,'Correcaminos de la UAT','Universidad AutÃ³noma de Tamaulipas','Ciudad Victoria','Correcaminos_de_la_UAT.svg.png');
INSERT INTO `team` VALUES (6,'Correcaminos Norte','Universidad AutÃ³noma de Tamaulipas','ciudad victoria','iibbworynsk80v60nbzd_400x400.jpeg');
INSERT INTO `team` VALUES (7,'Frailes del Tepeyac','Colegio y Universidad del Tepeyac','MÃ©xico, D. F.','logo-frailes-ut.png');
INSERT INTO `team` VALUES (8,'Halcones UV','Universidad Veracruzana','Xalapa','LOGO0HALCONES.jpg');
INSERT INTO `team` VALUES (9,'Ãguilas Universidad AutÃ³noma de Chihuahua','Universidad AutÃ³noma de Chihuahua','Chihuahua','logo-aguilas-uach.png');
INSERT INTO `team` VALUES (10,'Pumas CU','Universidad Nacional AutÃ³noma de MÃ©xico','Ciudad Universitaria (MÃ©xico, D. F.)','PUMAS380.jpg');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fersaavedra85@hotmail.com','ae005ceb7e9a217cced2f8aa354187c7:KJLzUNW4','fer','saa ó ñ','kreativeco','superadmin',1,'2014-08-26 15:38:25');
INSERT INTO `users` VALUES (7,'jc@kreativeco.com','5d7f9253f77bbb9fa271a31449d129ab:Kqmgxy9O','Juan Carlos','Tlaxque','kreativeco','superadmin',1,'2014-10-23 11:22:23');
INSERT INTO `users` VALUES (8,'admin','0192023a7bbd73250516f069df18b500:TPKxRhuK','Administrador','','kreativeco','superadmin',1,'2015-04-12 20:44:24');
INSERT INTO `users` VALUES (9,'fersaavedra-1@hotmail.com','ae005ceb7e9a217cced2f8aa354187c7','','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (11,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NOMBRE','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (12,'123@nuevo','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (13,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NOMBRE','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (14,'123@nuevo','0580a9676db36c3a768b96c9298ee8b8','NUEVOUSER','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (15,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO1','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (16,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO2','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (17,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO3','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (18,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO4','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (19,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO5','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (20,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO6','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (21,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO7','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (22,'123@nuevo','d44b121fc3524fe5cdc4f3feb31ceb78','NUEVO9','','','user',0,'0000-00-00 00:00:00');
INSERT INTO `users` VALUES (23,'uno@123','d44b121fc3524fe5cdc4f3feb31ceb78','uno','','','user',0,'0000-00-00 00:00:00');
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
  `team` int(1) NOT NULL,
  `players` int(1) NOT NULL,
  `stadium` int(1) NOT NULL,
  `calendar` int(1) NOT NULL,
  `shop` int(1) NOT NULL,
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersPermissions`
--

LOCK TABLES `usersPermissions` WRITE;
/*!40000 ALTER TABLE `usersPermissions` DISABLE KEYS */;
INSERT INTO `usersPermissions` VALUES ('fersaavedra85@hotmail.com',1,1,0,0,0,0,0);
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

-- Dump completed on 2020-02-21 16:39:48
