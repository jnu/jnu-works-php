-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: joenoodles
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.13.04.1

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
-- Table structure for table `ietree`
--

DROP TABLE IF EXISTS `ietree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ietree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `attested` tinyint(1) NOT NULL,
  `living` tinyint(1) NOT NULL,
  `pargen` varchar(255) NOT NULL,
  `parcon` varchar(255) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `elexicon` varchar(512) NOT NULL,
  `misc` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ietree`
--

LOCK TABLES `ietree` WRITE;
/*!40000 ALTER TABLE `ietree` DISABLE KEYS */;
INSERT INTO `ietree` VALUES (11,'sco','Scots',1,1,'ang','mga; fro',1100,0,'','germanic'),(2,'ang','Old English',1,0,'gmw','non',440,1100,'http://www.ling.upenn.edu/~kurisuto/germanic/oe_bosworthtoller_about.html','germanic'),(3,'gem','Proto-Germanic',0,0,'pie','',-500,500,'http://www.angelfire.com/ga3/arkan/pgmnlex.html','germanic'),(4,'gmq','Proto-Norse',1,0,'gem','',500,700,'','germanic'),(5,'non','Old Norse',1,0,'gmq','gml',700,1400,'','germanic'),(6,'enm','Middle English',1,0,'ang','fro; non',1100,1500,'','germanic'),(7,'eng','Modern English',1,1,'enm','grc; lat',1500,0,'','germanic'),(8,'gmw','West Germanic',0,0,'gem','',-100,500,'','germanic'),(9,'goh','Old High German',1,0,'gmw','',500,1050,'','germanic'),(10,'gmh','Middle High German',1,0,'goh','',1050,1500,'','germanic'),(12,'yol','Yola',1,0,'ang','',1200,1900,'','germanic'),(13,'deu','Modern German',1,1,'gmh','',1500,0,'','germanic'),(14,'yid','Yiddish',1,1,'gmh','arc; hbo; zlw; zle; lat',1000,0,'','germanic'),(15,'nor','Norwegian',1,1,'non','nds; dan',1400,0,'','germanic'),(16,'swe','Swedish',1,1,'non','nds',1400,0,'','germanic'),(17,'dan','Danish',1,1,'non','',1400,0,'','germanic'),(18,'isl','Icelandic',1,1,'non','',1400,0,'','germanic'),(19,'fao','Faroese',1,1,'non','',1400,0,'','germanic'),(20,'gme','East Germanic',0,0,'gem','',-600,-300,'','germanic'),(21,'got','Gothic',1,0,'gme','',-300,800,'','germanic'),(22,'xvn','Vandalic',0,0,'gme','',-300,500,'','germanic'),(23,'frk','Old Frankish',0,0,'gmw','',300,700,'','germanic'),(24,'odt','Old Dutch',1,0,'frk','',500,1100,'','germanic'),(25,'dum','Middle Dutch',1,0,'odt','gml',1100,1500,'','germanic'),(26,'nld','Dutch',1,1,'dum','',1500,0,'','germanic'),(27,'afr','Afrikaans',1,1,'nld','',1600,0,'','germanic'),(28,'lim','Limburgish',1,1,'dum','',1500,0,'','germanic'),(29,'vls','Flemish',1,1,'dum','fra',1500,0,'','germanic'),(30,'ofs','Old Frisian',1,0,'gmw','',700,1500,'','germanic'),(31,'fry','Frisian',1,1,'ofs','',1500,0,'','germanic'),(32,'osx','Old Saxon',1,0,'gmw','',700,1100,'','germanic'),(33,'gml','Middle Saxon',1,0,'osx','',1100,1600,'','germanic'),(34,'nds','Low German',1,1,'gml','',1600,0,'','germanic'),(35,'fro','Old French',1,0,'galib','xtg; frk',800,1300,'','germanic'),(36,'frm','Middle French',1,0,'fro','lat; grc',1340,1611,'','germanic'),(37,'fra','Modern French',1,1,'frm','',1611,0,'','germanic'),(38,'pbs','Proto-Balto-Slavic',0,0,'pie','',-3000,-1000,'',''),(39,'psl','Proto-Slavic',0,0,'pbs','',-1000,500,'',''),(40,'chu','Old Church Slavonic',1,0,'pss','grc',500,1200,'',''),(41,'oes','Old Rusian',1,0,'psl','olit',1200,1500,'',''),(42,'orv','Old Russian',1,0,'oes','chu',1400,1700,'',''),(43,'rus','Modern Russian',1,1,'orv','fra;deu',1700,0,'',''),(44,'ukr','Ukrainian',1,1,'oes','rus',1500,0,'',''),(45,'bel','Belarusian',1,1,'oes','rus; pol',1500,0,'',''),(46,'pss','South Slavic',0,0,'psl','',500,800,'',''),(47,'bcs','Bosnian, Croatian, Serbian',1,1,'pss','ota',1300,0,'',''),(48,'obm','Old South-East Slavic',0,0,'pss','',800,1500,'',''),(49,'mkd','Macedonian',1,1,'obm','ota; sqi; ell; rmn; rup',1500,0,'',''),(50,'bul','Bulgarian',1,1,'obm','ota; sqi; ell; rmn; rup',1500,0,'',''),(51,'slv','Slovenian',1,1,'pss','bcs; deu',0,0,'',''),(52,'zlw','Proto-West-Slavic',0,0,'psl','',0,0,'',''),(53,'ccs','Czech-Slovak',1,0,'zlw','',0,1500,'',''),(54,'ces','Czech',1,1,'ccs','deu',1500,0,'',''),(55,'slk','Slovak',1,1,'ccs','ces; deu',1500,0,'',''),(56,'lht','Lechitic',0,0,'zlw','',0,0,'',''),(57,'pol','Polish',1,1,'lht','lat; fra',0,0,'',''),(58,'pox','Polabian',1,0,'lht','deu',0,0,'',''),(59,'szl','Silesian',1,1,'lht','pol; deu',0,0,'',''),(60,'wen','Sorbian',1,0,'zlw','deu',0,0,'',''),(61,'hsb','Upper Sorbian',1,1,'wen','deu',0,0,'',''),(62,'dsb','Lower Sorbian',1,0,'wen','deu',0,0,'',''),(63,'bat','Proto-Baltic',0,0,'pbs','',0,0,'',''),(64,'wbt','West Baltic',0,0,'bat','goh',0,0,'',''),(65,'xgl','Galindian',0,0,'wbt','',0,0,'',''),(66,'prg','Old Prussian',1,0,'wbt','got',0,0,'',''),(67,'xsv','Sudovian',1,0,'wbt','',0,0,'',''),(68,'ebt','East Baltic',0,0,'bat','psl',0,0,'',''),(69,'lvs','Latvian',1,1,'ebt','',0,0,'',''),(70,'lit','Lithuanian',1,1,'ebt','',0,0,'',''),(71,'xcu','Old Curonian',1,0,'ebt','',0,0,'',''),(72,'xzm','Semigallian',0,0,'ebt','',0,0,'',''),(73,'sxl','Selonian',0,0,'ebt','',0,0,'',''),(74,'pie','Proto-Indo-European',0,0,'','',0,0,'',''),(75,'itc','Italic',0,0,'pie','',0,0,'',''),(76,'lfl','Latino-Faliscan',0,0,'itc','',0,0,'',''),(77,'osu','Osco-Umbrian',0,0,'itc','',0,0,'',''),(78,'xfa','Faliscan',0,0,'lfl','lat',0,0,'',''),(79,'lat','Latin',1,0,'lfl','cel; grc',0,0,'',''),(80,'latvul','Vulgar Latin',0,0,'lat','',0,0,'',''),(81,'latcla','Classical Latin',1,1,'lat','grc',0,0,'',''),(82,'wesrom','Western Romance',0,0,'latvul','',0,0,'',''),(83,'pyrmoz','Pyrenean-Mozarabic',0,0,'wesrom','',0,0,'',''),(84,'arg','Aragonese',1,1,'pyrmoz','spa',0,0,'',''),(85,'arg','Aragonese',1,1,'pyrmoz','spa',0,0,'',''),(86,'mxi','Mozarabic',1,1,'pyrmoz','ara',0,0,'',''),(87,'galib','Gallo-Iberian',0,0,'wesrom','',0,0,'',''),(88,'galrom','Gallo-Romance',0,0,'galib','',0,0,'',''),(89,'frp','Franco-Provençal',1,1,'galrom','eus',0,0,'',''),(90,'occrom','Occitano-Romance',0,0,'galrom','',0,0,'',''),(91,'oci','Occitan',1,1,'occrom','',0,0,'',''),(92,'cat','Catalan',1,1,'occrom','',0,0,'',''),(93,'galit','Gallo-Italic',0,0,'galrom','',0,0,'',''),(94,'pms','Piedmontese',1,1,'galit','',0,0,'',''),(95,'lij','Ligurian',1,1,'galit','',0,0,'',''),(96,'lmo','Lombard',1,1,'galit','',0,0,'',''),(97,'emrom','Emiliano-Romagnolo',0,0,'galit','',0,0,'',''),(98,'egl','Emilian',1,1,'emrom','',0,0,'',''),(99,'rgn','Romagnol',1,1,'emrom','',0,0,'',''),(100,'rharom','Rhaeto-Romance',0,0,'galrom','',0,0,'',''),(101,'roh','Romansh',1,1,'rharom','goh; gmh',0,0,'',''),(102,'lld','Ladin',1,1,'rharom','',0,0,'',''),(103,'fur','Friulian',1,1,'rharom','',0,0,'',''),(104,'vec','Venetian',1,1,'galit','',0,0,'',''),(105,'hisib','West Iberian',0,0,'wesrom','',0,0,'',''),(106,'ast','Asturian',1,1,'hisib','',0,0,'',''),(107,'galpor','Galician-Portuguese',1,0,'hisib','xls',0,0,'',''),(108,'por','Portuguese',1,1,'galpor','',1516,0,'',''),(109,'glg','Galician',1,1,'galpor','',1516,0,'',''),(110,'fax','Fala',1,1,'galpor','',0,0,'',''),(111,'osp','Old Spanish',1,0,'hisib','',0,1400,'',''),(112,'spa','Spanish',1,1,'osp','',1400,0,'',''),(113,'navar','Navarro-Aragonese',1,0,'hisib','osp',0,1500,'',''),(114,'lad','Ladino',1,1,'osp','hbo',0,0,'',''),(115,'itdal','Italo-Dalmatian',0,0,'wesrom','',0,0,'',''),(116,'ita','Italian',1,1,'itdal','',0,0,'',''),(117,'dlm','Dalmatian',1,0,'itdal','',0,0,'',''),(118,'ist','Istriot',1,1,'itdal','',0,0,'',''),(119,'scn','Sicilian',1,1,'itdal','',0,0,'',''),(120,'nap','Neapolitan',1,1,'itdal','',0,0,'',''),(121,'xrom','Proto-Romanian',0,0,'latvul','psl; pss',0,0,'',''),(122,'ron','Romanian',1,1,'xrom','',0,0,'',''),(123,'rup','Vlach',1,1,'xrom','mkd',0,0,'',''),(124,'ruq','Megleno-Romanian',1,1,'xrom','ell; bul',0,0,'',''),(125,'ruo','Istro-Romanian',1,1,'xrom','bcs',0,0,'',''),(126,'cel','Proto-Celtic',0,0,'pie','',0,0,'',''),(127,'xgg','Proto-Gaulish',0,0,'cel','',0,0,'',''),(128,'xga','Galatian',1,0,'xgg','',0,0,'',''),(129,'xlp','Lepontic',1,0,'xgg','',-550,-100,'',''),(130,'xcg','Cisalpine Gaulish',1,0,'xgg','',0,0,'',''),(131,'xtg','Transalpine Gaulish',1,0,'xgg','',0,0,'',''),(132,'xhc','Hispano-Celtic',0,0,'cel','',0,0,'',''),(133,'xce','Celtiberian',1,0,'xhc','',0,0,'',''),(134,'lbd','British',1,0,'cel','',0,0,'',''),(135,'xpi','Pictish',0,0,'lbd','',0,0,'',''),(136,'xcb','Cumbric',0,0,'lbd','',0,0,'',''),(137,'cym','Welsh',1,1,'lbd','',500,0,'',''),(138,'oco','Old Cornish',1,0,'lbd','',800,1200,'',''),(139,'cnx','Middle Cornish',1,0,'oco','',1200,1600,'',''),(140,'cor','Cornish',1,1,'cnx','',1600,0,'',''),(141,'obt','Old Breton',1,0,'lbd','',0,0,'',''),(142,'xbm','Middle Breton',1,0,'obt','',0,0,'',''),(143,'bre','Breton',1,1,'xbm','',0,0,'',''),(144,'sga','Old Irish',1,0,'cel','',500,900,'',''),(145,'mga','Middle Irish',1,0,'sga','',900,1100,'',''),(146,'emga','Classical Irish',1,0,'mga','',1100,1700,'',''),(147,'gle','Modern Irish',1,1,'emga','',1700,0,'',''),(148,'gla','Scottish Gaelic',1,1,'emga','',1100,0,'',''),(149,'glv','Manx',1,1,'emga','',1100,0,'',''),(150,'xgrk','Proto-Greek',0,0,'pie','',-3000,-1600,'',''),(151,'grc','Ancient Greek',1,0,'xgrk','',0,0,'',''),(152,'grk','Modern Greek',1,1,'grc','',0,0,'',''),(153,'xarm','Proto-Armenian',0,0,'pie','',0,0,'',''),(154,'xcl','Classical Armenian',1,1,'xarm','grc; iir',405,1100,'',''),(155,'axm','Middle Armenian',1,1,'xcl','',1100,1700,'',''),(156,'hye','Modern Armenian',1,1,'axm','rus',1700,0,'',''),(157,'sqi','Albanian',1,1,'pie','',0,0,'',''),(158,'xana','Proto-Anatolian',0,0,'pie','',0,0,'',''),(159,'hit','Hittite',1,0,'xana','',0,0,'',''),(160,'plq','Palaic',1,0,'xana','',0,0,'',''),(161,'xlu','Luwian',1,0,'xana','',0,0,'',''),(162,'xld','Lydian',1,0,'xana','',0,0,'',''),(163,'xto','Tocharian',1,0,'pie','',0,0,'',''),(164,'iir','Proto-Indo-Iranian',0,0,'pie','',0,0,'',''),(165,'vsn','Vedic Sanskrit',1,0,'iir','',0,0,'',''),(166,'san','Sanskrit',1,1,'vsn','',0,0,'',''),(167,'pli','Pali',1,0,'vsn','',0,0,'',''),(168,'xmad','Madhya',0,0,'vsn','',0,0,'',''),(169,'xwhin','Western Hindi',0,0,'xmad','',0,0,'',''),(170,'xehin','Eastern Hindi',0,0,'xmad','',0,0,'',''),(171,'bra','Braj Bhasha',1,1,'xwhin','',0,0,'',''),(172,'bgc','Haryanvi',1,1,'xwhin','',0,0,'',''),(173,'bns','Bundeli',1,1,'xwhin','',0,0,'',''),(174,'bjj','Kannauji',1,1,'xwhin','',0,0,'',''),(175,'hin','Hindi',1,1,'xwhin','',0,0,'',''),(176,'urd','Urdu',1,1,'xwhin','',0,0,'',''),(177,'rom','Romani',1,1,'xmad','',0,0,'http://romani.uni-graz.at/romlex/',''),(178,'rmt','Domari',1,1,'xmad','',0,0,'',''),(179,'awa','Awadhi',1,1,'xehin','',0,0,'',''),(180,'bfy','Bagheli',1,1,'xehin','',0,0,'',''),(181,'hne','Chhattisgari',1,1,'xehin','',0,0,'',''),(182,'xmag','Magadhan',0,0,'vsn','',0,0,'',''),(183,'xassben','Assamese-Bengali',0,0,'xmag','',0,0,'',''),(184,'asm','Assamese',1,1,'xassben','',0,0,'',''),(185,'ben','Bengali',1,1,'xassben','',0,0,'',''),(186,'bpy','Bishnupriya',1,1,'xassben','',0,0,'',''),(187,'ccp','Chakma',1,1,'xassben','',0,0,'',''),(188,'ctg','Chittagonian',1,1,'xassben','',0,0,'',''),(189,'haj','Hajong',1,1,'xassben','',0,0,'',''),(190,'ksy','Kharia Thar',1,1,'xassben','',0,0,'',''),(191,'rkt','Rangpuri',1,1,'xassben','',0,0,'',''),(192,'rhg','Rohingya',1,1,'xassben','',0,0,'',''),(193,'syl','Sylheti',1,1,'xassben','',0,0,'',''),(194,'tnv','Tanchangya',1,1,'xassben','',0,0,'',''),(195,'kyv','Kayort',1,1,'xassben','',0,0,'',''),(196,'nhh','Nahari',1,1,'xassben','',0,0,'',''),(197,'mkb','Mal Paharia',1,1,'xassben','',0,0,'',''),(198,'bih','Bihari',0,0,'xmag','',0,0,'',''),(199,'anp','Angika',1,1,'bih','',0,0,'',''),(200,'mai','Bajjika',1,1,'bih','',0,0,'',''),(201,'bho','Bhojpuri',1,1,'bih','',0,0,'',''),(202,'hif','Fiji Hindi',1,1,'bih','',0,0,'',''),(203,'kyw','Kudmali',1,1,'bih','',0,0,'',''),(204,'mag','Magahi',1,1,'bih','',0,0,'',''),(205,'mai','Maithili',1,1,'bih','',0,0,'',''),(206,'mjz','Majhi',1,1,'bih','',0,0,'',''),(207,'smm','Musasa',1,1,'bih','',0,0,'',''),(208,'tdb','Panchpargania',1,1,'bih','',0,0,'',''),(209,'sck','Sadri',1,1,'bih','',0,0,'',''),(210,'sdr','Khortha',1,1,'bih','',0,0,'',''),(211,'hns','Sarnami Hindustani',1,1,'bih','',0,0,'',''),(212,'sjp','Surajpuri',1,1,'bih','',0,0,'',''),(213,'ori','Proto-Oriya',0,0,'xmag','',0,0,'',''),(214,'ory','Oriya',1,1,'ori','',0,0,'',''),(215,'spv','Kosli',1,1,'ori','',0,0,'',''),(216,'ort','Adivasi Oriya',1,1,'ori','',0,0,'',''),(217,'bgw','bhatri',1,1,'ori','',0,0,'',''),(218,'dso','Desiya',1,1,'ori','',0,0,'',''),(219,'thr','Tharu',1,1,'xmag','',0,0,'',''),(220,'xrajmar','Rajasthani–Marwari',0,0,'xguj','',0,0,'',''),(221,'mwr','Marwari',1,1,'xrajmar','',0,0,'',''),(222,'hoj','Harauti',1,1,'xrajmar','',0,0,'',''),(223,'gig','Goaria',1,1,'xrajmar','',0,0,'',''),(224,'raj','Rajasthani',1,1,'xrajmar','',0,0,'',''),(225,'xguj','Old Gujarati',1,0,'vsn','',0,0,'',''),(226,'guj','Gujarati',1,1,'xguj','',0,0,'',''),(227,'vaz','Vasavi',1,1,'guj','',0,0,'',''),(228,'kvx','Koli',1,1,'guj','',0,0,'',''),(229,'saz','Saurashtra',1,1,'guj','',0,0,'',''),(230,'bhil','Bhil',0,0,'xguj','',0,0,'',''),(231,'bge','Bauria',1,1,'bhil','',0,0,'',''),(232,'wbr','Wagdi',1,1,'bhil','',0,0,'',''),(233,'noi','Bhilori',1,1,'bhil','',0,0,'',''),(234,'magari','Magari',0,0,'bhil','',0,0,'',''),(235,'bhb','Bhili',1,1,'bhil','',0,0,'',''),(236,'bhi','Bhilali',1,1,'bhil','',0,0,'',''),(237,'cdi','Chodri',1,1,'bhil','',0,0,'',''),(238,'dho','Dhodia',1,1,'bhil','',0,0,'',''),(239,'dhn','Dhanki',1,1,'bhil','',0,0,'',''),(240,'gbl','Gamit',1,1,'bhil','',0,0,'',''),(241,'dub','Dubli',1,1,'bhil','',0,0,'',''),(242,'bpx','Palya Bareli',1,1,'bhil','',0,0,'',''),(243,'bfb','Pauri Bareli',1,1,'bhil','',0,0,'',''),(244,'bgd','Rathwi Bareli',1,1,'bhil','',0,0,'',''),(245,'pcl','Pardhi',1,1,'bhil','',0,0,'',''),(246,'nlx','Kalto',1,1,'bhil','',0,0,'',''),(247,'xkha','Proto-Khandeshi',0,0,'xguj','',0,0,'',''),(248,'khn','Khandeshi',1,1,'xkha','',0,0,'',''),(249,'ahr','Ahirani',1,1,'xkha','',0,0,'',''),(250,'xpah','Pahari',0,0,'vsn','',0,0,'',''),(251,'kfy','Kumaoni',1,1,'xpah','',0,0,'',''),(252,'nep','Nepali',1,1,'xpah','',0,0,'',''),(253,'gbm','Garhwali',1,1,'xpah','',0,0,'',''),(254,'plp','Palpa',1,1,'xpah','',0,0,'',''),(255,'bhd','Bhadrawahi',1,1,'xpah','',0,0,'',''),(256,'bht','Bhattiyali',1,1,'xpah','',0,0,'',''),(257,'kfs','Bilaspuri',1,1,'xpah','',0,0,'',''),(258,'doi','Dogri',1,1,'xpah','',0,0,'',''),(259,'xnr','Kangri',1,1,'xpah','',0,0,'',''),(260,'gbk','Gaddi',1,1,'xpah','',0,0,'',''),(261,'kjo','Harijan Kinnauri',1,1,'xpah','',0,0,'',''),(262,'hii','Hinduri',1,1,'xpah','',0,0,'',''),(263,'jns','Jaunsari',1,1,'xpah','',0,0,'',''),(264,'kfx','Kullu',1,1,'xpah','',0,0,'',''),(265,'bfz','Mahasu Pahari',1,1,'xpah','',0,0,'',''),(266,'mjl','Mandeali',1,1,'xpah','',0,0,'',''),(267,'phr','Potwari',1,1,'xpah','',0,0,'',''),(268,'pgg','Pangwali',1,1,'xpah','',0,0,'',''),(269,'srx','Sirmauri',1,1,'xpah','',0,0,'',''),(270,'pan','Punjabi',1,1,'vsn','',0,0,'',''),(271,'snd','Sindhi',1,1,'xsnd','',0,0,'',''),(272,'jdg','Jadgali',1,1,'xsnd','',0,0,'',''),(273,'kfr','Kutchi',1,1,'xsnd','',0,0,'',''),(274,'xsnd','Proto-Sindhi',0,0,'vsn','',0,0,'',''),(275,'xdar','Dardic',0,0,'vsn','',0,0,'',''),(276,'psh','Pashayi',1,1,'xdar','',0,0,'',''),(277,'xkun','Kunar',0,0,'xdar','',0,0,'',''),(278,'xdar','Gawar-Bati',1,1,'xkun','',0,0,'',''),(279,'dml','Dameli',1,1,'xkun','',0,0,'',''),(280,'sts','Shumashti',1,1,'xkun','',0,0,'',''),(281,'nli','Nangalami',1,1,'xkun','',0,0,'',''),(282,'xchit','Chitrali',0,0,'xdar','',0,0,'',''),(283,'khw','Khowar',1,1,'xchit','',0,0,'',''),(284,'kls','Kalash',1,1,'xchit','',0,0,'',''),(285,'xkoh','Kohistani',0,0,'xdar','',0,0,'',''),(286,'gwc','Kalami',1,1,'xkoh','',0,0,'',''),(287,'trw','Torwali',1,1,'xkoh','',0,0,'',''),(288,'xka','Kalkoti',1,1,'xkoh','',0,0,'',''),(289,'mvy','Maiya',1,1,'xkoh','',0,0,'',''),(290,'btv','Bateri',1,1,'xkoh','',0,0,'',''),(291,'clh','Chilisso',1,1,'xkoh','',0,0,'',''),(292,'gwf','Gowro',1,1,'xkoh','',0,0,'',''),(293,'wsv','Wotapuri-Katarqalai',1,1,'xkoh','',0,0,'',''),(294,'tra','Tirahi',1,1,'xkoh','',0,0,'',''),(295,'xshin','Proto-Shina',0,0,'xdar','',0,0,'',''),(296,'scl','Shina',1,1,'xshin','',0,0,'',''),(297,'ush','Ushoji',1,1,'xshin','',0,0,'',''),(298,'dmk','Domaaki',1,1,'xshin','',0,0,'',''),(299,'phl','Palula',1,1,'xshin','',0,0,'',''),(300,'kas','Kashmiri',1,1,'xdar','',0,0,'',''),(301,'mar','Marathi',1,1,'vsn','',0,0,'',''),(302,'xkon','Konkani',0,0,'vsn','',0,0,'',''),(303,'gon','Konkani',1,1,'xkon','',0,0,'',''),(304,'knn','Maharashtrian Konkani',1,1,'xkon','',0,0,'',''),(305,'smv','Kadodi',1,1,'xkon','',0,0,'',''),(306,'kex','Kukna',1,1,'xkon','',0,0,'',''),(307,'kfu','Katkari',1,1,'xkon','',0,0,'',''),(308,'phd','Phudagi',1,1,'xkon','',0,0,'',''),(309,'vav','Varli',1,1,'xkon','',0,0,'',''),(310,'dcc','Dakhini',1,1,'vsn','',0,0,'',''),(311,'xiin','Insular Indic',0,0,'vsn','',0,0,'',''),(312,'div','Dhivehi',1,1,'xiin','',0,0,'',''),(313,'sin','Sinhala',1,1,'xiin','',0,0,'',''),(314,'ved','Vedda',1,1,'xiin','',0,0,'',''),(315,'dhw','Dhanwar Rai',1,1,'vsn','',0,0,'',''),(316,'trp','Kokborok',1,1,'vsn','',0,0,'',''),(317,'xnur','Nuristani',0,0,'iir','',0,0,'',''),(318,'ask','Askunu',1,1,'xnur','',0,0,'',''),(319,'xvi','Kamkata-viri',1,1,'xnur','',0,0,'',''),(320,'prn','Wasi-wari',1,1,'xnur','',0,0,'',''),(321,'trm','Tregami',1,1,'xnur','',0,0,'',''),(322,'wbk','Waigali',1,1,'xnur','',0,0,'',''),(323,'ira','Proto-Iranian',0,0,'iir','',0,0,'',''),(324,'wira','Western Iranian',0,0,'ira','',0,0,'',''),(325,'eira','Eastern Iranian',0,0,'ira','',0,0,'',''),(326,'nwira','Northwestern Iranian',0,0,'wira','',0,0,'',''),(327,'swira','Southwestern Iranian',0,0,'wira','',0,0,'',''),(328,'neira','Northeastern Iranian',0,0,'eira','',0,0,'',''),(329,'seira','Southeastern Iranian',0,0,'eira','',0,0,'',''),(330,'oaz','Old Azeri',1,0,'nwira','',0,0,'',''),(331,'atn','Ashtiani',1,1,'nwira','',0,0,'',''),(332,'vaf','Vafsi',1,1,'nwira','',0,0,'',''),(333,'juha','Judeo-Hamedani',1,1,'nwira','hbo; kur',850,0,'',''),(334,'avd','Alviri-Vidari',1,1,'nwira','',0,0,'',''),(335,'kfm','Khunsari',1,1,'nwira','',0,0,'',''),(336,'soj','Soi',1,1,'nwira','',0,0,'',''),(337,'ntz','Natanzi',1,1,'nwira','',0,0,'',''),(338,'gzi','Gazi',1,1,'nwira','',0,0,'',''),(339,'gbz','Dari',1,1,'nwira','',0,0,'',''),(340,'nyq','Nayini',1,1,'nwira','',0,0,'',''),(341,'siy','Sivandi',1,1,'nwira','',0,0,'',''),(342,'faz','Northwestern Fars',1,1,'nwira','',0,0,'',''),(343,'kur','Kurdish',1,1,'nwira','',0,0,'',''),(344,'lki','Laki',1,1,'nwira','',0,0,'',''),(345,'xzzg','Zaza-Gorani',0,0,'nwira','',0,0,'',''),(346,'hac','Gorani',1,1,'xzzg','',0,0,'',''),(347,'bjm','Bajelani',1,1,'xzzg','',0,0,'',''),(348,'zza','Zazaki',1,1,'xzzg','',0,0,'',''),(349,'sdf','Sarli',1,1,'xzzg','',0,0,'',''),(350,'sdb','Shabaki',1,1,'xzzg','',0,0,'',''),(351,'xpr','Parthian',1,0,'nwira','neira',0,0,'',''),(352,'xsem','Proto-Semnani',0,0,'nwira','',0,0,'',''),(353,'semn','Semnani',1,1,'xsem','',0,0,'',''),(354,'sgr','Sangsari',1,1,'xsem','',0,0,'',''),(355,'sorkh','Sorkhei',1,1,'xsem','',0,0,'',''),(356,'biya','Biyabunaki',1,1,'xsem','',0,0,'',''),(357,'afta','Aftari',1,1,'xsem','',0,0,'',''),(358,'lasg','Lasgerdi',1,1,'xsem','',0,0,'',''),(359,'xme','Median',1,0,'nwira','',0,0,'',''),(360,'xcasp','Caspian',0,0,'nwira','',0,0,'',''),(361,'glk','Gilaki',1,1,'xcasp','',0,0,'',''),(362,'srz','Shahmirzadi',1,1,'xcasp','',0,0,'',''),(363,'mzn','Mazanderani',1,1,'xcasp','',0,0,'',''),(364,'xdyl','Deylami',1,0,'xcasp','',800,1300,'',''),(365,'xbal','Proto-Balochi',0,0,'nwira','',0,0,'',''),(366,'ktl','Koroshi',1,1,'xbal','',0,0,'',''),(367,'bal','Balochi',1,1,'xbal','',0,0,'',''),(368,'bsg','Bashkardi',1,1,'xbal','',0,0,'',''),(369,'xtal','Talysh',0,0,'nwira','',0,0,'',''),(370,'tly','Talysh',1,1,'xtal','',0,0,'',''),(371,'tks','Takestani',1,1,'xtal','',0,0,'',''),(372,'xkc','Kho\'ini',1,1,'xtal','',0,0,'',''),(373,'hrz','Harzandi',1,1,'xtal','',0,0,'',''),(374,'rdb','Rudbari',1,1,'xtal','',0,0,'',''),(375,'esh','Eshtehardi',1,1,'xtal','',0,0,'',''),(376,'tov','Taromi',1,1,'xtal','',0,0,'',''),(377,'xkb','Kabatei',1,1,'xtal','',0,0,'',''),(378,'khal','Khalaj',1,1,'nwira','',0,0,'',''),(379,'peo','Old Persian',1,0,'swira','',0,0,'',''),(380,'pal','Middle Persian',1,0,'peo','',0,0,'',''),(381,'fas','Modern Persian',1,1,'pal','',0,0,'',''),(382,'lrl','Larestani',1,1,'swira','',0,0,'',''),(383,'lrc','Luri',1,1,'swira','',0,0,'',''),(384,'zum','Kumzari',1,1,'lrc','',0,0,'',''),(385,'ttt','Tat',1,1,'fas','',0,0,'',''),(386,'ave','Avestan',1,0,'neira','',-1000,-700,'',''),(387,'xbc','Bactrian',1,0,'neira','grc',-300,800,'',''),(388,'xco','Khwarezmian',1,0,'neira','',-300,1200,'',''),(389,'yai','Yaghnobi',1,1,'sog','',0,0,'',''),(390,'xsc','Scythian',1,0,'neira','',0,0,'',''),(391,'xln','Alanic',1,0,'xsc','',0,0,'',''),(392,'oos','Old Ossetic',1,0,'xln','',0,0,'',''),(393,'oss','Ossetic',1,1,'oos','',0,0,'',''),(394,'kho','Khotanese',1,0,'xsc','',0,0,'',''),(395,'xtq','Tumshuqese',1,0,'xsc','',0,0,'',''),(396,'xpam','Pamir',0,0,'seira','',0,0,'',''),(397,'sgh','Shughni',1,1,'xpam','',0,0,'',''),(398,'srh','Sarikoli',1,1,'xpam','',0,0,'',''),(399,'yah','Yazgulyam',1,1,'xpam','',0,0,'',''),(400,'mnj','Munji',1,1,'xpam','',0,0,'',''),(401,'ydg','Yidgha',1,1,'xpam','',0,0,'',''),(402,'sgy','Sanglechi',1,1,'xpam','',0,0,'',''),(403,'isk','Ishkashimi',1,1,'xpam','',0,0,'',''),(404,'sgl','Zebaki',1,1,'xpam','',0,0,'',''),(405,'wbl','Wakhi',1,1,'xpam','',0,0,'',''),(406,'pus','Pashto',1,1,'seira','',0,0,'',''),(407,'oru','Ormuri',1,1,'seira','',0,0,'',''),(408,'prc','Parachi',1,1,'seira','',0,0,'','');
/*!40000 ALTER TABLE `ietree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsgeo`
--

DROP TABLE IF EXISTS `newsgeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsgeo` (
  `id` int(10) unsigned NOT NULL,
  `service` varchar(255) NOT NULL,
  `shortlink` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `target_org` varchar(255) NOT NULL,
  `geointerest` text NOT NULL,
  `hashtag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsgeo`
--

LOCK TABLES `newsgeo` WRITE;
/*!40000 ALTER TABLE `newsgeo` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsgeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synie`
--

DROP TABLE IF EXISTS `synie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `concept` varchar(255) NOT NULL,
  `grk` varchar(255) NOT NULL,
  `grk_root` varchar(255) NOT NULL,
  `ng` varchar(255) NOT NULL,
  `ng_root` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lat_root` varchar(255) NOT NULL,
  `it` varchar(255) NOT NULL,
  `it_root` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `fr_root` varchar(255) NOT NULL,
  `sp` varchar(255) NOT NULL,
  `sp_root` varchar(255) NOT NULL,
  `rum` varchar(255) NOT NULL,
  `rum_root` varchar(255) NOT NULL,
  `ir` varchar(255) NOT NULL,
  `ir_root` varchar(255) NOT NULL,
  `nir` varchar(255) NOT NULL,
  `nir_root` varchar(255) NOT NULL,
  `w` varchar(255) NOT NULL,
  `w_root` varchar(255) NOT NULL,
  `br` varchar(255) NOT NULL,
  `br_root` varchar(255) NOT NULL,
  `goth` varchar(255) NOT NULL,
  `goth_root` varchar(255) NOT NULL,
  `on` varchar(255) NOT NULL,
  `on_root` varchar(255) NOT NULL,
  `dan` varchar(255) NOT NULL,
  `dan_root` varchar(255) NOT NULL,
  `sw` varchar(255) NOT NULL,
  `sw_root` varchar(255) NOT NULL,
  `oe` varchar(255) NOT NULL,
  `oe_root` varchar(255) NOT NULL,
  `me` varchar(255) NOT NULL,
  `me_root` varchar(255) NOT NULL,
  `ne` varchar(255) NOT NULL,
  `ne_root` varchar(255) NOT NULL,
  `du` varchar(255) NOT NULL,
  `du_root` varchar(255) NOT NULL,
  `ohg` varchar(255) NOT NULL,
  `ohg_root` varchar(255) NOT NULL,
  `mhg` varchar(255) NOT NULL,
  `mhg_root` varchar(255) NOT NULL,
  `nhg` varchar(255) NOT NULL,
  `nhg_root` varchar(255) NOT NULL,
  `lith` varchar(255) NOT NULL,
  `lith_root` varchar(255) NOT NULL,
  `lett` varchar(255) NOT NULL,
  `lett_root` varchar(255) NOT NULL,
  `chsl` varchar(255) NOT NULL,
  `chsl_root` varchar(255) NOT NULL,
  `scr` varchar(255) NOT NULL,
  `scr_root` varchar(255) NOT NULL,
  `boh` varchar(255) NOT NULL,
  `boh_root` varchar(255) NOT NULL,
  `pol` varchar(255) NOT NULL,
  `pol_root` varchar(255) NOT NULL,
  `russ` varchar(255) NOT NULL,
  `russ_root` varchar(255) NOT NULL,
  `skt` varchar(255) NOT NULL,
  `skt_root` varchar(255) NOT NULL,
  `av` varchar(255) NOT NULL,
  `av_root` varchar(255) NOT NULL,
  `sqi` varchar(256) NOT NULL,
  `sqi_root` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synie`
--

LOCK TABLES `synie` WRITE;
/*!40000 ALTER TABLE `synie` DISABLE KEYS */;
INSERT INTO `synie` VALUES (1,'sun','ἥλιος','sóh₂wl̥','ήλιος','sóh₂wl̥','sōl','sóh₂wl̥','sole','sóh₂wl̥','soleil','sóh₂wl̥','sol','sóh₂wl̥','soare','sóh₂wl̥','grían','gher-','grian','gher-','haul','sóh₂wl̥','heol','sóh₂wl̥','sauil; sunnō','sóh₂wl̥; sóh₂wl̥','sōl; sunna','sóh₂wl̥; sóh₂wl̥','sol','sóh₂wl̥','sol','sóh₂wl̥','sunne; sunna','sóh₂wl̥; sóh₂wl̥','sonne','sóh₂wl̥','sun','sóh₂wl̥','zon','sóh₂wl̥','sunna','sóh₂wl̥','sunne','sóh₂wl̥','sonne','sóh₂wl̥','sáulė','sóh₂wl̥','saũle','sóh₂wl̥','slъnьce','sóh₂wl̥','sunce','sóh₂wl̥','slunce','sóh₂wl̥','słońce','sóh₂wl̥','solnce','sóh₂wl̥','suar','sóh₂wl̥','hvarə','sóh₂wl̥','diell','ǵʰelh₃-'),(2,'world','κόσμος','κόσμος','κόσμος','κόσμος','mundus','mH₂nd-','mondo','mH₂nd-','monde','mH₂nd-','mundo','mH₂nd-','lume','leuk-','domun','dʰewb-','domhan','dʰewb-','byd','gʷeih₃w-','bed','gʷeih₃w-','fairhwus;manaseþs','ferhwan; man-, séh₁mn̥','heimr; verǫld','ḱóymos; uiHro, al-','verden','uiHro, al-','verld','uiHro, al-','middangeard; weorold','medhy-, gʰordʰo-; uiHro, al-','werld; world','uiHro, al-; uiHro, al-','world','uiHro, al-','wereld','uiHro, al-','mittilgart; weralt','medhy-, gʰordʰo-; uiHro, al-','werlt','uiHro, al-','welt','uiHro, al-','pasaulis','sóh₂wl̥','pasaule','sóh₂wl̥','mirъ','mirъ','svijet','světъ','svět','světъ','świat','světъ','mir; svet','mirъ; světъ','loka-; jagat-; bhu-; bhuvana-','leuk-; gʷem-; bʰuH-; bʰuH-','gaetha-','gʷeih₃w-','botë',''),(3,'body','σῶμα','tūm-n̥-','σῶμα','tūm-n̥-','corpus','krep-','corpo','krep-','corps','krep-','cuerpo','krep-','corp','krep-','corp; colinn; crī','krep-; kel-; krep-','corp','krep-','corff','krep-','korf','krep-','leik','līg-','līk; līkamr','līg-; līg-','legeme; krop','līg-; krep-','kropp','krep-','līchama; līc','līg-; līg-','body; cor(p)s; likam(e)','bʰewdʰ-; krep-; līg-','body','bʰewdʰ-','lichaam','līg-','līh; līchamo','līg-; līg-','līch; līch(n)am(e); līp','līg-; līg-; leyp-','Leib; Körper','leyp-; krep-','kūnas','keu-','kūnis; miesa','keu-; mēmso-','tělo','tělo','tijelo','tělo','tělo','tělo','ciało','tělo','telo','tělo','śarīra; dēha; tanū','kel-; dʰeiǵʰ-; ténh₂us','kərp; tanū','krep-; ténh₂us','trup','trupъ'),(4,'eye','ὀμμάτιον; ὄμμα','H₃okʷ; H₃okʷ','μάτι','H₃okʷ','oculus','H₃okʷ','occhio','H₃okʷ','œil','H₃okʷ','ojo','H₃okʷ','ochi','H₃okʷ','súil','sóh₂wl̥','súil','sóh₂wl̥','llygad','lAg-','lagad','lAg-','augō','H₃okʷ','auga','H₃okʷ','øje','H₃okʷ','öga','H₃okʷ','ēage','H₃okʷ','eghe','H₃okʷ','eye','H₃okʷ','oog','H₃okʷ','ouga','H₃okʷ','ouge','H₃okʷ','auge','H₃okʷ','akis','H₃okʷ','acs','H₃okʷ','oko','H₃okʷ','oko','H₃okʷ','oko','H₃okʷ','oko','H₃okʷ','glaz','ghel-','ákṣi; cakṣus-; locana-; netra-','H₃okʷ;; lAg-;','aši; čašman-; dōiθra-','H₃okʷ;;','sy','H₃okʷ'),(5,'mother','μήτηρ','méh₂tēr','μητέρα','méh₂tēr','māter','méh₂tēr','madre','méh₂tēr','mère','méh₂tēr','madre','méh₂tēr','maică','méh₂tēr','máthir','méh₂tēr','máthair','méh₂tēr','mam','méh₂tēr','mam','méh₂tēr','aiþei','','móðir','méh₂tēr','moder','méh₂tēr','mor','méh₂tēr','mōdor','méh₂tēr','moder','méh₂tēr','mother','méh₂tēr','moeder','méh₂tēr','muoter','méh₂tēr','muoter','méh₂tēr','Mutter','méh₂tēr','motina','méh₂tēr','māte','méh₂tēr','mati','méh₂tēr','mat','méh₂tēr','matka','méh₂tēr','matka','méh₂tēr','mat\'','méh₂tēr','ambā; mātaraḥ',';méh₂tēr','mātar','méh₂tēr','nënë','');
/*!40000 ALTER TABLE `synie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synie_lang`
--

DROP TABLE IF EXISTS `synie_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synie_lang` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(32) NOT NULL,
  `root_code` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `abbr` varchar(8) NOT NULL,
  `begin` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synie_lang`
--

LOCK TABLES `synie_lang` WRITE;
/*!40000 ALTER TABLE `synie_lang` DISABLE KEYS */;
INSERT INTO `synie_lang` VALUES (1,'grk','grk_root','Ancient Greek','Grk',-800,-330),(2,'ng','ng_root','Modern Greek','NG',1453,0),(3,'lat','lat_root','Latin','Lat',-75,300),(4,'it','it_root','Italian','It',1840,0),(5,'fr','fr_root','French','Fr',1700,0),(6,'sp','sp_root','Spanish','Sp',1492,0),(7,'rum','rum_root','Rumanian','Rum',1780,0),(8,'ir','ir_root','Old Irish','Ir',700,1050),(9,'nir','nir_root','Modern Irish','NIr',1700,0),(10,'w','w_root','Welsh','W',1300,0),(11,'br','br_root','Breton','Br',1659,0),(12,'goth','goth_root','Gothic','Goth',300,800),(13,'on','on_root','Old Norse','ON',700,1400),(14,'dan','dan_root','Danish','Dan',1495,0),(15,'sw','sw_root','Swedish','Sw',1870,0),(16,'oe','oe_root','Old English','OE',650,1066),(17,'me','me_root','Middle English','ME',1200,1500),(18,'ne','ne_root','Modern English','NE',1500,0),(19,'du','du_root','Dutch','Du',1600,0),(20,'ohg','ohg_root','Old High German','OHG',500,1050),(21,'mhg','mhg_root','Middle High German','MHG',1050,1650),(22,'nhg','nhg_root','Modern German','NHG',1650,0),(23,'lith','lith_root','Lithuanian','Lith',1500,0),(24,'lett','lett_root','Lettish','Lett',1500,0),(25,'chsl','chsl_root','Old Church Slavonic','ChSl',800,1200),(26,'scr','scr_root','Serbo-Croatian','SCr',1800,0),(27,'boh','boh_root','Bohemian','Boh',1840,0),(28,'pol','pol_root','Polish','Pol',1300,0),(29,'russ','russ_root','Russian','Russ',1800,0),(30,'skt','skt_root','Sanskrit','Skt',-300,0),(31,'av','av_root','Avestan','Av',-1800,-1000),(0,'sqi','sqi_root','Albanian','Alb',1462,0);
/*!40000 ALTER TABLE `synie_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synie_roots`
--

DROP TABLE IF EXISTS `synie_roots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synie_roots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `root` varchar(32) NOT NULL,
  `origin` varchar(32) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `attested` tinyint(1) NOT NULL,
  `grk` varchar(128) NOT NULL,
  `ng` varchar(128) NOT NULL,
  `lat` varchar(128) NOT NULL,
  `it` varchar(128) NOT NULL,
  `fr` varchar(128) NOT NULL,
  `sp` varchar(128) NOT NULL,
  `rum` varchar(128) NOT NULL,
  `ir` varchar(128) NOT NULL,
  `nir` varchar(128) NOT NULL,
  `w` varchar(128) NOT NULL,
  `br` varchar(128) NOT NULL,
  `goth` varchar(128) NOT NULL,
  `on` varchar(128) NOT NULL,
  `dan` varchar(128) NOT NULL,
  `sw` varchar(128) NOT NULL,
  `oe` varchar(128) NOT NULL,
  `me` varchar(128) NOT NULL,
  `ne` varchar(128) NOT NULL,
  `du` varchar(128) NOT NULL,
  `ohg` varchar(128) NOT NULL,
  `mhg` varchar(128) NOT NULL,
  `nhg` varchar(128) NOT NULL,
  `lith` varchar(128) NOT NULL,
  `lett` varchar(128) NOT NULL,
  `chsl` varchar(128) NOT NULL,
  `scr` varchar(128) NOT NULL,
  `boh` varchar(128) NOT NULL,
  `pol` varchar(128) NOT NULL,
  `russ` varchar(128) NOT NULL,
  `skt` varchar(128) NOT NULL,
  `av` varchar(128) NOT NULL,
  `sqi` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synie_roots`
--

LOCK TABLES `synie_roots` WRITE;
/*!40000 ALTER TABLE `synie_roots` DISABLE KEYS */;
INSERT INTO `synie_roots` VALUES (1,'κόσμος','Greek','order, arrangement',1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(2,'mH₂nd-','PIE','to adorn',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(3,'leuk-','PIE','to light, shine',0,'λευκός \'bright, shining, gleaming\'','λευκός \'white\'','lūx \'light\'; lūceō \'to shine\'','luce \'light\'','luire \'to shine, to glimmer\'','luz \'light\'','luci \'to shine, to sparkle\'','luchair \'brightness\'; loche \'lightning\'','lúcháir \'glee, joy, delight\'; lóche \'lightning\'','llug \'shimmer\'','','liuhaþ \'light\'','Ljótr [given name]','','','lēoht \'light\'','leoht, light \'light\'','light','lo \'place\'; licht \'light\'','lōh \'clearing\'; lioht \'light\'','licht \'light\'','licht \'light\'','laũkas \'field\'','lauks \'field\'','luča \'beam\'','lȗč \'light\'','louč \'fatwood\'','łuczywo \'torch\'','luč \'beam, ray\'','rócate \'(he) shines\'; roká- \'light\'','raočant- \'shining\'; raočah \'light\'',''),(5,'dʰewb-','PIE','deep, hollow',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(6,'gʷeih₃w-','PIE','to live',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(7,'ferhwan','PGmc','life',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(8,'man-','PIE','man',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(9,'séh₁mn̥','PIE','seed',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(10,'ḱóymos','PIE','village, home',0,'κώμη \'town\'','','cīvis \'citizen\'; cūnae \'cradle\'','città \'city\'','cité \'city\'','ciudad \'city\'','cetate \'city\'','','','','keoded \'city\'','haims \'village, town\'','heimr \'world\'','hjem \'home\'','hem \'home, homeland\'','hām \'home\'','','home; hamlet; city','heem \'house, home\'','heim \'home\'','heim \'home\'','Heim \'home\'','kaimas \'village\'; šeimà \'family\'','ciems \'village\'; sàimе \'family\'','sěmь \'slave, servant\'','','','','semьja \'family\'','kṣéti \'to abide, stay, dwell\'','',''),(11,'uiHro','PIE','freeman',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(12,'al-','PIE','old, age',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(13,'medhy-','PIE','middle',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(14,'gʰordʰo-','PIE','enclosure',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(15,'sóh₂wl̥','PIE','sun',0,'ἥλιος \'sun\'','ήλιος \'sun\'','sōl \'sun\'','sole \'sun\'','soleil \'sun\'','sol \'sun\'','soare \'sun\'','sūil \'eye\'','súil \'eye, hope\'','haul \'sun\'','heol \'sun\'','sauil \'sun\'','sól \'sun\'','sol \'sun\'','sol \'sun\'','sunne \'sun\'','','sun','zon \'sun\'','sunna \'sun\'','','Sonne \'sun\'','sáulė \'sun\'','saũle \'sun\'','slьnъce \'sun\'','sȗnce \'sun\'','slunce','słońce','solnce \'sun\'','súvar \'sun, light, heavens\'','hvarǝ \'sun, light, heavens\'',''),(16,'mirъ','PSlv','peace',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(17,'světъ','PSlv','light',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(35,'ghel-','PIE','to shine, glow',0,'','','','','','','','gel \'bright\'','geal \'bright\'','','','','gler \'glass\'','glar \'glass\'','glas \'glass\'','glæs \'glass\'','','glass','glas \'glass\'','glas \'amber\'','','Glas \'glass\'','','','','','','','','','',''),(19,'gʷem-','PIE','to step',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(20,'bʰuH-','PIE','to become, to grow',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(21,'tūm-n̥-','PIE','swelling',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(22,'krep-','PIE','body',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(23,'kel-','PIE','to cover, conceal',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(24,'līg-','PIE','likeness, form',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(25,'bʰewdʰ-','PIE','to be awake, observe',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(26,'leyp-','PIE','to stick, glue',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(27,'keu-','PIE','to bend, turn',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(28,'mēmso-','PIE','meat, flesh',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(29,'tělo','PSlv','body',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(30,'dʰeiǵʰ-','PIE','to mold',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(31,'ténh₂us','PIE','thin',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(32,'H₃okʷ','PIE','eye',0,'ὀμμάτιον \'eye\'; ὄμμα \'eye (poet.)\'','μάτι \'eye\'','oculus \'eye\'','occhio \'eye\'','œil \'eye\'','ojo \'eye\'','ochi \'eye\'','','','','','augō \'eye\'','auga \'eye\'','øje \'eye\'','öga \'eye\'','ēage \'eye\'','eghe \'eye\'','eye \'eye\'','oog \'eye\'','ouga \'eye\'','ouge \'eye\'','auge \'eye\'','akis \'eye\'','acs \'eye\'','oko \'eye\'','oko \'eye\'','oko \'eye\'','oko \'eye\'','očki \'glasses\'','ákṣi \'eye\'','aši \'eyes\'',''),(33,'lAg-','PIE','to look, see',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(36,'gher-','PIE','to shine',0,'χαροπός \'radiant\'','χαρωπός \'cheerful\'','rāvus \'grey\'','grigio \'grey\'','gris \'grey','gris \'grey\'','','grían \'sun\'','grian \'sun\'','','','','grár \'grey\'','grå \'grey\'','grå \'grey\'','græġ \'grey\'','','grey','grauw \'grey\'','grāo \'grey\'','','grau \'grey\'','žėrė́ti \'to shine\'','zars \'branch, twig\'','zьrěti \'to see, observe\'','zòra \'dawn\'','zořa \'dawn\'','zorza \'dawn\'','zarja \'dawn\'','','',''),(37,'méh₂tēr','PIE','mother',0,'μήτηρ \'mother\'','μητέρα \'mother\'','māter \'mother\'','madre \'mother\'','mère \'mother\'','madre \'mother\'','maică \'mother\'','máthir \'mother\'','máthair \'mother\'','mam \'mother\'','mam \'mother\'','','móðir \'mother\'','moder \'mother\'','mor \'mother\'','mōdor \'mother\'','moder \'mother\'','mother \'mother\'','moeder \'mother\'','muoter \'mother\'','muoter \'mother\'','Mutter \'mother\'','motina \'mother\'','māte \'mother\'','mati \'mother\'','mat \'mother\'','matka \'mother\'','matka \'mother\'','matj \'mother\'','mātaraḥ \'mother\'','mātar \'mother\'','motër \'sister\''),(38,'ǵʰelh₃-','PIE','yellow',0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(39,'trupъ','PSlv','body, corpse',0,'','','','','','','','','','','','','','','','','','','','','','','','','','trup \'body, trunk\'','trup \'body, trunk\'','trup \'corpse\'','trup \'corpse\'','','','trup \'body\'');
/*!40000 ALTER TABLE `synie_roots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16 10:13:06
