CREATE DATABASE  IF NOT EXISTS `vltsegdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `grupo305_vltsegdb`;
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
-- Table structure for table `personref`
--

DROP TABLE IF EXISTS `personref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personref` (
  `person_id` int(11) NOT NULL,
  `refname` varchar(255) DEFAULT NULL,
  `refaddress` varchar(255) DEFAULT NULL,
  `refphone` bigint(11) DEFAULT NULL,
  `refemail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `local_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `jobtitle_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `firstjob`  enum('Y','N') NOT NULL,
  `staff_msg` text,
  `status` enum('A','I') NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personaddr`
--

DROP TABLE IF EXISTS `personaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personaddr` (
  `person_id` int(11) NOT NULL,
  `zipid` int(11) NOT NULL,
  `zipcode` varchar(9) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `addr_number` varchar(20) DEFAULT NULL,
  `district` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(2) NOT NULL,
  `reference` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persondoc`
--

DROP TABLE IF EXISTS `persondoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persondoc` (
  `person_id` int(11) NOT NULL,
  `rg` bigint(11) DEFAULT NULL,
  `rg_organissuer` varchar(20) DEFAULT NULL,
  `rg_dateofchip` date NOT NULL DEFAULT '0000-00-00',
  `crsm` varchar(20) DEFAULT NULL,
  `crsm_serie` varchar(10) DEFAULT NULL,
  `crsm_cat` varchar(10) DEFAULT NULL,
  `cpf` bigint(11) DEFAULT NULL,
  `ctps` bigint(11) DEFAULT NULL,
  `ctpsserie` bigint(11) DEFAULT NULL,
  `ctps_dateofissuer` date NOT NULL,
  `pispasep` bigint(11) DEFAULT NULL,
  `datelastcontrib` date NOT NULL DEFAULT '0000-00-00',
  `birthormary_certif` bigint(11) DEFAULT NULL,
  `cnh` bigint(11) DEFAULT NULL,
  `cnh_cat` varchar(10) DEFAULT NULL,
  `cnh_dateofexpire` date NOT NULL DEFAULT '0000-00-00',
  `titlevote` bigint(11) DEFAULT NULL,
  `titlevote_sec` varchar(10) DEFAULT NULL,
  `titlevote_zone` varchar(10) DEFAULT NULL,
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `rg` (`rg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personeducation`
--

DROP TABLE IF EXISTS `personeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personeducation` (
  `person_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `year_completion` date NOT NULL DEFAULT '0000-00-00',
  `othereducation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personcontact`
--

DROP TABLE IF EXISTS `personcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personcontact` (
  `person_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `home_phone` bigint(11) DEFAULT NULL,
  `mobil_phone` bigint(11) DEFAULT NULL,
  `nextel_phone` bigint(11) DEFAULT NULL,
  `nextel_id` varchar(12) DEFAULT NULL,
  `contact_msg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `naturality` varchar(35) NOT NULL,
  `naturality_state` char(2) NOT NULL,
  `nationality` enum('B','E') NOT NULL,
  `country_city_state` varchar(255) NOT NULL,
  `bloodperson` varchar(20) NOT NULL,
  `colorperson` varchar(20) NOT NULL,
  `marital_state` enum('SG','MR','ST','SP','WD') NOT NULL,
  `specialnbearer` enum('N','Y') NOT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `mothername` varchar(255) DEFAULT NULL,
  `wifesname` varchar(255) DEFAULT NULL,
  `status` enum('A','I') NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personbank`
--

DROP TABLE IF EXISTS `personbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personbank` (
  `person_id` int(11) NOT NULL,
  `typeaccount_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `agency` varchar(100) DEFAULT NULL,
  `account` varchar(100) NOT NULL,
  `account_holder` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staffadmis`
--

DROP TABLE IF EXISTS `staffadmis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffadmis` (
  `staff_id` int(11) NOT NULL,
  `date_admis` date NOT NULL DEFAULT '0000-00-00',
  `salary` decimal(10,2) NOT NULL,
  `transp_ticket` enum('Y','N') NOT NULL,
  `transptkqt1` int(11) NOT NULL,
  `transptkvl1` decimal(10,2) NOT NULL,
  `transptkqt2` int(11) NOT NULL,
  `transptkvl2` decimal(10,2) NOT NULL,
  `transptkqt3` int(11) NOT NULL,
  `transptkvl3` decimal(10,2) NOT NULL,
  `workload` int(11) NOT NULL,
  `starttime` time NOT NULL DEFAULT '00:00',
  `endtime` time NOT NULL DEFAULT '00:00',
  `resignation_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
