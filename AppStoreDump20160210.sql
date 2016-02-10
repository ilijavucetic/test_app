CREATE DATABASE  IF NOT EXISTS `app_store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `app_store`;
-- MySQL dump 10.13  Distrib 5.7.10, for Linux (x86_64)
--
-- Host: localhost    Database: app_store
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,'BUSINESS'),(2,'EDUCATION'),(3,'ENTERTAINMENT'),(4,'TOOLS'),(5,'SOCIAL'),(6,'PRODUCTIVITY'),(7,'GAME_CASUAL'),(8,'BOOKS_AND_REFERENCE'),(9,'TRANSPORTATION'),(10,'COMMUNICATION'),(11,'LIFESTYLE'),(12,'GAME_SPORTS'),(13,'MEDICAL'),(14,'NEWS_AND_MAGAZINES'),(15,'GAME_ROLE_PLAYING'),(16,'PERSONALIZATION'),(17,'GAME_ARCADE'),(18,'GAME_PUZZLE'),(19,'FINANCE'),(20,'SHOPPING'),(21,'HEALTH_AND_FITNESS'),(22,'WEATHER'),(23,'GAME_BOARD');
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_application`
--

DROP TABLE IF EXISTS `app_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `developer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_app_3fd1a723` (`developer_id`),
  CONSTRAINT `app_app_developer_id_785c8053_fk_app_developer_id` FOREIGN KEY (`developer_id`) REFERENCES `app_developer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_application`
--

LOCK TABLES `app_application` WRITE;
/*!40000 ALTER TABLE `app_application` DISABLE KEYS */;
INSERT INTO `app_application` VALUES (4,'Rapid Compass',1),(9,'Lord Krishna Live Wallpaper',2),(10,'AutomateIt - Smart Automation',3),(11,'AutomateIt Pro',3),(12,'ColorBlock',4),(13,'Заговоры на любовь',5),(14,'부산 지하철 도착 정보',6),(16,'Law of Attraction Timer',7),(22,'Penny Parlor',8),(26,'모바일 T world',9),(32,'대구 지하철 도착 정보',6),(35,'Deadly Dungeons',10),(41,'Free Bible Trivia Game',11),(44,'Duelistroid',12),(46,'FSXRemote',13),(48,'Power off',14),(49,'Power off Schedule',14),(50,'Reboot Schedule',14),(51,'Restart',14),(57,'Pocket Physics',15),(60,'My Gym Personal Trainer',16),(61,'My Gym Personal Trainer Free',16),(62,'한겨레',17),(63,'HomeRemedy',18),(64,'English Hindi Dictionary',19),(69,'FOViewer Deluxe Free',20),(90,'Mega Tic Tac Toe Online',21),(91,'Notepad Pro',22),(93,'TouchScan (OBD Diagnostics)',23),(95,'Sound Profile +volume schedule',24),(97,'Scratch Art Draw',25),(98,'VideoVault (Hide Videos)',26);
/*!40000 ALTER TABLE `app_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_application_categories`
--

DROP TABLE IF EXISTS `app_application_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_application_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_app_categories_app_id_424caa36_uniq` (`application_id`,`category_id`),
  KEY `app_app_categories_category_id_2498aa0f_fk_app_category_id` (`category_id`),
  CONSTRAINT `app_app_categories_category_id_2498aa0f_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  CONSTRAINT `app_application_ca_application_id_88fd7599_fk_app_application_id` FOREIGN KEY (`application_id`) REFERENCES `app_application` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_application_categories`
--

LOCK TABLES `app_application_categories` WRITE;
/*!40000 ALTER TABLE `app_application_categories` DISABLE KEYS */;
INSERT INTO `app_application_categories` VALUES (4,4,4),(9,9,5),(10,10,6),(11,11,6),(12,12,7),(13,13,8),(30,13,13),(14,14,9),(15,14,10),(17,16,6),(16,16,11),(38,16,17),(23,22,6),(22,22,12),(78,22,16),(27,26,8),(26,26,11),(32,32,9),(33,32,14),(36,35,3),(35,35,15),(41,41,18),(44,44,3),(46,46,3),(47,46,4),(48,48,4),(49,49,4),(50,50,4),(51,51,4),(52,51,19),(57,57,2),(58,57,16),(60,60,21),(61,61,21),(62,62,14),(63,63,21),(64,64,8),(65,64,11),(69,69,4),(71,69,11),(90,90,23),(91,91,6),(92,91,10),(93,93,9),(94,93,17),(96,95,6),(95,95,16),(97,97,2),(98,98,4);
/*!40000 ALTER TABLE `app_application_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_developer`
--

DROP TABLE IF EXISTS `app_developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `store_url` varchar(155) NOT NULL,
  `website` varchar(155) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_developer`
--

LOCK TABLES `app_developer` WRITE;
/*!40000 ALTER TABLE `app_developer` DISABLE KEYS */;
INSERT INTO `app_developer` VALUES (1,'Andrew Android Apps','AndrewAndroidApp@gmail.com','AndrewAndroidApp@gmail.com','/store/apps/developer?id=Andrew+Android+Apps','http://grc.yzu.edu.tw/'),(2,'Arjun Arora','Arjun Arora\n577, Main Bazaar,\nNew Delhi - 110','aroraa.arrjun@gmail.com','/store/apps/developer?id=Arjun+Arora','http://arjunarora-androidthemes.blogspot.in/2012/10/lord-krishna-live-wallpaper.html'),(3,'SmarterApps Ltd','Petah-Tikva, Israel','support@automateitapp.com','/store/apps/dev?id=8202756898217994038','http://automateitapp.com'),(4,'GoodTeam','Room 502,5th Floor,Building D5,Tianfu Softwar','youjumedia@gmail.com','/store/apps/developer?id=GoodTeam','http://www.gts8.com'),(5,'Bublik Book','Россия, г. Уфа','bublikbook@gmail.com','/store/apps/developer?id=Bublik+Book','http://bublikbook.blogspot.com'),(6,'Best Choice','부산광역시 연제구 연산9동 LG 아파트 115동 2001호\nf7key@naver.','f7key@naver.com','/store/apps/developer?id=Best+Choice','http://f7key.tistory.com'),(7,'Brand New Ideas','2085 Paulson Crescent, Abbotsford, B.C. Canad','fastek2000@gmail.com','/store/apps/developer?id=Brand+New+Ideas','http://www.brandnewideas.com'),(8,'GamesLabApps','PO Box 735\nChatswood NSW 2057','xprsocial@games-lab.com.au','/store/apps/developer?id=GamesLabApps','http://gameslabapps.com/games/pennyparlor/'),(9,'SKTelecom','서울 중구 을지로1가 65 SKT타워','OTL@sk.com','/store/apps/developer?id=SKTelecom','http://www.sktelecom.com'),(10,'code_zombie','18470 W 161st St\nOlathe, KS 66062','contact@deadlydungeons.com','/store/apps/developer?id=code_zombie','http://deadlydungeons.com'),(11,'Salem New Media','111 Virginia Street\nSuite 500\nRichmond, VA 23','apps@salemwebnetwork.com','/store/apps/developer?id=Salem+New+Media','http://salemwebnetwork.com'),(12,'hamon','Osaka Kitaku Umeda 1-1-3\nOsakaekimaedai3biru ','support@hamon-apps.com','/store/apps/dev?id=5379714262743404987','http://hamon-apps.com/'),(13,'ARPALOG','60 avenue andrée 94100 Saint Maur des Fossés','webmaster@arpasim.com','/store/apps/developer?id=ARPALOG','http://www.arpasim.com'),(14,'GRuV','ул. Маршала Тухачевского д.54\nМосква','aymobileru@gmail.com','/store/apps/dev?id=7287379049171748003','http://android.ay-mobile.ru'),(15,'Geckonization','Gawota 6C/19\n02-830 Warsaw\nPoland','geckonization@gmail.com','/store/apps/developer?id=Geckonization','http://www.geckonization.com'),(16,'JcSoftM','C/ Vital Aza 12 (Madrid)','mygympersonaltrainerandroid@gmail.com','/store/apps/developer?id=JcSoftM','http://mygympersonaltrainer.blogspot.com.es'),(17,'한겨레신문사','서울시 마포구 공덕동 16-25 한겨레신문사 5층 디지털미디어사업국','hanidev@hani.co.kr','/store/apps/developer?id=%ED%95%9C%EA%B2%A8%EB%A0%88%EC%8B%A0%EB%AC%B8%EC%82%AC','http://www.hani.co.kr'),(18,'Gopalakrishna Joisa','Swasthi\nBudnar Road\nPaniyadi\nUdupi\n','sgjoisa@gmail.com','/store/apps/developer?id=Gopalakrishna+Joisa','http://sgjoisa.weebly.com'),(19,'HinKhoj','310, Okay plus spaces\nNear C2 Plaza\nApex circ','care@hinkhoj.com','/store/apps/developer?id=HinKhoj','http://dict.hinkhoj.com'),(20,'Jeta Visual Creations','Count Basiestraat 69\n3813 ZP  Amersfoort\nNede','bvkrieken@gmail.com','/store/apps/developer?id=Jeta+Visual+Creations','http://www.jeta.megrez.nl'),(21,'Noam Behar','Yigal Alon 12, Haifa, Israel','noambehar1@gmail.com','/store/apps/developer?id=Noam+Behar','http://www.facebook.com/pages/Mega-Tic-Tac-Toe/341925589153480'),(22,'Michael Meistrowitz','Hellweg 24\n59457 Werl\nDeutschland','loadi@t-online.de','/store/apps/developer?id=Michael+Meistrowitz','http://www.meistrowitz.de'),(23,'OCTech, LLC','4098 Gibsonia Road\n#215\nGibsonia, PA 15044','service@obdsoftware.net','/store/apps/developer?id=OCTech,+LLC','https://www.obdsoftware.net'),(24,'Corcanoe','Calle Plata, 22, Sevilla, 41.014 Spain','corcanoe@gmail.com','/store/apps/developer?id=Corcanoe','http://www.retokme.com/soundprofile'),(25,'PaulLangemeijer','Perkstraat 6\n5691 ZB  Son en Breugel\nthe Neth','ScratchArt@live.nl','/store/apps/developer?id=PaulLangemeijer','http://www.scratchart.nl/'),(26,'Pacific Software Solutions, Inc.','12624 SW 22nd Ave.\nLake Oswego, OR 97034\nUSA','support@pacificsoftwaresolutions.net','/store/apps/developer?id=Pacific+Software+Solutions,+Inc.','http://www.pacificsoftwaresolutions.net');
/*!40000 ALTER TABLE `app_developer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-10 23:20:44
