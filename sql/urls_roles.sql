CREATE DATABASE  IF NOT EXISTS `vltsegdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vltsegdb`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: vltsegdb
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb7u1

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
-- Table structure for table `roles_items`
--

DROP TABLE IF EXISTS `roles_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_items` (
  `role_id` int(11) NOT NULL,
  `url_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_items`
--

LOCK TABLES `roles_items` WRITE;
/*!40000 ALTER TABLE `roles_items` DISABLE KEYS */;
INSERT INTO `roles_items` VALUES (112,9),(112,10),(124,11);
/*!40000 ALTER TABLE `roles_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cpny_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL,
  `passwd_hint` varchar(256) DEFAULT NULL,
  `userkey` varchar(256) NOT NULL,
  `status` enum('A','I') NOT NULL,
  `note` text,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,1,1,1,'admin','d0aa5e6b1be2ae15ef829cb4ca5cb5f9d35ab6ff4613aa458d568e265037ec5e','admin','d0aa5e6b1be2ae15ef829cb4ca5cb5f9d35ab6ff4613aa458d568e265037ec5e','A','Conta Padrão','2015-05-14 01:22:03','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `allow_access` enum('Y','N') NOT NULL,
  `note` text,
  `date_create` timestamp NULL DEFAULT NULL,
  `date_change` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `allow_access` enum('Y','N') NOT NULL,
  `note` text,
  `status` enum('A','I') NOT NULL,
  `date_create` timestamp NULL DEFAULT NULL,
  `date_change` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (112,'OPERACIONAL-1','Y',NULL,'A','2015-06-19 17:06:26',NULL),(124,'OPERACIONAL-2','Y',NULL,'A','2015-06-23 01:06:25',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urls_page`
--

DROP TABLE IF EXISTS `urls_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urls_page` (
  `url_id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `note` text,
  `date_create` timestamp NULL DEFAULT NULL,
  `date_change` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urls_page`
--

LOCK TABLES `urls_page` WRITE;
/*!40000 ALTER TABLE `urls_page` DISABLE KEYS */;
INSERT INTO `urls_page` VALUES (9,'Company Add','mngcpny/addcpny','Módulo de Cadastro para Empresa teste 2 3 4 5','2015-06-18 12:31:08','2015-06-18 13:06:06'),(10,'Cadastro de Clientes','mngcust/addcust','Cadastro de Clientes','2015-06-19 19:06:50',NULL),(11,'Add New Staff Person','mngstaff/addstaff','For add new staff person..','2015-06-22 17:06:13',NULL);
/*!40000 ALTER TABLE `urls_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vltsegdb'
--
/*!50003 DROP FUNCTION IF EXISTS `getNextSeq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getNextSeq`(sSeqName varchar(50)) RETURNS int(10) unsigned
begin
    declare nLast_val int;
 
    set nLast_val =  (select seq_val
                          from _sequence
                          where seq_name = sSeqName);
    if nLast_val is null then
        set nLast_val = 1;
        insert into _sequence (seq_name,seq_val)
        values (sSeqName,nLast_Val);
    else
        set nLast_val = nLast_val + 1;
        update _sequence set seq_val = nLast_val
        where seq_name = sSeqName;
    end if;
 
    return nLast_val;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setSeqVal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setSeqVal`(sSeqName varchar(50), nVal int unsigned)
begin
    if (select count(*) from _sequence where seq_name = sSeqName) = 0 then
        insert into _sequence (seq_name,seq_val)
        values (sSeqName,nVal);
    else
        update _sequence set seq_val = nVal
        where seq_name = sSeqName;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-22 22:24:16
