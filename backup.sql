-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: B_S_development
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actresses`
--

DROP TABLE IF EXISTS `actresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_path_file_name` varchar(255) DEFAULT NULL,
  `image_path_content_type` varchar(255) DEFAULT NULL,
  `image_path_file_size` int(11) DEFAULT NULL,
  `image_path_updated_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actresses`
--

LOCK TABLES `actresses` WRITE;
/*!40000 ALTER TABLE `actresses` DISABLE KEYS */;
INSERT INTO `actresses` VALUES (1,'Aishwarya','Rai','2017-09-16 21:35:47','2017-10-19 22:08:12','Aishwarya.jpg','image/jpeg',56960,'2017-10-19 22:08:12',NULL),(2,'Anushka','Sharma','2017-09-16 21:39:15','2017-10-19 22:08:01','Anushka.jpg','image/jpeg',38067,'2017-10-19 22:08:01',NULL),(3,'Katrina','Kaif','2017-09-16 22:10:00','2017-10-29 23:03:51','Katrina.jpg','image/jpeg',62778,'2017-10-29 23:03:51',NULL),(4,'Manisha','Koirala','2017-09-21 23:06:47','2017-10-19 22:07:36','Manisha.jpg','image/jpeg',28106,'2017-10-19 22:07:36',NULL),(7,'illeana','De Cruz','2017-09-23 21:18:03','2017-10-19 22:07:21','Illeana.jpg','image/jpeg',56060,'2017-10-19 22:07:21',NULL),(8,'Deepika','Padukone','2017-10-06 02:05:27','2017-10-19 22:07:10','Deepika.jpg','image/jpeg',49802,'2017-10-19 22:07:10',NULL),(9,'Kajal','Agarwal','2017-10-14 11:58:50','2017-10-19 22:06:58','Kajal.jpg','image/jpeg',760918,'2017-10-19 22:06:58',NULL),(10,'Riya','Sen','2017-10-16 02:06:14','2017-10-19 22:04:50','Riya.jpg','image/jpeg',41263,'2017-10-19 22:04:50',NULL),(20,'Divya','Dutta','2017-10-19 22:03:12','2017-10-19 22:03:12','Divya.jpeg','image/jpeg',15320,'2017-10-19 22:03:12',NULL),(21,'Kajol','Mukherjee','2017-10-19 22:03:35','2017-10-19 22:03:35','Kajol.jpg','image/jpeg',41272,'2017-10-19 22:03:35',NULL),(22,'Kareena','Kapoor','2017-10-22 01:48:31','2017-10-22 01:48:31','Kareena.jpg','image/jpeg',73311,'2017-10-22 01:48:31',NULL),(23,'Karishma ','Kapoor','2017-10-22 01:48:48','2017-10-22 01:49:09','Karishma.jpg','image/jpeg',47246,'2017-10-22 01:49:09',NULL),(24,'Aditi','Rao','2017-10-22 01:49:31','2017-10-22 01:49:31','Aditi_R.jpeg','image/jpeg',100934,'2017-10-22 01:49:31',NULL),(25,'Alia','Bhatt','2017-10-22 01:49:44','2017-10-22 01:49:44','Alia.jpg','image/jpeg',49192,'2017-10-22 01:49:44',NULL),(26,'Amisha','Patel','2017-10-22 01:49:58','2017-10-22 01:49:58','amisha.jpg','image/jpeg',17592,'2017-10-22 01:49:58',NULL),(27,'Asin','Thottumkal','2017-10-22 01:50:21','2017-10-29 22:41:31','Asin.jpg','image/jpeg',42493,'2017-10-29 22:41:31',NULL),(28,'Ayesha','Takia','2017-10-22 01:50:33','2017-10-22 01:50:33','Ayesha.jpg','image/jpeg',86419,'2017-10-22 01:50:33',NULL),(29,'Diya','Mirza','2017-10-22 01:50:52','2017-10-22 01:50:52','Diya.jpg','image/jpeg',53147,'2017-10-22 01:50:52',NULL),(30,'Jacqualine','Farnandes','2017-10-22 01:51:06','2017-10-22 01:51:06','Jacqualine.jpg','image/jpeg',98550,'2017-10-22 01:51:06',NULL),(31,'Kangna','Renault','2017-10-22 01:51:21','2017-10-22 01:51:21','Kangna.jpg','image/jpeg',76446,'2017-10-22 01:51:21',NULL),(32,'Lara','Dutta','2017-10-22 01:51:39','2017-10-22 01:51:39','Lara.jpg','image/jpeg',37221,'2017-10-22 01:51:39',NULL),(33,'Madhuri','Dixit','2017-10-22 01:51:53','2017-10-22 01:51:53','Madhuri.jpg','image/jpeg',69279,'2017-10-22 01:51:53',NULL),(34,'Nargis','Fakhri','2017-10-22 01:52:14','2017-10-22 01:52:14','Nargis.jpg','image/jpeg',22978,'2017-10-22 01:52:14',NULL),(35,'Parineeti','Chopra','2017-10-22 01:52:32','2017-10-22 01:52:32','Parineeti.jpg','image/jpeg',45269,'2017-10-22 01:52:32',NULL),(36,'Preeti','Jhangiani','2017-10-22 01:52:46','2017-10-22 01:52:46','Preeti_J.jpg','image/jpeg',60696,'2017-10-22 01:52:46',NULL),(37,'Preity','Zinta','2017-10-22 01:53:02','2017-10-22 01:53:02','Preeti_Z.jpg','image/jpeg',154732,'2017-10-22 01:53:02',NULL),(38,'Priyanka','Chopra','2017-10-22 01:53:18','2017-10-22 01:53:18','Priyanka.jpg','image/jpeg',421265,'2017-10-22 01:53:18',NULL),(39,'Rani','Mukherjee','2017-10-22 01:53:35','2017-10-22 01:53:35','Rani.jpg','image/jpeg',55089,'2017-10-22 01:53:35',NULL),(40,'Sara','Khan','2017-10-22 01:53:52','2017-10-22 01:53:52','Sara.jpg','image/jpeg',37241,'2017-10-22 01:53:52',NULL),(41,'Sara','Loren','2017-10-22 01:54:04','2017-10-22 01:54:04','Sara_L.jpg','image/jpeg',45040,'2017-10-22 01:54:04',NULL),(42,'Shilpa','Shetty','2017-10-22 01:54:17','2017-10-22 01:54:17','Shilpa.jpeg','image/jpeg',40752,'2017-10-22 01:54:17',NULL),(43,'Shraddha','Kapoor','2017-10-22 01:54:30','2017-10-22 01:54:30','Shraddha.jpg','image/jpeg',62624,'2017-10-22 01:54:30',NULL),(44,'Sushmita','Sen','2017-10-22 01:54:48','2017-10-22 01:54:48','Sishmita.jpg','image/jpeg',81217,'2017-10-22 01:54:48',NULL),(45,'Sonakshi','Sinha','2017-10-22 01:55:03','2017-10-22 01:55:03','Sonakshi.jpg','image/jpeg',99569,'2017-10-22 01:55:03',NULL),(46,'Sonali','Bendre','2017-10-22 01:55:15','2017-10-22 01:55:15','Sonali.jpg','image/jpeg',136283,'2017-10-22 01:55:15',NULL),(47,'Sonam','Kapoor','2017-10-22 01:55:28','2017-10-22 01:55:28','Sonam.jpg','image/jpeg',568622,'2017-10-22 01:55:28',NULL),(48,'Sunny','Leone','2017-10-22 01:55:42','2017-10-22 01:55:42','Sunny.jpg','image/jpeg',26004,'2017-10-22 01:55:42',NULL),(49,'Tapsee','Pannu','2017-10-22 01:55:55','2017-10-22 01:55:55','Taapsee.jpg','image/jpeg',28424,'2017-10-22 01:55:55',NULL),(50,'Vidya','Balan','2017-10-22 01:56:07','2017-10-22 01:56:07','Vidya.jpg','image/jpeg',115373,'2017-10-22 01:56:07',NULL),(51,'Amrita','Arora','2017-10-29 22:29:43','2017-10-29 22:29:43','Amrita_Arora.jpg','image/jpeg',41147,'2017-10-29 22:29:43',NULL),(52,'Amrita','Rao','2017-10-29 22:30:57','2017-10-29 22:30:57','Amrita_Rao.jpg','image/jpeg',88798,'2017-10-29 22:30:57',NULL),(53,'Amyra','Dastoor','2017-10-29 22:32:01','2017-10-29 22:32:01','Amyra_Dastoor.jpg','image/jpeg',113901,'2017-10-29 22:32:01',NULL),(54,'Amy','Jackson','2017-10-29 22:33:26','2017-10-29 22:33:26','Amy_J.jpg','image/jpeg',63957,'2017-10-29 22:33:26',NULL),(55,'Anita','Hassandani','2017-10-29 22:35:20','2017-10-29 22:35:20','Anita_H.jpg','image/jpeg',29836,'2017-10-29 22:35:20',NULL),(56,'Anjana ','Sukhani','2017-10-29 22:36:57','2017-10-29 22:36:57','Anjana_S.jpg','image/jpeg',85808,'2017-10-29 22:36:57',NULL),(57,'Antra','Mali','2017-10-29 22:38:36','2017-10-29 22:38:36','Antra_M.jpg','image/jpeg',29418,'2017-10-29 22:38:36',NULL),(58,'Anu','Agarwar','2017-10-29 22:38:49','2017-10-29 22:38:49','Anu_A.jpg','image/jpeg',26859,'2017-10-29 22:38:49',NULL),(59,'Aruna','Shields','2017-10-29 22:40:52','2017-10-29 22:40:52','Aruna_S.jpg','image/jpeg',29428,'2017-10-29 22:40:52',NULL),(60,'Bhoomika','Chawla','2017-10-29 22:43:37','2017-10-29 22:43:37','Bhoomika.jpg','image/jpeg',259236,'2017-10-29 22:43:37',NULL),(61,'Bipasha','Basu','2017-10-29 22:43:50','2017-10-29 22:43:50','Bipasha.jpg','image/jpeg',52582,'2017-10-29 22:43:50',NULL),(62,'Celina','Jaitley','2017-10-29 22:45:10','2017-10-29 22:45:10','Celina.jpg','image/jpeg',116742,'2017-10-29 22:45:10',NULL),(63,'Chitrangada','Singh','2017-10-29 22:46:20','2017-10-29 22:46:20','Chitrangada.jpg','image/jpeg',80687,'2017-10-29 22:46:20',NULL),(64,'Deepti','Bhatnagar','2017-10-29 22:48:09','2017-10-29 22:48:09','Deepti_B.jpg','image/jpeg',33734,'2017-10-29 22:48:09',NULL),(65,'Dimple','Kapadia','2017-10-29 22:51:10','2017-10-29 22:51:10','Dimple_K.jpg','image/jpeg',26468,'2017-10-29 22:51:10',NULL),(66,'Esha','Deol','2017-10-29 22:52:26','2017-10-29 22:52:26','Esha_D.jpg','image/jpeg',51196,'2017-10-29 22:52:26',NULL),(67,'Esha','Gupta','2017-10-29 22:53:22','2017-10-29 22:53:22','Esha_G.jpg','image/jpeg',61267,'2017-10-29 22:53:22',NULL),(68,'Evelyn','Sharma','2017-10-29 22:54:25','2017-10-29 22:54:25','Evelyn_S.jpg','image/jpeg',85469,'2017-10-29 22:54:25',NULL),(69,'Konkona','Sen','2017-10-29 22:55:09','2017-10-29 22:55:09','Konkona.jpg','image/jpeg',17624,'2017-10-29 22:55:09',NULL),(70,'Farah','Naaz','2017-10-29 22:56:27','2017-10-29 22:56:27','Farah_N.jpg','image/jpeg',97432,'2017-10-29 22:56:27',NULL),(71,'Tabu','','2017-10-29 22:58:22','2017-10-29 22:58:22','Tabu.jpg','image/jpeg',30257,'2017-10-29 22:58:22',NULL),(72,'Freida','Pinto','2017-10-29 23:00:27','2017-10-29 23:00:27','Freida.jpg','image/jpeg',104147,'2017-10-29 23:00:27',NULL),(73,'Geeta','Basra','2017-10-30 21:51:04','2017-10-30 21:51:04','Geeta.jpg','image/jpeg',57602,'2017-10-30 21:51:03',NULL),(74,'Genelia','DSouza','2017-10-30 21:52:44','2017-10-30 21:52:44','Genelia.jpg','image/jpeg',154433,'2017-10-30 21:52:43',NULL),(75,'Gul','Panag','2017-10-30 21:54:44','2017-10-30 21:54:44','Gul_P.jpg','image/jpeg',37561,'2017-10-30 21:54:44',NULL),(76,'Hansika','Motwani','2017-10-30 21:55:39','2017-10-30 21:55:39','Hansika.jpg','image/jpeg',125108,'2017-10-30 21:55:39',NULL),(77,'Hazel','Keech','2017-10-30 21:56:55','2017-10-30 21:56:55','Hazel.jpg','image/jpeg',126173,'2017-10-30 21:56:55',NULL),(78,'Hrishita','Bhatt','2017-10-30 21:58:46','2017-10-30 21:58:46','Hrishita.jpg','image/jpeg',50972,'2017-10-30 21:58:46',NULL),(79,'Huma','Qureshi','2017-10-30 22:00:45','2017-10-30 22:00:45','Huma_Q.jpg','image/jpeg',30649,'2017-10-30 22:00:45',NULL),(80,'Isha','Koppikar','2017-10-30 22:03:09','2017-10-30 22:03:09','Isha_K.jpg','image/jpeg',110484,'2017-10-30 22:03:09',NULL),(81,'Jennifer','Winget','2017-10-30 22:05:24','2017-10-30 22:05:24','Jennifer_W.jpg','image/jpeg',18229,'2017-10-30 22:05:24',NULL),(82,'Juhi','Chawla','2017-10-30 22:07:10','2017-10-30 22:07:10','Juhi.jpg','image/jpeg',73067,'2017-10-30 22:07:10',NULL),(83,'Kalki','Koechlin','2017-10-30 22:09:03','2017-10-30 22:09:03','Kalki.jpg','image/jpeg',115925,'2017-10-30 22:09:03',NULL),(84,'Kamalinee','Mukherjee','2017-10-30 22:10:52','2017-10-30 22:10:52','Kamalinee.jpg','image/jpeg',22400,'2017-10-30 22:10:52',NULL),(85,'Kashmira','Shah','2017-10-30 22:12:19','2017-10-30 22:12:19','Kashmira.jpg','image/jpeg',59226,'2017-10-30 22:12:19',NULL),(86,'Keerthi','Reddy','2017-10-30 22:13:36','2017-10-30 22:13:36','Keerti_R.jpg','image/jpeg',104297,'2017-10-30 22:13:36',NULL),(87,'Kim','Sharma','2017-10-30 22:15:26','2017-10-30 22:15:26','Kim_S.jpg','image/jpeg',155517,'2017-10-30 22:15:26',NULL),(88,'Kimi','Katkar','2017-10-30 22:15:43','2017-10-30 22:15:43','Kimi_K.jpg','image/jpeg',9551,'2017-10-30 22:15:43',NULL),(89,'Koena','Mitra','2017-10-30 22:17:02','2017-10-30 22:17:02','Koena_M.jpg','image/jpeg',83547,'2017-10-30 22:17:02',NULL),(90,'Kriti ','Kharbanda','2017-10-30 22:19:04','2017-10-30 22:19:04','Kriti_K.jpg','image/jpeg',30783,'2017-10-30 22:19:04',NULL),(91,'Kriti','Sanon','2017-10-30 22:20:30','2017-10-30 22:20:30','Kriti_S.JPG','image/jpeg',42394,'2017-10-30 22:20:30',NULL),(92,'Lisa','Ray','2017-10-30 22:22:59','2017-10-30 22:22:59','Lisa_R.jpg','image/jpeg',333640,'2017-10-30 22:22:59',NULL),(93,'Mahi','Gill','2017-10-30 22:28:30','2017-10-30 22:28:30','Mahi_G.jpg','image/jpeg',11483,'2017-10-30 22:28:30',NULL),(94,'Mahima','Chaudhry','2017-10-30 22:31:02','2017-10-30 22:31:02','Mahima.jpg','image/jpeg',418826,'2017-10-30 22:31:02',NULL),(95,'Mahira','Khan','2017-10-30 22:32:09','2017-10-30 22:32:09','Mahira.jpg','image/jpeg',83415,'2017-10-30 22:32:09',NULL),(96,'Malika','Sherawat','2017-10-30 22:33:27','2017-10-30 22:33:27','Malika_S.jpg','image/jpeg',133288,'2017-10-30 22:33:27',NULL),(97,'Mamta','Kulkarni','2017-10-30 22:34:20','2017-10-30 22:34:20','Mamta_K.jpg','image/jpeg',34069,'2017-10-30 22:34:20',NULL),(98,'Mandira','Bedi','2017-10-30 22:35:20','2017-10-30 22:35:20','Mandira_B.jpg','image/jpeg',44792,'2017-10-30 22:35:20',NULL),(99,'Manjari','Phadnis','2017-10-30 22:36:31','2017-10-30 22:44:25','Manjira_P.jpg','image/jpeg',30908,'2017-10-30 22:44:25',NULL),(100,'Mawra','Hocane','2017-10-30 22:47:23','2017-10-30 22:47:23','Mawra.jpg','image/jpeg',37066,'2017-10-30 22:47:23',NULL),(101,'Mayuri','Kango','2017-10-30 22:48:44','2017-10-30 22:48:44','Mayuri.jpg','image/jpeg',15979,'2017-10-30 22:48:44',NULL),(102,'Meenakshi','Seshadri','2017-10-30 22:50:01','2017-10-30 22:50:01','Meenakshi_S.jpg','image/jpeg',29859,'2017-10-30 22:50:01',NULL),(103,'Meera','','2017-10-30 22:51:34','2017-10-30 22:51:34','Meera.jpg','image/jpeg',43629,'2017-10-30 22:51:34',NULL),(104,'Meghna','Naidu','2017-10-30 22:51:49','2017-10-30 22:51:49','Meghna_N.jpg','image/jpeg',70965,'2017-10-30 22:51:49',NULL),(105,'Minissha','Lamba','2017-10-30 22:53:34','2017-10-30 22:53:34','Minissha_L.jpg','image/jpeg',12483,'2017-10-30 22:53:34',NULL),(106,'Nagma','','2017-11-03 00:46:41','2017-11-03 00:46:41','Nagma.jpg','image/jpeg',40889,'2017-11-03 00:46:41',NULL),(107,'Nandana','Sen','2017-11-03 00:47:41','2017-11-03 00:47:41','Nandana.jpg','image/jpeg',171314,'2017-11-03 00:47:41',NULL),(108,'Nandita','Das','2017-11-03 00:48:30','2017-11-03 00:48:30','Nandita_D.jpg','image/jpeg',329926,'2017-11-03 00:48:30',NULL),(109,'Natanya','Singh','2017-11-03 00:49:27','2017-11-03 00:49:27','Natanya_S.jpg','image/jpeg',23204,'2017-11-03 00:49:27',NULL),(110,'Nauheed','Cyrusi','2017-11-03 00:50:57','2017-11-03 00:50:57','Nauheed_C.jpg','image/jpeg',67949,'2017-11-03 00:50:57',NULL),(111,'Neelam','','2017-11-03 00:52:00','2017-11-03 00:52:00','Neelam.jpg','image/jpeg',17208,'2017-11-03 00:52:00',NULL),(112,'Neha','Dhupia','2017-11-03 00:53:00','2017-11-03 00:53:00','Neha_D.jpg','image/jpeg',145841,'2017-11-03 00:53:00',NULL),(113,'Neha','Sharma','2017-11-03 00:54:30','2017-11-03 00:54:30','Neha_S.jpg','image/jpeg',104177,'2017-11-03 00:54:30',NULL),(114,'Nikita','Anand','2017-11-03 00:55:46','2017-11-03 00:55:46','Nikita_A.jpg','image/jpeg',48479,'2017-11-03 00:55:46',NULL),(115,'Nisha','Agarwal','2017-11-03 00:56:38','2017-11-03 00:56:38','Nisha_A.jpg','image/jpeg',49043,'2017-11-03 00:56:38',NULL),(116,'Nimrat','Kaur','2017-11-03 00:57:28','2017-11-03 00:57:28','Nimrat_K.jpg','image/jpeg',45992,'2017-11-03 00:57:28',NULL),(117,'Paoli','Dam','2017-11-03 00:58:43','2017-11-03 00:58:43','Paoli_D.jpg','image/jpeg',10696,'2017-11-03 00:58:43',NULL),(118,'Patralekha','','2017-11-03 01:00:48','2017-11-03 01:00:48','Patralekha.jpg','image/jpeg',23514,'2017-11-03 01:00:48',NULL),(119,'Payal','Rohatgi','2017-11-03 01:01:35','2017-11-03 01:01:35','Payal_R.jpg','image/jpeg',155375,'2017-11-03 01:01:35',NULL),(120,'Payal','Sarkar','2017-11-03 01:02:14','2017-11-03 01:02:14','Payal_S.jpg','image/jpeg',32796,'2017-11-03 01:02:14',NULL),(121,'Parizaad','Zorabian','2017-11-03 01:03:17','2017-11-03 01:03:17','Parizaad.jpeg','image/jpeg',42497,'2017-11-03 01:03:17',NULL),(122,'Pooja','Batra','2017-11-03 01:04:07','2017-11-03 01:04:07','Pooja_Batra.jpg','image/jpeg',354609,'2017-11-03 01:04:07',NULL),(123,'Pooja','Bhatt','2017-11-03 01:04:55','2017-11-03 01:04:55','Pooja_Bhatt.jpg','image/jpeg',33890,'2017-11-03 01:04:55',NULL),(124,'Pooja','Hegde','2017-11-03 01:05:39','2017-11-03 01:06:00','Pooja_Hedge.jpg','image/jpeg',213561,'2017-11-03 01:06:00',NULL),(125,'Poonam','Dhillon','2017-11-03 01:07:19','2017-11-03 01:07:19','Poonam_Dhillon.jpg','image/jpeg',43778,'2017-11-03 01:07:19',NULL),(126,'Poonam','Pandey','2017-11-03 01:08:17','2017-11-03 01:08:17','Poonam_Pandey.jpg','image/jpeg',63002,'2017-11-03 01:08:17',NULL),(127,'Prachi','Desai','2017-11-03 01:08:55','2017-11-03 01:08:55','Prachi_D.JPG','image/jpeg',59940,'2017-11-03 01:08:55',NULL),(128,'Priya','Anand','2017-11-03 01:11:24','2017-11-03 01:11:24','Priya_Anand.jpg','image/jpeg',34157,'2017-11-03 01:11:24',NULL),(129,'Radhika','Apte','2017-11-03 01:12:57','2017-11-03 01:12:57','Radhika_Apte.jpg','image/jpeg',47150,'2017-11-03 01:12:57',NULL),(130,'Raima','Sen','2017-11-03 01:14:29','2017-11-03 01:14:29','Raima_S.jpg','image/jpeg',46014,'2017-11-03 01:14:29',NULL),(131,'Rakul','Preet','2017-11-03 01:15:59','2017-11-03 01:15:59','Rakul_Preet.jpg','image/jpeg',14534,'2017-11-03 01:15:59',NULL),(132,'Raveena','Tandon','2017-11-03 01:17:11','2017-11-03 01:17:11','Raveena_T.jpg','image/jpeg',60123,'2017-11-03 01:17:11',NULL),(133,'Reema','Sen','2017-11-03 01:18:10','2017-11-03 01:18:10','Reema_S.jpg','image/jpeg',39365,'2017-11-03 01:18:10',NULL),(134,'Richa','Chaddha','2017-11-03 01:19:17','2017-11-03 01:19:17','Richa_Chaddha.jpg','image/jpeg',33914,'2017-11-03 01:19:17',NULL),(135,'Rimi','Sen','2017-11-03 01:20:56','2017-11-03 01:20:56','Rimi_Sen.jpg','image/jpeg',33463,'2017-11-03 01:20:56',NULL),(136,'Rituparna','Sengupta','2017-11-03 01:22:00','2017-11-03 01:22:00','Rituparna.jpg','image/jpeg',44554,'2017-11-03 01:22:00',NULL),(137,'Roopa','Ganguly','2017-11-03 01:23:15','2017-11-03 01:23:15','Roopa_G.jpg','image/jpeg',28735,'2017-11-03 01:23:15',NULL),(138,'Sandhya','Mridul','2017-11-03 01:24:41','2017-11-03 01:24:41','Sandhya_M.jpg','image/jpeg',36456,'2017-11-03 01:24:41',NULL),(139,'Sanjeeda','Sheikh','2017-11-03 01:25:32','2017-11-03 01:25:32','Sanjeeda_S.jpg','image/jpeg',42964,'2017-11-03 01:25:32',NULL),(140,'Sakshi','Shivanand','2017-11-03 01:27:16','2017-11-03 01:27:16','Sakshi_Sh.jpg','image/jpeg',48262,'2017-11-03 01:27:16',NULL),(141,'Saloni','Aswani','2017-11-03 01:28:28','2017-11-03 01:28:28','Saloni.jpg','image/jpeg',71245,'2017-11-03 01:28:28',NULL),(142,'Sameera','Reddy','2017-11-03 01:29:22','2017-11-03 01:29:22','Sameera_R.jpg','image/jpeg',119300,'2017-11-03 01:29:22',NULL),(143,'Sana','Khan','2017-11-03 01:30:32','2017-11-03 01:30:32','Sana_Khan.jpg','image/jpeg',67677,'2017-11-03 01:30:32',NULL),(144,'Sayali','Bhagat','2017-11-03 01:31:32','2017-11-03 01:31:32','Sayali_B.jpg','image/jpeg',26347,'2017-11-03 01:31:32',NULL),(145,'Shabana','Azmi','2017-11-03 01:34:06','2017-11-03 01:34:06','Shabana.png','image/png',216013,'2017-11-03 01:34:06',NULL),(146,'Shahana','Goswami','2017-11-03 01:34:58','2017-11-03 01:34:58','Shahana_G.jpg','image/jpeg',24866,'2017-11-03 01:34:58',NULL),(147,'Shenaz','Treasurywala','2017-11-03 01:36:06','2017-11-03 01:36:06','Shenaz_T.jpg','image/jpeg',21403,'2017-11-03 01:36:06',NULL),(148,'Sherlyn','Chopra','2017-11-03 01:36:43','2017-11-03 01:36:43','Sherlyn_C.JPG','image/jpeg',34314,'2017-11-03 01:36:43',NULL),(150,'Shamita','Shetty','2017-11-03 01:38:29','2017-11-03 01:38:29','Shamita_S.jpg','image/jpeg',376869,'2017-11-03 01:38:29',NULL),(151,'Shweta','Menon','2017-11-03 01:39:46','2017-11-03 01:39:46','Shweta_Menon.jpg','image/jpeg',105635,'2017-11-03 01:39:46',NULL),(152,'Shraddha','Das','2017-11-03 01:40:37','2017-11-03 01:40:37','Shraddha_Das.jpg','image/jpeg',20580,'2017-11-03 01:40:37',NULL),(153,'Shraddha','Kapoor','2017-11-03 01:41:18','2017-11-03 01:41:18','Shraddha_Kapoor.jpg','image/jpeg',24484,'2017-11-03 01:41:18',NULL),(154,'Shruti','Hassan','2017-11-03 01:42:07','2017-11-03 01:42:07','Shruti_H.jpg','image/jpeg',100644,'2017-11-03 01:42:07',NULL),(155,'Shriya','Saran','2017-11-03 01:44:47','2017-11-03 01:44:47','Shriya2.jpg','image/jpeg',42620,'2017-11-03 01:44:47',NULL),(156,'Simi','Garewal','2017-11-03 01:46:04','2017-11-03 01:46:04','Simi_G.jpg','image/jpeg',23040,'2017-11-03 01:46:04',NULL),(157,'Simran','','2017-11-03 01:47:10','2017-11-03 01:47:10','Simran.jpg','image/jpeg',40765,'2017-11-03 01:47:10',NULL),(158,'Soha','Ali','2017-11-03 01:48:14','2017-11-03 01:48:14','Soha_Ali.jpg','image/jpeg',29976,'2017-11-03 01:48:14',NULL),(159,'Sonali','Kulkarni','2017-11-03 01:49:30','2017-11-03 01:49:30','Sonali_Kulkarni.jpg','image/jpeg',43777,'2017-11-03 01:49:30',NULL),(160,'Sonal','Chauhan','2017-11-03 01:51:29','2017-11-03 01:51:29','Sonal_Chouhan.jpg','image/jpeg',88229,'2017-11-03 01:51:29',NULL),(161,'Sophia','Chaudhary','2017-11-03 01:52:53','2017-11-03 01:52:53','Sophia_C.jpg','image/jpeg',33921,'2017-11-03 01:52:53',NULL),(162,'Sridevi','','2017-11-03 01:54:09','2017-11-03 01:54:09','Sridevi.jpg','image/jpeg',102644,'2017-11-03 01:54:09',NULL),(163,'Surveen','Chawla','2017-11-03 01:58:01','2017-11-03 01:58:01','Surveen_C.jpg','image/jpeg',24979,'2017-11-03 01:58:01',NULL),(164,'Swastika','Mukherjee','2017-11-03 01:58:44','2017-11-03 01:58:44','Swastika_M.jpg','image/jpeg',14884,'2017-11-03 01:58:44',NULL),(165,'Suman','Ranganathan','2017-11-03 02:00:30','2017-11-03 02:00:30','Suman_R.jpg','image/jpeg',86089,'2017-11-03 02:00:30',NULL),(166,'Tanisha','Mukherjee','2017-11-03 02:02:04','2017-11-03 02:02:04','Tanisha.jpg','image/jpeg',144748,'2017-11-03 02:02:04',NULL),(167,'Tanushree','Dutta','2017-11-03 02:02:18','2017-11-03 02:02:18','Tanushree.jpg','image/jpeg',16049,'2017-11-03 02:02:18',NULL),(168,'Tamanna','Bhatia','2017-11-03 02:03:39','2017-11-03 02:03:39','Tamanna.jpg','image/jpeg',11089,'2017-11-03 02:03:39',NULL),(169,'Tapsee','Pannu','2017-11-03 02:04:26','2017-11-03 02:04:26','Tapsee_P.jpg','image/jpeg',83194,'2017-11-03 02:04:26',NULL),(170,'Tara','Deshpande','2017-11-03 02:05:02','2017-11-03 02:05:02','Tara_D.jpg','image/jpeg',12672,'2017-11-03 02:05:02',NULL),(171,'Tena','Desai','2017-11-03 02:05:54','2017-11-03 02:05:54','Tena_D.jpg','image/jpeg',32819,'2017-11-03 02:05:54',NULL),(172,'Tia','Bajpai','2017-11-03 02:06:37','2017-11-03 02:06:37','Tia_B.jpg','image/jpeg',59541,'2017-11-03 02:06:37',NULL),(173,'Tisca','Chopra','2017-11-03 02:07:38','2017-11-03 02:07:38','Tisca_C.jpg','image/jpeg',20612,'2017-11-03 02:07:38',NULL),(174,'Tulip','Joshi','2017-11-03 02:08:11','2017-11-03 02:08:11','Tulip_J.jpg','image/jpeg',17610,'2017-11-03 02:08:11',NULL),(175,'Twinkle','Khanna','2017-11-03 02:08:50','2017-11-03 02:08:50','Twinkle_K.jpeg','image/jpeg',25153,'2017-11-03 02:08:50',NULL),(176,'Udita','Goswami','2017-11-03 02:09:58','2017-11-03 02:09:58','Udita_G.jpg','image/jpeg',10402,'2017-11-03 02:09:58',NULL),(177,'Urmila','Matondkar','2017-11-03 02:10:42','2017-11-03 02:10:42','Urmila_M.jpg','image/jpeg',243475,'2017-11-03 02:10:42',NULL),(178,'Urvashi','Dholakia','2017-11-03 02:11:23','2017-11-03 02:11:23','Urvashi_D.JPG','image/jpeg',51997,'2017-11-03 02:11:23',NULL),(179,'Urvashi','Sharma','2017-11-03 02:11:54','2017-11-03 02:11:54','Urvashi_S.jpeg','image/jpeg',28164,'2017-11-03 02:11:54',NULL),(180,'Urvashi','Rautela','2017-11-03 02:13:00','2017-11-03 02:13:00','Urvashi_Rautela.jpg','image/jpeg',20054,'2017-11-03 02:13:00',NULL),(181,'Vaani','Kapoor','2017-11-03 02:13:48','2017-11-03 02:13:48','Vaani_K.jpg','image/jpeg',45867,'2017-11-03 02:13:48',NULL),(182,'Vasundhara','Das','2017-11-03 02:15:32','2017-11-03 02:15:32','Vasundhara_D.jpg','image/jpeg',37128,'2017-11-03 02:15:32',NULL),(183,'Veena','Malik','2017-11-03 02:15:44','2017-11-03 02:15:44','Veena_K.jpg','image/jpeg',25579,'2017-11-03 02:15:44',NULL),(184,'Vimala','Raman','2017-11-03 02:16:42','2017-11-03 02:16:42','Vimala_R.jpg','image/jpeg',39447,'2017-11-03 02:16:42',NULL),(185,'Yami','Gautam','2017-11-03 02:17:36','2017-11-03 02:17:36','Yami_G.jpg','image/jpeg',30100,'2017-11-03 02:17:36',NULL),(186,'Zareen','Khan','2017-11-03 02:18:17','2017-11-03 02:18:29','Zareen_K.jpg','image/jpeg',24875,'2017-11-03 02:18:29',NULL);
/*!40000 ALTER TABLE `actresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-02-06 15:58:05','2020-02-06 15:58:05');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clips`
--

DROP TABLE IF EXISTS `clips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clips` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actress_id` bigint(20) DEFAULT NULL,
  `clip_name` varchar(255) DEFAULT NULL,
  `clip_description` varchar(255) DEFAULT NULL,
  `movie` varchar(255) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `clip_tag1` varchar(255) DEFAULT NULL,
  `clip_tag2` varchar(255) DEFAULT NULL,
  `clip_tag3` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_url_file_name` varchar(255) DEFAULT NULL,
  `image_url_content_type` varchar(255) DEFAULT NULL,
  `image_url_file_size` int(11) DEFAULT NULL,
  `image_url_updated_at` datetime DEFAULT NULL,
  `clip_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_clips_on_actress_id` (`actress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clips`
--

LOCK TABLES `clips` WRITE;
/*!40000 ALTER TABLE `clips` DISABLE KEYS */;
INSERT INTO `clips` VALUES (1,151,'Shweta Tiwari clip','Shweta smooch from recent web series','Hum Tum and Them','2020-01-02 00:00:00','kiss','smooch','tongue','2020-02-06 16:02:04','2020-02-06 16:02:04',NULL,NULL,NULL,NULL,'https://youtu.be/0S8cSuH4h8g'),(2,10,'Riya Sen new clip','Riya sex from web series Mismatch','Mismatch','2019-12-02 00:00:00','kiss','smooch','sex','2020-02-06 16:02:59','2020-02-06 16:02:59',NULL,NULL,NULL,NULL,'https://youtu.be/Z-7QVYj3faI'),(3,99,'Manjari kiss','Manjari smooching in Jungle','Unknown',NULL,'kiss','smooch','sexy','2020-02-06 16:05:56','2020-02-06 16:05:56',NULL,NULL,NULL,NULL,'https://youtu.be/Yr0UZffPmyQ'),(4,49,'Tapsee Pannu kiss','Taapsee kissing on the boat','Dil Junglee',NULL,'','','','2020-02-06 16:06:54','2020-02-06 16:06:54',NULL,NULL,NULL,NULL,'https://youtu.be/IvSN8Cy_pUE'),(5,44,'Susmita smooching','Susmita eating her co star','unknown',NULL,'','','','2020-02-06 16:07:55','2020-02-06 16:07:55',NULL,NULL,NULL,NULL,'https://youtu.be/eS50gJayq1w'),(6,50,'Vidya hot','Vidya licking her co star','Unknown',NULL,'','','','2020-02-06 16:08:28','2020-02-06 16:08:28',NULL,NULL,NULL,NULL,'https://youtu.be/FN09hQpNqgM');
/*!40000 ALTER TABLE `clips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_actresses`
--

DROP TABLE IF EXISTS `feature_actresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_actresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `actress_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feature_actresses_on_actress_id` (`actress_id`),
  CONSTRAINT `fk_rails_dd3078667e` FOREIGN KEY (`actress_id`) REFERENCES `actresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_actresses`
--

LOCK TABLES `feature_actresses` WRITE;
/*!40000 ALTER TABLE `feature_actresses` DISABLE KEYS */;
INSERT INTO `feature_actresses` VALUES (1,'Feature belongs to Illeana','2020-02-06 16:03:23','2020-02-06 16:03:23',7);
/*!40000 ALTER TABLE `feature_actresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_clips`
--

DROP TABLE IF EXISTS `feature_clips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_clips` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `clip_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feature_clips_on_clip_id` (`clip_id`),
  CONSTRAINT `fk_rails_840c704cfa` FOREIGN KEY (`clip_id`) REFERENCES `clips` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_clips`
--

LOCK TABLES `feature_clips` WRITE;
/*!40000 ALTER TABLE `feature_clips` DISABLE KEYS */;
INSERT INTO `feature_clips` VALUES (1,'Feature for Shweta Tiwari clip','2020-02-06 16:03:46','2020-02-06 16:03:46',1);
/*!40000 ALTER TABLE `feature_clips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170915005339'),('20170915010955'),('20170916215939'),('20171006033305'),('20171019185844'),('20171020004459'),('20171020004842'),('20171020005555'),('20171020010422'),('20171020010928'),('20171020010945'),('20190924235148'),('20190924235731'),('20190926231253'),('20190926231729'),('20191001212844'),('20191114231005'),('20191114231621');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aizooafridi@gmail.com','$2a$11$76skkGI0mmTXr8A1JWcg1O1Uhjhw6xk0PeupdFCTAjlUJFUuMi2o2',NULL,NULL,NULL,'2020-02-06 15:59:34','2020-02-06 15:59:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-06 16:34:19
