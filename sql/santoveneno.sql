-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.143.148    Database: santoveneno
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
-- Table structure for table `swp_commentmeta`
--

DROP TABLE IF EXISTS `swp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_commentmeta`
--

LOCK TABLES `swp_commentmeta` WRITE;
/*!40000 ALTER TABLE `swp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_comments`
--

DROP TABLE IF EXISTS `swp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_comments`
--

LOCK TABLES `swp_comments` WRITE;
/*!40000 ALTER TABLE `swp_comments` DISABLE KEYS */;
INSERT INTO `swp_comments` VALUES (1,1,'Un comentarista de WordPress','wapuu@wordpress.example','https://wordpress.org/','','2016-08-29 19:17:14','2016-08-30 01:17:14','Hola, esto es un comentario. Para empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio. Los avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
INSERT INTO `swp_comments` VALUES (2,12,'WooCommerce','','','','2016-08-29 20:40:00','2016-08-30 02:40:00','WC_Conekta_Card_Gateway Credit Card Payment Failed : \'\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (3,12,'WooCommerce','','','','2016-08-29 20:40:26','2016-08-30 02:40:26','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (4,12,'WooCommerce','','','','2016-08-29 20:40:26','2016-08-30 02:40:26','WC_Conekta_Card_Gateway payment completed with Transaction Id of \'57c4f219a97880a65600ec44\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (5,12,'admin','julzebadua@gmail.com','','','2016-08-29 20:51:57','2016-08-30 02:51:57','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (6,67,'WooCommerce','','','','2016-09-28 06:31:22','2016-09-28 12:31:22','El pedido ha cambiado de Pendiente de pago a Procesando.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (7,67,'WooCommerce','','','','2016-09-28 06:31:22','2016-09-28 12:31:22','WC_Conekta_Card_Gateway payment completed with Transaction Id of \'57ebb817dba34d0f8200548b\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (8,67,'admin','julzebadua@gmail.com','','','2016-09-28 06:34:43','2016-09-28 12:34:43','El pedido ha cambiado de Procesando a Pendiente de pago.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (9,67,'WooCommerce','','','','2016-09-28 08:35:29','2016-09-28 14:35:29','El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El pedido ha cambiado de Pendiente de pago a Cancelado.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (10,99,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 12:05:07','2016-10-10 18:05:07','WC_Conekta_Card_Gateway Credit Card Payment Failed : \'\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (11,100,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 12:05:57','2016-10-10 18:05:57','El pedido ha cambiado de Pendiente de pago a Procesando.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (12,100,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 12:05:58','2016-10-10 18:05:58','WC_Conekta_Card_Gateway payment completed with Transaction Id of \'57fbd884dba34d2bcd010e89\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (13,101,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 12:19:26','2016-10-10 18:19:26','El pedido ha cambiado de Pendiente de pago a Procesando.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (14,101,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 12:19:26','2016-10-10 18:19:26','WC_Conekta_Card_Gateway payment completed with Transaction Id of \'57fbdba8c835f0fae9011653\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (15,99,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-10 14:46:59','2016-10-10 20:46:59','El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El pedido ha cambiado de Pendiente de pago a Cancelado.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (16,102,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-11 10:42:25','2016-10-11 16:42:25','WC_Conekta_Card_Gateway Credit Card Payment Failed : \'\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (17,103,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-11 10:44:02','2016-10-11 16:44:02','El pedido ha cambiado de Pendiente de pago a Procesando.',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (18,103,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-11 10:44:03','2016-10-11 16:44:03','WC_Conekta_Card_Gateway payment completed with Transaction Id of \'57fd16cedba34d42a10194bc\'',0,'1','WooCommerce','order_note',0,0);
INSERT INTO `swp_comments` VALUES (19,102,'WooCommerce','woocommerce@tiempocreativo.com.mx','','','2016-10-11 13:09:43','2016-10-11 19:09:43','El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El pedido ha cambiado de Pendiente de pago a Cancelado.',0,'1','WooCommerce','order_note',0,0);
/*!40000 ALTER TABLE `swp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_circles`
--

DROP TABLE IF EXISTS `swp_g_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_circles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `center_lat` varchar(255) NOT NULL,
  `center_lng` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `fill_color` varchar(7) NOT NULL,
  `fill_opacity` varchar(7) NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(7) NOT NULL,
  `hover_fill_color` varchar(7) NOT NULL,
  `hover_fill_opacity` varchar(7) NOT NULL,
  `show_marker` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_circles`
--

LOCK TABLES `swp_g_circles` WRITE;
/*!40000 ALTER TABLE `swp_g_circles` DISABLE KEYS */;
INSERT INTO `swp_g_circles` VALUES (1,1,'My First Circle','40.805493843894155','-76.3165283203125','50000','5','0.8','FF2B39','4FFF72','0.4','0.6','FF5C5C','96FFA1','0.3',0);
/*!40000 ALTER TABLE `swp_g_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_directions`
--

DROP TABLE IF EXISTS `swp_g_directions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_directions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_lat` varchar(255) NOT NULL,
  `start_lng` varchar(255) NOT NULL,
  `end_lat` varchar(255) NOT NULL,
  `end_lng` varchar(255) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `show_steps` varchar(3) NOT NULL,
  `travel_mode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_directions`
--

LOCK TABLES `swp_g_directions` WRITE;
/*!40000 ALTER TABLE `swp_g_directions` DISABLE KEYS */;
INSERT INTO `swp_g_directions` VALUES (1,1,'Lyonstown - Locust','40.9419425','-77.7339905','40.2863133','-76.85491560000003','000000','0.5','10','no','DRIVING');
/*!40000 ALTER TABLE `swp_g_directions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_maps`
--

DROP TABLE IF EXISTS `swp_g_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_maps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'ROADMAP',
  `zoom` int(5) NOT NULL,
  `border_radius` int(5) NOT NULL,
  `center_lat` varchar(255) NOT NULL DEFAULT '0',
  `pan_controller` varchar(5) NOT NULL DEFAULT 'true',
  `zoom_controller` varchar(5) NOT NULL DEFAULT 'true',
  `type_controller` varchar(5) NOT NULL DEFAULT 'true',
  `scale_controller` varchar(5) NOT NULL DEFAULT 'true',
  `street_view_controller` varchar(5) NOT NULL DEFAULT 'true',
  `overview_map_controller` varchar(5) NOT NULL DEFAULT 'true',
  `center_lng` varchar(255) NOT NULL DEFAULT '0',
  `width` varchar(5) NOT NULL DEFAULT '100',
  `height` varchar(5) NOT NULL DEFAULT '450',
  `align` varchar(11) NOT NULL DEFAULT 'left',
  `wheel_scroll` varchar(11) NOT NULL DEFAULT 'true',
  `draggable` varchar(11) NOT NULL DEFAULT 'true',
  `language` text NOT NULL,
  `min_zoom` varchar(11) NOT NULL DEFAULT '0',
  `max_zoom` varchar(11) NOT NULL DEFAULT '22',
  `info_type` varchar(9) NOT NULL DEFAULT 'click',
  `traffic_layer` varchar(55) NOT NULL DEFAULT 'false',
  `bike_layer` varchar(55) NOT NULL DEFAULT 'false',
  `transit_layer` varchar(55) NOT NULL DEFAULT 'false',
  `styling_hue` text NOT NULL,
  `styling_lightness` varchar(55) NOT NULL DEFAULT '0',
  `styling_gamma` varchar(55) NOT NULL DEFAULT '1',
  `styling_saturation` varchar(55) NOT NULL DEFAULT '0',
  `animation` varchar(250) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_maps`
--

LOCK TABLES `swp_g_maps` WRITE;
/*!40000 ALTER TABLE `swp_g_maps` DISABLE KEYS */;
INSERT INTO `swp_g_maps` VALUES (1,'My First Map','ROADMAP',7,0,'40.7127837','true','true','true','true','true','true','-74.00594130000002','100','300','center','true','true','location based','0','22','click','false','false','false','','0','1','0','none');
/*!40000 ALTER TABLE `swp_g_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_markers`
--

DROP TABLE IF EXISTS `swp_g_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_markers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `map` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `lat` varchar(255) NOT NULL DEFAULT '0',
  `lng` varchar(255) NOT NULL DEFAULT '0',
  `animation` varchar(255) NOT NULL DEFAULT 'NONE',
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `size` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_markers`
--

LOCK TABLES `swp_g_markers` WRITE;
/*!40000 ALTER TABLE `swp_g_markers` DISABLE KEYS */;
INSERT INTO `swp_g_markers` VALUES (1,1,'New York','40.7127837','-74.00594130000002','BOUNCE','New York City','','');
INSERT INTO `swp_g_markers` VALUES (2,1,'Delaver','39.189690821096804','-75.7562255859375','DROP','Delaver','','');
/*!40000 ALTER TABLE `swp_g_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_polygones`
--

DROP TABLE IF EXISTS `swp_g_polygones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_polygones` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(9) NOT NULL,
  `fill_opacity` varchar(5) NOT NULL,
  `fill_color` varchar(9) NOT NULL,
  `url` text NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_fill_opacity` varchar(5) NOT NULL,
  `hover_fill_color` varchar(9) NOT NULL,
  `line_width` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_polygones`
--

LOCK TABLES `swp_g_polygones` WRITE;
/*!40000 ALTER TABLE `swp_g_polygones` DISABLE KEYS */;
INSERT INTO `swp_g_polygones` VALUES (1,1,'My First Polygon','(40.538851525354666, -74.3060302734375),(40.16208338164619, -73.9764404296875),(39.40224434029277, -74.3499755859375),(38.950865400920016, -74.8883056640625),(39.13858199058352, -75.0091552734375),(39.46164364205549, -75.5035400390625),(39.774769485295465, -75.4815673828125),(39.86758762451019, -75.0201416015625)','0.9','E2574C','0.5','F6C37A','http://www.huge-it.com','0.8','FF80B7','0.5','75FF7E','5');
/*!40000 ALTER TABLE `swp_g_polygones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_g_polylines`
--

DROP TABLE IF EXISTS `swp_g_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_g_polylines` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_line_opacity` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_g_polylines`
--

LOCK TABLES `swp_g_polylines` WRITE;
/*!40000 ALTER TABLE `swp_g_polylines` DISABLE KEYS */;
INSERT INTO `swp_g_polylines` VALUES (1,1,'My First Polyline','(42.24071874922666, -71.81488037109375),(42.1532233123986, -71.95770263671875),(42.13082130188811, -72.06207275390625),(42.14507804381756, -72.125244140625),(42.18579390537848, -72.2186279296875),(42.16340342422401, -72.2845458984375),(42.1837587346522, -72.3175048828125),(42.1552594657786, -72.36968994140625),(42.169510705216595, -72.4822998046875),(42.157295553651636, -72.630615234375),(42.13896840458089, -72.72674560546875),(42.165439250064324, -72.850341796875),(42.173581898327754, -72.92312622070312),(42.2366518803206, -73.00277709960938),(42.24478535602799, -73.10714721679688),(42.30169032824452, -73.17306518554688),(42.3016903282445, -73.34884643554688),(42.37883631647602, -73.45596313476562),(42.41940144722477, -73.54385375976562),(42.47209690919285, -73.63174438476562),(42.482225570025925, -73.67294311523438),(42.50652766705062, -73.78005981445312),(42.34027515373573, -73.85421752929688),(42.173581898327754, -73.93112182617188),(41.9921602333763, -73.99703979492188),(41.91249742196845, -74.04098510742188),(41.83682786072714, -74.17831420898438),(41.79179268262892, -74.23599243164062),(41.75492216766298, -74.36782836914062),(41.70777900286713, -74.38430786132812),(41.582579601430346, -74.48318481445312),(41.36238012945534, -74.70291137695312)','0.9','18A326','4','11A000','0.5');
/*!40000 ALTER TABLE `swp_g_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_links`
--

DROP TABLE IF EXISTS `swp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_links`
--

LOCK TABLES `swp_links` WRITE;
/*!40000 ALTER TABLE `swp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_options`
--

DROP TABLE IF EXISTS `swp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6667 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_options`
--

LOCK TABLES `swp_options` WRITE;
/*!40000 ALTER TABLE `swp_options` DISABLE KEYS */;
INSERT INTO `swp_options` VALUES (1,'siteurl','http://tiempocreativo.com.mx/santoveneno/','yes');
INSERT INTO `swp_options` VALUES (2,'home','http://tiempocreativo.com.mx/santoveneno/','yes');
INSERT INTO `swp_options` VALUES (3,'blogname','SantoVeneno','yes');
INSERT INTO `swp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `swp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `swp_options` VALUES (6,'admin_email','julzebadua@gmail.com','yes');
INSERT INTO `swp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `swp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `swp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `swp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `swp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `swp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `swp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `swp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `swp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `swp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `swp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `swp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `swp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `swp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `swp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `swp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `swp_options` VALUES (23,'date_format','j F, Y','yes');
INSERT INTO `swp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `swp_options` VALUES (25,'links_updated_date_format','j F, Y g:i a','yes');
INSERT INTO `swp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `swp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `swp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `swp_options` VALUES (29,'rewrite_rules','a:247:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"cocktail/?$\";s:32:\"index.php?post_type=cocktails_sv\";s:41:\"cocktail/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=cocktails_sv&feed=$matches[1]\";s:36:\"cocktail/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=cocktails_sv&feed=$matches[1]\";s:28:\"cocktail/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=cocktails_sv&paged=$matches[1]\";s:12:\"galleries/?$\";s:32:\"index.php?post_type=galleries_sv\";s:42:\"galleries/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=galleries_sv&feed=$matches[1]\";s:37:\"galleries/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=galleries_sv&feed=$matches[1]\";s:29:\"galleries/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=galleries_sv&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"producto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"producto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"producto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"product_variation/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"product_variation/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"product_variation/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"product_variation/([^/]+)/embed/?$\";s:50:\"index.php?product_variation=$matches[1]&embed=true\";s:38:\"product_variation/([^/]+)/trackback/?$\";s:44:\"index.php?product_variation=$matches[1]&tb=1\";s:46:\"product_variation/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?product_variation=$matches[1]&paged=$matches[2]\";s:53:\"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?product_variation=$matches[1]&cpage=$matches[2]\";s:43:\"product_variation/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?product_variation=$matches[1]&wc-api=$matches[3]\";s:49:\"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"product_variation/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?product_variation=$matches[1]&page=$matches[2]\";s:34:\"product_variation/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"product_variation/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"product_variation/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"shop_order_refund/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"shop_order_refund/([^/]+)/embed/?$\";s:50:\"index.php?shop_order_refund=$matches[1]&embed=true\";s:38:\"shop_order_refund/([^/]+)/trackback/?$\";s:44:\"index.php?shop_order_refund=$matches[1]&tb=1\";s:46:\"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?shop_order_refund=$matches[1]&paged=$matches[2]\";s:53:\"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]\";s:43:\"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]\";s:49:\"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?shop_order_refund=$matches[1]&page=$matches[2]\";s:34:\"shop_order_refund/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"shop_order_refund/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"shop_order_refund/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"cocktail/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"cocktail/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"cocktail/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cocktail/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cocktail/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"cocktail/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"cocktail/([^/]+)/embed/?$\";s:45:\"index.php?cocktails_sv=$matches[1]&embed=true\";s:29:\"cocktail/([^/]+)/trackback/?$\";s:39:\"index.php?cocktails_sv=$matches[1]&tb=1\";s:49:\"cocktail/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?cocktails_sv=$matches[1]&feed=$matches[2]\";s:44:\"cocktail/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?cocktails_sv=$matches[1]&feed=$matches[2]\";s:37:\"cocktail/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?cocktails_sv=$matches[1]&paged=$matches[2]\";s:44:\"cocktail/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?cocktails_sv=$matches[1]&cpage=$matches[2]\";s:34:\"cocktail/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?cocktails_sv=$matches[1]&wc-api=$matches[3]\";s:40:\"cocktail/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"cocktail/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"cocktail/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?cocktails_sv=$matches[1]&page=$matches[2]\";s:25:\"cocktail/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"cocktail/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"cocktail/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"cocktail/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"cocktail/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"cocktail/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"galleries/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"galleries/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"galleries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"galleries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"galleries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"galleries/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"galleries/([^/]+)/embed/?$\";s:45:\"index.php?galleries_sv=$matches[1]&embed=true\";s:30:\"galleries/([^/]+)/trackback/?$\";s:39:\"index.php?galleries_sv=$matches[1]&tb=1\";s:50:\"galleries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?galleries_sv=$matches[1]&feed=$matches[2]\";s:45:\"galleries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?galleries_sv=$matches[1]&feed=$matches[2]\";s:38:\"galleries/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?galleries_sv=$matches[1]&paged=$matches[2]\";s:45:\"galleries/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?galleries_sv=$matches[1]&cpage=$matches[2]\";s:35:\"galleries/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?galleries_sv=$matches[1]&wc-api=$matches[3]\";s:41:\"galleries/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"galleries/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"galleries/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?galleries_sv=$matches[1]&page=$matches[2]\";s:26:\"galleries/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"galleries/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"galleries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"galleries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"galleries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"galleries/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `swp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `swp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `swp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `swp_options` VALUES (33,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:48:\"conekta-woocommerce-v.0.4.3/conekta_checkout.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:17:\"weglot/weglot.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:21:\"wp-tiles/wp-tiles.php\";}','yes');
INSERT INTO `swp_options` VALUES (34,'category_base','','yes');
INSERT INTO `swp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `swp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `swp_options` VALUES (37,'gmt_offset','-6','yes');
INSERT INTO `swp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `swp_options` VALUES (39,'recently_edited','a:5:{i:0;s:83:\"/home/content/57/11363257/html/santoveneno/wp-content/plugins/wp-tiles/wp-tiles.php\";i:2;s:110:\"/home/content/57/11363257/html/santoveneno/wp-content/plugins/conekta-woocommerce-v.0.4.3/conekta_checkout.php\";i:3;s:92:\"/home/content/57/11363257/html/santoveneno/wp-content/plugins/advanced-custom-fields/acf.php\";i:4;s:89:\"/Applications/MAMP/htdocs/santo/blog/wp-content/plugins/woocommerce-es/woocommerce-es.php\";i:5;s:104:\"/Applications/MAMP/htdocs/santo/blog/wp-content/plugins/conekta-woocommerce-v.0.4.3/conekta_checkout.php\";}','no');
INSERT INTO `swp_options` VALUES (40,'template','zoomify','yes');
INSERT INTO `swp_options` VALUES (41,'stylesheet','zoomify','yes');
INSERT INTO `swp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `swp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `swp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `swp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `swp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `swp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `swp_options` VALUES (48,'db_version','37965','yes');
INSERT INTO `swp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `swp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `swp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `swp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `swp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `swp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `swp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `swp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `swp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `swp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `swp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `swp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `swp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `swp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `swp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `swp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `swp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `swp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `swp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `swp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `swp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `swp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `swp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `swp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `swp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `swp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `swp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `swp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `swp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (81,'uninstall_plugins','a:1:{s:17:\"weglot/weglot.php\";a:2:{i:0;s:6:\"Weglot\";i:1;s:16:\"plugin_uninstall\";}}','no');
INSERT INTO `swp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `swp_options` VALUES (83,'page_for_posts','2','yes');
INSERT INTO `swp_options` VALUES (84,'page_on_front','16','yes');
INSERT INTO `swp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `swp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `swp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `swp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `swp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `swp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `swp_options` VALUES (91,'initial_db_version','37965','yes');
INSERT INTO `swp_options` VALUES (92,'swp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop Manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}','yes');
INSERT INTO `swp_options` VALUES (93,'WPLANG','es_MX','yes');
INSERT INTO `swp_options` VALUES (94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (99,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `swp_options` VALUES (100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (102,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (103,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (119,'can_compress_scripts','1','no');
INSERT INTO `swp_options` VALUES (144,'theme_mods_twentysixteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1472519881;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `swp_options` VALUES (145,'current_theme','Zoomify','yes');
INSERT INTO `swp_options` VALUES (146,'theme_mods_zoomify','a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:20:\"zoomify_accent_color\";s:7:\"#ffffff\";s:18:\"zoomify_text_color\";s:7:\"#ffffff\";s:21:\"zoomify_heading_color\";s:7:\"#ffffff\";s:14:\"zoomify_layout\";s:3:\"big\";s:24:\"zoomify_link_hover_color\";s:7:\"#ffffff\";}','yes');
INSERT INTO `swp_options` VALUES (147,'theme_switched','','yes');
INSERT INTO `swp_options` VALUES (148,'theme_switched_via_customizer','','yes');
INSERT INTO `swp_options` VALUES (150,'recently_activated','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (155,'widget_huge_it_google_maps_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (156,'hg_gmaps_api_key','AIzaSyCjCrcd7NzGEXwUsTeQ8l09oOndCQvtW6I','yes');
INSERT INTO `swp_options` VALUES (161,'woocommerce_default_country','MX:Jalisco','yes');
INSERT INTO `swp_options` VALUES (162,'woocommerce_allowed_countries','all','yes');
INSERT INTO `swp_options` VALUES (163,'woocommerce_all_except_countries','','yes');
INSERT INTO `swp_options` VALUES (164,'woocommerce_specific_allowed_countries','','yes');
INSERT INTO `swp_options` VALUES (165,'woocommerce_ship_to_countries','','yes');
INSERT INTO `swp_options` VALUES (166,'woocommerce_specific_ship_to_countries','','yes');
INSERT INTO `swp_options` VALUES (167,'woocommerce_default_customer_address','geolocation','yes');
INSERT INTO `swp_options` VALUES (168,'woocommerce_calc_taxes','yes','yes');
INSERT INTO `swp_options` VALUES (169,'woocommerce_demo_store','no','yes');
INSERT INTO `swp_options` VALUES (170,'woocommerce_demo_store_notice','This is a demo store for testing purposes &mdash; no orders shall be fulfilled.','no');
INSERT INTO `swp_options` VALUES (171,'woocommerce_currency','MXN','yes');
INSERT INTO `swp_options` VALUES (172,'woocommerce_currency_pos','left','yes');
INSERT INTO `swp_options` VALUES (173,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `swp_options` VALUES (174,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `swp_options` VALUES (175,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `swp_options` VALUES (176,'woocommerce_weight_unit','kg','yes');
INSERT INTO `swp_options` VALUES (177,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `swp_options` VALUES (178,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `swp_options` VALUES (179,'woocommerce_review_rating_required','yes','no');
INSERT INTO `swp_options` VALUES (180,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `swp_options` VALUES (181,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `swp_options` VALUES (182,'woocommerce_shop_page_id','6','yes');
INSERT INTO `swp_options` VALUES (183,'woocommerce_shop_page_display','','yes');
INSERT INTO `swp_options` VALUES (184,'woocommerce_category_archive_display','','yes');
INSERT INTO `swp_options` VALUES (185,'woocommerce_default_catalog_orderby','menu_order','yes');
INSERT INTO `swp_options` VALUES (186,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `swp_options` VALUES (187,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `swp_options` VALUES (188,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (189,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (190,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (191,'woocommerce_enable_lightbox','yes','yes');
INSERT INTO `swp_options` VALUES (192,'woocommerce_manage_stock','yes','yes');
INSERT INTO `swp_options` VALUES (193,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `swp_options` VALUES (194,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `swp_options` VALUES (195,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `swp_options` VALUES (196,'woocommerce_stock_email_recipient','julzebadua@gmail.com','no');
INSERT INTO `swp_options` VALUES (197,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `swp_options` VALUES (198,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `swp_options` VALUES (199,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `swp_options` VALUES (200,'woocommerce_stock_format','','yes');
INSERT INTO `swp_options` VALUES (201,'woocommerce_file_download_method','force','no');
INSERT INTO `swp_options` VALUES (202,'woocommerce_downloads_require_login','no','no');
INSERT INTO `swp_options` VALUES (203,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `swp_options` VALUES (204,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `swp_options` VALUES (205,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `swp_options` VALUES (206,'woocommerce_shipping_tax_class','iva','yes');
INSERT INTO `swp_options` VALUES (207,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `swp_options` VALUES (208,'woocommerce_tax_classes','Reduced Rate\r\nZero Rate\r\nIVA','yes');
INSERT INTO `swp_options` VALUES (209,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `swp_options` VALUES (210,'woocommerce_tax_display_cart','excl','no');
INSERT INTO `swp_options` VALUES (211,'woocommerce_price_display_suffix','','yes');
INSERT INTO `swp_options` VALUES (212,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `swp_options` VALUES (213,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `swp_options` VALUES (214,'woocommerce_shipping_cost_requires_address','no','no');
INSERT INTO `swp_options` VALUES (215,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `swp_options` VALUES (216,'woocommerce_enable_coupons','no','yes');
INSERT INTO `swp_options` VALUES (217,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `swp_options` VALUES (218,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `swp_options` VALUES (219,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `swp_options` VALUES (220,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `swp_options` VALUES (221,'woocommerce_cart_page_id','7','yes');
INSERT INTO `swp_options` VALUES (222,'woocommerce_checkout_page_id','8','yes');
INSERT INTO `swp_options` VALUES (223,'woocommerce_terms_page_id','','no');
INSERT INTO `swp_options` VALUES (224,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `swp_options` VALUES (225,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `swp_options` VALUES (226,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `swp_options` VALUES (227,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `swp_options` VALUES (228,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `swp_options` VALUES (229,'woocommerce_myaccount_page_id','9','yes');
INSERT INTO `swp_options` VALUES (230,'woocommerce_enable_signup_and_login_from_checkout','yes','no');
INSERT INTO `swp_options` VALUES (231,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `swp_options` VALUES (232,'woocommerce_enable_checkout_login_reminder','yes','no');
INSERT INTO `swp_options` VALUES (233,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `swp_options` VALUES (234,'woocommerce_registration_generate_password','no','no');
INSERT INTO `swp_options` VALUES (235,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `swp_options` VALUES (236,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `swp_options` VALUES (237,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `swp_options` VALUES (238,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `swp_options` VALUES (239,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `swp_options` VALUES (240,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `swp_options` VALUES (241,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `swp_options` VALUES (242,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `swp_options` VALUES (243,'woocommerce_email_from_name','SantoVeneno','no');
INSERT INTO `swp_options` VALUES (244,'woocommerce_email_from_address','julzebadua@gmail.com','no');
INSERT INTO `swp_options` VALUES (245,'woocommerce_email_header_image','','no');
INSERT INTO `swp_options` VALUES (246,'woocommerce_email_footer_text','SantoVeneno - Powered by WooCommerce','no');
INSERT INTO `swp_options` VALUES (247,'woocommerce_email_base_color','#557da1','no');
INSERT INTO `swp_options` VALUES (248,'woocommerce_email_background_color','#f5f5f5','no');
INSERT INTO `swp_options` VALUES (249,'woocommerce_email_body_background_color','#fdfdfd','no');
INSERT INTO `swp_options` VALUES (250,'woocommerce_email_text_color','#505050','no');
INSERT INTO `swp_options` VALUES (251,'woocommerce_api_enabled','yes','yes');
INSERT INTO `swp_options` VALUES (255,'woocommerce_db_version','2.6.4','yes');
INSERT INTO `swp_options` VALUES (256,'woocommerce_version','2.6.4','yes');
INSERT INTO `swp_options` VALUES (257,'woocommerce_admin_notices','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (260,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (261,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (262,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (263,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (264,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (265,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (266,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (267,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (268,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (269,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (270,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (271,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (275,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (283,'woocommerce_allow_tracking','no','yes');
INSERT INTO `swp_options` VALUES (290,'woocommerce_flat_rate_1_settings','a:3:{s:5:\"title\";s:9:\"Flat Rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:4:\"1500\";}','yes');
INSERT INTO `swp_options` VALUES (299,'woocommerce_conektacard_settings','a:9:{s:7:\"enabled\";s:3:\"yes\";s:5:\"meses\";s:2:\"no\";s:5:\"debug\";s:3:\"yes\";s:5:\"title\";s:30:\"Tarjeta de crédito ó débito\";s:12:\"test_api_key\";s:26:\"key_qM3CQMqWhdvxDjgso2zKDA\";s:20:\"test_publishable_key\";s:27:\"key_P1fqzV6KAv3fjbxAqjHHPHw\";s:12:\"live_api_key\";s:0:\"\";s:20:\"live_publishable_key\";s:0:\"\";s:18:\"alternate_imageurl\";s:0:\"\";}','yes');
INSERT INTO `swp_options` VALUES (302,'woocommerce_gateway_order','a:8:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:11:\"conektacard\";i:4;s:11:\"conektacash\";i:5;s:11:\"conektaspei\";i:6;s:14:\"conektabanorte\";i:7;}','yes');
INSERT INTO `swp_options` VALUES (314,'woocommerce_cheque_settings','a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:14:\"Check Payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";}','yes');
INSERT INTO `swp_options` VALUES (316,'woocommerce_paypal_settings','a:18:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:20:\"julzebadua@gmail.com\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:8:\"advanced\";s:0:\"\";s:14:\"receiver_email\";s:20:\"julzebadua@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:2:\"no\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:5:\"admin\";s:12:\"api_password\";s:5:\"admin\";s:13:\"api_signature\";s:0:\"\";}','yes');
INSERT INTO `swp_options` VALUES (318,'woocommerce_conektaspei_settings','a:8:{s:7:\"enabled\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:5:\"title\";s:12:\"Spei Payment\";s:12:\"test_api_key\";s:0:\"\";s:12:\"live_api_key\";s:0:\"\";s:18:\"alternate_imageurl\";s:0:\"\";s:11:\"description\";s:99:\"Por favor realiza el pago en el portal de tu banco utilizando los datos que te enviamos por correo.\";s:12:\"instructions\";s:99:\"Por favor realiza el pago en el portal de tu banco utilizando los datos que te enviamos por correo.\";}','yes');
INSERT INTO `swp_options` VALUES (320,'woocommerce_conektacash_settings','a:8:{s:7:\"enabled\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:5:\"title\";s:12:\"Cash Payment\";s:12:\"test_api_key\";s:0:\"\";s:12:\"live_api_key\";s:0:\"\";s:18:\"alternate_imageurl\";s:0:\"\";s:11:\"description\";s:179:\"Por favor realiza el pago en el OXXO más cercano utilizando el código de barras que se encuentra a continuación (si no te es posible verlo acepta las imágenes de este correo).\";s:12:\"instructions\";s:179:\"Por favor realiza el pago en el OXXO más cercano utilizando el código de barras que se encuentra a continuación (si no te es posible verlo acepta las imágenes de este correo).\";}','yes');
INSERT INTO `swp_options` VALUES (322,'woocommerce_conektabanorte_settings','a:8:{s:7:\"enabled\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:5:\"title\";s:15:\"Banorte Payment\";s:12:\"test_api_key\";s:0:\"\";s:12:\"live_api_key\";s:0:\"\";s:18:\"alternate_imageurl\";s:0:\"\";s:11:\"description\";s:98:\"Por favor realiza el pago en una sucursal Banorte utilizando los datos que te enviamos por correo.\";s:12:\"instructions\";s:98:\"Por favor realiza el pago en una sucursal Banorte utilizando los datos que te enviamos por correo.\";}','yes');
INSERT INTO `swp_options` VALUES (346,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `swp_options` VALUES (512,'wpcf7','a:2:{s:7:\"version\";s:5:\"4.5.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1475049315;s:7:\"version\";s:5:\"4.5.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `swp_options` VALUES (560,'product_cat_children','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (573,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"julzebadua@gmail.com\";s:7:\"version\";s:6:\"4.6.17\";s:9:\"timestamp\";i:1576441998;}','no');
INSERT INTO `swp_options` VALUES (1384,'acf_version','4.4.11','yes');
INSERT INTO `swp_options` VALUES (1668,'wp_tiles','a:44:{s:20:\"notice_tile_designer\";N;s:21:\"byline_effect_preview\";s:1475:\"        <div class=\"wp-tiles-container wp-tiles-tile-demo wp-tiles-loaded\" id=\"tile-preview\">\n\n            <div id=\"wp_tiles_1\" class=\"wp-tiles-grid wp-tiles-byline-align-bottom\">\n\n                <div class=\"wp-tiles-tile\" id=\"tile-1\">\n\n                    <a href=\"javascript:void(0)\" title=\"Animation Demo\">\n\n                        <article class=\"wp-tiles-tile-with-image wp-tiles-tile-wrapper\" itemscope itemtype=\"http://schema.org/CreateWork\">\n\n                            <div class=\"wp-tiles-tile-bg\"></div>\n\n                            <div class=\"wp-tiles-byline\">\n\n                                <h4 itemprop=\"name\" class=\"wp-tiles-byline-title\">Byline Preview</h4>\n\n                                <div class=\"wp-tiles-byline-content\" itemprop=\"description\">\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in...\n                                </div>\n\n                            </div>\n\n                        </article>\n\n                    </a>\n                </div>\n\n            </div>\n\n        </div>\n        <style>\n            #tile-preview .wp-tiles-byline {\n                background: rgba( 0,0,0,0.7 );\n                height: 40%;\n                            }\n        </style>\n        \";s:12:\"byline_color\";s:7:\"#000000\";s:14:\"byline_opacity\";s:3:\"0.7\";s:18:\"byline_height_auto\";b:0;s:13:\"byline_height\";i:40;s:13:\"byline_effect\";s:4:\"none\";s:12:\"byline_align\";s:6:\"bottom\";s:12:\"image_effect\";s:4:\"none\";s:16:\"image_text_color\";b:0;s:10:\"text_color\";b:0;s:13:\"legacy_styles\";b:0;s:12:\"notice_grids\";N;s:12:\"default_grid\";i:137;s:20:\"small_screen_enabled\";s:1:\"1\";s:17:\"small_screen_grid\";i:137;s:10:\"breakpoint\";i:800;s:7:\"padding\";i:5;s:10:\"pagination\";s:4:\"ajax\";s:19:\"grid_selector_color\";s:7:\"#444444\";s:12:\"notice_girds\";N;s:7:\"color_1\";s:7:\"#009999\";s:7:\"color_2\";s:7:\"#1D7373\";s:7:\"color_3\";s:7:\"#006363\";s:7:\"color_4\";s:7:\"#33CCCC\";s:7:\"color_5\";s:7:\"#5CCCCC\";s:18:\"background_opacity\";i:1;s:8:\"animated\";b:1;s:12:\"animate_init\";b:0;s:14:\"animate_resize\";b:0;s:16:\"animate_template\";b:1;s:9:\"text_only\";b:0;s:11:\"images_only\";b:0;s:4:\"link\";s:4:\"post\";s:15:\"link_new_window\";b:0;s:15:\"byline_template\";s:12:\"%categories%\";s:22:\"notice_byline_template\";N;s:20:\"byline_for_text_only\";b:0;s:24:\"byline_template_textonly\";b:0;s:10:\"hide_title\";b:0;s:10:\"image_size\";s:5:\"large\";s:12:\"image_source\";s:3:\"all\";s:19:\"notice_image_source\";N;s:0:\"\";N;}','yes');
INSERT INTO `swp_options` VALUES (1669,'wp-tiles-options','legacy','yes');
INSERT INTO `swp_options` VALUES (1956,'category_children','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (2195,'widget_weglotwidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `swp_options` VALUES (2196,'project_key','wg_f3a843dc6c7c2b3775755f8151772abb','yes');
INSERT INTO `swp_options` VALUES (2197,'original_l','es','yes');
INSERT INTO `swp_options` VALUES (2198,'destination_l','en','yes');
INSERT INTO `swp_options` VALUES (2199,'wg_auto_switch','','yes');
INSERT INTO `swp_options` VALUES (2200,'override_css','','yes');
INSERT INTO `swp_options` VALUES (2201,'flag_css','','yes');
INSERT INTO `swp_options` VALUES (2202,'with_flags','on','yes');
INSERT INTO `swp_options` VALUES (2203,'type_flags','0','yes');
INSERT INTO `swp_options` VALUES (2204,'with_name','','yes');
INSERT INTO `swp_options` VALUES (2205,'is_dropdown','on','yes');
INSERT INTO `swp_options` VALUES (2206,'is_fullname','','yes');
INSERT INTO `swp_options` VALUES (2207,'is_menu','','yes');
INSERT INTO `swp_options` VALUES (2208,'exclude_url','','yes');
INSERT INTO `swp_options` VALUES (2209,'exclude_blocks','','yes');
INSERT INTO `swp_options` VALUES (2210,'rtl_ltr_style','','yes');
INSERT INTO `swp_options` VALUES (2213,'wg_allowed','0','yes');
INSERT INTO `swp_options` VALUES (2214,'show_box','off','yes');
INSERT INTO `swp_options` VALUES (6351,'_transient_woocommerce_cache_excluded_uris','a:6:{i:0;s:3:\"p=7\";i:1;s:6:\"/cart/\";i:2;s:3:\"p=8\";i:3;s:10:\"/checkout/\";i:4;s:3:\"p=9\";i:5;s:12:\"/my-account/\";}','yes');
INSERT INTO `swp_options` VALUES (6352,'_transient_woocommerce_webhook_ids','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (6353,'_transient_wc_attribute_taxonomies','a:0:{}','yes');
INSERT INTO `swp_options` VALUES (6354,'cron','a:2:{i:1582265116;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `swp_options` VALUES (6355,'_transient_is_multi_author','0','yes');
INSERT INTO `swp_options` VALUES (6502,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582261638;s:7:\"checked\";a:1:{s:7:\"zoomify\";s:6:\"1.0.10\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `swp_options` VALUES (6554,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:9:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.4\";s:7:\"version\";s:5:\"5.1.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.8\";s:7:\"version\";s:5:\"5.0.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.13.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.13.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.13-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.13-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.9.13\";s:7:\"version\";s:6:\"4.9.13\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.8.12.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.8.12.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.12-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.8.12-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.8.12\";s:7:\"version\";s:6:\"4.8.12\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.7.16.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.7.16.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.16-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.7.16-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.7.16\";s:7:\"version\";s:6:\"4.7.16\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1582261636;s:15:\"version_checked\";s:6:\"4.6.17\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `swp_options` VALUES (6664,'_site_transient_timeout_theme_roots','1582263437','no');
INSERT INTO `swp_options` VALUES (6665,'_site_transient_theme_roots','a:1:{s:7:\"zoomify\";s:7:\"/themes\";}','no');
INSERT INTO `swp_options` VALUES (6666,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582261638;s:8:\"response\";a:1:{s:17:\"weglot/weglot.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:20:\"w.org/plugins/weglot\";s:4:\"slug\";s:6:\"weglot\";s:6:\"plugin\";s:17:\"weglot/weglot.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/weglot/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/weglot.3.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/weglot/assets/icon-256x256.png?rev=2186774\";s:2:\"1x\";s:59:\"https://ps.w.org/weglot/assets/icon-128x128.png?rev=2186774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/weglot/assets/banner-1544x500.png?rev=2186774\";s:2:\"1x\";s:61:\"https://ps.w.org/weglot/assets/banner-772x250.png?rev=2186774\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.0\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";a:0:{}}s:21:\"wp-tiles/wp-tiles.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/wp-tiles\";s:4:\"slug\";s:8:\"wp-tiles\";s:6:\"plugin\";s:21:\"wp-tiles/wp-tiles.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wp-tiles/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-tiles.1.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wp-tiles/assets/icon-256x256.png?rev=1087152\";s:2:\"1x\";s:61:\"https://ps.w.org/wp-tiles/assets/icon-128x128.png?rev=1087152\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/wp-tiles/assets/banner-772x250.png?rev=1087141\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `swp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_postmeta`
--

DROP TABLE IF EXISTS `swp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_postmeta`
--

LOCK TABLES `swp_postmeta` WRITE;
/*!40000 ALTER TABLE `swp_postmeta` DISABLE KEYS */;
INSERT INTO `swp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `swp_postmeta` VALUES (6,10,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (7,10,'_edit_lock','1475065653:1');
INSERT INTO `swp_postmeta` VALUES (8,10,'_visibility','visible');
INSERT INTO `swp_postmeta` VALUES (9,10,'_stock_status','instock');
INSERT INTO `swp_postmeta` VALUES (10,10,'total_sales','6');
INSERT INTO `swp_postmeta` VALUES (11,10,'_downloadable','no');
INSERT INTO `swp_postmeta` VALUES (12,10,'_virtual','no');
INSERT INTO `swp_postmeta` VALUES (13,10,'_tax_status','taxable');
INSERT INTO `swp_postmeta` VALUES (14,10,'_tax_class','');
INSERT INTO `swp_postmeta` VALUES (15,10,'_purchase_note','');
INSERT INTO `swp_postmeta` VALUES (16,10,'_featured','no');
INSERT INTO `swp_postmeta` VALUES (17,10,'_weight','');
INSERT INTO `swp_postmeta` VALUES (18,10,'_length','');
INSERT INTO `swp_postmeta` VALUES (19,10,'_width','');
INSERT INTO `swp_postmeta` VALUES (20,10,'_height','');
INSERT INTO `swp_postmeta` VALUES (21,10,'_sku','');
INSERT INTO `swp_postmeta` VALUES (22,10,'_product_attributes','a:0:{}');
INSERT INTO `swp_postmeta` VALUES (23,10,'_regular_price','1500');
INSERT INTO `swp_postmeta` VALUES (24,10,'_sale_price','');
INSERT INTO `swp_postmeta` VALUES (25,10,'_sale_price_dates_from','');
INSERT INTO `swp_postmeta` VALUES (26,10,'_sale_price_dates_to','');
INSERT INTO `swp_postmeta` VALUES (27,10,'_price','1500');
INSERT INTO `swp_postmeta` VALUES (28,10,'_sold_individually','');
INSERT INTO `swp_postmeta` VALUES (29,10,'_manage_stock','no');
INSERT INTO `swp_postmeta` VALUES (30,10,'_backorders','no');
INSERT INTO `swp_postmeta` VALUES (31,10,'_stock','');
INSERT INTO `swp_postmeta` VALUES (32,10,'_upsell_ids','a:0:{}');
INSERT INTO `swp_postmeta` VALUES (33,10,'_crosssell_ids','a:0:{}');
INSERT INTO `swp_postmeta` VALUES (34,10,'_product_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (35,10,'_product_image_gallery','');
INSERT INTO `swp_postmeta` VALUES (38,10,'_wc_rating_count','a:0:{}');
INSERT INTO `swp_postmeta` VALUES (39,10,'_wc_review_count','0');
INSERT INTO `swp_postmeta` VALUES (40,10,'_wc_average_rating','0');
INSERT INTO `swp_postmeta` VALUES (41,12,'_order_key','wc_order_57c4f1ffcd979');
INSERT INTO `swp_postmeta` VALUES (42,12,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (43,12,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (44,12,'_customer_ip_address','::1');
INSERT INTO `swp_postmeta` VALUES (45,12,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (46,12,'_customer_user','1');
INSERT INTO `swp_postmeta` VALUES (47,12,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (48,12,'_cart_hash','98a9f760198935ab4bde93e624ad61b8');
INSERT INTO `swp_postmeta` VALUES (49,12,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (50,12,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (51,12,'_billing_first_name','d');
INSERT INTO `swp_postmeta` VALUES (52,12,'_billing_last_name','d');
INSERT INTO `swp_postmeta` VALUES (53,12,'_billing_company','');
INSERT INTO `swp_postmeta` VALUES (54,12,'_billing_email','julzebadua@gmail.com');
INSERT INTO `swp_postmeta` VALUES (55,12,'_billing_phone','1234567890');
INSERT INTO `swp_postmeta` VALUES (56,12,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (57,12,'_billing_address_1','dsad');
INSERT INTO `swp_postmeta` VALUES (58,12,'_billing_address_2','');
INSERT INTO `swp_postmeta` VALUES (59,12,'_billing_city','dasdsad');
INSERT INTO `swp_postmeta` VALUES (60,12,'_billing_state','Jalisco');
INSERT INTO `swp_postmeta` VALUES (61,12,'_billing_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (62,12,'_shipping_first_name','d');
INSERT INTO `swp_postmeta` VALUES (63,12,'_shipping_last_name','d');
INSERT INTO `swp_postmeta` VALUES (64,12,'_shipping_company','');
INSERT INTO `swp_postmeta` VALUES (65,12,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (66,12,'_shipping_address_1','dsad');
INSERT INTO `swp_postmeta` VALUES (67,12,'_shipping_address_2','');
INSERT INTO `swp_postmeta` VALUES (68,12,'_shipping_city','dasdsad');
INSERT INTO `swp_postmeta` VALUES (69,12,'_shipping_state','Jalisco');
INSERT INTO `swp_postmeta` VALUES (70,12,'_shipping_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (71,12,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (72,12,'_payment_method_title','Credit Card Payment');
INSERT INTO `swp_postmeta` VALUES (73,12,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (74,12,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (75,12,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (76,12,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (77,12,'_order_total','3240.00');
INSERT INTO `swp_postmeta` VALUES (78,12,'transaction_id','57c4f219a97880a65600ec44');
INSERT INTO `swp_postmeta` VALUES (79,12,'_download_permissions_granted','1');
INSERT INTO `swp_postmeta` VALUES (80,12,'_recorded_sales','yes');
INSERT INTO `swp_postmeta` VALUES (81,12,'_paid_date','2016-08-29 20:40:26');
INSERT INTO `swp_postmeta` VALUES (82,12,'_order_stock_reduced','1');
INSERT INTO `swp_postmeta` VALUES (83,12,'_edit_lock','1475065896:1');
INSERT INTO `swp_postmeta` VALUES (84,12,'_completed_date','2016-08-29 20:51:57');
INSERT INTO `swp_postmeta` VALUES (85,8,'_edit_lock','1482470451:1');
INSERT INTO `swp_postmeta` VALUES (86,16,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (87,16,'_edit_lock','1482470479:1');
INSERT INTO `swp_postmeta` VALUES (88,16,'_wp_page_template','page-templates/home.php');
INSERT INTO `swp_postmeta` VALUES (89,18,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (90,18,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (91,18,'_menu_item_object_id','16');
INSERT INTO `swp_postmeta` VALUES (92,18,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (93,18,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (94,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (95,18,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (96,18,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (125,22,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (126,22,'_wp_page_template','page-templates/bottle-tour.php');
INSERT INTO `swp_postmeta` VALUES (127,22,'_edit_lock','1483234347:1');
INSERT INTO `swp_postmeta` VALUES (128,25,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (129,25,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (130,25,'_menu_item_object_id','22');
INSERT INTO `swp_postmeta` VALUES (131,25,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (132,25,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (133,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (134,25,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (135,25,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (146,27,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (147,27,'_wp_page_template','default');
INSERT INTO `swp_postmeta` VALUES (148,27,'_edit_lock','1484793700:1');
INSERT INTO `swp_postmeta` VALUES (149,29,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (150,29,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (151,29,'_menu_item_object_id','27');
INSERT INTO `swp_postmeta` VALUES (152,29,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (153,29,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (154,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (155,29,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (156,29,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (167,31,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (168,31,'_edit_lock','1483226451:1');
INSERT INTO `swp_postmeta` VALUES (169,31,'_wp_page_template','page-templates/cocktails.php');
INSERT INTO `swp_postmeta` VALUES (170,33,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (171,33,'_edit_lock','1484795542:1');
INSERT INTO `swp_postmeta` VALUES (172,33,'_wp_page_template','page-templates/galleries.php');
INSERT INTO `swp_postmeta` VALUES (173,35,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (174,35,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (175,35,'_menu_item_object_id','33');
INSERT INTO `swp_postmeta` VALUES (176,35,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (177,35,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (178,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (179,35,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (180,35,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (182,36,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (183,36,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (184,36,'_menu_item_object_id','31');
INSERT INTO `swp_postmeta` VALUES (185,36,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (186,36,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (187,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (188,36,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (189,36,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (191,37,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (192,37,'_edit_lock','1472569585:1');
INSERT INTO `swp_postmeta` VALUES (193,38,'_wp_attached_file','2016/08/20150323-cocktails-vicky-wasik-negroni.jpg');
INSERT INTO `swp_postmeta` VALUES (194,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1125;s:4:\"file\";s:50:\"2016/08/20150323-cocktails-vicky-wasik-negroni.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"20150323-cocktails-vicky-wasik-negroni-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"20150323-cocktails-vicky-wasik-negroni-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (195,39,'_wp_attached_file','2016/08/cocktail_bar.jpg');
INSERT INTO `swp_postmeta` VALUES (196,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:24:\"2016/08/cocktail_bar.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"cocktail_bar-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"cocktail_bar-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (197,40,'_wp_attached_file','2016/08/FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3.jpg');
INSERT INTO `swp_postmeta` VALUES (198,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:56:\"2016/08/FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:56:\"FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (199,41,'_wp_attached_file','2016/08/kale-cocktail.jpg.653x0_q80_crop-smart.jpg');
INSERT INTO `swp_postmeta` VALUES (200,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:644;s:6:\"height\";i:364;s:4:\"file\";s:50:\"2016/08/kale-cocktail.jpg.653x0_q80_crop-smart.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"kale-cocktail.jpg.653x0_q80_crop-smart-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"kale-cocktail.jpg.653x0_q80_crop-smart-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"kale-cocktail.jpg.653x0_q80_crop-smart-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"kale-cocktail.jpg.653x0_q80_crop-smart-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"kale-cocktail.jpg.653x0_q80_crop-smart-600x364.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:364;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (201,37,'_thumbnail_id','38');
INSERT INTO `swp_postmeta` VALUES (202,42,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (203,42,'_edit_lock','1472570625:1');
INSERT INTO `swp_postmeta` VALUES (204,42,'_thumbnail_id','41');
INSERT INTO `swp_postmeta` VALUES (205,43,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (206,43,'_edit_lock','1472570661:1');
INSERT INTO `swp_postmeta` VALUES (207,43,'_thumbnail_id','40');
INSERT INTO `swp_postmeta` VALUES (208,44,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (209,44,'_edit_lock','1472578599:1');
INSERT INTO `swp_postmeta` VALUES (210,44,'_thumbnail_id','39');
INSERT INTO `swp_postmeta` VALUES (211,45,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (212,45,'_edit_lock','1483290016:1');
INSERT INTO `swp_postmeta` VALUES (213,45,'_wp_page_template','page-templates/shop-online.php');
INSERT INTO `swp_postmeta` VALUES (214,48,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (215,48,'_edit_lock','1472579469:1');
INSERT INTO `swp_postmeta` VALUES (218,48,'_thumbnail_id','38');
INSERT INTO `swp_postmeta` VALUES (221,50,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (222,50,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (223,50,'_menu_item_object_id','45');
INSERT INTO `swp_postmeta` VALUES (224,50,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (225,50,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (226,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (227,50,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (228,50,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (239,52,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (240,52,'_edit_lock','1483226434:1');
INSERT INTO `swp_postmeta` VALUES (241,52,'_wp_page_template','page-templates/tour.php');
INSERT INTO `swp_postmeta` VALUES (242,55,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (243,55,'_edit_lock','1483814089:1');
INSERT INTO `swp_postmeta` VALUES (244,56,'_wp_attached_file','2016/09/ReposadoOldFashioned-515045391.jpg');
INSERT INTO `swp_postmeta` VALUES (245,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:385;s:6:\"height\";i:257;s:4:\"file\";s:42:\"2016/09/ReposadoOldFashioned-515045391.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"ReposadoOldFashioned-515045391-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"ReposadoOldFashioned-515045391-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"ReposadoOldFashioned-515045391-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"ReposadoOldFashioned-515045391-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:29:\"Getty Images/Stock4B Creative\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:17:\"Highball on table\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:9:\"515045391\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (246,57,'_wp_attached_file','2016/09/bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_.jpg');
INSERT INTO `swp_postmeta` VALUES (247,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:83:\"2016/09/bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:83:\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_-600x540.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (248,58,'_wp_attached_file','2016/09/IMG_9677.jpg');
INSERT INTO `swp_postmeta` VALUES (249,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4368;s:6:\"height\";i:2912;s:4:\"file\";s:20:\"2016/09/IMG_9677.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_9677-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_9677-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_9677-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_9677-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_9677-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"IMG_9677-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"IMG_9677-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1296349860\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:1:\"1\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (250,55,'_thumbnail_id','57');
INSERT INTO `swp_postmeta` VALUES (251,59,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (252,59,'_edit_lock','1483814031:1');
INSERT INTO `swp_postmeta` VALUES (253,59,'_thumbnail_id','58');
INSERT INTO `swp_postmeta` VALUES (254,60,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (255,60,'_edit_lock','1483813995:1');
INSERT INTO `swp_postmeta` VALUES (256,60,'_thumbnail_id','56');
INSERT INTO `swp_postmeta` VALUES (259,8,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (260,8,'_wp_page_template','default');
INSERT INTO `swp_postmeta` VALUES (261,10,'_thumbnail_id','56');
INSERT INTO `swp_postmeta` VALUES (262,67,'_order_key','wc_order_57ebb81718324');
INSERT INTO `swp_postmeta` VALUES (263,67,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (264,67,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (265,67,'_customer_ip_address','::1');
INSERT INTO `swp_postmeta` VALUES (266,67,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (267,67,'_customer_user','1');
INSERT INTO `swp_postmeta` VALUES (268,67,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (269,67,'_cart_hash','98a9f760198935ab4bde93e624ad61b8');
INSERT INTO `swp_postmeta` VALUES (270,67,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (271,67,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (272,67,'_billing_first_name','d');
INSERT INTO `swp_postmeta` VALUES (273,67,'_billing_last_name','d');
INSERT INTO `swp_postmeta` VALUES (274,67,'_billing_company','asdsa');
INSERT INTO `swp_postmeta` VALUES (275,67,'_billing_email','julzebadua@gmail.com');
INSERT INTO `swp_postmeta` VALUES (276,67,'_billing_phone','1234567890');
INSERT INTO `swp_postmeta` VALUES (277,67,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (278,67,'_billing_address_1','dsad');
INSERT INTO `swp_postmeta` VALUES (279,67,'_billing_address_2','');
INSERT INTO `swp_postmeta` VALUES (280,67,'_billing_city','dasdsad');
INSERT INTO `swp_postmeta` VALUES (281,67,'_billing_state','Jalisco');
INSERT INTO `swp_postmeta` VALUES (282,67,'_billing_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (283,67,'_shipping_first_name','d');
INSERT INTO `swp_postmeta` VALUES (284,67,'_shipping_last_name','d');
INSERT INTO `swp_postmeta` VALUES (285,67,'_shipping_company','asdsa');
INSERT INTO `swp_postmeta` VALUES (286,67,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (287,67,'_shipping_address_1','dsad');
INSERT INTO `swp_postmeta` VALUES (288,67,'_shipping_address_2','');
INSERT INTO `swp_postmeta` VALUES (289,67,'_shipping_city','dasdsad');
INSERT INTO `swp_postmeta` VALUES (290,67,'_shipping_state','Jalisco');
INSERT INTO `swp_postmeta` VALUES (291,67,'_shipping_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (292,67,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (293,67,'_payment_method_title','Datos de la tarjeta');
INSERT INTO `swp_postmeta` VALUES (294,67,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (295,67,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (296,67,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (297,67,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (298,67,'_order_total','3240.00');
INSERT INTO `swp_postmeta` VALUES (299,67,'transaction_id','57ebb817dba34d0f8200548b');
INSERT INTO `swp_postmeta` VALUES (300,67,'_download_permissions_granted','1');
INSERT INTO `swp_postmeta` VALUES (301,67,'_recorded_sales','yes');
INSERT INTO `swp_postmeta` VALUES (302,67,'_paid_date','2016-09-28 06:31:22');
INSERT INTO `swp_postmeta` VALUES (303,67,'_order_stock_reduced','1');
INSERT INTO `swp_postmeta` VALUES (304,67,'_edit_lock','1475065995:1');
INSERT INTO `swp_postmeta` VALUES (305,67,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (306,67,'_transaction_id','');
INSERT INTO `swp_postmeta` VALUES (309,69,'_form','<label>Nombre*\n    [text* your-name] </label>\n\n<label> Email*\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]');
INSERT INTO `swp_postmeta` VALUES (310,69,'_mail','a:8:{s:7:\"subject\";s:28:\"SantoVeneno \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <julzebadua@gmail.com>\";s:4:\"body\";s:181:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on SantoVeneno (http://localhost:8888/santo/blog)\";s:9:\"recipient\";s:20:\"julzebadua@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `swp_postmeta` VALUES (311,69,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"SantoVeneno \"[your-subject]\"\";s:6:\"sender\";s:34:\"SantoVeneno <julzebadua@gmail.com>\";s:4:\"body\";s:123:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on SantoVeneno (http://localhost:8888/santo/blog)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: julzebadua@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `swp_postmeta` VALUES (312,69,'_messages','a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:98:\"Se ha producido un error al intentar enviar el mensaje. Por favor, inténtelo de nuevo más tarde.\";s:16:\"validation_error\";s:71:\"Uno o más campos tienen un error. Por favor revisa e intenta de nuevo.\";s:4:\"spam\";s:98:\"Se ha producido un error al intentar enviar el mensaje. Por favor, inténtelo de nuevo más tarde.\";s:12:\"accept_terms\";s:68:\"Debe aceptar los términos y condiciones antes de enviar el mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecta.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:51:\"La fecha es posterior a la más reciente permitido.\";s:13:\"upload_failed\";s:57:\"Se ha producido un error desconocido de subir el archivo.\";s:24:\"upload_file_type_invalid\";s:45:\"No se le permite subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:45:\"Se ha producido un error al subir el archivo.\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:53:\"El número es más pequeño que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"La respuesta a la prueba es incorrecta.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:63:\"La dirección de correo electrónico introducido no es válido.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}');
INSERT INTO `swp_postmeta` VALUES (313,69,'_additional_settings','');
INSERT INTO `swp_postmeta` VALUES (314,69,'_locale','es_MX');
INSERT INTO `swp_postmeta` VALUES (315,71,'_oembed_0d22361c297a643b8e7e04e521a5290d','{{unknown}}');
INSERT INTO `swp_postmeta` VALUES (316,71,'_oembed_654dde42382de58dd28d62e78d8cbd48','<iframe width=\"267\" height=\"200\" src=\"https://www.youtube.com/embed/eIOJcHyRPuY?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>');
INSERT INTO `swp_postmeta` VALUES (317,71,'_oembed_time_654dde42382de58dd28d62e78d8cbd48','1475071494');
INSERT INTO `swp_postmeta` VALUES (318,71,'_oembed_1174c5da895be733c89037b5cb197573','<iframe width=\"768\" height=\"576\" src=\"https://www.youtube.com/embed/eIOJcHyRPuY?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>');
INSERT INTO `swp_postmeta` VALUES (319,71,'_oembed_time_1174c5da895be733c89037b5cb197573','1475071498');
INSERT INTO `swp_postmeta` VALUES (320,71,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (321,71,'_edit_lock','1475085352:1');
INSERT INTO `swp_postmeta` VALUES (322,80,'_wp_attached_file','2016/09/hqdefault.jpg');
INSERT INTO `swp_postmeta` VALUES (323,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:21:\"2016/09/hqdefault.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hqdefault-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hqdefault-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"hqdefault-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"hqdefault-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (324,71,'_thumbnail_id','80');
INSERT INTO `swp_postmeta` VALUES (325,71,'_oembed_59df9a81ed4569cec225804675399797','{{unknown}}');
INSERT INTO `swp_postmeta` VALUES (326,71,'_oembed_59df9a81ed4569cec225804675399797','{{unknown}}');
INSERT INTO `swp_postmeta` VALUES (327,71,'_oembed_be9190275fc163d09c81d3773b11ffc5','<iframe width=\"768\" height=\"576\" src=\"https://www.youtube.com/embed/eIOJcHyRPuY?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>');
INSERT INTO `swp_postmeta` VALUES (328,71,'_oembed_time_be9190275fc163d09c81d3773b11ffc5','1475075778');
INSERT INTO `swp_postmeta` VALUES (329,7,'_edit_lock','1483226444:1');
INSERT INTO `swp_postmeta` VALUES (330,83,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (331,83,'_edit_lock','1483812488:1');
INSERT INTO `swp_postmeta` VALUES (332,84,'_wp_attached_file','2016/10/tequila1.jpg');
INSERT INTO `swp_postmeta` VALUES (333,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:750;s:6:\"height\";i:423;s:4:\"file\";s:20:\"2016/10/tequila1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tequila1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tequila1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tequila1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tequila1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tequila1-600x423.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (334,83,'_thumbnail_id','84');
INSERT INTO `swp_postmeta` VALUES (335,85,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (336,85,'_edit_lock','1483812446:1');
INSERT INTO `swp_postmeta` VALUES (337,86,'_wp_attached_file','2016/10/tequila-2.jpg');
INSERT INTO `swp_postmeta` VALUES (338,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:21:\"2016/10/tequila-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tequila-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tequila-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tequila-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tequila-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"tequila-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"tequila-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"tequila-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (339,87,'_wp_attached_file','2016/10/tequila-3.jpg');
INSERT INTO `swp_postmeta` VALUES (340,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:21:\"2016/10/tequila-3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tequila-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tequila-3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tequila-3-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tequila-3-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"tequila-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"tequila-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"tequila-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (341,85,'_thumbnail_id','86');
INSERT INTO `swp_postmeta` VALUES (342,88,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (343,88,'_edit_lock','1483509874:1');
INSERT INTO `swp_postmeta` VALUES (344,88,'_thumbnail_id','87');
INSERT INTO `swp_postmeta` VALUES (345,89,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (346,89,'_edit_lock','1476120905:1');
INSERT INTO `swp_postmeta` VALUES (347,90,'_wp_attached_file','2016/10/cocktail-1.jpg');
INSERT INTO `swp_postmeta` VALUES (348,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2016/10/cocktail-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cocktail-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cocktail-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cocktail-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"cocktail-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cocktail-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cocktail-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cocktail-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (349,91,'_wp_attached_file','2016/10/cocktail-2.jpg');
INSERT INTO `swp_postmeta` VALUES (350,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:22:\"2016/10/cocktail-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cocktail-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cocktail-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cocktail-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cocktail-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cocktail-2-600x427.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T4i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1370105647\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (351,92,'_wp_attached_file','2016/10/coktail-3.jpg');
INSERT INTO `swp_postmeta` VALUES (352,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:21:\"2016/10/coktail-3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"coktail-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"coktail-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"coktail-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"coktail-3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"coktail-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"coktail-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"coktail-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:18:\"Canon EOS REBEL T3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1369415480\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (353,89,'_thumbnail_id','90');
INSERT INTO `swp_postmeta` VALUES (354,93,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (355,93,'_edit_lock','1476120974:1');
INSERT INTO `swp_postmeta` VALUES (356,93,'_thumbnail_id','91');
INSERT INTO `swp_postmeta` VALUES (357,94,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (358,94,'_edit_lock','1483475064:1');
INSERT INTO `swp_postmeta` VALUES (359,94,'_thumbnail_id','130');
INSERT INTO `swp_postmeta` VALUES (360,1,'_edit_lock','1476121804:1');
INSERT INTO `swp_postmeta` VALUES (361,1,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (362,1,'_thumbnail_id','84');
INSERT INTO `swp_postmeta` VALUES (366,99,'_order_key','wc_order_57fbd8526ccab');
INSERT INTO `swp_postmeta` VALUES (367,99,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (368,99,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (369,99,'_customer_ip_address','187.234.145.235');
INSERT INTO `swp_postmeta` VALUES (370,99,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (371,99,'_customer_user','1');
INSERT INTO `swp_postmeta` VALUES (372,99,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (373,99,'_cart_hash','33beb4e30435c3b8bda8c7525bed2722');
INSERT INTO `swp_postmeta` VALUES (374,99,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (375,99,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (376,99,'_billing_first_name','p');
INSERT INTO `swp_postmeta` VALUES (377,99,'_billing_last_name','p');
INSERT INTO `swp_postmeta` VALUES (378,99,'_billing_company','p');
INSERT INTO `swp_postmeta` VALUES (379,99,'_billing_email','aleper02@gmail.com');
INSERT INTO `swp_postmeta` VALUES (380,99,'_billing_phone','1234567890');
INSERT INTO `swp_postmeta` VALUES (381,99,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (382,99,'_billing_address_1','hola');
INSERT INTO `swp_postmeta` VALUES (383,99,'_billing_address_2','alvaro');
INSERT INTO `swp_postmeta` VALUES (384,99,'_billing_city','san bartolo');
INSERT INTO `swp_postmeta` VALUES (385,99,'_billing_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (386,99,'_billing_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (387,99,'_shipping_first_name','p');
INSERT INTO `swp_postmeta` VALUES (388,99,'_shipping_last_name','p');
INSERT INTO `swp_postmeta` VALUES (389,99,'_shipping_company','p');
INSERT INTO `swp_postmeta` VALUES (390,99,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (391,99,'_shipping_address_1','hola');
INSERT INTO `swp_postmeta` VALUES (392,99,'_shipping_address_2','alvaro');
INSERT INTO `swp_postmeta` VALUES (393,99,'_shipping_city','san bartolo');
INSERT INTO `swp_postmeta` VALUES (394,99,'_shipping_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (395,99,'_shipping_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (396,99,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (397,99,'_payment_method_title','Tarjeta de crédito ó débito');
INSERT INTO `swp_postmeta` VALUES (398,99,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (399,99,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (400,99,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (401,99,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (402,99,'_order_total','7740.00');
INSERT INTO `swp_postmeta` VALUES (403,100,'_order_key','wc_order_57fbd88360b29');
INSERT INTO `swp_postmeta` VALUES (404,100,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (405,100,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (406,100,'_customer_ip_address','187.234.145.235');
INSERT INTO `swp_postmeta` VALUES (407,100,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (408,100,'_customer_user','1');
INSERT INTO `swp_postmeta` VALUES (409,100,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (410,100,'_cart_hash','569fc1dee111d11cdd74c25ad7176e88');
INSERT INTO `swp_postmeta` VALUES (411,100,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (412,100,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (413,100,'_billing_first_name','p');
INSERT INTO `swp_postmeta` VALUES (414,100,'_billing_last_name','p');
INSERT INTO `swp_postmeta` VALUES (415,100,'_billing_company','p');
INSERT INTO `swp_postmeta` VALUES (416,100,'_billing_email','aleper02@gmail.com');
INSERT INTO `swp_postmeta` VALUES (417,100,'_billing_phone','1234567890');
INSERT INTO `swp_postmeta` VALUES (418,100,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (419,100,'_billing_address_1','hola');
INSERT INTO `swp_postmeta` VALUES (420,100,'_billing_address_2','alvaro');
INSERT INTO `swp_postmeta` VALUES (421,100,'_billing_city','san bartolo');
INSERT INTO `swp_postmeta` VALUES (422,100,'_billing_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (423,100,'_billing_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (424,100,'_shipping_first_name','p');
INSERT INTO `swp_postmeta` VALUES (425,100,'_shipping_last_name','p');
INSERT INTO `swp_postmeta` VALUES (426,100,'_shipping_company','p');
INSERT INTO `swp_postmeta` VALUES (427,100,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (428,100,'_shipping_address_1','hola');
INSERT INTO `swp_postmeta` VALUES (429,100,'_shipping_address_2','alvaro');
INSERT INTO `swp_postmeta` VALUES (430,100,'_shipping_city','san bartolo');
INSERT INTO `swp_postmeta` VALUES (431,100,'_shipping_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (432,100,'_shipping_postcode','23123213');
INSERT INTO `swp_postmeta` VALUES (433,100,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (434,100,'_payment_method_title','Tarjeta de crédito ó débito');
INSERT INTO `swp_postmeta` VALUES (435,100,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (436,100,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (437,100,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (438,100,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (439,100,'_order_total','4740.00');
INSERT INTO `swp_postmeta` VALUES (440,100,'transaction_id','57fbd884dba34d2bcd010e89');
INSERT INTO `swp_postmeta` VALUES (441,100,'_download_permissions_granted','1');
INSERT INTO `swp_postmeta` VALUES (442,100,'_recorded_sales','yes');
INSERT INTO `swp_postmeta` VALUES (443,100,'_paid_date','2016-10-10 12:05:58');
INSERT INTO `swp_postmeta` VALUES (444,100,'_order_stock_reduced','1');
INSERT INTO `swp_postmeta` VALUES (445,101,'_order_key','wc_order_57fbdba75c4d2');
INSERT INTO `swp_postmeta` VALUES (446,101,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (447,101,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (448,101,'_customer_ip_address','187.234.145.235');
INSERT INTO `swp_postmeta` VALUES (449,101,'_customer_user_agent','Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_4 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G35 Safari/601.1');
INSERT INTO `swp_postmeta` VALUES (450,101,'_customer_user','0');
INSERT INTO `swp_postmeta` VALUES (451,101,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (452,101,'_cart_hash','98a9f760198935ab4bde93e624ad61b8');
INSERT INTO `swp_postmeta` VALUES (453,101,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (454,101,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (455,101,'_billing_first_name','J');
INSERT INTO `swp_postmeta` VALUES (456,101,'_billing_last_name','J');
INSERT INTO `swp_postmeta` VALUES (457,101,'_billing_company','J');
INSERT INTO `swp_postmeta` VALUES (458,101,'_billing_email','aleper02@gmail.com');
INSERT INTO `swp_postmeta` VALUES (459,101,'_billing_phone','52548238');
INSERT INTO `swp_postmeta` VALUES (460,101,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (461,101,'_billing_address_1','Lomas 21');
INSERT INTO `swp_postmeta` VALUES (462,101,'_billing_address_2','Las lomas');
INSERT INTO `swp_postmeta` VALUES (463,101,'_billing_city','Miguel hidalgo');
INSERT INTO `swp_postmeta` VALUES (464,101,'_billing_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (465,101,'_billing_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (466,101,'_shipping_first_name','J');
INSERT INTO `swp_postmeta` VALUES (467,101,'_shipping_last_name','J');
INSERT INTO `swp_postmeta` VALUES (468,101,'_shipping_company','J');
INSERT INTO `swp_postmeta` VALUES (469,101,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (470,101,'_shipping_address_1','Lomas 21');
INSERT INTO `swp_postmeta` VALUES (471,101,'_shipping_address_2','Las lomas');
INSERT INTO `swp_postmeta` VALUES (472,101,'_shipping_city','Miguel hidalgo');
INSERT INTO `swp_postmeta` VALUES (473,101,'_shipping_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (474,101,'_shipping_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (475,101,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (476,101,'_payment_method_title','Tarjeta de crédito ó débito');
INSERT INTO `swp_postmeta` VALUES (477,101,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (478,101,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (479,101,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (480,101,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (481,101,'_order_total','3240.00');
INSERT INTO `swp_postmeta` VALUES (482,101,'transaction_id','57fbdba8c835f0fae9011653');
INSERT INTO `swp_postmeta` VALUES (483,101,'_download_permissions_granted','1');
INSERT INTO `swp_postmeta` VALUES (484,101,'_recorded_sales','yes');
INSERT INTO `swp_postmeta` VALUES (485,101,'_paid_date','2016-10-10 12:19:26');
INSERT INTO `swp_postmeta` VALUES (486,101,'_order_stock_reduced','1');
INSERT INTO `swp_postmeta` VALUES (487,102,'_order_key','wc_order_57fd1670e837a');
INSERT INTO `swp_postmeta` VALUES (488,102,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (489,102,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (490,102,'_customer_ip_address','187.234.193.140');
INSERT INTO `swp_postmeta` VALUES (491,102,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (492,102,'_customer_user','0');
INSERT INTO `swp_postmeta` VALUES (493,102,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (494,102,'_cart_hash','106e40c0c701dc928b1117c01efa689e');
INSERT INTO `swp_postmeta` VALUES (495,102,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (496,102,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (497,102,'_billing_first_name','j');
INSERT INTO `swp_postmeta` VALUES (498,102,'_billing_last_name','j');
INSERT INTO `swp_postmeta` VALUES (499,102,'_billing_company','j');
INSERT INTO `swp_postmeta` VALUES (500,102,'_billing_email','f.sarinana92@gmail.com');
INSERT INTO `swp_postmeta` VALUES (501,102,'_billing_phone','65657485');
INSERT INTO `swp_postmeta` VALUES (502,102,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (503,102,'_billing_address_1','soiasdj');
INSERT INTO `swp_postmeta` VALUES (504,102,'_billing_address_2','asdsd');
INSERT INTO `swp_postmeta` VALUES (505,102,'_billing_city','asdas');
INSERT INTO `swp_postmeta` VALUES (506,102,'_billing_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (507,102,'_billing_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (508,102,'_shipping_first_name','j');
INSERT INTO `swp_postmeta` VALUES (509,102,'_shipping_last_name','j');
INSERT INTO `swp_postmeta` VALUES (510,102,'_shipping_company','j');
INSERT INTO `swp_postmeta` VALUES (511,102,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (512,102,'_shipping_address_1','soiasdj');
INSERT INTO `swp_postmeta` VALUES (513,102,'_shipping_address_2','asdsd');
INSERT INTO `swp_postmeta` VALUES (514,102,'_shipping_city','asdas');
INSERT INTO `swp_postmeta` VALUES (515,102,'_shipping_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (516,102,'_shipping_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (517,102,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (518,102,'_payment_method_title','Tarjeta de crédito ó débito');
INSERT INTO `swp_postmeta` VALUES (519,102,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (520,102,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (521,102,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (522,102,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (523,102,'_order_total','6240.00');
INSERT INTO `swp_postmeta` VALUES (524,103,'_order_key','wc_order_57fd16cd4579a');
INSERT INTO `swp_postmeta` VALUES (525,103,'_order_currency','MXN');
INSERT INTO `swp_postmeta` VALUES (526,103,'_prices_include_tax','no');
INSERT INTO `swp_postmeta` VALUES (527,103,'_customer_ip_address','187.234.193.140');
INSERT INTO `swp_postmeta` VALUES (528,103,'_customer_user_agent','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36');
INSERT INTO `swp_postmeta` VALUES (529,103,'_customer_user','0');
INSERT INTO `swp_postmeta` VALUES (530,103,'_created_via','checkout');
INSERT INTO `swp_postmeta` VALUES (531,103,'_cart_hash','98a9f760198935ab4bde93e624ad61b8');
INSERT INTO `swp_postmeta` VALUES (532,103,'_order_version','2.6.4');
INSERT INTO `swp_postmeta` VALUES (533,103,'_order_shipping','1500');
INSERT INTO `swp_postmeta` VALUES (534,103,'_billing_first_name','j');
INSERT INTO `swp_postmeta` VALUES (535,103,'_billing_last_name','j');
INSERT INTO `swp_postmeta` VALUES (536,103,'_billing_company','j');
INSERT INTO `swp_postmeta` VALUES (537,103,'_billing_email','f.sarinana92@gmail.com');
INSERT INTO `swp_postmeta` VALUES (538,103,'_billing_phone','5656473645');
INSERT INTO `swp_postmeta` VALUES (539,103,'_billing_country','MX');
INSERT INTO `swp_postmeta` VALUES (540,103,'_billing_address_1','sdvdf');
INSERT INTO `swp_postmeta` VALUES (541,103,'_billing_address_2','sdfvf');
INSERT INTO `swp_postmeta` VALUES (542,103,'_billing_city','sdff');
INSERT INTO `swp_postmeta` VALUES (543,103,'_billing_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (544,103,'_billing_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (545,103,'_shipping_first_name','j');
INSERT INTO `swp_postmeta` VALUES (546,103,'_shipping_last_name','j');
INSERT INTO `swp_postmeta` VALUES (547,103,'_shipping_company','j');
INSERT INTO `swp_postmeta` VALUES (548,103,'_shipping_country','MX');
INSERT INTO `swp_postmeta` VALUES (549,103,'_shipping_address_1','sdvdf');
INSERT INTO `swp_postmeta` VALUES (550,103,'_shipping_address_2','sdfvf');
INSERT INTO `swp_postmeta` VALUES (551,103,'_shipping_city','sdff');
INSERT INTO `swp_postmeta` VALUES (552,103,'_shipping_state','Distrito Federal');
INSERT INTO `swp_postmeta` VALUES (553,103,'_shipping_postcode','01800');
INSERT INTO `swp_postmeta` VALUES (554,103,'_payment_method','conektacard');
INSERT INTO `swp_postmeta` VALUES (555,103,'_payment_method_title','Tarjeta de crédito ó débito');
INSERT INTO `swp_postmeta` VALUES (556,103,'_cart_discount','0');
INSERT INTO `swp_postmeta` VALUES (557,103,'_cart_discount_tax','0');
INSERT INTO `swp_postmeta` VALUES (558,103,'_order_tax','0');
INSERT INTO `swp_postmeta` VALUES (559,103,'_order_shipping_tax','240');
INSERT INTO `swp_postmeta` VALUES (560,103,'_order_total','3240.00');
INSERT INTO `swp_postmeta` VALUES (561,103,'transaction_id','57fd16cedba34d42a10194bc');
INSERT INTO `swp_postmeta` VALUES (562,103,'_download_permissions_granted','1');
INSERT INTO `swp_postmeta` VALUES (563,103,'_recorded_sales','yes');
INSERT INTO `swp_postmeta` VALUES (564,103,'_paid_date','2016-10-11 10:44:03');
INSERT INTO `swp_postmeta` VALUES (565,103,'_order_stock_reduced','1');
INSERT INTO `swp_postmeta` VALUES (566,104,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (567,104,'_edit_lock','1476221729:1');
INSERT INTO `swp_postmeta` VALUES (568,104,'_thumbnail_id','57');
INSERT INTO `swp_postmeta` VALUES (569,9,'_edit_lock','1483226470:1');
INSERT INTO `swp_postmeta` VALUES (570,2,'_edit_lock','1483234585:1');
INSERT INTO `swp_postmeta` VALUES (571,6,'_edit_lock','1482470565:1');
INSERT INTO `swp_postmeta` VALUES (572,110,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (573,110,'_wp_page_template','page-templates/find.php');
INSERT INTO `swp_postmeta` VALUES (574,110,'_edit_lock','1482975645:1');
INSERT INTO `swp_postmeta` VALUES (575,113,'_menu_item_type','post_type');
INSERT INTO `swp_postmeta` VALUES (576,113,'_menu_item_menu_item_parent','0');
INSERT INTO `swp_postmeta` VALUES (577,113,'_menu_item_object_id','110');
INSERT INTO `swp_postmeta` VALUES (578,113,'_menu_item_object','page');
INSERT INTO `swp_postmeta` VALUES (579,113,'_menu_item_target','');
INSERT INTO `swp_postmeta` VALUES (580,113,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `swp_postmeta` VALUES (581,113,'_menu_item_xfn','');
INSERT INTO `swp_postmeta` VALUES (582,113,'_menu_item_url','');
INSERT INTO `swp_postmeta` VALUES (584,118,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (585,118,'_edit_lock','1483285073:1');
INSERT INTO `swp_postmeta` VALUES (586,118,'total_sales','aadasd');
INSERT INTO `swp_postmeta` VALUES (587,118,'_thumbnail_id','92');
INSERT INTO `swp_postmeta` VALUES (588,123,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (589,123,'_edit_lock','1483285108:1');
INSERT INTO `swp_postmeta` VALUES (590,123,'_thumbnail_id','91');
INSERT INTO `swp_postmeta` VALUES (591,124,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (592,124,'_edit_lock','1483285158:1');
INSERT INTO `swp_postmeta` VALUES (593,124,'_thumbnail_id','90');
INSERT INTO `swp_postmeta` VALUES (594,125,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (595,125,'_edit_lock','1483423909:1');
INSERT INTO `swp_postmeta` VALUES (596,125,'_thumbnail_id','86');
INSERT INTO `swp_postmeta` VALUES (610,88,'imagen','90');
INSERT INTO `swp_postmeta` VALUES (611,88,'_imagen','field_586b602fffacc');
INSERT INTO `swp_postmeta` VALUES (616,129,'_wp_attached_file','2016/10/Perfect-Serve-DJBlanco.png');
INSERT INTO `swp_postmeta` VALUES (617,129,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1538;s:6:\"height\";i:2377;s:4:\"file\";s:34:\"2016/10/Perfect-Serve-DJBlanco.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Perfect-Serve-DJBlanco-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Perfect-Serve-DJBlanco-194x300.png\";s:5:\"width\";i:194;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Perfect-Serve-DJBlanco-768x1187.png\";s:5:\"width\";i:768;s:6:\"height\";i:1187;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Perfect-Serve-DJBlanco-663x1024.png\";s:5:\"width\";i:663;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Perfect-Serve-DJBlanco-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Perfect-Serve-DJBlanco-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Perfect-Serve-DJBlanco-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (618,130,'_wp_attached_file','2016/10/a.png');
INSERT INTO `swp_postmeta` VALUES (619,130,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2016/10/a.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"a-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"a-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"a-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"a-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (620,134,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (621,134,'_edit_lock','1484168659:1');
INSERT INTO `swp_postmeta` VALUES (622,135,'_wp_attached_file','2017/01/1463497463924.cached.jpg');
INSERT INTO `swp_postmeta` VALUES (623,135,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:32:\"2017/01/1463497463924.cached.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"1463497463924.cached-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"1463497463924.cached-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `swp_postmeta` VALUES (624,134,'_thumbnail_id','135');
INSERT INTO `swp_postmeta` VALUES (628,69,'_config_errors','a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:88:\"http://contactform7.com/configuration-errors/#mail.sender:error_email_not_in_site_domain\";}}}}');
INSERT INTO `swp_postmeta` VALUES (629,148,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (630,148,'_edit_lock','1486033959:1');
INSERT INTO `swp_postmeta` VALUES (631,149,'_edit_last','1');
INSERT INTO `swp_postmeta` VALUES (632,149,'_edit_lock','1486034943:1');
INSERT INTO `swp_postmeta` VALUES (633,149,'_wp_page_template','page-templates/how-to-buy.php');
/*!40000 ALTER TABLE `swp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_posts`
--

DROP TABLE IF EXISTS `swp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_posts`
--

LOCK TABLES `swp_posts` WRITE;
/*!40000 ALTER TABLE `swp_posts` DISABLE KEYS */;
INSERT INTO `swp_posts` VALUES (1,1,'2016-08-29 19:17:14','2016-08-30 01:17:14','El <b>tequila</b> es un destilado originario del municipio de Tequila en el estado de Jalisco, México. Se elabora a partir de lafermentación y destilado al igual que el mezcal, jugo extraído del agave, en particular el llamado agave azul (<i>Agave tequilana</i>), con denominación de origen en cinco estados de la República Mexicana (Guanajuato, Michoacán, Nayarit,Tamaulipas y por supuesto en todo el estado de Jalisco ya que en los tres primeros solo se puede producir en algunos municipios, los fronterizos a Jalisco). Es quizás la bebida más conocida y representativa de México en el mundo.\r\n\r\nLa pureza de un tequila consiste en estar hecho completamente a partir del agave. Cuando un tequila no señala en su etiqueta que es 100% de agave es un tequila mixto. Esto significa que una proporción del azúcar obtenida del agave se mezcló con otros azúcares durante su elaboración. Durante muchos años existió en México una norma que permitía que los tequilas tuvieran un mínimo de 51% de agave y un máximo de 49% de otros azúcares. Desde hace algún tiempo, sin embargo, la norma exige que para ser llamado tequila debe ser al menos 60% agave. En los tequilas mixtos, el agave se mezcla con jarabe de maíz o de caña de azúcar.\r\n\r\nEl origen náhuatl <i>(téquitl</i>: trabajo u oficio; <i>tlan</i>: lugar) de la palabra habla de un lugar de trabajo y, a la vez, del trabajo específico de cortar plantas. La palabra tequio se refiere a la tarea de los hombres de campo.','Nota de Prueba','','publish','open','open','','hola-mundo','','','2016-10-10 11:51:20','2016-10-10 17:51:20','',0,'http://localhost:8888/santo/blog/?p=1',0,'post','',1);
INSERT INTO `swp_posts` VALUES (2,1,'2016-08-29 19:17:14','2016-08-30 01:17:14','Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo \"cosas\" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost:8888/santo/blog/wp-admin/\">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!','Página de ejemplo','','publish','closed','open','','pagina-ejemplo','','','2016-08-29 19:17:14','2016-08-30 01:17:14','',0,'http://localhost:8888/santo/blog/?page_id=2',0,'page','',0);
INSERT INTO `swp_posts` VALUES (6,1,'2016-08-29 20:20:39','2016-08-30 02:20:39','','Shop','','publish','closed','closed','','shop','','','2016-08-29 20:20:39','2016-08-30 02:20:39','',0,'http://localhost:8888/santo/blog/shop/',0,'page','',0);
INSERT INTO `swp_posts` VALUES (7,1,'2016-08-29 20:20:39','2016-08-30 02:20:39','[woocommerce_cart]','Cart','','publish','closed','closed','','cart','','','2016-08-29 20:20:39','2016-08-30 02:20:39','',0,'http://localhost:8888/santo/blog/cart/',0,'page','',0);
INSERT INTO `swp_posts` VALUES (8,1,'2016-08-29 20:20:39','2016-08-30 02:20:39','[woocommerce_checkout]\r\n<p class=\"p1\"><span class=\"s1\">Compra realizada a través de <a href=\"http://conekta.io/\" target=\"_blank\"><span class=\"s2\">conekta.io</span></a> pago 100% seguro </span></p>','Checkout','','publish','closed','closed','','checkout','','','2016-10-03 10:49:15','2016-10-03 16:49:15','',0,'http://localhost:8888/santo/blog/checkout/',0,'page','',0);
INSERT INTO `swp_posts` VALUES (9,1,'2016-08-29 20:20:39','2016-08-30 02:20:39','[woocommerce_my_account]','My Account','','publish','closed','closed','','my-account','','','2016-08-29 20:20:39','2016-08-30 02:20:39','',0,'http://localhost:8888/santo/blog/my-account/',0,'page','',0);
INSERT INTO `swp_posts` VALUES (10,1,'2016-08-29 20:25:47','2016-08-30 02:25:47','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Botella 750 ml','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','publish','open','closed','','botella-750-ml','','','2016-09-28 06:17:32','2016-09-28 12:17:32','',0,'http://localhost:8888/santo/blog/?post_type=product&#038;p=10',0,'product','',0);
INSERT INTO `swp_posts` VALUES (12,1,'2016-08-29 20:40:26','2016-08-30 02:40:26','','Order &ndash; agosto 29, 2016 @ 08:40 PM','','wc-completed','open','closed','order_57c4f1ffc8cf3','order-aug-30-2016-0239-am','','','2016-08-29 20:51:57','2016-08-30 02:51:57','',0,'http://localhost:8888/santo/blog/?post_type=shop_order&#038;p=12',0,'shop_order','',4);
INSERT INTO `swp_posts` VALUES (16,1,'2016-08-30 07:59:08','2016-08-30 13:59:08','leave empty','Home','','publish','closed','closed','','home','','','2016-08-30 08:39:46','2016-08-30 14:39:46','',0,'http://localhost:8888/santo/blog/?page_id=16',0,'page','',0);
INSERT INTO `swp_posts` VALUES (17,1,'2016-08-30 07:59:08','2016-08-30 13:59:08','leave empty','Home','','inherit','closed','closed','','16-revision-v1','','','2016-08-30 07:59:08','2016-08-30 13:59:08','',16,'http://localhost:8888/santo/blog/2016/08/30/16-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (18,1,'2016-08-30 08:03:27','2016-08-30 14:03:27','','HOME','','publish','closed','closed','','18','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=18',1,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (22,1,'2016-08-30 08:03:38','2016-08-30 14:03:38','','Bottle Tour','','publish','closed','closed','','bottle-tour','','','2016-12-31 17:24:48','2016-12-31 23:24:48','',0,'http://localhost:8888/santo/blog/?page_id=22',0,'page','',0);
INSERT INTO `swp_posts` VALUES (23,1,'2016-08-30 08:03:38','2016-08-30 14:03:38','','About','','inherit','closed','closed','','22-revision-v1','','','2016-08-30 08:03:38','2016-08-30 14:03:38','',22,'http://localhost:8888/santo/blog/2016/08/30/22-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (24,1,'2016-08-30 08:03:49','2016-08-30 14:03:49','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','About','','inherit','closed','closed','','22-revision-v1','','','2016-08-30 08:03:49','2016-08-30 14:03:49','',22,'http://localhost:8888/santo/blog/2016/08/30/22-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (25,1,'2016-08-30 08:04:24','2016-08-30 14:04:24','','BOTTLE TOUR','','publish','closed','closed','','about','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=25',4,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (27,1,'2016-08-30 08:05:42','2016-08-30 14:05:42','[contact-form-7 id=\"69\" title=\"Contact form 1\"]','Contacto','','publish','closed','closed','','contact','','','2017-01-17 22:10:20','2017-01-18 04:10:20','',0,'http://localhost:8888/santo/blog/?page_id=27',0,'page','',0);
INSERT INTO `swp_posts` VALUES (28,1,'2016-08-30 08:05:42','2016-08-30 14:05:42','','CONTACT','','inherit','closed','closed','','27-revision-v1','','','2016-08-30 08:05:42','2016-08-30 14:05:42','',27,'http://localhost:8888/santo/blog/2016/08/30/27-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (29,1,'2016-08-30 08:07:15','2016-08-30 14:07:15','','CONTACT','','publish','closed','closed','','29','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=29',7,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (31,1,'2016-08-30 08:40:17','2016-08-30 14:40:17','leave empty','Cocktails','','publish','closed','closed','','cocktails','','','2016-08-30 08:40:17','2016-08-30 14:40:17','',0,'http://localhost:8888/santo/blog/?page_id=31',0,'page','',0);
INSERT INTO `swp_posts` VALUES (32,1,'2016-08-30 08:40:17','2016-08-30 14:40:17','leave empty','Cocktails','','inherit','closed','closed','','31-revision-v1','','','2016-08-30 08:40:17','2016-08-30 14:40:17','',31,'http://localhost:8888/santo/blog/2016/08/30/31-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (33,1,'2016-08-30 08:40:40','2016-08-30 14:40:40','[gallery grids=\"News\" image_size=\"large\" ids=\"135,130,129\"]\r\n\r\n&nbsp;\r\n\r\n[wp-tiles]\r\n\r\nLeave empty','Experience','','publish','closed','closed','','experience','','','2017-01-18 21:12:21','2017-01-19 03:12:21','',0,'http://localhost:8888/santo/blog/?page_id=33',0,'page','',0);
INSERT INTO `swp_posts` VALUES (34,1,'2016-08-30 08:40:40','2016-08-30 14:40:40','Leave empty','Gallery','','inherit','closed','closed','','33-revision-v1','','','2016-08-30 08:40:40','2016-08-30 14:40:40','',33,'http://localhost:8888/santo/blog/2016/08/30/33-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (35,1,'2016-08-30 08:41:06','2016-08-30 14:41:06','','EXPERIENCE','','publish','closed','closed','','gallery-2','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=35',3,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (36,1,'2016-08-30 08:41:06','2016-08-30 14:41:06','','COCKTAILS / CREATIONS','','publish','closed','closed','','36','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=36',5,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (37,1,'2016-08-30 09:06:42','2016-08-30 15:06:42','<ul>\r\n 	<li>1 1/2 ounces blanco tequila (100% agave)</li>\r\n 	<li>1 teaspoon Mexican hot sauce such as Cholula</li>\r\n 	<li>1 ounce Clamato</li>\r\n 	<li>1 ounce freshly squeezed lemon juice</li>\r\n</ul>','DEVIL KISS','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat','publish','closed','closed','','devil-kiss','','','2016-08-30 09:06:42','2016-08-30 15:06:42','',0,'http://localhost:8888/santo/blog/?post_type=cocktails_sv&#038;p=37',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (38,1,'2016-08-30 09:06:32','2016-08-30 15:06:32','','20150323-cocktails-vicky-wasik-negroni','','inherit','open','closed','','20150323-cocktails-vicky-wasik-negroni','','','2016-08-30 09:06:32','2016-08-30 15:06:32','',37,'http://localhost:8888/santo/blog/wp-content/uploads/2016/08/20150323-cocktails-vicky-wasik-negroni.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (39,1,'2016-08-30 09:06:34','2016-08-30 15:06:34','','cocktail_bar','','inherit','open','closed','','cocktail_bar','','','2016-08-30 09:06:34','2016-08-30 15:06:34','',37,'http://localhost:8888/santo/blog/wp-content/uploads/2016/08/cocktail_bar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (40,1,'2016-08-30 09:06:36','2016-08-30 15:06:36','','FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3','','inherit','open','closed','','fn_jesus-nunez-thankful-thymes-cocktail_s4x3','','','2016-08-30 09:06:36','2016-08-30 15:06:36','',37,'http://localhost:8888/santo/blog/wp-content/uploads/2016/08/FN_Jesus-Nunez-Thankful-Thymes-Cocktail_s4x3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (41,1,'2016-08-30 09:06:37','2016-08-30 15:06:37','','kale-cocktail.jpg.653x0_q80_crop-smart','','inherit','open','closed','','kale-cocktail-jpg-653x0_q80_crop-smart','','','2016-08-30 09:06:37','2016-08-30 15:06:37','',37,'http://localhost:8888/santo/blog/wp-content/uploads/2016/08/kale-cocktail.jpg.653x0_q80_crop-smart.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (42,1,'2016-08-30 09:26:05','2016-08-30 15:26:05','<ul>\r\n 	<li >1 1/2 ounces blanco tequila (100% agave)</li>\r\n 	<li >1 teaspoon Mexican hot sauce such as Cholula</li>\r\n 	<li >1 ounce Clamato</li>\r\n 	<li >1 ounce freshly squeezed lemon juice</li>\r\n</ul>','NICE AND SWEET','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat','publish','closed','closed','','nice-and-sweet','','','2016-08-30 09:26:05','2016-08-30 15:26:05','',0,'http://localhost:8888/santo/blog/?post_type=cocktails_sv&#038;p=42',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (43,1,'2016-08-30 09:26:41','2016-08-30 15:26:41','<ul>\r\n 	<li >1 1/2 ounces blanco tequila (100% agave)</li>\r\n 	<li >1 teaspoon Mexican hot sauce such as Cholula</li>\r\n 	<li >1 ounce Clamato</li>\r\n 	<li >1 ounce freshly squeezed lemon juice</li>\r\n</ul>','MIND BLOWER','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat','publish','closed','closed','','mind-blower','','','2016-08-30 09:26:41','2016-08-30 15:26:41','',0,'http://localhost:8888/santo/blog/?post_type=cocktails_sv&#038;p=43',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (44,1,'2016-08-30 09:27:12','2016-08-30 15:27:12','<ul>\r\n 	<li >1 1/2 ounces blanco tequila (100% agave)</li>\r\n 	<li >1 teaspoon Mexican hot sauce such as Cholula</li>\r\n 	<li >1 ounce Clamato</li>\r\n 	<li >1 ounce freshly squeezed lemon juice</li>\r\n</ul>','PARADISE','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat','publish','closed','closed','','paradise','','','2016-08-30 09:27:12','2016-08-30 15:27:12','',0,'http://localhost:8888/santo/blog/?post_type=cocktails_sv&#038;p=44',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (45,1,'2016-08-30 11:40:01','2016-08-30 17:40:01','[add_to_cart id=\"10\"]','Shop Online','','publish','closed','closed','','shop-online','','','2016-12-31 17:02:55','2016-12-31 23:02:55','',0,'http://localhost:8888/santo/blog/?page_id=45',0,'page','',0);
INSERT INTO `swp_posts` VALUES (46,1,'2016-08-30 11:40:01','2016-08-30 17:40:01','[add_to_cart id=\"99\"]','PRODUCT','','inherit','closed','closed','','45-revision-v1','','','2016-08-30 11:40:01','2016-08-30 17:40:01','',45,'http://localhost:8888/santo/blog/2016/08/30/45-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (47,1,'2016-08-30 11:40:13','2016-08-30 17:40:13','[add_to_cart id=\"10\"]','PRODUCT','','inherit','closed','closed','','45-revision-v1','','','2016-08-30 11:40:13','2016-08-30 17:40:13','',45,'http://localhost:8888/santo/blog/2016/08/30/45-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (48,1,'2016-08-30 11:52:06','2016-08-30 17:52:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pharetra vitae neque ac tincidunt. Nunc egestas varius tempus. Maecenas non ante felis. Aliquam in nulla sem. Praesent a blandit nisl. Ut a dolor et dolor interdum imperdiet et vel ipsum. Pellentesque vitae felis ac sem malesuada elementum.\r\n\r\nPraesent accumsan metus non accumsan sagittis. Integer tincidunt arcu pellentesque ultricies aliquet. Nulla sit amet suscipit sem, ac auctor eros. In at leo pharetra, consequat tellus gravida, egestas odio. Maecenas posuere nisi ligula, id dictum sapien semper id. Sed convallis, turpis ut imperdiet hendrerit, turpis turpis pellentesque est, vitae interdum nunc est in nibh. Vestibulum nisl neque, volutpat sed neque et, finibus gravida turpis. Duis nec commodo justo. Donec id volutpat augue. Sed ut dignissim erat. Maecenas sed tellus ut mi eleifend dapibus. Quisque blandit lacus et tortor eleifend elementum. Sed volutpat est nec elit eleifend consequat. Maecenas nec lobortis sapien. Phasellus tincidunt lorem id diam tempus pellentesque.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum libero ipsum, quis suscipit est sagittis quis. Vivamus id nulla metus. Quisque vitae erat ac risus aliquam imperdiet ut id velit. Pellentesque scelerisque mattis est nec molestie. Suspendisse pretium sollicitudin ante, sed sodales nibh viverra vel. Praesent a nulla porttitor, egestas quam vitae, venenatis elit.\r\n\r\nDuis scelerisque, massa vitae venenatis tincidunt, libero ipsum egestas odio, ut interdum mi mi vitae lectus. Nam a efficitur mi. Proin quis hendrerit mauris, quis pharetra dui. Morbi euismod, nisl sed sagittis semper, neque magna tristique nisi, in maximus ligula ante sed enim. In eget eleifend ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin placerat lacinia molestie.\r\n\r\nNulla vel nisl tristique lorem viverra fermentum. Vestibulum felis purus, tincidunt eu velit eu, vehicula eleifend tortor. Maecenas non lobortis ligula. Curabitur id ante sagittis, cursus risus ut, mattis magna. Curabitur id convallis magna. Aliquam id finibus neque. Sed vulputate, dui vel aliquam venenatis, mauris eros blandit purus, vel lobortis turpis sapien sit amet diam. Duis in luctus mauris. Phasellus vel hendrerit sem, a laoreet est. Mauris vehicula neque ut ipsum ullamcorper molestie. Nullam orci ex, dapibus et dolor sit amet, molestie elementum nibh. Nullam sit amet metus vehicula, pulvinar nulla sed, vulputate orci.\r\n\r\n','Lorem ipsum dolor sit amet, consectetur','','publish','open','open','','lorem-ipsum-dolor-sit-amet-consectetur','','','2016-08-30 11:52:22','2016-08-30 17:52:22','',0,'http://localhost:8888/santo/blog/?p=48',0,'post','',0);
INSERT INTO `swp_posts` VALUES (49,1,'2016-08-30 11:52:06','2016-08-30 17:52:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pharetra vitae neque ac tincidunt. Nunc egestas varius tempus. Maecenas non ante felis. Aliquam in nulla sem. Praesent a blandit nisl. Ut a dolor et dolor interdum imperdiet et vel ipsum. Pellentesque vitae felis ac sem malesuada elementum.\r\n\r\nPraesent accumsan metus non accumsan sagittis. Integer tincidunt arcu pellentesque ultricies aliquet. Nulla sit amet suscipit sem, ac auctor eros. In at leo pharetra, consequat tellus gravida, egestas odio. Maecenas posuere nisi ligula, id dictum sapien semper id. Sed convallis, turpis ut imperdiet hendrerit, turpis turpis pellentesque est, vitae interdum nunc est in nibh. Vestibulum nisl neque, volutpat sed neque et, finibus gravida turpis. Duis nec commodo justo. Donec id volutpat augue. Sed ut dignissim erat. Maecenas sed tellus ut mi eleifend dapibus. Quisque blandit lacus et tortor eleifend elementum. Sed volutpat est nec elit eleifend consequat. Maecenas nec lobortis sapien. Phasellus tincidunt lorem id diam tempus pellentesque.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum libero ipsum, quis suscipit est sagittis quis. Vivamus id nulla metus. Quisque vitae erat ac risus aliquam imperdiet ut id velit. Pellentesque scelerisque mattis est nec molestie. Suspendisse pretium sollicitudin ante, sed sodales nibh viverra vel. Praesent a nulla porttitor, egestas quam vitae, venenatis elit.\r\n\r\nDuis scelerisque, massa vitae venenatis tincidunt, libero ipsum egestas odio, ut interdum mi mi vitae lectus. Nam a efficitur mi. Proin quis hendrerit mauris, quis pharetra dui. Morbi euismod, nisl sed sagittis semper, neque magna tristique nisi, in maximus ligula ante sed enim. In eget eleifend ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin placerat lacinia molestie.\r\n\r\nNulla vel nisl tristique lorem viverra fermentum. Vestibulum felis purus, tincidunt eu velit eu, vehicula eleifend tortor. Maecenas non lobortis ligula. Curabitur id ante sagittis, cursus risus ut, mattis magna. Curabitur id convallis magna. Aliquam id finibus neque. Sed vulputate, dui vel aliquam venenatis, mauris eros blandit purus, vel lobortis turpis sapien sit amet diam. Duis in luctus mauris. Phasellus vel hendrerit sem, a laoreet est. Mauris vehicula neque ut ipsum ullamcorper molestie. Nullam orci ex, dapibus et dolor sit amet, molestie elementum nibh. Nullam sit amet metus vehicula, pulvinar nulla sed, vulputate orci.\r\n\r\n','Lorem ipsum dolor sit amet, consectetur','','inherit','closed','closed','','48-revision-v1','','','2016-08-30 11:52:06','2016-08-30 17:52:06','',48,'http://localhost:8888/santo/blog/2016/08/30/48-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (50,1,'2016-08-30 11:54:02','2016-08-30 17:54:02','','SHOP ONLINE','','publish','closed','closed','','products-shop-2','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://localhost:8888/santo/blog/?p=50',2,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (52,1,'2016-08-30 15:33:33','2016-08-30 21:33:33','','TOUR','','publish','closed','closed','','tour','','','2016-08-30 15:33:33','2016-08-30 21:33:33','',0,'http://localhost:8888/santo/blog/?page_id=52',0,'page','',0);
INSERT INTO `swp_posts` VALUES (53,1,'2016-08-30 15:33:33','2016-08-30 21:33:33','','TOUR','','inherit','closed','closed','','52-revision-v1','','','2016-08-30 15:33:33','2016-08-30 21:33:33','',52,'http://localhost:8888/santo/blog/2016/08/30/52-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (55,1,'2016-09-18 19:14:26','2016-09-19 01:14:26','[gallery ids=\"92,130,129\"]','One great night to enjoy','','publish','closed','closed','','one-great-night-to-enjoy','','','2017-01-07 12:37:06','2017-01-07 18:37:06','',0,'http://localhost:8888/santo/blog/?post_type=galleries_sv&#038;p=55',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (56,1,'2016-09-18 19:13:18','2016-09-19 01:13:18','','ReposadoOldFashioned-515045391','Highball on table','inherit','open','closed','','reposadooldfashioned-515045391','','','2016-09-18 19:13:18','2016-09-19 01:13:18','',55,'http://localhost:8888/santo/blog/wp-content/uploads/2016/09/ReposadoOldFashioned-515045391.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (57,1,'2016-09-18 19:13:21','2016-09-19 01:13:21','','bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image.960.540.high','','inherit','open','closed','','bellagio-nightlife-the-bank-lifestyle-bw-crowd-tif-image-960-540-high','','','2016-09-18 19:13:21','2016-09-19 01:13:21','',55,'http://localhost:8888/santo/blog/wp-content/uploads/2016/09/bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (58,1,'2016-09-18 19:13:42','2016-09-19 01:13:42','','IMG_9677','','inherit','open','closed','','img_9677','','','2016-09-18 19:13:42','2016-09-19 01:13:42','',55,'http://localhost:8888/santo/blog/wp-content/uploads/2016/09/IMG_9677.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (59,1,'2016-09-18 19:15:04','2016-09-19 01:15:04','[gallery ids=\"130,129,92\"]','The night you will always remeber','','publish','closed','closed','','the-night-you-will-always-remeber','','','2017-01-07 12:36:06','2017-01-07 18:36:06','',0,'http://localhost:8888/santo/blog/?post_type=galleries_sv&#038;p=59',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (60,1,'2016-09-18 19:15:23','2016-09-19 01:15:23','[gallery ids=\"130,129,92\"]','A great drink for a great moment','','publish','closed','closed','','a-great-drink-for-a-great-moment','','','2017-01-07 12:35:26','2017-01-07 18:35:26','',0,'http://localhost:8888/santo/blog/?post_type=galleries_sv&#038;p=60',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (63,1,'2016-09-28 05:44:45','2016-09-28 11:44:45','','Checkout','','inherit','closed','closed','','8-revision-v1','','','2016-09-28 05:44:45','2016-09-28 11:44:45','',8,'http://localhost:8888/santo/blog/2016/09/28/8-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (64,1,'2016-09-28 05:44:53','2016-09-28 11:44:53','[woocommerce_checkout]','Checkout','','inherit','closed','closed','','8-revision-v1','','','2016-09-28 05:44:53','2016-09-28 11:44:53','',8,'http://localhost:8888/santo/blog/2016/09/28/8-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (65,1,'2016-09-28 06:15:24','2016-09-28 12:15:24','[woocommerce_one_page_checkout product_ids=\"10\"]\r\n','Checkout','','inherit','closed','closed','','8-revision-v1','','','2016-09-28 06:15:24','2016-09-28 12:15:24','',8,'http://localhost:8888/santo/blog/2016/09/28/8-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (66,1,'2016-09-28 06:16:37','2016-09-28 12:16:37','[woocommerce_checkout]','Checkout','','inherit','closed','closed','','8-revision-v1','','','2016-09-28 06:16:37','2016-09-28 12:16:37','',8,'http://localhost:8888/santo/blog/2016/09/28/8-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (67,1,'2016-09-28 08:35:29','2016-09-28 14:35:29','','Order &ndash; septiembre 28, 2016 @ 08:35 AM','','wc-cancelled','closed','closed','order_57ebb817156f2','pedido-sep-28-2016-1231-pm','','','2016-09-28 08:35:29','2016-09-28 14:35:29','',0,'http://localhost:8888/santo/blog/?post_type=shop_order&#038;p=67',0,'shop_order','',4);
INSERT INTO `swp_posts` VALUES (69,1,'2016-09-28 07:55:15','2016-09-28 13:55:15','<label>Nombre*\r\n    [text* your-name] </label>\r\n\r\n<label> Email*\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text your-subject] </label>\r\n\r\n<label> Mensaje\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\nSantoVeneno \"[your-subject]\"\n[your-name] <julzebadua@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on SantoVeneno (http://localhost:8888/santo/blog)\njulzebadua@gmail.com\nReply-To: [your-email]\n\n\n\n\nSantoVeneno \"[your-subject]\"\nSantoVeneno <julzebadua@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on SantoVeneno (http://localhost:8888/santo/blog)\n[your-email]\nReply-To: julzebadua@gmail.com\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nSe ha producido un error al intentar enviar el mensaje. Por favor, inténtelo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e intenta de nuevo.\nSe ha producido un error al intentar enviar el mensaje. Por favor, inténtelo de nuevo más tarde.\nDebe aceptar los términos y condiciones antes de enviar el mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecta.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más reciente permitido.\nSe ha producido un error desconocido de subir el archivo.\nNo se le permite subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error al subir el archivo.\nEl formato de número no es válido.\nEl número es más pequeño que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta a la prueba es incorrecta.\nYour entered code is incorrect.\nLa dirección de correo electrónico introducido no es válido.\nLa URL no es válida.\nEl número de teléfono no es válido.','Contact Form','','publish','closed','closed','','contact-form-1','','','2017-01-24 08:32:11','2017-01-24 14:32:11','',0,'http://localhost:8888/santo/blog/?post_type=wpcf7_contact_form&#038;p=69',0,'wpcf7_contact_form','',0);
INSERT INTO `swp_posts` VALUES (70,1,'2016-09-28 07:55:46','2016-09-28 13:55:46','[contact-form-7 id=\"69\" title=\"Contact form 1\"]','CONTACT','','inherit','closed','closed','','27-revision-v1','','','2016-09-28 07:55:46','2016-09-28 13:55:46','',27,'http://localhost:8888/santo/blog/2016/09/28/27-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (71,1,'2016-09-28 08:07:23','2016-09-28 14:07:23','[embed]https://www.youtube.com/watch?v=eIOJcHyRPuY&autoplay=1&showinfo=0&controls=0[/embed]','Ximena Sariñana - Mediocre','','publish','closed','closed','','ximena-sarinana-mediocre','','','2016-09-28 09:16:16','2016-09-28 15:16:16','',0,'http://localhost:8888/santo/blog/?post_type=galleries_sv&#038;p=71',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (80,1,'2016-09-28 08:12:29','2016-09-28 14:12:29','','hqdefault','','inherit','open','closed','','hqdefault','','','2016-09-28 08:12:29','2016-09-28 14:12:29','',71,'http://localhost:8888/santo/blog/wp-content/uploads/2016/09/hqdefault.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (81,1,'2016-10-03 10:49:15','2016-10-03 16:49:15','[woocommerce_checkout]\r\n<p class=\"p1\"><span class=\"s1\">Compra realizada a través de <a href=\"http://conekta.io/\" target=\"_blank\"><span class=\"s2\">conekta.io</span></a> pago 100% seguro </span></p>','Checkout','','inherit','closed','closed','','8-revision-v1','','','2016-10-03 10:49:15','2016-10-03 16:49:15','',8,'http://localhost:8888/santo/blog/2016/10/03/8-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (83,1,'2016-10-10 11:24:10','2016-10-10 17:24:10','[gallery ids=\"130,129,92\"]','Tequila 1','','publish','closed','closed','','tequila-1','','','2017-01-07 12:10:18','2017-01-07 18:10:18','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=galleries_sv&#038;p=83',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (84,1,'2016-10-10 11:22:38','2016-10-10 17:22:38','','tequila1','','inherit','open','closed','','tequila1','','','2016-10-10 11:22:38','2016-10-10 17:22:38','',83,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/tequila1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (85,1,'2016-10-10 11:28:48','2016-10-10 17:28:48','[gallery ids=\"130,129,92\"]','Tequila 2','','publish','closed','closed','','tequila-2','','','2017-01-07 12:09:40','2017-01-07 18:09:40','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=galleries_sv&#038;p=85',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (86,1,'2016-10-10 11:28:14','2016-10-10 17:28:14','','tequila-2','','inherit','open','closed','','tequila-2','','','2016-10-10 11:28:14','2016-10-10 17:28:14','',85,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/tequila-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (87,1,'2016-10-10 11:28:24','2016-10-10 17:28:24','','tequila-3','','inherit','open','closed','','tequila-3','','','2016-10-10 11:28:24','2016-10-10 17:28:24','',85,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/tequila-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (88,1,'2016-10-10 11:30:23','2016-10-10 17:30:23','<strong>Titulo </strong>\r\n\r\ntexto uno de prueba\r\n\r\n&nbsp;\r\n\r\n[gallery ids=\"92,91,90\"]','Tequila 3','','publish','closed','closed','','tequila-3','','','2017-01-03 23:57:30','2017-01-04 05:57:30','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=galleries_sv&#038;p=88',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (89,1,'2016-10-10 11:37:09','2016-10-10 17:37:09','','coktail 1','','publish','closed','closed','','coktail-1','','','2016-10-10 11:37:09','2016-10-10 17:37:09','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=cocktails_sv&#038;p=89',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (90,1,'2016-10-10 11:35:12','2016-10-10 17:35:12','','cocktail-1','','inherit','open','closed','','cocktail-1','','','2016-10-10 11:35:12','2016-10-10 17:35:12','',89,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/cocktail-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (91,1,'2016-10-10 11:35:18','2016-10-10 17:35:18','','cocktail-2','','inherit','open','closed','','cocktail-2','','','2016-10-10 11:35:18','2016-10-10 17:35:18','',89,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/cocktail-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (92,1,'2016-10-10 11:35:21','2016-10-10 17:35:21','','coktail-3','','inherit','open','closed','','coktail-3','','','2016-10-10 11:35:21','2016-10-10 17:35:21','',89,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/coktail-3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (93,1,'2016-10-10 11:37:56','2016-10-10 17:37:56','','Cocktail 2','','publish','closed','closed','','cocktail-2','','','2016-10-10 11:37:56','2016-10-10 17:37:56','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=cocktails_sv&#038;p=93',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (94,1,'2016-10-10 11:38:55','2016-10-10 17:38:55','Versátil, puede disfrutarse derecho, en las rocas o mezclado','cocktail 3','','publish','closed','closed','','cocktail-3','','','2017-01-03 14:24:23','2017-01-03 20:24:23','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=cocktails_sv&#038;p=94',0,'cocktails_sv','',0);
INSERT INTO `swp_posts` VALUES (96,1,'2016-10-10 11:49:48','2016-10-10 17:49:48','El <b>tequila</b> es un <a title=\"Destilación\" href=\"https://es.wikipedia.org/wiki/Destilaci%C3%B3n\">destilado</a> originario del municipio de <a title=\"Tequila (Jalisco)\" href=\"https://es.wikipedia.org/wiki/Tequila_(Jalisco)\">Tequila</a> en el estado de <a title=\"Jalisco\" href=\"https://es.wikipedia.org/wiki/Jalisco\">Jalisco</a>, <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a>. Se elabora a partir de la<a title=\"Fermentación\" href=\"https://es.wikipedia.org/wiki/Fermentaci%C3%B3n\">fermentación</a> y <a title=\"Destilación\" href=\"https://es.wikipedia.org/wiki/Destilaci%C3%B3n\">destilado</a> al igual que el <a title=\"Mezcal\" href=\"https://es.wikipedia.org/wiki/Mezcal\">mezcal</a>, jugo extraído del <a class=\"mw-redirect\" title=\"Agave (planta)\" href=\"https://es.wikipedia.org/wiki/Agave_(planta)\">agave</a>, en particular el llamado agave azul (<i><a title=\"Agave tequilana\" href=\"https://es.wikipedia.org/wiki/Agave_tequilana\">Agave tequilana</a></i>), con denominación de origen en cinco estados de la República Mexicana (<a title=\"Guanajuato\" href=\"https://es.wikipedia.org/wiki/Guanajuato\">Guanajuato</a>, <a title=\"Michoacán\" href=\"https://es.wikipedia.org/wiki/Michoac%C3%A1n\">Michoacán</a>, <a title=\"Nayarit\" href=\"https://es.wikipedia.org/wiki/Nayarit\">Nayarit</a>,<a title=\"Tamaulipas\" href=\"https://es.wikipedia.org/wiki/Tamaulipas\">Tamaulipas</a> y por supuesto en todo el estado de <a title=\"Jalisco\" href=\"https://es.wikipedia.org/wiki/Jalisco\">Jalisco</a> ya que en los tres primeros solo se puede producir en algunos municipios, los fronterizos a Jalisco). Es quizás la bebida más conocida y representativa de México en el mundo.\n\nLa pureza de un tequila consiste en estar hecho completamente a partir del agave. Cuando un tequila no señala en su etiqueta que es 100% de agave es un tequila mixto. Esto significa que una proporción del azúcar obtenida del agave se mezcló con otros azúcares durante su elaboración. Durante muchos años existió en México una norma que permitía que los tequilas tuvieran un mínimo de 51% de agave y un máximo de 49% de otros azúcares. Desde hace algún tiempo, sin embargo, la norma exige que para ser llamado tequila debe ser al menos 60% agave. En los tequilas mixtos, el agave se mezcla con jarabe de maíz o de caña de azúcar.\n\nEl nombre <i>tequila</i> es una <a title=\"Denominación de origen\" href=\"https://es.wikipedia.org/wiki/Denominaci%C3%B3n_de_origen\">denominación de origen</a> controlado, reconocido internacionalmente, y que designa el destilado de agave elaborado en regiones determinadas de <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a>, en las inmediaciones de las localidades de <a title=\"Tequila (Jalisco)\" href=\"https://es.wikipedia.org/wiki/Tequila_(Jalisco)\">Tequila</a> y <a title=\"Amatitán\" href=\"https://es.wikipedia.org/wiki/Amatit%C3%A1n\">Amatitán</a>, así como en <a title=\"Arandas (Jalisco)\" href=\"https://es.wikipedia.org/wiki/Arandas_(Jalisco)\">Arandas</a> y <a title=\"Atotonilco el Alto\" href=\"https://es.wikipedia.org/wiki/Atotonilco_el_Alto\">Atotonilco el Alto</a> en la zona de <a title=\"Altos de Jalisco\" href=\"https://es.wikipedia.org/wiki/Altos_de_Jalisco\">Los Altos</a> y en <a title=\"Nayarit\" href=\"https://es.wikipedia.org/wiki/Nayarit\">Nayarit</a> en municipios cómo <a title=\"Ixtlán del Río\" href=\"https://es.wikipedia.org/wiki/Ixtl%C3%A1n_del_R%C3%ADo\">Ixtlán del Río</a>. También se elabora en determinadas zonas en <a title=\"Guanajuato\" href=\"https://es.wikipedia.org/wiki/Guanajuato\">Guanajuato</a>, <a title=\"Michoacán\" href=\"https://es.wikipedia.org/wiki/Michoac%C3%A1n\">Michoacán</a>, y <a title=\"Tamaulipas\" href=\"https://es.wikipedia.org/wiki/Tamaulipas\">Tamaulipas</a>.\n\nEl origen náhuatl <i>(téquitl</i>: trabajo u oficio; <i>tlan</i>: lugar) de la palabra habla de un lugar de trabajo y, a la vez, del trabajo específico de cortar plantas. La palabra tequio se refiere a la tarea de los hombres de campo.','Nota de Prueba','','inherit','closed','closed','','1-autosave-v1','','','2016-10-10 11:49:48','2016-10-10 17:49:48','',1,'http://tiempocreativo.com.mx/santoveneno/2016/10/10/1-autosave-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (97,1,'2016-10-10 11:51:20','2016-10-10 17:51:20','El <b>tequila</b> es un destilado originario del municipio de Tequila en el estado de Jalisco, México. Se elabora a partir de lafermentación y destilado al igual que el mezcal, jugo extraído del agave, en particular el llamado agave azul (<i>Agave tequilana</i>), con denominación de origen en cinco estados de la República Mexicana (Guanajuato, Michoacán, Nayarit,Tamaulipas y por supuesto en todo el estado de Jalisco ya que en los tres primeros solo se puede producir en algunos municipios, los fronterizos a Jalisco). Es quizás la bebida más conocida y representativa de México en el mundo.\r\n\r\nLa pureza de un tequila consiste en estar hecho completamente a partir del agave. Cuando un tequila no señala en su etiqueta que es 100% de agave es un tequila mixto. Esto significa que una proporción del azúcar obtenida del agave se mezcló con otros azúcares durante su elaboración. Durante muchos años existió en México una norma que permitía que los tequilas tuvieran un mínimo de 51% de agave y un máximo de 49% de otros azúcares. Desde hace algún tiempo, sin embargo, la norma exige que para ser llamado tequila debe ser al menos 60% agave. En los tequilas mixtos, el agave se mezcla con jarabe de maíz o de caña de azúcar.\r\n\r\nEl origen náhuatl <i>(téquitl</i>: trabajo u oficio; <i>tlan</i>: lugar) de la palabra habla de un lugar de trabajo y, a la vez, del trabajo específico de cortar plantas. La palabra tequio se refiere a la tarea de los hombres de campo.','Nota de Prueba','','inherit','closed','closed','','1-revision-v1','','','2016-10-10 11:51:20','2016-10-10 17:51:20','',1,'http://tiempocreativo.com.mx/santoveneno/2016/10/10/1-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (99,1,'2016-10-10 14:46:59','2016-10-10 20:46:59','','Order &ndash; octubre 10, 2016 @ 02:46 PM','','wc-cancelled','open','closed','order_57fbd852583ae','pedido-oct-10-2016-0605-pm','','','2016-10-10 14:46:59','2016-10-10 20:46:59','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=shop_order&#038;p=99',0,'shop_order','',2);
INSERT INTO `swp_posts` VALUES (100,1,'2016-10-10 12:05:57','2016-10-10 18:05:57','','Order &ndash; octubre 10, 2016 @ 12:05 PM','','wc-processing','open','closed','order_57fbd88358758','pedido-oct-10-2016-0605-pm-2','','','2016-10-10 12:05:57','2016-10-10 18:05:57','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=shop_order&#038;p=100',0,'shop_order','',2);
INSERT INTO `swp_posts` VALUES (101,1,'2016-10-10 12:19:25','2016-10-10 18:19:25','','Order &ndash; octubre 10, 2016 @ 12:19 PM','','wc-processing','open','closed','order_57fbdba754658','pedido-oct-10-2016-0619-pm','','','2016-10-10 12:19:25','2016-10-10 18:19:25','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=shop_order&#038;p=101',0,'shop_order','',2);
INSERT INTO `swp_posts` VALUES (102,1,'2016-10-11 13:09:43','2016-10-11 19:09:43','','Order &ndash; octubre 11, 2016 @ 01:09 PM','','wc-cancelled','open','closed','order_57fd1670ddac5','pedido-oct-11-2016-0442-pm','','','2016-10-11 13:09:43','2016-10-11 19:09:43','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=shop_order&#038;p=102',0,'shop_order','',2);
INSERT INTO `swp_posts` VALUES (103,1,'2016-10-11 10:44:02','2016-10-11 16:44:02','','Order &ndash; octubre 11, 2016 @ 10:44 AM','','wc-processing','open','closed','order_57fd16cd31910','pedido-oct-11-2016-0443-pm','','','2016-10-11 10:44:02','2016-10-11 16:44:02','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=shop_order&#038;p=103',0,'shop_order','',2);
INSERT INTO `swp_posts` VALUES (104,1,'2016-10-11 15:28:21','2016-10-11 21:28:21','Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n<img class=\"alignleft size-full wp-image-58\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/09/IMG_9677.jpg\" alt=\"IMG_9677\" width=\"4368\" height=\"2912\" /> <img class=\"alignleft size-full wp-image-57\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/09/bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_.jpg\" alt=\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image.960.540.high\" width=\"960\" height=\"540\" /> <img class=\"alignleft size-full wp-image-38\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/08/20150323-cocktails-vicky-wasik-negroni.jpg\" alt=\"20150323-cocktails-vicky-wasik-negroni\" width=\"1500\" height=\"1125\" />','foto prueba  hoy','','publish','closed','closed','','foto-prueba-hoy','','','2016-10-11 15:35:28','2016-10-11 21:35:28','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=galleries_sv&#038;p=104',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (105,1,'2016-10-11 15:28:48','2016-10-11 21:28:48','Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n<img class=\"alignleft size-full wp-image-58\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/09/IMG_9677.jpg\" alt=\"IMG_9677\" width=\"4368\" height=\"2912\" /> <img class=\"alignleft size-full wp-image-57\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/09/bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image_.960.540.high_.jpg\" alt=\"bellagio-nightlife-the-bank-lifestyle-bw-Crowd.tif.image.960.540.high\" width=\"960\" height=\"540\" /> <img class=\"alignleft size-full wp-image-38\" src=\"http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/08/20150323-cocktails-vicky-wasik-negroni.jpg\" alt=\"20150323-cocktails-vicky-wasik-negroni\" width=\"1500\" height=\"1125\" />','foto prueba  hoy','','inherit','closed','closed','','104-autosave-v1','','','2016-10-11 15:28:48','2016-10-11 21:28:48','',104,'http://tiempocreativo.com.mx/santoveneno/2016/10/11/104-autosave-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (107,1,'2016-12-21 20:18:24','2016-12-22 02:18:24','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','','','inherit','closed','closed','','22-revision-v1','','','2016-12-21 20:18:24','2016-12-22 02:18:24','',22,'http://tiempocreativo.com.mx/santoveneno/2016/12/21/22-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (108,1,'2016-12-21 20:20:09','2016-12-22 02:20:09','[contact-form-7 id=\"69\" title=\"Contact form 1\"]','','','inherit','closed','closed','','27-revision-v1','','','2016-12-21 20:20:09','2016-12-22 02:20:09','',27,'http://tiempocreativo.com.mx/santoveneno/2016/12/21/27-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (109,1,'2016-12-21 21:36:44','2016-12-22 03:36:44','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Tour de la botella','','inherit','closed','closed','','22-revision-v1','','','2016-12-21 21:36:44','2016-12-22 03:36:44','',22,'http://tiempocreativo.com.mx/santoveneno/2016/12/21/22-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (110,1,'2016-12-28 19:42:47','2016-12-29 01:42:47','','Find','','publish','closed','closed','','find','','','2016-12-28 19:42:55','2016-12-29 01:42:55','',0,'http://tiempocreativo.com.mx/santoveneno/?page_id=110',0,'page','',0);
INSERT INTO `swp_posts` VALUES (111,1,'2016-12-28 19:42:47','2016-12-29 01:42:47','','find','','inherit','closed','closed','','110-revision-v1','','','2016-12-28 19:42:47','2016-12-29 01:42:47','',110,'http://tiempocreativo.com.mx/santoveneno/2016/12/28/110-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (112,1,'2016-12-28 19:42:55','2016-12-29 01:42:55','','Find','','inherit','closed','closed','','110-revision-v1','','','2016-12-28 19:42:55','2016-12-29 01:42:55','',110,'http://tiempocreativo.com.mx/santoveneno/2016/12/28/110-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (113,1,'2016-12-28 19:43:51','2016-12-29 01:43:51','','FIND','','publish','closed','closed','','find','','','2016-12-31 19:38:59','2017-01-01 01:38:59','',0,'http://tiempocreativo.com.mx/santoveneno/?p=113',6,'nav_menu_item','',0);
INSERT INTO `swp_posts` VALUES (118,1,'2016-12-28 20:20:52','2016-12-29 02:20:52','prueba','prueba','','publish','closed','closed','','prueba','','','2017-01-01 09:18:48','2017-01-01 15:18:48','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=find_sv&#038;p=118',0,'find_sv','',0);
INSERT INTO `swp_posts` VALUES (120,1,'2016-12-31 16:57:49','2016-12-31 22:57:49','[add_to_cart id=\"10\"]','Shop Online','','inherit','closed','closed','','45-revision-v1','','','2016-12-31 16:57:49','2016-12-31 22:57:49','',45,'http://tiempocreativo.com.mx/santoveneno/2016/12/31/45-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (121,1,'2016-12-31 17:19:23','2016-12-31 23:19:23','Leave empty','Experience','','inherit','closed','closed','','33-revision-v1','','','2016-12-31 17:19:23','2016-12-31 23:19:23','',33,'http://tiempocreativo.com.mx/santoveneno/2016/12/31/33-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (122,1,'2016-12-31 17:24:48','2016-12-31 23:24:48','','Bottle Tour','','inherit','closed','closed','','22-revision-v1','','','2016-12-31 17:24:48','2016-12-31 23:24:48','',22,'http://tiempocreativo.com.mx/santoveneno/2016/12/31/22-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (123,1,'2017-01-01 09:40:43','2017-01-01 15:40:43','prueba antro','prueba antro','','publish','closed','closed','','prueba-antro','','','2017-01-01 09:40:43','2017-01-01 15:40:43','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=find_sv&#038;p=123',0,'find_sv','',0);
INSERT INTO `swp_posts` VALUES (124,1,'2017-01-01 09:41:35','2017-01-01 15:41:35','prueba 3 antro\r\n\r\n&nbsp;\r\n\r\n<a href=\"http://google.com\">mapa</a>','prueba 3 antro','','publish','closed','closed','','prueba-3-antro','','','2017-01-01 09:41:35','2017-01-01 15:41:35','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=find_sv&#038;p=124',0,'find_sv','',0);
INSERT INTO `swp_posts` VALUES (125,1,'2017-01-01 09:42:13','2017-01-01 15:42:13','prueba cuatro antros','prueba cuatro antros','','publish','closed','closed','','prueba-cuatro-antros','','','2017-01-01 09:50:20','2017-01-01 15:50:20','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=find_sv&#038;p=125',0,'find_sv','',0);
INSERT INTO `swp_posts` VALUES (129,1,'2017-01-03 14:18:57','2017-01-03 20:18:57','','perfect-serve-djblanco','','inherit','open','closed','','perfect-serve-djblanco','','','2017-01-03 14:18:57','2017-01-03 20:18:57','',94,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/Perfect-Serve-DJBlanco.png',0,'attachment','image/png',0);
INSERT INTO `swp_posts` VALUES (130,1,'2017-01-03 14:24:08','2017-01-03 20:24:08','','a','','inherit','open','closed','','a','','','2017-01-03 14:24:08','2017-01-03 20:24:08','',94,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2016/10/a.png',0,'attachment','image/png',0);
INSERT INTO `swp_posts` VALUES (131,1,'2017-01-07 12:09:38','2017-01-07 18:09:38','[gallery ids=\"130,129,92\"]','Tequila 2','','inherit','closed','closed','','85-autosave-v1','','','2017-01-07 12:09:38','2017-01-07 18:09:38','',85,'http://tiempocreativo.com.mx/santoveneno/2017/01/07/85-autosave-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (134,1,'2017-01-11 14:17:15','2017-01-11 20:17:15','Descripción','test 11 enero','','publish','closed','closed','','test-11-enero','','','2017-01-11 14:17:15','2017-01-11 20:17:15','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=galleries_sv&#038;p=134',0,'galleries_sv','',0);
INSERT INTO `swp_posts` VALUES (135,1,'2017-01-11 14:17:02','2017-01-11 20:17:02','','1463497463924.cached','','inherit','open','closed','','1463497463924-cached','','','2017-01-11 14:17:02','2017-01-11 20:17:02','',134,'http://tiempocreativo.com.mx/santoveneno/wp-content/uploads/2017/01/1463497463924.cached.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `swp_posts` VALUES (137,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','AABB.\nAA.CC\n.DDEE\nFF.EE','News','','publish','closed','closed','','news','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=137',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (138,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','AA...\nAABB.\n..BB.','Simple','','publish','closed','closed','','simple','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=138',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (139,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','JJ..EE\n.AA.EE\nBAAFF.\nB.DD.H\nCCDDGH\nCC..G.','Fancy','','publish','closed','closed','','fancy','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=139',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (140,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','.AAA.\n.AAA.\n.AAA.','Featured','','publish','closed','closed','','featured','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=140',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (141,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','.....','Plain','','publish','closed','closed','','plain','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=141',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (142,1,'2017-01-17 08:17:12','2017-01-17 14:17:12','AA\n..','Mobile','','publish','closed','closed','','mobile','','','2017-01-17 08:17:12','2017-01-17 14:17:12','',0,'http://tiempocreativo.com.mx/santoveneno/?post_type=grid_template&p=142',0,'grid_template','',0);
INSERT INTO `swp_posts` VALUES (143,1,'2017-01-17 08:19:29','2017-01-17 14:19:29','[gallery grids=\"News\" image_size=\"large\" ids=\"135,130,129\"]\n\n&nbsp;\n\n[wp-tiles]\n\nLeave empty','Experience','','inherit','closed','closed','','33-autosave-v1','','','2017-01-17 08:19:29','2017-01-17 14:19:29','',33,'http://tiempocreativo.com.mx/santoveneno/2017/01/17/33-autosave-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (144,1,'2017-01-17 08:19:37','2017-01-17 14:19:37','[gallery grids=\"News\" image_size=\"large\" ids=\"135,130,129\"]\r\n\r\n&nbsp;\r\n\r\n[wp-tiles]\r\n\r\nLeave empty','Experience','','inherit','closed','closed','','33-revision-v1','','','2017-01-17 08:19:37','2017-01-17 14:19:37','',33,'http://tiempocreativo.com.mx/santoveneno/2017/01/17/33-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (145,1,'2017-01-17 22:10:20','2017-01-18 04:10:20','[contact-form-7 id=\"69\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2017-01-17 22:10:20','2017-01-18 04:10:20','',27,'http://tiempocreativo.com.mx/santoveneno/2017/01/17/27-revision-v1/',0,'revision','',0);
INSERT INTO `swp_posts` VALUES (148,1,'2017-02-02 05:12:39','0000-00-00 00:00:00','','Sobre el envio','','draft','closed','closed','','','','','2017-02-02 05:12:39','2017-02-02 11:12:39','',0,'http://tiempocreativo.com.mx/santoveneno/?page_id=148',0,'page','',0);
INSERT INTO `swp_posts` VALUES (149,1,'2017-02-02 05:13:56','2017-02-02 11:13:56','','Sobre el envio','','publish','closed','closed','','sobre-el-envio','','','2017-02-02 05:13:56','2017-02-02 11:13:56','',0,'http://tiempocreativo.com.mx/santoveneno/?page_id=149',0,'page','',0);
INSERT INTO `swp_posts` VALUES (150,1,'2017-02-02 05:13:56','2017-02-02 11:13:56','','Sobre el envio','','inherit','closed','closed','','149-revision-v1','','','2017-02-02 05:13:56','2017-02-02 11:13:56','',149,'http://tiempocreativo.com.mx/santoveneno/2017/02/02/149-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `swp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_term_relationships`
--

DROP TABLE IF EXISTS `swp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_term_relationships`
--

LOCK TABLES `swp_term_relationships` WRITE;
/*!40000 ALTER TABLE `swp_term_relationships` DISABLE KEYS */;
INSERT INTO `swp_term_relationships` VALUES (1,7,0);
INSERT INTO `swp_term_relationships` VALUES (10,2,0);
INSERT INTO `swp_term_relationships` VALUES (18,6,0);
INSERT INTO `swp_term_relationships` VALUES (25,6,0);
INSERT INTO `swp_term_relationships` VALUES (29,6,0);
INSERT INTO `swp_term_relationships` VALUES (35,6,0);
INSERT INTO `swp_term_relationships` VALUES (36,6,0);
INSERT INTO `swp_term_relationships` VALUES (48,7,0);
INSERT INTO `swp_term_relationships` VALUES (50,6,0);
INSERT INTO `swp_term_relationships` VALUES (55,10,0);
INSERT INTO `swp_term_relationships` VALUES (59,10,0);
INSERT INTO `swp_term_relationships` VALUES (60,10,0);
INSERT INTO `swp_term_relationships` VALUES (71,8,0);
INSERT INTO `swp_term_relationships` VALUES (83,10,0);
INSERT INTO `swp_term_relationships` VALUES (85,10,0);
INSERT INTO `swp_term_relationships` VALUES (88,10,0);
INSERT INTO `swp_term_relationships` VALUES (104,8,0);
INSERT INTO `swp_term_relationships` VALUES (113,6,0);
INSERT INTO `swp_term_relationships` VALUES (118,13,0);
INSERT INTO `swp_term_relationships` VALUES (123,13,0);
INSERT INTO `swp_term_relationships` VALUES (124,13,0);
INSERT INTO `swp_term_relationships` VALUES (125,13,0);
INSERT INTO `swp_term_relationships` VALUES (134,10,0);
/*!40000 ALTER TABLE `swp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_term_taxonomy`
--

DROP TABLE IF EXISTS `swp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_term_taxonomy`
--

LOCK TABLES `swp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `swp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `swp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (2,2,'product_type','',0,1);
INSERT INTO `swp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (4,4,'product_type','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (6,6,'nav_menu','',0,7);
INSERT INTO `swp_term_taxonomy` VALUES (7,7,'category','',0,2);
INSERT INTO `swp_term_taxonomy` VALUES (8,8,'post_format','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (9,9,'post_format','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (10,10,'post_format','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (12,12,'category','',0,0);
INSERT INTO `swp_term_taxonomy` VALUES (13,13,'category','',0,4);
INSERT INTO `swp_term_taxonomy` VALUES (14,14,'category','',0,0);
/*!40000 ALTER TABLE `swp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_termmeta`
--

DROP TABLE IF EXISTS `swp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_termmeta`
--

LOCK TABLES `swp_termmeta` WRITE;
/*!40000 ALTER TABLE `swp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_terms`
--

DROP TABLE IF EXISTS `swp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_terms`
--

LOCK TABLES `swp_terms` WRITE;
/*!40000 ALTER TABLE `swp_terms` DISABLE KEYS */;
INSERT INTO `swp_terms` VALUES (1,'Sin categoría','sin-categoria',0);
INSERT INTO `swp_terms` VALUES (2,'simple','simple',0);
INSERT INTO `swp_terms` VALUES (3,'grouped','grouped',0);
INSERT INTO `swp_terms` VALUES (4,'variable','variable',0);
INSERT INTO `swp_terms` VALUES (5,'external','external',0);
INSERT INTO `swp_terms` VALUES (6,'main','main',0);
INSERT INTO `swp_terms` VALUES (7,'press','press',0);
INSERT INTO `swp_terms` VALUES (8,'post-format-video','post-format-video',0);
INSERT INTO `swp_terms` VALUES (9,'post-format-aside','post-format-aside',0);
INSERT INTO `swp_terms` VALUES (10,'post-format-gallery','post-format-gallery',0);
INSERT INTO `swp_terms` VALUES (12,'restaurantes','restaurantes',0);
INSERT INTO `swp_terms` VALUES (13,'antros','antros',0);
INSERT INTO `swp_terms` VALUES (14,'retail','retail',0);
/*!40000 ALTER TABLE `swp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_usermeta`
--

DROP TABLE IF EXISTS `swp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_usermeta`
--

LOCK TABLES `swp_usermeta` WRITE;
/*!40000 ALTER TABLE `swp_usermeta` DISABLE KEYS */;
INSERT INTO `swp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `swp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `swp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `swp_usermeta` VALUES (4,1,'description','');
INSERT INTO `swp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `swp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `swp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `swp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `swp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `swp_usermeta` VALUES (10,1,'swp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `swp_usermeta` VALUES (11,1,'swp_user_level','10');
INSERT INTO `swp_usermeta` VALUES (12,1,'dismissed_wp_pointers','');
INSERT INTO `swp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `swp_usermeta` VALUES (15,1,'swp_user-settings','libraryContent=browse&editor=tinymce&unfold=1&mfold=o&imgsize=full&align=left');
INSERT INTO `swp_usermeta` VALUES (16,1,'swp_user-settings-time','1475513366');
INSERT INTO `swp_usermeta` VALUES (17,1,'swp_dashboard_quick_press_last_post_id','151');
INSERT INTO `swp_usermeta` VALUES (18,1,'manageedit-shop_ordercolumnshidden','a:1:{i:0;s:15:\"billing_address\";}');
INSERT INTO `swp_usermeta` VALUES (20,1,'billing_first_name','p');
INSERT INTO `swp_usermeta` VALUES (21,1,'billing_last_name','p');
INSERT INTO `swp_usermeta` VALUES (22,1,'billing_company','p');
INSERT INTO `swp_usermeta` VALUES (23,1,'billing_email','aleper02@gmail.com');
INSERT INTO `swp_usermeta` VALUES (24,1,'billing_phone','1234567890');
INSERT INTO `swp_usermeta` VALUES (25,1,'billing_country','MX');
INSERT INTO `swp_usermeta` VALUES (26,1,'billing_address_1','hola');
INSERT INTO `swp_usermeta` VALUES (27,1,'billing_address_2','alvaro');
INSERT INTO `swp_usermeta` VALUES (28,1,'billing_city','san bartolo');
INSERT INTO `swp_usermeta` VALUES (29,1,'billing_state','Distrito Federal');
INSERT INTO `swp_usermeta` VALUES (30,1,'billing_postcode','23123213');
INSERT INTO `swp_usermeta` VALUES (31,1,'shipping_first_name','p');
INSERT INTO `swp_usermeta` VALUES (32,1,'shipping_last_name','p');
INSERT INTO `swp_usermeta` VALUES (33,1,'shipping_company','p');
INSERT INTO `swp_usermeta` VALUES (34,1,'shipping_country','MX');
INSERT INTO `swp_usermeta` VALUES (35,1,'shipping_address_1','hola');
INSERT INTO `swp_usermeta` VALUES (36,1,'shipping_address_2','alvaro');
INSERT INTO `swp_usermeta` VALUES (37,1,'shipping_city','san bartolo');
INSERT INTO `swp_usermeta` VALUES (38,1,'shipping_state','Distrito Federal');
INSERT INTO `swp_usermeta` VALUES (39,1,'shipping_postcode','23123213');
INSERT INTO `swp_usermeta` VALUES (40,1,'last_update','1476122707');
INSERT INTO `swp_usermeta` VALUES (42,1,'paying_customer','1');
INSERT INTO `swp_usermeta` VALUES (45,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `swp_usermeta` VALUES (46,1,'metaboxhidden_nav-menus','a:5:{i:0;s:30:\"woocommerce_endpoints_nav_link\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}');
INSERT INTO `swp_usermeta` VALUES (48,1,'nav_menu_recently_edited','6');
INSERT INTO `swp_usermeta` VALUES (51,1,'closedpostboxes_galleries_sv','a:0:{}');
INSERT INTO `swp_usermeta` VALUES (52,1,'metaboxhidden_galleries_sv','a:2:{i:0;s:7:\"acf_127\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `swp_usermeta` VALUES (53,1,'closedpostboxes_dashboard','a:1:{i:0;s:19:\"dashboard_right_now\";}');
INSERT INTO `swp_usermeta` VALUES (54,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `swp_usermeta` VALUES (55,1,'closedpostboxes_find_sv','a:1:{i:0;s:9:\"formatdiv\";}');
INSERT INTO `swp_usermeta` VALUES (56,1,'metaboxhidden_find_sv','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `swp_usermeta` VALUES (57,1,'_woocommerce_persistent_cart','a:1:{s:4:\"cart\";a:1:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:9:{s:10:\"product_id\";i:10;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:10:\"line_total\";i:3000;s:8:\"line_tax\";i:0;s:13:\"line_subtotal\";i:3000;s:17:\"line_subtotal_tax\";i:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}}');
INSERT INTO `swp_usermeta` VALUES (58,1,'session_tokens','a:1:{s:64:\"111dcdb8f8ea47ec7c6ea40289951e79e42fbc571a1ae64c175620c1e5badf56\";a:4:{s:10:\"expiration\";i:1488080970;s:2:\"ip\";s:13:\"189.216.206.3\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\";s:5:\"login\";i:1487908170;}}');
INSERT INTO `swp_usermeta` VALUES (59,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `swp_usermeta` VALUES (60,1,'metaboxhidden_page','a:5:{i:0;s:15:\"acf_acf_galeria\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');
/*!40000 ALTER TABLE `swp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_users`
--

DROP TABLE IF EXISTS `swp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_users`
--

LOCK TABLES `swp_users` WRITE;
/*!40000 ALTER TABLE `swp_users` DISABLE KEYS */;
INSERT INTO `swp_users` VALUES (1,'admin','$P$BhIlu1CxUjjy95239twjQ3R2n8Zepa.','admin','julzebadua@gmail.com','','2016-08-30 01:17:14','',0,'admin');
/*!40000 ALTER TABLE `swp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `swp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_api_keys`
--

LOCK TABLES `swp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `swp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `swp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `swp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `swp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `swp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_order_itemmeta`
--

LOCK TABLES `swp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_order_itemmeta` DISABLE KEYS */;
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (19,4,'_qty','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (20,4,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (21,4,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (22,4,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (23,4,'_line_subtotal','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (24,4,'_line_total','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (25,4,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (26,4,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (27,4,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (28,5,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (29,5,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (30,5,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (31,5,'Items','Botella 750 ml &times; 1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (32,6,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (33,6,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (34,6,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (35,6,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (36,6,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (37,7,'_qty','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (38,7,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (39,7,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (40,7,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (41,7,'_line_subtotal','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (42,7,'_line_total','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (43,7,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (44,7,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (45,7,'_line_tax_data','a:2:{s:5:\"total\";a:1:{i:1;s:0:\"\";}s:8:\"subtotal\";a:1:{i:1;s:0:\"\";}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (46,8,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (47,8,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (48,8,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (49,8,'Artículos','Botella 750 ml &times; 1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (50,9,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (51,9,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (52,9,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (53,9,'tax_amount','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (54,9,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (55,10,'_qty','4');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (56,10,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (57,10,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (58,10,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (59,10,'_line_subtotal','6000');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (60,10,'_line_total','6000');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (61,10,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (62,10,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (63,10,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (64,11,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (65,11,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (66,11,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (67,11,'Artículos','Botella 750 ml &times; 4');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (68,12,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (69,12,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (70,12,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (71,12,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (72,12,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (73,13,'_qty','2');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (74,13,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (75,13,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (76,13,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (77,13,'_line_subtotal','3000');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (78,13,'_line_total','3000');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (79,13,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (80,13,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (81,13,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (82,14,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (83,14,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (84,14,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (85,14,'Artículos','Botella 750 ml &times; 2');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (86,15,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (87,15,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (88,15,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (89,15,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (90,15,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (91,16,'_qty','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (92,16,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (93,16,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (94,16,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (95,16,'_line_subtotal','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (96,16,'_line_total','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (97,16,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (98,16,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (99,16,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (100,17,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (101,17,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (102,17,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (103,17,'Artículos','Botella 750 ml &times; 1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (104,18,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (105,18,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (106,18,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (107,18,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (108,18,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (109,19,'_qty','3');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (110,19,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (111,19,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (112,19,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (113,19,'_line_subtotal','4500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (114,19,'_line_total','4500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (115,19,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (116,19,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (117,19,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (118,20,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (119,20,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (120,20,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (121,20,'Artículos','Botella 750 ml &times; 3');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (122,21,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (123,21,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (124,21,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (125,21,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (126,21,'shipping_tax_amount','240');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (127,22,'_qty','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (128,22,'_tax_class','');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (129,22,'_product_id','10');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (130,22,'_variation_id','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (131,22,'_line_subtotal','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (132,22,'_line_total','1500');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (133,22,'_line_subtotal_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (134,22,'_line_tax','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (135,22,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (136,23,'method_id','flat_rate:1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (137,23,'cost','1500.00');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (138,23,'taxes','a:1:{i:1;s:3:\"240\";}');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (139,23,'Artículos','Botella 750 ml &times; 1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (140,24,'rate_id','1');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (141,24,'label','IVA');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (142,24,'compound','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (143,24,'tax_amount','0');
INSERT INTO `swp_woocommerce_order_itemmeta` VALUES (144,24,'shipping_tax_amount','240');
/*!40000 ALTER TABLE `swp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `swp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_order_items`
--

LOCK TABLES `swp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_order_items` DISABLE KEYS */;
INSERT INTO `swp_woocommerce_order_items` VALUES (4,'Botella 750 ml','line_item',12);
INSERT INTO `swp_woocommerce_order_items` VALUES (5,'Flat Rate','shipping',12);
INSERT INTO `swp_woocommerce_order_items` VALUES (6,'MX-IVA-1','tax',12);
INSERT INTO `swp_woocommerce_order_items` VALUES (7,'Botella 750 ml','line_item',67);
INSERT INTO `swp_woocommerce_order_items` VALUES (8,'Flat Rate','shipping',67);
INSERT INTO `swp_woocommerce_order_items` VALUES (9,'MX-IVA-1','tax',67);
INSERT INTO `swp_woocommerce_order_items` VALUES (10,'Botella 750 ml','line_item',99);
INSERT INTO `swp_woocommerce_order_items` VALUES (11,'Flat Rate','shipping',99);
INSERT INTO `swp_woocommerce_order_items` VALUES (12,'MX-IVA-1','tax',99);
INSERT INTO `swp_woocommerce_order_items` VALUES (13,'Botella 750 ml','line_item',100);
INSERT INTO `swp_woocommerce_order_items` VALUES (14,'Flat Rate','shipping',100);
INSERT INTO `swp_woocommerce_order_items` VALUES (15,'MX-IVA-1','tax',100);
INSERT INTO `swp_woocommerce_order_items` VALUES (16,'Botella 750 ml','line_item',101);
INSERT INTO `swp_woocommerce_order_items` VALUES (17,'Flat Rate','shipping',101);
INSERT INTO `swp_woocommerce_order_items` VALUES (18,'MX-IVA-1','tax',101);
INSERT INTO `swp_woocommerce_order_items` VALUES (19,'Botella 750 ml','line_item',102);
INSERT INTO `swp_woocommerce_order_items` VALUES (20,'Flat Rate','shipping',102);
INSERT INTO `swp_woocommerce_order_items` VALUES (21,'MX-IVA-1','tax',102);
INSERT INTO `swp_woocommerce_order_items` VALUES (22,'Botella 750 ml','line_item',103);
INSERT INTO `swp_woocommerce_order_items` VALUES (23,'Flat Rate','shipping',103);
INSERT INTO `swp_woocommerce_order_items` VALUES (24,'MX-IVA-1','tax',103);
/*!40000 ALTER TABLE `swp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `swp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `swp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `swp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_payment_tokens`
--

LOCK TABLES `swp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `swp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_sessions`
--

LOCK TABLES `swp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `swp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `swp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `swp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `swp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `swp_woocommerce_shipping_zone_methods` VALUES (0,1,'flat_rate',1,1);
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `swp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_shipping_zones`
--

LOCK TABLES `swp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `swp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_tax_rate_locations`
--

LOCK TABLES `swp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `swp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `swp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swp_woocommerce_tax_rates`
--

LOCK TABLES `swp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `swp_woocommerce_tax_rates` DISABLE KEYS */;
INSERT INTO `swp_woocommerce_tax_rates` VALUES (1,'MX','','16.0000','IVA',1,0,1,0,'iva');
/*!40000 ALTER TABLE `swp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 16:57:55