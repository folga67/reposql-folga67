-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: booking_full
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `hotel_id` int unsigned NOT NULL,
  `room_id` int unsigned NOT NULL,
  `facilities_id` int unsigned NOT NULL,
  `date_entry` datetime DEFAULT NULL,
  `date_departure` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`,`user_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`id`) REFERENCES `hotels` (`hotel_id`),
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `book_ibfk_4` FOREIGN KEY (`id`) REFERENCES `facilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (2,2,39,2,2,'1983-05-18 10:20:44','1983-05-23 14:13:45','1987-01-20 03:12:23'),(3,3,31,3,3,'1998-05-18 04:38:18','1998-05-17 06:08:16','1970-11-04 11:34:31'),(4,4,43,4,4,'1976-11-05 09:31:23','1976-12-26 21:08:34','2008-10-28 02:14:51'),(5,5,86,5,5,'2012-06-03 06:39:58','2012-06-05 21:15:47','2005-09-07 08:14:15'),(6,1,84,1,1,'1970-08-11 00:00:00','1970-08-14 13:01:34','1970-08-21 23:08:18'),(7,7,97,7,7,'2018-01-28 15:38:10','2018-10-10 13:36:44','1976-07-16 20:07:19'),(8,8,30,8,8,'2019-01-24 21:46:06','2019-12-07 18:02:14','2014-12-04 01:35:41'),(9,9,20,9,9,'1985-07-17 21:27:30','1985-07-27 21:44:13','1991-04-25 22:31:36'),(10,10,70,10,10,'1983-06-28 07:56:05','1983-11-04 09:01:13','1984-07-07 00:02:58'),(11,11,38,11,11,'2014-12-01 09:05:52','2014-12-12 05:13:49','1992-04-12 13:34:42'),(12,12,83,12,12,'2006-03-30 03:45:34','2006-05-28 15:03:57','2005-05-01 08:43:45'),(13,13,61,13,13,'1993-02-13 23:09:56','1993-02-21 21:27:19','2003-08-25 06:46:09'),(14,14,64,14,14,'2018-05-27 06:16:16','2018-05-28 20:44:11','1982-12-02 14:23:05'),(15,15,57,15,15,'2017-07-04 20:41:11','2017-08-01 03:43:17','2003-05-24 17:45:43'),(16,16,6,16,16,'1992-01-07 07:29:49','1992-01-13 02:14:53','1994-10-07 23:30:39'),(17,17,3,17,17,'1992-03-05 05:49:10','1992-06-29 15:18:35','1994-01-19 05:46:48'),(18,18,91,18,18,'2004-04-24 05:19:57','2004-04-29 13:53:57','1977-07-19 09:06:10'),(19,19,65,19,19,'1970-12-09 20:43:39','1970-12-16 07:08:20','1987-08-15 14:09:55'),(20,20,81,20,20,'1974-06-05 16:10:11','1974-06-13 10:54:22','1986-05-25 15:32:32'),(21,21,92,21,21,'1999-06-01 10:32:35','1999-06-08 16:10:26','1994-08-05 07:53:28'),(22,22,25,22,22,'1999-06-01 10:32:35','1999-06-08 16:10:26','1977-11-26 23:12:12'),(23,23,13,23,23,'1999-03-12 10:35:42','1999-04-07 10:52:48','2006-09-02 14:34:21'),(24,24,100,24,24,'1999-03-12 10:35:42','1999-04-07 10:52:48','1981-11-02 20:20:20'),(25,25,97,25,25,'2010-08-07 08:18:19','2010-08-27 17:32:24','1995-11-28 16:38:23'),(26,26,24,26,26,'1986-10-16 22:27:53','1986-10-21 06:50:27','1978-06-27 09:12:03'),(27,27,73,27,27,'1985-10-24 05:32:18','1985-10-26 03:03:54','1978-06-01 05:38:52'),(28,28,68,28,28,'1997-03-07 15:32:23','1997-06-05 01:31:35','2014-08-07 14:17:54'),(29,29,88,29,29,'1970-11-11 17:22:04','1970-11-13 03:34:29','2012-12-22 20:50:47'),(30,30,7,30,30,'2000-03-21 04:39:49','2015-10-28 21:09:06','2017-04-07 22:46:04'),(31,31,69,31,31,'1976-12-25 01:58:17','2017-01-15 04:01:54','2016-06-14 17:55:04'),(32,32,50,32,32,'1997-10-08 00:35:54','2007-05-15 08:07:15','2017-07-08 23:14:20'),(33,33,54,33,33,'1985-09-17 16:52:19','2010-04-04 06:20:21','2007-10-24 19:12:47'),(34,34,44,34,34,'1980-07-29 01:00:59','2016-05-20 13:52:23','2004-08-27 18:32:24'),(35,35,53,35,35,'1991-03-09 23:45:42','2008-09-01 20:44:16','1986-03-22 00:44:05'),(36,36,77,36,36,'1999-04-04 17:04:41','1975-10-01 14:08:41','1995-04-17 12:50:24'),(37,37,88,37,37,'1989-10-01 21:21:53','1977-11-15 00:03:05','1995-12-17 09:38:30'),(38,38,38,38,38,'1994-11-16 07:25:22','1979-12-16 06:44:04','1976-11-11 09:32:09'),(39,39,29,39,39,'1991-05-02 13:13:07','1989-09-04 12:33:59','2012-11-25 05:33:13'),(40,40,50,40,40,'1991-10-11 11:13:02','1986-12-27 20:47:39','1972-10-19 01:19:02'),(41,41,20,41,41,'1985-10-12 06:16:34','2017-01-06 04:53:28','1981-03-23 20:53:27'),(42,42,92,42,42,'1998-06-18 16:38:03','1998-01-19 05:30:40','1993-03-11 15:34:33'),(43,43,42,43,43,'1979-03-29 06:20:45','1995-05-02 01:13:35','1992-10-16 05:38:00'),(44,44,47,44,44,'2001-01-08 08:36:11','1981-07-19 03:46:21','2006-07-04 00:48:35'),(45,45,41,45,45,'1978-08-18 11:09:29','2008-02-02 11:16:31','2004-02-21 22:09:32'),(46,46,49,46,46,'1971-06-11 00:47:15','2019-06-17 19:19:27','1994-01-28 05:00:00'),(47,47,65,47,47,'1983-02-01 01:25:21','1989-09-30 03:40:33','2009-09-05 09:14:18'),(48,48,2,48,48,'2011-10-05 13:48:34','1987-12-22 23:26:30','1986-08-01 22:32:33'),(49,49,44,49,49,'1995-02-27 20:20:59','1975-11-05 23:10:36','2000-01-01 08:10:03'),(50,50,74,50,50,'2001-08-13 13:00:23','2006-03-19 16:35:11','2007-11-11 16:22:44'),(51,51,45,51,51,'1989-05-25 20:26:40','2000-08-25 15:46:34','1998-10-19 04:54:29'),(52,52,31,52,52,'1998-04-18 01:07:13','2004-09-08 13:17:20','2014-06-15 11:39:27'),(53,53,85,53,53,'1970-03-11 08:46:46','1999-02-04 09:57:21','2015-07-16 01:04:55'),(54,54,4,54,54,'2017-10-16 22:05:06','1974-01-09 01:00:22','2016-10-17 17:47:42'),(55,55,78,55,55,'2005-05-10 15:33:23','1986-04-17 05:54:58','1997-10-11 13:59:48'),(56,56,25,56,56,'2013-11-22 04:27:19','1986-11-20 23:24:58','2001-07-27 10:20:34'),(57,57,10,57,57,'1994-12-02 12:38:02','1980-10-14 04:23:12','1993-02-02 04:01:44'),(58,58,28,58,58,'1972-02-18 13:12:18','1971-03-17 11:41:19','2005-12-30 03:03:21'),(59,59,41,59,59,'1993-05-04 01:14:06','1997-08-10 06:28:19','2006-07-09 04:08:59'),(60,60,69,60,60,'1990-12-29 16:29:12','1979-07-18 10:23:35','2007-05-06 08:30:25'),(61,61,71,61,61,'2017-01-06 22:42:50','2017-05-20 03:34:08','1994-09-08 02:17:56'),(62,62,17,62,62,'2008-08-01 21:04:28','1971-01-04 11:00:02','1982-11-01 23:15:37'),(63,63,95,63,63,'1973-11-19 06:46:05','1971-05-21 20:56:47','2019-09-08 18:09:42'),(64,64,53,64,64,'1976-07-11 14:01:07','2011-08-02 07:11:25','2009-11-25 00:44:43'),(65,65,90,65,65,'2013-12-28 22:09:01','1999-11-30 16:47:24','1973-01-09 22:59:57'),(66,66,2,66,66,'1982-10-03 06:25:12','2018-01-13 02:25:12','2013-01-27 02:33:43'),(67,67,35,67,67,'2001-02-01 08:41:40','2012-11-08 14:23:53','1975-06-19 06:34:14'),(68,68,25,68,68,'1981-12-11 12:01:40','1999-10-21 21:05:57','2001-03-09 12:27:15'),(69,69,28,69,69,'2016-07-18 01:50:15','2011-11-13 22:59:45','2001-09-15 11:39:31'),(70,70,4,70,70,'1991-01-26 03:36:50','1981-10-28 10:01:59','1998-10-30 12:11:59'),(71,71,66,71,71,'2004-07-24 02:14:28','1998-01-07 18:27:09','1992-01-01 12:28:45'),(72,72,52,72,72,'2010-03-10 18:02:04','2018-09-05 17:59:44','1988-06-29 11:18:30'),(73,73,75,73,73,'1991-02-05 16:22:08','1988-08-02 05:48:12','2007-03-19 15:30:33'),(74,74,81,74,74,'2006-06-17 12:34:03','1978-12-10 07:07:48','1976-08-10 04:17:37'),(75,75,65,75,75,'2004-11-09 15:43:16','1984-07-23 22:32:20','1987-06-03 02:43:21'),(76,76,95,76,76,'1997-05-08 21:36:13','1984-05-31 08:36:50','2005-03-04 20:22:38'),(77,77,70,77,77,'2006-05-09 09:36:26','2017-04-22 22:12:46','2007-12-27 09:22:56'),(78,78,36,78,78,'1997-03-07 02:49:43','1976-10-22 22:03:45','1980-06-06 11:40:48'),(79,79,96,79,79,'1991-10-16 01:35:53','1973-12-12 20:38:48','1990-07-30 04:33:05'),(80,80,90,80,80,'2016-09-07 06:05:50','1981-03-05 21:15:33','2018-06-15 05:01:06'),(81,81,93,81,81,'2015-02-08 06:13:44','2016-12-22 07:33:59','1999-05-10 18:10:43'),(82,82,23,82,82,'2019-07-04 05:12:49','1973-10-16 18:20:03','1979-07-15 06:48:50'),(83,83,29,83,83,'1991-09-25 03:34:39','2009-07-12 18:39:40','1991-07-11 00:37:14'),(84,84,54,84,84,'2019-09-11 12:09:12','1995-10-03 17:32:40','1975-03-12 17:46:27'),(85,85,42,85,85,'2015-01-04 03:32:21','1977-04-09 06:50:51','2012-07-11 10:34:21'),(86,86,56,86,86,'1999-04-02 16:33:56','1988-03-09 18:13:09','2001-01-03 18:58:24'),(87,87,54,87,87,'2010-08-24 02:53:45','2016-10-25 08:28:55','1982-09-05 02:30:09'),(88,88,98,88,88,'2010-06-21 14:52:19','2000-09-29 16:17:51','1992-01-13 10:53:46'),(89,89,23,89,89,'1971-01-03 20:32:36','1996-04-25 22:26:07','1999-10-24 08:24:09'),(90,90,97,90,90,'1978-06-06 00:51:53','2017-04-23 06:48:55','1975-01-05 23:41:44'),(91,91,54,91,91,'1970-07-25 03:26:12','2005-02-04 08:02:21','1998-06-20 21:55:40'),(92,92,61,92,92,'1973-11-16 02:26:39','1995-06-26 18:13:52','2014-12-18 06:34:20'),(93,93,64,93,93,'1994-02-24 02:58:24','1994-05-01 07:57:42','2002-08-10 12:09:33'),(94,94,65,94,94,'1977-04-30 08:39:38','1978-12-15 23:30:43','1996-08-02 09:14:41'),(95,95,64,95,95,'1995-06-03 18:22:53','1990-10-08 13:31:36','1978-01-04 20:46:44'),(96,96,51,96,96,'2019-08-20 11:33:07','1988-09-06 08:28:02','1994-07-30 23:33:15'),(97,97,76,97,97,'2016-04-19 00:31:09','2000-10-23 16:53:23','2007-03-24 20:45:24'),(98,98,82,98,98,'1976-04-18 19:31:26','1972-08-23 00:39:25','2000-03-25 16:39:29'),(99,99,31,99,99,'1987-08-08 23:43:56','2017-06-20 06:16:08','2017-07-30 05:17:03'),(100,100,43,100,100,'1980-05-16 16:31:51','2020-01-22 09:10:11','2016-12-07 00:44:00'),(101,43,35,67,67,'2001-02-01 08:41:40','2012-11-08 14:23:53','1975-06-19 06:34:14'),(102,43,35,67,67,'2001-02-01 08:41:40','2012-01-08 14:23:53','1975-06-19 06:34:14'),(103,43,35,67,67,'2001-02-01 08:41:40','2012-01-08 14:23:53','1975-06-19 06:34:14'),(104,43,35,67,67,'2001-02-01 08:41:40','2012-01-08 14:23:53','1975-06-19 06:34:14'),(106,43,35,67,67,'2001-02-01 08:41:40','2012-01-08 14:23:53','1975-06-19 06:34:14'),(171,1,84,1,1,'1970-08-11 00:00:00','1970-08-14 13:01:34','1970-08-21 23:08:18');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_date_departure` BEFORE INSERT ON `book` FOR EACH ROW begin
	if new.date_departure < new.date_entry then
	signal sqlstate '45000' set message_text = 'Insert conceled. Date_departure has to be later, than date_entry'
	;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_date_before_insert` BEFORE INSERT ON `book` FOR EACH ROW begin
    if exists
    (select
    book.room_id,
    count(book.room_id),
    date_entry,
    date_departure
    from book
    where 
    (new.date_entry > date_entry and (new.date_departure <date_departure))
    having  count(book.room_id) > 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insert Canceled. The room has been booked!';
    end IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id` (`city_id`),
  KEY `city_id_2` (`city_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `countries` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'New German'),(2,'North Bradyview'),(3,'Lake Missouri'),(4,'East Lowellside'),(5,'Rennerburgh'),(6,'West Janessaside'),(7,'Creolamouth'),(8,'South Tremayne'),(9,'North Taylor'),(10,'Daughertymouth'),(11,'Lake Kieran'),(12,'South Ashleeberg'),(13,'Wiegandville'),(14,'Glendaborough'),(15,'Port River'),(16,'Kubberg'),(17,'Port Susan'),(18,'North Hipolitoberg'),(19,'Alaynaside'),(20,'Houstonstad'),(21,'O\'Keefeshire'),(22,'Treburgh'),(23,'Batzshire'),(24,'West Arianeland'),(25,'South Ryleigh'),(26,'Doylehaven'),(27,'Lutherberg'),(28,'North Mack'),(29,'East Marianna'),(30,'Blairside'),(31,'New Jailyn'),(32,'South Victoria'),(33,'Walkermouth'),(34,'Colbyburgh'),(35,'Kochstad'),(36,'Port Brooksmouth'),(37,'New Garrett'),(38,'Moriahstad'),(39,'Kemmerstad'),(40,'Port Caleb'),(41,'South Kristaburgh'),(42,'Rainashire'),(43,'Port Jovanyberg'),(44,'East Mason'),(45,'Lake Deborahstad'),(46,'South Khalidstad'),(47,'Smithtown'),(48,'Wintheiserfurt'),(49,'West Kristian'),(50,'Port Michellemouth'),(51,'South Sid'),(52,'New Kaitlin'),(53,'Lake Marvin'),(54,'Heidenreichton'),(55,'South Jacynthe'),(56,'Mikeltown'),(57,'Lake Nels'),(58,'Kentonstad'),(59,'Kirlinburgh'),(60,'Abernathybury'),(61,'Lake Normaland'),(62,'Hoppemouth'),(63,'Annabelport'),(64,'Gunnerfurt'),(65,'Daughertyburgh'),(66,'Ethelynborough'),(67,'Demariomouth'),(68,'Bessieton'),(69,'South Garrett'),(70,'East Fredericberg'),(71,'McLaughlinville'),(72,'Tomasaland'),(73,'Collinsland'),(74,'East Elisabeth'),(75,'Lake Heidi'),(76,'Port Landen'),(77,'Port Patrickfurt'),(78,'Lake Dillon'),(79,'Melvinfort'),(80,'Rebeccaborough'),(81,'South Arne'),(82,'New Milfordside'),(83,'New Estaville'),(84,'South Alessandroberg'),(85,'Ilianabury'),(86,'West Jamalmouth'),(87,'Larkinville'),(88,'Lake Reese'),(89,'New Jose'),(90,'Grimesville'),(91,'Eliseotown'),(92,'North Aliaport'),(93,'Antonettemouth'),(94,'Floyberg'),(95,'North Damian'),(96,'East Carmelo'),(97,'Nicolasfort'),(98,'Lake Olga'),(99,'Schadenton'),(100,'Alethamouth');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_id` (`country_id`),
  KEY `country_id_2` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Illinois'),(2,'Alaska'),(3,'Connecticut'),(4,'Florida'),(5,'Massachusetts'),(6,'Maryland'),(7,'Idaho'),(8,'Minnesota'),(9,'Alabama'),(10,'RhodeIsland'),(11,'SouthCarolina'),(12,'WestVirginia'),(13,'Kentucky'),(14,'Indiana'),(15,'WestVirginia'),(16,'NewJersey'),(17,'Pennsylvania'),(18,'Colorado'),(19,'Oregon'),(20,'SouthDakota'),(21,'Pennsylvania'),(22,'Iowa'),(23,'Minnesota'),(24,'NewJersey'),(25,'Oregon'),(26,'Vermont'),(27,'Texas'),(28,'RhodeIsland'),(29,'Alaska'),(30,'NorthDakota'),(31,'Idaho'),(32,'Missouri'),(33,'Delaware'),(34,'Nebraska'),(35,'Kansas'),(36,'Alabama'),(37,'NorthDakota'),(38,'Mississippi'),(39,'NorthDakota'),(40,'Colorado'),(41,'Indiana'),(42,'Illinois'),(43,'Louisiana'),(44,'Ohio'),(45,'Minnesota'),(46,'NorthDakota'),(47,'NorthDakota'),(48,'Alaska'),(49,'NewHampshire'),(50,'Delaware'),(51,'NorthDakota'),(52,'Arkansas'),(53,'District of Columbia'),(54,'Hawaii'),(55,'Washington'),(56,'Illinois'),(57,'Kansas'),(58,'Connecticut'),(59,'Oklahoma'),(60,'Arkansas'),(61,'Iowa'),(62,'Ohio'),(63,'Wyoming'),(64,'Arizona'),(65,'Alabama'),(66,'Wisconsin'),(67,'Massachusetts'),(68,'Vermont'),(69,'Colorado'),(70,'Oregon'),(71,'Idaho'),(72,'NewYork'),(73,'Oklahoma'),(74,'Connecticut'),(75,'Vermont'),(76,'Utah'),(77,'Hawaii'),(78,'Maryland'),(79,'Tennessee'),(80,'Nebraska'),(81,'Louisiana'),(82,'Wisconsin'),(83,'Louisiana'),(84,'Virginia'),(85,'Delaware'),(86,'Wisconsin'),(87,'Pennsylvania'),(88,'Arkansas'),(89,'NorthCarolina'),(90,'Indiana'),(91,'Connecticut'),(92,'Indiana'),(93,'WestVirginia'),(94,'SouthDakota'),(95,'Maryland'),(96,'District of Columbia'),(97,'District of Columbia'),(98,'Mississippi'),(99,'District of Columbia'),(100,'Indiana');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hotel_id` int unsigned NOT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `price` int unsigned NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `facilities_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hotel_profiles` (`hotel_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,46,'quia',29551,'Quasi minima deleniti qui et aut. Nisi et quia ducimus temporibus. Sint alias sed nisi consequatur ratione quis id.'),(2,18,'ipsam',0,'Non et debitis sequi molestiae. Suscipit et ad cumque at vitae excepturi hic doloribus. Voluptatibus eos porro aut et qui dicta.'),(3,97,'est',1,'Et voluptatibus molestiae dolore unde quod voluptas cum. Tempora aspernatur voluptatem eum nam repudiandae possimus ut. Sapiente et aut atque quas sit dolor.'),(4,33,'fuga',424243851,'Assumenda esse voluptatem ut. Architecto quia sed ipsum rerum. Eos iusto aut architecto recusandae corrupti. Necessitatibus exercitationem voluptatum nam quia cum.'),(5,70,'cumque',5,'Quia consectetur aut omnis pariatur. Omnis reprehenderit consectetur voluptatem id molestias. Velit aut soluta illum omnis velit aut distinctio enim. Sint distinctio esse incidunt sit ut. Ab quo non laborum quam.'),(6,51,'aperiam',19,'Et suscipit perferendis culpa atque sed. Nesciunt in odit quae et dignissimos. Illo molestiae ipsa dignissimos earum necessitatibus.'),(7,41,'assumenda',2,'Rem ut sapiente et placeat et. Voluptatibus repudiandae doloremque provident perspiciatis. Harum animi perspiciatis temporibus et expedita.'),(8,96,'tempora',20921964,'Qui aspernatur qui perspiciatis excepturi quis delectus. Voluptate magni beatae occaecati rem et sunt omnis. A omnis aut eaque est deleniti nostrum consectetur. Consectetur molestiae quidem tempora labore commodi velit.'),(9,54,'similique',89795,'Ad vel non at et perferendis ut. Consequatur harum vero nihil aut suscipit. Et eum modi similique non est assumenda modi. Ut ut omnis accusantium velit quibusdam aut voluptate.'),(10,48,'soluta',144647,'Ea ullam voluptatem sint. Recusandae aut ut natus. Voluptas eveniet recusandae ad. Qui fugiat aut maxime maxime pariatur.'),(11,33,'reprehenderit',4336,'Veritatis commodi veniam expedita soluta molestiae nesciunt aut. Earum accusamus esse autem. Placeat iure inventore in.'),(12,70,'aliquid',711372,'Exercitationem non est aliquid ipsum asperiores esse ad voluptas. Sunt qui eos laborum rem maiores corporis. Illum iste repellendus quasi rerum quam quos delectus. Molestiae sapiente autem numquam nesciunt voluptatem distinctio vero. Architecto voluptates voluptas dolore incidunt expedita.'),(13,26,'accusamus',5631285,'Laborum ducimus omnis tenetur rerum aut et. Officiis repellendus unde sed quo alias unde. Excepturi consequatur sint et commodi aliquam quisquam omnis. Dolor esse illum ipsum aut.'),(14,43,'tempora',34447,'Nihil voluptatem debitis iste similique repellat quas dolorem. Repellendus quod animi minus ullam quia voluptatum voluptas placeat. Fuga inventore sapiente autem exercitationem cum quia placeat.'),(15,58,'eveniet',72748132,'Culpa deleniti vel dolorum aut illum. Sunt et culpa fugiat omnis quia. Sit quo est consequatur enim rerum. Ea dolorem alias ullam tempora.'),(16,80,'sint',1088,'Natus aspernatur ea qui atque. Quisquam rerum aliquam modi rerum nemo. Sunt hic tempora sunt.'),(17,80,'maiores',6896,'Cum accusamus doloremque fugit odit nemo. Consectetur possimus aliquid perspiciatis quas cum. Nihil nesciunt ut perspiciatis saepe.'),(18,63,'ipsa',614023851,'Similique est nostrum sed autem. Expedita expedita atque ipsam harum enim.'),(19,55,'libero',5,'Voluptas voluptates suscipit sint rerum tempore est. Sint sint dolores voluptatum quia veniam odit. Dignissimos cupiditate ut enim nihil sed ratione a. Et quaerat laboriosam ea sint ut quaerat quasi ex.'),(20,37,'est',184,'Dolorem provident eaque earum cumque. Ut nostrum deleniti aliquid nesciunt aut quo. Numquam quas consectetur optio quis deserunt nemo.'),(21,74,'voluptatem',5527,'Placeat doloribus laboriosam dolores aliquid reiciendis eum. Eligendi aliquid minus excepturi ut dolore asperiores. Doloremque qui voluptas autem qui. Voluptatem quasi officia facere sequi quisquam est mollitia.'),(22,39,'deserunt',6262377,'Sed eum et sequi tenetur. Id est qui quidem numquam. Ab aut vitae itaque esse illo rem.'),(23,55,'enim',0,'Deserunt deleniti mollitia omnis voluptatem sequi assumenda. Impedit dolores aut delectus molestiae ad et rerum. Quisquam quae pariatur minima quia sed odit.'),(24,43,'impedit',1602633,'Magni pariatur et voluptatem rerum fugit consequatur. Ab deleniti est eos repellendus nisi quaerat eum. Deserunt quam eos est quo.'),(25,41,'et',7456285,'Delectus iure repellat porro eos voluptatibus incidunt deserunt repellendus. Facilis maxime ex soluta nam ut excepturi aliquam. Aliquam modi quaerat tempora magni.'),(26,32,'facilis',3598954,'Non provident est eum consequuntur. Delectus ut consequatur et quos dolorem accusantium eos. Quo esse natus assumenda quis. Libero nulla omnis voluptate eligendi est expedita.'),(27,64,'labore',2,'Eum eos quas odio numquam dicta distinctio aperiam. Accusamus accusantium maiores consectetur nobis hic. Sit reprehenderit molestiae beatae corporis similique quod non.'),(28,63,'et',44342,'Facilis eos tempora error voluptatem vel aspernatur sit. Vitae sit tempore consectetur velit aliquam est rerum dolor. Veniam eum dicta amet laboriosam aliquid totam. Similique dignissimos in fugiat eaque et.'),(29,68,'quia',319330044,'Quo ut soluta unde laboriosam est vel dolorem architecto. Dicta esse eaque quis est sequi. Sint quia dolorum in autem. Voluptates necessitatibus maxime quis et.'),(30,38,'autem',572,'Quasi officiis esse iusto repellat nam molestiae quia. Perferendis odio excepturi officiis et est. Ea voluptatem repellat fuga sed consequatur molestias.'),(31,43,'sint',0,'Cupiditate voluptatem et sed iure repellat consectetur error. Quia voluptatibus sequi fuga ducimus fugit sequi voluptas. Dolorum culpa qui unde ipsum dicta ipsam fuga.'),(32,95,'voluptatem',6696063,'Veritatis cum voluptate et velit. Est velit exercitationem commodi modi eaque natus. Ipsam sit perferendis adipisci et. Atque sed aut magnam delectus aut consectetur est.'),(33,80,'neque',263600,'Dignissimos aut non libero autem quia voluptatem doloremque deserunt. Nemo exercitationem vel hic rerum aut. Itaque beatae et ipsum eligendi. Laudantium ab sit repellendus esse.'),(34,20,'tenetur',450138242,'Et dicta quam recusandae. Voluptatem laboriosam at iste suscipit. Et voluptates sequi quas hic corporis ea quo praesentium.'),(35,49,'vitae',784320,'Qui aut distinctio id placeat. Quod sapiente neque nam in aut et quisquam. Odio commodi non corporis maxime recusandae sint.'),(36,82,'vel',27723,'Hic quisquam voluptatum atque et esse qui necessitatibus voluptas. Aut impedit ad dicta ipsa nostrum natus.'),(37,83,'eius',9,'Voluptas rerum consequatur fugit blanditiis sed iste quibusdam. Aut necessitatibus et atque. Sit accusantium blanditiis animi.'),(38,36,'iusto',28729,'Sint sunt possimus eos cumque. Libero maiores enim corrupti qui provident quisquam a et. Quia qui distinctio eum voluptates asperiores dolores. Consequuntur impedit assumenda delectus corrupti illo iure nulla quam.'),(39,53,'quia',110815,'Perspiciatis sit veniam natus nesciunt. Quaerat sit dolor itaque impedit distinctio. Doloremque non minima assumenda asperiores sit. Unde totam perspiciatis quos repellat voluptatem voluptatum aut adipisci.'),(40,29,'nihil',53251,'Quos velit quaerat quaerat aperiam cupiditate. Nulla soluta molestias unde rem dolor vel optio. Vitae cupiditate molestias non debitis sunt molestias. Voluptatem sequi totam commodi nihil officiis.'),(41,20,'et',0,'Eligendi quisquam nesciunt nam natus adipisci modi cum nemo. Eius dignissimos excepturi rerum vitae laboriosam provident quas. Quod repellendus voluptatum ut in accusantium.'),(42,73,'possimus',95564160,'Voluptatem alias assumenda possimus autem delectus aliquid reiciendis qui. Sit qui itaque ducimus. Consectetur nemo dolor aut est ipsum doloremque.'),(43,8,'est',211848,'Velit iste ut nemo et eum tempore non. Maiores error sequi minus. Assumenda id quia cupiditate iusto ut laboriosam quia.'),(44,73,'molestias',3635,'Voluptas vitae aliquam ut ab ut amet. Velit quo aut dolorem eligendi dicta illo molestias. Eveniet aliquam id magni neque consequatur molestiae.'),(45,4,'et',8,'Eum libero in voluptate cumque blanditiis quam voluptatem dolorem. Inventore nostrum aliquid quisquam ullam qui quia. Qui dolorem quis ipsa tempora excepturi dolor. Sit quis illo animi.'),(46,36,'enim',22438138,'Eos id et veniam eos minima sit. Hic fuga dicta asperiores neque repellat. Ea aut dolor rerum quia natus dignissimos. Cumque numquam et facilis beatae quibusdam possimus.'),(47,64,'dignissimos',7498,'Fugiat eveniet odio reiciendis. Est qui in beatae. Dolor consequatur quis ut dolore quia nostrum. Temporibus at esse quia sed.'),(48,30,'et',494,'Delectus delectus enim molestias minima dolorem aut ut. Cumque eum sint eveniet. Sint beatae possimus exercitationem perferendis nemo ad qui. Minima ut nemo sed eos tenetur reprehenderit.'),(49,22,'nihil',3,'Nisi deserunt dolor deserunt. Qui natus suscipit ex quasi. Nulla iusto voluptatem ut aspernatur ut sed quisquam.'),(50,6,'sint',32729007,'Ad occaecati aperiam rerum quia dicta atque et. Natus maxime dolor reprehenderit a esse. Est iste sint eaque repudiandae perferendis omnis quis quia. Omnis dolorum totam autem ut quaerat temporibus tempora.'),(51,87,'voluptatem',0,'Tenetur non temporibus autem sed ex animi. Ratione quia eveniet consequatur nesciunt dolor voluptates provident. Incidunt dignissimos dolores eligendi illum nisi.'),(52,45,'possimus',274618,'Dolor nesciunt inventore minima. Molestiae asperiores sit et rem qui. Natus consequuntur autem eaque voluptas voluptatum laboriosam ut. Magni molestiae et quia sapiente ipsum.'),(53,53,'minus',19223,'Est voluptate sunt est quia velit. Aut optio quis facilis totam. Qui qui voluptatibus ut occaecati. Optio dolorem repellendus aut possimus quo.'),(54,43,'totam',16,'Voluptatem consequatur dolore vel voluptatem perferendis sed non. Quas tenetur nisi et velit ratione quia doloribus. Rem eum atque deleniti placeat architecto eius. Aut in ut voluptatem velit.'),(55,18,'quam',29,'Dolore eum aut sit. Animi et itaque repellendus eligendi quae est. Velit sit doloremque laudantium esse omnis qui. Earum commodi accusantium voluptatem ratione cupiditate veniam nam.'),(56,84,'ut',2448,'Quia eaque qui illo ipsam et in minima. Rerum numquam et velit. Praesentium nulla nihil corporis beatae alias. Soluta sit laboriosam iure ipsa quidem et porro sint.'),(57,23,'rerum',36344,'Minima assumenda ea deleniti minus rem magnam. Qui in voluptas repellendus voluptas. Impedit et maiores non voluptas qui.'),(58,85,'est',4277,'Ut similique eaque dolorem alias. Ad praesentium ea quas voluptatem nihil rem. Rem laborum autem repellendus perferendis doloremque nihil. Est qui quo qui voluptas corporis minima est est.'),(59,92,'vel',93279952,'Quisquam inventore exercitationem quia nesciunt consequuntur. Dolor unde illo qui et nesciunt incidunt illo. Dolores doloremque qui culpa odit ex omnis velit quis. Consequuntur aut nemo ipsum sequi voluptatum.'),(60,20,'velit',22,'Et sunt minima non iste velit. Odit est reprehenderit omnis minima saepe deserunt. Eos voluptate odit itaque sunt quia.'),(61,39,'ducimus',78,'Voluptate qui consequatur cum eligendi. Iusto sed dolores iure. Facere non sed ea dolorem facilis sit perferendis.'),(62,14,'nulla',112938992,'Ducimus eum ducimus laudantium quam magnam harum. Sint velit eos expedita eos. Eum rerum maxime eligendi.'),(63,21,'atque',36100287,'Qui quis sequi laudantium nisi. Et voluptas distinctio quaerat modi debitis numquam. Omnis veritatis et maxime quis.'),(64,30,'repellat',4939,'Porro qui voluptatem enim itaque nesciunt quibusdam. In magnam nihil nisi delectus sit sed sunt fugit. Nam dolores aut nulla provident beatae. In neque numquam sint molestiae.'),(65,89,'necessitatibus',99,'Ut autem praesentium est quaerat omnis. Officia illo molestiae aperiam officia rerum dolorum sequi provident. Accusamus et et et et animi explicabo doloribus.'),(66,27,'sapiente',43,'Corrupti dolorem quaerat porro. Neque iure adipisci enim maiores dolor et. Voluptates quisquam numquam soluta hic vero in. Quaerat a est nam laborum aut. Odit fugiat debitis animi minus voluptas.'),(67,75,'labore',25752,'Eaque consectetur vel dolor et aut. Sunt magnam sit ratione sunt exercitationem et. Mollitia est laboriosam unde rerum. Aut illum omnis sint minus.'),(68,20,'nostrum',12376656,'Quaerat nulla placeat aut aut magnam libero et. Excepturi sint magni explicabo porro. Quo enim et molestiae assumenda. Unde distinctio natus odit doloribus aut.'),(69,41,'quia',0,'Quam unde voluptas aspernatur enim minima et. Vero repellendus dolor veritatis vel nostrum. Officia laudantium nam ut sit. Deserunt accusamus molestiae ipsum.'),(70,13,'voluptatem',27439,'Qui minima ullam saepe sed. Necessitatibus autem nihil at illum impedit magnam repellat. Sit corrupti culpa reiciendis.'),(71,86,'est',1,'Dicta facere minus asperiores. Vel dolores perspiciatis qui quo impedit quidem. Illum quia soluta vero autem et sapiente doloribus laboriosam.'),(72,73,'sapiente',75433903,'Nihil quam ut iste repudiandae. Nemo delectus quia et aspernatur. Sit unde ullam facere dignissimos fugiat quia quod voluptas. Reiciendis voluptatem laboriosam ab ut in voluptatem.'),(73,96,'voluptatibus',722402,'Et earum quisquam magnam totam praesentium error sed. Molestiae ut illum voluptatum earum repellat ut ut qui. Ducimus dolore iure tenetur nobis omnis impedit eum et. Excepturi nesciunt ipsum iusto.'),(74,30,'qui',1282,'Animi eveniet veritatis perspiciatis non expedita officiis recusandae. Architecto enim est magnam quos eius. Nobis sunt aspernatur occaecati minus aliquam. Veniam aut id alias est tempore.'),(75,13,'et',2238,'Sed commodi in laudantium nihil. Quia in veniam et laudantium aut veniam doloremque. Quae sed voluptate perspiciatis quod est ipsam necessitatibus.'),(76,97,'placeat',9524218,'Qui fugit minus quis. Blanditiis omnis odit suscipit cupiditate blanditiis animi fuga. Architecto earum harum et. Voluptatem occaecati harum eos impedit ea quo officia eligendi.'),(77,39,'incidunt',246,'Sint sed vitae labore. Dolores eos ab quia. Labore repellat cupiditate molestiae pariatur distinctio.'),(78,98,'ut',59135,'Amet impedit praesentium quo. Possimus voluptas labore est a eaque ratione in. Deleniti perspiciatis cupiditate minus culpa enim. Quasi sequi necessitatibus et earum.'),(79,47,'deleniti',3613,'Id commodi harum minus ut aut. Nostrum aut quis saepe nulla. Vel ipsum voluptate consequatur cum accusamus ut neque.'),(80,17,'ducimus',416885,'Cum atque voluptatem dolore velit. Sint qui molestiae doloremque atque aut facilis magnam. Aspernatur architecto impedit explicabo consequatur fugit dolorem. Voluptatem aspernatur quis numquam consequatur assumenda vel.'),(81,20,'nihil',28623039,'Dignissimos et hic dolorem blanditiis quaerat omnis. Quo sint quisquam in et consequatur alias et. Ad fugiat minus exercitationem rerum.'),(82,55,'quibusdam',0,'Dignissimos repellat odit voluptatem consequatur et dolorem labore itaque. Qui autem tempore voluptatibus excepturi dolore. Eveniet qui sed dolor quae iste optio. Minima voluptas a quasi id voluptatem sed iusto.'),(83,16,'voluptas',509,'Sapiente minima voluptas soluta fuga sint dolor qui vitae. Quod quo voluptas suscipit eos. In ullam rerum assumenda est sapiente non reprehenderit. Est dolores sit nihil doloribus ut sunt.'),(84,12,'rerum',281,'Cupiditate ad assumenda libero eaque veniam eos. Vel ipsum corporis eveniet et. Soluta aut amet quasi ut quas. Et saepe voluptatem rerum odio.'),(85,5,'dolor',2753,'Omnis unde eius vero nemo. Eveniet eum tenetur voluptas reprehenderit. Ipsam ad quibusdam autem in. Omnis quaerat omnis voluptatem expedita excepturi.'),(86,64,'suscipit',139092,'Ut laborum earum blanditiis et modi vero dolorum. Perferendis et magni voluptas iure corporis ea architecto. Voluptas assumenda quisquam voluptates veniam. Eaque ea qui a.'),(87,31,'sit',1,'Quisquam saepe suscipit id sit qui vel eos. Nemo et dolor doloremque possimus. Soluta ut aut ipsam dolorem voluptatibus non.'),(88,20,'sed',313397,'Nulla totam voluptatem perspiciatis ullam libero. Autem occaecati harum eaque earum et similique placeat. Provident voluptate sed itaque omnis eos et similique.'),(89,64,'rerum',2086,'Aut consequatur ut vel velit iusto vel. Aliquam voluptatem et delectus rerum nulla. Sit quia sed est nihil corrupti qui.'),(90,4,'aut',0,'Ea officiis omnis sit exercitationem adipisci. Dolore voluptas et deleniti optio ea. Sit quisquam perferendis laborum placeat delectus.'),(91,93,'quia',129707,'Distinctio eligendi consequuntur enim quis. Harum autem facere consequuntur quis accusantium quis. Aut eveniet consequatur rerum voluptas at. Voluptatem omnis harum unde ut.'),(92,24,'temporibus',2986294,'Ullam voluptatibus fugiat odio atque minus. Non voluptatem et tenetur.'),(93,34,'tempora',65,'Illo accusantium explicabo ad iusto eum non. Voluptatem in illum corrupti et. Itaque voluptatem cupiditate doloribus consequatur alias numquam saepe et. Iste rerum voluptas aut minus aut unde qui.'),(94,93,'consequatur',4,'Aut atque quisquam omnis laboriosam in. Nobis qui et fugiat sit rerum ullam. Molestiae minima perspiciatis quia cumque ipsum omnis hic. Sit sit optio quis voluptatem similique. Fugit dolores ut in qui error omnis.'),(95,48,'hic',5144060,'Commodi voluptas ipsam ipsum nulla omnis officia consequatur. Molestiae consequatur dicta temporibus saepe similique. Autem aut velit iure veniam eos dolore.'),(96,75,'ut',12451500,'Eum architecto labore velit et illo sunt. Rerum id ducimus magni perferendis eius delectus qui quia. Et consequatur sunt soluta cumque soluta maiores quos.'),(97,92,'magnam',64,'Aut sint repellat beatae. Est facilis minima dolores omnis ut ut. Aut pariatur beatae ipsa optio voluptatem. Quibusdam et consequatur corrupti architecto ex. Aliquam molestiae est voluptas deleniti autem ex fuga atque.'),(98,25,'voluptates',2743801,'Sunt soluta eum qui mollitia. Autem expedita sunt ut. Consequatur excepturi molestias molestiae.'),(99,15,'eveniet',533154092,'Sunt nihil voluptatem voluptatem nihil beatae. Quae nemo et molestiae autem. Ratione earum consequatur libero aut doloremque perferendis deserunt.'),(100,18,'voluptas',7542,'Et sapiente sit sint et rerum. Deleniti est impedit qui aut non explicabo ratione qui.');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_profiles`
--

DROP TABLE IF EXISTS `hotel_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_profiles` (
  `hotel_profile_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  `house` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hotel_profile_id`),
  UNIQUE KEY `hotel_profile_id` (`hotel_profile_id`),
  CONSTRAINT `hotel_profiles_ibfk_1` FOREIGN KEY (`hotel_profile_id`) REFERENCES `hotels` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_profiles`
--

LOCK TABLES `hotel_profiles` WRITE;
/*!40000 ALTER TABLE `hotel_profiles` DISABLE KEYS */;
INSERT INTO `hotel_profiles` VALUES (1,'Kuhic Drives','3','garland91@example.com','1-079-616-8531'),(2,'Sanford Turnpike','3','aterry@example.org','00458629964'),(3,'D\'Amore Summit','2','dario99@example.org','904-019-7923x01203'),(4,'Myrna Station','2','erik.reynolds@example.org','(729)983-4692'),(5,'Lois Locks','2','alvena.padberg@example.org','825-612-6451'),(6,'Kristian Keys','5','wilderman.madelyn@example.com','353.666.8895x41107'),(7,'Stiedemann Locks','1','shane.larson@example.com','(591)085-9863x282'),(8,'Reymundo Divide','4','lexi29@example.com','(821)495-3646'),(9,'Aniya Avenue','7','aschmeler@example.net','06310934639'),(10,'Citlalli Stravenue','6','iheidenreich@example.net','898.973.5562'),(11,'Corkery Extension','5','hank97@example.org','1-883-522-6327x7066'),(12,'Carter Crossing','1','alf.hilpert@example.com','919.103.3237x439'),(13,'Karlee Pike','5','santos.paucek@example.com','1-234-275-8765x6904'),(14,'Itzel Lodge','5','mframi@example.org','973-839-8683x999'),(15,'Rita Ramp','6','gerald.wisoky@example.net','1-130-421-7209'),(16,'Leopoldo Trace','3','dkulas@example.com','519.892.1280x283'),(17,'Demarcus Ridge','','kihn.russell@example.org','1-266-371-5707'),(18,'Hudson Mountains','7','olson.ellis@example.com','(725)494-2483x634'),(19,'Marian Trafficway','9','ujast@example.org','+07(6)1329574933'),(20,'Cullen Haven','3','hmarks@example.com','04344789846'),(21,'Volkman Union','2','lavinia68@example.net','1-485-222-3049x34410'),(22,'Carroll Lane','9','marie.beer@example.org','619.767.1008'),(23,'Nader Shoals','4','ferry.estevan@example.org','361.242.8008'),(24,'Gabe Glen','7','lakin.miller@example.org','262-331-4857x351'),(25,'Bogisich Ports','4','olson.bella@example.com','114.144.9614'),(26,'Alize Isle','3','hartmann.walker@example.org','(776)683-0363x1050'),(27,'Block Common','','hschmitt@example.net','075-254-7789'),(28,'Jana Island','','leonie.lesch@example.net','1-854-354-9366x600'),(29,'Kris Run','8','daniel.hester@example.com','08367179654'),(30,'Hansen Court','2','mclaughlin.amanda@example.net','+63(4)3254900911'),(31,'Arthur Roads','2','vwyman@example.org','077-609-3109x06820'),(32,'Greenholt Pass','6','rledner@example.org','1-709-494-7764x5471'),(33,'Breana Burgs','7','myron89@example.org','1-107-712-6479'),(34,'Ralph Tunnel','6','king.petra@example.net','089-399-3836'),(35,'McKenzie Forges','8','ernser.frieda@example.org','253.168.1827x9857'),(36,'Cali Passage','7','chelsey97@example.org','(351)102-4950x514'),(37,'Simonis Corner','1','reina.schmitt@example.net','07499982146'),(38,'Clark Drive','7','hessel.crawford@example.net','1-544-048-7555x600'),(39,'Macejkovic Heights','2','kaycee79@example.org','385.480.2938x412'),(40,'Cole Way','','hauck.delphine@example.org','(904)429-4554x1523'),(41,'Howell Shoals','7','roselyn.rodriguez@example.org','+79(8)6949360198'),(42,'Kihn Land','9','bella.stamm@example.org','(777)490-0454'),(43,'McCullough Parks','5','nwilderman@example.net','01742784540'),(44,'Fritsch Stream','1','ggaylord@example.net','258-432-3267x31469'),(45,'Minerva Pine','1','zackery01@example.org','1-417-815-8943x1299'),(46,'Germaine Garden','9','qdach@example.com','740-627-6513'),(47,'Rasheed Plaza','','croob@example.com','(742)213-1116'),(48,'Schultz Views','','ashly.bayer@example.org','+96(1)6799481735'),(49,'Dibbert Trafficway','','isteuber@example.org','1-480-541-0943x189'),(50,'Prohaska Spring','','autumn60@example.com','858.518.9314'),(51,'Weimann Ramp','4','bode.hayley@example.net','02023574029'),(52,'Chandler Isle','2','nsanford@example.com','01387154962'),(53,'Fisher Roads','2','kelvin18@example.org','1-390-509-6474'),(54,'Kacey Points','8','bayer.issac@example.com','1-828-978-6570x8127'),(55,'Claude Fort','4','lucienne42@example.com','1-292-189-0314'),(56,'Jerde Course','','dkemmer@example.org','08020746989'),(57,'Sporer Freeway','4','ptremblay@example.net','849-904-1468'),(58,'Santiago Island','5','theathcote@example.net','762-492-7347x3558'),(59,'Monte Prairie','4','praynor@example.com','696.043.6485x269'),(60,'Hickle Parkways','4','cassandra.zboncak@example.org','832.149.7209'),(61,'Franz Shore','6','xbauch@example.org','07033455313'),(62,'Delta Loop','7','altenwerth.kasey@example.org','(506)126-6852x38068'),(63,'Cummerata Junctions','1','marcel.flatley@example.net','1-227-554-4178x102'),(64,'Treutel Avenue','','lhahn@example.net','04876046245'),(65,'Buckridge Center','9','bconroy@example.net','(437)930-1996x5928'),(66,'Heathcote Roads','5','chase.robel@example.org','(347)120-7458x8468'),(67,'Kiehn Plain','4','colten18@example.org','1-755-073-6027x6780'),(68,'Reynolds Turnpike','9','ghuel@example.net','052-369-8220x0582'),(69,'Lubowitz Plaza','6','rutherford.kari@example.net','03122335171'),(70,'Muller Junction','6','brown.deontae@example.org','056-222-1995'),(71,'Mohr Parkway','2','ianderson@example.net','1-435-914-9347'),(72,'Heller Shore','2','demarco92@example.org','1-752-696-5046x30385'),(73,'Tyreek Park','','richmond61@example.com','409-375-1042'),(74,'Gussie Place','9','orlando29@example.net','1-808-565-7918x30480'),(75,'Isidro Highway','8','pollich.wilburn@example.com','08373991319'),(76,'Sporer Villages','','srobel@example.org','1-082-102-2531'),(77,'Ondricka Forges','7','jacquelyn57@example.com','437.809.0827x901'),(78,'Rutherford Trail','2','bfay@example.com','(051)410-9380x3403'),(79,'Kasandra Land','4','zboncak.alfonzo@example.org','144.231.9023x0932'),(80,'Kim Locks','9','cremin.jaydon@example.org','1-699-623-1713x9576'),(81,'Macejkovic Circles','1','jennyfer.reichel@example.net','602-926-4258x49198'),(82,'Ledner Plaza','6','rowe.keely@example.com','196.785.4692x3620'),(83,'Christiana Brook','7','maggio.danielle@example.com','01253086812'),(84,'America Parkways','3','cherzog@example.net','05721792394'),(85,'Lempi Street','4','lynch.ashleigh@example.com','00148669565'),(86,'Armstrong Glen','9','marley94@example.org','562-883-9987'),(87,'Hudson Rapids','9','greenfelder.kattie@example.net','(965)747-1666x8891'),(88,'Rodriguez Unions','9','walsh.mallory@example.org','1-297-877-1688x51390'),(89,'Ila Burg','5','stroman.annamarie@example.net','(110)545-5967x673'),(90,'Lockman Hollow','2','twintheiser@example.net','366.082.7071'),(91,'Swaniawski Ways','','jaskolski.gilda@example.org','02330648169'),(92,'Kennith Hill','1','qadams@example.org','1-661-250-1826'),(93,'Elva Ways','5','reba71@example.com','457.765.1621x738'),(94,'Richie Plains','8','cara67@example.net','320-794-6147x46976'),(95,'Lauryn Point','4','golda.lockman@example.org','362-782-0475'),(96,'Quentin Street','4','cruickshank.elnora@example.net','+72(7)2509342418'),(97,'Helena Lodge','6','marcella26@example.net','546-687-3180'),(98,'Shanahan Island','6','moen.chanelle@example.org','03963136936'),(99,'Jacobi Neck','4','zfriesen@example.net','461.672.8628x61994'),(100,'Effertz Forest','','kacie03@example.net','(494)097-8785');
/*!40000 ALTER TABLE `hotel_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `hotel_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`),
  UNIQUE KEY `hotel_id` (`hotel_id`),
  KEY `hotel_id_2` (`hotel_id`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `countries` (`country_id`),
  CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `cities` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'in'),(2,'ut'),(3,'consequuntur'),(4,'quis'),(5,'omnis'),(6,'et'),(7,'qui'),(8,'ducimus'),(9,'provident'),(10,'vel'),(11,'voluptates'),(12,'illum'),(13,'sed'),(14,'eligendi'),(15,'debitis'),(16,'id'),(17,'iusto'),(18,'sint'),(19,'nemo'),(20,'numquam'),(21,'occaecati'),(22,'dolore'),(23,'et'),(24,'sit'),(25,'expedita'),(26,'voluptatem'),(27,'perferendis'),(28,'ab'),(29,'quae'),(30,'unde'),(31,'corrupti'),(32,'delectus'),(33,'delectus'),(34,'ut'),(35,'quis'),(36,'magnam'),(37,'sed'),(38,'fugit'),(39,'quia'),(40,'nostrum'),(41,'quod'),(42,'labore'),(43,'vero'),(44,'praesentium'),(45,'tempora'),(46,'earum'),(47,'cupiditate'),(48,'quasi'),(49,'eum'),(50,'enim'),(51,'porro'),(52,'temporibus'),(53,'molestiae'),(54,'magnam'),(55,'eos'),(56,'est'),(57,'magni'),(58,'voluptates'),(59,'voluptate'),(60,'deserunt'),(61,'eaque'),(62,'architecto'),(63,'rerum'),(64,'molestias'),(65,'et'),(66,'neque'),(67,'repellendus'),(68,'ipsa'),(69,'dolor'),(70,'sit'),(71,'vitae'),(72,'facere'),(73,'beatae'),(74,'inventore'),(75,'nemo'),(76,'eaque'),(77,'vitae'),(78,'impedit'),(79,'odio'),(80,'aperiam'),(81,'nihil'),(82,'cum'),(83,'odio'),(84,'aut'),(85,'vel'),(86,'commodi'),(87,'voluptates'),(88,'voluptatem'),(89,'id'),(90,'facere'),(91,'corrupti'),(92,'nulla'),(93,'beatae'),(94,'est'),(95,'molestias'),(96,'libero'),(97,'voluptate'),(98,'distinctio'),(99,'distinctio'),(100,'fugit');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `room_cost`
--

DROP TABLE IF EXISTS `room_cost`;
/*!50001 DROP VIEW IF EXISTS `room_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `room_cost` AS SELECT 
 1 AS `id`,
 1 AS `price`,
 1 AS `date_entry`,
 1 AS `date_departure`,
 1 AS `book_days`,
 1 AS `book_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `floor` int DEFAULT NULL,
  `seats` int unsigned NOT NULL,
  `type` enum('econom','suit','lux') DEFAULT NULL,
  `price` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hotel_profiles` (`hotel_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,5,6,'suit',13460064),(2,9,9,'lux',2662852),(3,6,5,'lux',594),(4,1,8,'suit',0),(5,1,8,'econom',31667644),(6,8,6,'suit',18071),(7,3,5,'econom',9977756),(8,4,8,'econom',18840750),(9,3,2,'suit',231585),(10,7,8,'lux',48410713),(11,7,2,'suit',51000423),(12,7,1,'econom',732),(13,6,9,'lux',5971316),(14,4,5,'econom',383261),(15,4,3,'suit',608),(16,5,1,'econom',0),(17,3,5,'lux',2),(18,6,5,'econom',0),(19,7,3,'econom',915713),(20,3,9,'lux',4724380),(21,3,3,'suit',28780979),(22,4,6,'econom',2859117),(23,6,6,'econom',134),(24,7,1,'econom',35),(25,8,5,'lux',0),(26,1,1,'lux',1357),(27,5,4,'suit',10583540),(28,3,5,'lux',2),(29,2,1,'lux',5954499),(30,6,5,'suit',0),(31,3,8,'econom',4995804),(32,8,1,'lux',7054486),(33,3,4,'suit',265),(34,8,4,'lux',0),(35,3,2,'lux',23),(36,1,2,'lux',47638660),(37,5,6,'econom',222760),(38,8,2,'econom',2),(39,6,4,'suit',1742),(40,2,8,'econom',126651),(41,6,1,'lux',6),(42,1,8,'lux',4267670),(43,6,1,'lux',987),(44,9,2,'econom',78766984),(45,7,7,'econom',19242),(46,7,2,'econom',17),(47,8,9,'econom',389346),(48,7,3,'econom',2678722),(49,2,8,'econom',28),(50,4,6,'lux',333859784),(51,2,2,'lux',733),(52,8,5,'econom',18179311),(53,5,4,'suit',48454321),(54,2,4,'lux',296107),(55,8,6,'suit',0),(56,8,1,'econom',60453),(57,8,3,'econom',279258),(58,4,7,'lux',0),(59,9,5,'econom',55724),(60,9,1,'econom',892681),(61,2,8,'suit',1),(62,9,1,'econom',56),(63,3,5,'suit',37726887),(64,1,1,'suit',9),(65,4,7,'lux',11172894),(66,3,9,'econom',294),(67,4,6,'suit',2),(68,5,3,'econom',231081301),(69,7,2,'lux',225),(70,7,4,'suit',58461264),(71,3,9,'suit',401468580),(72,4,1,'econom',135226448),(73,2,7,'econom',681629642),(74,2,9,'lux',37),(75,9,5,'econom',0),(76,8,1,'lux',556),(77,8,5,'econom',30692),(78,3,3,'econom',7202385),(79,2,8,'lux',4850),(80,4,8,'econom',901),(81,5,2,'suit',49),(82,1,5,'lux',0),(83,6,3,'suit',588),(84,2,1,'econom',0),(85,4,5,'econom',1957),(86,9,8,'suit',36719),(87,7,4,'lux',15),(88,3,6,'econom',696),(89,1,3,'econom',77159),(90,3,4,'econom',154484),(91,5,8,'lux',2693076),(92,5,4,'lux',99392),(93,2,3,'econom',79048),(94,4,8,'econom',18779),(95,1,1,'suit',1089503),(96,2,5,'lux',4),(97,1,8,'lux',28),(98,8,5,'suit',326),(99,4,8,'suit',5),(100,7,5,'suit',1431081);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `uniq_room`
--

DROP TABLE IF EXISTS `uniq_room`;
/*!50001 DROP VIEW IF EXISTS `uniq_room`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `uniq_room` AS SELECT 
 1 AS `room_id`,
 1 AS `count(room_id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,'1999-04-30','f','bury'),(2,'2015-07-03',' m','town'),(3,'1971-09-18','f','land'),(4,'2007-12-14','f','port'),(5,'1987-10-12','f','fort'),(6,'1972-07-03',' m','mouth'),(7,'1994-10-20',' m','mouth'),(8,'2001-08-11',' m','ton'),(9,'1989-07-05',' m','side'),(10,'2005-12-31','f','mouth'),(11,'2008-12-11','f','port'),(12,'2007-07-13','f','chester'),(13,'1992-02-08','f','view'),(14,'2018-02-08','f','mouth'),(15,'1989-02-20','f','haven'),(16,'1992-03-21',' m','side'),(17,'1994-08-17',' m','berg'),(18,'2005-02-20',' m','haven'),(19,'1995-02-04','f','mouth'),(20,'2017-07-16','f','view'),(21,'2005-09-14',' m','furt'),(22,'1985-05-23',' m','mouth'),(23,'1998-12-04','f','bury'),(24,'1998-07-10',' m','mouth'),(25,'1989-05-28',' m','chester'),(26,'2020-05-08',' m','furt'),(27,'2015-01-23',' m','ville'),(28,'2001-06-11',' m','side'),(29,'1974-01-09','f','bury'),(30,'1991-11-03',' m','fort'),(31,'2005-03-28',' m','mouth'),(32,'2003-09-23','f','shire'),(33,'2008-07-24',' m','ton'),(34,'1978-07-30',' m','view'),(35,'2001-04-06',' m','view'),(36,'1988-06-12','f','stad'),(37,'1989-01-01',' m','port'),(38,'1998-05-08',' m','mouth'),(39,'1990-07-08',' m','ton'),(40,'1986-02-19',' m','town'),(41,'1988-04-02',' m','furt'),(42,'2009-03-31',' m','view'),(43,'2007-01-06',' m','burgh'),(44,'1985-03-10','f','shire'),(45,'2003-03-19','f','bury'),(46,'2006-02-18','f','side'),(47,'1995-04-25','f','chester'),(48,'1987-12-02',' m','town'),(49,'1974-01-28','f','fort'),(50,'1994-01-29','f','view'),(51,'1984-05-29','f','furt'),(52,'1980-04-15','f','furt'),(53,'1971-09-01',' m','port'),(54,'1974-01-26','f','furt'),(55,'2002-12-17',' m','chester'),(56,'2009-08-08','f','borough'),(57,'1989-12-10','f','bury'),(58,'2007-09-23',' m','mouth'),(59,'1974-11-18','f','furt'),(60,'1977-12-06',' m','furt'),(61,'1971-11-24',' m','borough'),(62,'2006-07-18',' m','fort'),(63,'1988-01-21','f','stad'),(64,'1976-06-15',' m','chester'),(65,'2019-12-04',' m','haven'),(66,'1986-08-07',' m','view'),(67,'1994-06-25',' m','mouth'),(68,'1995-02-02',' m','side'),(69,'2001-04-26',' m','furt'),(70,'2007-04-14',' m','mouth'),(71,'1977-08-04',' m','side'),(72,'1986-08-22','f','berg'),(73,'2018-12-02',' m','borough'),(74,'1980-09-16','f','side'),(75,'2014-10-25','f','side'),(76,'1973-05-26',' m','mouth'),(77,'1975-10-10','f','shire'),(78,'2006-06-10','f','chester'),(79,'1976-09-18','f','port'),(80,'2007-10-21','f','ville'),(81,'2013-01-15',' m','bury'),(82,'1975-03-05',' m','ville'),(83,'2015-01-22',' m','port'),(84,'2010-12-05',' m','chester'),(85,'2001-04-06','f','mouth'),(86,'1991-11-04',' m','land'),(87,'1990-05-13',' m','berg'),(88,'2010-06-17','f','ton'),(89,'1975-04-09','f','port'),(90,'2006-06-21','f','ville'),(91,'2019-04-09','f','furt'),(92,'1971-01-22','f','port'),(93,'1972-12-23',' m','shire'),(94,'1981-12-21','f','side'),(95,'1976-07-29','f','ville'),(96,'2002-11-02',' m','borough'),(97,'1987-09-18','f','bury'),(98,'1999-05-17',' m','berg'),(99,'2007-04-19',' m','land'),(100,'1987-02-27',' m','stad'),(101,'2007-12-15','f','port'),(106,'1999-10-10','m','Moscow'),(120,'2020-09-18','f','port');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_user_age_before_update` BEFORE UPDATE ON `user_profiles` FOR EACH ROW begin
    IF NEW.birthday >= CURRENT_DATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Update Canceled. Birthday must be in the past!';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `firstname` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lennie','Daniel','pspencer@example.com','(949)693-3380x095','1efb6e23f630939e2b315e21a42e1aa92cbaa60b'),(2,'Tyshawn','Rice','wfarrell@example.org','571-927-3177','b23bebb33fe69ca874bdbfa1d6e38b9077e12ba3'),(3,'Ocie','Medhurst','erick.renner@example.com','814.478.2149x421','99103e3462143f27eb442ea5bfaff24795a0f8fb'),(4,'Jayne','Zulauf','gleffler@example.net','1-199-990-5697x7728','b091cb56f928ec1df65439c246bdff4b93783f91'),(5,'Blaze','Dibbert','ilene85@example.net','(892)747-2728x35174','61659a8a325883d713c091e549322cc22f371faf'),(6,'Aurore','Cartwright','abagail49@example.net','1-994-655-4444x130','ff4b5247844ee780f341bb45c77aa572e81fd781'),(7,'Nellie','Hoppe','will.andreane@example.net','1-821-068-5649','481dbee538ddea65c0a197361d86ad53e776bff2'),(8,'Morris','Bechtelar','olaf76@example.com','900.707.7868x8224','34f257f962bdbe323019af92ce6d9dab5bf18e98'),(9,'Cristina','Reichel','eliezer47@example.com','159-890-3035x51896','d0cf223e1061079b43b9c3690c939339cb030557'),(10,'Claudine','Muller','elenor.wehner@example.net','375.859.3625','6537fcd23891a1addec11e88614c74247d3ebaa4'),(11,'Melvin','Little','afisher@example.net','1-139-926-7033x081','2991df84118f3f3b2b6e172adebe32f660e1be8b'),(12,'Therese','Gaylord','erice@example.org','795.077.3005x78644','2095bcce658b0f2e8d155fc4526158584d321fa3'),(13,'Rhea','Champlin','cparisian@example.net','083-743-7944','6010f6091595772f506f221cbfb89a1516f50677'),(14,'Jaquelin','Gusikowski','hconroy@example.org','1-975-761-6796x65566','b846d73302a35638ddcc8def6e3aa945c8e3471b'),(15,'Rosina','Ernser','leilani88@example.org','(706)717-5111','4a723ff2e6901db457050a1fa5fc86061965559a'),(16,'Aurore','Jacobs','franecki.tia@example.com','990.992.9490x5557','7eff4d3906e34ee7e96124c7baefea3716159877'),(17,'Cristina','Ryan','veum.jennie@example.com','1-289-391-4794x329','71a3fb98b89149bf3cb81bb2db3c0a847db82f5b'),(18,'Hobart','Harris','plabadie@example.com','1-518-129-0036','0856d3c49e96dd7a8d0740d84a3a78373bb286b5'),(19,'Clementine','Schoen','phoebe10@example.com','602-284-0448x401','535f8a3e252d3c765f2f084c15552d5329002154'),(20,'Missouri','Bergstrom','dimitri73@example.net','05947154040','71ff916c6a090f6d09c70ba6d9a01d6869fcb8f4'),(21,'Sonny','Durgan','padberg.pascale@example.net','09286577588','2480ac018738dcdc13cda786269ae7984f67cb6b'),(22,'Easton','Fisher','therese96@example.com','467.278.2982','4e6692c2ee0d763d606683da5c68fe6efc96f21d'),(23,'Elisabeth','Gulgowski','swaniawski.brycen@example.net','1-257-225-5039','d5fe4b2f961b419d53e3c9009e77a4414b6ec09c'),(24,'Christine','Bauch','mallory69@example.com','066.348.8106x34025','97bde5c2694a1707c23721a9e6a2ca116c90e2a0'),(25,'Liliana','Ernser','o\'reilly.alf@example.net','116.510.6666','8933bd649bd7e62272491cb77c6850949e539548'),(26,'Gaylord','Wilkinson','nestor.bechtelar@example.net','466-789-9217x19471','57c06ddadf8dfe8c718fcbef0f76b84219f94757'),(27,'Julius','Ebert','kling.kraig@example.org','058.813.2856x6110','332ce5824238607fe879c835ea8935f6c125a13e'),(28,'Dagmar','Dickens','beatty.adan@example.com','529.217.7466x7381','c08fe4bb1760256d4d0718a3274ced544f76b054'),(29,'Lorena','Pagac','ukoelpin@example.com','(176)978-3959','6270146d6c4b7ddd0cf2fb104006acead5864ea7'),(30,'Randy','Baumbach','olueilwitz@example.net','1-987-656-1706x75648','b1f4e79cfef1416a8a630eb13cd63baf020ad7f8'),(31,'Magali','Mertz','yo\'keefe@example.org','160-782-0461x985','36df9ba40f083984a03bf30284971e5640ec8b09'),(32,'Lilian','Konopelski','colin06@example.com','588.476.7486x038','7196d782bab6a84f217ad0742ad730b6e0ebe365'),(33,'Lesly','Reynolds','pmurazik@example.com','868.808.3768x5853','1967017af2c99b91b51f22a73f277502b0246e9e'),(34,'Vidal','Padberg','barton20@example.org','133-935-5347x772','2ff36613b117ada4ee04a4d626b7c45639c3ea6a'),(35,'Alfred','Shanahan','rowe.tina@example.org','09560746454','6dae0f87adb168fc146bd846638e6130c2b46a44'),(36,'Madalyn','Hermann','jaylen.larson@example.org','084.224.9977','449b5378e5e5f26c533d16218d66165359284458'),(37,'Stefan','Smith','hermina85@example.com','619-660-6298x31654','8b50700674aa3aa595bcb76cf9897739b035fc6c'),(38,'Verlie','Kshlerin','chasity78@example.org','+17(5)3988078643','c43d83e0ba2e15cda0f2ad4fe311e32874a5ea0f'),(39,'Berry','Ebert','kutch.porter@example.com','(370)367-1748x002','fd3e83401d505345e08aee289895e5ac092143d7'),(40,'Tyrel','Weber','leffler.tia@example.net','259.915.7613x40980','fbfc21f7db74103443885af5dff5e7003070b702'),(41,'Ethyl','Collier','rosamond.lemke@example.com','738.831.8580','59b40d95ac12cea2ed228e1c447870b9e0311df1'),(42,'Okey','Schamberger','sigrid57@example.com','562-498-8160','950e1ac410fda05b44541f401c94a99851488c2d'),(43,'Virginia','Cruickshank','terrance21@example.org','897-126-0305x249','75df1419d0f5554bce01e9953095f1a0288daaa0'),(44,'Golda','Beahan','adelle.ferry@example.net','1-824-488-4323x7205','58d1f668c646b4e85fb99b3c5214237c56f504d9'),(45,'Chelsea','Cummerata','kilback.moises@example.net','(522)310-1911x2259','063cba435a8139e35d0490973e453c853affab42'),(46,'Lucile','Bashirian','ybashirian@example.org','295.133.2539x4593','a50b4f0e4596eaa0a2348d1d2c4a447bfbf112a1'),(47,'Trisha','Toy','hills.alexa@example.com','02406637583','f67260f4469304e749633f975adf5a0d1ae535f9'),(48,'Ludie','McClure','malika98@example.net','360.548.0570x99447','215bd282d6aaaf37741b75b7a1e8b07b5cd021e3'),(49,'Nola','Connelly','simone.abshire@example.org','664-887-6143','ce0f59f2dd389963f4d33bde2279cb6cfa814d8a'),(50,'Bert','Wunsch','nyasia99@example.org','1-946-273-9860x0251','f1b0c3ecf5c83b25941a8c350eea7768207a6065'),(51,'Maggie','Schuppe','mmann@example.net','(691)887-5698','09651d5cfa543b9d66f0de66ebea79175bbb4a23'),(52,'Gwen','Price','wade.zulauf@example.net','(688)603-8426x282','9aefd66fb573e07887ed437f69c9671b1abe0f58'),(53,'Delbert','Baumbach','kreiger.america@example.org','1-810-576-1289x978','96088aac43d6bbef1f2e4420c5c653587264f04c'),(54,'Pearl','Williamson','rosanna44@example.com','706-453-1083x0505','f9f103259c1b35129a6ccfcfc22eb03e772451c6'),(55,'Ludie','Bayer','fwisozk@example.com','05769491575','7d6b954b6ca7027e506f64959a1d0953dd8caff8'),(56,'Lavon','Schultz','sbartell@example.com','(851)667-7361x19066','2b3d0c45405dfc5ce1dd3967e15151fffa2c0287'),(57,'Zackery','Jakubowski','king.barrows@example.com','527.412.9143','2603c7b2dd0e4d7141cc1cc1447a7d632be3acf2'),(58,'Ronny','Welch','boyd.funk@example.com','885-723-6839x7511','83f4b868be4786d5e93585fbdcca5797f351ec61'),(59,'Ben','Hodkiewicz','stroman.kelley@example.net','(959)251-1537x53259','79196c5a1594d40cfba047d6060d08c46b9f5356'),(60,'Leif','Dicki','xrutherford@example.net','472-655-4191x200','49d76b194e7c2177a7cc06fdd1caca1c5d94b978'),(61,'Elmer','Towne','upton.virginia@example.org','743.025.9750','99bc8545d083798df6160bd99a5abd8129c5aa96'),(62,'Nettie','Hodkiewicz','luigi94@example.org','704.344.3415','275ea5280ac49423648306a62754fd08ba7dc986'),(63,'Hazle','Balistreri','haag.clare@example.net','341.025.0194x629','ac3e40f49924024969133c1e149ee1365f32e7c5'),(64,'Aurelie','Dooley','kameron.lindgren@example.org','+51(0)0730469603','c6d3c435040341506ececa58065e8b9198e7b943'),(65,'Briana','Thiel','kara.heidenreich@example.net','1-123-050-4109','8b6a6b864fb24faf820bf2f12bbbd03d38f9fdb6'),(66,'Elmira','Boyle','bsenger@example.com','(953)945-5686x6958','ba31593d28e86e226b1f9b39fa562380927b0610'),(67,'Jordane','Fahey','stiedemann.stephanie@example.net','+82(9)3688383734','d2c468cb1e6223ebb666d4a92109d295d7084e64'),(68,'Yvette','Armstrong','cruickshank.rhoda@example.com','890-944-1811x520','504d13a95e41a220a020d4d20833da52fb282149'),(69,'Wilson','Raynor','hessel.kavon@example.net','1-199-738-7349','eb15fb441febaf2898437261eb7dbc27c48f293c'),(70,'Amaya','Cormier','green.claud@example.org','323.294.8805x98671','e84951a7745fb0bd678d10cccb6dd87e26b4a5fc'),(71,'Noemie','Kuhn','ebins@example.com','1-744-928-9911x41862','6d1a224e3184130fdb99ed716a4158f937e77653'),(72,'Kole','Bergstrom','kallie.fritsch@example.com','371-738-1328x882','63659f5e5c7bedd2ec9c54397ea40fa0f26ee64b'),(73,'Mathilde','Wintheiser','ptorphy@example.org','1-585-736-4216x5232','4fb7394fba09972f9d6cbc09160f7c365ed1fe2e'),(74,'Gaetano','Lang','hane.javon@example.net','603.282.0509','8d4fb567de124c82b5b8ca747e32aa6f9d290ae4'),(75,'Kaylie','Lind','iaufderhar@example.net','1-514-088-9694x1614','a8e87f5b615e74c2513245d26f07ce182b7fdf37'),(76,'Mario','Langworth','hoppe.brant@example.net','846.308.6390x29954','b873871510b4632f6d364cbc7c7539dd003b3fac'),(77,'Bria','Hartmann','blabadie@example.net','496-223-6378x874','019145e802983fab2fc84704d0c44775b1657a49'),(78,'Jeanne','Leuschke','lspencer@example.net','1-679-918-0951','35f5bba2285c77aaa75034d48d2e645cd8436401'),(79,'Mabel','VonRueden','clare.streich@example.net','08657755120','48a3f26f36200d6ac1336d6def1628ce11d6df65'),(80,'Wade','Veum','maxwell08@example.net','549.552.5852','2ecc86f37dd9795f53857c948c1e9c578cd938d0'),(81,'Jacinthe','Balistreri','alessandra.smitham@example.com','177.758.0756x71731','63c2ee4e25821bf266eb58a735df8f21aeae3d1f'),(82,'Benedict','Nicolas','jeramy67@example.com','1-467-685-1816x669','d8e56727353e0bdaed4f8a4772ba03e0d39d373f'),(83,'General','Sporer','schumm.colleen@example.com','1-727-908-0039x343','53348bc826c0f56a6329fa5857c942b042da199c'),(84,'Valerie','Brekke','lela.fay@example.org','587.255.9959x996','3c2162ea34efdf699838c31dc245657af4af4dca'),(85,'Kane','Little','bins.cristal@example.net','002-714-9893','9f750666c26d2487980a3349bd0307eaee2e4b59'),(86,'Heber','Hickle','kaitlyn.white@example.net','08555201050','5ad6d32625ae4e4dbd19148b20e1474bf203b5bd'),(87,'Rasheed','Kuhlman','ilind@example.com','883.786.7366x55078','c502cd6e9a9905e8552c974a6cfe9b371aa29718'),(88,'Kali','Farrell','ludie51@example.com','(139)049-3014','ea16a38a4bdf77139b58c9d605743afca1714bd1'),(89,'Dejuan','Stark','zachery.hermiston@example.com','(188)807-4729x78983','05905dcce7a6699c8f3325b2b1ade44ea209ce9b'),(90,'Norma','Hermiston','lamont89@example.org','(851)074-0816','d1cf13ce5309613a1151aac02ed8aa1b3fa55e5e'),(91,'Julien','Renner','harber.destiney@example.org','(046)376-8055x680','aa33c3a9f503305dcb98e202a7c4f577686e5dbb'),(92,'Robb','Rempel','luciano26@example.com','00273602343','173e4c23cbfab9a715c2e475bdb12639dc174292'),(93,'Diamond','Schuppe','dshields@example.com','(376)045-2232x481','80e18c3c255ebfc46c04747fa4ec8324c05118ad'),(94,'Howell','Collins','dahlia.o\'keefe@example.net','1-159-077-3693x009','16cc0d54e994ab7ce861148f3a9720cbb1c845cd'),(95,'Genoveva','Hansen','holden07@example.org','(732)180-0051','812353cea6186deef40b41a264cf666c2ca0017a'),(96,'Erwin','Walker','jerel.veum@example.org','542-906-0719','279774fdc05bf475c6b69bed7d9b0e3fe1c88d8c'),(97,'Alexander','Schuppe','dietrich.okey@example.com','794.107.3096x918','b7efc773831ff8e9e2732b00da0745ac6268ccd3'),(98,'Rosalinda','Koepp','west.aileen@example.net','1-380-947-3737','47984e8a57cd9d8d97d0f2e5d71bd92f0730fcc9'),(99,'Olen','Wilderman','theresia.pagac@example.org','1-167-617-5601x30531','8d94bb0c5f402b35e4c31dfdad2b5b252795219d'),(100,'Amina','Schuppe','blanca.west@example.org','540.747.4177x3773','bd4686c41783897e1ca37e488c8b55daad4504d0'),(101,'Missoury','Dergstrom','dimitri72@example.net','05947154099','71ff916c6a090f6d09c70ba6d9a01d6869fcb8f4'),(102,'New','User','new@mail.com','454545456',NULL),(105,'New','User','new7@mail.com','454545456',NULL),(106,'New','User','new6@mail.com','454545456',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `room_cost`
--

/*!50001 DROP VIEW IF EXISTS `room_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `room_cost` AS select `rooms`.`id` AS `id`,`rooms`.`price` AS `price`,`book`.`date_entry` AS `date_entry`,`book`.`date_departure` AS `date_departure`,(to_days(`book`.`date_departure`) - to_days(`book`.`date_entry`)) AS `book_days`,(`rooms`.`price` * abs((to_days(`book`.`date_departure`) - to_days(`book`.`date_entry`)))) AS `book_cost` from (`rooms` join `book` on((`book`.`room_id` = `rooms`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uniq_room`
--

/*!50001 DROP VIEW IF EXISTS `uniq_room`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uniq_room` AS select `book`.`room_id` AS `room_id`,count(`book`.`room_id`) AS `count(room_id)` from `book` group by `book`.`room_id` order by `count(room_id)` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-24 19:00:02
