-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 68.178.143.154    Database: carambola
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
-- Table structure for table `adminusers`
--

DROP TABLE IF EXISTS `adminusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminusers` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminusers`
--

LOCK TABLES `adminusers` WRITE;
/*!40000 ALTER TABLE `adminusers` DISABLE KEYS */;
INSERT INTO `adminusers` VALUES (1,'fersaavedra85@hotmail.com','ae005ceb7e9a217cced2f8aa354187c7:KJLzUNW4','fer','saa ó ñ','kreativeco','superadmin',1,'2014-08-26 15:38:25');
INSERT INTO `adminusers` VALUES (7,'jc@kreativeco.com','5d7f9253f77bbb9fa271a31449d129ab:Kqmgxy9O','Juan Carlos','Tlaxque','kreativeco','superadmin',1,'2014-10-23 11:22:23');
INSERT INTO `adminusers` VALUES (8,'carambola','042736e6c3adb0baeb3d1891d6022bf8:13jD4YGL','Carambola','Taller digital','{carambola}','superadmin',1,'2015-10-07 14:50:30');
/*!40000 ALTER TABLE `adminusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_image` varchar(55) NOT NULL,
  `file_video` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `author` varchar(55) NOT NULL,
  `date` datetime NOT NULL,
  `published` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (4,'calor-humano-en-un-mundo-enredado','Calor humano en un mundo enredado','<p>Todavía recuerdo cuando quería visitar un restaurante y buscaba el teléfono en la<a href=\"http://www.pymempresario.com/wp-content/uploads/2014/07/directorio-seccion-amarilla.jpg\" target=\"_blank\"> sección amarilla </a>(clic si no sabes que es), llamaba y una amable señorita me daba la información que solicitaba.  Ahora sólo abro el Facebook y busco el lugar, ahí encuentro toda la información. </p>\r\n\r\n<p>Claro, hoy en día pocos recuerdan la sección amarilla, pero todos sabemos que una marca que no está en redes sociales es prácticamente invisible. La pregunta es ¿de qué sirve estar sin estar? </p>\r\n\r\n<p>Definitivamente se ha vuelto un must subirse al barco de exposición que navega en las Redes Sociales; y es un hecho que hoy se ha convertido en el mejor canal para entrar en contacto con los clientes, pero muchas empresas/negocios/agencias/personas/etc. centran sus esfuerzos exclusivamente en mostrar o vender la “marca” y se olvidan de el factor humano. </p>\r\n\r\n<p>Todo se vuelca en nuevos fans, followers, alcance, impresiones, entre otros sistemas de métricas, pero ¿y las personas?. Esas personas que van a leer, a seguir y a interactuar necesitan saber que hay alguien con la camiseta de la marca puesta que les va a hacer caso. </p>\r\n\r\n<p>Pienso que hay que recuperar esa esencia, las Redes Sociales llegaron para facilitar la relación con el consumidor,  pero no hay por qué dejar atrás esa vieja costumbre de conectar con personas. Es necesario aprovechar el potencial que tienen las Redes Sociales para establecer lazos con los que, si te siguen, es porque de verdad algo tienen que decir de tu marca. </p>\r\n\r\n<p>Yo no los considero sólo como simples números y estadísticas, claro que se necesita todo esto para medir resultados, pero en realidad me gusta conversar con ellos. Me gusta responder, pero sobre todo escuchar (o leerles, literalmente hablando). </p>\r\n\r\n<p>Quizá suena muy sentimental, pero en mi opinión, la mejor forma de generar un buen “Engagement” es esa, prestarles mucha atención para conocerlos y saber cómo te ven. </p>\r\n\r\n','4313501.jpg','','','Amaya Lopez','2015-09-19 13:28:07',1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carambolos`
--

DROP TABLE IF EXISTS `carambolos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carambolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `email` varchar(155) NOT NULL,
  `tel` varchar(55) NOT NULL,
  `sentence` text NOT NULL,
  `file` varchar(55) NOT NULL,
  `background` varchar(55) NOT NULL,
  `order` int(1) NOT NULL,
  `published` int(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carambolos`
--

LOCK TABLES `carambolos` WRITE;
/*!40000 ALTER TABLE `carambolos` DISABLE KEYS */;
INSERT INTO `carambolos` VALUES (1,'Gerardo Cantón','\"El patrón\"','gerardo@carambola.mx','13','','gerardo.jpg','popup.png',1,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (2,'Javier Cantón','Operaciones','javier@carambola.mx','15','Regresa a lo básico, mantenlo simple, pero sobre todo: ¡Disfrútalo!','javi.jpg','popup.png',2,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (3,'Amaya López','Creativo','amaya@carambola.mx','19','¿Y si en lugar de planear tanto, voláramos un poco más alto?3','amaya.jpg','popup.png',3,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (4,'Daniel Negrete','Creativo','daniel@carambola.mx','19','Cocinando ideas - / No sé qué hago aquí si yo soy chef','dani.jpg','popup.png',4,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (5,'Julie Fernández','Diseño','julie@carambola.mx','18','¡Imaginar es peligrosamente divertido!','julie.jpg','popup.png',5,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (6,'Ana Monge','Diseño','ana@carambola.mx','18','Mi forma favorita de pasar el tiempo: letras y café.\r\n','ana.jpg','popup.png',6,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (7,'Luz Acuña','Copy','luz@carambola.mx','18','Nunca te arrepientas de lo que hagas.','luz.jpg','popup.png',7,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (8,'David Olvera','Copy','david@carambola.mx','18','Me photoshopearon para no salir tan guapo','david.jpg','popup.png',8,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (9,'Karla Navarro','Logística','karla@carambola.mx','11','Sólo quien cree en la magia está dispuesto a encontrarla.<<','karla.jpg','popup.png',9,1,'0000-00-00 00:00:00');
INSERT INTO `carambolos` VALUES (10,'Luis Vargas','Asesoría','luis@carambola.mx','14','No entiendo bien mis funciones en la empresa','pollo.jpg','popup.png',10,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `carambolos` ENABLE KEYS */;
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
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'fersaavedra85@hotmail.com','2015-09-19 18:17:26');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unilever`
--

DROP TABLE IF EXISTS `unilever`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unilever` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(11) NOT NULL,
  `apellido` varchar(55) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `celular` varchar(55) NOT NULL,
  `compania` varchar(55) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `numero_letra` varchar(55) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `ciudad` varchar(55) NOT NULL,
  `mesas_por_dia` int(2) NOT NULL,
  `distribuidor` varchar(100) NOT NULL,
  `newsletter` int(1) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  `business` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unilever`
--

LOCK TABLES `unilever` WRITE;
/*!40000 ALTER TABLE `unilever` DISABLE KEYS */;
INSERT INTO `unilever` VALUES (1,'','','','','','','','','','','',0,'',0,'2014-11-18 20:30:40','2014-11-18 20:30:40','','');
INSERT INTO `unilever` VALUES (2,'Sr.','saa','fer','fersaavedra85@hotmail.com','Gerente General','N','fsdf','sdfsd','sdf','sdf','sdf',0,'Distribuidor habitual',0,'2014-11-18 21:41:58','2014-11-19 13:39:57','Cafeteria/Fonda','sdf');
INSERT INTO `unilever` VALUES (3,'Sr.','fer','saa','fersaavedra-1@hotmail.com','Due','12','123','123','12','12','12',12,'12',0,'2014-11-20 09:24:54','2014-11-20 09:24:54','Cafeteria/Fonda','12');
INSERT INTO `unilever` VALUES (4,'Sr.','Jim','Paulo Enrique','pauloejimenez@msn.com','Chef','5513084518','Servicios Gastron','Coporo','39 int. 1A','52900','Atizap',0,'Sam',1,'2014-11-20 10:04:57','2014-11-20 10:04:57','Banquetes','M');
INSERT INTO `unilever` VALUES (5,'Srita.','Torrijos','Luz Angela','redaccion@nuevonorte.com.mx','Otro','5532275955','Revista Comedores Industriales','Ramos Millan','71','53070','Naucalpan de Ju',0,'Distribuidor habitual',1,'2014-11-20 10:05:54','2014-11-20 10:05:54','Otro','M');
INSERT INTO `unilever` VALUES (6,'Sra.','RODRIGUEZ LARA','IVETH CRISTAL','cristal_2311@hotmail.com','Ventas','8112884174','CASA GARZA','AV. SANTO DOMINGO COL. JUANA DE ARCO.','3501','64510','MONTERREY',0,'Distribuidor habitual',1,'2014-11-20 10:06:03','2014-11-20 10:06:03','Mayorista','MEXICO');
INSERT INTO `unilever` VALUES (7,'Sra.','YOLANDA','NORIEGA','lasquintas@hlq.com.mx','Otro','7771359255','hosteria las Quintas','BLV. DIAZ ORDAZ','NUEVE','62448','CUERNAVACA MORELOS',0,'Distribuidor habitual',1,'2014-11-20 10:07:59','2014-11-20 10:07:59','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (8,'Sr.','Qui','Iber James','iber.james.quinones@gmail.com','Otro','3186945039','Sucroal S.A.','Recta Cali-Palmira Km. 18','18','7','763537',0,'Distribuidor habitual',1,'2014-11-20 10:08:59','2014-11-20 10:08:59','Distribuidor','Colombia');
INSERT INTO `unilever` VALUES (9,'Sr.','alonso  avelar','victor  manuel','valonso@royalresorts.com','Chef','9981216469','royal resorts','porto grande','9B','77350','cancun',250,'unilver',1,'2014-11-20 10:15:22','2014-11-20 10:15:22','Hotel','mexico');
INSERT INTO `unilever` VALUES (10,'Sra.','melendrez','maria de jesus','chuyita_1994@hotmail.com','Otro','06622220127','telcel','topahue','220','83106','hermosillo',2,'sams',1,'2014-11-20 10:21:00','2014-11-20 10:21:00','Otro','mexico');
INSERT INTO `unilever` VALUES (11,'Srita.','gutierrez','pilar','pggoc@hotmail.com','Otro','0445510079654','Colegio','Silca','1','54080','Tlalnepantla',0,'Distribuidor habitual',1,'2014-11-20 10:21:21','2014-11-20 10:21:21','Otro','mexico');
INSERT INTO `unilever` VALUES (12,'Sr.','cordova','fernando','cordova871@hotmail.com','Responsable de Alimentos y Bebidas','5531067913','internacional dog`s bar (kosher)','secretaria de marina','458 piso 10 oficina 1002 A (corporativo horizonte)','05100','mexico df',20,'distributoto',1,'2014-11-20 10:25:53','2014-11-20 10:25:53','Restaurante','mexico');
INSERT INTO `unilever` VALUES (13,'Srita.','GARCIA GARCIA','MARGARITA','jardinparaiso10@hotmail.com','Chef','5532528659','GRUPO PARAISO','EJIDO SAL LORENZO TEZONCO','No.164 COL: SAN FRANCISCO CULHUACAN','04420','MEXICO',0,'Distribuidor habitual',1,'2014-11-20 10:28:13','2014-11-20 10:28:13','Banquetes','MEXICO');
INSERT INTO `unilever` VALUES (14,'Sr.','Santiago','Flores','santyfloresr@gmail.com','Due','8713152563','propio','c. 12','6','35020','GOMEZ PALACIO',5,'Sam\'s',1,'2014-11-20 10:28:32','2014-11-20 10:28:32','Otro','M');
INSERT INTO `unilever` VALUES (15,'Srita.','Alanis','Diana','alanisdiana50@hotmail.com','Due','7224040644','telcel','Antonio Salanueva','903','50190','Toluca',80,'Costco o central de abastos de toluca',1,'2014-11-20 10:28:38','2014-11-20 10:28:38','Banquetes','M');
INSERT INTO `unilever` VALUES (16,'Sr.','GARAY MEDEL','JUAN PABLO','ventasraul2@hotmail.com','Ventas','3317998244','abarrotes raul sa de cv','calle 7','315 Col FFCC','44440','GUADALAJARA',0,'Distribuidor habitual',0,'2014-11-20 10:29:17','2014-11-20 10:29:17','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (17,'Sr.','Ruiz Castillo','Miguel ','miko_85@msn.com','Due','5540857765','El ruise','Norte 33','62 colonia moctezuma 2da secci','15530','Ciudad de M',40,'Central de abastos',1,'2014-11-20 10:30:08','2014-11-20 10:30:08','Cafeteria/Fonda','M');
INSERT INTO `unilever` VALUES (18,'Srita.','ALVARADO MARRON','KARINA','ventasraul8@hotmail.com','Ventas','3313149380','ABARROTES RAUL','CALLE 7','315','444410','GUADALAJARA',0,'Distribuidor habitual',1,'2014-11-20 10:31:18','2014-11-20 10:31:18','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (19,'Sra.','CORRAL','CECILIA','contraloria@hotelbugambilia.com.mx','Compras','6621128148','Hotelera de Nogales SA de CV','BLVD. KINO','712','83150','HERMOSILLO SONORA',20,'SAMS CLUB',1,'2014-11-20 10:35:33','2014-11-20 10:35:33','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (20,'Sra.','GARIBAY','ERIKA','garibayz@hotmail.com','Otro','5555043027','tv azteca','sur 113','342','09090','distrito federal',4,'Distribuidor habitual',1,'2014-11-20 10:39:24','2014-11-20 10:39:24','Otro','mexico');
INSERT INTO `unilever` VALUES (21,'Sra.','Ortiz','Lourdes','malummx@hotmail.com','Otro','5523618067','Tacos Don Manolito Coyoac','Aguayo','49','04100','Ciudad de M',20,'Distribuidor habitual',1,'2014-11-20 10:43:17','2014-11-20 10:43:17','Restaurante','M');
INSERT INTO `unilever` VALUES (22,'Sr.','flores','josue sebastian','reck_josue@hotmail.com','Chef','9991910291','dolci ricotta','calle 91 entre 50 y 52','num 473','97314','merida yucatan',8,'paqueteria',1,'2014-11-20 10:43:41','2014-11-20 10:43:41','Otro','mexico');
INSERT INTO `unilever` VALUES (23,'Sr.','PEREZ ALONSO','ENRIQUE','schnawzer@hotmail.com','Chef','5513406026','telcel','CORDOBA','74 301','06700','MEXICO D.F',0,'Distribuidor habitual',1,'2014-11-20 10:47:45','2014-11-20 10:47:45','Banquetes','MEXICO');
INSERT INTO `unilever` VALUES (24,'Sr.','Fitch','Luis','luis_fitch@yahoo.com','Gerente General','6643853960','Tortas El Turco','Av Huajuco','37','22170','Tijuana',24,'Food Service de M',1,'2014-11-20 10:56:07','2014-11-20 10:56:07','Restaurante','Mexico');
INSERT INTO `unilever` VALUES (25,'Sr.','Mendoza','Daniel','danielmg311@gmail.com','Chef','4087962762','metro pcs','santana row','1753','95129','san jose',47,'sysco',1,'2014-11-20 11:03:07','2014-11-20 11:03:07','Restaurante','estados unidos');
INSERT INTO `unilever` VALUES (26,'Sra.','MONTES','NIDIA','nmtnutri@hotmail.com','Responsable de Alimentos y Bebidas','9932516191','HOSPITAL AIR','PASEO TABASCO','1114','86040','VILLAHERMOSA',0,'Distribuidor habitual',1,'2014-11-20 11:03:48','2014-11-20 11:03:48','Cafeteria/Fonda','TABASCO');
INSERT INTO `unilever` VALUES (27,'Sra.','Luna gonzalez','Mar','lunitalg@hotmail.com','Cocina','5510491588','Iusacell','Av. Centenario 3045','Edf 9 depto 401','01580','Mexico',0,'Distribuidor habitual',1,'2014-11-20 11:12:05','2014-11-20 11:12:05','Cafeteria/Fonda','Mexico');
INSERT INTO `unilever` VALUES (28,'Sra.','Moranchel','Estrella','estrella0524@hotmail.com','Otro','5540854519','Hogar','Av. M','410 Edif. E Depto 104','16030','M',2,'Distribuidor habitual',1,'2014-11-20 11:13:25','2014-11-20 11:13:25','Otro','M');
INSERT INTO `unilever` VALUES (29,'Sr.','DOMINGUEZ','JORGE','jorgefed@yahoo.com','Responsable de Alimentos y Bebidas','5528550342','INMEDHOSP','HUIZACEHS','125-1','14386','DF',0,'Distribuidor habitual',1,'2014-11-20 11:14:17','2014-11-20 11:14:17','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (30,'Sra.','GUTIERREZ','GUADALUPE','gpe_gutierrez@hotmail.com','Ventas','52777649','MEZCALES DE LEYENDA','UNION','73 LOCAL \"D\"','11800','DISTRITO FEDERAL',10,'Distribuidor habitual',1,'2014-11-20 11:14:49','2014-11-20 11:14:49','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (31,'Sra.','sanchez','angelica','arely1185@hotmail.com','Due','0459811065074','propia','prolongaci','32','24095','campeche, campeche',4,'ninguno',1,'2014-11-20 11:18:48','2014-11-20 11:18:48','Otro','mexico');
INSERT INTO `unilever` VALUES (32,'Sr.','gongora canul','jorge','jorge-hgc@hotmail.com','Due','0459824339813','propia','calle 14 barrio tizimin seybaplaya, champoton','1','24460','campeche',2,'ninguno',1,'2014-11-20 11:23:13','2014-11-20 11:23:13','Otro','mexico');
INSERT INTO `unilever` VALUES (33,'Sra.','vidales valenzuela','teresita de jesus','tere_vidales@hotmail.com','Gerente General','6441373438','ninguna','ebano pte','1225','85100','obregon',0,'Distribuidor habitual',1,'2014-11-20 11:28:26','2014-11-20 11:28:26','Otro','M');
INSERT INTO `unilever` VALUES (34,'Sra.','Ruiz Moreno','Elsa Silvia','karlamar94@Hotmail.com','Cocina','3331171126','telcel','paseo de las araucarias','#1958','45188','zapopan, Jalisco',10,'abarrotes Ra',1,'2014-11-20 11:32:15','2014-11-20 11:32:15','Cafeteria/Fonda','M');
INSERT INTO `unilever` VALUES (35,'Sr.','MARQUEZ','LUIS','CHEF.MARQUEZ87@HOTMAIL.COM','Chef','8712193898','TELCEL','BLVD. TORREON MATAMOROS','4050','27260','TORREON',150,'Distribuidor habitual',1,'2014-11-20 11:35:13','2014-11-20 11:35:13','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (36,'Sr.','Martinez Andrade','Julio Cesar','jmartinez@achfood.com.mx','Otro','0445529558986','ACH Foods Mexico','Av. Prol. Paseo de la Reforma','Num 1015 Torre A Piso 14','01376','Mexico Distrito Federal',0,'Distribuidor habitual',1,'2014-11-20 11:40:31','2014-11-20 11:40:31','Otro','Mexico');
INSERT INTO `unilever` VALUES (37,'Sra.','quintos avila','anabel','anabel_quintos@hotmail.com','Responsable de Alimentos y Bebidas','8331281494','mi casita','hidalgo','1408','89130','tampico',0,'Distribuidor habitual',1,'2014-11-20 11:40:46','2014-11-20 11:40:46','Otro','mexico');
INSERT INTO `unilever` VALUES (38,'Srita.','moreno','almeida','almeida_cristy@hotmail.com','Due','6621637765','el mezon de kristal','gral calles','246 doscientos cuarenta y seis','83290','hermosillo',5,'Distribuidor habitual',1,'2014-11-20 11:44:48','2014-11-20 11:44:48','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (39,'Sra.','lizaldi','maria dolores','mdllasesor@hotmail.com','Due','5510799694','equipo atl','20 de noviembre','7 casa 28','54600','Tepotzotlan edo de mexico',20,'sams',1,'2014-11-20 11:46:24','2014-11-20 11:46:24','Banquetes','mexico');
INSERT INTO `unilever` VALUES (40,'Srita.','P','Lina Marcela','lina.perez02@hotmail.com','Otro','3168223759','no','calle 11 # 51 - 30 casa 38','calle 11 # 51 - 30 casa 38','12345','cali',10,'Distribuidor habitual',1,'2014-11-20 11:46:32','2014-11-20 11:46:32','Otro','colombia');
INSERT INTO `unilever` VALUES (41,'Sra.','Gomez Lara','Ma. Cecilia','ceci.gomez.lara@gmail.com','Otro','0445520806857','Personal','Ing. Manuel Marroquin y Rivera','71-1','07870','Distrito Federal',0,'Distribuidor habitual',1,'2014-11-20 11:56:55','2014-11-20 11:56:55','Otro','Mexico');
INSERT INTO `unilever` VALUES (42,'Srita.','herrera','yoalli','yoalli_27@hotmail.com','Due','5511567453','ensaladas','Allende','205','57630','mexico',0,'sams club, cosco',1,'2014-11-20 12:00:20','2014-11-20 12:00:20','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (43,'Sr.','Buenfil Soberanis','Luis Adrian','a.buenfil@hotmail.com','Due','9995933450','Adrian Buenfil','64A por 19A y 19B','541','97314','M',0,'Distribuidor habitual',1,'2014-11-20 12:08:51','2014-11-20 12:08:51','Otro','M');
INSERT INTO `unilever` VALUES (44,'Sra.','vasquez may','maria del rosario','rosmaypatin@yahoo.com.mx','Otro','7821685164','telcel','km1+400 carretera santa agueda','103','93295','poza rica veracruz',8,'Distribuidor habitual',1,'2014-11-20 12:09:55','2014-11-20 12:09:55','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (45,'Sr.','gonzalez de la rosa','erasmo','cacheton_270304@hotmail.com','Chef','4621697424','comercializadora gab','carretera panamericana','km 5','36543','irapuato',0,'Distribuidor habitual',0,'2014-11-20 12:12:37','2014-11-20 12:12:37','Comedor','mexico');
INSERT INTO `unilever` VALUES (46,'Sr.','cota','alejandro','alexccc69@hotmail.com','Otro','6121529578','personal','langosta e gaviotas y pelicanos','133','23075','la paz baja california sur',2,'Distribuidor habitual',1,'2014-11-20 12:13:39','2014-11-20 12:13:39','Comedor','mexico');
INSERT INTO `unilever` VALUES (47,'Sr.','montoya guerrero','gerardo','gerardocp@hotmail.com','Cocina','3314224029','conalep plantel zapopan/universidad enrique diaz de leo','loma de oslo','561','45640','tlajomulcp de zu',0,'Distribuidor habitual',1,'2014-11-20 12:19:42','2014-11-20 12:19:42','Otro','mexico');
INSERT INTO `unilever` VALUES (48,'Sra.','Ortega huerta','Rebeca','rebeca_ortega70@hotmail.com','Gerente General','0445567062858','Burgers Grill','Bah','98-103','11300','M',0,'Distribuidor habitual',1,'2014-11-20 12:35:52','2014-11-20 12:35:52','Restaurante','M');
INSERT INTO `unilever` VALUES (49,'Sra.','Salda','Silvia Mirela','mirela1107@hotmail.com','Gerente General','5561111899','Expresso Coffe Bagels','Periferico SUR','4349 LOC 35','14210','M',30,'Distribuidor habitual',1,'2014-11-20 12:36:18','2014-11-20 12:36:18','Cafeteria/Fonda','M');
INSERT INTO `unilever` VALUES (50,'Sr.','GARZA MENDEZ','VALDEMAR','valdemar.garza@foodservice.com.mx','Ventas','4777008787','FOOD SERVICE DE MEXICO, S.A.DE C.V.','FRAY DANIEL MIRELES 1620','1620  mil seiscinetos veinte','37268','LEON',0,'FOOD SERVICE',1,'2014-11-20 12:47:11','2014-11-20 12:47:11','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (51,'Sr.','Rico','Ivan de Jesus','jovival007@hotmail.com','Due','2888837702','TELCEL','Carranza','411 Loc 2','95400','Cosamaloapan, Veracruz',10,'Distribuidor habitual',1,'2014-11-20 12:51:31','2014-11-20 12:51:31','Cafeteria/Fonda','Mexico');
INSERT INTO `unilever` VALUES (52,'Sr.','Avila','Juan jos','chefjuanjo@yahoo.com','Due','9992920586','Chef a domicilio SA de CV','77 por 24 y 26','166','97115','M',100,'2000 pax diarios',1,'2014-11-20 12:51:32','2014-11-20 12:51:32','Comedor','Yucat');
INSERT INTO `unilever` VALUES (53,'Sr.','SANCHEZ ARANDA','MIGUEL ANGEL','msanchez_torero@hotmail.com','Responsable de Alimentos y Bebidas','4771545730','OPERAINN SA DE CV','BLVD. ADILFO LOPEZ MATEOS','2501','37270','LEON GTO',200,'Distribuidor habitual',0,'2014-11-20 12:51:51','2014-11-20 12:51:51','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (54,'Sr.','Gonzalez','Gabriel','fotografia.gabo@gmail.com','Cocina','5522602308','Estudio Conciencia','Bahia de Ballenas','57/201','11300','Distrito Federal',0,'Distribuidor habitual',1,'2014-11-20 12:53:42','2014-11-20 12:53:42','Cafeteria/Fonda','Mexico');
INSERT INTO `unilever` VALUES (55,'Sra.','gomez','pilar','info@maripybanquetes.com.mx','Due','7771696560','maripy banquetes','tabachines','163','62304','cuernavaca',0,'cadenas de autoservicio',1,'2014-11-20 13:01:15','2014-11-20 13:01:15','Banquetes','mexico');
INSERT INTO `unilever` VALUES (56,'Sr.','lazarinni','mario','cheflazarinni@gmail.com','Chef','6188222054','wyndham garden','AV. NOR PONIENTE','101','38117','CELAYA GUANAJUATO',0,'Distribuidor habitual',0,'2014-11-20 13:08:06','2014-11-20 13:08:06','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (57,'Sra.','Vargas','Adriana','adriana.vargas@me.com','Due','5527283204','Negras Bistro','Saltillo','45','06100','M',20,'Distribuidor habitual',1,'2014-11-20 13:08:21','2014-11-20 13:08:21','Otro','Mexico');
INSERT INTO `unilever` VALUES (58,'Sra.','Ortiz','Mar','coco_ortiz_33@yahoo.com.mx','Otro','0445543468767','Escuela','Playa Copacabana','118','08830','Mexico',0,'Distribuidor habitual',0,'2014-11-20 13:18:12','2014-11-20 13:18:12','Otro','Mexico');
INSERT INTO `unilever` VALUES (59,'Sr.','ROBLES','JONATHAN','jonathan.robles@arteventas.com','Ventas','2223423083','Arte Ventas de Puebla','CAMINO A RESURRECCION','80','72225','PUEBLA',0,'ARTE VENTAS DE PUEBLA',0,'2014-11-20 13:23:08','2014-11-20 13:23:08','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (60,'Sra.','RIVERO','ALMA ROSA','arrivero3@gmail.com','Responsable de Alimentos y Bebidas','5554310816','OM EVENTOS','CARRETERA LIBRE MEXICO-PACHUCA','KM. 27.5','55066','ECATEPEC',0,'VARIOS',1,'2014-11-20 13:24:09','2014-11-20 13:24:09','Banquetes','ESTADO DE MEXICO');
INSERT INTO `unilever` VALUES (61,'Sra.','ROSAS','ANGELICA','angelica.rosas@arteventas.com','Ventas','2224395274','arte ventas de puebla s.a. d c.v.','CAMINO A LA RESURECCION','80','72225','PUEBLA',0,'Distribuidor habitual',0,'2014-11-20 13:25:07','2014-11-20 13:25:07','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (62,'Sr.','GONZALEZ GONZALEZ','SAMUEL','sam_glz719@hotmail.com','Otro','5591926244','4 hermanos','Av. Bosques','mz. 297 Lt. 14 Col. Bosques del P.','14738','Ciudad de Mexico',4,'local',1,'2014-11-20 13:37:19','2014-11-20 13:37:19','Cafeteria/Fonda','Mexico');
INSERT INTO `unilever` VALUES (63,'Srita.','Terpin','Ana Claudia','anaclaudiaterpin@yahoo.com.ar','Otro','0348715317754','Empresa Gastronomica','Hipolito Yirgoyen','664','2800','Zarate',0,'Distribuidor habitual',1,'2014-11-20 13:50:55','2014-11-20 13:50:55','Comedor','Argentina');
INSERT INTO `unilever` VALUES (64,'Srita.','Salcedo','Adriana','leoadry@hotmail.com','Due','5554138149','telcel','Hidalgo','135-D','54249','Jilotepec, Edo. de M',10,'Distribuidor habitual',1,'2014-11-20 14:05:06','2014-11-20 14:05:06','Cafeteria/Fonda','M');
INSERT INTO `unilever` VALUES (65,'Sra.','Grijalba','Yasmin','yasgri@hotmail.com','Otro','3176361405','LEGIS','CRA 6 # 11 02','CENTRO','92','CALI',0,'Distribuidor habitual',1,'2014-11-20 14:18:26','2014-11-20 14:18:26','Otro','VALLE');
INSERT INTO `unilever` VALUES (66,'Sra.','Rangel','beatriz','beatriz.rangel@live.com','Due','5523103917','fonda betty','Mineros','70 int   1A','15270','Mexico',3,'Distribuidor habitual',1,'2014-11-20 14:21:52','2014-11-20 14:21:52','Otro','mexico');
INSERT INTO `unilever` VALUES (67,'Sr.','Avila Loaeza','Jose Eloy','borlo2012@hotmail.com','Gerente General','5555020957','EyE Sanz S.A. de C.V.','Javier Sorondo','220 \"A\"','03520','M',0,'si',1,'2014-11-20 14:24:26','2014-11-20 14:24:26','Mayorista','M');
INSERT INTO `unilever` VALUES (68,'Sr.','Cordova Hinostrosa','Salvador','chavachef@hotmail.com','Chef','5512958186','Menjant','Ej','598','11570','Miguel Hidalgo D.F.',0,'Distribuidor habitual',1,'2014-11-20 14:24:41','2014-11-20 14:24:41','Otro','M');
INSERT INTO `unilever` VALUES (69,'Sra.','G','Ana','analygc@hotmail.com','Ventas','3314030240','Allegra Reposter','Jes','2533 int 3','44657','Guadalajara',1,'Distribuidor habitual',1,'2014-11-20 14:30:03','2014-11-20 14:30:03','Otro','M');
INSERT INTO `unilever` VALUES (70,'Sra.','De Alba','Asumpta','asumptadealba@yahoo.com.mx','Cocina','9991998644','Kaf','50','296-A','97203','M',20,'Distribuidor habitual',1,'2014-11-20 14:33:18','2014-11-20 14:33:18','Comedor','M');
INSERT INTO `unilever` VALUES (71,'Sra.','SANTAMARIA VIVAS','VIRGEN EMMA ROSA','gustarimo@hotmail.com','Due','9871119327','HOTEL EDEM','CALLE 2 NORTE  POR 5 Y 10 AV.','124','77600','COZUMEL, QUINTANA ROO',0,'Distribuidor habitual',1,'2014-11-20 14:56:07','2014-11-20 14:56:07','Hotel','MEXICO');
INSERT INTO `unilever` VALUES (72,'Sr.','Enriquez Orendain','Carlos Alberto','le_chefenriquez@yahoo.com.mx','Chef','0443313853239','Puerto Clandestino','Av. La Paz','2550','44630','Guadalajara',14,'Distribuidor habitual',1,'2014-11-20 15:10:11','2014-11-20 15:10:11','Restaurante','Mexico');
INSERT INTO `unilever` VALUES (73,'Sra.','merinos ulloa','idida','ididamerinos@gmail.com','Responsable de Alimentos y Bebidas','00560987331690','entel pcs','martinez de aldunate /','2839','6201797','punta arenas',12,'unimarc',1,'2014-11-20 15:35:14','2014-11-20 15:35:14','Comedor','chile');
INSERT INTO `unilever` VALUES (74,'Sr.','Velazquez Bravo','Omar. R:','florecit4@hotmail.com','Otro','5532904005','Movistar','Holanda','13','04120','Distrito Federal',0,'10',1,'2014-11-20 15:43:08','2014-11-20 15:43:08','Otro','Mexico');
INSERT INTO `unilever` VALUES (75,'Sr.','garcia ruiz','luis antonio','lgarciar7@hotmail.com','Gerente General','0454151519216','posada la ermita','salida real a Queretaro','64','37700','san miguel de allende, guanajuato',34,'Distribuidor habitual',1,'2014-11-20 15:44:19','2014-11-20 15:44:19','Hotel','mexico');
INSERT INTO `unilever` VALUES (76,'Sr.','ORTIZ','JARQUIN','jorge_luisjarkin@outlook.es','Due','6847399','ambrosia cafe','Blvd Sanchez Taboada 10102','10102','21280','tijuana',16,'costco',1,'2014-11-20 15:48:51','2014-11-20 15:48:51','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (77,'Srita.','HUERTA RODRIGUEZ','NORMA JESSICA','sigur03@hotmail.com','Ventas','0443318507028','ABARROTES LIBERTAD','REFINER','1252','44490','GUADALAJARA',0,'Distribuidor habitual',1,'2014-11-20 15:57:48','2014-11-20 15:57:48','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (78,'Srita.','Betancur','Andrea','dreuss81@gmail.com','Chef','3157811738','abcatering & chef at home','calle 3 sur','# 38-125','00000','Medellin',5,'Distribuidor habitual',1,'2014-11-20 16:56:30','2014-11-20 16:56:30','Banquetes','Colombia');
INSERT INTO `unilever` VALUES (79,'Sr.','amezcua','hector','hector.amezcua@gmail.com','Due','4271420713','antares pasteleria','matamoros','23','76800','san juan del rio',6,'mercado',1,'2014-11-20 17:08:23','2014-11-20 17:08:23','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (80,'Sra.','LOPEZ PEREZ','ANA MARIA','ANY200912@HOTMAIL.COM','Cocina','9331065741','TARASKOS','EJIDO CARRIZAL','S/N','86600','PARAISO',5,'Distribuidor habitual',1,'2014-11-20 17:08:24','2014-11-20 17:08:58','Restaurante','MEXICO');
INSERT INTO `unilever` VALUES (81,'Sra.','Y','Mar','elviaym@hotmail.com','Due','5528556202','Hanami','Goya','75 local E','03920','D.F.',0,'Distribuidor habitual',0,'2014-11-20 17:10:18','2014-11-20 17:10:18','Restaurante','M');
INSERT INTO `unilever` VALUES (82,'Sra.','Estrada Bautista','Guadalupe Yadira','gardyeb@gmail.com','Otro','2281843222','movistar','centroam','48 int.3','91070','xalapa',4,'Distribuidor habitual',1,'2014-11-20 17:20:06','2014-11-20 17:20:06','Otro','mexico');
INSERT INTO `unilever` VALUES (83,'Sra.','Barrera Alc','Beatriz','beatriz.barreraa@gmail.com','Cocina','0445521537746','Barreras Foods','Mar Mediterr','94 A302','11410','Distrito federal',30,'Distribuidor habitual',1,'2014-11-20 17:35:50','2014-11-20 17:35:51','Banquetes','M');
INSERT INTO `unilever` VALUES (84,'Sr.','CALDERON OROZCO','LUIS ARTURO','luchos12345@hotmail.com','Cocina','9991104731','Loncher','39 x 42 y 40','461-B','97109','M',0,'dos mesas',1,'2014-11-20 18:17:56','2014-11-20 18:17:56','Cafeteria/Fonda','M');
INSERT INTO `unilever` VALUES (85,'Sr.','alvarez','Antonio','aalvarezb24@hotmail.com','Due','4771253382','saleo catering','alerce','306','37108','le',0,'all serve',1,'2014-11-20 18:26:30','2014-11-20 18:26:30','Banquetes','mexico');
INSERT INTO `unilever` VALUES (86,'Sr.','MONTOYA KING','TULIO','temk10@hotmail.com','Ventas','6672130316','AGRICOLA CAR, S.P.R. DE R.L.','AV. ALVARO OBREGON','525 SUR','80200','CULIACAN, SINALOA',20,'Distribuidor habitual',1,'2014-11-20 18:30:12','2014-11-20 18:30:12','Distribuidor','MEXICO');
INSERT INTO `unilever` VALUES (87,'Sr.','Acosta','David','tg.davidacosta@gmail.com','Chef','5522799909','Total Gourmet','Hidalgo','15','55700','Coacalco',100,'Distribuidor habitual',1,'2014-11-20 18:30:54','2014-11-20 18:30:54','Banquetes','Mexico');
INSERT INTO `unilever` VALUES (88,'Sr.','Julio','Vazquez','Mashipolito@icloud.com','Chef','5554305472','Telcel','Calzada Ignacio zaragoza','491','95010','Mexico df',36,'Barmor',1,'2014-11-20 18:40:37','2014-11-20 18:40:37','Otro','Mexico');
INSERT INTO `unilever` VALUES (89,'Sr.','Rodr','Marco Antonio','rguezmarc@hotmail.com','Chef','0448115831597','Crowne Plaza Monterrey Aeropuerto','Boulevard Aeropuerto','171 ciento setenta y uno','66626','Monterrey',250,'Food Services y Casa Garza',1,'2014-11-20 18:42:45','2014-11-20 18:42:45','Hotel','M');
INSERT INTO `unilever` VALUES (90,'Sra.','Velasco Leija','Patricia','velascopstty@yahoo.com','Chef','5535777746','From the Kitchen of Patty Velasco','Planta El Encanto, Col. Electra','4','54060','Tlalnepantla, Edo. M',0,'Distribuidor habitual',1,'2014-11-20 19:17:45','2014-11-20 19:17:45','Banquetes','Mexi');
INSERT INTO `unilever` VALUES (91,'Sr.','mu','aldo','servicomin@thotmail.com','Due','5539281805','el meson del conde','av santa lucia','324-1','01400','mexico df',6,'Distribuidor habitual',1,'2014-11-20 20:19:53','2014-11-20 20:19:53','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (92,'Sra.','Montes de oca','Cecilia','ceci_montesdeoca@hotmail.com','Chef','9981605813','Vind','Calle 93 Manzana 7 lote 1 Regi','309','77517','Cancun',12,'Personal',1,'2014-11-20 20:48:43','2014-11-20 20:48:43','Restaurante','M');
INSERT INTO `unilever` VALUES (93,'Sra.','Guerrero Res','Hilda Ver','hildaguerreror@yahoo.com.mx','Otro','5537018270','Restaurante Laurita','Avenida Cuitlahuac','2714','02080','Distrito Federal',17,'Distribuidor habitual',1,'2014-11-20 20:56:24','2014-11-20 20:56:24','Restaurante','M');
INSERT INTO `unilever` VALUES (94,'Sr.','Zamora V','Luis Alfonso','alzamora-v@hotmail.com','Otro','0445513715854','Alzamora','pitaya','lote 4 manzana 98','53427','naucalpan Edo Mex',1,'Distribuidor habitual',1,'2014-11-20 21:23:56','2014-11-20 21:23:56','Otro','mexico');
INSERT INTO `unilever` VALUES (95,'Sra.','Haas Gonzalez','Sandra Veronica','savy_12@hotmail.com','Due','9811111848','telcel','prolongacion pedro moreno','numero 32 entre flamboyanes y santa rosa','24095','campeche',0,'si',1,'2014-11-20 22:00:51','2014-11-20 22:00:51','Banquetes','mexico');
INSERT INTO `unilever` VALUES (96,'Sr.','P','Vicente','perezjasso@hotmail.com','Due','5591949140','il horno Pizzer','9a. Cerrada de C','14','04640','M',6,'Central de abastos del D.F.',1,'2014-11-20 22:09:04','2014-11-20 22:09:04','Otro','M');
INSERT INTO `unilever` VALUES (97,'Sra.','Gonzalez  Chi','Maria del socorro','soy_tu_confidente1@hotmail.com','Due','9961020801','telcel','calle 28 carlos rivas','186 entre 27 y 29','24930','becal calkini campeche',5,'Distribuidor habitual',0,'2014-11-20 22:20:18','2014-11-20 22:20:18','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (98,'Sra.','valdivia lopez','liliana','joaquin-fzapien@live.com.mx','Due','54695423','koneko chan comida oriental','republica de uruguay','17 int 101','06000','distrito federal',25,'Distribuidor habitual',1,'2014-11-20 22:20:20','2014-11-20 22:20:20','Cafeteria/Fonda','mexico');
INSERT INTO `unilever` VALUES (99,'Sr.','Gonz','Hugo','huguzweb@hotmail.com','Due','5538897699','COMIDAS, TAQUIZAS Y MAS...','1er. Retorno de Rosa Zaragoza','44','04480','M',0,'SAM\'S  Soriana  Bodega Aurrera',1,'2014-11-20 22:21:46','2014-11-20 22:21:46','Banquetes','M');
INSERT INTO `unilever` VALUES (100,'Srita.','Su','lady diana','lyda007@hotmail.com','Responsable de Alimentos y Bebidas','7444478220','CODERE','3a privada de diagonal de av 2','22','94380','orizaba',40,'iberia',1,'2014-11-21 01:18:19','2014-11-21 01:18:19','Restaurante','mexico');
INSERT INTO `unilever` VALUES (101,'Sra.','Morales','Martha','marthasuque@gmail.com','Otro','5532213988','Marele Moras','Calz. de la Virgen','300, Edif. 7, Depto. 7','04908','M',0,'Distribuidor habitual',1,'2014-11-21 01:27:50','2014-11-21 01:27:50','Otro','M');
INSERT INTO `unilever` VALUES (102,'Sra.','steph','esche','stephanie.esche+caldo@mellowmessage.de','Chef','2340704569','mellow','h','27','04107','leipzig',123,'test',1,'2014-11-21 02:33:22','2014-11-21 02:33:22','Cafeteria/Fonda','germany');
INSERT INTO `unilever` VALUES (103,'Sr.','Carvajal','Carlos','manucoss@hotmail.com','Chef','0999228121','Servicios gastron','Nazacota Puento','29','100150','Ibarra',0,'Distribuidor habitual',1,'2014-11-21 06:24:27','2014-11-21 06:24:27','Restaurante','Ecuador');
INSERT INTO `unilever` VALUES (104,'Sr.','Daniel','Garcia','garcia.d@live.com.mx','Chef','9981357597','desire pearl','calle sin nombre region 248 sm 9','casa cuatro lote cuatro','77516','cancun',176,'pacsa',0,'2014-11-21 07:17:41','2014-11-21 07:17:41','Hotel','mexico');
INSERT INTO `unilever` VALUES (105,'Sra.','Fuentes Vargas','Veronica','verofuv@hotmail.com','Otro','8113127296','personal','Andr','246b col.buenos aires','64800','monterrey',0,'Distribuidor habitual',1,'2014-11-21 07:22:54','2014-11-21 07:22:54','Otro','M');
INSERT INTO `unilever` VALUES (106,'Sr.','Garrido Fuentes','Jossue Ulises','jossul2009@hotmail.com','Chef','5555099961','Iusacell','Av. Industria','231 depto 4','15530','Distrito Federal',5,'Distribuidor habitual',1,'2014-11-21 08:11:27','2014-11-21 08:11:27','Comedor','Mexico');
INSERT INTO `unilever` VALUES (107,'Sra.','FLORES HUERTA','LUZ ELENA','luzelenafh@live.com','Due','3129438661','AZTECA REEFERS','RUBEN DARIO','485','28010','COLIMA',0,'Distribuidor habitual',0,'2014-11-21 08:11:52','2014-11-21 08:11:52','Otro','MEXICO');
INSERT INTO `unilever` VALUES (108,'Sr.','reyes','martin','martin_reyes16@hotmail.com','Gerente General','6677519072','rest. chinalong','pascual orozco','1549','80128','culiacan',20,'sams club',1,'2014-11-21 08:40:01','2014-11-21 08:40:01','Restaurante','mexico');
INSERT INTO `unilever` VALUES (109,'Srita.','Orozco','Itzel','ouicafe@gmail.com','Due','5554089653','Oui cafe','Brahms','80','07790','Mexico distrito federal',10,'Costco',1,'2014-11-21 09:02:41','2014-11-21 09:02:41','Cafeteria/Fonda','Mexico');
INSERT INTO `unilever` VALUES (110,'Sra.','Garc','Ma. Lourdes','psic_logaor@hotmail.com','Otro','0454776705326','ambulante','Spinoza','211','37357','Le',0,'Distribuidor habitual',1,'2014-11-21 09:05:43','2014-11-21 09:05:43','Otro','M');
INSERT INTO `unilever` VALUES (111,'Sra.','Sandoval','Sonia','ssandoval_pvr13@outllok.com','Ventas','3222296480','Clean Clean','Nicaragua','256 Doscientos cincuenta y seis','48350','Puerto Vallarta, Jal.',0,'Distribuidor habitual',1,'2014-11-21 11:43:28','2014-11-21 11:43:28','Otro','M');
INSERT INTO `unilever` VALUES (112,'Sr.','Santiago Cort','Emilio Rafael','esantcor@hotmail.com','Due','9992184308','ARECA Comedores','74-B X 57-B Y 57-C','229','97302','M',500,'Distribuidor habitual',0,'2014-11-21 11:47:51','2014-11-21 11:47:51','Comedor','M');
INSERT INTO `unilever` VALUES (113,'Sra.','Leticia','Morales Castro','letymc17@hotmail.com','Due','5513335275','El buen Comer','Mexicali','45-2 piso','06100','D.F.',0,'Distribuidor habitual',1,'2014-11-21 12:17:30','2014-11-21 12:17:30','Banquetes','Mexico');
INSERT INTO `unilever` VALUES (114,'Sra.','jauregui','sharon','beautifulflower_611@hotmail.com','Otro','8442105303','soy ama de casa','29','2332','256084','saltillo',0,'Distribuidor habitual',1,'2014-11-21 12:43:34','2014-11-21 12:43:34','Otro','coahuila');
INSERT INTO `unilever` VALUES (115,'Sr.','Mu','Aldo','serviciointegraldebanquetes@live.com.mx','Due','5539281805','SERVICIO INTEGRAL DE BANQUETES','b','190  - 4A','03230','Ciudad de M',10,'costco sams',0,'2014-11-21 13:57:07','2014-11-21 13:57:07','Banquetes','M');
INSERT INTO `unilever` VALUES (116,'Sr.','caudillo','alejo','carapvas@gmail.com','Gerente General','38562993','procejal s.a. de c.v.','area troncal 3370 int 3','tresmiltrecientossetenta','45600','tlaquepaque, jalisco',0,'Distribuidor habitual',1,'2014-11-21 14:53:05','2014-11-21 14:53:05','Otro','mexico');
INSERT INTO `unilever` VALUES (117,'Sr.','campa','marcelino','andymarcs@outlook.con','Otro','858185885565','marulhos resort','rua maranhao sibrinho','84','51110-270','recife',85,'cimorador habitual',1,'2014-11-21 14:57:25','2014-11-21 14:57:25','Hotel','brasil');
INSERT INTO `unilever` VALUES (118,'Sra.','AVALOS M','MARIA PATRICIA','paty70_2@hotmail.com','Otro','3314713528','TELCEL','AV PATRIA','2065','44210','GUADALAJARA',0,'Distribuidor habitual',1,'2014-11-21 14:59:52','2014-11-21 14:59:52','Otro','JALISCO');
INSERT INTO `unilever` VALUES (119,'Sra.','VARGAS','MA.DE JESUS','mary-juss@live.com.mx','Chef','7771375838','ICATMOR','PRIV. ITALIA','12','62070','CUERNAVACA, MOR',0,'Distribuidor habitual',1,'2014-11-21 15:24:45','2014-11-21 15:24:45','Otro','MEXICO');
INSERT INTO `unilever` VALUES (120,'Srita.','Kissel','Zertuche','Kissi_9426@hotmail.com','Cocina','0448120224266','Telcel','San eugenio','Ciento veintisiete','67128','Guadalupe',12,'Distribuidor habitual',1,'2014-11-21 16:43:05','2014-11-21 16:43:05','Otro','Nuevo Leon');
INSERT INTO `unilever` VALUES (121,'Sra.','Navarro Rojas','Ma Esmirna','Smyrna4@hotmail.com','Cocina','2727054161','No pertenezco a ninguna','Poniente 11','Doscientos veintitr','94300','Orizaba Ver',0,'Distribuidor habitual',0,'2014-11-21 20:04:06','2014-11-21 20:04:06','Comedor','Mexico');
INSERT INTO `unilever` VALUES (122,'Sra.','Ligia','Jimenez','bonadelita@yahoo.com.mx','Due','0445554381944','Puerto Pedregal','Avenida de las Fuentes','550-14','01900','MEXICO , DF',15,'Sams, Costco, central de abastos',1,'2014-11-21 20:16:37','2014-11-21 20:16:37','Restaurante','Mexico');
INSERT INTO `unilever` VALUES (123,'Sr.','Martinez','Roberto','Tonoss_82@hotmail.com','Chef','8116706541','Hotel novotel','Lazaro Cardenas','Tres mil','66269','Nuevo Leon',20,'Distribuidor habitual',1,'2014-11-21 21:00:41','2014-11-21 21:00:41','Hotel','Mexiuco');
INSERT INTO `unilever` VALUES (124,'Srita.','carre','miriam','m3a17@hotmail.com','Otro','7332941768','iusacell','rivadeneyra','11','40090','iguala',0,'Distribuidor habitual',1,'2014-11-21 21:13:31','2014-11-21 21:13:31','Otro','mexico');
INSERT INTO `unilever` VALUES (125,'Sr.','Rabioso','Azul','azulrabioso@hotmail.com','Due','4773305897','Sonique','Soria','312','37330','Leon',12,'Bodega Aurrer',1,'2014-11-22 19:06:55','2014-11-22 19:06:55','Cafeteria/Fonda','M');
/*!40000 ALTER TABLE `unilever` ENABLE KEYS */;
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
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersPermissions`
--

LOCK TABLES `usersPermissions` WRITE;
/*!40000 ALTER TABLE `usersPermissions` DISABLE KEYS */;
INSERT INTO `usersPermissions` VALUES ('fersaavedra85@hotmail.com',1,1,1);
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

-- Dump completed on 2020-02-21 16:55:51