CREATE DATABASE  IF NOT EXISTS `grupo305_vltsegdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `grupo305_vltsegdb`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: vltsegdb
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `custtype_id` int(11) NOT NULL,
  `condtcust` enum('G','R','B') NOT NULL,
  `nature_indcorp` enum('I','C') NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `cnpj` char(14) NOT NULL,
  `ie` char(10) NOT NULL,
  `corpname` varchar(256) NOT NULL,
  `aliasname` varchar(30) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `status` enum('A','I') NOT NULL,
  `note` text,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_inactive` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_invaddr`
--

DROP TABLE IF EXISTS `customer_invaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_invaddr` (
  `customer_id` int(11) NOT NULL,
  `inv_addr_id` int(11) NOT NULL,
  `inv_addr_zip` varchar(9) DEFAULT NULL,
  `inv_address` varchar(256) NOT NULL,
  `inv_addr_number` varchar(20) DEFAULT NULL,
  `inv_addr_comp` varchar(256) DEFAULT NULL,
  `inv_addr_dist` varchar(256) NOT NULL,
  `inv_addr_city` varchar(256) NOT NULL,
  `inv_addr_state` varchar(2) NOT NULL,
  `inv_addr_ref` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_invaddr`
--

LOCK TABLES `customer_invaddr` WRITE;
/*!40000 ALTER TABLE `customer_invaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_invaddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_commcont`
--

DROP TABLE IF EXISTS `customer_commcont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_commcont` (
  `customer_id` int(11) NOT NULL,
  `commercial_contact_name` varchar(100) NOT NULL,
  `comm_business_phone` bigint(11) DEFAULT NULL,
  `comm_mobil_phone` bigint(11) DEFAULT NULL,
  `comm_nextel_phone` bigint(11) DEFAULT NULL,
  `comm_nextel_id` char(11) DEFAULT NULL,
  `comm_fax_phone` bigint(11) DEFAULT NULL,
  `comm_email` varchar(35) DEFAULT NULL,
  `comm_webpage` varchar(50) DEFAULT NULL,
  `comm_note` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_commcont`
--

LOCK TABLES `customer_commcont` WRITE;
/*!40000 ALTER TABLE `customer_commcont` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_commcont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_commaddr`
--

DROP TABLE IF EXISTS `customer_commaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_commaddr` (
  `customer_id` int(11) NOT NULL,
  `comm_addr_id` int(11) NOT NULL,
  `comm_addr_zip` varchar(9) DEFAULT NULL,
  `comm_address` varchar(256) NOT NULL,
  `comm_addr_number` varchar(20) DEFAULT NULL,
  `comm_addr_comp` varchar(256) DEFAULT NULL,
  `comm_addr_dist` varchar(256) NOT NULL,
  `comm_addr_city` varchar(256) NOT NULL,
  `comm_addr_state` varchar(2) NOT NULL,
  `comm_addr_ref` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_commaddr`
--

LOCK TABLES `customer_commaddr` WRITE;
/*!40000 ALTER TABLE `customer_commaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_commaddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_invcont`
--

DROP TABLE IF EXISTS `customer_invcont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_invcont` (
  `customer_id` int(11) NOT NULL,
  `invoice_contact_name` varchar(30) NOT NULL,
  `inv_business_phone` bigint(11) DEFAULT NULL,
  `inv_mobil_phone` bigint(11) DEFAULT NULL,
  `inv_nextel_phone` bigint(11) DEFAULT NULL,
  `inv_nextel_id` char(11) DEFAULT NULL,
  `inv_fax_phone` bigint(11) DEFAULT NULL,
  `inv_email` varchar(35) DEFAULT NULL,
  `inv_note` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_invcont`
--

LOCK TABLES `customer_invcont` WRITE;
/*!40000 ALTER TABLE `customer_invcont` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_invcont` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-15 15:14:51
