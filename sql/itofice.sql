-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 45.40.164.83    Database: itoffice2
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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
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
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
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
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2017-08-12 22:15:38','2017-08-12 22:15:38','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
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
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1704 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://tiempocreativo.com.mx/itoffice.com.mx/web/wordpress','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://tiempocreativo.com.mx/itoffice.com.mx/web/wordpress','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','itoffice','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','fersaavedra85@hotmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','12','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','12','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"producto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"producto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"producto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:33:\"woocommerce-es/woocommerce-es.php\";i:1;s:27:\"bladerunner/bladerunner.php\";i:2;s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:5:{i:0;s:83:\"/home/content/57/11363257/html/itoffice.com.mx/web/content/themes/default/style.css\";i:1;s:108:\"/home/content/57/11363257/html/itoffice.com.mx/web/content/plugins/yith-woocommerce-ajax-navigation/init.php\";i:2;s:92:\"/home/content/57/11363257/html/itoffice.com.mx/web/content/plugins/woocommerce-es/readme.txt\";i:3;s:100:\"/home/content/57/11363257/html/itoffice.com.mx/web/content/plugins/woocommerce-es/woocommerce-es.php\";i:4;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','storefront','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','storefront','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','36686','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";a:2:{i:0;s:13:\"BeRocket_AAPF\";i:1;s:24:\"br_delete_plugin_options\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'initial_db_version','36686','yes');
INSERT INTO `wp_options` VALUES (92,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:11:\"cliente_vip\";a:2:{s:4:\"name\";s:11:\"Cliente VIP\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:32:\"woocommerce_product_categories-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'auth_key','D&I5&6])`3i)T^f4$,~;}r:?PKA1J`wO{*~7*2axgOElVPJ !o_x:q1.h!KGF|QW','yes');
INSERT INTO `wp_options` VALUES (113,'auth_salt','EWlZOf~W0LRqa^wj4@0`OpaHljo4BIl{@(Z}8H(N{~x,{};w].]4hg@FlH6 fs2|','yes');
INSERT INTO `wp_options` VALUES (114,'logged_in_key','|tVfjODlZ<uJp8M R9Q|o`ON8[lt8n^=;$H=t{`JSE#,?t:_:I))oogv= ffxdMV','yes');
INSERT INTO `wp_options` VALUES (115,'logged_in_salt','{SWG7t&d4K)1hshKjzw}Z)4~oD^[Je#yax?PnD1qs2~d)8Wir_g-uM2%~X}Y2:$T','yes');
INSERT INTO `wp_options` VALUES (116,'nonce_key','{,p;8g@0|z+HnKn#3cLXfN3z^J@b`ow5kQww;9@$r).n-[/aSwPOJdq0aE#tQ Z?','yes');
INSERT INTO `wp_options` VALUES (117,'nonce_salt','GE#|lmX+C_U_qOuNp:b]NPGT|G:WXppzC.>2;b=#*7[W{0w@7G mU} ?<n6tQeqC','yes');
INSERT INTO `wp_options` VALUES (122,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (128,'recently_activated','a:2:{s:41:\"yith-woocommerce-ajax-navigation/init.php\";i:1505266959;s:37:\"woocommerce-products-filter/index.php\";i:1505266801;}','yes');
INSERT INTO `wp_options` VALUES (150,'woocommerce_default_country','MX:Distrito Federal','yes');
INSERT INTO `wp_options` VALUES (151,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (152,'woocommerce_all_except_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (153,'woocommerce_specific_allowed_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (154,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (155,'woocommerce_specific_ship_to_countries','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (156,'woocommerce_default_customer_address','geolocation','yes');
INSERT INTO `wp_options` VALUES (157,'woocommerce_calc_taxes','yes','yes');
INSERT INTO `wp_options` VALUES (158,'woocommerce_demo_store','no','yes');
INSERT INTO `wp_options` VALUES (159,'woocommerce_demo_store_notice','This is a demo store for testing purposes &mdash; no orders shall be fulfilled.','no');
INSERT INTO `wp_options` VALUES (160,'woocommerce_currency','MXN','yes');
INSERT INTO `wp_options` VALUES (161,'woocommerce_currency_pos','left','yes');
INSERT INTO `wp_options` VALUES (162,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `wp_options` VALUES (163,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `wp_options` VALUES (164,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (165,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (166,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (167,'woocommerce_enable_reviews','yes','yes');
INSERT INTO `wp_options` VALUES (168,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (169,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (170,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (171,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (172,'woocommerce_shop_page_id','4','yes');
INSERT INTO `wp_options` VALUES (173,'woocommerce_shop_page_display','','yes');
INSERT INTO `wp_options` VALUES (174,'woocommerce_category_archive_display','','yes');
INSERT INTO `wp_options` VALUES (175,'woocommerce_default_catalog_orderby','menu_order','yes');
INSERT INTO `wp_options` VALUES (176,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (177,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `wp_options` VALUES (178,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (179,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (180,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (181,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (182,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (183,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (184,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (185,'woocommerce_stock_email_recipient','fersaavedra85@hotmail.com','no');
INSERT INTO `wp_options` VALUES (186,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (187,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (188,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `wp_options` VALUES (189,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (190,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (191,'woocommerce_downloads_require_login','no','no');
INSERT INTO `wp_options` VALUES (192,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (193,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (194,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (195,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (196,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (197,'woocommerce_tax_classes','Reduced rate\r\nZero rate','yes');
INSERT INTO `wp_options` VALUES (198,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (199,'woocommerce_tax_display_cart','excl','no');
INSERT INTO `wp_options` VALUES (200,'woocommerce_price_display_suffix','(IVA no incluido)','yes');
INSERT INTO `wp_options` VALUES (201,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (202,'woocommerce_enable_shipping_calc','no','no');
INSERT INTO `wp_options` VALUES (203,'woocommerce_shipping_cost_requires_address','no','no');
INSERT INTO `wp_options` VALUES (204,'woocommerce_ship_to_destination','shipping','no');
INSERT INTO `wp_options` VALUES (205,'woocommerce_shipping_debug_mode','no','no');
INSERT INTO `wp_options` VALUES (206,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (207,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (208,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `wp_options` VALUES (209,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (210,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (211,'woocommerce_cart_page_id','5','yes');
INSERT INTO `wp_options` VALUES (212,'woocommerce_checkout_page_id','6','yes');
INSERT INTO `wp_options` VALUES (213,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (214,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `wp_options` VALUES (215,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `wp_options` VALUES (216,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `wp_options` VALUES (217,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `wp_options` VALUES (218,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `wp_options` VALUES (219,'woocommerce_myaccount_page_id','7','yes');
INSERT INTO `wp_options` VALUES (220,'woocommerce_enable_signup_and_login_from_checkout','yes','no');
INSERT INTO `wp_options` VALUES (221,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (222,'woocommerce_enable_checkout_login_reminder','yes','no');
INSERT INTO `wp_options` VALUES (223,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (224,'woocommerce_registration_generate_password','no','no');
INSERT INTO `wp_options` VALUES (225,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `wp_options` VALUES (226,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `wp_options` VALUES (227,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (228,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `wp_options` VALUES (229,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `wp_options` VALUES (230,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `wp_options` VALUES (231,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `wp_options` VALUES (232,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `wp_options` VALUES (233,'woocommerce_email_from_name','itoffice','no');
INSERT INTO `wp_options` VALUES (234,'woocommerce_email_from_address','fersaavedra85@hotmail.com','no');
INSERT INTO `wp_options` VALUES (235,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (236,'woocommerce_email_footer_text','itoffice - Powered by WooCommerce','no');
INSERT INTO `wp_options` VALUES (237,'woocommerce_email_base_color','#96588a','no');
INSERT INTO `wp_options` VALUES (238,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (239,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (240,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (241,'woocommerce_api_enabled','yes','yes');
INSERT INTO `wp_options` VALUES (242,'woocommerce_admin_notices','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (248,'woocommerce_db_version','3.1.1','yes');
INSERT INTO `wp_options` VALUES (249,'woocommerce_version','3.1.1','yes');
INSERT INTO `wp_options` VALUES (251,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (252,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (253,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (254,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (255,'widget_woocommerce_product_categories','a:2:{i:2;a:7:{s:5:\"title\";s:27:\"Categorias de los productos\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (256,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (257,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (258,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (259,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (260,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (261,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (262,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (266,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (273,'woocommerce_paypal-ec_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (274,'woocommerce_stripe_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (275,'woocommerce_paypal_settings','a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";s:25:\"fersaavedra85@hotmail.com\";}','yes');
INSERT INTO `wp_options` VALUES (276,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (277,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (278,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (286,'current_theme','Storefront','yes');
INSERT INTO `wp_options` VALUES (287,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (291,'theme_mods_storefront','a:3:{s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (334,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (428,'mail_from','contacto@itoffisolution.com','yes');
INSERT INTO `wp_options` VALUES (429,'mail_from_name','IT Office Solutions','yes');
INSERT INTO `wp_options` VALUES (430,'mailer','smtp','yes');
INSERT INTO `wp_options` VALUES (431,'mail_set_return_path','','yes');
INSERT INTO `wp_options` VALUES (432,'smtp_host','','yes');
INSERT INTO `wp_options` VALUES (433,'smtp_port','','yes');
INSERT INTO `wp_options` VALUES (434,'smtp_ssl','none','yes');
INSERT INTO `wp_options` VALUES (435,'smtp_auth','false','yes');
INSERT INTO `wp_options` VALUES (436,'smtp_user','','yes');
INSERT INTO `wp_options` VALUES (437,'smtp_pass','','yes');
INSERT INTO `wp_options` VALUES (438,'pepipost_user','','yes');
INSERT INTO `wp_options` VALUES (439,'pepipost_pass','','yes');
INSERT INTO `wp_options` VALUES (440,'pepipost_port','2525','yes');
INSERT INTO `wp_options` VALUES (441,'pepipost_ssl','none','yes');
INSERT INTO `wp_options` VALUES (951,'WPLANG','es_ES','yes');
INSERT INTO `wp_options` VALUES (971,'wces_vat_mandatory','no','yes');
INSERT INTO `wp_options` VALUES (972,'wces_opt_checkout','no','yes');
INSERT INTO `wp_options` VALUES (999,'woocommerce_flat_rate_1_settings','a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"16\";}','yes');
INSERT INTO `wp_options` VALUES (1320,'wp_installer_settings','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','yes');
INSERT INTO `wp_options` VALUES (1321,'widget_woof_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1322,'woof_first_init','1','yes');
INSERT INTO `wp_options` VALUES (1323,'woof_set_automatically','0','yes');
INSERT INTO `wp_options` VALUES (1324,'woof_autosubmit','1','yes');
INSERT INTO `wp_options` VALUES (1325,'woof_show_count','1','yes');
INSERT INTO `wp_options` VALUES (1326,'woof_show_count_dynamic','0','yes');
INSERT INTO `wp_options` VALUES (1327,'woof_hide_dynamic_empty_pos','0','yes');
INSERT INTO `wp_options` VALUES (1328,'woof_try_ajax','0','yes');
INSERT INTO `wp_options` VALUES (1329,'woof_checkboxes_slide','1','yes');
INSERT INTO `wp_options` VALUES (1330,'woof_hide_red_top_panel','0','yes');
INSERT INTO `wp_options` VALUES (1331,'woof_sort_terms_checked','0','yes');
INSERT INTO `wp_options` VALUES (1332,'woof_filter_btn_txt','','yes');
INSERT INTO `wp_options` VALUES (1333,'woof_reset_btn_txt','','yes');
INSERT INTO `wp_options` VALUES (1334,'woof_settings','a:45:{s:11:\"items_order\";s:62:\"product_cat,by_price,by_onsales,product_visibility,product_tag\";s:8:\"tax_type\";a:3:{s:11:\"product_cat\";s:8:\"checkbox\";s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";}s:14:\"excluded_terms\";a:3:{s:11:\"product_cat\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:16:\"tax_block_height\";a:3:{s:11:\"product_cat\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:16:\"show_title_label\";a:3:{s:11:\"product_cat\";s:1:\"1\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:18:\"show_toggle_button\";a:3:{s:11:\"product_cat\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:13:\"dispay_in_row\";a:3:{s:11:\"product_cat\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:16:\"custom_tax_label\";a:3:{s:11:\"product_cat\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:3:{s:11:\"product_cat\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";}s:23:\"select_radio_check_type\";a:3:{s:11:\"product_cat\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:25:\"select_radio_check_height\";a:3:{s:11:\"product_cat\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";}s:3:\"tax\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:8:\"by_price\";a:6:{s:4:\"show\";s:1:\"0\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:0:\"\";s:6:\"ranges\";s:0:\"\";s:17:\"first_option_text\";s:0:\"\";s:15:\"ion_slider_step\";s:1:\"1\";}s:10:\"by_onsales\";a:1:{s:4:\"show\";s:1:\"0\";}s:11:\"icheck_skin\";s:4:\"none\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:12:\"init_only_on\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:14:\"non_latin_mode\";s:1:\"1\";s:17:\"optimize_js_files\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:20:\"activated_extensions\";a:2:{i:0;s:32:\"15e67fcb2f001ac4865fb7ccdf83c358\";i:1;s:32:\"8de0fd05e458d53a2052fe6c5c7c6f70\";}}','yes');
INSERT INTO `wp_options` VALUES (1335,'woof_version','1.1.7','yes');
INSERT INTO `wp_options` VALUES (1336,'woof_woocs_alert','a:1:{s:29:\"woocommerce-currency-switcher\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (1349,'installer_repositories_with_theme','a:1:{i:0;s:7:\"toolset\";}','yes');
INSERT INTO `wp_options` VALUES (1351,'yit_recently_activated','a:1:{i:0;s:41:\"yith-woocommerce-ajax-navigation/init.php\";}','yes');
INSERT INTO `wp_options` VALUES (1356,'widget_yith-woo-ajax-navigation','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1357,'widget_yith-woo-ajax-reset-navigation','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1358,'yit_wcan_options','a:6:{s:29:\"yith_wcan_ajax_shop_container\";s:9:\".products\";s:30:\"yith_wcan_ajax_shop_pagination\";s:26:\"nav.woocommerce-pagination\";s:36:\"yith_wcan_ajax_shop_result_container\";s:25:\".woocommerce-result-count\";s:31:\"yith_wcan_ajax_scroll_top_class\";s:19:\".yit-wcan-container\";s:31:\"yith_wcan_ajax_shop_terms_order\";s:12:\"alphabetical\";s:22:\"yith_wcan_custom_style\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (1361,'berocket_admin_notices','a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:131:\"http://tiempocreativo.com.mx/itoffice.com.mx/web/content/plugins/woocommerce-ajax-filters/includes/../images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.4237288135593220150809656843193806707859039306640625;}}}}}}','yes');
INSERT INTO `wp_options` VALUES (1362,'br_filters_options','a:18:{s:13:\"br_opened_tab\";s:7:\"general\";s:19:\"no_products_message\";s:43:\"There are no products meeting your criteria\";s:17:\"no_products_class\";s:0:\"\";s:15:\"control_sorting\";s:1:\"0\";s:18:\"products_holder_id\";s:11:\"ul.products\";s:30:\"woocommerce_result_count_class\";s:25:\".woocommerce-result-count\";s:26:\"woocommerce_ordering_class\";s:25:\"form.woocommerce-ordering\";s:28:\"woocommerce_pagination_class\";s:23:\".woocommerce-pagination\";s:19:\"woocommerce_removes\";a:3:{s:12:\"result_count\";s:0:\"\";s:8:\"ordering\";s:0:\"\";s:10:\"pagination\";s:0:\"\";}s:17:\"seo_friendly_urls\";s:1:\"0\";s:16:\"filters_turn_off\";s:1:\"0\";s:15:\"show_all_values\";s:1:\"0\";s:10:\"hide_value\";a:2:{s:1:\"o\";s:1:\"0\";s:3:\"sel\";s:1:\"0\";}s:15:\"first_page_jump\";s:1:\"0\";s:15:\"scroll_shop_top\";s:1:\"0\";s:17:\"ajax_request_load\";s:1:\"1\";s:23:\"ajax_request_load_style\";s:6:\"jquery\";s:9:\"user_func\";a:3:{s:13:\"before_update\";s:0:\"\";s:9:\"on_update\";s:0:\"\";s:12:\"after_update\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (1363,'widget_berocket_aapf_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1364,'berocket_current_displayed_notice','a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:131:\"http://tiempocreativo.com.mx/itoffice.com.mx/web/content/plugins/woocommerce-ajax-filters/includes/../images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.4237288135593220150809656843193806707859039306640625;}}','yes');
INSERT INTO `wp_options` VALUES (1365,'theme_mods_default','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1505267156;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,10,'_sku','94602XP');
INSERT INTO `wp_postmeta` VALUES (7,10,'_regular_price','2198.00');
INSERT INTO `wp_postmeta` VALUES (8,10,'_sale_price','2044.14');
INSERT INTO `wp_postmeta` VALUES (9,10,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (10,10,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (11,10,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (12,10,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (13,10,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (14,10,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (15,10,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (16,10,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (17,10,'_weight','');
INSERT INTO `wp_postmeta` VALUES (18,10,'_length','');
INSERT INTO `wp_postmeta` VALUES (19,10,'_width','');
INSERT INTO `wp_postmeta` VALUES (20,10,'_height','');
INSERT INTO `wp_postmeta` VALUES (21,10,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (22,10,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (23,10,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (24,10,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (25,10,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (26,10,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (27,10,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (28,10,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (29,10,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (30,10,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (31,10,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (32,10,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (33,10,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (34,10,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (35,10,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (36,10,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (37,10,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (38,10,'_price','2044.14');
INSERT INTO `wp_postmeta` VALUES (39,11,'_sku','59301VP');
INSERT INTO `wp_postmeta` VALUES (40,11,'_regular_price','1740.00');
INSERT INTO `wp_postmeta` VALUES (41,11,'_sale_price','1618.20');
INSERT INTO `wp_postmeta` VALUES (42,11,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (43,11,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (44,11,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (45,11,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (46,11,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (47,11,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (48,11,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (49,11,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (50,11,'_weight','');
INSERT INTO `wp_postmeta` VALUES (51,11,'_length','');
INSERT INTO `wp_postmeta` VALUES (52,11,'_width','');
INSERT INTO `wp_postmeta` VALUES (53,11,'_height','');
INSERT INTO `wp_postmeta` VALUES (54,11,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (55,11,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (56,11,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (57,11,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (58,11,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (59,11,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (60,11,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (61,11,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (62,11,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (63,11,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (64,11,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (65,11,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (66,11,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (67,11,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (68,11,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (69,11,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (70,11,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (71,11,'_price','1618.20');
INSERT INTO `wp_postmeta` VALUES (72,12,'_sku','56300ZO');
INSERT INTO `wp_postmeta` VALUES (73,12,'_regular_price','1891.00');
INSERT INTO `wp_postmeta` VALUES (74,12,'_sale_price','1758.63');
INSERT INTO `wp_postmeta` VALUES (75,12,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (76,12,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (77,12,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (78,12,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (79,12,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (80,12,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (81,12,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (82,12,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (83,12,'_weight','');
INSERT INTO `wp_postmeta` VALUES (84,12,'_length','');
INSERT INTO `wp_postmeta` VALUES (85,12,'_width','');
INSERT INTO `wp_postmeta` VALUES (86,12,'_height','');
INSERT INTO `wp_postmeta` VALUES (87,12,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (88,12,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (89,12,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (90,12,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (91,12,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (92,12,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (93,12,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (94,12,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (95,12,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (96,12,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (97,12,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (98,12,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (99,12,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (100,12,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (101,12,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (102,12,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (103,12,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (104,12,'_price','1758.63');
INSERT INTO `wp_postmeta` VALUES (105,13,'_sku','91400HW');
INSERT INTO `wp_postmeta` VALUES (106,13,'_regular_price','530.00');
INSERT INTO `wp_postmeta` VALUES (107,13,'_sale_price','492.90');
INSERT INTO `wp_postmeta` VALUES (108,13,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (109,13,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (110,13,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (111,13,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (112,13,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (113,13,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (114,13,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (115,13,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (116,13,'_weight','');
INSERT INTO `wp_postmeta` VALUES (117,13,'_length','');
INSERT INTO `wp_postmeta` VALUES (118,13,'_width','');
INSERT INTO `wp_postmeta` VALUES (119,13,'_height','');
INSERT INTO `wp_postmeta` VALUES (120,13,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (121,13,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (122,13,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (123,13,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (124,13,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (125,13,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (126,13,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (127,13,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (128,13,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (129,13,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (130,13,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (131,13,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (132,13,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (133,13,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (134,13,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (135,13,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (136,13,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (137,13,'_price','492.90');
INSERT INTO `wp_postmeta` VALUES (138,14,'_sku','990002I');
INSERT INTO `wp_postmeta` VALUES (139,14,'_regular_price','550.00');
INSERT INTO `wp_postmeta` VALUES (140,14,'_sale_price','511.50');
INSERT INTO `wp_postmeta` VALUES (141,14,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (142,14,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (143,14,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (144,14,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (145,14,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (146,14,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (147,14,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (148,14,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (149,14,'_weight','');
INSERT INTO `wp_postmeta` VALUES (150,14,'_length','');
INSERT INTO `wp_postmeta` VALUES (151,14,'_width','');
INSERT INTO `wp_postmeta` VALUES (152,14,'_height','');
INSERT INTO `wp_postmeta` VALUES (153,14,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (154,14,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (155,14,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (156,14,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (157,14,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (158,14,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (159,14,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (160,14,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (161,14,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (162,14,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (163,14,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (164,14,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (165,14,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (166,14,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (167,14,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (168,14,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (169,14,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (170,14,'_price','511.50');
INSERT INTO `wp_postmeta` VALUES (171,15,'_sku','A1700OI');
INSERT INTO `wp_postmeta` VALUES (172,15,'_regular_price','430.00');
INSERT INTO `wp_postmeta` VALUES (173,15,'_sale_price','399.90');
INSERT INTO `wp_postmeta` VALUES (174,15,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (175,15,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (176,15,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (177,15,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (178,15,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (179,15,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (180,15,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (181,15,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (182,15,'_weight','');
INSERT INTO `wp_postmeta` VALUES (183,15,'_length','');
INSERT INTO `wp_postmeta` VALUES (184,15,'_width','');
INSERT INTO `wp_postmeta` VALUES (185,15,'_height','');
INSERT INTO `wp_postmeta` VALUES (186,15,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (187,15,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (188,15,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (189,15,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (190,15,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (191,15,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (192,15,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (193,15,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (194,15,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (195,15,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (196,15,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (197,15,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (198,15,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (199,15,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (200,15,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (201,15,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (202,15,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (203,15,'_price','399.90');
INSERT INTO `wp_postmeta` VALUES (204,16,'_sku','UP271APC04');
INSERT INTO `wp_postmeta` VALUES (205,16,'_regular_price','1380.00');
INSERT INTO `wp_postmeta` VALUES (206,16,'_sale_price','1283.40');
INSERT INTO `wp_postmeta` VALUES (207,16,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (208,16,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (209,16,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (210,16,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (211,16,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (212,16,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (213,16,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (214,16,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (215,16,'_weight','');
INSERT INTO `wp_postmeta` VALUES (216,16,'_length','');
INSERT INTO `wp_postmeta` VALUES (217,16,'_width','');
INSERT INTO `wp_postmeta` VALUES (218,16,'_height','');
INSERT INTO `wp_postmeta` VALUES (219,16,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (220,16,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (221,16,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (222,16,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (223,16,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (224,16,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (225,16,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (226,16,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (227,16,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (228,16,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (229,16,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (230,16,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (231,16,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (232,16,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (233,16,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (234,16,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (235,16,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (236,16,'_price','1283.40');
INSERT INTO `wp_postmeta` VALUES (237,17,'_sku','91400FO');
INSERT INTO `wp_postmeta` VALUES (238,17,'_regular_price','262.00');
INSERT INTO `wp_postmeta` VALUES (239,17,'_sale_price','243.66');
INSERT INTO `wp_postmeta` VALUES (240,17,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (241,17,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (242,17,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (243,17,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (244,17,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (245,17,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (246,17,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (247,17,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (248,17,'_weight','');
INSERT INTO `wp_postmeta` VALUES (249,17,'_length','');
INSERT INTO `wp_postmeta` VALUES (250,17,'_width','');
INSERT INTO `wp_postmeta` VALUES (251,17,'_height','');
INSERT INTO `wp_postmeta` VALUES (252,17,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (253,17,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (254,17,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (255,17,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (256,17,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (257,17,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (258,17,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (259,17,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (260,17,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (261,17,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (262,17,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (263,17,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (264,17,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (265,17,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (266,17,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (267,17,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (268,17,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (269,17,'_price','243.66');
INSERT INTO `wp_postmeta` VALUES (270,18,'_sku','99000AW');
INSERT INTO `wp_postmeta` VALUES (271,18,'_regular_price','257.00');
INSERT INTO `wp_postmeta` VALUES (272,18,'_sale_price','239.01');
INSERT INTO `wp_postmeta` VALUES (273,18,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (274,18,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (275,18,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (276,18,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (277,18,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (278,18,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (279,18,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (280,18,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (281,18,'_weight','');
INSERT INTO `wp_postmeta` VALUES (282,18,'_length','');
INSERT INTO `wp_postmeta` VALUES (283,18,'_width','');
INSERT INTO `wp_postmeta` VALUES (284,18,'_height','');
INSERT INTO `wp_postmeta` VALUES (285,18,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (286,18,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (287,18,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (288,18,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (289,18,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (290,18,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (291,18,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (292,18,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (293,18,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (294,18,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (295,18,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (296,18,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (297,18,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (298,18,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (299,18,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (300,18,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (301,18,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (302,18,'_price','239.01');
INSERT INTO `wp_postmeta` VALUES (303,19,'_sku','A1700AT');
INSERT INTO `wp_postmeta` VALUES (304,19,'_regular_price','190.00');
INSERT INTO `wp_postmeta` VALUES (305,19,'_sale_price','176.70');
INSERT INTO `wp_postmeta` VALUES (306,19,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (307,19,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (308,19,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (309,19,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (310,19,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (311,19,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (312,19,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (313,19,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (314,19,'_weight','');
INSERT INTO `wp_postmeta` VALUES (315,19,'_length','');
INSERT INTO `wp_postmeta` VALUES (316,19,'_width','');
INSERT INTO `wp_postmeta` VALUES (317,19,'_height','');
INSERT INTO `wp_postmeta` VALUES (318,19,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (319,19,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (320,19,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (321,19,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (322,19,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (323,19,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (324,19,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (325,19,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (326,19,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (327,19,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (328,19,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (329,19,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (330,19,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (331,19,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (332,19,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (333,19,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (334,19,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (335,19,'_price','176.70');
INSERT INTO `wp_postmeta` VALUES (336,20,'_sku','407001P');
INSERT INTO `wp_postmeta` VALUES (337,20,'_regular_price','350.00');
INSERT INTO `wp_postmeta` VALUES (338,20,'_sale_price','325.50');
INSERT INTO `wp_postmeta` VALUES (339,20,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (340,20,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (341,20,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (342,20,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (343,20,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (344,20,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (345,20,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (346,20,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (347,20,'_weight','');
INSERT INTO `wp_postmeta` VALUES (348,20,'_length','');
INSERT INTO `wp_postmeta` VALUES (349,20,'_width','');
INSERT INTO `wp_postmeta` VALUES (350,20,'_height','');
INSERT INTO `wp_postmeta` VALUES (351,20,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (352,20,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (353,20,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (354,20,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (355,20,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (356,20,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (357,20,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (358,20,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (359,20,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (360,20,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (361,20,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (362,20,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (363,20,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (364,20,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (365,20,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (366,20,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (367,20,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (368,20,'_price','325.50');
INSERT INTO `wp_postmeta` VALUES (369,21,'_sku','B40001H');
INSERT INTO `wp_postmeta` VALUES (370,21,'_regular_price','490.00');
INSERT INTO `wp_postmeta` VALUES (371,21,'_sale_price','455.70');
INSERT INTO `wp_postmeta` VALUES (372,21,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (373,21,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (374,21,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (375,21,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (376,21,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (377,21,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (378,21,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (379,21,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (380,21,'_weight','');
INSERT INTO `wp_postmeta` VALUES (381,21,'_length','');
INSERT INTO `wp_postmeta` VALUES (382,21,'_width','');
INSERT INTO `wp_postmeta` VALUES (383,21,'_height','');
INSERT INTO `wp_postmeta` VALUES (384,21,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (385,21,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (386,21,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (387,21,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (388,21,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (389,21,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (390,21,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (391,21,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (392,21,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (393,21,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (394,21,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (395,21,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (396,21,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (397,21,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (398,21,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (399,21,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (400,21,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (401,21,'_price','455.70');
INSERT INTO `wp_postmeta` VALUES (402,22,'_sku','A2100DL');
INSERT INTO `wp_postmeta` VALUES (403,22,'_regular_price','3780.00');
INSERT INTO `wp_postmeta` VALUES (404,22,'_sale_price','3515.40');
INSERT INTO `wp_postmeta` VALUES (405,22,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (406,22,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (407,22,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (408,22,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (409,22,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (410,22,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (411,22,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (412,22,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (413,22,'_weight','');
INSERT INTO `wp_postmeta` VALUES (414,22,'_length','');
INSERT INTO `wp_postmeta` VALUES (415,22,'_width','');
INSERT INTO `wp_postmeta` VALUES (416,22,'_height','');
INSERT INTO `wp_postmeta` VALUES (417,22,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (418,22,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (419,22,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (420,22,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (421,22,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (422,22,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (423,22,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (424,22,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (425,22,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (426,22,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (427,22,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (428,22,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (429,22,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (430,22,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (431,22,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (432,22,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (433,22,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (434,22,'_price','3515.40');
INSERT INTO `wp_postmeta` VALUES (435,23,'_sku','AHD710-1TU3-CBK');
INSERT INTO `wp_postmeta` VALUES (436,23,'_regular_price','1450.00');
INSERT INTO `wp_postmeta` VALUES (437,23,'_sale_price','1348.50');
INSERT INTO `wp_postmeta` VALUES (438,23,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (439,23,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (440,23,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (441,23,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (442,23,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (443,23,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (444,23,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (445,23,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (446,23,'_weight','');
INSERT INTO `wp_postmeta` VALUES (447,23,'_length','');
INSERT INTO `wp_postmeta` VALUES (448,23,'_width','');
INSERT INTO `wp_postmeta` VALUES (449,23,'_height','');
INSERT INTO `wp_postmeta` VALUES (450,23,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (451,23,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (452,23,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (453,23,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (454,23,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (455,23,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (456,23,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (457,23,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (458,23,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (459,23,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (460,23,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (461,23,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (462,23,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (463,23,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (464,23,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (465,23,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (466,23,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (467,23,'_price','1348.50');
INSERT INTO `wp_postmeta` VALUES (468,24,'_sku','AHD720-1TU3-CBL');
INSERT INTO `wp_postmeta` VALUES (469,24,'_regular_price','1521.00');
INSERT INTO `wp_postmeta` VALUES (470,24,'_sale_price','1414.53');
INSERT INTO `wp_postmeta` VALUES (471,24,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (472,24,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (473,24,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (474,24,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (475,24,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (476,24,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (477,24,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (478,24,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (479,24,'_weight','');
INSERT INTO `wp_postmeta` VALUES (480,24,'_length','');
INSERT INTO `wp_postmeta` VALUES (481,24,'_width','');
INSERT INTO `wp_postmeta` VALUES (482,24,'_height','');
INSERT INTO `wp_postmeta` VALUES (483,24,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (484,24,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (485,24,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (486,24,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (487,24,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (488,24,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (489,24,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (490,24,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (491,24,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (492,24,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (493,24,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (494,24,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (495,24,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (496,24,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (497,24,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (498,24,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (499,24,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (500,24,'_price','1414.53');
INSERT INTO `wp_postmeta` VALUES (501,25,'_sku','AHV620-1TU3-CBK');
INSERT INTO `wp_postmeta` VALUES (502,25,'_regular_price','1799.00');
INSERT INTO `wp_postmeta` VALUES (503,25,'_sale_price','1673.07');
INSERT INTO `wp_postmeta` VALUES (504,25,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (505,25,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (506,25,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (507,25,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (508,25,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (509,25,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (510,25,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (511,25,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (512,25,'_weight','');
INSERT INTO `wp_postmeta` VALUES (513,25,'_length','');
INSERT INTO `wp_postmeta` VALUES (514,25,'_width','');
INSERT INTO `wp_postmeta` VALUES (515,25,'_height','');
INSERT INTO `wp_postmeta` VALUES (516,25,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (517,25,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (518,25,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (519,25,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (520,25,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (521,25,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (522,25,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (523,25,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (524,25,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (525,25,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (526,25,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (527,25,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (528,25,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (529,25,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (530,25,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (531,25,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (532,25,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (533,25,'_price','1673.07');
INSERT INTO `wp_postmeta` VALUES (534,26,'_sku','9910088');
INSERT INTO `wp_postmeta` VALUES (535,26,'_regular_price','210.00');
INSERT INTO `wp_postmeta` VALUES (536,26,'_sale_price','195.30');
INSERT INTO `wp_postmeta` VALUES (537,26,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (538,26,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (539,26,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (540,26,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (541,26,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (542,26,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (543,26,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (544,26,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (545,26,'_weight','');
INSERT INTO `wp_postmeta` VALUES (546,26,'_length','');
INSERT INTO `wp_postmeta` VALUES (547,26,'_width','');
INSERT INTO `wp_postmeta` VALUES (548,26,'_height','');
INSERT INTO `wp_postmeta` VALUES (549,26,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (550,26,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (551,26,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (552,26,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (553,26,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (554,26,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (555,26,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (556,26,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (557,26,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (558,26,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (559,26,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (560,26,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (561,26,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (562,26,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (563,26,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (564,26,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (565,26,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (566,26,'_price','195.30');
INSERT INTO `wp_postmeta` VALUES (567,27,'_sku','94601C0');
INSERT INTO `wp_postmeta` VALUES (568,27,'_regular_price','2282.00');
INSERT INTO `wp_postmeta` VALUES (569,27,'_sale_price','2122.26');
INSERT INTO `wp_postmeta` VALUES (570,27,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (571,27,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (572,27,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (573,27,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (574,27,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (575,27,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (576,27,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (577,27,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (578,27,'_weight','');
INSERT INTO `wp_postmeta` VALUES (579,27,'_length','');
INSERT INTO `wp_postmeta` VALUES (580,27,'_width','');
INSERT INTO `wp_postmeta` VALUES (581,27,'_height','');
INSERT INTO `wp_postmeta` VALUES (582,27,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (583,27,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (584,27,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (585,27,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (586,27,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (587,27,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (588,27,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (589,27,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (590,27,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (591,27,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (592,27,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (593,27,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (594,27,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (595,27,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (596,27,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (597,27,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (598,27,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (599,27,'_price','2122.26');
INSERT INTO `wp_postmeta` VALUES (600,28,'_sku','94601W0');
INSERT INTO `wp_postmeta` VALUES (601,28,'_regular_price','2750.00');
INSERT INTO `wp_postmeta` VALUES (602,28,'_sale_price','2557.50');
INSERT INTO `wp_postmeta` VALUES (603,28,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (604,28,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (605,28,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (606,28,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (607,28,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (608,28,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (609,28,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (610,28,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (611,28,'_weight','');
INSERT INTO `wp_postmeta` VALUES (612,28,'_length','');
INSERT INTO `wp_postmeta` VALUES (613,28,'_width','');
INSERT INTO `wp_postmeta` VALUES (614,28,'_height','');
INSERT INTO `wp_postmeta` VALUES (615,28,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (616,28,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (617,28,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (618,28,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (619,28,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (620,28,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (621,28,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (622,28,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (623,28,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (624,28,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (625,28,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (626,28,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (627,28,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (628,28,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (629,28,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (630,28,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (631,28,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (632,28,'_price','2557.50');
INSERT INTO `wp_postmeta` VALUES (633,29,'_sku','94603IR');
INSERT INTO `wp_postmeta` VALUES (634,29,'_regular_price','2926.00');
INSERT INTO `wp_postmeta` VALUES (635,29,'_sale_price','2721.18');
INSERT INTO `wp_postmeta` VALUES (636,29,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (637,29,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (638,29,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (639,29,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (640,29,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (641,29,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (642,29,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (643,29,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (644,29,'_weight','');
INSERT INTO `wp_postmeta` VALUES (645,29,'_length','');
INSERT INTO `wp_postmeta` VALUES (646,29,'_width','');
INSERT INTO `wp_postmeta` VALUES (647,29,'_height','');
INSERT INTO `wp_postmeta` VALUES (648,29,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (649,29,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (650,29,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (651,29,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (652,29,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (653,29,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (654,29,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (655,29,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (656,29,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (657,29,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (658,29,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (659,29,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (660,29,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (661,29,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (662,29,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (663,29,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (664,29,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (665,29,'_price','2721.18');
INSERT INTO `wp_postmeta` VALUES (666,30,'_sku','94603JF');
INSERT INTO `wp_postmeta` VALUES (667,30,'_regular_price','4778.00');
INSERT INTO `wp_postmeta` VALUES (668,30,'_sale_price','4443.54');
INSERT INTO `wp_postmeta` VALUES (669,30,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (670,30,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (671,30,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (672,30,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (673,30,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (674,30,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (675,30,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (676,30,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (677,30,'_weight','');
INSERT INTO `wp_postmeta` VALUES (678,30,'_length','');
INSERT INTO `wp_postmeta` VALUES (679,30,'_width','');
INSERT INTO `wp_postmeta` VALUES (680,30,'_height','');
INSERT INTO `wp_postmeta` VALUES (681,30,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (682,30,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (683,30,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (684,30,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (685,30,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (686,30,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (687,30,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (688,30,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (689,30,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (690,30,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (691,30,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (692,30,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (693,30,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (694,30,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (695,30,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (696,30,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (697,30,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (698,30,'_price','4443.54');
INSERT INTO `wp_postmeta` VALUES (699,31,'_sku','A02010F');
INSERT INTO `wp_postmeta` VALUES (700,31,'_regular_price','530.00');
INSERT INTO `wp_postmeta` VALUES (701,31,'_sale_price','492.90');
INSERT INTO `wp_postmeta` VALUES (702,31,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (703,31,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (704,31,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (705,31,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (706,31,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (707,31,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (708,31,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (709,31,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (710,31,'_weight','');
INSERT INTO `wp_postmeta` VALUES (711,31,'_length','');
INSERT INTO `wp_postmeta` VALUES (712,31,'_width','');
INSERT INTO `wp_postmeta` VALUES (713,31,'_height','');
INSERT INTO `wp_postmeta` VALUES (714,31,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (715,31,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (716,31,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (717,31,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (718,31,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (719,31,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (720,31,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (721,31,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (722,31,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (723,31,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (724,31,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (725,31,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (726,31,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (727,31,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (728,31,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (729,31,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (730,31,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (731,31,'_price','492.90');
INSERT INTO `wp_postmeta` VALUES (732,32,'_sku','A8400EI');
INSERT INTO `wp_postmeta` VALUES (733,32,'_regular_price','630.00');
INSERT INTO `wp_postmeta` VALUES (734,32,'_sale_price','585.90');
INSERT INTO `wp_postmeta` VALUES (735,32,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (736,32,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (737,32,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (738,32,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (739,32,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (740,32,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (741,32,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (742,32,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (743,32,'_weight','');
INSERT INTO `wp_postmeta` VALUES (744,32,'_length','');
INSERT INTO `wp_postmeta` VALUES (745,32,'_width','');
INSERT INTO `wp_postmeta` VALUES (746,32,'_height','');
INSERT INTO `wp_postmeta` VALUES (747,32,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (748,32,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (749,32,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (750,32,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (751,32,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (752,32,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (753,32,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (754,32,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (755,32,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (756,32,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (757,32,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (758,32,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (759,32,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (760,32,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (761,32,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (762,32,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (763,32,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (764,32,'_price','585.90');
INSERT INTO `wp_postmeta` VALUES (765,33,'_sku','A8400EC');
INSERT INTO `wp_postmeta` VALUES (766,33,'_regular_price','450.00');
INSERT INTO `wp_postmeta` VALUES (767,33,'_sale_price','418.50');
INSERT INTO `wp_postmeta` VALUES (768,33,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (769,33,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (770,33,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (771,33,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (772,33,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (773,33,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (774,33,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (775,33,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (776,33,'_weight','');
INSERT INTO `wp_postmeta` VALUES (777,33,'_length','');
INSERT INTO `wp_postmeta` VALUES (778,33,'_width','');
INSERT INTO `wp_postmeta` VALUES (779,33,'_height','');
INSERT INTO `wp_postmeta` VALUES (780,33,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (781,33,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (782,33,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (783,33,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (784,33,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (785,33,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (786,33,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (787,33,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (788,33,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (789,33,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (790,33,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (791,33,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (792,33,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (793,33,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (794,33,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (795,33,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (796,33,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (797,33,'_price','418.50');
INSERT INTO `wp_postmeta` VALUES (798,34,'_sku','A8400Z3');
INSERT INTO `wp_postmeta` VALUES (799,34,'_regular_price','630.00');
INSERT INTO `wp_postmeta` VALUES (800,34,'_sale_price','585.90');
INSERT INTO `wp_postmeta` VALUES (801,34,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (802,34,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (803,34,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (804,34,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (805,34,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (806,34,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (807,34,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (808,34,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (809,34,'_weight','');
INSERT INTO `wp_postmeta` VALUES (810,34,'_length','');
INSERT INTO `wp_postmeta` VALUES (811,34,'_width','');
INSERT INTO `wp_postmeta` VALUES (812,34,'_height','');
INSERT INTO `wp_postmeta` VALUES (813,34,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (814,34,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (815,34,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (816,34,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (817,34,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (818,34,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (819,34,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (820,34,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (821,34,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (822,34,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (823,34,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (824,34,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (825,34,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (826,34,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (827,34,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (828,34,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (829,34,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (830,34,'_price','585.90');
INSERT INTO `wp_postmeta` VALUES (831,35,'_sku','PV150G');
INSERT INTO `wp_postmeta` VALUES (832,35,'_regular_price','6570.00');
INSERT INTO `wp_postmeta` VALUES (833,35,'_sale_price','6110.10');
INSERT INTO `wp_postmeta` VALUES (834,35,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (835,35,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (836,35,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (837,35,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (838,35,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (839,35,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (840,35,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (841,35,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (842,35,'_weight','');
INSERT INTO `wp_postmeta` VALUES (843,35,'_length','');
INSERT INTO `wp_postmeta` VALUES (844,35,'_width','');
INSERT INTO `wp_postmeta` VALUES (845,35,'_height','');
INSERT INTO `wp_postmeta` VALUES (846,35,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (847,35,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (848,35,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (849,35,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (850,35,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (851,35,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (852,35,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (853,35,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (854,35,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (855,35,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (856,35,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (857,35,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (858,35,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (859,35,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (860,35,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (861,35,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (862,35,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (863,35,'_price','6110.10');
INSERT INTO `wp_postmeta` VALUES (864,36,'_sku','26500HE');
INSERT INTO `wp_postmeta` VALUES (865,36,'_regular_price','6717.00');
INSERT INTO `wp_postmeta` VALUES (866,36,'_sale_price','6246.81');
INSERT INTO `wp_postmeta` VALUES (867,36,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (868,36,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (869,36,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (870,36,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (871,36,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (872,36,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (873,36,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (874,36,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (875,36,'_weight','');
INSERT INTO `wp_postmeta` VALUES (876,36,'_length','');
INSERT INTO `wp_postmeta` VALUES (877,36,'_width','');
INSERT INTO `wp_postmeta` VALUES (878,36,'_height','');
INSERT INTO `wp_postmeta` VALUES (879,36,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (880,36,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (881,36,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (882,36,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (883,36,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (884,36,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (885,36,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (886,36,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (887,36,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (888,36,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (889,36,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (890,36,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (891,36,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (892,36,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (893,36,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (894,36,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (895,36,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (896,36,'_price','6246.81');
INSERT INTO `wp_postmeta` VALUES (897,37,'_sku','91400EJ');
INSERT INTO `wp_postmeta` VALUES (898,37,'_regular_price','470.00');
INSERT INTO `wp_postmeta` VALUES (899,37,'_sale_price','437.10');
INSERT INTO `wp_postmeta` VALUES (900,37,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (901,37,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (902,37,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (903,37,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (904,37,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (905,37,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (906,37,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (907,37,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (908,37,'_weight','');
INSERT INTO `wp_postmeta` VALUES (909,37,'_length','');
INSERT INTO `wp_postmeta` VALUES (910,37,'_width','');
INSERT INTO `wp_postmeta` VALUES (911,37,'_height','');
INSERT INTO `wp_postmeta` VALUES (912,37,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (913,37,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (914,37,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (915,37,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (916,37,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (917,37,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (918,37,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (919,37,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (920,37,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (921,37,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (922,37,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (923,37,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (924,37,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (925,37,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (926,37,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (927,37,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (928,37,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (929,37,'_price','437.10');
INSERT INTO `wp_postmeta` VALUES (930,38,'_sku','990008D');
INSERT INTO `wp_postmeta` VALUES (931,38,'_regular_price','485.00');
INSERT INTO `wp_postmeta` VALUES (932,38,'_sale_price','451.05');
INSERT INTO `wp_postmeta` VALUES (933,38,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (934,38,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (935,38,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (936,38,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (937,38,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (938,38,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (939,38,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (940,38,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (941,38,'_weight','');
INSERT INTO `wp_postmeta` VALUES (942,38,'_length','');
INSERT INTO `wp_postmeta` VALUES (943,38,'_width','');
INSERT INTO `wp_postmeta` VALUES (944,38,'_height','');
INSERT INTO `wp_postmeta` VALUES (945,38,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (946,38,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (947,38,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (948,38,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (949,38,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (950,38,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (951,38,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (952,38,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (953,38,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (954,38,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (955,38,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (956,38,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (957,38,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (958,38,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (959,38,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (960,38,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (961,38,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (962,38,'_price','451.05');
INSERT INTO `wp_postmeta` VALUES (963,39,'_sku','951001A');
INSERT INTO `wp_postmeta` VALUES (964,39,'_regular_price','60.00');
INSERT INTO `wp_postmeta` VALUES (965,39,'_sale_price','55.80');
INSERT INTO `wp_postmeta` VALUES (966,39,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (967,39,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (968,39,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (969,39,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (970,39,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (971,39,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (972,39,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (973,39,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (974,39,'_weight','');
INSERT INTO `wp_postmeta` VALUES (975,39,'_length','');
INSERT INTO `wp_postmeta` VALUES (976,39,'_width','');
INSERT INTO `wp_postmeta` VALUES (977,39,'_height','');
INSERT INTO `wp_postmeta` VALUES (978,39,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (979,39,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (980,39,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (981,39,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (982,39,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (983,39,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (984,39,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (985,39,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (986,39,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (987,39,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (988,39,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (989,39,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (990,39,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (991,39,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (992,39,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (993,39,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (994,39,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (995,39,'_price','55.80');
INSERT INTO `wp_postmeta` VALUES (996,40,'_sku','A170030');
INSERT INTO `wp_postmeta` VALUES (997,40,'_regular_price','50.00');
INSERT INTO `wp_postmeta` VALUES (998,40,'_sale_price','46.50');
INSERT INTO `wp_postmeta` VALUES (999,40,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1000,40,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1001,40,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1002,40,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1003,40,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1004,40,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1005,40,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1006,40,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1007,40,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1008,40,'_length','');
INSERT INTO `wp_postmeta` VALUES (1009,40,'_width','');
INSERT INTO `wp_postmeta` VALUES (1010,40,'_height','');
INSERT INTO `wp_postmeta` VALUES (1011,40,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1012,40,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1013,40,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1014,40,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1015,40,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1016,40,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1017,40,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1018,40,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1019,40,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1020,40,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1021,40,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1022,40,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1023,40,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1024,40,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1025,40,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1026,40,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1027,40,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1028,40,'_price','46.50');
INSERT INTO `wp_postmeta` VALUES (1029,41,'_sku','951001P');
INSERT INTO `wp_postmeta` VALUES (1030,41,'_regular_price','107.00');
INSERT INTO `wp_postmeta` VALUES (1031,41,'_sale_price','99.51');
INSERT INTO `wp_postmeta` VALUES (1032,41,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1033,41,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1034,41,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1035,41,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1036,41,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1037,41,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1038,41,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1039,41,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1040,41,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1041,41,'_length','');
INSERT INTO `wp_postmeta` VALUES (1042,41,'_width','');
INSERT INTO `wp_postmeta` VALUES (1043,41,'_height','');
INSERT INTO `wp_postmeta` VALUES (1044,41,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1045,41,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1046,41,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1047,41,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1048,41,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1049,41,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1050,41,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1051,41,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1052,41,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1053,41,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1054,41,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1055,41,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1056,41,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1057,41,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1058,41,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1059,41,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1060,41,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1061,41,'_price','99.51');
INSERT INTO `wp_postmeta` VALUES (1062,42,'_sku','A17002Y');
INSERT INTO `wp_postmeta` VALUES (1063,42,'_regular_price','90');
INSERT INTO `wp_postmeta` VALUES (1064,42,'_sale_price','83.70');
INSERT INTO `wp_postmeta` VALUES (1065,42,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1066,42,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1067,42,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1068,42,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1069,42,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1070,42,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1071,42,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1072,42,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1073,42,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1074,42,'_length','');
INSERT INTO `wp_postmeta` VALUES (1075,42,'_width','');
INSERT INTO `wp_postmeta` VALUES (1076,42,'_height','');
INSERT INTO `wp_postmeta` VALUES (1077,42,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1078,42,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1079,42,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1080,42,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1081,42,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1082,42,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1083,42,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1084,42,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1085,42,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1086,42,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1087,42,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1088,42,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1089,42,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1090,42,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1091,42,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1092,42,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1093,42,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1094,42,'_price','83.70');
INSERT INTO `wp_postmeta` VALUES (1095,43,'_sku','951001T');
INSERT INTO `wp_postmeta` VALUES (1096,43,'_regular_price','50.00');
INSERT INTO `wp_postmeta` VALUES (1097,43,'_sale_price','46.50');
INSERT INTO `wp_postmeta` VALUES (1098,43,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1099,43,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1100,43,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1101,43,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1102,43,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1103,43,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1104,43,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1105,43,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1106,43,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1107,43,'_length','');
INSERT INTO `wp_postmeta` VALUES (1108,43,'_width','');
INSERT INTO `wp_postmeta` VALUES (1109,43,'_height','');
INSERT INTO `wp_postmeta` VALUES (1110,43,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1111,43,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1112,43,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1113,43,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1114,43,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1115,43,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1116,43,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1117,43,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1118,43,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1119,43,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1120,43,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1121,43,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1122,43,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1123,43,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1124,43,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1125,43,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1126,43,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1127,43,'_price','46.50');
INSERT INTO `wp_postmeta` VALUES (1128,44,'_sku','951001O');
INSERT INTO `wp_postmeta` VALUES (1129,44,'_regular_price','60.00');
INSERT INTO `wp_postmeta` VALUES (1130,44,'_sale_price','55.80');
INSERT INTO `wp_postmeta` VALUES (1131,44,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1132,44,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1133,44,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1134,44,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1135,44,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1136,44,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1137,44,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1138,44,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1139,44,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1140,44,'_length','');
INSERT INTO `wp_postmeta` VALUES (1141,44,'_width','');
INSERT INTO `wp_postmeta` VALUES (1142,44,'_height','');
INSERT INTO `wp_postmeta` VALUES (1143,44,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1144,44,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1145,44,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1146,44,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1147,44,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1148,44,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1149,44,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1150,44,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1151,44,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1152,44,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1153,44,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1154,44,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1155,44,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1156,44,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1157,44,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1158,44,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1159,44,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1160,44,'_price','55.80');
INSERT INTO `wp_postmeta` VALUES (1161,45,'_sku','99100QS');
INSERT INTO `wp_postmeta` VALUES (1162,45,'_regular_price','234.00');
INSERT INTO `wp_postmeta` VALUES (1163,45,'_sale_price','217.62');
INSERT INTO `wp_postmeta` VALUES (1164,45,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1165,45,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1166,45,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1167,45,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1168,45,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1169,45,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1170,45,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1171,45,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1172,45,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1173,45,'_length','');
INSERT INTO `wp_postmeta` VALUES (1174,45,'_width','');
INSERT INTO `wp_postmeta` VALUES (1175,45,'_height','');
INSERT INTO `wp_postmeta` VALUES (1176,45,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1177,45,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1178,45,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1179,45,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1180,45,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1181,45,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1182,45,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1183,45,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1184,45,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1185,45,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1186,45,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1187,45,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1188,45,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1189,45,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1190,45,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1191,45,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1192,45,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1193,45,'_price','217.62');
INSERT INTO `wp_postmeta` VALUES (1194,46,'_sku','99100QT');
INSERT INTO `wp_postmeta` VALUES (1195,46,'_regular_price','324.00');
INSERT INTO `wp_postmeta` VALUES (1196,46,'_sale_price','301.32');
INSERT INTO `wp_postmeta` VALUES (1197,46,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1198,46,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1199,46,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1200,46,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1201,46,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1202,46,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1203,46,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1204,46,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1205,46,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1206,46,'_length','');
INSERT INTO `wp_postmeta` VALUES (1207,46,'_width','');
INSERT INTO `wp_postmeta` VALUES (1208,46,'_height','');
INSERT INTO `wp_postmeta` VALUES (1209,46,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1210,46,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1211,46,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1212,46,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1213,46,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1214,46,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1215,46,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1216,46,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1217,46,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1218,46,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1219,46,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1220,46,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1221,46,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1222,46,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1223,46,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1224,46,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1225,46,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1226,46,'_price','301.32');
INSERT INTO `wp_postmeta` VALUES (1227,47,'_sku','71408J3');
INSERT INTO `wp_postmeta` VALUES (1228,47,'_regular_price','2559.00');
INSERT INTO `wp_postmeta` VALUES (1229,47,'_sale_price','2379.87');
INSERT INTO `wp_postmeta` VALUES (1230,47,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1231,47,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1232,47,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1233,47,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1234,47,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1235,47,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1236,47,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1237,47,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1238,47,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1239,47,'_length','');
INSERT INTO `wp_postmeta` VALUES (1240,47,'_width','');
INSERT INTO `wp_postmeta` VALUES (1241,47,'_height','');
INSERT INTO `wp_postmeta` VALUES (1242,47,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1243,47,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1244,47,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1245,47,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1246,47,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1247,47,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1248,47,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1249,47,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1250,47,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1251,47,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1252,47,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1253,47,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1254,47,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1255,47,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1256,47,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1257,47,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1258,47,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1259,47,'_price','2379.87');
INSERT INTO `wp_postmeta` VALUES (1260,48,'_sku','3110169');
INSERT INTO `wp_postmeta` VALUES (1261,48,'_regular_price','5893.00');
INSERT INTO `wp_postmeta` VALUES (1262,48,'_sale_price','5480.49');
INSERT INTO `wp_postmeta` VALUES (1263,48,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1264,48,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1265,48,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1266,48,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1267,48,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1268,48,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1269,48,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1270,48,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1271,48,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1272,48,'_length','');
INSERT INTO `wp_postmeta` VALUES (1273,48,'_width','');
INSERT INTO `wp_postmeta` VALUES (1274,48,'_height','');
INSERT INTO `wp_postmeta` VALUES (1275,48,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1276,48,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1277,48,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1278,48,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1279,48,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1280,48,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1281,48,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1282,48,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1283,48,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1284,48,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1285,48,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1286,48,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1287,48,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1288,48,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1289,48,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1290,48,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1291,48,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1292,48,'_price','5480.49');
INSERT INTO `wp_postmeta` VALUES (1293,49,'_sku','CE278A');
INSERT INTO `wp_postmeta` VALUES (1294,49,'_regular_price','1674.96');
INSERT INTO `wp_postmeta` VALUES (1295,49,'_sale_price','1557.71');
INSERT INTO `wp_postmeta` VALUES (1296,49,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1297,49,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1298,49,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1299,49,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1300,49,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1301,49,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1302,49,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1303,49,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1304,49,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1305,49,'_length','');
INSERT INTO `wp_postmeta` VALUES (1306,49,'_width','');
INSERT INTO `wp_postmeta` VALUES (1307,49,'_height','');
INSERT INTO `wp_postmeta` VALUES (1308,49,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1309,49,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1310,49,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1311,49,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1312,49,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1313,49,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1314,49,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1315,49,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1316,49,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1317,49,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1318,49,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1319,49,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1320,49,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1321,49,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1322,49,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1323,49,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1324,49,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1325,49,'_price','1557.71');
INSERT INTO `wp_postmeta` VALUES (1326,50,'_sku','006R01160');
INSERT INTO `wp_postmeta` VALUES (1327,50,'_regular_price','1840.00');
INSERT INTO `wp_postmeta` VALUES (1328,50,'_sale_price','1711.20');
INSERT INTO `wp_postmeta` VALUES (1329,50,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1330,50,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1331,50,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1332,50,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1333,50,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1334,50,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1335,50,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1336,50,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1337,50,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1338,50,'_length','');
INSERT INTO `wp_postmeta` VALUES (1339,50,'_width','');
INSERT INTO `wp_postmeta` VALUES (1340,50,'_height','');
INSERT INTO `wp_postmeta` VALUES (1341,50,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1342,50,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1343,50,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1344,50,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1345,50,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1346,50,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1347,50,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1348,50,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1349,50,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1350,50,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1351,50,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1352,50,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1353,50,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1354,50,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1355,50,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1356,50,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1357,50,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1358,50,'_price','1711.20');
INSERT INTO `wp_postmeta` VALUES (1359,51,'_sku','106R01531');
INSERT INTO `wp_postmeta` VALUES (1360,51,'_regular_price','3165.00');
INSERT INTO `wp_postmeta` VALUES (1361,51,'_sale_price','2943.45');
INSERT INTO `wp_postmeta` VALUES (1362,51,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1363,51,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1364,51,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1365,51,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1366,51,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1367,51,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1368,51,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1369,51,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1370,51,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1371,51,'_length','');
INSERT INTO `wp_postmeta` VALUES (1372,51,'_width','');
INSERT INTO `wp_postmeta` VALUES (1373,51,'_height','');
INSERT INTO `wp_postmeta` VALUES (1374,51,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1375,51,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1376,51,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1377,51,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1378,51,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1379,51,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1380,51,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1381,51,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1382,51,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1383,51,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1384,51,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1385,51,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1386,51,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1387,51,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1388,51,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1389,51,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1390,51,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1391,51,'_price','2943.45');
INSERT INTO `wp_postmeta` VALUES (1392,52,'_sku','3500B001AA');
INSERT INTO `wp_postmeta` VALUES (1393,52,'_regular_price','1565.00');
INSERT INTO `wp_postmeta` VALUES (1394,52,'_sale_price','1455.45');
INSERT INTO `wp_postmeta` VALUES (1395,52,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1396,52,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1397,52,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1398,52,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1399,52,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1400,52,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1401,52,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1402,52,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1403,52,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1404,52,'_length','');
INSERT INTO `wp_postmeta` VALUES (1405,52,'_width','');
INSERT INTO `wp_postmeta` VALUES (1406,52,'_height','');
INSERT INTO `wp_postmeta` VALUES (1407,52,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1408,52,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1409,52,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1410,52,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1411,52,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1412,52,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1413,52,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1414,52,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1415,52,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1416,52,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1417,52,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1418,52,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1419,52,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1420,52,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1421,52,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1422,52,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1423,52,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1424,52,'_price','1455.45');
INSERT INTO `wp_postmeta` VALUES (1425,53,'_sku','006R01462');
INSERT INTO `wp_postmeta` VALUES (1426,53,'_regular_price','2452.00');
INSERT INTO `wp_postmeta` VALUES (1427,53,'_sale_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1428,53,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1429,53,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1430,53,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1431,53,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1432,53,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1433,53,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1434,53,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1435,53,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1436,53,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1437,53,'_length','');
INSERT INTO `wp_postmeta` VALUES (1438,53,'_width','');
INSERT INTO `wp_postmeta` VALUES (1439,53,'_height','');
INSERT INTO `wp_postmeta` VALUES (1440,53,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1441,53,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1442,53,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1443,53,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1444,53,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1445,53,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1446,53,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1447,53,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1448,53,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1449,53,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1450,53,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1451,53,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1452,53,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1453,53,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1454,53,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1455,53,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1456,53,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1457,53,'_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1458,54,'_sku','006R01463');
INSERT INTO `wp_postmeta` VALUES (1459,54,'_regular_price','2452.00');
INSERT INTO `wp_postmeta` VALUES (1460,54,'_sale_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1461,54,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1462,54,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1463,54,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1464,54,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1465,54,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1466,54,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1467,54,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1468,54,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1469,54,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1470,54,'_length','');
INSERT INTO `wp_postmeta` VALUES (1471,54,'_width','');
INSERT INTO `wp_postmeta` VALUES (1472,54,'_height','');
INSERT INTO `wp_postmeta` VALUES (1473,54,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1474,54,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1475,54,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1476,54,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1477,54,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1478,54,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1479,54,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1480,54,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1481,54,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1482,54,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1483,54,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1484,54,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1485,54,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1486,54,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1487,54,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1488,54,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1489,54,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1490,54,'_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1491,55,'_sku','006R01464');
INSERT INTO `wp_postmeta` VALUES (1492,55,'_regular_price','2452.00');
INSERT INTO `wp_postmeta` VALUES (1493,55,'_sale_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1494,55,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1495,55,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1496,55,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1497,55,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1498,55,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1499,55,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1500,55,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1501,55,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1502,55,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1503,55,'_length','');
INSERT INTO `wp_postmeta` VALUES (1504,55,'_width','');
INSERT INTO `wp_postmeta` VALUES (1505,55,'_height','');
INSERT INTO `wp_postmeta` VALUES (1506,55,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1507,55,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1508,55,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1509,55,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1510,55,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1511,55,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1512,55,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1513,55,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1514,55,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1515,55,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1516,55,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1517,55,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1518,55,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1519,55,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1520,55,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1521,55,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1522,55,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1523,55,'_price','2280.36');
INSERT INTO `wp_postmeta` VALUES (1524,56,'_sku','CE285A');
INSERT INTO `wp_postmeta` VALUES (1525,56,'_regular_price','1483.00');
INSERT INTO `wp_postmeta` VALUES (1526,56,'_sale_price','1379.19');
INSERT INTO `wp_postmeta` VALUES (1527,56,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1528,56,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1529,56,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1530,56,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1531,56,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1532,56,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1533,56,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1534,56,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1535,56,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1536,56,'_length','');
INSERT INTO `wp_postmeta` VALUES (1537,56,'_width','');
INSERT INTO `wp_postmeta` VALUES (1538,56,'_height','');
INSERT INTO `wp_postmeta` VALUES (1539,56,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1540,56,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1541,56,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1542,56,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1543,56,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1544,56,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1545,56,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1546,56,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1547,56,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1548,56,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1549,56,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1550,56,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1551,56,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1552,56,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1553,56,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1554,56,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1555,56,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1556,56,'_price','1379.19');
INSERT INTO `wp_postmeta` VALUES (1557,57,'_sku','CE311A');
INSERT INTO `wp_postmeta` VALUES (1558,57,'_regular_price','1318.00');
INSERT INTO `wp_postmeta` VALUES (1559,57,'_sale_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1560,57,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1561,57,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1562,57,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1563,57,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1564,57,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1565,57,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1566,57,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1567,57,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1568,57,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1569,57,'_length','');
INSERT INTO `wp_postmeta` VALUES (1570,57,'_width','');
INSERT INTO `wp_postmeta` VALUES (1571,57,'_height','');
INSERT INTO `wp_postmeta` VALUES (1572,57,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1573,57,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1574,57,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1575,57,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1576,57,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1577,57,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1578,57,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1579,57,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1580,57,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1581,57,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1582,57,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1583,57,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1584,57,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1585,57,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1586,57,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1587,57,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1588,57,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1589,57,'_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1590,58,'_sku','CE313A');
INSERT INTO `wp_postmeta` VALUES (1591,58,'_regular_price','1318.00');
INSERT INTO `wp_postmeta` VALUES (1592,58,'_sale_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1593,58,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1594,58,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1595,58,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1596,58,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1597,58,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1598,58,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1599,58,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1600,58,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1601,58,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1602,58,'_length','');
INSERT INTO `wp_postmeta` VALUES (1603,58,'_width','');
INSERT INTO `wp_postmeta` VALUES (1604,58,'_height','');
INSERT INTO `wp_postmeta` VALUES (1605,58,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1606,58,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1607,58,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1608,58,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1609,58,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1610,58,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1611,58,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1612,58,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1613,58,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1614,58,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1615,58,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1616,58,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1617,58,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1618,58,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1619,58,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1620,58,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1621,58,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1622,58,'_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1623,59,'_sku','CE312A');
INSERT INTO `wp_postmeta` VALUES (1624,59,'_regular_price','1318.00');
INSERT INTO `wp_postmeta` VALUES (1625,59,'_sale_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1626,59,'_sale_price_dates_from','');
INSERT INTO `wp_postmeta` VALUES (1627,59,'_sale_price_dates_to','');
INSERT INTO `wp_postmeta` VALUES (1628,59,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (1629,59,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (1630,59,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (1631,59,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (1632,59,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (1633,59,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (1634,59,'_weight','');
INSERT INTO `wp_postmeta` VALUES (1635,59,'_length','');
INSERT INTO `wp_postmeta` VALUES (1636,59,'_width','');
INSERT INTO `wp_postmeta` VALUES (1637,59,'_height','');
INSERT INTO `wp_postmeta` VALUES (1638,59,'_upsell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1639,59,'_crosssell_ids','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1640,59,'_purchase_note','');
INSERT INTO `wp_postmeta` VALUES (1641,59,'_default_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1642,59,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (1643,59,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (1644,59,'_product_image_gallery','');
INSERT INTO `wp_postmeta` VALUES (1645,59,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (1646,59,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (1647,59,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (1648,59,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (1649,59,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (1650,59,'_wc_rating_count','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1651,59,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (1652,59,'_downloadable_files','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1653,59,'_product_attributes','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1654,59,'_product_version','3.1.1');
INSERT INTO `wp_postmeta` VALUES (1655,59,'_price','1225.74');
INSERT INTO `wp_postmeta` VALUES (1656,59,'_edit_lock','1504454847:1');
INSERT INTO `wp_postmeta` VALUES (1657,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1658,60,'_wp_attached_file','2017/08/006R01160-500x500.jpg');
INSERT INTO `wp_postmeta` VALUES (1659,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2017/08/006R01160-500x500.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"006R01160-500x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"006R01160-500x500-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"006R01160-500x500-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"006R01160-500x500-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1660,61,'_wp_attached_file','2017/08/006R01462.jpg');
INSERT INTO `wp_postmeta` VALUES (1661,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/006R01462.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01462-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"006R01462-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01462-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"006R01462-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1662,62,'_wp_attached_file','2017/08/006R01463.jpg');
INSERT INTO `wp_postmeta` VALUES (1663,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/006R01463.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01463-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"006R01463-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01463-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"006R01463-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1664,63,'_wp_attached_file','2017/08/006R01464.jpg');
INSERT INTO `wp_postmeta` VALUES (1665,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/006R01464.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01464-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"006R01464-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"006R01464-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"006R01464-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1666,64,'_wp_attached_file','2017/08/106R01531.jpg');
INSERT INTO `wp_postmeta` VALUES (1667,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/106R01531.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"106R01531-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"106R01531-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"106R01531-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"106R01531-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1668,65,'_wp_attached_file','2017/08/3500B001AA.jpg');
INSERT INTO `wp_postmeta` VALUES (1669,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2017/08/3500B001AA.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"3500B001AA-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"3500B001AA-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"3500B001AA-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"3500B001AA-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1670,66,'_wp_attached_file','2017/08/26500HE.jpg');
INSERT INTO `wp_postmeta` VALUES (1671,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/26500HE.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"26500HE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"26500HE-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"26500HE-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"26500HE-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1672,67,'_wp_attached_file','2017/08/56300ZO.jpg');
INSERT INTO `wp_postmeta` VALUES (1673,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:450;s:6:\"height\";i:370;s:4:\"file\";s:19:\"2017/08/56300ZO.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"56300ZO-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"56300ZO-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"56300ZO-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"56300ZO-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1674,68,'_wp_attached_file','2017/08/59301VP.jpg');
INSERT INTO `wp_postmeta` VALUES (1675,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/59301VP.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"59301VP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"59301VP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"59301VP-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"59301VP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1676,69,'_wp_attached_file','2017/08/71408J3.jpg');
INSERT INTO `wp_postmeta` VALUES (1677,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/71408J3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"71408J3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"71408J3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"71408J3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"71408J3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1678,70,'_wp_attached_file','2017/08/91400EJ.jpg');
INSERT INTO `wp_postmeta` VALUES (1679,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/91400EJ.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"91400EJ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"91400EJ-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"91400EJ-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"91400EJ-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1680,71,'_wp_attached_file','2017/08/91400FO.jpg');
INSERT INTO `wp_postmeta` VALUES (1681,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/91400FO.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"91400FO-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"91400FO-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"91400FO-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"91400FO-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1682,72,'_wp_attached_file','2017/08/91400HW.jpg');
INSERT INTO `wp_postmeta` VALUES (1683,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:355;s:6:\"height\";i:162;s:4:\"file\";s:19:\"2017/08/91400HW.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"91400HW-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"91400HW-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"91400HW-180x162.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"91400HW-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1684,73,'_wp_attached_file','2017/08/94601C0.jpg');
INSERT INTO `wp_postmeta` VALUES (1685,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/94601C0.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"94601C0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"94601C0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"94601C0-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"94601C0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1686,74,'_wp_attached_file','2017/08/94601W0.jpg');
INSERT INTO `wp_postmeta` VALUES (1687,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/94601W0.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"94601W0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"94601W0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"94601W0-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"94601W0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1688,75,'_wp_attached_file','2017/08/94602XP.jpg');
INSERT INTO `wp_postmeta` VALUES (1689,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/94602XP.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"94602XP-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"94602XP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"94602XP-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"94602XP-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1690,76,'_wp_attached_file','2017/08/94603IR.jpg');
INSERT INTO `wp_postmeta` VALUES (1691,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/94603IR.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"94603IR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"94603IR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"94603IR-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"94603IR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1692,77,'_wp_attached_file','2017/08/94603JF.jpg');
INSERT INTO `wp_postmeta` VALUES (1693,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/94603JF.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"94603JF-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"94603JF-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"94603JF-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"94603JF-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1694,78,'_wp_attached_file','2017/08/99000AW.jpg');
INSERT INTO `wp_postmeta` VALUES (1695,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/99000AW.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"99000AW-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"99000AW-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"99000AW-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"99000AW-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1696,79,'_wp_attached_file','2017/08/99100QS.jpg');
INSERT INTO `wp_postmeta` VALUES (1697,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/99100QS.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"99100QS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"99100QS-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"99100QS-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"99100QS-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1698,80,'_wp_attached_file','2017/08/99100QT.jpg');
INSERT INTO `wp_postmeta` VALUES (1699,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/99100QT.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"99100QT-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"99100QT-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"99100QT-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"99100QT-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1700,81,'_wp_attached_file','2017/08/407001P.jpg');
INSERT INTO `wp_postmeta` VALUES (1701,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/407001P.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"407001P-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"407001P-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"407001P-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"407001P-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1702,82,'_wp_attached_file','2017/08/951001A.jpg');
INSERT INTO `wp_postmeta` VALUES (1703,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/951001A.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"951001A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"951001A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"951001A-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"951001A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1704,83,'_wp_attached_file','2017/08/951001O.jpg');
INSERT INTO `wp_postmeta` VALUES (1705,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/951001O.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"951001O-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"951001O-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"951001O-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"951001O-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1706,84,'_wp_attached_file','2017/08/951001P.jpg');
INSERT INTO `wp_postmeta` VALUES (1707,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/951001P.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"951001P-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"951001P-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"951001P-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"951001P-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1708,85,'_wp_attached_file','2017/08/951001T.jpg');
INSERT INTO `wp_postmeta` VALUES (1709,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/951001T.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"951001T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"951001T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"951001T-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"951001T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1710,86,'_wp_attached_file','2017/08/990002I.jpg');
INSERT INTO `wp_postmeta` VALUES (1711,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:458;s:6:\"height\";i:458;s:4:\"file\";s:19:\"2017/08/990002I.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"990002I-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"990002I-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"990002I-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"990002I-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1712,87,'_wp_attached_file','2017/08/990008D.jpg');
INSERT INTO `wp_postmeta` VALUES (1713,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/990008D.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"990008D-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"990008D-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"990008D-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"990008D-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1714,88,'_wp_attached_file','2017/08/3110169.png');
INSERT INTO `wp_postmeta` VALUES (1715,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/3110169.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"3110169-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"3110169-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"3110169-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"3110169-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1716,89,'_wp_attached_file','2017/08/9910088.jpg');
INSERT INTO `wp_postmeta` VALUES (1717,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/9910088.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"9910088-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"9910088-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"9910088-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"9910088-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1718,90,'_wp_attached_file','2017/08/A1700AT.jpg');
INSERT INTO `wp_postmeta` VALUES (1719,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A1700AT.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A1700AT-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A1700AT-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A1700AT-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A1700AT-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1720,91,'_wp_attached_file','2017/08/A1700OI.jpg');
INSERT INTO `wp_postmeta` VALUES (1721,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A1700OI.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A1700OI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A1700OI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A1700OI-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A1700OI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1722,92,'_wp_attached_file','2017/08/A02010F.jpg');
INSERT INTO `wp_postmeta` VALUES (1723,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A02010F.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A02010F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A02010F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A02010F-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A02010F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1724,93,'_wp_attached_file','2017/08/A2100DL.jpg');
INSERT INTO `wp_postmeta` VALUES (1725,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A2100DL.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A2100DL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A2100DL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A2100DL-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A2100DL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1726,94,'_wp_attached_file','2017/08/A8400EC.jpg');
INSERT INTO `wp_postmeta` VALUES (1727,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A8400EC.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400EC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A8400EC-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400EC-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A8400EC-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1728,95,'_wp_attached_file','2017/08/A8400EI.jpg');
INSERT INTO `wp_postmeta` VALUES (1729,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A8400EI.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400EI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A8400EI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400EI-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A8400EI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1730,96,'_wp_attached_file','2017/08/A8400Z3.jpg');
INSERT INTO `wp_postmeta` VALUES (1731,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A8400Z3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400Z3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A8400Z3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A8400Z3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A8400Z3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1732,97,'_wp_attached_file','2017/08/A17002Y.jpeg');
INSERT INTO `wp_postmeta` VALUES (1733,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2017/08/A17002Y.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"A17002Y-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"A17002Y-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1734,98,'_wp_attached_file','2017/08/A170030.jpg');
INSERT INTO `wp_postmeta` VALUES (1735,98,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/A170030.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"A170030-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"A170030-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"A170030-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"A170030-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1736,99,'_wp_attached_file','2017/08/AHD710-1TU3-CBK.jpg');
INSERT INTO `wp_postmeta` VALUES (1737,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2017/08/AHD710-1TU3-CBK.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"AHD710-1TU3-CBK-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"AHD710-1TU3-CBK-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"AHD710-1TU3-CBK-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"AHD710-1TU3-CBK-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1738,100,'_wp_attached_file','2017/08/AHD720-1TU3-CBL.jpg');
INSERT INTO `wp_postmeta` VALUES (1739,100,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2017/08/AHD720-1TU3-CBL.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"AHD720-1TU3-CBL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"AHD720-1TU3-CBL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"AHD720-1TU3-CBL-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"AHD720-1TU3-CBL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1740,101,'_wp_attached_file','2017/08/AHV620-1TU3-CBK.jpg');
INSERT INTO `wp_postmeta` VALUES (1741,101,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2017/08/AHV620-1TU3-CBK.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"AHV620-1TU3-CBK-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"AHV620-1TU3-CBK-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"AHV620-1TU3-CBK-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"AHV620-1TU3-CBK-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1742,102,'_wp_attached_file','2017/08/B40001H.jpg');
INSERT INTO `wp_postmeta` VALUES (1743,102,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2017/08/B40001H.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"B40001H-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"B40001H-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"B40001H-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"B40001H-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1744,103,'_wp_attached_file','2017/08/CE278A.jpg');
INSERT INTO `wp_postmeta` VALUES (1745,103,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2017/08/CE278A.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"CE278A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"CE278A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"CE278A-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"CE278A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1746,104,'_wp_attached_file','2017/08/CE285A.jpg');
INSERT INTO `wp_postmeta` VALUES (1747,104,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2017/08/CE285A.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"CE285A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"CE285A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"CE285A-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"CE285A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1748,105,'_wp_attached_file','2017/08/CE311A.jpeg');
INSERT INTO `wp_postmeta` VALUES (1749,105,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2017/08/CE311A.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"CE311A-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"CE311A-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1750,106,'_wp_attached_file','2017/08/CE312A.jpg');
INSERT INTO `wp_postmeta` VALUES (1751,106,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2017/08/CE312A.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"CE312A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"CE312A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"CE312A-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"CE312A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1752,107,'_wp_attached_file','2017/08/CE313A.jpg');
INSERT INTO `wp_postmeta` VALUES (1753,107,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2017/08/CE313A.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"CE313A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"CE313A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"CE313A-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"CE313A-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1754,108,'_wp_attached_file','2017/08/PV150G.png');
INSERT INTO `wp_postmeta` VALUES (1755,108,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2017/08/PV150G.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"PV150G-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"PV150G-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"PV150G-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"PV150G-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1756,109,'_wp_attached_file','2017/08/UP271APC04.jpg');
INSERT INTO `wp_postmeta` VALUES (1757,109,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2017/08/UP271APC04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"UP271APC04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"UP271APC04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"UP271APC04-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"UP271APC04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1758,59,'_thumbnail_id','106');
INSERT INTO `wp_postmeta` VALUES (1759,58,'_edit_lock','1502647650:1');
INSERT INTO `wp_postmeta` VALUES (1760,110,'_wp_attached_file','2017/08/CE313A-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1761,110,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2017/08/CE313A-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"CE313A-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"CE313A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"CE313A-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"CE313A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1762,58,'_thumbnail_id','110');
INSERT INTO `wp_postmeta` VALUES (1763,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1764,57,'_edit_lock','1502647704:1');
INSERT INTO `wp_postmeta` VALUES (1765,111,'_wp_attached_file','2017/08/CE311A-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (1766,111,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2017/08/CE311A-1.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"CE311A-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"CE311A-1-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1767,57,'_thumbnail_id','111');
INSERT INTO `wp_postmeta` VALUES (1768,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1769,56,'_edit_lock','1502647764:1');
INSERT INTO `wp_postmeta` VALUES (1770,112,'_wp_attached_file','2017/08/CE285A-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1771,112,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2017/08/CE285A-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"CE285A-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"CE285A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"CE285A-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"CE285A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1772,56,'_thumbnail_id','112');
INSERT INTO `wp_postmeta` VALUES (1773,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1774,55,'_edit_lock','1502647824:1');
INSERT INTO `wp_postmeta` VALUES (1775,113,'_wp_attached_file','2017/08/006R01464-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1776,113,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2017/08/006R01464-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01464-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"006R01464-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01464-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"006R01464-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1777,55,'_thumbnail_id','113');
INSERT INTO `wp_postmeta` VALUES (1778,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1779,54,'_edit_lock','1502647864:1');
INSERT INTO `wp_postmeta` VALUES (1780,114,'_wp_attached_file','2017/08/006R01463-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1781,114,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2017/08/006R01463-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01463-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"006R01463-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01463-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"006R01463-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1782,54,'_thumbnail_id','114');
INSERT INTO `wp_postmeta` VALUES (1783,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1784,53,'_edit_lock','1502647899:1');
INSERT INTO `wp_postmeta` VALUES (1785,115,'_wp_attached_file','2017/08/006R01462-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1786,115,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2017/08/006R01462-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01462-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"006R01462-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"006R01462-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"006R01462-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1787,53,'_thumbnail_id','115');
INSERT INTO `wp_postmeta` VALUES (1788,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1789,52,'_edit_lock','1502647934:1');
INSERT INTO `wp_postmeta` VALUES (1790,116,'_wp_attached_file','2017/08/3500B001AA-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1791,116,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2017/08/3500B001AA-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"3500B001AA-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"3500B001AA-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"3500B001AA-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"3500B001AA-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1792,52,'_thumbnail_id','116');
INSERT INTO `wp_postmeta` VALUES (1793,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1794,51,'_edit_lock','1502647977:1');
INSERT INTO `wp_postmeta` VALUES (1795,117,'_wp_attached_file','2017/08/106R01531-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1796,117,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2017/08/106R01531-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"106R01531-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"106R01531-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"106R01531-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"106R01531-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1797,51,'_thumbnail_id','117');
INSERT INTO `wp_postmeta` VALUES (1798,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1799,50,'_edit_lock','1502648017:1');
INSERT INTO `wp_postmeta` VALUES (1800,118,'_wp_attached_file','2017/08/006R01160-500x500-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1801,118,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2017/08/006R01160-500x500-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"006R01160-500x500-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"006R01160-500x500-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"006R01160-500x500-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"006R01160-500x500-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1802,50,'_thumbnail_id','118');
INSERT INTO `wp_postmeta` VALUES (1803,50,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1804,49,'_edit_lock','1502648065:1');
INSERT INTO `wp_postmeta` VALUES (1805,119,'_wp_attached_file','2017/08/CE278A-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1806,119,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2017/08/CE278A-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"CE278A-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"CE278A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"CE278A-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"CE278A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1807,49,'_thumbnail_id','119');
INSERT INTO `wp_postmeta` VALUES (1808,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1809,48,'_edit_lock','1502648107:1');
INSERT INTO `wp_postmeta` VALUES (1810,120,'_wp_attached_file','2017/08/3110169-1.png');
INSERT INTO `wp_postmeta` VALUES (1811,120,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/3110169-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"3110169-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"3110169-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"3110169-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"3110169-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1812,48,'_thumbnail_id','120');
INSERT INTO `wp_postmeta` VALUES (1813,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1814,47,'_edit_lock','1502648161:1');
INSERT INTO `wp_postmeta` VALUES (1815,121,'_wp_attached_file','2017/08/71408J3-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1816,121,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/71408J3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"71408J3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"71408J3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"71408J3-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"71408J3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1817,47,'_thumbnail_id','121');
INSERT INTO `wp_postmeta` VALUES (1818,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1819,46,'_edit_lock','1502648215:1');
INSERT INTO `wp_postmeta` VALUES (1820,122,'_wp_attached_file','2017/08/99100QT-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1821,122,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/99100QT-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"99100QT-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"99100QT-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"99100QT-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"99100QT-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1822,46,'_thumbnail_id','122');
INSERT INTO `wp_postmeta` VALUES (1823,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1824,45,'_edit_lock','1502648260:1');
INSERT INTO `wp_postmeta` VALUES (1825,123,'_wp_attached_file','2017/08/99100QS-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1826,123,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/99100QS-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"99100QS-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"99100QS-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"99100QS-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"99100QS-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1827,45,'_thumbnail_id','123');
INSERT INTO `wp_postmeta` VALUES (1828,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1829,44,'_edit_lock','1502648305:1');
INSERT INTO `wp_postmeta` VALUES (1830,124,'_wp_attached_file','2017/08/951001O-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1831,124,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/951001O-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"951001O-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"951001O-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"951001O-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"951001O-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1832,44,'_thumbnail_id','124');
INSERT INTO `wp_postmeta` VALUES (1833,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1834,43,'_edit_lock','1502648338:1');
INSERT INTO `wp_postmeta` VALUES (1835,125,'_wp_attached_file','2017/08/951001T-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1836,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/951001T-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"951001T-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"951001T-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"951001T-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"951001T-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1837,43,'_thumbnail_id','125');
INSERT INTO `wp_postmeta` VALUES (1838,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1839,42,'_edit_lock','1502648358:1');
INSERT INTO `wp_postmeta` VALUES (1840,41,'_edit_lock','1502648394:1');
INSERT INTO `wp_postmeta` VALUES (1841,126,'_wp_attached_file','2017/08/951001P-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1842,126,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/951001P-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"951001P-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"951001P-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"951001P-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"951001P-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1843,41,'_thumbnail_id','126');
INSERT INTO `wp_postmeta` VALUES (1844,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1845,40,'_edit_lock','1502648424:1');
INSERT INTO `wp_postmeta` VALUES (1846,127,'_wp_attached_file','2017/08/A170030-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1847,127,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A170030-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A170030-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A170030-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A170030-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A170030-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1848,40,'_thumbnail_id','127');
INSERT INTO `wp_postmeta` VALUES (1849,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1850,39,'_edit_lock','1502648470:1');
INSERT INTO `wp_postmeta` VALUES (1851,128,'_wp_attached_file','2017/08/951001A-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1852,128,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/951001A-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"951001A-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"951001A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"951001A-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"951001A-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1853,39,'_thumbnail_id','128');
INSERT INTO `wp_postmeta` VALUES (1854,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1855,38,'_edit_lock','1502648501:1');
INSERT INTO `wp_postmeta` VALUES (1856,129,'_wp_attached_file','2017/08/990008D-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1857,129,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/990008D-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"990008D-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"990008D-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"990008D-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"990008D-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1858,38,'_thumbnail_id','129');
INSERT INTO `wp_postmeta` VALUES (1859,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1860,37,'_edit_lock','1502648532:1');
INSERT INTO `wp_postmeta` VALUES (1861,130,'_wp_attached_file','2017/08/91400EJ-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1862,130,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/91400EJ-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"91400EJ-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"91400EJ-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"91400EJ-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"91400EJ-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1863,37,'_thumbnail_id','130');
INSERT INTO `wp_postmeta` VALUES (1864,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1865,36,'_edit_lock','1502648577:1');
INSERT INTO `wp_postmeta` VALUES (1866,131,'_wp_attached_file','2017/08/26500HE-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1867,131,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/26500HE-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"26500HE-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"26500HE-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"26500HE-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"26500HE-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1868,36,'_thumbnail_id','131');
INSERT INTO `wp_postmeta` VALUES (1869,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1870,35,'_edit_lock','1502648615:1');
INSERT INTO `wp_postmeta` VALUES (1871,132,'_wp_attached_file','2017/08/PV150G-1.png');
INSERT INTO `wp_postmeta` VALUES (1872,132,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2017/08/PV150G-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"PV150G-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"PV150G-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"PV150G-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"PV150G-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1873,35,'_thumbnail_id','132');
INSERT INTO `wp_postmeta` VALUES (1874,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1875,34,'_edit_lock','1502648646:1');
INSERT INTO `wp_postmeta` VALUES (1876,133,'_wp_attached_file','2017/08/A8400Z3-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1877,133,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A8400Z3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400Z3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A8400Z3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400Z3-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A8400Z3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1878,34,'_thumbnail_id','133');
INSERT INTO `wp_postmeta` VALUES (1879,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1880,33,'_edit_lock','1502648692:1');
INSERT INTO `wp_postmeta` VALUES (1881,134,'_wp_attached_file','2017/08/A8400EC-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1882,134,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A8400EC-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400EC-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A8400EC-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400EC-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A8400EC-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1883,33,'_thumbnail_id','134');
INSERT INTO `wp_postmeta` VALUES (1884,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1885,32,'_edit_lock','1502648734:1');
INSERT INTO `wp_postmeta` VALUES (1886,135,'_wp_attached_file','2017/08/A8400EI-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1887,135,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A8400EI-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400EI-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A8400EI-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A8400EI-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A8400EI-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1888,32,'_thumbnail_id','135');
INSERT INTO `wp_postmeta` VALUES (1889,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1890,31,'_edit_lock','1502648776:1');
INSERT INTO `wp_postmeta` VALUES (1891,136,'_wp_attached_file','2017/08/A02010F-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1892,136,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A02010F-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A02010F-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A02010F-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A02010F-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A02010F-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1893,31,'_thumbnail_id','136');
INSERT INTO `wp_postmeta` VALUES (1894,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1895,30,'_edit_lock','1502648816:1');
INSERT INTO `wp_postmeta` VALUES (1896,137,'_wp_attached_file','2017/08/94603JF-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1897,137,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/94603JF-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"94603JF-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"94603JF-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"94603JF-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"94603JF-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1898,30,'_thumbnail_id','137');
INSERT INTO `wp_postmeta` VALUES (1899,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1900,29,'_edit_lock','1502648863:1');
INSERT INTO `wp_postmeta` VALUES (1901,138,'_wp_attached_file','2017/08/94603IR-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1902,138,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/94603IR-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"94603IR-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"94603IR-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"94603IR-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"94603IR-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1903,29,'_thumbnail_id','138');
INSERT INTO `wp_postmeta` VALUES (1904,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1905,28,'_edit_lock','1502648902:1');
INSERT INTO `wp_postmeta` VALUES (1906,139,'_wp_attached_file','2017/08/94601W0-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1907,139,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/94601W0-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"94601W0-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"94601W0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"94601W0-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"94601W0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1908,28,'_thumbnail_id','139');
INSERT INTO `wp_postmeta` VALUES (1909,28,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1910,27,'_edit_lock','1502648950:1');
INSERT INTO `wp_postmeta` VALUES (1911,140,'_wp_attached_file','2017/08/94601C0-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1912,140,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/94601C0-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"94601C0-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"94601C0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"94601C0-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"94601C0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1913,27,'_thumbnail_id','140');
INSERT INTO `wp_postmeta` VALUES (1914,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1915,26,'_edit_lock','1502648981:1');
INSERT INTO `wp_postmeta` VALUES (1916,141,'_wp_attached_file','2017/08/9910088-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1917,141,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/9910088-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"9910088-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"9910088-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"9910088-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"9910088-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1918,26,'_thumbnail_id','141');
INSERT INTO `wp_postmeta` VALUES (1919,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1920,25,'_edit_lock','1502649017:1');
INSERT INTO `wp_postmeta` VALUES (1921,142,'_wp_attached_file','2017/08/AHV620-1TU3-CBK-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1922,142,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2017/08/AHV620-1TU3-CBK-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"AHV620-1TU3-CBK-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"AHV620-1TU3-CBK-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"AHV620-1TU3-CBK-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"AHV620-1TU3-CBK-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1923,25,'_thumbnail_id','142');
INSERT INTO `wp_postmeta` VALUES (1924,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1925,24,'_edit_lock','1502649050:1');
INSERT INTO `wp_postmeta` VALUES (1926,143,'_wp_attached_file','2017/08/AHD720-1TU3-CBL-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1927,143,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2017/08/AHD720-1TU3-CBL-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"AHD720-1TU3-CBL-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"AHD720-1TU3-CBL-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"AHD720-1TU3-CBL-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"AHD720-1TU3-CBL-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1928,24,'_thumbnail_id','143');
INSERT INTO `wp_postmeta` VALUES (1929,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1930,23,'_edit_lock','1503976653:1');
INSERT INTO `wp_postmeta` VALUES (1931,144,'_wp_attached_file','2017/08/AHD710-1TU3-CBK-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1932,144,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2017/08/AHD710-1TU3-CBK-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"AHD710-1TU3-CBK-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"AHD710-1TU3-CBK-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"AHD710-1TU3-CBK-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"AHD710-1TU3-CBK-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1933,23,'_thumbnail_id','144');
INSERT INTO `wp_postmeta` VALUES (1934,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1935,22,'_edit_lock','1502649127:1');
INSERT INTO `wp_postmeta` VALUES (1936,145,'_wp_attached_file','2017/08/A2100DL-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1937,145,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A2100DL-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A2100DL-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A2100DL-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A2100DL-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A2100DL-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1938,22,'_thumbnail_id','145');
INSERT INTO `wp_postmeta` VALUES (1939,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1940,21,'_edit_lock','1502649154:1');
INSERT INTO `wp_postmeta` VALUES (1941,146,'_wp_attached_file','2017/08/B40001H-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1942,146,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/B40001H-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"B40001H-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"B40001H-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"B40001H-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"B40001H-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1943,21,'_thumbnail_id','146');
INSERT INTO `wp_postmeta` VALUES (1944,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1945,20,'_edit_lock','1502649197:1');
INSERT INTO `wp_postmeta` VALUES (1946,147,'_wp_attached_file','2017/08/407001P-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1947,147,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/407001P-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"407001P-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"407001P-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"407001P-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"407001P-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1948,20,'_thumbnail_id','147');
INSERT INTO `wp_postmeta` VALUES (1949,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1950,19,'_edit_lock','1502649221:1');
INSERT INTO `wp_postmeta` VALUES (1951,148,'_wp_attached_file','2017/08/A1700AT-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1952,148,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A1700AT-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A1700AT-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A1700AT-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A1700AT-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A1700AT-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1953,19,'_thumbnail_id','148');
INSERT INTO `wp_postmeta` VALUES (1954,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1955,18,'_edit_lock','1502649251:1');
INSERT INTO `wp_postmeta` VALUES (1956,149,'_wp_attached_file','2017/08/99000AW-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1957,149,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/99000AW-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"99000AW-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"99000AW-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"99000AW-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"99000AW-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1958,18,'_thumbnail_id','149');
INSERT INTO `wp_postmeta` VALUES (1959,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1960,17,'_edit_lock','1502649281:1');
INSERT INTO `wp_postmeta` VALUES (1961,150,'_wp_attached_file','2017/08/91400FO-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1962,150,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/91400FO-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"91400FO-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"91400FO-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"91400FO-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"91400FO-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1963,17,'_thumbnail_id','150');
INSERT INTO `wp_postmeta` VALUES (1964,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1965,16,'_edit_lock','1502649309:1');
INSERT INTO `wp_postmeta` VALUES (1966,151,'_wp_attached_file','2017/08/UP271APC04-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1967,151,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2017/08/UP271APC04-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"UP271APC04-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"UP271APC04-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"UP271APC04-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"UP271APC04-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1968,16,'_thumbnail_id','151');
INSERT INTO `wp_postmeta` VALUES (1969,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1970,15,'_edit_lock','1502649337:1');
INSERT INTO `wp_postmeta` VALUES (1971,152,'_wp_attached_file','2017/08/A1700OI-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1972,152,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/A1700OI-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"A1700OI-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"A1700OI-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"A1700OI-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"A1700OI-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1973,15,'_thumbnail_id','152');
INSERT INTO `wp_postmeta` VALUES (1974,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1975,14,'_edit_lock','1502649368:1');
INSERT INTO `wp_postmeta` VALUES (1976,153,'_wp_attached_file','2017/08/990002I-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1977,153,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:458;s:6:\"height\";i:458;s:4:\"file\";s:21:\"2017/08/990002I-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"990002I-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"990002I-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"990002I-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"990002I-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1978,14,'_thumbnail_id','153');
INSERT INTO `wp_postmeta` VALUES (1979,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1980,13,'_edit_lock','1502649401:1');
INSERT INTO `wp_postmeta` VALUES (1981,154,'_wp_attached_file','2017/08/91400HW-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1982,154,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:355;s:6:\"height\";i:162;s:4:\"file\";s:21:\"2017/08/91400HW-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"91400HW-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"91400HW-1-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"91400HW-1-180x162.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"91400HW-1-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1983,13,'_thumbnail_id','154');
INSERT INTO `wp_postmeta` VALUES (1984,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1985,12,'_edit_lock','1502649438:1');
INSERT INTO `wp_postmeta` VALUES (1986,155,'_wp_attached_file','2017/08/56300ZO-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1987,155,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:450;s:6:\"height\";i:370;s:4:\"file\";s:21:\"2017/08/56300ZO-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"56300ZO-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"56300ZO-1-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"56300ZO-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"56300ZO-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1988,12,'_thumbnail_id','155');
INSERT INTO `wp_postmeta` VALUES (1989,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1990,11,'_edit_lock','1502649470:1');
INSERT INTO `wp_postmeta` VALUES (1991,156,'_wp_attached_file','2017/08/59301VP-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1992,156,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/59301VP-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"59301VP-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"59301VP-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"59301VP-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"59301VP-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1993,11,'_thumbnail_id','156');
INSERT INTO `wp_postmeta` VALUES (1994,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1995,10,'_edit_lock','1502650234:1');
INSERT INTO `wp_postmeta` VALUES (1996,157,'_wp_attached_file','2017/08/94602XP-1.jpg');
INSERT INTO `wp_postmeta` VALUES (1997,157,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2017/08/94602XP-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"94602XP-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"94602XP-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"94602XP-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"94602XP-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1998,10,'_thumbnail_id','157');
INSERT INTO `wp_postmeta` VALUES (1999,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2000,4,'_edit_lock','1518248807:1');
INSERT INTO `wp_postmeta` VALUES (2003,5,'_edit_lock','1503488694:1');
INSERT INTO `wp_postmeta` VALUES (2004,159,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2005,159,'_edit_lock','1503019864:1');
INSERT INTO `wp_postmeta` VALUES (2006,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2007,5,'_wp_page_template','page-cart.php');
INSERT INTO `wp_postmeta` VALUES (2008,163,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2009,163,'_wp_page_template','login.php');
INSERT INTO `wp_postmeta` VALUES (2010,163,'_edit_lock','1503453735:1');
INSERT INTO `wp_postmeta` VALUES (2011,1,'_edit_lock','1503546036:1');
INSERT INTO `wp_postmeta` VALUES (2012,165,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2013,165,'_edit_lock','1503637033:1');
INSERT INTO `wp_postmeta` VALUES (2014,165,'_wp_page_template','single-prueba.php');
INSERT INTO `wp_postmeta` VALUES (2026,171,'_wp_attached_file','2017/09/hd-webcam-pro-c920-gallery.png');
INSERT INTO `wp_postmeta` VALUES (2027,171,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:652;s:6:\"height\";i:560;s:4:\"file\";s:38:\"2017/09/hd-webcam-pro-c920-gallery.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"hd-webcam-pro-c920-gallery-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"hd-webcam-pro-c920-gallery-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"hd-webcam-pro-c920-gallery-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"hd-webcam-pro-c920-gallery-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"hd-webcam-pro-c920-gallery-600x560.png\";s:5:\"width\";i:600;s:6:\"height\";i:560;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (2057,172,'_wp_attached_file','2017/09/Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m..png');
INSERT INTO `wp_postmeta` VALUES (2058,172,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:586;s:6:\"height\";i:502;s:4:\"file\";s:61:\"2017/09/Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m..png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m.-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m.-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m.-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m.-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (2107,4,'_oembed_358d9f81e03cbc549268aecf18f22a73','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (2108,4,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2113,2,'_edit_lock','1518248577:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-08-12 22:15:38','2017-08-12 22:15:38','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-08-12 22:15:38','2017-08-12 22:15:38','',0,'http://localhost/itoffice/web/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2017-08-12 22:15:38','2017-08-12 22:15:38','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/itoffice/web/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2017-08-12 22:15:38','2017-08-12 22:15:38','',0,'http://localhost/itoffice/web/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2017-08-13 16:08:22','2017-08-13 16:08:22','[product_cat]','Shop','','publish','closed','closed','','shop','','','2017-09-13 01:26:35','2017-09-13 01:26:35','',0,'http://localhost/itoffice/web/shop/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2017-08-13 16:08:23','2017-08-13 16:08:23','[woocommerce_cart]','Cart','','publish','closed','closed','','cart','','','2017-08-18 01:33:54','2017-08-18 01:33:54','',0,'http://localhost/itoffice/web/cart/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2017-08-13 16:08:23','2017-08-13 16:08:23','[woocommerce_checkout]','Checkout','','publish','closed','closed','','checkout','','','2017-08-13 16:08:23','2017-08-13 16:08:23','',0,'http://localhost/itoffice/web/checkout/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2017-08-13 16:08:23','2017-08-13 16:08:23','[woocommerce_my_account]','My account','','publish','closed','closed','','my-account','','','2017-08-13 16:08:23','2017-08-13 16:08:23','',0,'http://localhost/itoffice/web/my-account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2017-08-13 16:14:34','2017-08-13 16:14:34','','DELL','','publish','open','closed','','dell','','','2017-08-13 18:40:45','2017-08-13 18:40:45','',0,'http://localhost/itoffice/web/product/dell/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2017-08-13 16:14:36','2017-08-13 16:14:36','','SAMSUNG','','publish','open','closed','','samsung','','','2017-08-13 18:40:08','2017-08-13 18:40:08','',0,'http://localhost/itoffice/web/product/samsung/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2017-08-13 16:14:38','2017-08-13 16:14:38','','LG','','publish','open','closed','','lg','','','2017-08-13 18:39:30','2017-08-13 18:39:30','',0,'http://localhost/itoffice/web/product/lg/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2017-08-13 16:14:40','2017-08-13 16:14:40','','LOGITECH','','publish','open','closed','','logitech','','','2017-08-13 18:39:02','2017-08-13 18:39:02','',0,'http://localhost/itoffice/web/product/logitech/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2017-08-13 16:14:43','2017-08-13 16:14:43','','MICROSOFT','','publish','open','closed','','microsoft','','','2017-08-13 18:38:29','2017-08-13 18:38:29','',0,'http://localhost/itoffice/web/product/microsoft/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2017-08-13 16:14:46','2017-08-13 16:14:46','','PERFECT CHOICE','','publish','open','closed','','perfect-choice','','','2017-08-13 18:37:57','2017-08-13 18:37:57','',0,'http://localhost/itoffice/web/product/perfect-choice/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2017-08-13 16:14:48','2017-08-13 16:14:48','','APC','','publish','open','closed','','apc','','','2017-08-13 18:37:29','2017-08-13 18:37:29','',0,'http://localhost/itoffice/web/product/apc/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2017-08-13 16:14:49','2017-08-13 16:14:49','','LOGITECH','','publish','open','closed','','logitech-2','','','2017-08-13 18:37:02','2017-08-13 18:37:02','',0,'http://localhost/itoffice/web/product/logitech-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2017-08-13 16:14:51','2017-08-13 16:14:51','','MICROSOFT','','publish','open','closed','','microsoft-2','','','2017-08-13 18:36:32','2017-08-13 18:36:32','',0,'http://localhost/itoffice/web/product/microsoft-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2017-08-13 16:14:59','2017-08-13 16:14:59','','MASTER CHOICE','','publish','open','closed','','master-choice','','','2017-08-13 18:36:00','2017-08-13 18:36:00','',0,'http://localhost/itoffice/web/product/master-choice/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2017-08-13 16:15:02','2017-08-13 16:15:02','','KENSINGTON','','publish','open','closed','','kensington','','','2017-08-13 18:35:28','2017-08-13 18:35:28','',0,'http://localhost/itoffice/web/product/kensington/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2017-08-13 16:15:05','2017-08-13 16:15:05','','TP-LINK','','publish','open','closed','','tp-link','','','2017-08-13 18:34:54','2017-08-13 18:34:54','',0,'http://localhost/itoffice/web/product/tp-link/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2017-08-13 16:15:09','2017-08-13 16:15:09','','NIKON','','publish','open','closed','','nikon','','','2017-08-13 18:34:24','2017-08-13 18:34:24','',0,'http://localhost/itoffice/web/product/nikon/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2017-08-13 16:15:11','2017-08-13 16:15:11','tecto de descripcion de prueba','ADATA','','publish','open','closed','','adata','','','2017-08-27 14:01:37','2017-08-27 14:01:37','',0,'http://localhost/itoffice/web/product/adata/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2017-08-13 16:15:13','2017-08-13 16:15:13','','ADATA','','publish','open','closed','','adata-2','','','2017-08-13 18:33:08','2017-08-13 18:33:08','',0,'http://localhost/itoffice/web/product/adata-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2017-08-13 16:15:16','2017-08-13 16:15:16','','ADATA','','publish','open','closed','','adata-3','','','2017-08-13 18:32:35','2017-08-13 18:32:35','',0,'http://localhost/itoffice/web/product/adata-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2017-08-13 16:15:18','2017-08-13 16:15:18','','KINGSTON','','publish','open','closed','','kingston','','','2017-08-13 18:32:04','2017-08-13 18:32:04','',0,'http://localhost/itoffice/web/product/kingston/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2017-08-13 16:15:22','2017-08-13 16:15:22','','DELL','','publish','open','closed','','dell-2','','','2017-08-13 18:31:24','2017-08-13 18:31:24','',0,'http://localhost/itoffice/web/product/dell-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2017-08-13 16:15:25','2017-08-13 16:15:25','','DELL','','publish','open','closed','','dell-3','','','2017-08-13 18:30:41','2017-08-13 18:30:41','',0,'http://localhost/itoffice/web/product/dell-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2017-08-13 16:15:29','2017-08-13 16:15:29','','DELL','','publish','open','closed','','dell-4','','','2017-08-13 18:30:05','2017-08-13 18:30:05','',0,'http://localhost/itoffice/web/product/dell-4/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2017-08-13 16:15:33','2017-08-13 16:15:33','','DELL','','publish','open','closed','','dell-5','','','2017-08-13 18:29:16','2017-08-13 18:29:16','',0,'http://localhost/itoffice/web/product/dell-5/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2017-08-13 16:15:35','2017-08-13 16:15:35','','MANHATTAN','','publish','open','closed','','manhattan','','','2017-08-13 18:28:29','2017-08-13 18:28:29','',0,'http://localhost/itoffice/web/product/manhattan/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2017-08-13 16:15:37','2017-08-13 16:15:37','','STARTECH.COM','','publish','open','closed','','startech-com','','','2017-08-13 18:27:56','2017-08-13 18:27:56','',0,'http://localhost/itoffice/web/product/startech-com/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2017-08-13 16:15:39','2017-08-13 16:15:39','','STARTECH.COM','','publish','open','closed','','startech-com-2','','','2017-08-13 18:27:08','2017-08-13 18:27:08','',0,'http://localhost/itoffice/web/product/startech-com-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2017-08-13 16:15:42','2017-08-13 16:15:42','','STARTECH','','publish','open','closed','','startech','','','2017-08-13 18:26:26','2017-08-13 18:26:26','',0,'http://localhost/itoffice/web/product/startech/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2017-08-13 16:15:45','2017-08-13 16:15:45','','LG','','publish','open','closed','','lg-2','','','2017-08-13 18:25:56','2017-08-13 18:25:56','',0,'http://localhost/itoffice/web/product/lg-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2017-08-13 16:15:50','2017-08-13 16:15:50','','INFOCUS','','publish','open','closed','','infocus','','','2017-08-13 18:25:10','2017-08-13 18:25:10','',0,'http://localhost/itoffice/web/product/infocus/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2017-08-13 16:15:52','2017-08-13 16:15:52','','LOGITECH','','publish','open','closed','','logitech-3','','','2017-08-13 18:24:32','2017-08-13 18:24:32','',0,'http://localhost/itoffice/web/product/logitech-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2017-08-13 16:15:56','2017-08-13 16:15:56','','MICROSOFT','','publish','open','closed','','microsoft-3','','','2017-08-13 18:24:04','2017-08-13 18:24:04','',0,'http://localhost/itoffice/web/product/microsoft-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2017-08-13 16:15:58','2017-08-13 16:15:58','','SILIMEX','','publish','open','closed','','silimex','','','2017-08-13 18:23:24','2017-08-13 18:23:24','',0,'http://localhost/itoffice/web/product/silimex/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2017-08-13 16:16:01','2017-08-13 16:16:01','','MASTER CHOICE','','publish','open','closed','','master-choice-2','','','2017-08-13 18:22:44','2017-08-13 18:22:44','',0,'http://localhost/itoffice/web/product/master-choice-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2017-08-13 16:16:05','2017-08-13 16:16:05','','SILIMEX','','publish','open','closed','','silimex-2','','','2017-08-13 18:22:11','2017-08-13 18:22:11','',0,'http://localhost/itoffice/web/product/silimex-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2017-08-13 16:16:07','2017-08-13 16:16:07','','MASTER CHOICE','','publish','open','closed','','master-choice-3','','','2017-08-13 16:16:07','2017-08-13 16:16:07','',0,'http://localhost/itoffice/web/product/master-choice-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2017-08-13 16:16:09','2017-08-13 16:16:09','','SILIMEX','','publish','open','closed','','silimex-3','','','2017-08-13 18:21:16','2017-08-13 18:21:16','',0,'http://localhost/itoffice/web/product/silimex-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2017-08-13 16:16:12','2017-08-13 16:16:12','','SILIMEX','','publish','open','closed','','silimex-4','','','2017-08-13 18:20:37','2017-08-13 18:20:37','',0,'http://localhost/itoffice/web/product/silimex-4/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2017-08-13 16:16:15','2017-08-13 16:16:15','','KINGSTON','','publish','open','closed','','kingston-2','','','2017-08-13 18:19:58','2017-08-13 18:19:58','',0,'http://localhost/itoffice/web/product/kingston-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2017-08-13 16:16:18','2017-08-13 16:16:18','','KINGSTON','','publish','open','closed','','kingston-3','','','2017-08-13 18:19:00','2017-08-13 18:19:00','',0,'http://localhost/itoffice/web/product/kingston-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2017-08-13 16:16:22','2017-08-13 16:16:22','','HP','','publish','open','closed','','hp','','','2017-08-13 18:18:17','2017-08-13 18:18:17','',0,'http://localhost/itoffice/web/product/hp/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2017-08-13 16:16:26','2017-08-13 16:16:26','','XEROX','','publish','open','closed','','xerox','','','2017-08-13 18:17:24','2017-08-13 18:17:24','',0,'http://localhost/itoffice/web/product/xerox/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2017-08-13 16:16:28','2017-08-13 16:16:28','','HP','','publish','open','closed','','hp-2','','','2017-08-13 18:16:38','2017-08-13 18:16:38','',0,'http://localhost/itoffice/web/product/hp-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2017-08-13 16:16:33','2017-08-13 16:16:33','','XEROX','','publish','open','closed','','xerox-2','','','2017-08-13 18:15:55','2017-08-13 18:15:55','',0,'http://localhost/itoffice/web/product/xerox-2/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2017-08-13 16:16:36','2017-08-13 16:16:36','','XEROX','','publish','open','closed','','xerox-3','','','2017-08-13 18:15:14','2017-08-13 18:15:14','',0,'http://localhost/itoffice/web/product/xerox-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2017-08-13 16:16:38','2017-08-13 16:16:38','','CANON','','publish','open','closed','','canon','','','2017-08-13 18:14:34','2017-08-13 18:14:34','',0,'http://localhost/itoffice/web/product/canon/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2017-08-13 16:16:42','2017-08-13 16:16:42','','XEROX','','publish','open','closed','','xerox-4','','','2017-08-13 18:14:00','2017-08-13 18:14:00','',0,'http://localhost/itoffice/web/product/xerox-4/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2017-08-13 16:16:46','2017-08-13 16:16:46','','XEROX','','publish','open','closed','','xerox-5','','','2017-08-13 18:13:23','2017-08-13 18:13:23','',0,'http://localhost/itoffice/web/product/xerox-5/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2017-08-13 16:16:49','2017-08-13 16:16:49','','XEROX','','publish','open','closed','','xerox-6','','','2017-08-13 18:12:28','2017-08-13 18:12:28','',0,'http://localhost/itoffice/web/product/xerox-6/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2017-08-13 16:16:52','2017-08-13 16:16:52','','HP','','publish','open','closed','','hp-3','','','2017-08-13 18:11:20','2017-08-13 18:11:20','',0,'http://localhost/itoffice/web/product/hp-3/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2017-08-13 16:16:56','2017-08-13 16:16:56','','HP','','publish','open','closed','','hp-4','','','2017-08-13 18:10:34','2017-08-13 18:10:34','',0,'http://localhost/itoffice/web/product/hp-4/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2017-08-13 16:16:58','2017-08-13 16:16:58','','HP','','publish','open','closed','','hp-5','','','2017-08-13 18:09:48','2017-08-13 18:09:48','',0,'http://localhost/itoffice/web/product/hp-5/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2017-08-13 16:17:00','2017-08-13 16:17:00','','HP','','publish','open','closed','','hp-6','','','2017-09-02 20:28:31','2017-09-02 20:28:31','',0,'http://localhost/itoffice/web/product/hp-6/',0,'product','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2017-08-13 16:27:43','2017-08-13 16:27:43','','006R01160-500x500','','inherit','open','closed','','006r01160-500x500','','','2017-08-13 16:27:43','2017-08-13 16:27:43','',0,'http://localhost/itoffice/web/content/uploads/2017/08/006R01160-500x500.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2017-08-13 16:27:43','2017-08-13 16:27:43','','006R01462','','inherit','open','closed','','006r01462','','','2017-08-13 16:27:43','2017-08-13 16:27:43','',0,'http://localhost/itoffice/web/content/uploads/2017/08/006R01462.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2017-08-13 16:27:44','2017-08-13 16:27:44','','006R01463','','inherit','open','closed','','006r01463','','','2017-08-13 16:27:44','2017-08-13 16:27:44','',0,'http://localhost/itoffice/web/content/uploads/2017/08/006R01463.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2017-08-13 16:27:45','2017-08-13 16:27:45','','006R01464','','inherit','open','closed','','006r01464','','','2017-08-13 16:27:45','2017-08-13 16:27:45','',0,'http://localhost/itoffice/web/content/uploads/2017/08/006R01464.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2017-08-13 16:27:46','2017-08-13 16:27:46','','106R01531','','inherit','open','closed','','106r01531','','','2017-08-13 16:27:46','2017-08-13 16:27:46','',0,'http://localhost/itoffice/web/content/uploads/2017/08/106R01531.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2017-08-13 16:27:47','2017-08-13 16:27:47','','3500B001AA','','inherit','open','closed','','3500b001aa','','','2017-08-13 16:27:47','2017-08-13 16:27:47','',0,'http://localhost/itoffice/web/content/uploads/2017/08/3500B001AA.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2017-08-13 16:27:47','2017-08-13 16:27:47','','26500HE','','inherit','open','closed','','26500he','','','2017-08-13 16:27:47','2017-08-13 16:27:47','',0,'http://localhost/itoffice/web/content/uploads/2017/08/26500HE.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2017-08-13 16:27:48','2017-08-13 16:27:48','','56300ZO','','inherit','open','closed','','56300zo','','','2017-08-13 16:27:48','2017-08-13 16:27:48','',0,'http://localhost/itoffice/web/content/uploads/2017/08/56300ZO.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2017-08-13 16:27:50','2017-08-13 16:27:50','','59301VP','','inherit','open','closed','','59301vp','','','2017-08-13 16:27:50','2017-08-13 16:27:50','',0,'http://localhost/itoffice/web/content/uploads/2017/08/59301VP.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2017-08-13 16:27:51','2017-08-13 16:27:51','','71408J3','','inherit','open','closed','','71408j3','','','2017-08-13 16:27:51','2017-08-13 16:27:51','',0,'http://localhost/itoffice/web/content/uploads/2017/08/71408J3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2017-08-13 16:27:52','2017-08-13 16:27:52','','91400EJ','','inherit','open','closed','','91400ej','','','2017-08-13 16:27:52','2017-08-13 16:27:52','',0,'http://localhost/itoffice/web/content/uploads/2017/08/91400EJ.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2017-08-13 16:27:53','2017-08-13 16:27:53','','91400FO','','inherit','open','closed','','91400fo','','','2017-08-13 16:27:53','2017-08-13 16:27:53','',0,'http://localhost/itoffice/web/content/uploads/2017/08/91400FO.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2017-08-13 16:27:54','2017-08-13 16:27:54','','91400HW','','inherit','open','closed','','91400hw','','','2017-08-13 16:27:54','2017-08-13 16:27:54','',0,'http://localhost/itoffice/web/content/uploads/2017/08/91400HW.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2017-08-13 16:27:55','2017-08-13 16:27:55','','94601C0','','inherit','open','closed','','94601c0','','','2017-08-13 16:27:55','2017-08-13 16:27:55','',0,'http://localhost/itoffice/web/content/uploads/2017/08/94601C0.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2017-08-13 16:27:56','2017-08-13 16:27:56','','94601W0','','inherit','open','closed','','94601w0','','','2017-08-13 16:27:56','2017-08-13 16:27:56','',0,'http://localhost/itoffice/web/content/uploads/2017/08/94601W0.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2017-08-13 16:27:57','2017-08-13 16:27:57','','94602XP','','inherit','open','closed','','94602xp','','','2017-08-13 16:27:57','2017-08-13 16:27:57','',0,'http://localhost/itoffice/web/content/uploads/2017/08/94602XP.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2017-08-13 16:27:58','2017-08-13 16:27:58','','94603IR','','inherit','open','closed','','94603ir','','','2017-08-13 16:27:58','2017-08-13 16:27:58','',0,'http://localhost/itoffice/web/content/uploads/2017/08/94603IR.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2017-08-13 16:27:59','2017-08-13 16:27:59','','94603JF','','inherit','open','closed','','94603jf','','','2017-08-13 16:27:59','2017-08-13 16:27:59','',0,'http://localhost/itoffice/web/content/uploads/2017/08/94603JF.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2017-08-13 16:28:00','2017-08-13 16:28:00','','99000AW','','inherit','open','closed','','99000aw','','','2017-08-13 16:28:00','2017-08-13 16:28:00','',0,'http://localhost/itoffice/web/content/uploads/2017/08/99000AW.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2017-08-13 16:28:01','2017-08-13 16:28:01','','99100QS','','inherit','open','closed','','99100qs','','','2017-08-13 16:28:01','2017-08-13 16:28:01','',0,'http://localhost/itoffice/web/content/uploads/2017/08/99100QS.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2017-08-13 16:28:02','2017-08-13 16:28:02','','99100QT','','inherit','open','closed','','99100qt','','','2017-08-13 16:28:02','2017-08-13 16:28:02','',0,'http://localhost/itoffice/web/content/uploads/2017/08/99100QT.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2017-08-13 16:28:03','2017-08-13 16:28:03','','407001P','','inherit','open','closed','','407001p','','','2017-08-13 16:28:03','2017-08-13 16:28:03','',0,'http://localhost/itoffice/web/content/uploads/2017/08/407001P.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2017-08-13 16:28:05','2017-08-13 16:28:05','','951001A','','inherit','open','closed','','951001a','','','2017-08-13 16:28:05','2017-08-13 16:28:05','',0,'http://localhost/itoffice/web/content/uploads/2017/08/951001A.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2017-08-13 16:28:06','2017-08-13 16:28:06','','951001O','','inherit','open','closed','','951001o','','','2017-08-13 16:28:06','2017-08-13 16:28:06','',0,'http://localhost/itoffice/web/content/uploads/2017/08/951001O.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (84,1,'2017-08-13 16:28:07','2017-08-13 16:28:07','','951001P','','inherit','open','closed','','951001p','','','2017-08-13 16:28:07','2017-08-13 16:28:07','',0,'http://localhost/itoffice/web/content/uploads/2017/08/951001P.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,1,'2017-08-13 16:28:08','2017-08-13 16:28:08','','951001T','','inherit','open','closed','','951001t','','','2017-08-13 16:28:08','2017-08-13 16:28:08','',0,'http://localhost/itoffice/web/content/uploads/2017/08/951001T.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2017-08-13 16:28:09','2017-08-13 16:28:09','','990002I','','inherit','open','closed','','990002i','','','2017-08-13 16:28:09','2017-08-13 16:28:09','',0,'http://localhost/itoffice/web/content/uploads/2017/08/990002I.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2017-08-13 16:28:10','2017-08-13 16:28:10','','990008D','','inherit','open','closed','','990008d','','','2017-08-13 16:28:10','2017-08-13 16:28:10','',0,'http://localhost/itoffice/web/content/uploads/2017/08/990008D.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2017-08-13 16:28:14','2017-08-13 16:28:14','','3110169','','inherit','open','closed','','3110169','','','2017-08-13 16:28:14','2017-08-13 16:28:14','',0,'http://localhost/itoffice/web/content/uploads/2017/08/3110169.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (89,1,'2017-08-13 16:28:15','2017-08-13 16:28:15','','9910088','','inherit','open','closed','','9910088','','','2017-08-13 16:28:15','2017-08-13 16:28:15','',0,'http://localhost/itoffice/web/content/uploads/2017/08/9910088.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2017-08-13 16:28:17','2017-08-13 16:28:17','','A1700AT','','inherit','open','closed','','a1700at','','','2017-08-13 16:28:17','2017-08-13 16:28:17','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A1700AT.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2017-08-13 16:28:18','2017-08-13 16:28:18','','A1700OI','','inherit','open','closed','','a1700oi','','','2017-08-13 16:28:18','2017-08-13 16:28:18','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A1700OI.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2017-08-13 16:28:20','2017-08-13 16:28:20','','A02010F','','inherit','open','closed','','a02010f','','','2017-08-13 16:28:20','2017-08-13 16:28:20','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A02010F.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2017-08-13 16:28:24','2017-08-13 16:28:24','','A2100DL','','inherit','open','closed','','a2100dl','','','2017-08-13 16:28:24','2017-08-13 16:28:24','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A2100DL.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2017-08-13 16:28:26','2017-08-13 16:28:26','','A8400EC','','inherit','open','closed','','a8400ec','','','2017-08-13 16:28:26','2017-08-13 16:28:26','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A8400EC.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2017-08-13 16:28:27','2017-08-13 16:28:27','','A8400EI','','inherit','open','closed','','a8400ei','','','2017-08-13 16:28:27','2017-08-13 16:28:27','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A8400EI.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2017-08-13 16:28:30','2017-08-13 16:28:30','','A8400Z3','','inherit','open','closed','','a8400z3','','','2017-08-13 16:28:30','2017-08-13 16:28:30','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A8400Z3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2017-08-13 16:28:33','2017-08-13 16:28:33','','A17002Y','','inherit','open','closed','','a17002y','','','2017-08-13 16:28:33','2017-08-13 16:28:33','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A17002Y.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2017-08-13 16:28:34','2017-08-13 16:28:34','','A170030','','inherit','open','closed','','a170030','','','2017-08-13 16:28:34','2017-08-13 16:28:34','',0,'http://localhost/itoffice/web/content/uploads/2017/08/A170030.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (99,1,'2017-08-13 16:28:35','2017-08-13 16:28:35','','AHD710-1TU3-CBK','','inherit','open','closed','','ahd710-1tu3-cbk','','','2017-08-13 16:28:35','2017-08-13 16:28:35','',0,'http://localhost/itoffice/web/content/uploads/2017/08/AHD710-1TU3-CBK.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (100,1,'2017-08-13 16:28:36','2017-08-13 16:28:36','','AHD720-1TU3-CBL','','inherit','open','closed','','ahd720-1tu3-cbl','','','2017-08-13 16:28:36','2017-08-13 16:28:36','',0,'http://localhost/itoffice/web/content/uploads/2017/08/AHD720-1TU3-CBL.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (101,1,'2017-08-13 16:28:38','2017-08-13 16:28:38','','AHV620-1TU3-CBK','','inherit','open','closed','','ahv620-1tu3-cbk','','','2017-08-13 16:28:38','2017-08-13 16:28:38','',0,'http://localhost/itoffice/web/content/uploads/2017/08/AHV620-1TU3-CBK.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (102,1,'2017-08-13 16:28:39','2017-08-13 16:28:39','','B40001H','','inherit','open','closed','','b40001h','','','2017-08-13 16:28:39','2017-08-13 16:28:39','',0,'http://localhost/itoffice/web/content/uploads/2017/08/B40001H.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (103,1,'2017-08-13 16:28:41','2017-08-13 16:28:41','','CE278A','','inherit','open','closed','','ce278a','','','2017-08-13 16:28:41','2017-08-13 16:28:41','',0,'http://localhost/itoffice/web/content/uploads/2017/08/CE278A.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (104,1,'2017-08-13 16:28:42','2017-08-13 16:28:42','','CE285A','','inherit','open','closed','','ce285a','','','2017-08-13 16:28:42','2017-08-13 16:28:42','',0,'http://localhost/itoffice/web/content/uploads/2017/08/CE285A.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (105,1,'2017-08-13 16:28:44','2017-08-13 16:28:44','','CE311A','','inherit','open','closed','','ce311a','','','2017-08-13 16:28:44','2017-08-13 16:28:44','',0,'http://localhost/itoffice/web/content/uploads/2017/08/CE311A.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (106,1,'2017-08-13 16:28:45','2017-08-13 16:28:45','','CE312A','','inherit','open','closed','','ce312a','','','2017-08-13 16:28:45','2017-08-13 16:28:45','',0,'http://localhost/itoffice/web/content/uploads/2017/08/CE312A.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (107,1,'2017-08-13 16:28:46','2017-08-13 16:28:46','','CE313A','','inherit','open','closed','','ce313a','','','2017-08-13 16:28:46','2017-08-13 16:28:46','',0,'http://localhost/itoffice/web/content/uploads/2017/08/CE313A.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (108,1,'2017-08-13 16:28:47','2017-08-13 16:28:47','','PV150G','','inherit','open','closed','','pv150g','','','2017-08-13 16:28:47','2017-08-13 16:28:47','',0,'http://localhost/itoffice/web/content/uploads/2017/08/PV150G.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (109,1,'2017-08-13 16:28:52','2017-08-13 16:28:52','','UP271APC04','','inherit','open','closed','','up271apc04','','','2017-08-13 16:28:52','2017-08-13 16:28:52','',0,'http://localhost/itoffice/web/content/uploads/2017/08/UP271APC04.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (110,1,'2017-08-13 18:09:41','2017-08-13 18:09:41','','CE313A','','inherit','open','closed','','ce313a-2','','','2017-08-13 18:09:41','2017-08-13 18:09:41','',58,'http://localhost/itoffice/web/content/uploads/2017/08/CE313A-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (111,1,'2017-08-13 18:10:29','2017-08-13 18:10:29','','CE311A','','inherit','open','closed','','ce311a-2','','','2017-08-13 18:10:29','2017-08-13 18:10:29','',57,'http://localhost/itoffice/web/content/uploads/2017/08/CE311A-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (112,1,'2017-08-13 18:11:11','2017-08-13 18:11:11','','CE285A','','inherit','open','closed','','ce285a-2','','','2017-08-13 18:11:11','2017-08-13 18:11:11','',56,'http://localhost/itoffice/web/content/uploads/2017/08/CE285A-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (113,1,'2017-08-13 18:12:22','2017-08-13 18:12:22','','006R01464','','inherit','open','closed','','006r01464-2','','','2017-08-13 18:12:22','2017-08-13 18:12:22','',55,'http://localhost/itoffice/web/content/uploads/2017/08/006R01464-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (114,1,'2017-08-13 18:13:18','2017-08-13 18:13:18','','006R01463','','inherit','open','closed','','006r01463-2','','','2017-08-13 18:13:18','2017-08-13 18:13:18','',54,'http://localhost/itoffice/web/content/uploads/2017/08/006R01463-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (115,1,'2017-08-13 18:13:52','2017-08-13 18:13:52','','006R01462','','inherit','open','closed','','006r01462-2','','','2017-08-13 18:13:52','2017-08-13 18:13:52','',53,'http://localhost/itoffice/web/content/uploads/2017/08/006R01462-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (116,1,'2017-08-13 18:14:27','2017-08-13 18:14:27','','3500B001AA','','inherit','open','closed','','3500b001aa-2','','','2017-08-13 18:14:27','2017-08-13 18:14:27','',52,'http://localhost/itoffice/web/content/uploads/2017/08/3500B001AA-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (117,1,'2017-08-13 18:15:06','2017-08-13 18:15:06','','106R01531','','inherit','open','closed','','106r01531-2','','','2017-08-13 18:15:06','2017-08-13 18:15:06','',51,'http://localhost/itoffice/web/content/uploads/2017/08/106R01531-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (118,1,'2017-08-13 18:15:49','2017-08-13 18:15:49','','006R01160-500x500','','inherit','open','closed','','006r01160-500x500-2','','','2017-08-13 18:15:49','2017-08-13 18:15:49','',50,'http://localhost/itoffice/web/content/uploads/2017/08/006R01160-500x500-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (119,1,'2017-08-13 18:16:31','2017-08-13 18:16:31','','CE278A','','inherit','open','closed','','ce278a-2','','','2017-08-13 18:16:31','2017-08-13 18:16:31','',49,'http://localhost/itoffice/web/content/uploads/2017/08/CE278A-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (120,1,'2017-08-13 18:17:14','2017-08-13 18:17:14','','3110169','','inherit','open','closed','','3110169-2','','','2017-08-13 18:17:14','2017-08-13 18:17:14','',48,'http://localhost/itoffice/web/content/uploads/2017/08/3110169-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (121,1,'2017-08-13 18:18:04','2017-08-13 18:18:04','','71408J3','','inherit','open','closed','','71408j3-2','','','2017-08-13 18:18:04','2017-08-13 18:18:04','',47,'http://localhost/itoffice/web/content/uploads/2017/08/71408J3-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (122,1,'2017-08-13 18:18:47','2017-08-13 18:18:47','','99100QT','','inherit','open','closed','','99100qt-2','','','2017-08-13 18:18:47','2017-08-13 18:18:47','',46,'http://localhost/itoffice/web/content/uploads/2017/08/99100QT-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (123,1,'2017-08-13 18:19:41','2017-08-13 18:19:41','','99100QS','','inherit','open','closed','','99100qs-2','','','2017-08-13 18:19:41','2017-08-13 18:19:41','',45,'http://localhost/itoffice/web/content/uploads/2017/08/99100QS-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (124,1,'2017-08-13 18:20:30','2017-08-13 18:20:30','','951001O','','inherit','open','closed','','951001o-2','','','2017-08-13 18:20:30','2017-08-13 18:20:30','',44,'http://localhost/itoffice/web/content/uploads/2017/08/951001O-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (125,1,'2017-08-13 18:21:11','2017-08-13 18:21:11','','951001T','','inherit','open','closed','','951001t-2','','','2017-08-13 18:21:11','2017-08-13 18:21:11','',43,'http://localhost/itoffice/web/content/uploads/2017/08/951001T-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (126,1,'2017-08-13 18:22:05','2017-08-13 18:22:05','','951001P','','inherit','open','closed','','951001p-2','','','2017-08-13 18:22:05','2017-08-13 18:22:05','',41,'http://localhost/itoffice/web/content/uploads/2017/08/951001P-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (127,1,'2017-08-13 18:22:38','2017-08-13 18:22:38','','A170030','','inherit','open','closed','','a170030-2','','','2017-08-13 18:22:38','2017-08-13 18:22:38','',40,'http://localhost/itoffice/web/content/uploads/2017/08/A170030-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (128,1,'2017-08-13 18:23:15','2017-08-13 18:23:15','','951001A','','inherit','open','closed','','951001a-2','','','2017-08-13 18:23:15','2017-08-13 18:23:15','',39,'http://localhost/itoffice/web/content/uploads/2017/08/951001A-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (129,1,'2017-08-13 18:23:59','2017-08-13 18:23:59','','990008D','','inherit','open','closed','','990008d-2','','','2017-08-13 18:23:59','2017-08-13 18:23:59','',38,'http://localhost/itoffice/web/content/uploads/2017/08/990008D-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (130,1,'2017-08-13 18:24:27','2017-08-13 18:24:27','','91400EJ','','inherit','open','closed','','91400ej-2','','','2017-08-13 18:24:27','2017-08-13 18:24:27','',37,'http://localhost/itoffice/web/content/uploads/2017/08/91400EJ-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (131,1,'2017-08-13 18:25:00','2017-08-13 18:25:00','','26500HE','','inherit','open','closed','','26500he-2','','','2017-08-13 18:25:00','2017-08-13 18:25:00','',36,'http://localhost/itoffice/web/content/uploads/2017/08/26500HE-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (132,1,'2017-08-13 18:25:48','2017-08-13 18:25:48','','PV150G','','inherit','open','closed','','pv150g-2','','','2017-08-13 18:25:48','2017-08-13 18:25:48','',35,'http://localhost/itoffice/web/content/uploads/2017/08/PV150G-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (133,1,'2017-08-13 18:26:21','2017-08-13 18:26:21','','A8400Z3','','inherit','open','closed','','a8400z3-2','','','2017-08-13 18:26:21','2017-08-13 18:26:21','',34,'http://localhost/itoffice/web/content/uploads/2017/08/A8400Z3-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (134,1,'2017-08-13 18:27:02','2017-08-13 18:27:02','','A8400EC','','inherit','open','closed','','a8400ec-2','','','2017-08-13 18:27:02','2017-08-13 18:27:02','',33,'http://localhost/itoffice/web/content/uploads/2017/08/A8400EC-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (135,1,'2017-08-13 18:27:46','2017-08-13 18:27:46','','A8400EI','','inherit','open','closed','','a8400ei-2','','','2017-08-13 18:27:46','2017-08-13 18:27:46','',32,'http://localhost/itoffice/web/content/uploads/2017/08/A8400EI-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (136,1,'2017-08-13 18:28:23','2017-08-13 18:28:23','','A02010F','','inherit','open','closed','','a02010f-2','','','2017-08-13 18:28:23','2017-08-13 18:28:23','',31,'http://localhost/itoffice/web/content/uploads/2017/08/A02010F-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (137,1,'2017-08-13 18:29:10','2017-08-13 18:29:10','','94603JF','','inherit','open','closed','','94603jf-2','','','2017-08-13 18:29:10','2017-08-13 18:29:10','',30,'http://localhost/itoffice/web/content/uploads/2017/08/94603JF-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (138,1,'2017-08-13 18:29:47','2017-08-13 18:29:47','','94603IR','','inherit','open','closed','','94603ir-2','','','2017-08-13 18:29:47','2017-08-13 18:29:47','',29,'http://localhost/itoffice/web/content/uploads/2017/08/94603IR-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (139,1,'2017-08-13 18:30:34','2017-08-13 18:30:34','','94601W0','','inherit','open','closed','','94601w0-2','','','2017-08-13 18:30:34','2017-08-13 18:30:34','',28,'http://localhost/itoffice/web/content/uploads/2017/08/94601W0-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (140,1,'2017-08-13 18:31:11','2017-08-13 18:31:11','','94601C0','','inherit','open','closed','','94601c0-2','','','2017-08-13 18:31:11','2017-08-13 18:31:11','',27,'http://localhost/itoffice/web/content/uploads/2017/08/94601C0-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (141,1,'2017-08-13 18:31:58','2017-08-13 18:31:58','','9910088','','inherit','open','closed','','9910088-2','','','2017-08-13 18:31:58','2017-08-13 18:31:58','',26,'http://localhost/itoffice/web/content/uploads/2017/08/9910088-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (142,1,'2017-08-13 18:32:31','2017-08-13 18:32:31','','AHV620-1TU3-CBK','','inherit','open','closed','','ahv620-1tu3-cbk-2','','','2017-08-13 18:32:31','2017-08-13 18:32:31','',25,'http://localhost/itoffice/web/content/uploads/2017/08/AHV620-1TU3-CBK-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (143,1,'2017-08-13 18:33:03','2017-08-13 18:33:03','','AHD720-1TU3-CBL','','inherit','open','closed','','ahd720-1tu3-cbl-2','','','2017-08-13 18:33:03','2017-08-13 18:33:03','',24,'http://localhost/itoffice/web/content/uploads/2017/08/AHD720-1TU3-CBL-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (144,1,'2017-08-13 18:33:44','2017-08-13 18:33:44','','AHD710-1TU3-CBK','','inherit','open','closed','','ahd710-1tu3-cbk-2','','','2017-08-13 18:33:44','2017-08-13 18:33:44','',23,'http://localhost/itoffice/web/content/uploads/2017/08/AHD710-1TU3-CBK-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (145,1,'2017-08-13 18:34:16','2017-08-13 18:34:16','','A2100DL','','inherit','open','closed','','a2100dl-2','','','2017-08-13 18:34:16','2017-08-13 18:34:16','',22,'http://localhost/itoffice/web/content/uploads/2017/08/A2100DL-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (146,1,'2017-08-13 18:34:49','2017-08-13 18:34:49','','B40001H','','inherit','open','closed','','b40001h-2','','','2017-08-13 18:34:49','2017-08-13 18:34:49','',21,'http://localhost/itoffice/web/content/uploads/2017/08/B40001H-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (147,1,'2017-08-13 18:35:24','2017-08-13 18:35:24','','407001P','','inherit','open','closed','','407001p-2','','','2017-08-13 18:35:24','2017-08-13 18:35:24','',20,'http://localhost/itoffice/web/content/uploads/2017/08/407001P-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (148,1,'2017-08-13 18:35:54','2017-08-13 18:35:54','','A1700AT','','inherit','open','closed','','a1700at-2','','','2017-08-13 18:35:54','2017-08-13 18:35:54','',19,'http://localhost/itoffice/web/content/uploads/2017/08/A1700AT-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (149,1,'2017-08-13 18:36:23','2017-08-13 18:36:23','','99000AW','','inherit','open','closed','','99000aw-2','','','2017-08-13 18:36:23','2017-08-13 18:36:23','',18,'http://localhost/itoffice/web/content/uploads/2017/08/99000AW-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (150,1,'2017-08-13 18:36:55','2017-08-13 18:36:55','','91400FO','','inherit','open','closed','','91400fo-2','','','2017-08-13 18:36:55','2017-08-13 18:36:55','',17,'http://localhost/itoffice/web/content/uploads/2017/08/91400FO-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (151,1,'2017-08-13 18:37:25','2017-08-13 18:37:25','','UP271APC04','','inherit','open','closed','','up271apc04-2','','','2017-08-13 18:37:25','2017-08-13 18:37:25','',16,'http://localhost/itoffice/web/content/uploads/2017/08/UP271APC04-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (152,1,'2017-08-13 18:37:51','2017-08-13 18:37:51','','A1700OI','','inherit','open','closed','','a1700oi-2','','','2017-08-13 18:37:51','2017-08-13 18:37:51','',15,'http://localhost/itoffice/web/content/uploads/2017/08/A1700OI-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (153,1,'2017-08-13 18:38:23','2017-08-13 18:38:23','','990002I','','inherit','open','closed','','990002i-2','','','2017-08-13 18:38:23','2017-08-13 18:38:23','',14,'http://localhost/itoffice/web/content/uploads/2017/08/990002I-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (154,1,'2017-08-13 18:38:57','2017-08-13 18:38:57','','91400HW','','inherit','open','closed','','91400hw-2','','','2017-08-13 18:38:57','2017-08-13 18:38:57','',13,'http://localhost/itoffice/web/content/uploads/2017/08/91400HW-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (155,1,'2017-08-13 18:39:25','2017-08-13 18:39:25','','56300ZO','','inherit','open','closed','','56300zo-2','','','2017-08-13 18:39:25','2017-08-13 18:39:25','',12,'http://localhost/itoffice/web/content/uploads/2017/08/56300ZO-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (156,1,'2017-08-13 18:40:04','2017-08-13 18:40:04','','59301VP','','inherit','open','closed','','59301vp-2','','','2017-08-13 18:40:04','2017-08-13 18:40:04','',11,'http://localhost/itoffice/web/content/uploads/2017/08/59301VP-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (157,1,'2017-08-13 18:40:38','2017-08-13 18:40:38','','94602XP','','inherit','open','closed','','94602xp-2','','','2017-08-13 18:40:38','2017-08-13 18:40:38','',10,'http://localhost/itoffice/web/content/uploads/2017/08/94602XP-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (159,1,'2017-08-18 01:21:16','2017-08-18 01:21:16','','cart-custom','','publish','closed','closed','','cart-custom','','','2017-08-18 01:21:16','2017-08-18 01:21:16','',0,'http://tiempocreativo.com.mx/itoffice.com.mx/web/?page_id=159',0,'page','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2017-08-18 01:21:16','2017-08-18 01:21:16','','cart-custom','','inherit','closed','closed','','159-revision-v1','','','2017-08-18 01:21:16','2017-08-18 01:21:16','',159,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/08/18/159-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2017-08-18 01:33:54','2017-08-18 01:33:54','[woocommerce_cart]','Cart','','inherit','closed','closed','','5-revision-v1','','','2017-08-18 01:33:54','2017-08-18 01:33:54','',5,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/08/18/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2017-08-23 00:40:17','2017-08-23 00:40:17','','Login','','publish','closed','closed','','login','','','2017-08-23 00:40:17','2017-08-23 00:40:17','',0,'http://tiempocreativo.com.mx/itoffice.com.mx/web/?page_id=163',0,'page','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2017-08-23 00:40:17','2017-08-23 00:40:17','','Login','','inherit','closed','closed','','163-revision-v1','','','2017-08-23 00:40:17','2017-08-23 00:40:17','',163,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/08/23/163-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2017-08-24 09:29:41','2017-08-24 09:29:41','','pdf','','publish','closed','closed','','pdf','','','2017-08-24 09:29:41','2017-08-24 09:29:41','',0,'http://tiempocreativo.com.mx/itoffice.com.mx/web/?page_id=165',0,'page','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2017-08-24 09:29:41','2017-08-24 09:29:41','','pdf','','inherit','closed','closed','','165-revision-v1','','','2017-08-24 09:29:41','2017-08-24 09:29:41','',165,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/08/24/165-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2017-09-01 00:49:31','2017-09-01 00:49:31','','hd-webcam-pro-c920-gallery','','inherit','open','closed','','hd-webcam-pro-c920-gallery','','','2017-09-01 00:49:31','2017-09-01 00:49:31','',0,'http://tiempocreativo.com.mx/itoffice.com.mx/web/content/uploads/2017/09/hd-webcam-pro-c920-gallery.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (172,1,'2017-09-01 01:03:11','2017-09-01 01:03:11','','Captura de pantalla 2017-08-31 a las 4.03.00 p.m.','','inherit','open','closed','','captura-de-pantalla-2017-08-31-a-las-4-03-00-p-m','','','2017-09-01 01:03:11','2017-09-01 01:03:11','',0,'http://tiempocreativo.com.mx/itoffice.com.mx/web/content/uploads/2017/09/Captura-de-pantalla-2017-08-31-a-las-4.03.00-p.m..png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (180,1,'2017-09-13 01:23:01','2017-09-13 01:23:01','<h2 class=\"entry-title\">[woof]</h2>','Shop','','inherit','closed','closed','','4-revision-v1','','','2017-09-13 01:23:01','2017-09-13 01:23:01','',4,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/09/13/4-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2017-09-13 01:26:07','2017-09-13 01:26:07','<h3 class=\"woof-modal-title\">[product_cat]</h3>','Shop','','inherit','closed','closed','','4-revision-v1','','','2017-09-13 01:26:07','2017-09-13 01:26:07','',4,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/09/13/4-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2017-09-13 01:26:35','2017-09-13 01:26:35','[product_cat]','Shop','','inherit','closed','closed','','4-revision-v1','','','2017-09-13 01:26:35','2017-09-13 01:26:35','',4,'http://tiempocreativo.com.mx/itoffice.com.mx/web/2017/09/13/4-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (11,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,2,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,2,0);
INSERT INTO `wp_term_relationships` VALUES (16,2,0);
INSERT INTO `wp_term_relationships` VALUES (17,2,0);
INSERT INTO `wp_term_relationships` VALUES (18,2,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,2,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (33,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,2,0);
INSERT INTO `wp_term_relationships` VALUES (38,2,0);
INSERT INTO `wp_term_relationships` VALUES (39,2,0);
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,2,0);
INSERT INTO `wp_term_relationships` VALUES (42,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,2,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
INSERT INTO `wp_term_relationships` VALUES (45,2,0);
INSERT INTO `wp_term_relationships` VALUES (46,2,0);
INSERT INTO `wp_term_relationships` VALUES (47,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,2,0);
INSERT INTO `wp_term_relationships` VALUES (49,2,0);
INSERT INTO `wp_term_relationships` VALUES (50,2,0);
INSERT INTO `wp_term_relationships` VALUES (51,2,0);
INSERT INTO `wp_term_relationships` VALUES (52,2,0);
INSERT INTO `wp_term_relationships` VALUES (53,2,0);
INSERT INTO `wp_term_relationships` VALUES (54,2,0);
INSERT INTO `wp_term_relationships` VALUES (55,2,0);
INSERT INTO `wp_term_relationships` VALUES (56,2,0);
INSERT INTO `wp_term_relationships` VALUES (57,2,0);
INSERT INTO `wp_term_relationships` VALUES (58,2,0);
INSERT INTO `wp_term_relationships` VALUES (59,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
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
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'product_type','',0,50);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
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
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
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
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (3,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (4,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (5,'external','external',0);
INSERT INTO `wp_terms` VALUES (6,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (8,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (9,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (10,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (11,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (12,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (13,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (14,'rated-5','rated-5',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','itoffice');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (15,1,'wp_dashboard_quick_press_last_post_id','185');
INSERT INTO `wp_usermeta` VALUES (16,1,'wp_product_import_error_log','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (17,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:5:{s:32:\"093f65e080a295f8076b1c5722a46aa2\";a:9:{s:10:\"product_id\";i:59;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:10:\"line_total\";d:6128.6999999999998181010596454143524169921875;s:13:\"line_subtotal\";d:6128.6999999999998181010596454143524169921875;s:8:\"line_tax\";d:980.5919999999999845385900698602199554443359375;s:17:\"line_subtotal_tax\";d:980.5919999999999845385900698602199554443359375;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:980.5919999999999845385900698602199554443359375;}s:8:\"subtotal\";a:1:{i:1;d:980.5919999999999845385900698602199554443359375;}}}s:32:\"37693cfc748049e45d87b8c7d8b9aacd\";a:9:{s:10:\"product_id\";i:23;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:8;s:10:\"line_total\";d:10788;s:13:\"line_subtotal\";d:10788;s:8:\"line_tax\";d:1726.079999999999927240423858165740966796875;s:17:\"line_subtotal_tax\";d:1726.079999999999927240423858165740966796875;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:1726.079999999999927240423858165740966796875;}s:8:\"subtotal\";a:1:{i:1;d:1726.079999999999927240423858165740966796875;}}}s:32:\"34173cb38f07f89ddbebc2ac9128303f\";a:9:{s:10:\"product_id\";i:30;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";d:4443.5399999999999636202119290828704833984375;s:13:\"line_subtotal\";d:4443.5399999999999636202119290828704833984375;s:8:\"line_tax\";d:710.966400000000021464074961841106414794921875;s:17:\"line_subtotal_tax\";d:710.966400000000021464074961841106414794921875;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:710.966400000000021464074961841106414794921875;}s:8:\"subtotal\";a:1:{i:1;d:710.966400000000021464074961841106414794921875;}}}s:32:\"1ff1de774005f8da13f42943881c655f\";a:9:{s:10:\"product_id\";i:24;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:8;s:10:\"line_total\";d:11316.239999999999781721271574497222900390625;s:13:\"line_subtotal\";d:11316.239999999999781721271574497222900390625;s:8:\"line_tax\";d:1810.598400000000083309714682400226593017578125;s:17:\"line_subtotal_tax\";d:1810.598400000000083309714682400226593017578125;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:1810.598400000000083309714682400226593017578125;}s:8:\"subtotal\";a:1:{i:1;d:1810.598400000000083309714682400226593017578125;}}}s:32:\"9a1158154dfa42caddbd0694a4e9bdc8\";a:9:{s:10:\"product_id\";i:52;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";d:1455.450000000000045474735088646411895751953125;s:13:\"line_subtotal\";d:1455.450000000000045474735088646411895751953125;s:8:\"line_tax\";d:232.87200000000001409716787748038768768310546875;s:17:\"line_subtotal_tax\";d:232.87200000000001409716787748038768768310546875;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:232.87200000000001409716787748038768768310546875;}s:8:\"subtotal\";a:1:{i:1;d:232.87200000000001409716787748038768768310546875;}}}}}');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse&editor=html');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1505265991');
INSERT INTO `wp_usermeta` VALUES (67,4,'nickname','janettbautista@gmail.com');
INSERT INTO `wp_usermeta` VALUES (68,4,'first_name','Janett');
INSERT INTO `wp_usermeta` VALUES (69,4,'last_name','Bautista');
INSERT INTO `wp_usermeta` VALUES (70,4,'description','');
INSERT INTO `wp_usermeta` VALUES (71,4,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (72,4,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (73,4,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (74,4,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (75,4,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (76,4,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (77,4,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (78,4,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (79,4,'session_tokens','a:2:{s:64:\"a41daa24838a44c56f54adfb828c24ff9c6803b1f63b13062f86582de39976fc\";a:4:{s:10:\"expiration\";i:1505328921;s:2:\"ip\";s:14:\"201.141.39.250\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1504119321;}s:64:\"988eb4ea2dfe154ccab6d1d131b8776c02b5bcaae965745566fad66394a5e5d9\";a:4:{s:10:\"expiration\";i:1505427488;s:2:\"ip\";s:14:\"201.141.39.250\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1504217888;}}');
INSERT INTO `wp_usermeta` VALUES (80,5,'nickname','itofficesolutions');
INSERT INTO `wp_usermeta` VALUES (81,5,'first_name','');
INSERT INTO `wp_usermeta` VALUES (82,5,'last_name','');
INSERT INTO `wp_usermeta` VALUES (83,5,'description','');
INSERT INTO `wp_usermeta` VALUES (84,5,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (85,5,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (86,5,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (87,5,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (88,5,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (89,5,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (90,5,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (91,5,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (92,5,'session_tokens','a:1:{s:64:\"15ba29a3998e916ee57027aa57c2803d63aca57fdc6e696585307605693cc357\";a:4:{s:10:\"expiration\";i:1504400788;s:2:\"ip\";s:14:\"201.141.39.250\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.2.5 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.5\";s:5:\"login\";i:1504227988;}}');
INSERT INTO `wp_usermeta` VALUES (93,5,'wp_dashboard_quick_press_last_post_id','173');
INSERT INTO `wp_usermeta` VALUES (94,5,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (95,5,'wp_user-settings-time','1504228209');
INSERT INTO `wp_usermeta` VALUES (96,5,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:1:{s:32:\"bf8229696f7a3bb4700cfddef19fa23f\";a:9:{s:10:\"product_id\";i:174;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";d:1000;s:13:\"line_subtotal\";d:1000;s:8:\"line_tax\";d:0;s:17:\"line_subtotal_tax\";d:0;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}}}}');
INSERT INTO `wp_usermeta` VALUES (110,7,'nickname','fersaavedra-4@hotmail.com');
INSERT INTO `wp_usermeta` VALUES (111,7,'first_name','prueba');
INSERT INTO `wp_usermeta` VALUES (112,7,'last_name','prueba');
INSERT INTO `wp_usermeta` VALUES (113,7,'description','123456789');
INSERT INTO `wp_usermeta` VALUES (114,7,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (115,7,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (116,7,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (117,7,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (118,7,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (119,7,'wp_capabilities','a:1:{s:11:\"cliente_vip\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (120,7,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (121,7,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (122,7,'phone','123456789');
INSERT INTO `wp_usermeta` VALUES (123,7,'session_tokens','a:2:{s:64:\"2554395759aa7ca792284fc1ab55a513dbc87c49ccda4b024b13a0c428af1f19\";a:4:{s:10:\"expiration\";i:1505584870;s:2:\"ip\";s:15:\"189.216.198.197\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1504375270;}s:64:\"101ce4f4ba90b3927e98dc0c032fd3e09097342c34e1c7991de0c0eda31e82a4\";a:4:{s:10:\"expiration\";i:1505666382;s:2:\"ip\";s:14:\"201.157.89.159\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1504456782;}}');
INSERT INTO `wp_usermeta` VALUES (124,7,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:2:{s:32:\"37693cfc748049e45d87b8c7d8b9aacd\";a:9:{s:10:\"product_id\";i:23;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:10:\"line_total\";d:6742.5;s:13:\"line_subtotal\";d:6742.5;s:8:\"line_tax\";d:1078.799999999999954525264911353588104248046875;s:17:\"line_subtotal_tax\";d:1078.799999999999954525264911353588104248046875;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:1078.799999999999954525264911353588104248046875;}s:8:\"subtotal\";a:1:{i:1;d:1078.799999999999954525264911353588104248046875;}}}s:32:\"1ff1de774005f8da13f42943881c655f\";a:9:{s:10:\"product_id\";i:24;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:10:\"line_total\";d:1414.529999999999972715158946812152862548828125;s:13:\"line_subtotal\";d:1414.529999999999972715158946812152862548828125;s:8:\"line_tax\";d:226.324800000000010413714335300028324127197265625;s:17:\"line_subtotal_tax\";d:226.324800000000010413714335300028324127197265625;s:13:\"line_tax_data\";a:2:{s:5:\"total\";a:1:{i:1;d:226.324800000000010413714335300028324127197265625;}s:8:\"subtotal\";a:1:{i:1;d:226.324800000000010413714335300028324127197265625;}}}}}');
INSERT INTO `wp_usermeta` VALUES (125,7,'billing_first_name','prueba');
INSERT INTO `wp_usermeta` VALUES (126,7,'billing_last_name','prueba');
INSERT INTO `wp_usermeta` VALUES (127,7,'billing_company','');
INSERT INTO `wp_usermeta` VALUES (128,7,'billing_address_1','');
INSERT INTO `wp_usermeta` VALUES (129,7,'billing_address_2','');
INSERT INTO `wp_usermeta` VALUES (130,7,'billing_city','');
INSERT INTO `wp_usermeta` VALUES (131,7,'billing_postcode','');
INSERT INTO `wp_usermeta` VALUES (132,7,'billing_country','');
INSERT INTO `wp_usermeta` VALUES (133,7,'billing_state','');
INSERT INTO `wp_usermeta` VALUES (134,7,'billing_phone','');
INSERT INTO `wp_usermeta` VALUES (135,7,'billing_email','fersaavedra-4@hotmail.com');
INSERT INTO `wp_usermeta` VALUES (136,7,'shipping_first_name','');
INSERT INTO `wp_usermeta` VALUES (137,7,'shipping_last_name','');
INSERT INTO `wp_usermeta` VALUES (138,7,'shipping_company','');
INSERT INTO `wp_usermeta` VALUES (139,7,'shipping_address_1','');
INSERT INTO `wp_usermeta` VALUES (140,7,'shipping_address_2','');
INSERT INTO `wp_usermeta` VALUES (141,7,'shipping_city','');
INSERT INTO `wp_usermeta` VALUES (142,7,'shipping_postcode','');
INSERT INTO `wp_usermeta` VALUES (143,7,'shipping_country','');
INSERT INTO `wp_usermeta` VALUES (144,7,'shipping_state','');
INSERT INTO `wp_usermeta` VALUES (145,7,'last_update','1504455253');
INSERT INTO `wp_usermeta` VALUES (187,1,'session_tokens','a:1:{s:64:\"fae9eea769e068100f1ed69e24aa9795c46a40e2609a9a140571ccc056415c75\";a:4:{s:10:\"expiration\";i:1518421454;s:2:\"ip\";s:13:\"189.216.196.5\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36\";s:5:\"login\";i:1518248654;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'itoffice','$P$BF4cqSLAq8Ma3nRaZg66uLBDdoLeiB1','itoffice','fersaavedra85@hotmail.com','','2017-08-12 22:15:36','',0,'itoffice');
INSERT INTO `wp_users` VALUES (4,'janettbautista@gmail.com','$P$BRTQ205uftARzWdPhtq17aQxjVlouS0','janettbautistagmail-com','','','2017-08-30 18:55:03','',0,'Janett Bautista');
INSERT INTO `wp_users` VALUES (5,'itofficesolutions','$P$BThOGb/i6oA155.3VCkzCmieo4NcnB/','itofficesolutions','itofficecotizacion@gmail.com','','2017-09-01 01:06:01','1504227961:$P$B2TXWnMOUnx6pqgu/ziRL3dcciWL1j/',0,'itofficesolutions');
INSERT INTO `wp_users` VALUES (7,'fersaavedra-4@hotmail.com','$P$BS980xSW/kY6v/hqBnlc4iJqexzkDO/','fersaavedra-4hotmail-com','fersaavedra-4@hotmail.com','','2017-09-02 17:51:01','',0,'prueba prueba');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_tax_rates` VALUES (1,'MX','','16.0000','IVA',1,1,0,0,'');
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woof_query_cache`
--

DROP TABLE IF EXISTS `wp_woof_query_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woof_query_cache` (
  `mkey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `mkey` (`mkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woof_query_cache`
--

LOCK TABLES `wp_woof_query_cache` WRITE;
/*!40000 ALTER TABLE `wp_woof_query_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woof_query_cache` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 17:02:55