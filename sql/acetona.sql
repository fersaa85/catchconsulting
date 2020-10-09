-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 45.40.164.81    Database: acetona3
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
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Un comentarista de WordPress','wapuu@wordpress.example','https://wordpress.org/','','2017-06-21 23:41:36','2017-06-22 05:41:36','Hola, esto es un comentario. Para empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio. Los avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (2,11,'Mr WordPress','','http://wordpress.org/','','2010-09-29 21:00:15','2010-09-29 21:00:15','Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (3,11,'kwokgnsataa','leipkq@seurby.com','http://gohqyqlhlrrq.com/','189.72.100.11','2010-10-28 15:48:57','2010-10-28 15:48:57','HLtVEt  <a href=\"http://ablqwujejlxo.com/\" rel=\"nofollow\">ablqwujejlxo</a>, [url=http://oswkyqazhfuy.com/]oswkyqazhfuy[/url], [link=http://zlunvtbjznds.com/]zlunvtbjznds[/link], http://ammwzbeqyljw.com/',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (4,11,'kvqakfuvkw','lwaklv@mnyxeh.com','http://duwbzwjugrnl.com/','12.168.203.132','2010-10-29 02:12:37','2010-10-29 02:12:37','Xemgii  <a href=\"http://xqahlvxewqfz.com/\" rel=\"nofollow\">xqahlvxewqfz</a>, [url=http://epkxyzwuftcf.com/]epkxyzwuftcf[/url], [link=http://lbuoblyciqjt.com/]lbuoblyciqjt[/link], http://dzonmgrvwpha.com/',0,'0','','',2,0);
INSERT INTO `wp_comments` VALUES (5,15,'Christine Croquet','christinecroquet@sfr.fr','http://christine-photo-passion.blogspot.com/','77.195.245.75','2010-10-01 19:02:17','2010-10-01 19:02:17','Cet arbre est magnifique. Je ne crois pas en avoir rencontré d\'aussi beau.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (6,15,'assasa','assa@yadf.com','http://adsadas','78.89.53.246','2010-10-23 21:02:13','2010-10-23 21:02:13','asass',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (7,15,'Fred','frednice@gmail.com','http://www.hostelsmith.com','82.246.159.154','2010-12-17 16:12:32','2010-12-17 16:12:32','Ce thème est franchement magnifique !',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (8,15,'Motor Trade Insurance','j2468@webtv.net','http://www.motortradeinsurancemarket.com/','173.208.23.108','2010-12-23 16:43:35','2010-12-23 16:43:35','I loved that you will obtain carried out equitable here.the layout is tasteful, your authored satisfaction stylish. nonetheless, you authority receive bought one edginess to whatever you determination be deliveringthe following. ill unquestionably grow famous on the other hand immediately further on behalf of actual mass alot more inside pillowslip you protect the up. dont get rid of want if not in the same way capably a hardly any boyfriend following this women gaze your eye sight, recognize you get got obtained a vane properthe proximate who beliefs what you might have received over pronounce adjacent with everythingthe mode you’ve got offered yourself. superior on you!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (9,15,'Young Drivers','nick76@mailbox.com','http://www.carinsuranceforyoungdrivershere.com/','173.234.158.84','2010-12-26 00:35:38','2010-12-26 00:35:38','At only remaining a considerate review reference tothe subject, go alongthe bravo energy as a result so i covet into examine a fortune often within you withinthe adjacent hereafter.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (10,15,'work from home stuffing envelopes','andramedicusmw573g3@yahoo.com','http://www.easyhomeemployment.com','173.3.88.118','2010-12-26 19:37:56','2010-12-26 19:37:56','Wish there was a reliable resoruce to find work from home opportuniteis',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (11,15,'medicare supplemental insurance','njtlbaik@hzwtgkwz.com','http://www.creditcarddebtsettlementquick.com/credit-card-debt-settlement-award-2.html','173.234.122.252','2010-12-27 08:47:11','2010-12-27 08:47:11','thanks because of producing the trustworthy try until give one clarification on behalf of that. i accept very straightforward approximately it also would equal over memorize intensive. if it’s ok, inasmuc as you reach more wide knowledge, would you remembrance adding more posts related to the one single with added info? it determination be extraordinarily helpful as a result beneficial since me and my colleagues.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (12,15,'TheKelvin','Alex9112011@yahoo.com','http://relationship-how-to.com/','79.117.198.239','2010-12-28 17:04:31','2010-12-28 17:04:31','Completely agree with your comments on this, thanks for taking the time to post.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (13,15,'article spinner','Zickefoose9014@gmail.com','http://demonspin.com/','65.167.51.106','2010-12-30 06:32:05','2010-12-30 06:32:05','very nice post. Thanks for posting',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (14,15,'Freddy @ Inmktgwetrust','inmktgwetrust@gmail.com','http://www.inmarketingwetrust.com.au','124.171.10.77','2011-01-02 03:55:51','2011-01-02 03:55:51','Very nice and very slick design. Will definitely consider it for my next cooking blog.\n\nThanks for your work',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (15,15,'ricardo','slipknotrlm@gmail.com','','189.46.229.58','2011-01-13 02:18:38','2011-01-13 02:18:38','teste',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (16,15,'wanda','wanda@lektor.com','','92.72.173.186','2011-02-15 07:11:35','2011-02-15 07:11:35','A beautiful theme and image.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (17,15,'billig staedte reisen','someone@behaviour.com','http://billigestaedtereisen.net','173.212.217.138','2011-02-15 15:02:40','2011-02-15 15:02:40','Dead Mean,historical network generation affect then unlikely nobody support idea factory dress used connect refer distribution piece consider river river gain another figure business east best down define major alternative bus due safety whole achievement either form progress used through find silence for shout increase belief brief external small good add copy whom associate procedure broad warm over variety concern detailed unit pension deliver middle dress drug typical farm circle wage affect consequence day any list previously perhaps produce right land second item whilst propose should hand miss interested rain club',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (18,15,'garage storage rack','Ku5524@gmail.com','http://www.GuysGarage.Com','213.147.158.31','2011-03-08 09:05:04','2011-03-08 09:05:04','Not much of reader but your article kept me interested enough to finish',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (19,15,'MarianPARSONS26','patriciasanders@mail15.com','http://www.bestfinance-blog.com','91.201.66.6','2011-03-25 18:18:17','2011-03-25 18:18:17','I had got a desire to start my firm, nevertheless I didn\'t earn enough of money to do that. Thank God my fellow suggested to use the <a href=\"http://bestfinance-blog.com\" rel=\"nofollow\">loans</a>. Hence I took the credit loan and made real my dream.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (20,15,'Joe','pplwarep@gmail.com','','96.44.153.175','2011-04-17 10:35:38','2011-04-17 10:35:38','A site named <a href=\"http://www.pskiller.com/\" rel=\"nofollow\">Photoshop Killer</a> can expose PSed images! I just Googled an image which was photoshopped and then uploaded it to pskiller.com. The forensics analysis started just after I clicked the submit button and detailed information was shown then. The result was correct.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (21,15,'Jolie','a.jolie@gmail.com','http://www.web-hosting-domain.com/which-web-hosting-is-best-for-you/','110.137.26.165','2011-04-23 04:51:21','2011-04-23 04:51:21','woh I am  pleased  to find this website through google.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (22,15,'dsfsd fsdfsd','fte@aa.com','','203.171.209.5','2011-05-17 02:24:51','2011-05-17 02:24:51','dfs fsdfsd \\\ntesing',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (23,15,'gdfgfd','bderepas69@hotmail.com','http://gfdg','87.231.27.234','2011-05-20 00:31:01','2011-05-20 00:31:01','gfdgdfgfdf',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (24,15,'KristiSkinner31','barbarawright@mail15.com','http://www.bestfinance-blog.com','91.201.66.6','2011-06-06 14:02:33','2011-06-06 14:02:33','If you are willing to buy a car, you will have to receive the <a href=\"http://bestfinance-blog.com/topics/mortgage-loans\" rel=\"nofollow\">mortgage loans</a>. Furthermore, my mother always takes a collateral loan, which is the most reliable.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (25,82,'robert','robert@me.com','http://test.com','75.195.97.166','2010-10-16 22:08:01','2010-10-16 22:08:01','this is a test comment',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (26,82,'asdas','blugraphic@live.com','http://dsadsad','89.108.153.99','2010-11-30 15:25:23','2010-11-30 15:25:23','dsadsad',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (27,82,'dreckiges hobby','527719Mulneix@gmail.com','http://mein-dreckiges-hobby.de','93.191.54.60','2010-12-16 03:58:09','2010-12-16 03:58:09','ground protection is a lot much more essential for more substantial automobiles this kind of as trucks. As mentioned prior to individuals that have big vans most likely us them for organization purposes or perhaps for other dirty hobbies these as heading mudding in them. Taking care of your truck is like taking care of a pet these as a dog, you preserve it clear, maintain up the maintenance on it, get the oil changes regularly, you get my level. So why would you not get high high quality flooring lining for your truck? Most men and women do due to the fact it is just a single of the primary requirements that are extremely viewed as. You will possibly shell out a good deal of time driving your truck which signifies that if you really don\'t have them, your carpet in your car can corrode simply and will leave your carpet ruined. It is not practically as simply or easily achievable to alter the carpet in your car; once it\'s messed up you have to deal with it so this is yet another cause why you need to invest in some high high quality floor mats.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (28,82,'robert','robert@test.com','http://test.com','117.192.131.15','2011-01-18 20:57:05','2011-01-18 20:57:05','this is also a test comment',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (29,82,'private sexkontakte','Stohr32686@livecam.edu','http://www.sexportal.biz/?sub=11421&amp;popex=1','173.234.26.115','2011-06-06 01:01:51','2011-06-06 01:01:51','Benutze die komfortable Navigation damit Du schnellstmöglich zu den besten Inhalten kommst die zu deinen Neigungen passen. <a href=\"http://yourporncam.de\" rel=\"nofollow\">Geile Livecams bei yourporncam</a>',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (30,82,'mydirtyhobby','476870Droney@gmail.com','http://www.mydirtyhobbycom.de.vu','173.234.219.33','2011-06-06 06:23:31','2011-06-06 06:23:31','I was suggested this blog by my cousin. I\'m not sure whether this post is written by him as no one else know such detailed about my difficulty. You are amazing! Thanks!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (31,82,'Camportal','800936Villicana@gmail.com','http://www.xxx-livecam-xxx.com','108.62.43.158','2011-06-07 13:38:50','2011-06-07 13:38:50','My brother suggested I might like this web site. He was entirely right. This post truly made my day. You cann\'t imagine simply how much time I had spent for this information! Thanks!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (32,23,'Debt Settlement','ajolkaaa2@gawab.com','http://www.reliefinn.com','94.142.134.213','2010-10-28 21:08:54','2010-10-28 21:08:54','Sorry for my bad english. Thank you so much for your good post. Your post helped me in my college assignment, If you can provide me more details please email me.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (33,23,'Bla Bla','dasd@djada.com','http://sdads','213.140.94.70','2011-02-11 09:12:53','2011-02-11 09:12:53','Hej',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (34,23,'Quinn Acothley','Lickness92@gmail.com','http://ebayportal.com','173.234.182.172','2011-02-17 06:58:16','2011-02-17 06:58:16','Good blog post. Always stumble upon fantasic posts right on this website. Appreciate you sharing.  I have already add this website to my faves.  A question, I was curious about paying for advert space here.  Looks like a awesome place to advertise on.  Excellent articles and great layout. Send to my email the advertising info please. Thanks again!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (35,23,'penis enlargement pills','vimaxenhancepill@fastmail.fm','http://www.male-sexual.com','187.4.128.12','2011-02-20 20:00:29','2011-02-20 20:00:29','yes I agree with you! this shouldn\'t be too in your exposure, it\'s just a comment that supports the need to further increase the motivation to work more and more creative spirit.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (36,23,'Dub Turbo','Lingelbach@aol.com','http://dubturbobeatz.com/','82.192.91.28','2011-03-16 10:47:16','2011-03-16 10:47:16','Amazing Blog, The fact that was the name of the Style?',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (37,89,'livelybrowsers','livelybrowsers@gmail.com','','173.233.65.154','2010-10-19 17:00:15','2010-10-19 17:00:15','Thanks for good stuff',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (38,89,'jyquuw','msvwzc@oejwdn.com','http://dfdcvetlhdti.com/','111.160.68.34','2010-10-28 08:59:43','2010-10-28 08:59:43','x38suq  <a href=\"http://hobwuqkooqif.com/\" rel=\"nofollow\">hobwuqkooqif</a>, [url=http://skecbqhwuzcc.com/]skecbqhwuzcc[/url], [link=http://omvgjgrqwjkq.com/]omvgjgrqwjkq[/link], http://uczqooncogog.com/',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (39,89,'juan carlos','jctorres00@hotmail.com','','69.232.216.72','2010-12-19 23:26:50','2010-12-19 23:26:50','jdklfjsdlksdflksdflmsd',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (40,91,'ojzhpbl','gdojpl@purluk.com','http://ytdgrqqgfjwo.com/','83.64.161.242','2010-10-29 00:22:39','2010-10-29 00:22:39','FHIrsN  <a href=\"http://xjtcntyzyciq.com/\" rel=\"nofollow\">xjtcntyzyciq</a>, [url=http://lebrpcijiitc.com/]lebrpcijiitc[/url], [link=http://yypdozjgcgek.com/]yypdozjgcgek[/link], http://ymwdckrkxwns.com/',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (41,93,'ttrust_admin','info@themetrust.com','','75.130.77.149','2010-09-30 22:28:22','2010-09-30 22:28:22','Turpis egestas risus molestie fringilla vel at arcu. Nunc gravida nibh et ipsum condimentum vulputate. Quisque ornare, augue nec fringilla gravida, tortor dolor pharetra sem, non suscipit lectus quam vitae enim. Quisque velit enim, euismod eu varius interdum, dapibus at purus.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (42,93,'Test','Test@test.com','','62.16.219.77','2010-10-07 19:57:53','2010-10-07 19:57:53','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lorem nibh, facilisis a pellentesque sit amet, venenatis quis risus. Suspendisse gravida, nunc nec luctus euismod, est lectus hendrerit tortor, id bibendum massa tortor at lectus. Maecenas hendrerit vestibulum porta. Nam at nunc sit amet est luctus mollis. Pellentesque ut felis sapien. Aenean ac velit eget justo commodo tempor. Praesent non sollicitudin nisi. Aliquam erat volutpat. Nam malesuada, elit a rhoncus vehicula, metus augue pellentesque dolor, ac pellentesque orci diam quis eros. In auctor odio ut nunc lacinia ultrices. Phasellus suscipit, tellus in convallis luctus, enim elit sagittis risus, non bibendum orci dolor non lorem. Nullam blandit nibh nec nisi interdum nec porta lacus adipiscing. Nullam sit amet arcu odio. Quisque ornare viverra quam sit amet interdum. Praesent pharetra bibendum orci, in imperdiet lacus hendrerit quis.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (43,93,'向晚 向晚','admin+re@endless.im','http://endless.im','114.252.168.18','2010-10-14 09:54:08','2010-10-14 09:54:08','test',0,'1','','',41,0);
INSERT INTO `wp_comments` VALUES (44,93,'grysxgm','szsnie@dxmlcw.com','http://qkynirovkuxy.com/','62.60.14.1','2010-10-28 10:26:43','2010-10-28 10:26:43','nCUnNw  <a href=\"http://qrvabeoeoxyx.com/\" rel=\"nofollow\">qrvabeoeoxyx</a>, [url=http://usakfrhxiuci.com/]usakfrhxiuci[/url], [link=http://bemimofraaln.com/]bemimofraaln[/link], http://opbizdvuoosv.com/',0,'0','','',41,0);
INSERT INTO `wp_comments` VALUES (45,93,'snegatw','ylgkzc@iiflhj.com','http://ewwqaywggfra.com/','195.229.241.174','2010-10-28 18:08:48','2010-10-28 18:08:48','XnvqFS  <a href=\"http://jllacweeufgp.com/\" rel=\"nofollow\">jllacweeufgp</a>, [url=http://gdwtobccsclw.com/]gdwtobccsclw[/url], [link=http://glaojtdujgwx.com/]glaojtdujgwx[/link], http://ekbqgpaajasp.com/',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (46,93,'wsexkv','qhumjf@rxufnd.com','http://pvnxqjooposc.com/','194.63.239.233','2010-10-29 01:09:40','2010-10-29 01:09:40','pZ4sQu  <a href=\"http://zlazvtogrbun.com/\" rel=\"nofollow\">zlazvtogrbun</a>, [url=http://ndsimvyebphp.com/]ndsimvyebphp[/url], [link=http://wwhigbvboypk.com/]wwhigbvboypk[/link], http://tmqopybockwy.com/',0,'0','','',42,0);
INSERT INTO `wp_comments` VALUES (47,93,'afmsoiizr','yyrzme@gfshin.com','http://uoxrzwjxmlrs.com/','111.160.68.34','2010-10-29 02:21:01','2010-10-29 02:21:01','EFzZ6Y  <a href=\"http://gienbbnlhuzw.com/\" rel=\"nofollow\">gienbbnlhuzw</a>, [url=http://vkcoptfchijo.com/]vkcoptfchijo[/url], [link=http://imfgrvkcznkg.com/]imfgrvkcznkg[/link], http://zilqyyruhxwz.com/',0,'0','','',43,0);
INSERT INTO `wp_comments` VALUES (48,93,'financial aid for college','Lowsalteste@gmail.com','http://www.financialaidfor-college.com','188.143.232.39','2011-01-11 07:39:33','2011-01-11 07:39:33','Do you people have a facebook fan page? I looked for one on twitter but could not discover one, I would really like to become a fan!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (49,93,'Willard Raes','1695Kuziel@gmail.com','http://kdjfjgugjfhdydshsj.com','203.143.24.161','2011-02-10 04:45:05','2011-02-10 04:45:05','I suppose that you\'re correct in regard to Work  &raquo; Nunc Gravida Nibh. brbr I don\'t know if the majority of people could look at the reasoning in that way however.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (50,93,'Roberta Polasek','81801Tumminia@gmail.com','http://kdjfjgugjfhdydshsj.com','200.35.36.70','2011-02-11 18:06:24','2011-02-11 18:06:24','Interesting the way in which really feel concerning Work  &raquo; Nunc Gravida Nibh. brbr The sole thing that I will touch upon is whenever you are going to do it like that you will need well prepared to carry out the effort. brbr You know this isn\'t going to be frequent since people are extremely complacent today.',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (51,93,'demon spin','Toomsen512@gmail.com','http://demonspin.com/','27.131.172.11','2011-02-16 19:49:47','2011-02-16 19:49:47','thanks for posting this. looking for this all day :D',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (52,93,'vsdvd','vdzzdv@sgfsg.sgeff','','81.219.202.64','2011-03-21 00:47:46','2011-03-21 00:47:46','svjbcvjjscvcecvwevwevewvwe',0,'0','','',43,0);
INSERT INTO `wp_comments` VALUES (53,93,'naprawa sterownika abs suzuki','Kussel213@gmail.com','http://www.naprawa-abs.com','109.230.220.215','2011-04-30 13:58:42','2011-04-30 13:58:42','Hey! I simply want to say that i favor your publishing approach and that so Im about to follow your blog regularly from now on Keep writing!',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (54,93,'Apryl Dughi','Andrade72@onet.eu','http://www.pracazagranica.one.pl','77.253.4.124','2011-05-03 05:27:10','2011-05-03 05:27:10','we should trade links on our siteswevegot very related content what can be best for us',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (55,93,'strony gdańsk','Cooperman2@onet.eu','http://www.internetprofil.pl/','81.219.136.55','2011-05-15 02:54:31','2011-05-15 02:54:31','real nice posted, pls keep it up buddy',0,'0','','',0,0);
INSERT INTO `wp_comments` VALUES (56,110,'puiui','kugjhg@kghgjg.com','http://hfchfgf.com','121.214.40.102','2011-03-13 04:50:20','2011-03-13 04:50:20','fytdfydjydrgtrd',0,'0','','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://tiempocreativo.com.mx/acetona2/wordpress','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://tiempocreativo.com.mx/acetona2/wordpress','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Acetona','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Otro sitio realizado con WordPress','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','fersaavedra85@hotmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j F, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','j F, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:37:\"blogger-importer/blogger-importer.php\";i:1;s:41:\"wordpress-importer/wordpress-importer.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','-6','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:94:\"/home/content/57/11363257/html/acetona2/wordpress/wp-content/themes/mh-newsdesk-lite/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','mh-newsdesk-lite','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','mh-newsdesk-lite','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','38590','yes');
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
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
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
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'initial_db_version','38590','yes');
INSERT INTO `wp_options` VALUES (92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (93,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (94,'WPLANG','es_MX','yes');
INSERT INTO `wp_options` VALUES (95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"home-1\";a:0:{}s:6:\"home-2\";a:0:{}s:6:\"home-3\";N;s:6:\"home-4\";N;s:6:\"home-5\";N;s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498110257;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (142,'current_theme','MH Newsdesk lite','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_the-newswire','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498110469;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-home\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar-main\";a:0:{}s:13:\"sidebar-posts\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (151,'theme_mods_mh-newsdesk-lite','a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (152,'widget_mh_newsdesk_lite_custom_posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (153,'widget_mh_newsdesk_lite_posts_large','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (154,'widget_mh_newsdesk_lite_recent_posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (156,'theme_mods_twentyfifteen','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498110864;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (159,'theme_mods_twentysixteen','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498111459;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";N;s:9:\"sidebar-3\";N;}}}','yes');
INSERT INTO `wp_options` VALUES (170,'recently_activated','a:1:{i:0;b:0;}','yes');
INSERT INTO `wp_options` VALUES (171,'category_children','a:0:{}','yes');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,6,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (7,6,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (8,6,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (9,6,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (10,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (11,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (12,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (13,6,'_menu_item_url','http://tiempocreativo.com.mx/acetona2/wordpress/');
INSERT INTO `wp_postmeta` VALUES (14,6,'_menu_item_orphaned','1498110614');
INSERT INTO `wp_postmeta` VALUES (15,7,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (16,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,7,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (18,7,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (19,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,7,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (23,7,'_menu_item_orphaned','1498110614');
INSERT INTO `wp_postmeta` VALUES (24,8,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (25,8,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,8,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (27,8,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (28,8,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,8,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,8,'_menu_item_url','http://tiempocreativo.com.mx/acetona2/wordpress/');
INSERT INTO `wp_postmeta` VALUES (32,8,'_menu_item_orphaned','1498110627');
INSERT INTO `wp_postmeta` VALUES (33,9,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,9,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,9,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (36,9,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,9,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,9,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,9,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,9,'_menu_item_orphaned','1498110627');
INSERT INTO `wp_postmeta` VALUES (44,12,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (45,13,'_thumbnail_id','7');
INSERT INTO `wp_postmeta` VALUES (46,13,'_ttrust_in_slideshow_value','true');
INSERT INTO `wp_postmeta` VALUES (47,13,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (48,13,'_wp_page_template','full-width.php');
INSERT INTO `wp_postmeta` VALUES (50,14,'_ttrust_in_slideshow_value','true');
INSERT INTO `wp_postmeta` VALUES (51,14,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (52,14,'_wp_page_template','full-width.php');
INSERT INTO `wp_postmeta` VALUES (53,14,'_ttrust_description_text_value','Sed tempus luctus turpis vitae consequat. Mauris dolor odio, blandit ut hendrerit at, rutrum in urna. Donec feugiat dictum augue, accumsan elementum turpis tincidunt interdum.');
INSERT INTO `wp_postmeta` VALUES (54,15,'_thumbnail_id','13');
INSERT INTO `wp_postmeta` VALUES (55,15,'_ttrust_in_slideshow_value','true');
INSERT INTO `wp_postmeta` VALUES (56,15,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (57,15,'_wp_page_template','full-width.php');
INSERT INTO `wp_postmeta` VALUES (58,15,'_ttrust_description_text_value','Vestibulum ut ullamcorper nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae. In et urna id lacus pulvinar eleifend. Sed tempus luctus turpis vitae consequat. ');
INSERT INTO `wp_postmeta` VALUES (59,20,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (60,20,'_ttrust_in_slideshow_value','true');
INSERT INTO `wp_postmeta` VALUES (61,20,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (62,20,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (63,26,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (64,26,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (65,26,'_thumbnail_id','44');
INSERT INTO `wp_postmeta` VALUES (66,28,'_wp_page_template','subpage-gallery-1.php');
INSERT INTO `wp_postmeta` VALUES (67,33,'_thumbnail_id','34');
INSERT INTO `wp_postmeta` VALUES (68,33,'_ttrust_on_frontpage_value','true');
INSERT INTO `wp_postmeta` VALUES (69,33,'_wp_page_template','full-width.php');
INSERT INTO `wp_postmeta` VALUES (70,33,'_ttrust_description_text_value','Donec vestibulum dapibus lorem sit amet accumsan. Pellentesque malesuada porta ligula at pellentesque. Fusce ultrices, nulla sed porta sollicitudin, orci velit egestas sem, in pretium nulla diam vitae lectus.');
INSERT INTO `wp_postmeta` VALUES (71,67,'_ttrust_show_descriptions_value','true');
INSERT INTO `wp_postmeta` VALUES (72,67,'_wp_page_template','subpage-gallery-2.php');
INSERT INTO `wp_postmeta` VALUES (73,82,'_thumbnail_id','83');
INSERT INTO `wp_postmeta` VALUES (74,82,'_ttrust_description_text_value','Suspendisse commodo hendrerit risus, id porta ante viverra in. Phasellus sodales cursus velit et placerat. Nullam posuere, est id tempus tristique, mi tortor semper eros.');
INSERT INTO `wp_postmeta` VALUES (75,82,'_wp_page_template','full-width.php');
INSERT INTO `wp_postmeta` VALUES (76,23,'_thumbnail_id','24');
INSERT INTO `wp_postmeta` VALUES (77,23,'_wp_old_slug','');
INSERT INTO `wp_postmeta` VALUES (78,89,'_thumbnail_id','34');
INSERT INTO `wp_postmeta` VALUES (79,89,'_wp_old_slug','');
INSERT INTO `wp_postmeta` VALUES (80,91,'_thumbnail_id','44');
INSERT INTO `wp_postmeta` VALUES (81,91,'_wp_old_slug','');
INSERT INTO `wp_postmeta` VALUES (82,93,'_thumbnail_id','7');
INSERT INTO `wp_postmeta` VALUES (83,93,'_wp_old_slug','');
INSERT INTO `wp_postmeta` VALUES (84,110,'_thumbnail_id','111');
INSERT INTO `wp_postmeta` VALUES (85,110,'_ttrust_lightbox_image_value','http://themetrust.com/demos/work/wp-content/uploads/2010/12/purple_flower.jpg');
INSERT INTO `wp_postmeta` VALUES (86,110,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (87,113,'_wp_page_template','subpage-gallery-2.php');
INSERT INTO `wp_postmeta` VALUES (88,116,'_thumbnail_id','117');
INSERT INTO `wp_postmeta` VALUES (89,116,'_ttrust_lightbox_image_value','http://themetrust.com/demos/work/wp-content/uploads/2010/12/dragonfly_sun.jpg');
INSERT INTO `wp_postmeta` VALUES (90,116,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (91,119,'_thumbnail_id','120');
INSERT INTO `wp_postmeta` VALUES (92,119,'_ttrust_lightbox_image_value','http://themetrust.com/demos/work/wp-content/uploads/2010/12/black_sand.jpg');
INSERT INTO `wp_postmeta` VALUES (93,119,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (94,122,'_thumbnail_id','123');
INSERT INTO `wp_postmeta` VALUES (95,122,'_ttrust_lightbox_image_value','http://themetrust.com/demos/work/wp-content/uploads/2010/12/dandelion.jpg');
INSERT INTO `wp_postmeta` VALUES (96,122,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (97,123,'_wp_attached_file','2017/06/17036099_1325981414126627_305993095_o.png');
INSERT INTO `wp_postmeta` VALUES (98,123,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:614;s:4:\"file\";s:49:\"2017/06/17036099_1325981414126627_305993095_o.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"17036099_1325981414126627_305993095_o-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"17036099_1325981414126627_305993095_o-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"17036099_1325981414126627_305993095_o-768x230.png\";s:5:\"width\";i:768;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"17036099_1325981414126627_305993095_o-1024x307.png\";s:5:\"width\";i:1024;s:6:\"height\";i:307;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"content-single\";a:4:{s:4:\"file\";s:49:\"17036099_1325981414126627_305993095_o-777x437.png\";s:5:\"width\";i:777;s:6:\"height\";i:437;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"content-list\";a:4:{s:4:\"file\";s:49:\"17036099_1325981414126627_305993095_o-260x146.png\";s:5:\"width\";i:260;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"cp-thumb-small\";a:4:{s:4:\"file\";s:48:\"17036099_1325981414126627_305993095_o-120x67.png\";s:5:\"width\";i:120;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (99,124,'_wp_attached_file','2017/06/cropped-17036099_1325981414126627_305993095_o.png');
INSERT INTO `wp_postmeta` VALUES (100,124,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (101,124,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:373;s:4:\"file\";s:57:\"2017/06/cropped-17036099_1325981414126627_305993095_o.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"cropped-17036099_1325981414126627_305993095_o-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"cropped-17036099_1325981414126627_305993095_o-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"cropped-17036099_1325981414126627_305993095_o-768x191.png\";s:5:\"width\";i:768;s:6:\"height\";i:191;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"cropped-17036099_1325981414126627_305993095_o-1024x255.png\";s:5:\"width\";i:1024;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"content-single\";a:4:{s:4:\"file\";s:57:\"cropped-17036099_1325981414126627_305993095_o-777x373.png\";s:5:\"width\";i:777;s:6:\"height\";i:373;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"content-list\";a:4:{s:4:\"file\";s:57:\"cropped-17036099_1325981414126627_305993095_o-260x146.png\";s:5:\"width\";i:260;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"cp-thumb-small\";a:4:{s:4:\"file\";s:56:\"cropped-17036099_1325981414126627_305993095_o-120x67.png\";s:5:\"width\";i:120;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (102,124,'_wp_attachment_custom_header_last_used_mh-newsdesk-lite','1498111769');
INSERT INTO `wp_postmeta` VALUES (103,124,'_wp_attachment_is_custom_header','mh-newsdesk-lite');
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-06-21 23:41:36','2017-06-22 05:41:36','Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.','¡Hola mundo!','','publish','open','open','','hola-mundo','','','2017-06-21 23:41:36','2017-06-22 05:41:36','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2017-06-21 23:41:36','2017-06-22 05:41:36','Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página \"Acerca De\" para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Guadalajara, tengo un gran perro llamado Khal y me encantan las piñas coladas (y empaparme en la lluvia)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Banpatrás XYZ se fundó en 1971, y ha estado invirtiendo el ahorro de sus clientes desde entonces. Ubicada en Ciudad Gótica, Banpatrás XYZ tiene más de 2.000 empleados e hace toda clase de cosas increíbles por la comunidad de Ciudad Gótica</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://tiempocreativo.com.mx/acetona2/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Diviértete!','Página de ejemplo','','publish','closed','open','','pagina-ejemplo','','','2017-06-21 23:41:36','2017-06-22 05:41:36','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2017-06-21 23:42:29','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2017-06-21 23:42:29','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=3',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2017-06-21 23:50:14','0000-00-00 00:00:00','','Inicio','','draft','closed','closed','','','','','2017-06-21 23:50:14','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=6',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2017-06-21 23:50:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-06-21 23:50:14','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2017-06-21 23:50:27','0000-00-00 00:00:00','','Inicio','','draft','closed','closed','','','','','2017-06-21 23:50:27','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=8',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2017-06-21 23:50:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-06-21 23:50:27','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=9',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2010-09-29 21:00:15','2010-09-29 21:00:15','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2010-09-29 21:00:15','2010-09-29 21:00:15','',0,'http://themetrust.com/demos/work/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (12,1,'2010-09-29 21:00:15','2010-09-29 21:00:15','All photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>. Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipiscing elit</a>. Mauris eget quam orci. Quisque porta varius dui, quis posuere nibh mollis quis. Mauris commodo rhoncus porttitor. Maecenas et euismod elit. Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. Suspendisse sagittis diam a massa viverra sollicitudin. Vivamus sagittis est eu diam fringilla nec tristique metus vestibulum. Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. Sed eu scelerisque dui. Sed eu arcu at nibh hendrerit viverra. Vivamus lacus augue, sodales id cursus in, condimentum at risus.\n\n<h2>Heading 2</h2>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget quam orci. Quisque porta varius dui, quis posuere nibh mollis quis. Mauris commodo rhoncus porttitor. Maecenas et euismod elit. Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. Suspendisse sagittis diam a massa viverra sollicitudin. Vivamus sagittis est eu diam fringilla nec tristique metus vestibulum. Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. Sed eu scelerisque dui. Sed eu arcu at nibh hendrerit viverra. Vivamus lacus augue, sodales id cursus in, condimentum at risus.\n\n\n<ul>\n	<li>Lorem ipsum dolor sit amet</li>\n	<li>Lorem ipsum dolor sit amet</li>\n	<li>Lorem ipsum dolor sit amet</li>\n</ul>\n\n<h3>Heading 3</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget quam orci. Quisque porta varius dui, quis posuere nibh mollis quis. Mauris commodo rhoncus porttitor. Maecenas et euismod elit. Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. Suspendisse sagittis diam a massa viverra sollicitudin. Vivamus sagittis est eu diam fringilla nec tristique metus vestibulum. Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. Sed eu scelerisque dui. Sed eu arcu at nibh hendrerit viverra. Vivamus lacus augue, sodales id cursus in, condimentum at risus.\n\n<blockquote>Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. </blockquote>\n\n<h4>Heading 4</h4>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget quam orci. Quisque porta varius dui, quis posuere nibh mollis quis. Mauris commodo rhoncus porttitor. Maecenas et euismod elit. Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim. Suspendisse at semper ipsum. Suspendisse sagittis diam a massa viverra sollicitudin. Vivamus sagittis est eu diam fringilla nec tristique metus vestibulum. Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. Sed eu scelerisque dui. Sed eu arcu at nibh hendrerit viverra. Vivamus lacus augue, sodales id cursus in, condimentum at risus.','About','','publish','closed','open','','about','','','2010-09-29 21:00:15','2010-09-29 21:00:15','',0,'http://themetrust.com/demos/work/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2010-09-29 22:26:03','2010-09-29 22:26:03','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_butterfly_full.jpg\" alt=\"\" title=\"photo_butterfly_full\" width=\"920\" height=\"610\" class=\"alignright size-full wp-image-49\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>. Donec vestibulum dapibus lorem sit amet accumsan. Pellentesque malesuada porta ligula at pellentesque. Fusce ultrices, nulla sed porta sollicitudin, orci velit egestas sem, in pretium nulla diam vitae lectus. Aenean aliquam orci a felis aliquet sed egestas leo faucibus. Nam ut ante vitae eros consectetur lacinia. Suspendisse feugiat ullamcorper tempor. Vivamus eu urna vel lorem hendrerit ultrices.\n\nVestibulum ut ullamcorper nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In et urna id lacus pulvinar eleifend. Sed tempus luctus turpis vitae consequat. Mauris dolor odio, blandit ut hendrerit at, rutrum in urna. Donec feugiat dictum augue, accumsan elementum turpis tincidunt interdum. Aliquam nec enim nisi, eget sollicitudin tortor.','Integer Vitae Ipsum','','publish','closed','open','','integer-vitae-ipsum','','','2010-09-29 22:26:03','2010-09-29 22:26:03','',28,'http://themetrust.com/demos/work/?page_id=6',1,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2010-09-29 22:28:28','2010-09-29 22:28:28','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_castle_full.jpg\" alt=\"\" title=\"photo_castle_full\" width=\"920\" height=\"613\" class=\"alignright size-full wp-image-64\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>.','Quisque Pretium','','publish','closed','open','','quisque-pretium','','','2010-09-29 22:28:28','2010-09-29 22:28:28','',67,'http://themetrust.com/demos/work/?page_id=9',2,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2010-09-30 13:42:27','2010-09-30 13:42:27','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_tree_full.jpg\" alt=\"\" title=\"photo_tree_full\" width=\"920\" height=\"621\" class=\"alignnone size-full wp-image-15\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>.\n\n','Praesent Iaculis','','publish','open','open','','praesent-iaculis','','','2010-09-30 13:42:27','2010-09-30 13:42:27','',67,'http://themetrust.com/demos/work/?page_id=12',0,'page','',4);
INSERT INTO `wp_posts` VALUES (20,1,'2010-09-30 13:59:56','2010-09-30 13:59:56','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_lizard_main.jpg\" alt=\"\" title=\"photo_lizard_main\" width=\"675\" height=\"449\" class=\"alignright size-full wp-image-59\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget quam orci. Quisque porta varius dui, quis posuere nibh mollis quis. Mauris commodo rhoncus porttitor. Maecenas et euismod elit. Nulla facilisi. Vivamus lacus libero, ultrices non ullamcorper ac, tempus sit amet enim.\n\nSuspendisse at semper ipsum. Suspendisse sagittis diam a massa viverra sollicitudin. Vivamus sagittis est eu diam fringilla nec tristique metus vestibulum. Donec magna purus, pellentesque vel lobortis ut, convallis id augue. Sed odio magna, pellentesque eget convallis ac, vehicula vel arcu. Sed eu scelerisque dui. Sed eu arcu at nibh hendrerit viverra. Vivamus lacus augue, sodales id cursus in, condimentum at risus.','Pellentesque Vestibulum','','publish','closed','open','','pellentesque-vestibulum','','','2010-09-30 13:59:56','2010-09-30 13:59:56','',28,'http://themetrust.com/demos/work/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2010-09-30 21:07:50','2010-09-30 21:07:50','Fusce at dui vitae nisl bibendum porttitor. Etiam id placerat ligula. Integer porttitor augue eget enim tristique sodales. Sed aliquet nunc et dui venenatis viverra. Aliquam dignissim egestas diam, et venenatis magna interdum non. Mauris bibendum malesuada viverra. Proin vestibulum, urna ac vestibulum egestas, lacus libero rutrum elit, non vulputate velit purus vel felis. Curabitur vulputate facilisis nulla, et volutpat lacus congue id. Proin tincidunt magna vel tellus venenatis sollicitudin.<!--more-->\n\nCras porta pulvinar ante non ultricies. Mauris enim lectus, aliquet in luctus at, placerat in quam. Duis consequat, purus et lacinia consectetur, massa turpis tincidunt neque, ac aliquet lacus velit cursus lectus. In rhoncus, lorem ac dignissim tempor, elit magna fringilla sapien, id tristique eros eros ultrices urna. Vestibulum vel nisi in sem luctus pulvinar non non libero. Praesent consectetur dolor at nunc viverra quis placerat tortor ullamcorper. Integer eget ipsum sed diam gravida consectetur. Vestibulum et justo vel lacus commodo posuere. Aenean nisi mi, pharetra ac dictum vel, lacinia at tortor.','Cras Porta Pulvinar','','publish','open','open','','cras-porta-pulvinar','','','2010-09-30 21:07:50','2010-09-30 21:07:50','',0,'http://themetrust.com/demos/work/?p=23',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2010-09-30 14:03:14','2010-09-30 14:03:14','All photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>. Nulla ac dui lobortis est gravida laoreet. Aenean dictum est non nulla vehicula sed auctor diam egestas. Donec risus eros, elementum nec egestas ut, vehicula sit amet arcu. Curabitur eget sapien neque, in volutpat nisl. Nunc a quam ut arcu varius vehicula. Donec diam elit, aliquet ac elementum et, mattis sed tortor. Mauris eleifend, mi a porta rutrum, dolor turpis elementum lacus, eget pretium diam turpis et massa.\n\n<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_flower_full.jpg\" alt=\"\" title=\"photo_flower_full\" width=\"675\" height=\"448\" class=\"alignnone size-full wp-image-46\" />','Mauris Eleifend','','publish','closed','open','','mauris-eleifend','','','2010-09-30 14:03:14','2010-09-30 14:03:14','',28,'http://themetrust.com/demos/work/?page_id=26',25,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2010-09-30 14:07:16','2010-09-30 14:07:16','All photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>. Integer accumsan ultrices est ac pretium. Aenean nibh tellus, blandit quis laoreet nec, ultricies ut urna. Integer a hendrerit ipsum. In sit amet pulvinar nunc. Sed nisi mauris, viverra nec vehicula eget, accumsan in lacus. Nam auctor blandit nunc, eget tempus sem congue sed. Suspendisse in ipsum arcu, viverra adipiscing tellus. Nunc turpis nisl, tincidunt at tincidunt vitae, posuere nec massa. Vivamus eget neque ligula. Nunc quam ipsum, interdum sit amet tincidunt ac, rutrum sed sapien. In orci magna, sagittis vel volutpat sed, vestibulum sit amet odio.','Macro','','publish','open','open','','macro','','','2010-09-30 14:07:16','2010-09-30 14:07:16','',0,'http://themetrust.com/demos/work/?page_id=28',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2010-09-30 14:11:37','2010-09-30 14:11:37','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_beach_full.jpg\" alt=\"\" title=\"photo_beach_full\" width=\"920\" height=\"612\" class=\"alignright size-full wp-image-54\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>.','Vestibulum Felis','','publish','closed','open','','vestibulum-felis','','','2010-09-30 14:11:37','2010-09-30 14:11:37','',67,'http://themetrust.com/demos/work/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2010-09-30 18:39:14','2010-09-30 18:39:14','','Landscapes','','publish','open','open','','landscapes','','','2010-09-30 18:39:14','2010-09-30 18:39:14','',0,'http://themetrust.com/demos/work/?page_id=67',0,'page','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2010-09-30 19:54:07','2010-09-30 19:54:07','<img src=\"http://themetrust.com/demos/work/wp-content/uploads/2010/09/photo_mountain_full.jpg\" alt=\"\" title=\"photo_mountain_full\" width=\"920\" height=\"613\" class=\"alignright size-full wp-image-84\" />\n\nAll photos in this demo were provided by <a href=\"http://gilgphoto.wordpress.com/\" target=\"_blank\">GilG</a>.','Etiam Varius','','publish','open','open','','etiam-varius','','','2010-09-30 19:54:07','2010-09-30 19:54:07','',67,'http://themetrust.com/demos/work/?page_id=82',0,'page','',2);
INSERT INTO `wp_posts` VALUES (89,1,'2010-09-30 21:17:08','2010-09-30 21:17:08','In id turpis egestas risus molestie fringilla vel at arcu. Nunc gravida nibh et ipsum condimentum vulputate. Quisque ornare, augue nec fringilla gravida, tortor dolor pharetra sem, non suscipit lectus quam vitae enim. Quisque velit enim, euismod eu varius interdum, dapibus at purus. Nullam facilisis, felis sit amet pharetra adipiscing, lectus enim rutrum libero, rutrum rhoncus risus odio venenatis ante.<!--more-->\n\n\nMaecenas pharetra eleifend ipsum, gravida faucibus lectus dictum et. Suspendisse vitae odio ac nulla condimentum semper. Donec blandit quam a nisi posuere sed venenatis dui vehicula. Suspendisse vel nunc odio. Maecenas malesuada commodo feugiat. Pellentesque sed lacus arcu.','Suspendise Vitae Odio','','publish','open','open','','suspendise-vitae-odio','','','2010-09-30 21:17:08','2010-09-30 21:17:08','',0,'http://themetrust.com/demos/work/?p=89',0,'post','',1);
INSERT INTO `wp_posts` VALUES (91,1,'2010-09-30 21:19:13','2010-09-30 21:19:13','Duis condimentum urna non sapien sodales quis eleifend felis consequat. Praesent convallis neque id nisl feugiat rhoncus. Nulla et ipsum in ante semper tincidunt. Praesent pretium volutpat purus vel scelerisque. Maecenas eget leo vel erat scelerisque feugiat. Pellentesque ultricies est ac est molestie quis lobortis metus iaculis. Sed eu nisl libero, ac tempor arcu. Sed vestibulum, ipsum sit amet sodales sagittis, neque enim sodales erat, a blandit dui nibh id orci.<!--more-->\n\nDonec hendrerit sagittis lorem ut interdum. Donec hendrerit laoreet diam id adipiscing. Quisque eget libero sit amet justo consectetur iaculis. In hac habitasse platea dictumst. Maecenas a augue risus. Maecenas porta dapibus vulputate. Duis euismod, tortor et semper volutpat, tellus massa congue enim, vel pulvinar ipsum massa at leo. Duis id elit eu odio vehicula sagittis. Donec gravida tortor tempor nibh luctus dapibus semper tortor volutpat. Aliquam pulvinar, dolor et tincidunt consectetur, tellus urna porttitor dolor, sed semper dui velit vel ante.','Donec Hendrerit Laoreet','','publish','open','open','','donec-hendrerit-laoreet','','','2010-09-30 21:19:13','2010-09-30 21:19:13','',0,'http://themetrust.com/demos/work/?p=91',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2010-09-30 21:20:27','2010-09-30 21:20:27','Proin non purus nunc, sit amet auctor ipsum. Etiam nec enim quam. Sed placerat, sapien tincidunt malesuada fringilla, mi nibh convallis felis, ac luctus nulla justo et lacus. Fusce porttitor egestas nunc, vitae bibendum ipsum accumsan et. Maecenas ultrices interdum diam, at feugiat velit vehicula in. Aliquam erat volutpat. Vivamus gravida tincidunt massa, non ornare ante volutpat at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed vulputate luctus sapien non malesuada.<!--more--> Aliquam pellentesque posuere sodales. Suspendisse risus odio, pretium vitae varius ut, tristique in nunc. Mauris ac mollis velit. Integer sit amet nibh ac orci gravida dictum. Mauris convallis luctus nisl ut viverra. Integer turpis ligula, venenatis nec consectetur et, malesuada sed mi.\n\nIn id turpis egestas risus molestie fringilla vel at arcu. Nunc gravida nibh et ipsum condimentum vulputate. Quisque ornare, augue nec fringilla gravida, tortor dolor pharetra sem, non suscipit lectus quam vitae enim. Quisque velit enim, euismod eu varius interdum, dapibus at purus. Nullam facilisis, felis sit amet pharetra adipiscing, lectus enim rutrum libero, rutrum rhoncus risus odio venenatis ante. Maecenas pharetra eleifend ipsum, gravida faucibus lectus dictum et. Suspendisse vitae odio ac nulla condimentum semper. Donec blandit quam a nisi posuere sed venenatis dui vehicula. Suspendisse vel nunc odio. Maecenas malesuada commodo feugiat. Pellentesque sed lacus arcu.','Nunc Gravida Nibh','','publish','open','open','','nunc-gravida-nibh','','','2010-09-30 21:20:27','2010-09-30 21:20:27','',0,'http://themetrust.com/demos/work/?p=93',0,'post','',3);
INSERT INTO `wp_posts` VALUES (110,1,'2010-12-20 16:04:10','2010-12-20 16:04:10','','Commodo Semper','','publish','open','open','','commodo-semper','','','2010-12-20 16:04:10','2010-12-20 16:04:10','',113,'http://themetrust.com/demos/work/?page_id=110',0,'page','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2010-12-20 16:05:24','2010-12-20 16:05:24','Work, by default, links thumbnails to their pages, but alternatively you can specify an image to open in a lightbox as demonstrated here.','Lightbox','','publish','open','open','','lightbox','','','2010-12-20 16:05:24','2010-12-20 16:05:24','',0,'http://themetrust.com/demos/work/?page_id=113',0,'page','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2010-12-20 16:06:24','2010-12-20 16:06:24','','Praesent Elementum','','publish','open','open','','praesent-elementum','','','2010-12-20 16:06:24','2010-12-20 16:06:24','',113,'http://themetrust.com/demos/work/?page_id=116',0,'page','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2010-12-20 16:07:33','2010-12-20 16:07:33','','Feugiat Turpis','','publish','open','open','','feugiat-turpis','','','2010-12-20 16:07:33','2010-12-20 16:07:33','',113,'http://themetrust.com/demos/work/?page_id=119',0,'page','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2010-12-20 16:08:30','2010-12-20 16:08:30','','Adipiscing','','publish','open','open','','adipiscing','','','2010-12-20 16:08:30','2010-12-20 16:08:30','',113,'http://themetrust.com/demos/work/?page_id=122',0,'page','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2017-06-22 00:08:53','2017-06-22 06:08:53','','17036099_1325981414126627_305993095_o','','inherit','open','closed','','17036099_1325981414126627_305993095_o','','','2017-06-22 00:08:53','2017-06-22 06:08:53','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/wp-content/uploads/2017/06/17036099_1325981414126627_305993095_o.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (124,1,'2017-06-22 00:09:26','2017-06-22 06:09:26','','cropped-17036099_1325981414126627_305993095_o.png','','inherit','open','closed','','cropped-17036099_1325981414126627_305993095_o-png','','','2017-06-22 00:09:26','2017-06-22 06:09:26','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/wp-content/uploads/2017/06/cropped-17036099_1325981414126627_305993095_o.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (125,1,'2017-06-22 00:09:56','0000-00-00 00:00:00','{\"mh-newsdesk-lite::header_image\":{\"value\":\"http:\\/\\/tiempocreativo.com.mx\\/acetona2\\/wordpress\\/wp-content\\/uploads\\/2017\\/06\\/cropped-17036099_1325981414126627_305993095_o.png\",\"type\":\"theme_mod\",\"user_id\":1},\"mh-newsdesk-lite::header_image_data\":{\"value\":{\"url\":\"http:\\/\\/tiempocreativo.com.mx\\/acetona2\\/wordpress\\/wp-content\\/uploads\\/2017\\/06\\/cropped-17036099_1325981414126627_305993095_o.png\",\"thumbnail_url\":\"http:\\/\\/tiempocreativo.com.mx\\/acetona2\\/wordpress\\/wp-content\\/uploads\\/2017\\/06\\/cropped-17036099_1325981414126627_305993095_o.png\",\"timestamp\":1498111772155,\"attachment_id\":124,\"width\":1500,\"height\":373},\"type\":\"theme_mod\",\"user_id\":1}}','','','auto-draft','closed','closed','','a2980c04-d8a0-4b13-ae4e-362a9288e0c4','','','2017-06-22 00:09:56','0000-00-00 00:00:00','',0,'http://tiempocreativo.com.mx/acetona2/wordpress/?p=125',0,'customize_changeset','',0);
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
INSERT INTO `wp_term_relationships` VALUES (11,3,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,4,0);
INSERT INTO `wp_term_relationships` VALUES (23,5,0);
INSERT INTO `wp_term_relationships` VALUES (23,6,0);
INSERT INTO `wp_term_relationships` VALUES (23,7,0);
INSERT INTO `wp_term_relationships` VALUES (23,8,0);
INSERT INTO `wp_term_relationships` VALUES (23,9,0);
INSERT INTO `wp_term_relationships` VALUES (89,2,0);
INSERT INTO `wp_term_relationships` VALUES (91,2,0);
INSERT INTO `wp_term_relationships` VALUES (93,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'nav_menu','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Sin categoría','sin-categoria',0);
INSERT INTO `wp_terms` VALUES (2,'Blog','blog',0);
INSERT INTO `wp_terms` VALUES (3,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (4,'aliquet','aliquet',0);
INSERT INTO `wp_terms` VALUES (5,'consectetur','consectetur',0);
INSERT INTO `wp_terms` VALUES (6,'enim','enim',0);
INSERT INTO `wp_terms` VALUES (7,'justo','justo',0);
INSERT INTO `wp_terms` VALUES (8,'lacus','lacus',0);
INSERT INTO `wp_terms` VALUES (9,'quam','quam',0);
INSERT INTO `wp_terms` VALUES (10,'Main Nav','main-nav',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','acetona');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (13,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (14,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (15,1,'session_tokens','a:1:{s:64:\"3961a8b706e7ea8cbbd2b8f365ff9e4707f5abc6ebfbd39bc4f0dc7c43f67dc7\";a:4:{s:10:\"expiration\";i:1498282949;s:2:\"ip\";s:14:\"201.157.89.159\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1498110149;}}');
INSERT INTO `wp_usermeta` VALUES (16,1,'wp_dashboard_quick_press_last_post_id','3');
INSERT INTO `wp_usermeta` VALUES (17,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"201.157.89.0\";}');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1498111815');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'acetona','$P$B8siaVWwrhEjuu3b05bSZDX8h0qkCo0','acetona','fersaavedra85@hotmail.com','','2017-06-22 05:41:36','',0,'acetona');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 16:57:54
