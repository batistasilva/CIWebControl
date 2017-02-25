CREATE DATABASE  IF NOT EXISTS `webctrl_data` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webctrl_data`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: webctrl_data
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
-- Table structure for table `_sequence`
--

DROP TABLE IF EXISTS `_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sequence` (
  `seq_name` varchar(50) NOT NULL,
  `seq_val` int(10) unsigned NOT NULL,
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sequence`
--

LOCK TABLES `_sequence` WRITE;
/*!40000 ALTER TABLE `_sequence` DISABLE KEYS */;
INSERT INTO `_sequence` VALUES ('company_seq',19),('customer_seq',141),('person_seq',716),('role_seq',114),('staff_seq',1315),('urls_seq',10),('user_seq',7);
/*!40000 ALTER TABLE `_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr_staffs`
--

DROP TABLE IF EXISTS `addr_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_staffs` (
  `addrstaff_id` int(11) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(9) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `addr_number` varchar(20) DEFAULT NULL,
  `district` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(2) NOT NULL,
  `reference` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`addrstaff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_staffs`
--

LOCK TABLES `addr_staffs` WRITE;
/*!40000 ALTER TABLE `addr_staffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_branch`
--

DROP TABLE IF EXISTS `bank_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_branch` (
  `bankbranch_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `number` char(5) NOT NULL,
  PRIMARY KEY (`bankbranch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_branch`
--

LOCK TABLES `bank_branch` WRITE;
/*!40000 ALTER TABLE `bank_branch` DISABLE KEYS */;
INSERT INTO `bank_branch` VALUES (1,'ITAU','3417'),(2,'CAIXA ECONOMICA FEDERAL','1040'),(3,'HSBC','1012');
/*!40000 ALTER TABLE `bank_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cad_cidades`
--

DROP TABLE IF EXISTS `cad_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_cidades` (
  `cid_id` int(11) NOT NULL AUTO_INCREMENT,
  `cid_nome` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `est_id` int(11) NOT NULL,
  PRIMARY KEY (`cid_id`),
  KEY `fk_cad_cidades_cad_estados1` (`est_id`),
  CONSTRAINT `fk_cad_cidades_cad_estados1` FOREIGN KEY (`est_id`) REFERENCES `cad_estados` (`est_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5604 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=47;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_cidades`
--

LOCK TABLES `cad_cidades` WRITE;
/*!40000 ALTER TABLE `cad_cidades` DISABLE KEYS */;
INSERT INTO `cad_cidades` VALUES (1,'Acrelândia',1),(2,'Assis Brasil',1),(3,'Brasiléia',1),(4,'Bujari',1),(5,'Capixaba',1),(6,'Cruzeiro do Sul',1),(7,'Epitaciolândia',1),(8,'Feijó',1),(9,'Jordão',1),(10,'Mâncio Lima',1),(11,'Manoel Urbano',1),(12,'Marechal Thaumaturgo',1),(13,'Plácido de Castro',1),(14,'Porto Acre',1),(15,'Porto Walter',1),(16,'Rodrigues Alves',1),(17,'Santa Rosa do Purus',1),(18,'Sena Madureira',1),(19,'Senador Guiomard',1),(20,'Tarauacá',1),(21,'Xapuri',1),(22,'Água Branca',2),(23,'Anadia',2),(24,'Arapiraca',2),(25,'Atalaia',2),(26,'Barra de Santo Antônio',2),(27,'Barra de São Miguel',2),(28,'Batalha',2),(29,'Belém',2),(30,'Belo Monte',2),(31,'Boca da Mata',2),(32,'Branquinha',2),(33,'Cacimbinhas',2),(34,'Cajueiro',2),(35,'Campestre',2),(36,'Campo Alegre',2),(37,'Campo Grande',2),(38,'Canapi',2),(39,'Capela',2),(40,'Carneiros',2),(41,'Chã Preta',2),(42,'Coité do Nóia',2),(43,'Colônia Leopoldina',2),(44,'Coqueiro Seco',2),(45,'Coruripe',2),(46,'Craíbas',2),(47,'Delmiro Gouveia',2),(48,'Dois Riachos',2),(49,'Estrela de Alagoas',2),(50,'Feira Grande',2),(51,'Feliz Deserto',2),(52,'Flexeiras',2),(53,'Girau do Ponciano',2),(54,'Ibateguara',2),(55,'Igaci',2),(56,'Igreja Nova',2),(57,'Inhapi',2),(58,'Jacaré dos Homens',2),(59,'Jacuípe',2),(60,'Japaratinga',2),(61,'Jaramataia',2),(62,'Jequiá da Praia',2),(63,'Joaquim Gomes',2),(64,'Jundiá',2),(65,'Junqueiro',2),(66,'Lagoa da Canoa',2),(67,'Limoeiro de Anadia',2),(68,'Major Isidoro',2),(69,'Mar Vermelho',2),(70,'Maragogi',2),(71,'Maravilha',2),(72,'Marechal Deodoro',2),(73,'Maribondo',2),(74,'Mata Grande',2),(75,'Matriz de Camaragibe',2),(76,'Messias',2),(77,'Minador do Negrão',2),(78,'Monteirópolis',2),(79,'Murici',2),(80,'Novo Lino',2),(81,'Olho d`Água das Flores',2),(82,'Olho d`Água do Casado',2),(83,'Olho d`Água Grande',2),(84,'Olivença',2),(85,'Ouro Branco',2),(86,'Palestina',2),(87,'Palmeira dos Índios',2),(88,'Pão de Açúcar',2),(89,'Pariconha',2),(90,'Paripueira',2),(91,'Passo de Camaragibe',2),(92,'Paulo Jacinto',2),(93,'Penedo',2),(94,'Piaçabuçu',2),(95,'Pilar',2),(96,'Pindoba',2),(97,'Piranhas',2),(98,'Poço das Trincheiras',2),(99,'Porto Calvo',2),(100,'Porto de Pedras',2),(101,'Porto Real do Colégio',2),(102,'Quebrangulo',2),(103,'Rio Largo',2),(104,'Roteiro',2),(105,'Santa Luzia do Norte',2),(106,'Santana do Ipanema',2),(107,'Santana do Mundaú',2),(108,'São Brás',2),(109,'São José da Laje',2),(110,'São José da Tapera',2),(111,'São Luís do Quitunde',2),(112,'São Miguel dos Campos',2),(113,'São Miguel dos Milagres',2),(114,'São Sebastião',2),(115,'Satuba',2),(116,'Senador Rui Palmeira',2),(117,'Tanque d`Arca',2),(118,'Taquarana',2),(119,'Teotônio Vilela',2),(120,'Traipu',2),(121,'União dos Palmares',2),(122,'Viçosa',2),(123,'Alvarães',3),(124,'Amaturá',3),(125,'Anamã',3),(126,'Anori',3),(127,'Apuí',3),(128,'Atalaia do Norte',3),(129,'Autazes',3),(130,'Barcelos',3),(131,'Barreirinha',3),(132,'Benjamin Constant',3),(133,'Beruri',3),(134,'Boa Vista do Ramos',3),(135,'Boca do Acre',3),(136,'Borba',3),(137,'Caapiranga',3),(138,'Canutama',3),(139,'Carauari',3),(140,'Careiro',3),(141,'Careiro da Várzea',3),(142,'Coari',3),(143,'Codajás',3),(144,'Eirunepé',3),(145,'Envira',3),(146,'Fonte Boa',3),(147,'Guajará',3),(148,'Humaitá',3),(149,'Ipixuna',3),(150,'Iranduba',3),(151,'Itacoatiara',3),(152,'Itamarati',3),(153,'Itapiranga',3),(154,'Japurá',3),(155,'Juruá',3),(156,'Jutaí',3),(157,'Lábrea',3),(158,'Manacapuru',3),(159,'Manaquiri',3),(160,'Manicoré',3),(161,'Maraã',3),(162,'Maués',3),(163,'Nhamundá',3),(164,'Nova Olinda do Norte',3),(165,'Novo Airão',3),(166,'Novo Aripuanã',3),(167,'Parintins',3),(168,'Pauini',3),(169,'Presidente Figueiredo',3),(170,'Rio Preto da Eva',3),(171,'Santa Isabel do Rio Negro',3),(172,'Santo Antônio do Içá',3),(173,'São Gabriel da Cachoeira',3),(174,'São Paulo de Olivença',3),(175,'São Sebastião do Uatumã',3),(176,'Silves',3),(177,'Tabatinga',3),(178,'Tapauá',3),(179,'Tefé',3),(180,'Tonantins',3),(181,'Uarini',3),(182,'Urucará',3),(183,'Urucurituba',3),(184,'Amapá',4),(185,'Calçoene',4),(186,'Cutias',4),(187,'Ferreira Gomes',4),(188,'Itaubal',4),(189,'Laranjal do Jari',4),(190,'Mazagão',4),(191,'Oiapoque',4),(192,'Pedra Branca do Amaparí',4),(193,'Porto Grande',4),(194,'Pracuúba',4),(195,'Santana',4),(196,'Serra do Navio',4),(197,'Tartarugalzinho',4),(198,'Vitória do Jari',4),(199,'Abaíra',5),(200,'Abaré',5),(201,'Acajutiba',5),(202,'Adustina',5),(203,'Água Fria',5),(204,'Aiquara',5),(205,'Alagoinhas',5),(206,'Alcobaça',5),(207,'Almadina',5),(208,'Amargosa',5),(209,'Amélia Rodrigues',5),(210,'América Dourada',5),(211,'Anagé',5),(212,'Andaraí',5),(213,'Andorinha',5),(214,'Angical',5),(215,'Anguera',5),(216,'Antas',5),(217,'Antônio Cardoso',5),(218,'Antônio Gonçalves',5),(219,'Aporá',5),(220,'Apuarema',5),(221,'Araças',5),(222,'Aracatu',5),(223,'Araci',5),(224,'Aramari',5),(225,'Arataca',5),(226,'Aratuípe',5),(227,'Aurelino Leal',5),(228,'Baianópolis',5),(229,'Baixa Grande',5),(230,'Banzaê',5),(231,'Barra',5),(232,'Barra da Estiva',5),(233,'Barra do Choça',5),(234,'Barra do Mendes',5),(235,'Barra do Rocha',5),(236,'Barreiras',5),(237,'Barro Alto',5),(238,'Barro Preto',5),(239,'Barrocas',5),(240,'Belmonte',5),(241,'Belo Campo',5),(242,'Biritinga',5),(243,'Boa Nova',5),(244,'Boa Vista do Tupim',5),(245,'Bom Jesus da Lapa',5),(246,'Bom Jesus da Serra',5),(247,'Boninal',5),(248,'Bonito',5),(249,'Boquira',5),(250,'Botuporã',5),(251,'Brejões',5),(252,'Brejolândia',5),(253,'Brotas de Macaúbas',5),(254,'Brumado',5),(255,'Buerarema',5),(256,'Buritirama',5),(257,'Caatiba',5),(258,'Cabaceiras do Paraguaçu',5),(259,'Cachoeira',5),(260,'Caculé',5),(261,'Caém',5),(262,'Caetanos',5),(263,'Caetité',5),(264,'Cafarnaum',5),(265,'Cairu',5),(266,'Caldeirão Grande',5),(267,'Camacan',5),(268,'Camaçari',5),(269,'Camamu',5),(270,'Campo Alegre de Lourdes',5),(271,'Campo Formoso',5),(272,'Canápolis',5),(273,'Canarana',5),(274,'Canavieiras',5),(275,'Candeal',5),(276,'Candeias',5),(277,'Candiba',5),(278,'Cândido Sales',5),(279,'Cansanção',5),(280,'Canudos',5),(281,'Capela do Alto Alegre',5),(282,'Capim Grosso',5),(283,'Caraíbas',5),(284,'Caravelas',5),(285,'Cardeal da Silva',5),(286,'Carinhanha',5),(287,'Casa Nova',5),(288,'Castro Alves',5),(289,'Catolândia',5),(290,'Catu',5),(291,'Caturama',5),(292,'Central',5),(293,'Chorrochó',5),(294,'Cícero Dantas',5),(295,'Cipó',5),(296,'Coaraci',5),(297,'Cocos',5),(298,'Conceição da Feira',5),(299,'Conceição do Almeida',5),(300,'Conceição do Coité',5),(301,'Conceição do Jacuípe',5),(302,'Conde',5),(303,'Condeúba',5),(304,'Contendas do Sincorá',5),(305,'Coração de Maria',5),(306,'Cordeiros',5),(307,'Coribe',5),(308,'Coronel João Sá',5),(309,'Correntina',5),(310,'Cotegipe',5),(311,'Cravolândia',5),(312,'Crisópolis',5),(313,'Cristópolis',5),(314,'Cruz das Almas',5),(315,'Curaçá',5),(316,'Dário Meira',5),(317,'Dias d`Ávila',5),(318,'Dom Basílio',5),(319,'Dom Macedo Costa',5),(320,'Elísio Medrado',5),(321,'Encruzilhada',5),(322,'Entre Rios',5),(323,'Érico Cardoso',5),(324,'Esplanada',5),(325,'Euclides da Cunha',5),(326,'Eunápolis',5),(327,'Fátima',5),(328,'Feira da Mata',5),(329,'Feira de Santana',5),(330,'Filadélfia',5),(331,'Firmino Alves',5),(332,'Floresta Azul',5),(333,'Formosa do Rio Preto',5),(334,'Gandu',5),(335,'Gavião',5),(336,'Gentio do Ouro',5),(337,'Glória',5),(338,'Gongogi',5),(339,'Governador Mangabeira',5),(340,'Guajeru',5),(341,'Guanambi',5),(342,'Guaratinga',5),(343,'Heliópolis',5),(344,'Iaçu',5),(345,'Ibiassucê',5),(346,'Ibicaraí',5),(347,'Ibicoara',5),(348,'Ibicuí',5),(349,'Ibipeba',5),(350,'Ibipitanga',5),(351,'Ibiquera',5),(352,'Ibirapitanga',5),(353,'Ibirapuã',5),(354,'Ibirataia',5),(355,'Ibitiara',5),(356,'Ibititá',5),(357,'Ibotirama',5),(358,'Ichu',5),(359,'Igaporã',5),(360,'Igrapiúna',5),(361,'Iguaí',5),(362,'Ilhéus',5),(363,'Inhambupe',5),(364,'Ipecaetá',5),(365,'Ipiaú',5),(366,'Ipirá',5),(367,'Ipupiara',5),(368,'Irajuba',5),(369,'Iramaia',5),(370,'Iraquara',5),(371,'Irará',5),(372,'Irecê',5),(373,'Itabela',5),(374,'Itaberaba',5),(375,'Itabuna',5),(376,'Itacaré',5),(377,'Itaeté',5),(378,'Itagi',5),(379,'Itagibá',5),(380,'Itagimirim',5),(381,'Itaguaçu da Bahia',5),(382,'Itaju do Colônia',5),(383,'Itajuípe',5),(384,'Itamaraju',5),(385,'Itamari',5),(386,'Itambé',5),(387,'Itanagra',5),(388,'Itanhém',5),(389,'Itaparica',5),(390,'Itapé',5),(391,'Itapebi',5),(392,'Itapetinga',5),(393,'Itapicuru',5),(394,'Itapitanga',5),(395,'Itaquara',5),(396,'Itarantim',5),(397,'Itatim',5),(398,'Itiruçu',5),(399,'Itiúba',5),(400,'Itororó',5),(401,'Ituaçu',5),(402,'Ituberá',5),(403,'Iuiú',5),(404,'Jaborandi',5),(405,'Jacaraci',5),(406,'Jacobina',5),(407,'Jaguaquara',5),(408,'Jaguarari',5),(409,'Jaguaripe',5),(410,'Jandaíra',5),(411,'Jequié',5),(412,'Jeremoabo',5),(413,'Jiquiriçá',5),(414,'Jitaúna',5),(415,'João Dourado',5),(416,'Juazeiro',5),(417,'Jucuruçu',5),(418,'Jussara',5),(419,'Jussari',5),(420,'Jussiape',5),(421,'Lafaiete Coutinho',5),(422,'Lagoa Real',5),(423,'Laje',5),(424,'Lajedão',5),(425,'Lajedinho',5),(426,'Lajedo do Tabocal',5),(427,'Lamarão',5),(428,'Lapão',5),(429,'Lauro de Freitas',5),(430,'Lençóis',5),(431,'Licínio de Almeida',5),(432,'Livramento de Nossa Senhora',5),(433,'Luís Eduardo Magalhães',5),(434,'Macajuba',5),(435,'Macarani',5),(436,'Macaúbas',5),(437,'Macururé',5),(438,'Madre de Deus',5),(439,'Maetinga',5),(440,'Maiquinique',5),(441,'Mairi',5),(442,'Malhada',5),(443,'Malhada de Pedras',5),(444,'Manoel Vitorino',5),(445,'Mansidão',5),(446,'Maracás',5),(447,'Maragogipe',5),(448,'Maraú',5),(449,'Marcionílio Souza',5),(450,'Mascote',5),(451,'Mata de São João',5),(452,'Matina',5),(453,'Medeiros Neto',5),(454,'Miguel Calmon',5),(455,'Milagres',5),(456,'Mirangaba',5),(457,'Mirante',5),(458,'Monte Santo',5),(459,'Morpará',5),(460,'Morro do Chapéu',5),(461,'Mortugaba',5),(462,'Mucugê',5),(463,'Mucuri',5),(464,'Mulungu do Morro',5),(465,'Mundo Novo',5),(466,'Muniz Ferreira',5),(467,'Muquém de São Francisco',5),(468,'Muritiba',5),(469,'Mutuípe',5),(470,'Nazaré',5),(471,'Nilo Peçanha',5),(472,'Nordestina',5),(473,'Nova Canaã',5),(474,'Nova Fátima',5),(475,'Nova Ibiá',5),(476,'Nova Itarana',5),(477,'Nova Redenção',5),(478,'Nova Soure',5),(479,'Nova Viçosa',5),(480,'Novo Horizonte',5),(481,'Novo Triunfo',5),(482,'Olindina',5),(483,'Oliveira dos Brejinhos',5),(484,'Ouriçangas',5),(485,'Ourolândia',5),(486,'Palmas de Monte Alto',5),(487,'Palmeiras',5),(488,'Paramirim',5),(489,'Paratinga',5),(490,'Paripiranga',5),(491,'Pau Brasil',5),(492,'Paulo Afonso',5),(493,'Pé de Serra',5),(494,'Pedrão',5),(495,'Pedro Alexandre',5),(496,'Piatã',5),(497,'Pilão Arcado',5),(498,'Pindaí',5),(499,'Pindobaçu',5),(500,'Pintadas',5),(501,'Piraí do Norte',5),(502,'Piripá',5),(503,'Piritiba',5),(504,'Planaltino',5),(505,'Planalto',5),(506,'Poções',5),(507,'Pojuca',5),(508,'Ponto Novo',5),(509,'Porto Seguro',5),(510,'Potiraguá',5),(511,'Prado',5),(512,'Presidente Dutra',5),(513,'Presidente Jânio Quadros',5),(514,'Presidente Tancredo Neves',5),(515,'Queimadas',5),(516,'Quijingue',5),(517,'Quixabeira',5),(518,'Rafael Jambeiro',5),(519,'Remanso',5),(520,'Retirolândia',5),(521,'Riachão das Neves',5),(522,'Riachão do Jacuípe',5),(523,'Riacho de Santana',5),(524,'Ribeira do Amparo',5),(525,'Ribeira do Pombal',5),(526,'Ribeirão do Largo',5),(527,'Rio de Contas',5),(528,'Rio do Antônio',5),(529,'Rio do Pires',5),(530,'Rio Real',5),(531,'Rodelas',5),(532,'Ruy Barbosa',5),(533,'Salinas da Margarida',5),(534,'Santa Bárbara',5),(535,'Santa Brígida',5),(536,'Santa Cruz Cabrália',5),(537,'Santa Cruz da Vitória',5),(538,'Santa Inês',5),(539,'Santa Luzia',5),(540,'Santa Maria da Vitória',5),(541,'Santa Rita de Cássia',5),(542,'Santa Teresinha',5),(543,'Santaluz',5),(544,'Santana',5),(545,'Santanópolis',5),(546,'Santo Amaro',5),(547,'Santo Antônio de Jesus',5),(548,'Santo Estêvão',5),(549,'São Desidério',5),(550,'São Domingos',5),(551,'São Felipe',5),(552,'São Félix',5),(553,'São Félix do Coribe',5),(554,'São Francisco do Conde',5),(555,'São Gabriel',5),(556,'São Gonçalo dos Campos',5),(557,'São José da Vitória',5),(558,'São José do Jacuípe',5),(559,'São Miguel das Matas',5),(560,'São Sebastião do Passé',5),(561,'Sapeaçu',5),(562,'Sátiro Dias',5),(563,'Saubara',5),(564,'Saúde',5),(565,'Seabra',5),(566,'Sebastião Laranjeiras',5),(567,'Senhor do Bonfim',5),(568,'Sento Sé',5),(569,'Serra do Ramalho',5),(570,'Serra Dourada',5),(571,'Serra Preta',5),(572,'Serrinha',5),(573,'Serrolândia',5),(574,'Simões Filho',5),(575,'Sítio do Mato',5),(576,'Sítio do Quinto',5),(577,'Sobradinho',5),(578,'Souto Soares',5),(579,'Tabocas do Brejo Velho',5),(580,'Tanhaçu',5),(581,'Tanque Novo',5),(582,'Tanquinho',5),(583,'Taperoá',5),(584,'Tapiramutá',5),(585,'Teixeira de Freitas',5),(586,'Teodoro Sampaio',5),(587,'Teofilândia',5),(588,'Teolândia',5),(589,'Terra Nova',5),(590,'Tremedal',5),(591,'Tucano',5),(592,'Uauá',5),(593,'Ubaíra',5),(594,'Ubaitaba',5),(595,'Ubatã',5),(596,'Uibaí',5),(597,'Umburanas',5),(598,'Una',5),(599,'Urandi',5),(600,'Uruçuca',5),(601,'Utinga',5),(602,'Valença',5),(603,'Valente',5),(604,'Várzea da Roça',5),(605,'Várzea do Poço',5),(606,'Várzea Nova',5),(607,'Varzedo',5),(608,'Vera Cruz',5),(609,'Vereda',5),(610,'Vitória da Conquista',5),(611,'Wagner',5),(612,'Wanderley',5),(613,'Wenceslau Guimarães',5),(614,'Xique-Xique',5),(615,'Abaiara',6),(616,'Acarape',6),(617,'Acaraú',6),(618,'Acopiara',6),(619,'Aiuaba',6),(620,'Alcântaras',6),(621,'Altaneira',6),(622,'Alto Santo',6),(623,'Amontada',6),(624,'Antonina do Norte',6),(625,'Apuiarés',6),(626,'Aquiraz',6),(627,'Aracati',6),(628,'Aracoiaba',6),(629,'Ararendá',6),(630,'Araripe',6),(631,'Aratuba',6),(632,'Arneiroz',6),(633,'Assaré',6),(634,'Aurora',6),(635,'Baixio',6),(636,'Banabuiú',6),(637,'Barbalha',6),(638,'Barreira',6),(639,'Barro',6),(640,'Barroquinha',6),(641,'Baturité',6),(642,'Beberibe',6),(643,'Bela Cruz',6),(644,'Boa Viagem',6),(645,'Brejo Santo',6),(646,'Camocim',6),(647,'Campos Sales',6),(648,'Canindé',6),(649,'Capistrano',6),(650,'Caridade',6),(651,'Cariré',6),(652,'Caririaçu',6),(653,'Cariús',6),(654,'Carnaubal',6),(655,'Cascavel',6),(656,'Catarina',6),(657,'Catunda',6),(658,'Caucaia',6),(659,'Cedro',6),(660,'Chaval',6),(661,'Choró',6),(662,'Chorozinho',6),(663,'Coreaú',6),(664,'Crateús',6),(665,'Crato',6),(666,'Croatá',6),(667,'Cruz',6),(668,'Deputado Irapuan Pinheiro',6),(669,'Ererê',6),(670,'Eusébio',6),(671,'Farias Brito',6),(672,'Forquilha',6),(673,'Fortim',6),(674,'Frecheirinha',6),(675,'General Sampaio',6),(676,'Graça',6),(677,'Granja',6),(678,'Granjeiro',6),(679,'Groaíras',6),(680,'Guaiúba',6),(681,'Guaraciaba do Norte',6),(682,'Guaramiranga',6),(683,'Hidrolândia',6),(684,'Horizonte',6),(685,'Ibaretama',6),(686,'Ibiapina',6),(687,'Ibicuitinga',6),(688,'Icapuí',6),(689,'Icó',6),(690,'Iguatu',6),(691,'Independência',6),(692,'Ipaporanga',6),(693,'Ipaumirim',6),(694,'Ipu',6),(695,'Ipueiras',6),(696,'Iracema',6),(697,'Irauçuba',6),(698,'Itaiçaba',6),(699,'Itaitinga',6),(700,'Itapagé',6),(701,'Itapipoca',6),(702,'Itapiúna',6),(703,'Itarema',6),(704,'Itatira',6),(705,'Jaguaretama',6),(706,'Jaguaribara',6),(707,'Jaguaribe',6),(708,'Jaguaruana',6),(709,'Jardim',6),(710,'Jati',6),(711,'Jijoca de Jericoacoara',6),(712,'Juazeiro do Norte',6),(713,'Jucás',6),(714,'Lavras da Mangabeira',6),(715,'Limoeiro do Norte',6),(716,'Madalena',6),(717,'Maracanaú',6),(718,'Maranguape',6),(719,'Marco',6),(720,'Martinópole',6),(721,'Massapê',6),(722,'Mauriti',6),(723,'Meruoca',6),(724,'Milagres',6),(725,'Milhã',6),(726,'Miraíma',6),(727,'Missão Velha',6),(728,'Mombaça',6),(729,'Monsenhor Tabosa',6),(730,'Morada Nova',6),(731,'Moraújo',6),(732,'Morrinhos',6),(733,'Mucambo',6),(734,'Mulungu',6),(735,'Nova Olinda',6),(736,'Nova Russas',6),(737,'Novo Oriente',6),(738,'Ocara',6),(739,'Orós',6),(740,'Pacajus',6),(741,'Pacatuba',6),(742,'Pacoti',6),(743,'Pacujá',6),(744,'Palhano',6),(745,'Palmácia',6),(746,'Paracuru',6),(747,'Paraipaba',6),(748,'Parambu',6),(749,'Paramoti',6),(750,'Pedra Branca',6),(751,'Penaforte',6),(752,'Pentecoste',6),(753,'Pereiro',6),(754,'Pindoretama',6),(755,'Piquet Carneiro',6),(756,'Pires Ferreira',6),(757,'Poranga',6),(758,'Porteiras',6),(759,'Potengi',6),(760,'Potiretama',6),(761,'Quiterianópolis',6),(762,'Quixadá',6),(763,'Quixelô',6),(764,'Quixeramobim',6),(765,'Quixeré',6),(766,'Redenção',6),(767,'Reriutaba',6),(768,'Russas',6),(769,'Saboeiro',6),(770,'Salitre',6),(771,'Santa Quitéria',6),(772,'Santana do Acaraú',6),(773,'Santana do Cariri',6),(774,'São Benedito',6),(775,'São Gonçalo do Amarante',6),(776,'São João do Jaguaribe',6),(777,'São Luís do Curu',6),(778,'Senador Pompeu',6),(779,'Senador Sá',6),(780,'Sobral',6),(781,'Solonópole',6),(782,'Tabuleiro do Norte',6),(783,'Tamboril',6),(784,'Tarrafas',6),(785,'Tauá',6),(786,'Tejuçuoca',6),(787,'Tianguá',6),(788,'Trairi',6),(789,'Tururu',6),(790,'Ubajara',6),(791,'Umari',6),(792,'Umirim',6),(793,'Uruburetama',6),(794,'Uruoca',6),(795,'Varjota',6),(796,'Várzea Alegre',6),(797,'Viçosa do Ceará',6),(798,'Brasília',7),(799,'Afonso Cláudio',8),(800,'Água Doce do Norte',8),(801,'Águia Branca',8),(802,'Alegre',8),(803,'Alfredo Chaves',8),(804,'Alto Rio Novo',8),(805,'Anchieta',8),(806,'Apiacá',8),(807,'Aracruz',8),(808,'Atilio Vivacqua',8),(809,'Baixo Guandu',8),(810,'Barra de São Francisco',8),(811,'Boa Esperança',8),(812,'Bom Jesus do Norte',8),(813,'Brejetuba',8),(814,'Cachoeiro de Itapemirim',8),(815,'Cariacica',8),(816,'Castelo',8),(817,'Colatina',8),(818,'Conceição da Barra',8),(819,'Conceição do Castelo',8),(820,'Divino de São Lourenço',8),(821,'Domingos Martins',8),(822,'Dores do Rio Preto',8),(823,'Ecoporanga',8),(824,'Fundão',8),(825,'Governador Lindenberg',8),(826,'Guaçuí',8),(827,'Guarapari',8),(828,'Ibatiba',8),(829,'Ibiraçu',8),(830,'Ibitirama',8),(831,'Iconha',8),(832,'Irupi',8),(833,'Itaguaçu',8),(834,'Itapemirim',8),(835,'Itarana',8),(836,'Iúna',8),(837,'Jaguaré',8),(838,'Jerônimo Monteiro',8),(839,'João Neiva',8),(840,'Laranja da Terra',8),(841,'Linhares',8),(842,'Mantenópolis',8),(843,'Marataízes',8),(844,'Marechal Floriano',8),(845,'Marilândia',8),(846,'Mimoso do Sul',8),(847,'Montanha',8),(848,'Mucurici',8),(849,'Muniz Freire',8),(850,'Muqui',8),(851,'Nova Venécia',8),(852,'Pancas',8),(853,'Pedro Canário',8),(854,'Pinheiros',8),(855,'Piúma',8),(856,'Ponto Belo',8),(857,'Presidente Kennedy',8),(858,'Rio Bananal',8),(859,'Rio Novo do Sul',8),(860,'Santa Leopoldina',8),(861,'Santa Maria de Jetibá',8),(862,'Santa Teresa',8),(863,'São Domingos do Norte',8),(864,'São Gabriel da Palha',8),(865,'São José do Calçado',8),(866,'São Mateus',8),(867,'São Roque do Canaã',8),(868,'Serra',8),(869,'Sooretama',8),(870,'Vargem Alta',8),(871,'Venda Nova do Imigrante',8),(872,'Viana',8),(873,'Vila Pavão',8),(874,'Vila Valério',8),(875,'Vila Velha',8),(876,'Abadia de Goiás',9),(877,'Abadiânia',9),(878,'Acreúna',9),(879,'Adelândia',9),(880,'Água Fria de Goiás',9),(881,'Água Limpa',9),(882,'Águas Lindas de Goiás',9),(883,'Alexânia',9),(884,'Aloândia',9),(885,'Alto Horizonte',9),(886,'Alto Paraíso de Goiás',9),(887,'Alvorada do Norte',9),(888,'Amaralina',9),(889,'Americano do Brasil',9),(890,'Amorinópolis',9),(891,'Anápolis',9),(892,'Anhanguera',9),(893,'Anicuns',9),(894,'Aparecida de Goiânia',9),(895,'Aparecida do Rio Doce',9),(896,'Aporé',9),(897,'Araçu',9),(898,'Aragarças',9),(899,'Aragoiânia',9),(900,'Araguapaz',9),(901,'Arenópolis',9),(902,'Aruanã',9),(903,'Aurilândia',9),(904,'Avelinópolis',9),(905,'Baliza',9),(906,'Barro Alto',9),(907,'Bela Vista de Goiás',9),(908,'Bom Jardim de Goiás',9),(909,'Bom Jesus de Goiás',9),(910,'Bonfinópolis',9),(911,'Bonópolis',9),(912,'Brazabrantes',9),(913,'Britânia',9),(914,'Buriti Alegre',9),(915,'Buriti de Goiás',9),(916,'Buritinópolis',9),(917,'Cabeceiras',9),(918,'Cachoeira Alta',9),(919,'Cachoeira de Goiás',9),(920,'Cachoeira Dourada',9),(921,'Caçu',9),(922,'Caiapônia',9),(923,'Caldas Novas',9),(924,'Caldazinha',9),(925,'Campestre de Goiás',9),(926,'Campinaçu',9),(927,'Campinorte',9),(928,'Campo Alegre de Goiás',9),(929,'Campo Limpo de Goiás',9),(930,'Campos Belos',9),(931,'Campos Verdes',9),(932,'Carmo do Rio Verde',9),(933,'Castelândia',9),(934,'Catalão',9),(935,'Caturaí',9),(936,'Cavalcante',9),(937,'Ceres',9),(938,'Cezarina',9),(939,'Chapadão do Céu',9),(940,'Cidade Ocidental',9),(941,'Cocalzinho de Goiás',9),(942,'Colinas do Sul',9),(943,'Córrego do Ouro',9),(944,'Corumbá de Goiás',9),(945,'Corumbaíba',9),(946,'Cristalina',9),(947,'Cristianópolis',9),(948,'Crixás',9),(949,'Cromínia',9),(950,'Cumari',9),(951,'Damianópolis',9),(952,'Damolândia',9),(953,'Davinópolis',9),(954,'Diorama',9),(955,'Divinópolis de Goiás',9),(956,'Doverlândia',9),(957,'Edealina',9),(958,'Edéia',9),(959,'Estrela do Norte',9),(960,'Faina',9),(961,'Fazenda Nova',9),(962,'Firminópolis',9),(963,'Flores de Goiás',9),(964,'Formosa',9),(965,'Formoso',9),(966,'Gameleira de Goiás',9),(967,'Goianápolis',9),(968,'Goiandira',9),(969,'Goianésia',9),(970,'Goianira',9),(971,'Goiás',9),(972,'Goiatuba',9),(973,'Gouvelândia',9),(974,'Guapó',9),(975,'Guaraíta',9),(976,'Guarani de Goiás',9),(977,'Guarinos',9),(978,'Heitoraí',9),(979,'Hidrolândia',9),(980,'Hidrolina',9),(981,'Iaciara',9),(982,'Inaciolândia',9),(983,'Indiara',9),(984,'Inhumas',9),(985,'Ipameri',9),(986,'Ipiranga de Goiás',9),(987,'Iporá',9),(988,'Israelândia',9),(989,'Itaberaí',9),(990,'Itaguari',9),(991,'Itaguaru',9),(992,'Itajá',9),(993,'Itapaci',9),(994,'Itapirapuã',9),(995,'Itapuranga',9),(996,'Itarumã',9),(997,'Itauçu',9),(998,'Itumbiara',9),(999,'Ivolândia',9),(1000,'Jandaia',9),(1001,'Jaraguá',9),(1002,'Jataí',9),(1003,'Jaupaci',9),(1004,'Jesúpolis',9),(1005,'Joviânia',9),(1006,'Jussara',9),(1007,'Lagoa Santa',9),(1008,'Leopoldo de Bulhões',9),(1009,'Luziânia',9),(1010,'Mairipotaba',9),(1011,'Mambaí',9),(1012,'Mara Rosa',9),(1013,'Marzagão',9),(1014,'Matrinchã',9),(1015,'Maurilândia',9),(1016,'Mimoso de Goiás',9),(1017,'Minaçu',9),(1018,'Mineiros',9),(1019,'Moiporá',9),(1020,'Monte Alegre de Goiás',9),(1021,'Montes Claros de Goiás',9),(1022,'Montividiu',9),(1023,'Montividiu do Norte',9),(1024,'Morrinhos',9),(1025,'Morro Agudo de Goiás',9),(1026,'Mossâmedes',9),(1027,'Mozarlândia',9),(1028,'Mundo Novo',9),(1029,'Mutunópolis',9),(1030,'Nazário',9),(1031,'Nerópolis',9),(1032,'Niquelândia',9),(1033,'Nova América',9),(1034,'Nova Aurora',9),(1035,'Nova Crixás',9),(1036,'Nova Glória',9),(1037,'Nova Iguaçu de Goiás',9),(1038,'Nova Roma',9),(1039,'Nova Veneza',9),(1040,'Novo Brasil',9),(1041,'Novo Gama',9),(1042,'Novo Planalto',9),(1043,'Orizona',9),(1044,'Ouro Verde de Goiás',9),(1045,'Ouvidor',9),(1046,'Padre Bernardo',9),(1047,'Palestina de Goiás',9),(1048,'Palmeiras de Goiás',9),(1049,'Palmelo',9),(1050,'Palminópolis',9),(1051,'Panamá',9),(1052,'Paranaiguara',9),(1053,'Paraúna',9),(1054,'Perolândia',9),(1055,'Petrolina de Goiás',9),(1056,'Pilar de Goiás',9),(1057,'Piracanjuba',9),(1058,'Piranhas',9),(1059,'Pirenópolis',9),(1060,'Pires do Rio',9),(1061,'Planaltina',9),(1062,'Pontalina',9),(1063,'Porangatu',9),(1064,'Porteirão',9),(1065,'Portelândia',9),(1066,'Posse',9),(1067,'Professor Jamil',9),(1068,'Quirinópolis',9),(1069,'Rialma',9),(1070,'Rianápolis',9),(1071,'Rio Quente',9),(1072,'Rio Verde',9),(1073,'Rubiataba',9),(1074,'Sanclerlândia',9),(1075,'Santa Bárbara de Goiás',9),(1076,'Santa Cruz de Goiás',9),(1077,'Santa Fé de Goiás',9),(1078,'Santa Helena de Goiás',9),(1079,'Santa Isabel',9),(1080,'Santa Rita do Araguaia',9),(1081,'Santa Rita do Novo Destino',9),(1082,'Santa Rosa de Goiás',9),(1083,'Santa Tereza de Goiás',9),(1084,'Santa Terezinha de Goiás',9),(1085,'Santo Antônio da Barra',9),(1086,'Santo Antônio de Goiás',9),(1087,'Santo Antônio do Descoberto',9),(1088,'São Domingos',9),(1089,'São Francisco de Goiás',9),(1090,'São João d`Aliança',9),(1091,'São João da Paraúna',9),(1092,'São Luís de Montes Belos',9),(1093,'São Luíz do Norte',9),(1094,'São Miguel do Araguaia',9),(1095,'São Miguel do Passa Quatro',9),(1096,'São Patrício',9),(1097,'São Simão',9),(1098,'Senador Canedo',9),(1099,'Serranópolis',9),(1100,'Silvânia',9),(1101,'Simolândia',9),(1102,'Sítio d`Abadia',9),(1103,'Taquaral de Goiás',9),(1104,'Teresina de Goiás',9),(1105,'Terezópolis de Goiás',9),(1106,'Três Ranchos',9),(1107,'Trindade',9),(1108,'Trombas',9),(1109,'Turvânia',9),(1110,'Turvelândia',9),(1111,'Uirapuru',9),(1112,'Uruaçu',9),(1113,'Uruana',9),(1114,'Urutaí',9),(1115,'Valparaíso de Goiás',9),(1116,'Varjão',9),(1117,'Vianópolis',9),(1118,'Vicentinópolis',9),(1119,'Vila Boa',9),(1120,'Vila Propício',9),(1121,'Açailândia',10),(1122,'Afonso Cunha',10),(1123,'Água Doce do Maranhão',10),(1124,'Alcântara',10),(1125,'Aldeias Altas',10),(1126,'Altamira do Maranhão',10),(1127,'Alto Alegre do Maranhão',10),(1128,'Alto Alegre do Pindaré',10),(1129,'Alto Parnaíba',10),(1130,'Amapá do Maranhão',10),(1131,'Amarante do Maranhão',10),(1132,'Anajatuba',10),(1133,'Anapurus',10),(1134,'Apicum-Açu',10),(1135,'Araguanã',10),(1136,'Araioses',10),(1137,'Arame',10),(1138,'Arari',10),(1139,'Axixá',10),(1140,'Bacabal',10),(1141,'Bacabeira',10),(1142,'Bacuri',10),(1143,'Bacurituba',10),(1144,'Balsas',10),(1145,'Barão de Grajaú',10),(1146,'Barra do Corda',10),(1147,'Barreirinhas',10),(1148,'Bela Vista do Maranhão',10),(1149,'Belágua',10),(1150,'Benedito Leite',10),(1151,'Bequimão',10),(1152,'Bernardo do Mearim',10),(1153,'Boa Vista do Gurupi',10),(1154,'Bom Jardim',10),(1155,'Bom Jesus das Selvas',10),(1156,'Bom Lugar',10),(1157,'Brejo',10),(1158,'Brejo de Areia',10),(1159,'Buriti',10),(1160,'Buriti Bravo',10),(1161,'Buriticupu',10),(1162,'Buritirana',10),(1163,'Cachoeira Grande',10),(1164,'Cajapió',10),(1165,'Cajari',10),(1166,'Campestre do Maranhão',10),(1167,'Cândido Mendes',10),(1168,'Cantanhede',10),(1169,'Capinzal do Norte',10),(1170,'Carolina',10),(1171,'Carutapera',10),(1172,'Caxias',10),(1173,'Cedral',10),(1174,'Central do Maranhão',10),(1175,'Centro do Guilherme',10),(1176,'Centro Novo do Maranhão',10),(1177,'Chapadinha',10),(1178,'Cidelândia',10),(1179,'Codó',10),(1180,'Coelho Neto',10),(1181,'Colinas',10),(1182,'Conceição do Lago-Açu',10),(1183,'Coroatá',10),(1184,'Cururupu',10),(1185,'Davinópolis',10),(1186,'Dom Pedro',10),(1187,'Duque Bacelar',10),(1188,'Esperantinópolis',10),(1189,'Estreito',10),(1190,'Feira Nova do Maranhão',10),(1191,'Fernando Falcão',10),(1192,'Formosa da Serra Negra',10),(1193,'Fortaleza dos Nogueiras',10),(1194,'Fortuna',10),(1195,'Godofredo Viana',10),(1196,'Gonçalves Dias',10),(1197,'Governador Archer',10),(1198,'Governador Edison Lobão',10),(1199,'Governador Eugênio Barros',10),(1200,'Governador Luiz Rocha',10),(1201,'Governador Newton Bello',10),(1202,'Governador Nunes Freire',10),(1203,'Graça Aranha',10),(1204,'Grajaú',10),(1205,'Guimarães',10),(1206,'Humberto de Campos',10),(1207,'Icatu',10),(1208,'Igarapé do Meio',10),(1209,'Igarapé Grande',10),(1210,'Imperatriz',10),(1211,'Itaipava do Grajaú',10),(1212,'Itapecuru Mirim',10),(1213,'Itinga do Maranhão',10),(1214,'Jatobá',10),(1215,'Jenipapo dos Vieiras',10),(1216,'João Lisboa',10),(1217,'Joselândia',10),(1218,'Junco do Maranhão',10),(1219,'Lago da Pedra',10),(1220,'Lago do Junco',10),(1221,'Lago dos Rodrigues',10),(1222,'Lago Verde',10),(1223,'Lagoa do Mato',10),(1224,'Lagoa Grande do Maranhão',10),(1225,'Lajeado Novo',10),(1226,'Lima Campos',10),(1227,'Loreto',10),(1228,'Luís Domingues',10),(1229,'Magalhães de Almeida',10),(1230,'Maracaçumé',10),(1231,'Marajá do Sena',10),(1232,'Maranhãozinho',10),(1233,'Mata Roma',10),(1234,'Matinha',10),(1235,'Matões',10),(1236,'Matões do Norte',10),(1237,'Milagres do Maranhão',10),(1238,'Mirador',10),(1239,'Miranda do Norte',10),(1240,'Mirinzal',10),(1241,'Monção',10),(1242,'Montes Altos',10),(1243,'Morros',10),(1244,'Nina Rodrigues',10),(1245,'Nova Colinas',10),(1246,'Nova Iorque',10),(1247,'Nova Olinda do Maranhão',10),(1248,'Olho d`Água das Cunhãs',10),(1249,'Olinda Nova do Maranhão',10),(1250,'Paço do Lumiar',10),(1251,'Palmeirândia',10),(1252,'Paraibano',10),(1253,'Parnarama',10),(1254,'Passagem Franca',10),(1255,'Pastos Bons',10),(1256,'Paulino Neves',10),(1257,'Paulo Ramos',10),(1258,'Pedreiras',10),(1259,'Pedro do Rosário',10),(1260,'Penalva',10),(1261,'Peri Mirim',10),(1262,'Peritoró',10),(1263,'Pindaré-Mirim',10),(1264,'Pinheiro',10),(1265,'Pio XII',10),(1266,'Pirapemas',10),(1267,'Poção de Pedras',10),(1268,'Porto Franco',10),(1269,'Porto Rico do Maranhão',10),(1270,'Presidente Dutra',10),(1271,'Presidente Juscelino',10),(1272,'Presidente Médici',10),(1273,'Presidente Sarney',10),(1274,'Presidente Vargas',10),(1275,'Primeira Cruz',10),(1276,'Raposa',10),(1277,'Riachão',10),(1278,'Ribamar Fiquene',10),(1279,'Rosário',10),(1280,'Sambaíba',10),(1281,'Santa Filomena do Maranhão',10),(1282,'Santa Helena',10),(1283,'Santa Inês',10),(1284,'Santa Luzia',10),(1285,'Santa Luzia do Paruá',10),(1286,'Santa Quitéria do Maranhão',10),(1287,'Santa Rita',10),(1288,'Santana do Maranhão',10),(1289,'Santo Amaro do Maranhão',10),(1290,'Santo Antônio dos Lopes',10),(1291,'São Benedito do Rio Preto',10),(1292,'São Bento',10),(1293,'São Bernardo',10),(1294,'São Domingos do Azeitão',10),(1295,'São Domingos do Maranhão',10),(1296,'São Félix de Balsas',10),(1297,'São Francisco do Brejão',10),(1298,'São Francisco do Maranhão',10),(1299,'São João Batista',10),(1300,'São João do Carú',10),(1301,'São João do Paraíso',10),(1302,'São João do Soter',10),(1303,'São João dos Patos',10),(1304,'São José de Ribamar',10),(1305,'São José dos Basílios',10),(1306,'São Luís Gonzaga do Maranhão',10),(1307,'São Mateus do Maranhão',10),(1308,'São Pedro da Água Branca',10),(1309,'São Pedro dos Crentes',10),(1310,'São Raimundo das Mangabeiras',10),(1311,'São Raimundo do Doca Bezerra',10),(1312,'São Roberto',10),(1313,'São Vicente Ferrer',10),(1314,'Satubinha',10),(1315,'Senador Alexandre Costa',10),(1316,'Senador La Rocque',10),(1317,'Serrano do Maranhão',10),(1318,'Sítio Novo',10),(1319,'Sucupira do Norte',10),(1320,'Sucupira do Riachão',10),(1321,'Tasso Fragoso',10),(1322,'Timbiras',10),(1323,'Timon',10),(1324,'Trizidela do Vale',10),(1325,'Tufilândia',10),(1326,'Tuntum',10),(1327,'Turiaçu',10),(1328,'Turilândia',10),(1329,'Tutóia',10),(1330,'Urbano Santos',10),(1331,'Vargem Grande',10),(1332,'Viana',10),(1333,'Vila Nova dos Martírios',10),(1334,'Vitória do Mearim',10),(1335,'Vitorino Freire',10),(1336,'Zé Doca',10),(1337,'Abadia dos Dourados',11),(1338,'Abaeté',11),(1339,'Abre Campo',11),(1340,'Acaiaca',11),(1341,'Açucena',11),(1342,'Água Boa',11),(1343,'Água Comprida',11),(1344,'Aguanil',11),(1345,'Águas Formosas',11),(1346,'Águas Vermelhas',11),(1347,'Aimorés',11),(1348,'Aiuruoca',11),(1349,'Alagoa',11),(1350,'Albertina',11),(1351,'Além Paraíba',11),(1352,'Alfenas',11),(1353,'Alfredo Vasconcelos',11),(1354,'Almenara',11),(1355,'Alpercata',11),(1356,'Alpinópolis',11),(1357,'Alterosa',11),(1358,'Alto Caparaó',11),(1359,'Alto Jequitibá',11),(1360,'Alto Rio Doce',11),(1361,'Alvarenga',11),(1362,'Alvinópolis',11),(1363,'Alvorada de Minas',11),(1364,'Amparo do Serra',11),(1365,'Andradas',11),(1366,'Andrelândia',11),(1367,'Angelândia',11),(1368,'Antônio Carlos',11),(1369,'Antônio Dias',11),(1370,'Antônio Prado de Minas',11),(1371,'Araçaí',11),(1372,'Aracitaba',11),(1373,'Araçuaí',11),(1374,'Araguari',11),(1375,'Arantina',11),(1376,'Araponga',11),(1377,'Araporã',11),(1378,'Arapuá',11),(1379,'Araújos',11),(1380,'Araxá',11),(1381,'Arceburgo',11),(1382,'Arcos',11),(1383,'Areado',11),(1384,'Argirita',11),(1385,'Aricanduva',11),(1386,'Arinos',11),(1387,'Astolfo Dutra',11),(1388,'Ataléia',11),(1389,'Augusto de Lima',11),(1390,'Baependi',11),(1391,'Baldim',11),(1392,'Bambuí',11),(1393,'Bandeira',11),(1394,'Bandeira do Sul',11),(1395,'Barão de Cocais',11),(1396,'Barão de Monte Alto',11),(1397,'Barbacena',11),(1398,'Barra Longa',11),(1399,'Barroso',11),(1400,'Bela Vista de Minas',11),(1401,'Belmiro Braga',11),(1402,'Belo Oriente',11),(1403,'Belo Vale',11),(1404,'Berilo',11),(1405,'Berizal',11),(1406,'Bertópolis',11),(1407,'Betim',11),(1408,'Bias Fortes',11),(1409,'Bicas',11),(1410,'Biquinhas',11),(1411,'Boa Esperança',11),(1412,'Bocaina de Minas',11),(1413,'Bocaiúva',11),(1414,'Bom Despacho',11),(1415,'Bom Jardim de Minas',11),(1416,'Bom Jesus da Penha',11),(1417,'Bom Jesus do Amparo',11),(1418,'Bom Jesus do Galho',11),(1419,'Bom Repouso',11),(1420,'Bom Sucesso',11),(1421,'Bonfim',11),(1422,'Bonfinópolis de Minas',11),(1423,'Bonito de Minas',11),(1424,'Borda da Mata',11),(1425,'Botelhos',11),(1426,'Botumirim',11),(1427,'Brás Pires',11),(1428,'Brasilândia de Minas',11),(1429,'Brasília de Minas',11),(1430,'Brasópolis',11),(1431,'Braúnas',11),(1432,'Brumadinho',11),(1433,'Bueno Brandão',11),(1434,'Buenópolis',11),(1435,'Bugre',11),(1436,'Buritis',11),(1437,'Buritizeiro',11),(1438,'Cabeceira Grande',11),(1439,'Cabo Verde',11),(1440,'Cachoeira da Prata',11),(1441,'Cachoeira de Minas',11),(1442,'Cachoeira de Pajeú',11),(1443,'Cachoeira Dourada',11),(1444,'Caetanópolis',11),(1445,'Caeté',11),(1446,'Caiana',11),(1447,'Cajuri',11),(1448,'Caldas',11),(1449,'Camacho',11),(1450,'Camanducaia',11),(1451,'Cambuí',11),(1452,'Cambuquira',11),(1453,'Campanário',11),(1454,'Campanha',11),(1455,'Campestre',11),(1456,'Campina Verde',11),(1457,'Campo Azul',11),(1458,'Campo Belo',11),(1459,'Campo do Meio',11),(1460,'Campo Florido',11),(1461,'Campos Altos',11),(1462,'Campos Gerais',11),(1463,'Cana Verde',11),(1464,'Canaã',11),(1465,'Canápolis',11),(1466,'Candeias',11),(1467,'Cantagalo',11),(1468,'Caparaó',11),(1469,'Capela Nova',11),(1470,'Capelinha',11),(1471,'Capetinga',11),(1472,'Capim Branco',11),(1473,'Capinópolis',11),(1474,'Capitão Andrade',11),(1475,'Capitão Enéas',11),(1476,'Capitólio',11),(1477,'Caputira',11),(1478,'Caraí',11),(1479,'Caranaíba',11),(1480,'Carandaí',11),(1481,'Carangola',11),(1482,'Caratinga',11),(1483,'Carbonita',11),(1484,'Careaçu',11),(1485,'Carlos Chagas',11),(1486,'Carmésia',11),(1487,'Carmo da Cachoeira',11),(1488,'Carmo da Mata',11),(1489,'Carmo de Minas',11),(1490,'Carmo do Cajuru',11),(1491,'Carmo do Paranaíba',11),(1492,'Carmo do Rio Claro',11),(1493,'Carmópolis de Minas',11),(1494,'Carneirinho',11),(1495,'Carrancas',11),(1496,'Carvalhópolis',11),(1497,'Carvalhos',11),(1498,'Casa Grande',11),(1499,'Cascalho Rico',11),(1500,'Cássia',11),(1501,'Cataguases',11),(1502,'Catas Altas',11),(1503,'Catas Altas da Noruega',11),(1504,'Catuji',11),(1505,'Catuti',11),(1506,'Caxambu',11),(1507,'Cedro do Abaeté',11),(1508,'Central de Minas',11),(1509,'Centralina',11),(1510,'Chácara',11),(1511,'Chalé',11),(1512,'Chapada do Norte',11),(1513,'Chapada Gaúcha',11),(1514,'Chiador',11),(1515,'Cipotânea',11),(1516,'Claraval',11),(1517,'Claro dos Poções',11),(1518,'Cláudio',11),(1519,'Coimbra',11),(1520,'Coluna',11),(1521,'Comendador Gomes',11),(1522,'Comercinho',11),(1523,'Conceição da Aparecida',11),(1524,'Conceição da Barra de Minas',11),(1525,'Conceição das Alagoas',11),(1526,'Conceição das Pedras',11),(1527,'Conceição de Ipanema',11),(1528,'Conceição do Mato Dentro',11),(1529,'Conceição do Pará',11),(1530,'Conceição do Rio Verde',11),(1531,'Conceição dos Ouros',11),(1532,'Cônego Marinho',11),(1533,'Confins',11),(1534,'Congonhal',11),(1535,'Congonhas',11),(1536,'Congonhas do Norte',11),(1537,'Conquista',11),(1538,'Conselheiro Lafaiete',11),(1539,'Conselheiro Pena',11),(1540,'Consolação',11),(1541,'Contagem',11),(1542,'Coqueiral',11),(1543,'Coração de Jesus',11),(1544,'Cordisburgo',11),(1545,'Cordislândia',11),(1546,'Corinto',11),(1547,'Coroaci',11),(1548,'Coromandel',11),(1549,'Coronel Fabriciano',11),(1550,'Coronel Murta',11),(1551,'Coronel Pacheco',11),(1552,'Coronel Xavier Chaves',11),(1553,'Córrego Danta',11),(1554,'Córrego do Bom Jesus',11),(1555,'Córrego Fundo',11),(1556,'Córrego Novo',11),(1557,'Couto de Magalhães de Minas',11),(1558,'Crisólita',11),(1559,'Cristais',11),(1560,'Cristália',11),(1561,'Cristiano Otoni',11),(1562,'Cristina',11),(1563,'Crucilândia',11),(1564,'Cruzeiro da Fortaleza',11),(1565,'Cruzília',11),(1566,'Cuparaque',11),(1567,'Curral de Dentro',11),(1568,'Curvelo',11),(1569,'Datas',11),(1570,'Delfim Moreira',11),(1571,'Delfinópolis',11),(1572,'Delta',11),(1573,'Descoberto',11),(1574,'Desterro de Entre Rios',11),(1575,'Desterro do Melo',11),(1576,'Diamantina',11),(1577,'Diogo de Vasconcelos',11),(1578,'Dionísio',11),(1579,'Divinésia',11),(1580,'Divino',11),(1581,'Divino das Laranjeiras',11),(1582,'Divinolândia de Minas',11),(1583,'Divinópolis',11),(1584,'Divisa Alegre',11),(1585,'Divisa Nova',11),(1586,'Divisópolis',11),(1587,'Dom Bosco',11),(1588,'Dom Cavati',11),(1589,'Dom Joaquim',11),(1590,'Dom Silvério',11),(1591,'Dom Viçoso',11),(1592,'Dona Eusébia',11),(1593,'Dores de Campos',11),(1594,'Dores de Guanhães',11),(1595,'Dores do Indaiá',11),(1596,'Dores do Turvo',11),(1597,'Doresópolis',11),(1598,'Douradoquara',11),(1599,'Durandé',11),(1600,'Elói Mendes',11),(1601,'Engenheiro Caldas',11),(1602,'Engenheiro Navarro',11),(1603,'Entre Folhas',11),(1604,'Entre Rios de Minas',11),(1605,'Ervália',11),(1606,'Esmeraldas',11),(1607,'Espera Feliz',11),(1608,'Espinosa',11),(1609,'Espírito Santo do Dourado',11),(1610,'Estiva',11),(1611,'Estrela Dalva',11),(1612,'Estrela do Indaiá',11),(1613,'Estrela do Sul',11),(1614,'Eugenópolis',11),(1615,'Ewbank da Câmara',11),(1616,'Extrema',11),(1617,'Fama',11),(1618,'Faria Lemos',11),(1619,'Felício dos Santos',11),(1620,'Felisburgo',11),(1621,'Felixlândia',11),(1622,'Fernandes Tourinho',11),(1623,'Ferros',11),(1624,'Fervedouro',11),(1625,'Florestal',11),(1626,'Formiga',11),(1627,'Formoso',11),(1628,'Fortaleza de Minas',11),(1629,'Fortuna de Minas',11),(1630,'Francisco Badaró',11),(1631,'Francisco Dumont',11),(1632,'Francisco Sá',11),(1633,'Franciscópolis',11),(1634,'Frei Gaspar',11),(1635,'Frei Inocêncio',11),(1636,'Frei Lagonegro',11),(1637,'Fronteira',11),(1638,'Fronteira dos Vales',11),(1639,'Fruta de Leite',11),(1640,'Frutal',11),(1641,'Funilândia',11),(1642,'Galiléia',11),(1643,'Gameleiras',11),(1644,'Glaucilândia',11),(1645,'Goiabeira',11),(1646,'Goianá',11),(1647,'Gonçalves',11),(1648,'Gonzaga',11),(1649,'Gouveia',11),(1650,'Governador Valadares',11),(1651,'Grão Mogol',11),(1652,'Grupiara',11),(1653,'Guanhães',11),(1654,'Guapé',11),(1655,'Guaraciaba',11),(1656,'Guaraciama',11),(1657,'Guaranésia',11),(1658,'Guarani',11),(1659,'Guarará',11),(1660,'Guarda-Mor',11),(1661,'Guaxupé',11),(1662,'Guidoval',11),(1663,'Guimarânia',11),(1664,'Guiricema',11),(1665,'Gurinhatã',11),(1666,'Heliodora',11),(1667,'Iapu',11),(1668,'Ibertioga',11),(1669,'Ibiá',11),(1670,'Ibiaí',11),(1671,'Ibiracatu',11),(1672,'Ibiraci',11),(1673,'Ibirité',11),(1674,'Ibitiúra de Minas',11),(1675,'Ibituruna',11),(1676,'Icaraí de Minas',11),(1677,'Igarapé',11),(1678,'Igaratinga',11),(1679,'Iguatama',11),(1680,'Ijaci',11),(1681,'Ilicínea',11),(1682,'Imbé de Minas',11),(1683,'Inconfidentes',11),(1684,'Indaiabira',11),(1685,'Indianópolis',11),(1686,'Ingaí',11),(1687,'Inhapim',11),(1688,'Inhaúma',11),(1689,'Inimutaba',11),(1690,'Ipaba',11),(1691,'Ipanema',11),(1692,'Ipatinga',11),(1693,'Ipiaçu',11),(1694,'Ipuiúna',11),(1695,'Iraí de Minas',11),(1696,'Itabira',11),(1697,'Itabirinha',11),(1698,'Itabirito',11),(1699,'Itacambira',11),(1700,'Itacarambi',11),(1701,'Itaguara',11),(1702,'Itaipé',11),(1703,'Itajubá',11),(1704,'Itamarandiba',11),(1705,'Itamarati de Minas',11),(1706,'Itambacuri',11),(1707,'Itambé do Mato Dentro',11),(1708,'Itamogi',11),(1709,'Itamonte',11),(1710,'Itanhandu',11),(1711,'Itanhomi',11),(1712,'Itaobim',11),(1713,'Itapagipe',11),(1714,'Itapecerica',11),(1715,'Itapeva',11),(1716,'Itatiaiuçu',11),(1717,'Itaú de Minas',11),(1718,'Itaúna',11),(1719,'Itaverava',11),(1720,'Itinga',11),(1721,'Itueta',11),(1722,'Ituiutaba',11),(1723,'Itumirim',11),(1724,'Iturama',11),(1725,'Itutinga',11),(1726,'Jaboticatubas',11),(1727,'Jacinto',11),(1728,'Jacuí',11),(1729,'Jacutinga',11),(1730,'Jaguaraçu',11),(1731,'Jaíba',11),(1732,'Jampruca',11),(1733,'Janaúba',11),(1734,'Januária',11),(1735,'Japaraíba',11),(1736,'Japonvar',11),(1737,'Jeceaba',11),(1738,'Jenipapo de Minas',11),(1739,'Jequeri',11),(1740,'Jequitaí',11),(1741,'Jequitibá',11),(1742,'Jequitinhonha',11),(1743,'Jesuânia',11),(1744,'Joaíma',11),(1745,'Joanésia',11),(1746,'João Monlevade',11),(1747,'João Pinheiro',11),(1748,'Joaquim Felício',11),(1749,'Jordânia',11),(1750,'José Gonçalves de Minas',11),(1751,'José Raydan',11),(1752,'Josenópolis',11),(1753,'Juatuba',11),(1754,'Juiz de Fora',11),(1755,'Juramento',11),(1756,'Juruaia',11),(1757,'Juvenília',11),(1758,'Ladainha',11),(1759,'Lagamar',11),(1760,'Lagoa da Prata',11),(1761,'Lagoa dos Patos',11),(1762,'Lagoa Dourada',11),(1763,'Lagoa Formosa',11),(1764,'Lagoa Grande',11),(1765,'Lagoa Santa',11),(1766,'Lajinha',11),(1767,'Lambari',11),(1768,'Lamim',11),(1769,'Laranjal',11),(1770,'Lassance',11),(1771,'Lavras',11),(1772,'Leandro Ferreira',11),(1773,'Leme do Prado',11),(1774,'Leopoldina',11),(1775,'Liberdade',11),(1776,'Lima Duarte',11),(1777,'Limeira do Oeste',11),(1778,'Lontra',11),(1779,'Luisburgo',11),(1780,'Luislândia',11),(1781,'Luminárias',11),(1782,'Luz',11),(1783,'Machacalis',11),(1784,'Machado',11),(1785,'Madre de Deus de Minas',11),(1786,'Malacacheta',11),(1787,'Mamonas',11),(1788,'Manga',11),(1789,'Manhuaçu',11),(1790,'Manhumirim',11),(1791,'Mantena',11),(1792,'Mar de Espanha',11),(1793,'Maravilhas',11),(1794,'Maria da Fé',11),(1795,'Mariana',11),(1796,'Marilac',11),(1797,'Mário Campos',11),(1798,'Maripá de Minas',11),(1799,'Marliéria',11),(1800,'Marmelópolis',11),(1801,'Martinho Campos',11),(1802,'Martins Soares',11),(1803,'Mata Verde',11),(1804,'Materlândia',11),(1805,'Mateus Leme',11),(1806,'Mathias Lobato',11),(1807,'Matias Barbosa',11),(1808,'Matias Cardoso',11),(1809,'Matipó',11),(1810,'Mato Verde',11),(1811,'Matozinhos',11),(1812,'Matutina',11),(1813,'Medeiros',11),(1814,'Medina',11),(1815,'Mendes Pimentel',11),(1816,'Mercês',11),(1817,'Mesquita',11),(1818,'Minas Novas',11),(1819,'Minduri',11),(1820,'Mirabela',11),(1821,'Miradouro',11),(1822,'Miraí',11),(1823,'Miravânia',11),(1824,'Moeda',11),(1825,'Moema',11),(1826,'Monjolos',11),(1827,'Monsenhor Paulo',11),(1828,'Montalvânia',11),(1829,'Monte Alegre de Minas',11),(1830,'Monte Azul',11),(1831,'Monte Belo',11),(1832,'Monte Carmelo',11),(1833,'Monte Formoso',11),(1834,'Monte Santo de Minas',11),(1835,'Monte Sião',11),(1836,'Montes Claros',11),(1837,'Montezuma',11),(1838,'Morada Nova de Minas',11),(1839,'Morro da Garça',11),(1840,'Morro do Pilar',11),(1841,'Munhoz',11),(1842,'Muriaé',11),(1843,'Mutum',11),(1844,'Muzambinho',11),(1845,'Nacip Raydan',11),(1846,'Nanuque',11),(1847,'Naque',11),(1848,'Natalândia',11),(1849,'Natércia',11),(1850,'Nazareno',11),(1851,'Nepomuceno',11),(1852,'Ninheira',11),(1853,'Nova Belém',11),(1854,'Nova Era',11),(1855,'Nova Lima',11),(1856,'Nova Módica',11),(1857,'Nova Ponte',11),(1858,'Nova Porteirinha',11),(1859,'Nova Resende',11),(1860,'Nova Serrana',11),(1861,'Nova União',11),(1862,'Novo Cruzeiro',11),(1863,'Novo Oriente de Minas',11),(1864,'Novorizonte',11),(1865,'Olaria',11),(1866,'Olhos-d`Água',11),(1867,'Olímpio Noronha',11),(1868,'Oliveira',11),(1869,'Oliveira Fortes',11),(1870,'Onça de Pitangui',11),(1871,'Oratórios',11),(1872,'Orizânia',11),(1873,'Ouro Branco',11),(1874,'Ouro Fino',11),(1875,'Ouro Preto',11),(1876,'Ouro Verde de Minas',11),(1877,'Padre Carvalho',11),(1878,'Padre Paraíso',11),(1879,'Pai Pedro',11),(1880,'Paineiras',11),(1881,'Pains',11),(1882,'Paiva',11),(1883,'Palma',11),(1884,'Palmópolis',11),(1885,'Papagaios',11),(1886,'Pará de Minas',11),(1887,'Paracatu',11),(1888,'Paraguaçu',11),(1889,'Paraisópolis',11),(1890,'Paraopeba',11),(1891,'Passa Quatro',11),(1892,'Passa Tempo',11),(1893,'Passa-Vinte',11),(1894,'Passabém',11),(1895,'Passos',11),(1896,'Patis',11),(1897,'Patos de Minas',11),(1898,'Patrocínio',11),(1899,'Patrocínio do Muriaé',11),(1900,'Paula Cândido',11),(1901,'Paulistas',11),(1902,'Pavão',11),(1903,'Peçanha',11),(1904,'Pedra Azul',11),(1905,'Pedra Bonita',11),(1906,'Pedra do Anta',11),(1907,'Pedra do Indaiá',11),(1908,'Pedra Dourada',11),(1909,'Pedralva',11),(1910,'Pedras de Maria da Cruz',11),(1911,'Pedrinópolis',11),(1912,'Pedro Leopoldo',11),(1913,'Pedro Teixeira',11),(1914,'Pequeri',11),(1915,'Pequi',11),(1916,'Perdigão',11),(1917,'Perdizes',11),(1918,'Perdões',11),(1919,'Periquito',11),(1920,'Pescador',11),(1921,'Piau',11),(1922,'Piedade de Caratinga',11),(1923,'Piedade de Ponte Nova',11),(1924,'Piedade do Rio Grande',11),(1925,'Piedade dos Gerais',11),(1926,'Pimenta',11),(1927,'Pingo-d`Água',11),(1928,'Pintópolis',11),(1929,'Piracema',11),(1930,'Pirajuba',11),(1931,'Piranga',11),(1932,'Piranguçu',11),(1933,'Piranguinho',11),(1934,'Pirapetinga',11),(1935,'Pirapora',11),(1936,'Piraúba',11),(1937,'Pitangui',11),(1938,'Piumhi',11),(1939,'Planura',11),(1940,'Poço Fundo',11),(1941,'Poços de Caldas',11),(1942,'Pocrane',11),(1943,'Pompéu',11),(1944,'Ponte Nova',11),(1945,'Ponto Chique',11),(1946,'Ponto dos Volantes',11),(1947,'Porteirinha',11),(1948,'Porto Firme',11),(1949,'Poté',11),(1950,'Pouso Alegre',11),(1951,'Pouso Alto',11),(1952,'Prados',11),(1953,'Prata',11),(1954,'Pratápolis',11),(1955,'Pratinha',11),(1956,'Presidente Bernardes',11),(1957,'Presidente Juscelino',11),(1958,'Presidente Kubitschek',11),(1959,'Presidente Olegário',11),(1960,'Prudente de Morais',11),(1961,'Quartel Geral',11),(1962,'Queluzito',11),(1963,'Raposos',11),(1964,'Raul Soares',11),(1965,'Recreio',11),(1966,'Reduto',11),(1967,'Resende Costa',11),(1968,'Resplendor',11),(1969,'Ressaquinha',11),(1970,'Riachinho',11),(1971,'Riacho dos Machados',11),(1972,'Ribeirão das Neves',11),(1973,'Ribeirão Vermelho',11),(1974,'Rio Acima',11),(1975,'Rio Casca',11),(1976,'Rio do Prado',11),(1977,'Rio Doce',11),(1978,'Rio Espera',11),(1979,'Rio Manso',11),(1980,'Rio Novo',11),(1981,'Rio Paranaíba',11),(1982,'Rio Pardo de Minas',11),(1983,'Rio Piracicaba',11),(1984,'Rio Pomba',11),(1985,'Rio Preto',11),(1986,'Rio Vermelho',11),(1987,'Ritápolis',11),(1988,'Rochedo de Minas',11),(1989,'Rodeiro',11),(1990,'Romaria',11),(1991,'Rosário da Limeira',11),(1992,'Rubelita',11),(1993,'Rubim',11),(1994,'Sabará',11),(1995,'Sabinópolis',11),(1996,'Sacramento',11),(1997,'Salinas',11),(1998,'Salto da Divisa',11),(1999,'Santa Bárbara',11),(2000,'Santa Bárbara do Leste',11),(2001,'Santa Bárbara do Monte Verde',11),(2002,'Santa Bárbara do Tugúrio',11),(2003,'Santa Cruz de Minas',11),(2004,'Santa Cruz de Salinas',11),(2005,'Santa Cruz do Escalvado',11),(2006,'Santa Efigênia de Minas',11),(2007,'Santa Fé de Minas',11),(2008,'Santa Helena de Minas',11),(2009,'Santa Juliana',11),(2010,'Santa Luzia',11),(2011,'Santa Margarida',11),(2012,'Santa Maria de Itabira',11),(2013,'Santa Maria do Salto',11),(2014,'Santa Maria do Suaçuí',11),(2015,'Santa Rita de Caldas',11),(2016,'Santa Rita de Ibitipoca',11),(2017,'Santa Rita de Jacutinga',11),(2018,'Santa Rita de Minas',11),(2019,'Santa Rita do Itueto',11),(2020,'Santa Rita do Sapucaí',11),(2021,'Santa Rosa da Serra',11),(2022,'Santa Vitória',11),(2023,'Santana da Vargem',11),(2024,'Santana de Cataguases',11),(2025,'Santana de Pirapama',11),(2026,'Santana do Deserto',11),(2027,'Santana do Garambéu',11),(2028,'Santana do Jacaré',11),(2029,'Santana do Manhuaçu',11),(2030,'Santana do Paraíso',11),(2031,'Santana do Riacho',11),(2032,'Santana dos Montes',11),(2033,'Santo Antônio do Amparo',11),(2034,'Santo Antônio do Aventureiro',11),(2035,'Santo Antônio do Grama',11),(2036,'Santo Antônio do Itambé',11),(2037,'Santo Antônio do Jacinto',11),(2038,'Santo Antônio do Monte',11),(2039,'Santo Antônio do Retiro',11),(2040,'Santo Antônio do Rio Abaixo',11),(2041,'Santo Hipólito',11),(2042,'Santos Dumont',11),(2043,'São Bento Abade',11),(2044,'São Brás do Suaçuí',11),(2045,'São Domingos das Dores',11),(2046,'São Domingos do Prata',11),(2047,'São Félix de Minas',11),(2048,'São Francisco',11),(2049,'São Francisco de Paula',11),(2050,'São Francisco de Sales',11),(2051,'São Francisco do Glória',11),(2052,'São Geraldo',11),(2053,'São Geraldo da Piedade',11),(2054,'São Geraldo do Baixio',11),(2055,'São Gonçalo do Abaeté',11),(2056,'São Gonçalo do Pará',11),(2057,'São Gonçalo do Rio Abaixo',11),(2058,'São Gonçalo do Rio Preto',11),(2059,'São Gonçalo do Sapucaí',11),(2060,'São Gotardo',11),(2061,'São João Batista do Glória',11),(2062,'São João da Lagoa',11),(2063,'São João da Mata',11),(2064,'São João da Ponte',11),(2065,'São João das Missões',11),(2066,'São João del Rei',11),(2067,'São João do Manhuaçu',11),(2068,'São João do Manteninha',11),(2069,'São João do Oriente',11),(2070,'São João do Pacuí',11),(2071,'São João do Paraíso',11),(2072,'São João Evangelista',11),(2073,'São João Nepomuceno',11),(2074,'São Joaquim de Bicas',11),(2075,'São José da Barra',11),(2076,'São José da Lapa',11),(2077,'São José da Safira',11),(2078,'São José da Varginha',11),(2079,'São José do Alegre',11),(2080,'São José do Divino',11),(2081,'São José do Goiabal',11),(2082,'São José do Jacuri',11),(2083,'São José do Mantimento',11),(2084,'São Lourenço',11),(2085,'São Miguel do Anta',11),(2086,'São Pedro da União',11),(2087,'São Pedro do Suaçuí',11),(2088,'São Pedro dos Ferros',11),(2089,'São Romão',11),(2090,'São Roque de Minas',11),(2091,'São Sebastião da Bela Vista',11),(2092,'São Sebastião da Vargem Alegre',11),(2093,'São Sebastião do Anta',11),(2094,'São Sebastião do Maranhão',11),(2095,'São Sebastião do Oeste',11),(2096,'São Sebastião do Paraíso',11),(2097,'São Sebastião do Rio Preto',11),(2098,'São Sebastião do Rio Verde',11),(2099,'São Thomé das Letras',11),(2100,'São Tiago',11),(2101,'São Tomás de Aquino',11),(2102,'São Vicente de Minas',11),(2103,'Sapucaí-Mirim',11),(2104,'Sardoá',11),(2105,'Sarzedo',11),(2106,'Sem-Peixe',11),(2107,'Senador Amaral',11),(2108,'Senador Cortes',11),(2109,'Senador Firmino',11),(2110,'Senador José Bento',11),(2111,'Senador Modestino Gonçalves',11),(2112,'Senhora de Oliveira',11),(2113,'Senhora do Porto',11),(2114,'Senhora dos Remédios',11),(2115,'Sericita',11),(2116,'Seritinga',11),(2117,'Serra Azul de Minas',11),(2118,'Serra da Saudade',11),(2119,'Serra do Salitre',11),(2120,'Serra dos Aimorés',11),(2121,'Serrania',11),(2122,'Serranópolis de Minas',11),(2123,'Serranos',11),(2124,'Serro',11),(2125,'Sete Lagoas',11),(2126,'Setubinha',11),(2127,'Silveirânia',11),(2128,'Silvianópolis',11),(2129,'Simão Pereira',11),(2130,'Simonésia',11),(2131,'Sobrália',11),(2132,'Soledade de Minas',11),(2133,'Tabuleiro',11),(2134,'Taiobeiras',11),(2135,'Taparuba',11),(2136,'Tapira',11),(2137,'Tapiraí',11),(2138,'Taquaraçu de Minas',11),(2139,'Tarumirim',11),(2140,'Teixeiras',11),(2141,'Teófilo Otoni',11),(2142,'Timóteo',11),(2143,'Tiradentes',11),(2144,'Tiros',11),(2145,'Tocantins',11),(2146,'Tocos do Moji',11),(2147,'Toledo',11),(2148,'Tombos',11),(2149,'Três Corações',11),(2150,'Três Marias',11),(2151,'Três Pontas',11),(2152,'Tumiritinga',11),(2153,'Tupaciguara',11),(2154,'Turmalina',11),(2155,'Turvolândia',11),(2156,'Ubá',11),(2157,'Ubaí',11),(2158,'Ubaporanga',11),(2159,'Uberaba',11),(2160,'Uberlândia',11),(2161,'Umburatiba',11),(2162,'Unaí',11),(2163,'União de Minas',11),(2164,'Uruana de Minas',11),(2165,'Urucânia',11),(2166,'Urucuia',11),(2167,'Vargem Alegre',11),(2168,'Vargem Bonita',11),(2169,'Vargem Grande do Rio Pardo',11),(2170,'Varginha',11),(2171,'Varjão de Minas',11),(2172,'Várzea da Palma',11),(2173,'Varzelândia',11),(2174,'Vazante',11),(2175,'Verdelândia',11),(2176,'Veredinha',11),(2177,'Veríssimo',11),(2178,'Vermelho Novo',11),(2179,'Vespasiano',11),(2180,'Viçosa',11),(2181,'Vieiras',11),(2182,'Virgem da Lapa',11),(2183,'Virgínia',11),(2184,'Virginópolis',11),(2185,'Virgolândia',11),(2186,'Visconde do Rio Branco',11),(2187,'Volta Grande',11),(2188,'Wenceslau Braz',11),(2189,'Água Clara',12),(2190,'Alcinópolis',12),(2191,'Amambaí',12),(2192,'Anastácio',12),(2193,'Anaurilândia',12),(2194,'Angélica',12),(2195,'Antônio João',12),(2196,'Aparecida do Taboado',12),(2197,'Aquidauana',12),(2198,'Aral Moreira',12),(2199,'Bandeirantes',12),(2200,'Bataguassu',12),(2201,'Bataiporã',12),(2202,'Bela Vista',12),(2203,'Bodoquena',12),(2204,'Bonito',12),(2205,'Brasilândia',12),(2206,'Caarapó',12),(2207,'Camapuã',12),(2208,'Caracol',12),(2209,'Cassilândia',12),(2210,'Chapadão do Sul',12),(2211,'Corguinho',12),(2212,'Coronel Sapucaia',12),(2213,'Corumbá',12),(2214,'Costa Rica',12),(2215,'Coxim',12),(2216,'Deodápolis',12),(2217,'Dois Irmãos do Buriti',12),(2218,'Douradina',12),(2219,'Dourados',12),(2220,'Eldorado',12),(2221,'Fátima do Sul',12),(2222,'Figueirão',12),(2223,'Glória de Dourados',12),(2224,'Guia Lopes da Laguna',12),(2225,'Iguatemi',12),(2226,'Inocência',12),(2227,'Itaporã',12),(2228,'Itaquiraí',12),(2229,'Ivinhema',12),(2230,'Japorã',12),(2231,'Jaraguari',12),(2232,'Jardim',12),(2233,'Jateí',12),(2234,'Juti',12),(2235,'Ladário',12),(2236,'Laguna Carapã',12),(2237,'Maracaju',12),(2238,'Miranda',12),(2239,'Mundo Novo',12),(2240,'Naviraí',12),(2241,'Nioaque',12),(2242,'Nova Alvorada do Sul',12),(2243,'Nova Andradina',12),(2244,'Novo Horizonte do Sul',12),(2245,'Paranaíba',12),(2246,'Paranhos',12),(2247,'Pedro Gomes',12),(2248,'Ponta Porã',12),(2249,'Porto Murtinho',12),(2250,'Ribas do Rio Pardo',12),(2251,'Rio Brilhante',12),(2252,'Rio Negro',12),(2253,'Rio Verde de Mato Grosso',12),(2254,'Rochedo',12),(2255,'Santa Rita do Pardo',12),(2256,'São Gabriel do Oeste',12),(2257,'Selvíria',12),(2258,'Sete Quedas',12),(2259,'Sidrolândia',12),(2260,'Sonora',12),(2261,'Tacuru',12),(2262,'Taquarussu',12),(2263,'Terenos',12),(2264,'Três Lagoas',12),(2265,'Vicentina',12),(2266,'Acorizal',13),(2267,'Água Boa',13),(2268,'Alta Floresta',13),(2269,'Alto Araguaia',13),(2270,'Alto Boa Vista',13),(2271,'Alto Garças',13),(2272,'Alto Paraguai',13),(2273,'Alto Taquari',13),(2274,'Apiacás',13),(2275,'Araguaiana',13),(2276,'Araguainha',13),(2277,'Araputanga',13),(2278,'Arenápolis',13),(2279,'Aripuanã',13),(2280,'Barão de Melgaço',13),(2281,'Barra do Bugres',13),(2282,'Barra do Garças',13),(2283,'Bom Jesus do Araguaia',13),(2284,'Brasnorte',13),(2285,'Cáceres',13),(2286,'Campinápolis',13),(2287,'Campo Novo do Parecis',13),(2288,'Campo Verde',13),(2289,'Campos de Júlio',13),(2290,'Canabrava do Norte',13),(2291,'Canarana',13),(2292,'Carlinda',13),(2293,'Castanheira',13),(2294,'Chapada dos Guimarães',13),(2295,'Cláudia',13),(2296,'Cocalinho',13),(2297,'Colíder',13),(2298,'Colniza',13),(2299,'Comodoro',13),(2300,'Confresa',13),(2301,'Conquista d`Oeste',13),(2302,'Cotriguaçu',13),(2303,'Curvelândia',13),(2304,'Denise',13),(2305,'Diamantino',13),(2306,'Dom Aquino',13),(2307,'Feliz Natal',13),(2308,'Figueirópolis d`Oeste',13),(2309,'Gaúcha do Norte',13),(2310,'General Carneiro',13),(2311,'Glória d`Oeste',13),(2312,'Guarantã do Norte',13),(2313,'Guiratinga',13),(2314,'Indiavaí',13),(2315,'Ipiranga do Norte',13),(2316,'Itanhangá',13),(2317,'Itaúba',13),(2318,'Itiquira',13),(2319,'Jaciara',13),(2320,'Jangada',13),(2321,'Jauru',13),(2322,'Juara',13),(2323,'Juína',13),(2324,'Juruena',13),(2325,'Juscimeira',13),(2326,'Lambari d`Oeste',13),(2327,'Lucas do Rio Verde',13),(2328,'Luciára',13),(2329,'Marcelândia',13),(2330,'Matupá',13),(2331,'Mirassol d`Oeste',13),(2332,'Nobres',13),(2333,'Nortelândia',13),(2334,'Nossa Senhora do Livramento',13),(2335,'Nova Bandeirantes',13),(2336,'Nova Brasilândia',13),(2337,'Nova Canaã do Norte',13),(2338,'Nova Guarita',13),(2339,'Nova Lacerda',13),(2340,'Nova Marilândia',13),(2341,'Nova Maringá',13),(2342,'Nova Monte Verde',13),(2343,'Nova Mutum',13),(2344,'Nova Nazaré',13),(2345,'Nova Olímpia',13),(2346,'Nova Santa Helena',13),(2347,'Nova Ubiratã',13),(2348,'Nova Xavantina',13),(2349,'Novo Horizonte do Norte',13),(2350,'Novo Mundo',13),(2351,'Novo Santo Antônio',13),(2352,'Novo São Joaquim',13),(2353,'Paranaíta',13),(2354,'Paranatinga',13),(2355,'Pedra Preta',13),(2356,'Peixoto de Azevedo',13),(2357,'Planalto da Serra',13),(2358,'Poconé',13),(2359,'Pontal do Araguaia',13),(2360,'Ponte Branca',13),(2361,'Pontes e Lacerda',13),(2362,'Porto Alegre do Norte',13),(2363,'Porto dos Gaúchos',13),(2364,'Porto Esperidião',13),(2365,'Porto Estrela',13),(2366,'Poxoréo',13),(2367,'Primavera do Leste',13),(2368,'Querência',13),(2369,'Reserva do Cabaçal',13),(2370,'Ribeirão Cascalheira',13),(2371,'Ribeirãozinho',13),(2372,'Rio Branco',13),(2373,'Rondolândia',13),(2374,'Rondonópolis',13),(2375,'Rosário Oeste',13),(2376,'Salto do Céu',13),(2377,'Santa Carmem',13),(2378,'Santa Cruz do Xingu',13),(2379,'Santa Rita do Trivelato',13),(2380,'Santa Terezinha',13),(2381,'Santo Afonso',13),(2382,'Santo Antônio do Leste',13),(2383,'Santo Antônio do Leverger',13),(2384,'São Félix do Araguaia',13),(2385,'São José do Povo',13),(2386,'São José do Rio Claro',13),(2387,'São José do Xingu',13),(2388,'São José dos Quatro Marcos',13),(2389,'São Pedro da Cipa',13),(2390,'Sapezal',13),(2391,'Serra Nova Dourada',13),(2392,'Sinop',13),(2393,'Sorriso',13),(2394,'Tabaporã',13),(2395,'Tangará da Serra',13),(2396,'Tapurah',13),(2397,'Terra Nova do Norte',13),(2398,'Tesouro',13),(2399,'Torixoréu',13),(2400,'União do Sul',13),(2401,'Vale de São Domingos',13),(2402,'Várzea Grande',13),(2403,'Vera',13),(2404,'Vila Bela da Santíssima Trindade',13),(2405,'Vila Rica',13),(2406,'Abaetetuba',14),(2407,'Abel Figueiredo',14),(2408,'Acará',14),(2409,'Afuá',14),(2410,'Água Azul do Norte',14),(2411,'Alenquer',14),(2412,'Almeirim',14),(2413,'Altamira',14),(2414,'Anajás',14),(2415,'Ananindeua',14),(2416,'Anapu',14),(2417,'Augusto Corrêa',14),(2418,'Aurora do Pará',14),(2419,'Aveiro',14),(2420,'Bagre',14),(2421,'Baião',14),(2422,'Bannach',14),(2423,'Barcarena',14),(2424,'Belterra',14),(2425,'Benevides',14),(2426,'Bom Jesus do Tocantins',14),(2427,'Bonito',14),(2428,'Bragança',14),(2429,'Brasil Novo',14),(2430,'Brejo Grande do Araguaia',14),(2431,'Breu Branco',14),(2432,'Breves',14),(2433,'Bujaru',14),(2434,'Cachoeira do Arari',14),(2435,'Cachoeira do Piriá',14),(2436,'Cametá',14),(2437,'Canaã dos Carajás',14),(2438,'Capanema',14),(2439,'Capitão Poço',14),(2440,'Castanhal',14),(2441,'Chaves',14),(2442,'Colares',14),(2443,'Conceição do Araguaia',14),(2444,'Concórdia do Pará',14),(2445,'Cumaru do Norte',14),(2446,'Curionópolis',14),(2447,'Curralinho',14),(2448,'Curuá',14),(2449,'Curuçá',14),(2450,'Dom Eliseu',14),(2451,'Eldorado dos Carajás',14),(2452,'Faro',14),(2453,'Floresta do Araguaia',14),(2454,'Garrafão do Norte',14),(2455,'Goianésia do Pará',14),(2456,'Gurupá',14),(2457,'Igarapé-Açu',14),(2458,'Igarapé-Miri',14),(2459,'Inhangapi',14),(2460,'Ipixuna do Pará',14),(2461,'Irituia',14),(2462,'Itaituba',14),(2463,'Itupiranga',14),(2464,'Jacareacanga',14),(2465,'Jacundá',14),(2466,'Juruti',14),(2467,'Limoeiro do Ajuru',14),(2468,'Mãe do Rio',14),(2469,'Magalhães Barata',14),(2470,'Marabá',14),(2471,'Maracanã',14),(2472,'Marapanim',14),(2473,'Marituba',14),(2474,'Medicilândia',14),(2475,'Melgaço',14),(2476,'Mocajuba',14),(2477,'Moju',14),(2478,'Monte Alegre',14),(2479,'Muaná',14),(2480,'Nova Esperança do Piriá',14),(2481,'Nova Ipixuna',14),(2482,'Nova Timboteua',14),(2483,'Novo Progresso',14),(2484,'Novo Repartimento',14),(2485,'Óbidos',14),(2486,'Oeiras do Pará',14),(2487,'Oriximiná',14),(2488,'Ourém',14),(2489,'Ourilândia do Norte',14),(2490,'Pacajá',14),(2491,'Palestina do Pará',14),(2492,'Paragominas',14),(2493,'Parauapebas',14),(2494,'Pau d`Arco',14),(2495,'Peixe-Boi',14),(2496,'Piçarra',14),(2497,'Placas',14),(2498,'Ponta de Pedras',14),(2499,'Portel',14),(2500,'Porto de Moz',14),(2501,'Prainha',14),(2502,'Primavera',14),(2503,'Quatipuru',14),(2504,'Redenção',14),(2505,'Rio Maria',14),(2506,'Rondon do Pará',14),(2507,'Rurópolis',14),(2508,'Salinópolis',14),(2509,'Salvaterra',14),(2510,'Santa Bárbara do Pará',14),(2511,'Santa Cruz do Arari',14),(2512,'Santa Isabel do Pará',14),(2513,'Santa Luzia do Pará',14),(2514,'Santa Maria das Barreiras',14),(2515,'Santa Maria do Pará',14),(2516,'Santana do Araguaia',14),(2517,'Santarém',14),(2518,'Santarém Novo',14),(2519,'Santo Antônio do Tauá',14),(2520,'São Caetano de Odivelas',14),(2521,'São Domingos do Araguaia',14),(2522,'São Domingos do Capim',14),(2523,'São Félix do Xingu',14),(2524,'São Francisco do Pará',14),(2525,'São Geraldo do Araguaia',14),(2526,'São João da Ponta',14),(2527,'São João de Pirabas',14),(2528,'São João do Araguaia',14),(2529,'São Miguel do Guamá',14),(2530,'São Sebastião da Boa Vista',14),(2531,'Sapucaia',14),(2532,'Senador José Porfírio',14),(2533,'Soure',14),(2534,'Tailândia',14),(2535,'Terra Alta',14),(2536,'Terra Santa',14),(2537,'Tomé-Açu',14),(2538,'Tracuateua',14),(2539,'Trairão',14),(2540,'Tucumã',14),(2541,'Tucuruí',14),(2542,'Ulianópolis',14),(2543,'Uruará',14),(2544,'Vigia',14),(2545,'Viseu',14),(2546,'Vitória do Xingu',14),(2547,'Xinguara',14),(2548,'Água Branca',15),(2549,'Aguiar',15),(2550,'Alagoa Grande',15),(2551,'Alagoa Nova',15),(2552,'Alagoinha',15),(2553,'Alcantil',15),(2554,'Algodão de Jandaíra',15),(2555,'Alhandra',15),(2556,'Amparo',15),(2557,'Aparecida',15),(2558,'Araçagi',15),(2559,'Arara',15),(2560,'Araruna',15),(2561,'Areia',15),(2562,'Areia de Baraúnas',15),(2563,'Areial',15),(2564,'Aroeiras',15),(2565,'Assunção',15),(2566,'Baía da Traição',15),(2567,'Bananeiras',15),(2568,'Baraúna',15),(2569,'Barra de Santa Rosa',15),(2570,'Barra de Santana',15),(2571,'Barra de São Miguel',15),(2572,'Bayeux',15),(2573,'Belém',15),(2574,'Belém do Brejo do Cruz',15),(2575,'Bernardino Batista',15),(2576,'Boa Ventura',15),(2577,'Boa Vista',15),(2578,'Bom Jesus',15),(2579,'Bom Sucesso',15),(2580,'Bonito de Santa Fé',15),(2581,'Boqueirão',15),(2582,'Borborema',15),(2583,'Brejo do Cruz',15),(2584,'Brejo dos Santos',15),(2585,'Caaporã',15),(2586,'Cabaceiras',15),(2587,'Cabedelo',15),(2588,'Cachoeira dos Índios',15),(2589,'Cacimba de Areia',15),(2590,'Cacimba de Dentro',15),(2591,'Cacimbas',15),(2592,'Caiçara',15),(2593,'Cajazeiras',15),(2594,'Cajazeirinhas',15),(2595,'Caldas Brandão',15),(2596,'Camalaú',15),(2597,'Campina Grande',15),(2598,'Capim',15),(2599,'Caraúbas',15),(2600,'Carrapateira',15),(2601,'Casserengue',15),(2602,'Catingueira',15),(2603,'Catolé do Rocha',15),(2604,'Caturité',15),(2605,'Conceição',15),(2606,'Condado',15),(2607,'Conde',15),(2608,'Congo',15),(2609,'Coremas',15),(2610,'Coxixola',15),(2611,'Cruz do Espírito Santo',15),(2612,'Cubati',15),(2613,'Cuité',15),(2614,'Cuité de Mamanguape',15),(2615,'Cuitegi',15),(2616,'Curral de Cima',15),(2617,'Curral Velho',15),(2618,'Damião',15),(2619,'Desterro',15),(2620,'Diamante',15),(2621,'Dona Inês',15),(2622,'Duas Estradas',15),(2623,'Emas',15),(2624,'Esperança',15),(2625,'Fagundes',15),(2626,'Frei Martinho',15),(2627,'Gado Bravo',15),(2628,'Guarabira',15),(2629,'Gurinhém',15),(2630,'Gurjão',15),(2631,'Ibiara',15),(2632,'Igaracy',15),(2633,'Imaculada',15),(2634,'Ingá',15),(2635,'Itabaiana',15),(2636,'Itaporanga',15),(2637,'Itapororoca',15),(2638,'Itatuba',15),(2639,'Jacaraú',15),(2640,'Jericó',15),(2641,'Joca Claudino',15),(2642,'Juarez Távora',15),(2643,'Juazeirinho',15),(2644,'Junco do Seridó',15),(2645,'Juripiranga',15),(2646,'Juru',15),(2647,'Lagoa',15),(2648,'Lagoa de Dentro',15),(2649,'Lagoa Seca',15),(2650,'Lastro',15),(2651,'Livramento',15),(2652,'Logradouro',15),(2653,'Lucena',15),(2654,'Mãe d`Água',15),(2655,'Malta',15),(2656,'Mamanguape',15),(2657,'Manaíra',15),(2658,'Marcação',15),(2659,'Mari',15),(2660,'Marizópolis',15),(2661,'Massaranduba',15),(2662,'Mataraca',15),(2663,'Matinhas',15),(2664,'Mato Grosso',15),(2665,'Maturéia',15),(2666,'Mogeiro',15),(2667,'Montadas',15),(2668,'Monte Horebe',15),(2669,'Monteiro',15),(2670,'Mulungu',15),(2671,'Natuba',15),(2672,'Nazarezinho',15),(2673,'Nova Floresta',15),(2674,'Nova Olinda',15),(2675,'Nova Palmeira',15),(2676,'Olho d`Água',15),(2677,'Olivedos',15),(2678,'Ouro Velho',15),(2679,'Parari',15),(2680,'Passagem',15),(2681,'Patos',15),(2682,'Paulista',15),(2683,'Pedra Branca',15),(2684,'Pedra Lavrada',15),(2685,'Pedras de Fogo',15),(2686,'Pedro Régis',15),(2687,'Piancó',15),(2688,'Picuí',15),(2689,'Pilar',15),(2690,'Pilões',15),(2691,'Pilõezinhos',15),(2692,'Pirpirituba',15),(2693,'Pitimbu',15),(2694,'Pocinhos',15),(2695,'Poço Dantas',15),(2696,'Poço de José de Moura',15),(2697,'Pombal',15),(2698,'Prata',15),(2699,'Princesa Isabel',15),(2700,'Puxinanã',15),(2701,'Queimadas',15),(2702,'Quixabá',15),(2703,'Remígio',15),(2704,'Riachão',15),(2705,'Riachão do Bacamarte',15),(2706,'Riachão do Poço',15),(2707,'Riacho de Santo Antônio',15),(2708,'Riacho dos Cavalos',15),(2709,'Rio Tinto',15),(2710,'Salgadinho',15),(2711,'Salgado de São Félix',15),(2712,'Santa Cecília',15),(2713,'Santa Cruz',15),(2714,'Santa Helena',15),(2715,'Santa Inês',15),(2716,'Santa Luzia',15),(2717,'Santa Rita',15),(2718,'Santa Teresinha',15),(2719,'Santana de Mangueira',15),(2720,'Santana dos Garrotes',15),(2721,'Santo André',15),(2722,'São Bentinho',15),(2723,'São Bento',15),(2724,'São Domingos',15),(2725,'São Domingos do Cariri',15),(2726,'São Francisco',15),(2727,'São João do Cariri',15),(2728,'São João do Rio do Peixe',15),(2729,'São João do Tigre',15),(2730,'São José da Lagoa Tapada',15),(2731,'São José de Caiana',15),(2732,'São José de Espinharas',15),(2733,'São José de Piranhas',15),(2734,'São José de Princesa',15),(2735,'São José do Bonfim',15),(2736,'São José do Brejo do Cruz',15),(2737,'São José do Sabugi',15),(2738,'São José dos Cordeiros',15),(2739,'São José dos Ramos',15),(2740,'São Mamede',15),(2741,'São Miguel de Taipu',15),(2742,'São Sebastião de Lagoa de Roça',15),(2743,'São Sebastião do Umbuzeiro',15),(2744,'Sapé',15),(2745,'Seridó',15),(2746,'Serra Branca',15),(2747,'Serra da Raiz',15),(2748,'Serra Grande',15),(2749,'Serra Redonda',15),(2750,'Serraria',15),(2751,'Sertãozinho',15),(2752,'Sobrado',15),(2753,'Solânea',15),(2754,'Soledade',15),(2755,'Sossêgo',15),(2756,'Sousa',15),(2757,'Sumé',15),(2758,'Tacima',15),(2759,'Taperoá',15),(2760,'Tavares',15),(2761,'Teixeira',15),(2762,'Tenório',15),(2763,'Triunfo',15),(2764,'Uiraúna',15),(2765,'Umbuzeiro',15),(2766,'Várzea',15),(2767,'Vieirópolis',15),(2768,'Vista Serrana',15),(2769,'Zabelê',15),(2770,'Água Branca',16),(2771,'Aguiar',16),(2772,'Alagoa Grande',16),(2773,'Alagoa Nova',16),(2774,'Alagoinha',16),(2775,'Alcantil',16),(2776,'Algodão de Jandaíra',16),(2777,'Alhandra',16),(2778,'Amparo',16),(2779,'Aparecida',16),(2780,'Araçagi',16),(2781,'Arara',16),(2782,'Araruna',16),(2783,'Areia',16),(2784,'Areia de Baraúnas',16),(2785,'Areial',16),(2786,'Aroeiras',16),(2787,'Assunção',16),(2788,'Baía da Traição',16),(2789,'Bananeiras',16),(2790,'Baraúna',16),(2791,'Barra de Santa Rosa',16),(2792,'Barra de Santana',16),(2793,'Barra de São Miguel',16),(2794,'Bayeux',16),(2795,'Belém',16),(2796,'Belém do Brejo do Cruz',16),(2797,'Bernardino Batista',16),(2798,'Boa Ventura',16),(2799,'Boa Vista',16),(2800,'Bom Jesus',16),(2801,'Bom Sucesso',16),(2802,'Bonito de Santa Fé',16),(2803,'Boqueirão',16),(2804,'Borborema',16),(2805,'Brejo do Cruz',16),(2806,'Brejo dos Santos',16),(2807,'Caaporã',16),(2808,'Cabaceiras',16),(2809,'Cabedelo',16),(2810,'Cachoeira dos Índios',16),(2811,'Cacimba de Areia',16),(2812,'Cacimba de Dentro',16),(2813,'Cacimbas',16),(2814,'Caiçara',16),(2815,'Cajazeiras',16),(2816,'Cajazeirinhas',16),(2817,'Caldas Brandão',16),(2818,'Camalaú',16),(2819,'Campina Grande',16),(2820,'Capim',16),(2821,'Caraúbas',16),(2822,'Carrapateira',16),(2823,'Casserengue',16),(2824,'Catingueira',16),(2825,'Catolé do Rocha',16),(2826,'Caturité',16),(2827,'Conceição',16),(2828,'Condado',16),(2829,'Conde',16),(2830,'Congo',16),(2831,'Coremas',16),(2832,'Coxixola',16),(2833,'Cruz do Espírito Santo',16),(2834,'Cubati',16),(2835,'Cuité',16),(2836,'Cuité de Mamanguape',16),(2837,'Cuitegi',16),(2838,'Curral de Cima',16),(2839,'Curral Velho',16),(2840,'Damião',16),(2841,'Desterro',16),(2842,'Diamante',16),(2843,'Dona Inês',16),(2844,'Duas Estradas',16),(2845,'Emas',16),(2846,'Esperança',16),(2847,'Fagundes',16),(2848,'Frei Martinho',16),(2849,'Gado Bravo',16),(2850,'Guarabira',16),(2851,'Gurinhém',16),(2852,'Gurjão',16),(2853,'Ibiara',16),(2854,'Igaracy',16),(2855,'Imaculada',16),(2856,'Ingá',16),(2857,'Itabaiana',16),(2858,'Itaporanga',16),(2859,'Itapororoca',16),(2860,'Itatuba',16),(2861,'Jacaraú',16),(2862,'Jericó',16),(2863,'Joca Claudino',16),(2864,'Juarez Távora',16),(2865,'Juazeirinho',16),(2866,'Junco do Seridó',16),(2867,'Juripiranga',16),(2868,'Juru',16),(2869,'Lagoa',16),(2870,'Lagoa de Dentro',16),(2871,'Lagoa Seca',16),(2872,'Lastro',16),(2873,'Livramento',16),(2874,'Logradouro',16),(2875,'Lucena',16),(2876,'Mãe d`Água',16),(2877,'Malta',16),(2878,'Mamanguape',16),(2879,'Manaíra',16),(2880,'Marcação',16),(2881,'Mari',16),(2882,'Marizópolis',16),(2883,'Massaranduba',16),(2884,'Mataraca',16),(2885,'Matinhas',16),(2886,'Mato Grosso',16),(2887,'Maturéia',16),(2888,'Mogeiro',16),(2889,'Montadas',16),(2890,'Monte Horebe',16),(2891,'Monteiro',16),(2892,'Mulungu',16),(2893,'Natuba',16),(2894,'Nazarezinho',16),(2895,'Nova Floresta',16),(2896,'Nova Olinda',16),(2897,'Nova Palmeira',16),(2898,'Olho d`Água',16),(2899,'Olivedos',16),(2900,'Ouro Velho',16),(2901,'Parari',16),(2902,'Passagem',16),(2903,'Patos',16),(2904,'Paulista',16),(2905,'Pedra Branca',16),(2906,'Pedra Lavrada',16),(2907,'Pedras de Fogo',16),(2908,'Pedro Régis',16),(2909,'Piancó',16),(2910,'Picuí',16),(2911,'Pilar',16),(2912,'Pilões',16),(2913,'Pilõezinhos',16),(2914,'Pirpirituba',16),(2915,'Pitimbu',16),(2916,'Pocinhos',16),(2917,'Poço Dantas',16),(2918,'Poço de José de Moura',16),(2919,'Pombal',16),(2920,'Prata',16),(2921,'Princesa Isabel',16),(2922,'Puxinanã',16),(2923,'Queimadas',16),(2924,'Quixabá',16),(2925,'Remígio',16),(2926,'Riachão',16),(2927,'Riachão do Bacamarte',16),(2928,'Riachão do Poço',16),(2929,'Riacho de Santo Antônio',16),(2930,'Riacho dos Cavalos',16),(2931,'Rio Tinto',16),(2932,'Salgadinho',16),(2933,'Salgado de São Félix',16),(2934,'Santa Cecília',16),(2935,'Santa Cruz',16),(2936,'Santa Helena',16),(2937,'Santa Inês',16),(2938,'Santa Luzia',16),(2939,'Santa Rita',16),(2940,'Santa Teresinha',16),(2941,'Santana de Mangueira',16),(2942,'Santana dos Garrotes',16),(2943,'Santo André',16),(2944,'São Bentinho',16),(2945,'São Bento',16),(2946,'São Domingos',16),(2947,'São Domingos do Cariri',16),(2948,'São Francisco',16),(2949,'São João do Cariri',16),(2950,'São João do Rio do Peixe',16),(2951,'São João do Tigre',16),(2952,'São José da Lagoa Tapada',16),(2953,'São José de Caiana',16),(2954,'São José de Espinharas',16),(2955,'São José de Piranhas',16),(2956,'São José de Princesa',16),(2957,'São José do Bonfim',16),(2958,'São José do Brejo do Cruz',16),(2959,'São José do Sabugi',16),(2960,'São José dos Cordeiros',16),(2961,'São José dos Ramos',16),(2962,'São Mamede',16),(2963,'São Miguel de Taipu',16),(2964,'São Sebastião de Lagoa de Roça',16),(2965,'São Sebastião do Umbuzeiro',16),(2966,'Sapé',16),(2967,'Seridó',16),(2968,'Serra Branca',16),(2969,'Serra da Raiz',16),(2970,'Serra Grande',16),(2971,'Serra Redonda',16),(2972,'Serraria',16),(2973,'Sertãozinho',16),(2974,'Sobrado',16),(2975,'Solânea',16),(2976,'Soledade',16),(2977,'Sossêgo',16),(2978,'Sousa',16),(2979,'Sumé',16),(2980,'Tacima',16),(2981,'Taperoá',16),(2982,'Tavares',16),(2983,'Teixeira',16),(2984,'Tenório',16),(2985,'Triunfo',16),(2986,'Uiraúna',16),(2987,'Umbuzeiro',16),(2988,'Várzea',16),(2989,'Vieirópolis',16),(2990,'Vista Serrana',16),(2991,'Zabelê',16),(2992,'Água Branca',17),(2993,'Aguiar',17),(2994,'Alagoa Grande',17),(2995,'Alagoa Nova',17),(2996,'Alagoinha',17),(2997,'Alcantil',17),(2998,'Algodão de Jandaíra',17),(2999,'Alhandra',17),(3000,'Amparo',17),(3001,'Aparecida',17),(3002,'Araçagi',17),(3003,'Arara',17),(3004,'Araruna',17),(3005,'Areia',17),(3006,'Areia de Baraúnas',17),(3007,'Areial',17),(3008,'Aroeiras',17),(3009,'Assunção',17),(3010,'Baía da Traição',17),(3011,'Bananeiras',17),(3012,'Baraúna',17),(3013,'Barra de Santa Rosa',17),(3014,'Barra de Santana',17),(3015,'Barra de São Miguel',17),(3016,'Bayeux',17),(3017,'Belém',17),(3018,'Belém do Brejo do Cruz',17),(3019,'Bernardino Batista',17),(3020,'Boa Ventura',17),(3021,'Boa Vista',17),(3022,'Bom Jesus',17),(3023,'Bom Sucesso',17),(3024,'Bonito de Santa Fé',17),(3025,'Boqueirão',17),(3026,'Borborema',17),(3027,'Brejo do Cruz',17),(3028,'Brejo dos Santos',17),(3029,'Caaporã',17),(3030,'Cabaceiras',17),(3031,'Cabedelo',17),(3032,'Cachoeira dos Índios',17),(3033,'Cacimba de Areia',17),(3034,'Cacimba de Dentro',17),(3035,'Cacimbas',17),(3036,'Caiçara',17),(3037,'Cajazeiras',17),(3038,'Cajazeirinhas',17),(3039,'Caldas Brandão',17),(3040,'Camalaú',17),(3041,'Campina Grande',17),(3042,'Capim',17),(3043,'Caraúbas',17),(3044,'Carrapateira',17),(3045,'Casserengue',17),(3046,'Catingueira',17),(3047,'Catolé do Rocha',17),(3048,'Caturité',17),(3049,'Conceição',17),(3050,'Condado',17),(3051,'Conde',17),(3052,'Congo',17),(3053,'Coremas',17),(3054,'Coxixola',17),(3055,'Cruz do Espírito Santo',17),(3056,'Cubati',17),(3057,'Cuité',17),(3058,'Cuité de Mamanguape',17),(3059,'Cuitegi',17),(3060,'Curral de Cima',17),(3061,'Curral Velho',17),(3062,'Damião',17),(3063,'Desterro',17),(3064,'Diamante',17),(3065,'Dona Inês',17),(3066,'Duas Estradas',17),(3067,'Emas',17),(3068,'Esperança',17),(3069,'Fagundes',17),(3070,'Frei Martinho',17),(3071,'Gado Bravo',17),(3072,'Guarabira',17),(3073,'Gurinhém',17),(3074,'Gurjão',17),(3075,'Ibiara',17),(3076,'Igaracy',17),(3077,'Imaculada',17),(3078,'Ingá',17),(3079,'Itabaiana',17),(3080,'Itaporanga',17),(3081,'Itapororoca',17),(3082,'Itatuba',17),(3083,'Jacaraú',17),(3084,'Jericó',17),(3085,'Joca Claudino',17),(3086,'Juarez Távora',17),(3087,'Juazeirinho',17),(3088,'Junco do Seridó',17),(3089,'Juripiranga',17),(3090,'Juru',17),(3091,'Lagoa',17),(3092,'Lagoa de Dentro',17),(3093,'Lagoa Seca',17),(3094,'Lastro',17),(3095,'Livramento',17),(3096,'Logradouro',17),(3097,'Lucena',17),(3098,'Mãe d`Água',17),(3099,'Malta',17),(3100,'Mamanguape',17),(3101,'Manaíra',17),(3102,'Marcação',17),(3103,'Mari',17),(3104,'Marizópolis',17),(3105,'Massaranduba',17),(3106,'Mataraca',17),(3107,'Matinhas',17),(3108,'Mato Grosso',17),(3109,'Maturéia',17),(3110,'Mogeiro',17),(3111,'Montadas',17),(3112,'Monte Horebe',17),(3113,'Monteiro',17),(3114,'Mulungu',17),(3115,'Natuba',17),(3116,'Nazarezinho',17),(3117,'Nova Floresta',17),(3118,'Nova Olinda',17),(3119,'Nova Palmeira',17),(3120,'Olho d`Água',17),(3121,'Olivedos',17),(3122,'Ouro Velho',17),(3123,'Parari',17),(3124,'Passagem',17),(3125,'Patos',17),(3126,'Paulista',17),(3127,'Pedra Branca',17),(3128,'Pedra Lavrada',17),(3129,'Pedras de Fogo',17),(3130,'Pedro Régis',17),(3131,'Piancó',17),(3132,'Picuí',17),(3133,'Pilar',17),(3134,'Pilões',17),(3135,'Pilõezinhos',17),(3136,'Pirpirituba',17),(3137,'Pitimbu',17),(3138,'Pocinhos',17),(3139,'Poço Dantas',17),(3140,'Poço de José de Moura',17),(3141,'Pombal',17),(3142,'Prata',17),(3143,'Princesa Isabel',17),(3144,'Puxinanã',17),(3145,'Queimadas',17),(3146,'Quixabá',17),(3147,'Remígio',17),(3148,'Riachão',17),(3149,'Riachão do Bacamarte',17),(3150,'Riachão do Poço',17),(3151,'Riacho de Santo Antônio',17),(3152,'Riacho dos Cavalos',17),(3153,'Rio Tinto',17),(3154,'Salgadinho',17),(3155,'Salgado de São Félix',17),(3156,'Santa Cecília',17),(3157,'Santa Cruz',17),(3158,'Santa Helena',17),(3159,'Santa Inês',17),(3160,'Santa Luzia',17),(3161,'Santa Rita',17),(3162,'Santa Teresinha',17),(3163,'Santana de Mangueira',17),(3164,'Santana dos Garrotes',17),(3165,'Santo André',17),(3166,'São Bentinho',17),(3167,'São Bento',17),(3168,'São Domingos',17),(3169,'São Domingos do Cariri',17),(3170,'São Francisco',17),(3171,'São João do Cariri',17),(3172,'São João do Rio do Peixe',17),(3173,'São João do Tigre',17),(3174,'São José da Lagoa Tapada',17),(3175,'São José de Caiana',17),(3176,'São José de Espinharas',17),(3177,'São José de Piranhas',17),(3178,'São José de Princesa',17),(3179,'São José do Bonfim',17),(3180,'São José do Brejo do Cruz',17),(3181,'São José do Sabugi',17),(3182,'São José dos Cordeiros',17),(3183,'São José dos Ramos',17),(3184,'São Mamede',17),(3185,'São Miguel de Taipu',17),(3186,'São Sebastião de Lagoa de Roça',17),(3187,'São Sebastião do Umbuzeiro',17),(3188,'Sapé',17),(3189,'Seridó',17),(3190,'Serra Branca',17),(3191,'Serra da Raiz',17),(3192,'Serra Grande',17),(3193,'Serra Redonda',17),(3194,'Serraria',17),(3195,'Sertãozinho',17),(3196,'Sobrado',17),(3197,'Solânea',17),(3198,'Soledade',17),(3199,'Sossêgo',17),(3200,'Sousa',17),(3201,'Sumé',17),(3202,'Tacima',17),(3203,'Taperoá',17),(3204,'Tavares',17),(3205,'Teixeira',17),(3206,'Tenório',17),(3207,'Triunfo',17),(3208,'Uiraúna',17),(3209,'Umbuzeiro',17),(3210,'Várzea',17),(3211,'Vieirópolis',17),(3212,'Vista Serrana',17),(3213,'Zabelê',17),(3214,'Abatiá',18),(3215,'Adrianópolis',18),(3216,'Agudos do Sul',18),(3217,'Almirante Tamandaré',18),(3218,'Altamira do Paraná',18),(3219,'Alto Paraíso',18),(3220,'Alto Paraná',18),(3221,'Alto Piquiri',18),(3222,'Altônia',18),(3223,'Alvorada do Sul',18),(3224,'Amaporã',18),(3225,'Ampére',18),(3226,'Anahy',18),(3227,'Andirá',18),(3228,'Ângulo',18),(3229,'Antonina',18),(3230,'Antônio Olinto',18),(3231,'Apucarana',18),(3232,'Arapongas',18),(3233,'Arapoti',18),(3234,'Arapuã',18),(3235,'Araruna',18),(3236,'Araucária',18),(3237,'Ariranha do Ivaí',18),(3238,'Assaí',18),(3239,'Assis Chateaubriand',18),(3240,'Astorga',18),(3241,'Atalaia',18),(3242,'Balsa Nova',18),(3243,'Bandeirantes',18),(3244,'Barbosa Ferraz',18),(3245,'Barra do Jacaré',18),(3246,'Barracão',18),(3247,'Bela Vista da Caroba',18),(3248,'Bela Vista do Paraíso',18),(3249,'Bituruna',18),(3250,'Boa Esperança',18),(3251,'Boa Esperança do Iguaçu',18),(3252,'Boa Ventura de São Roque',18),(3253,'Boa Vista da Aparecida',18),(3254,'Bocaiúva do Sul',18),(3255,'Bom Jesus do Sul',18),(3256,'Bom Sucesso',18),(3257,'Bom Sucesso do Sul',18),(3258,'Borrazópolis',18),(3259,'Braganey',18),(3260,'Brasilândia do Sul',18),(3261,'Cafeara',18),(3262,'Cafelândia',18),(3263,'Cafezal do Sul',18),(3264,'Califórnia',18),(3265,'Cambará',18),(3266,'Cambé',18),(3267,'Cambira',18),(3268,'Campina da Lagoa',18),(3269,'Campina do Simão',18),(3270,'Campina Grande do Sul',18),(3271,'Campo Bonito',18),(3272,'Campo do Tenente',18),(3273,'Campo Largo',18),(3274,'Campo Magro',18),(3275,'Campo Mourão',18),(3276,'Cândido de Abreu',18),(3277,'Candói',18),(3278,'Cantagalo',18),(3279,'Capanema',18),(3280,'Capitão Leônidas Marques',18),(3281,'Carambeí',18),(3282,'Carlópolis',18),(3283,'Cascavel',18),(3284,'Castro',18),(3285,'Catanduvas',18),(3286,'Centenário do Sul',18),(3287,'Cerro Azul',18),(3288,'Céu Azul',18),(3289,'Chopinzinho',18),(3290,'Cianorte',18),(3291,'Cidade Gaúcha',18),(3292,'Clevelândia',18),(3293,'Colombo',18),(3294,'Colorado',18),(3295,'Congonhinhas',18),(3296,'Conselheiro Mairinck',18),(3297,'Contenda',18),(3298,'Corbélia',18),(3299,'Cornélio Procópio',18),(3300,'Coronel Domingos Soares',18),(3301,'Coronel Vivida',18),(3302,'Corumbataí do Sul',18),(3303,'Cruz Machado',18),(3304,'Cruzeiro do Iguaçu',18),(3305,'Cruzeiro do Oeste',18),(3306,'Cruzeiro do Sul',18),(3307,'Cruzmaltina',18),(3308,'Curiúva',18),(3309,'Diamante d`Oeste',18),(3310,'Diamante do Norte',18),(3311,'Diamante do Sul',18),(3312,'Dois Vizinhos',18),(3313,'Douradina',18),(3314,'Doutor Camargo',18),(3315,'Doutor Ulysses',18),(3316,'Enéas Marques',18),(3317,'Engenheiro Beltrão',18),(3318,'Entre Rios do Oeste',18),(3319,'Esperança Nova',18),(3320,'Espigão Alto do Iguaçu',18),(3321,'Farol',18),(3322,'Faxinal',18),(3323,'Fazenda Rio Grande',18),(3324,'Fênix',18),(3325,'Fernandes Pinheiro',18),(3326,'Figueira',18),(3327,'Flor da Serra do Sul',18),(3328,'Floraí',18),(3329,'Floresta',18),(3330,'Florestópolis',18),(3331,'Flórida',18),(3332,'Formosa do Oeste',18),(3333,'Foz do Iguaçu',18),(3334,'Foz do Jordão',18),(3335,'Francisco Alves',18),(3336,'Francisco Beltrão',18),(3337,'General Carneiro',18),(3338,'Godoy Moreira',18),(3339,'Goioerê',18),(3340,'Goioxim',18),(3341,'Grandes Rios',18),(3342,'Guaíra',18),(3343,'Guairaçá',18),(3344,'Guamiranga',18),(3345,'Guapirama',18),(3346,'Guaporema',18),(3347,'Guaraci',18),(3348,'Guaraniaçu',18),(3349,'Guarapuava',18),(3350,'Guaraqueçaba',18),(3351,'Guaratuba',18),(3352,'Honório Serpa',18),(3353,'Ibaiti',18),(3354,'Ibema',18),(3355,'Ibiporã',18),(3356,'Icaraíma',18),(3357,'Iguaraçu',18),(3358,'Iguatu',18),(3359,'Imbaú',18),(3360,'Imbituva',18),(3361,'Inácio Martins',18),(3362,'Inajá',18),(3363,'Indianópolis',18),(3364,'Ipiranga',18),(3365,'Iporã',18),(3366,'Iracema do Oeste',18),(3367,'Irati',18),(3368,'Iretama',18),(3369,'Itaguajé',18),(3370,'Itaipulândia',18),(3371,'Itambaracá',18),(3372,'Itambé',18),(3373,'Itapejara d`Oeste',18),(3374,'Itaperuçu',18),(3375,'Itaúna do Sul',18),(3376,'Ivaí',18),(3377,'Ivaiporã',18),(3378,'Ivaté',18),(3379,'Ivatuba',18),(3380,'Jaboti',18),(3381,'Jacarezinho',18),(3382,'Jaguapitã',18),(3383,'Jaguariaíva',18),(3384,'Jandaia do Sul',18),(3385,'Janiópolis',18),(3386,'Japira',18),(3387,'Japurá',18),(3388,'Jardim Alegre',18),(3389,'Jardim Olinda',18),(3390,'Jataizinho',18),(3391,'Jesuítas',18),(3392,'Joaquim Távora',18),(3393,'Jundiaí do Sul',18),(3394,'Juranda',18),(3395,'Jussara',18),(3396,'Kaloré',18),(3397,'Lapa',18),(3398,'Laranjal',18),(3399,'Laranjeiras do Sul',18),(3400,'Leópolis',18),(3401,'Lidianópolis',18),(3402,'Lindoeste',18),(3403,'Loanda',18),(3404,'Lobato',18),(3405,'Londrina',18),(3406,'Luiziana',18),(3407,'Lunardelli',18),(3408,'Lupionópolis',18),(3409,'Mallet',18),(3410,'Mamborê',18),(3411,'Mandaguaçu',18),(3412,'Mandaguari',18),(3413,'Mandirituba',18),(3414,'Manfrinópolis',18),(3415,'Mangueirinha',18),(3416,'Manoel Ribas',18),(3417,'Marechal Cândido Rondon',18),(3418,'Maria Helena',18),(3419,'Marialva',18),(3420,'Marilândia do Sul',18),(3421,'Marilena',18),(3422,'Mariluz',18),(3423,'Maringá',18),(3424,'Mariópolis',18),(3425,'Maripá',18),(3426,'Marmeleiro',18),(3427,'Marquinho',18),(3428,'Marumbi',18),(3429,'Matelândia',18),(3430,'Matinhos',18),(3431,'Mato Rico',18),(3432,'Mauá da Serra',18),(3433,'Medianeira',18),(3434,'Mercedes',18),(3435,'Mirador',18),(3436,'Miraselva',18),(3437,'Missal',18),(3438,'Moreira Sales',18),(3439,'Morretes',18),(3440,'Munhoz de Melo',18),(3441,'Nossa Senhora das Graças',18),(3442,'Nova Aliança do Ivaí',18),(3443,'Nova América da Colina',18),(3444,'Nova Aurora',18),(3445,'Nova Cantu',18),(3446,'Nova Esperança',18),(3447,'Nova Esperança do Sudoeste',18),(3448,'Nova Fátima',18),(3449,'Nova Laranjeiras',18),(3450,'Nova Londrina',18),(3451,'Nova Olímpia',18),(3452,'Nova Prata do Iguaçu',18),(3453,'Nova Santa Bárbara',18),(3454,'Nova Santa Rosa',18),(3455,'Nova Tebas',18),(3456,'Novo Itacolomi',18),(3457,'Ortigueira',18),(3458,'Ourizona',18),(3459,'Ouro Verde do Oeste',18),(3460,'Paiçandu',18),(3461,'Palmas',18),(3462,'Palmeira',18),(3463,'Palmital',18),(3464,'Palotina',18),(3465,'Paraíso do Norte',18),(3466,'Paranacity',18),(3467,'Paranaguá',18),(3468,'Paranapoema',18),(3469,'Paranavaí',18),(3470,'Pato Bragado',18),(3471,'Pato Branco',18),(3472,'Paula Freitas',18),(3473,'Paulo Frontin',18),(3474,'Peabiru',18),(3475,'Perobal',18),(3476,'Pérola',18),(3477,'Pérola d`Oeste',18),(3478,'Piên',18),(3479,'Pinhais',18),(3480,'Pinhal de São Bento',18),(3481,'Pinhalão',18),(3482,'Pinhão',18),(3483,'Piraí do Sul',18),(3484,'Piraquara',18),(3485,'Pitanga',18),(3486,'Pitangueiras',18),(3487,'Planaltina do Paraná',18),(3488,'Planalto',18),(3489,'Ponta Grossa',18),(3490,'Pontal do Paraná',18),(3491,'Porecatu',18),(3492,'Porto Amazonas',18),(3493,'Porto Barreiro',18),(3494,'Porto Rico',18),(3495,'Porto Vitória',18),(3496,'Prado Ferreira',18),(3497,'Pranchita',18),(3498,'Presidente Castelo Branco',18),(3499,'Primeiro de Maio',18),(3500,'Prudentópolis',18),(3501,'Quarto Centenário',18),(3502,'Quatiguá',18),(3503,'Quatro Barras',18),(3504,'Quatro Pontes',18),(3505,'Quedas do Iguaçu',18),(3506,'Querência do Norte',18),(3507,'Quinta do Sol',18),(3508,'Quitandinha',18),(3509,'Ramilândia',18),(3510,'Rancho Alegre',18),(3511,'Rancho Alegre d`Oeste',18),(3512,'Realeza',18),(3513,'Rebouças',18),(3514,'Renascença',18),(3515,'Reserva',18),(3516,'Reserva do Iguaçu',18),(3517,'Ribeirão Claro',18),(3518,'Ribeirão do Pinhal',18),(3519,'Rio Azul',18),(3520,'Rio Bom',18),(3521,'Rio Bonito do Iguaçu',18),(3522,'Rio Branco do Ivaí',18),(3523,'Rio Branco do Sul',18),(3524,'Rio Negro',18),(3525,'Rolândia',18),(3526,'Roncador',18),(3527,'Rondon',18),(3528,'Rosário do Ivaí',18),(3529,'Sabáudia',18),(3530,'Salgado Filho',18),(3531,'Salto do Itararé',18),(3532,'Salto do Lontra',18),(3533,'Santa Amélia',18),(3534,'Santa Cecília do Pavão',18),(3535,'Santa Cruz de Monte Castelo',18),(3536,'Santa Fé',18),(3537,'Santa Helena',18),(3538,'Santa Inês',18),(3539,'Santa Isabel do Ivaí',18),(3540,'Santa Izabel do Oeste',18),(3541,'Santa Lúcia',18),(3542,'Santa Maria do Oeste',18),(3543,'Santa Mariana',18),(3544,'Santa Mônica',18),(3545,'Santa Tereza do Oeste',18),(3546,'Santa Terezinha de Itaipu',18),(3547,'Santana do Itararé',18),(3548,'Santo Antônio da Platina',18),(3549,'Santo Antônio do Caiuá',18),(3550,'Santo Antônio do Paraíso',18),(3551,'Santo Antônio do Sudoeste',18),(3552,'Santo Inácio',18),(3553,'São Carlos do Ivaí',18),(3554,'São Jerônimo da Serra',18),(3555,'São João',18),(3556,'São João do Caiuá',18),(3557,'São João do Ivaí',18),(3558,'São João do Triunfo',18),(3559,'São Jorge d`Oeste',18),(3560,'São Jorge do Ivaí',18),(3561,'São Jorge do Patrocínio',18),(3562,'São José da Boa Vista',18),(3563,'São José das Palmeiras',18),(3564,'São José dos Pinhais',18),(3565,'São Manoel do Paraná',18),(3566,'São Mateus do Sul',18),(3567,'São Miguel do Iguaçu',18),(3568,'São Pedro do Iguaçu',18),(3569,'São Pedro do Ivaí',18),(3570,'São Pedro do Paraná',18),(3571,'São Sebastião da Amoreira',18),(3572,'São Tomé',18),(3573,'Sapopema',18),(3574,'Sarandi',18),(3575,'Saudade do Iguaçu',18),(3576,'Sengés',18),(3577,'Serranópolis do Iguaçu',18),(3578,'Sertaneja',18),(3579,'Sertanópolis',18),(3580,'Siqueira Campos',18),(3581,'Sulina',18),(3582,'Tamarana',18),(3583,'Tamboara',18),(3584,'Tapejara',18),(3585,'Tapira',18),(3586,'Teixeira Soares',18),(3587,'Telêmaco Borba',18),(3588,'Terra Boa',18),(3589,'Terra Rica',18),(3590,'Terra Roxa',18),(3591,'Tibagi',18),(3592,'Tijucas do Sul',18),(3593,'Toledo',18),(3594,'Tomazina',18),(3595,'Três Barras do Paraná',18),(3596,'Tunas do Paraná',18),(3597,'Tuneiras do Oeste',18),(3598,'Tupãssi',18),(3599,'Turvo',18),(3600,'Ubiratã',18),(3601,'Umuarama',18),(3602,'União da Vitória',18),(3603,'Uniflor',18),(3604,'Uraí',18),(3605,'Ventania',18),(3606,'Vera Cruz do Oeste',18),(3607,'Verê',18),(3608,'Virmond',18),(3609,'Vitorino',18),(3610,'Wenceslau Braz',18),(3611,'Xambrê',18),(3612,'Angra dos Reis',19),(3613,'Aperibé',19),(3614,'Araruama',19),(3615,'Areal',19),(3616,'Armação dos Búzios',19),(3617,'Arraial do Cabo',19),(3618,'Barra do Piraí',19),(3619,'Barra Mansa',19),(3620,'Belford Roxo',19),(3621,'Bom Jardim',19),(3622,'Bom Jesus do Itabapoana',19),(3623,'Cabo Frio',19),(3624,'Cachoeiras de Macacu',19),(3625,'Cambuci',19),(3626,'Campos dos Goytacazes',19),(3627,'Cantagalo',19),(3628,'Carapebus',19),(3629,'Cardoso Moreira',19),(3630,'Carmo',19),(3631,'Casimiro de Abreu',19),(3632,'Comendador Levy Gasparian',19),(3633,'Conceição de Macabu',19),(3634,'Cordeiro',19),(3635,'Duas Barras',19),(3636,'Duque de Caxias',19),(3637,'Engenheiro Paulo de Frontin',19),(3638,'Guapimirim',19),(3639,'Iguaba Grande',19),(3640,'Itaboraí',19),(3641,'Itaguaí',19),(3642,'Italva',19),(3643,'Itaocara',19),(3644,'Itaperuna',19),(3645,'Itatiaia',19),(3646,'Japeri',19),(3647,'Laje do Muriaé',19),(3648,'Macaé',19),(3649,'Macuco',19),(3650,'Magé',19),(3651,'Mangaratiba',19),(3652,'Maricá',19),(3653,'Mendes',19),(3654,'Mesquita',19),(3655,'Miguel Pereira',19),(3656,'Miracema',19),(3657,'Natividade',19),(3658,'Nilópolis',19),(3659,'Niterói',19),(3660,'Nova Friburgo',19),(3661,'Nova Iguaçu',19),(3662,'Paracambi',19),(3663,'Paraíba do Sul',19),(3664,'Parati',19),(3665,'Paty do Alferes',19),(3666,'Petrópolis',19),(3667,'Pinheiral',19),(3668,'Piraí',19),(3669,'Porciúncula',19),(3670,'Porto Real',19),(3671,'Quatis',19),(3672,'Queimados',19),(3673,'Quissamã',19),(3674,'Resende',19),(3675,'Rio Bonito',19),(3676,'Rio Claro',19),(3677,'Rio das Flores',19),(3678,'Rio das Ostras',19),(3679,'Santa Maria Madalena',19),(3680,'Santo Antônio de Pádua',19),(3681,'São Fidélis',19),(3682,'São Francisco de Itabapoana',19),(3683,'São Gonçalo',19),(3684,'São João da Barra',19),(3685,'São João de Meriti',19),(3686,'São José de Ubá',19),(3687,'São José do Vale do Rio Preto',19),(3688,'São Pedro da Aldeia',19),(3689,'São Sebastião do Alto',19),(3690,'Sapucaia',19),(3691,'Saquarema',19),(3692,'Seropédica',19),(3693,'Silva Jardim',19),(3694,'Sumidouro',19),(3695,'Tanguá',19),(3696,'Teresópolis',19),(3697,'Trajano de Morais',19),(3698,'Três Rios',19),(3699,'Valença',19),(3700,'Varre-Sai',19),(3701,'Vassouras',19),(3702,'Volta Redonda',19),(3703,'Acari',20),(3704,'Açu',20),(3705,'Afonso Bezerra',20),(3706,'Água Nova',20),(3707,'Alexandria',20),(3708,'Almino Afonso',20),(3709,'Alto do Rodrigues',20),(3710,'Angicos',20),(3711,'Antônio Martins',20),(3712,'Apodi',20),(3713,'Areia Branca',20),(3714,'Arês',20),(3715,'Augusto Severo',20),(3716,'Baía Formosa',20),(3717,'Baraúna',20),(3718,'Barcelona',20),(3719,'Bento Fernandes',20),(3720,'Bodó',20),(3721,'Bom Jesus',20),(3722,'Brejinho',20),(3723,'Caiçara do Norte',20),(3724,'Caiçara do Rio do Vento',20),(3725,'Caicó',20),(3726,'Campo Redondo',20),(3727,'Canguaretama',20),(3728,'Caraúbas',20),(3729,'Carnaúba dos Dantas',20),(3730,'Carnaubais',20),(3731,'Ceará-Mirim',20),(3732,'Cerro Corá',20),(3733,'Coronel Ezequiel',20),(3734,'Coronel João Pessoa',20),(3735,'Cruzeta',20),(3736,'Currais Novos',20),(3737,'Doutor Severiano',20),(3738,'Encanto',20),(3739,'Equador',20),(3740,'Espírito Santo',20),(3741,'Extremoz',20),(3742,'Felipe Guerra',20),(3743,'Fernando Pedroza',20),(3744,'Florânia',20),(3745,'Francisco Dantas',20),(3746,'Frutuoso Gomes',20),(3747,'Galinhos',20),(3748,'Goianinha',20),(3749,'Governador Dix-Sept Rosado',20),(3750,'Grossos',20),(3751,'Guamaré',20),(3752,'Ielmo Marinho',20),(3753,'Ipanguaçu',20),(3754,'Ipueira',20),(3755,'Itajá',20),(3756,'Itaú',20),(3757,'Jaçanã',20),(3758,'Jandaíra',20),(3759,'Janduís',20),(3760,'Januário Cicco',20),(3761,'Japi',20),(3762,'Jardim de Angicos',20),(3763,'Jardim de Piranhas',20),(3764,'Jardim do Seridó',20),(3765,'João Câmara',20),(3766,'João Dias',20),(3767,'José da Penha',20),(3768,'Jucurutu',20),(3769,'Jundiá',20),(3770,'Lagoa d`Anta',20),(3771,'Lagoa de Pedras',20),(3772,'Lagoa de Velhos',20),(3773,'Lagoa Nova',20),(3774,'Lagoa Salgada',20),(3775,'Lajes',20),(3776,'Lajes Pintadas',20),(3777,'Lucrécia',20),(3778,'Luís Gomes',20),(3779,'Macaíba',20),(3780,'Macau',20),(3781,'Major Sales',20),(3782,'Marcelino Vieira',20),(3783,'Martins',20),(3784,'Maxaranguape',20),(3785,'Messias Targino',20),(3786,'Montanhas',20),(3787,'Monte Alegre',20),(3788,'Monte das Gameleiras',20),(3789,'Mossoró',20),(3790,'Nísia Floresta',20),(3791,'Nova Cruz',20),(3792,'Olho-d`Água do Borges',20),(3793,'Ouro Branco',20),(3794,'Paraná',20),(3795,'Paraú',20),(3796,'Parazinho',20),(3797,'Parelhas',20),(3798,'Parnamirim',20),(3799,'Passa e Fica',20),(3800,'Passagem',20),(3801,'Patu',20),(3802,'Pau dos Ferros',20),(3803,'Pedra Grande',20),(3804,'Pedra Preta',20),(3805,'Pedro Avelino',20),(3806,'Pedro Velho',20),(3807,'Pendências',20),(3808,'Pilões',20),(3809,'Poço Branco',20),(3810,'Portalegre',20),(3811,'Porto do Mangue',20),(3812,'Presidente Juscelino',20),(3813,'Pureza',20),(3814,'Rafael Fernandes',20),(3815,'Rafael Godeiro',20),(3816,'Riacho da Cruz',20),(3817,'Riacho de Santana',20),(3818,'Riachuelo',20),(3819,'Rio do Fogo',20),(3820,'Rodolfo Fernandes',20),(3821,'Ruy Barbosa',20),(3822,'Santa Cruz',20),(3823,'Santa Maria',20),(3824,'Santana do Matos',20),(3825,'Santana do Seridó',20),(3826,'Santo Antônio',20),(3827,'São Bento do Norte',20),(3828,'São Bento do Trairí',20),(3829,'São Fernando',20),(3830,'São Francisco do Oeste',20),(3831,'São Gonçalo do Amarante',20),(3832,'São João do Sabugi',20),(3833,'São José de Mipibu',20),(3834,'São José do Campestre',20),(3835,'São José do Seridó',20),(3836,'São Miguel',20),(3837,'São Miguel do Gostoso',20),(3838,'São Paulo do Potengi',20),(3839,'São Pedro',20),(3840,'São Rafael',20),(3841,'São Tomé',20),(3842,'São Vicente',20),(3843,'Senador Elói de Souza',20),(3844,'Senador Georgino Avelino',20),(3845,'Serra de São Bento',20),(3846,'Serra do Mel',20),(3847,'Serra Negra do Norte',20),(3848,'Serrinha',20),(3849,'Serrinha dos Pintos',20),(3850,'Severiano Melo',20),(3851,'Sítio Novo',20),(3852,'Taboleiro Grande',20),(3853,'Taipu',20),(3854,'Tangará',20),(3855,'Tenente Ananias',20),(3856,'Tenente Laurentino Cruz',20),(3857,'Tibau',20),(3858,'Tibau do Sul',20),(3859,'Timbaúba dos Batistas',20),(3860,'Touros',20),(3861,'Triunfo Potiguar',20),(3862,'Umarizal',20),(3863,'Upanema',20),(3864,'Várzea',20),(3865,'Venha-Ver',20),(3866,'Vera Cruz',20),(3867,'Viçosa',20),(3868,'Vila Flor',20),(3869,'Alta Floresta d`Oeste',21),(3870,'Alto Alegre dos Parecis',21),(3871,'Alto Paraíso',21),(3872,'Alvorada d`Oeste',21),(3873,'Ariquemes',21),(3874,'Buritis',21),(3875,'Cabixi',21),(3876,'Cacaulândia',21),(3877,'Cacoal',21),(3878,'Campo Novo de Rondônia',21),(3879,'Candeias do Jamari',21),(3880,'Castanheiras',21),(3881,'Cerejeiras',21),(3882,'Chupinguaia',21),(3883,'Colorado do Oeste',21),(3884,'Corumbiara',21),(3885,'Costa Marques',21),(3886,'Cujubim',21),(3887,'Espigão d`Oeste',21),(3888,'Governador Jorge Teixeira',21),(3889,'Guajará-Mirim',21),(3890,'Itapuã do Oeste',21),(3891,'Jaru',21),(3892,'Ji-Paraná',21),(3893,'Machadinho d`Oeste',21),(3894,'Ministro Andreazza',21),(3895,'Mirante da Serra',21),(3896,'Monte Negro',21),(3897,'Nova Brasilândia d`Oeste',21),(3898,'Nova Mamoré',21),(3899,'Nova União',21),(3900,'Novo Horizonte do Oeste',21),(3901,'Ouro Preto do Oeste',21),(3902,'Parecis',21),(3903,'Pimenta Bueno',21),(3904,'Pimenteiras do Oeste',21),(3905,'Presidente Médici',21),(3906,'Primavera de Rondônia',21),(3907,'Rio Crespo',21),(3908,'Rolim de Moura',21),(3909,'Santa Luzia d`Oeste',21),(3910,'São Felipe d`Oeste',21),(3911,'São Francisco do Guaporé',21),(3912,'São Miguel do Guaporé',21),(3913,'Seringueiras',21),(3914,'Teixeirópolis',21),(3915,'Theobroma',21),(3916,'Urupá',21),(3917,'Vale do Anari',21),(3918,'Vale do Paraíso',21),(3919,'Vilhena',21),(3920,'Alto Alegre',22),(3921,'Amajari',22),(3922,'Bonfim',22),(3923,'Cantá',22),(3924,'Caracaraí',22),(3925,'Caroebe',22),(3926,'Iracema',22),(3927,'Mucajaí',22),(3928,'Normandia',22),(3929,'Pacaraima',22),(3930,'Rorainópolis',22),(3931,'São João da Baliza',22),(3932,'São Luiz',22),(3933,'Uiramutã',22),(3934,'Aceguá',23),(3935,'Água Santa',23),(3936,'Agudo',23),(3937,'Ajuricaba',23),(3938,'Alecrim',23),(3939,'Alegrete',23),(3940,'Alegria',23),(3941,'Almirante Tamandaré do Sul',23),(3942,'Alpestre',23),(3943,'Alto Alegre',23),(3944,'Alto Feliz',23),(3945,'Alvorada',23),(3946,'Amaral Ferrador',23),(3947,'Ametista do Sul',23),(3948,'André da Rocha',23),(3949,'Anta Gorda',23),(3950,'Antônio Prado',23),(3951,'Arambaré',23),(3952,'Araricá',23),(3953,'Aratiba',23),(3954,'Arroio do Meio',23),(3955,'Arroio do Padre',23),(3956,'Arroio do Sal',23),(3957,'Arroio do Tigre',23),(3958,'Arroio dos Ratos',23),(3959,'Arroio Grande',23),(3960,'Arvorezinha',23),(3961,'Augusto Pestana',23),(3962,'Áurea',23),(3963,'Bagé',23),(3964,'Balneário Pinhal',23),(3965,'Barão',23),(3966,'Barão de Cotegipe',23),(3967,'Barão do Triunfo',23),(3968,'Barra do Guarita',23),(3969,'Barra do Quaraí',23),(3970,'Barra do Ribeiro',23),(3971,'Barra do Rio Azul',23),(3972,'Barra Funda',23),(3973,'Barracão',23),(3974,'Barros Cassal',23),(3975,'Benjamin Constant do Sul',23),(3976,'Bento Gonçalves',23),(3977,'Boa Vista das Missões',23),(3978,'Boa Vista do Buricá',23),(3979,'Boa Vista do Cadeado',23),(3980,'Boa Vista do Incra',23),(3981,'Boa Vista do Sul',23),(3982,'Bom Jesus',23),(3983,'Bom Princípio',23),(3984,'Bom Progresso',23),(3985,'Bom Retiro do Sul',23),(3986,'Boqueirão do Leão',23),(3987,'Bossoroca',23),(3988,'Bozano',23),(3989,'Braga',23),(3990,'Brochier',23),(3991,'Butiá',23),(3992,'Caçapava do Sul',23),(3993,'Cacequi',23),(3994,'Cachoeira do Sul',23),(3995,'Cachoeirinha',23),(3996,'Cacique Doble',23),(3997,'Caibaté',23),(3998,'Caiçara',23),(3999,'Camaquã',23),(4000,'Camargo',23),(4001,'Cambará do Sul',23),(4002,'Campestre da Serra',23),(4003,'Campina das Missões',23),(4004,'Campinas do Sul',23),(4005,'Campo Bom',23),(4006,'Campo Novo',23),(4007,'Campos Borges',23),(4008,'Candelária',23),(4009,'Cândido Godói',23),(4010,'Candiota',23),(4011,'Canela',23),(4012,'Canguçu',23),(4013,'Canoas',23),(4014,'Canudos do Vale',23),(4015,'Capão Bonito do Sul',23),(4016,'Capão da Canoa',23),(4017,'Capão do Cipó',23),(4018,'Capão do Leão',23),(4019,'Capela de Santana',23),(4020,'Capitão',23),(4021,'Capivari do Sul',23),(4022,'Caraá',23),(4023,'Carazinho',23),(4024,'Carlos Barbosa',23),(4025,'Carlos Gomes',23),(4026,'Casca',23),(4027,'Caseiros',23),(4028,'Catuípe',23),(4029,'Caxias do Sul',23),(4030,'Centenário',23),(4031,'Cerrito',23),(4032,'Cerro Branco',23),(4033,'Cerro Grande',23),(4034,'Cerro Grande do Sul',23),(4035,'Cerro Largo',23),(4036,'Chapada',23),(4037,'Charqueadas',23),(4038,'Charrua',23),(4039,'Chiapetta',23),(4040,'Chuí',23),(4041,'Chuvisca',23),(4042,'Cidreira',23),(4043,'Ciríaco',23),(4044,'Colinas',23),(4045,'Colorado',23),(4046,'Condor',23),(4047,'Constantina',23),(4048,'Coqueiro Baixo',23),(4049,'Coqueiros do Sul',23),(4050,'Coronel Barros',23),(4051,'Coronel Bicaco',23),(4052,'Coronel Pilar',23),(4053,'Cotiporã',23),(4054,'Coxilha',23),(4055,'Crissiumal',23),(4056,'Cristal',23),(4057,'Cristal do Sul',23),(4058,'Cruz Alta',23),(4059,'Cruzaltense',23),(4060,'Cruzeiro do Sul',23),(4061,'David Canabarro',23),(4062,'Derrubadas',23),(4063,'Dezesseis de Novembro',23),(4064,'Dilermando de Aguiar',23),(4065,'Dois Irmãos',23),(4066,'Dois Irmãos das Missões',23),(4067,'Dois Lajeados',23),(4068,'Dom Feliciano',23),(4069,'Dom Pedrito',23),(4070,'Dom Pedro de Alcântara',23),(4071,'Dona Francisca',23),(4072,'Doutor Maurício Cardoso',23),(4073,'Doutor Ricardo',23),(4074,'Eldorado do Sul',23),(4075,'Encantado',23),(4076,'Encruzilhada do Sul',23),(4077,'Engenho Velho',23),(4078,'Entre Rios do Sul',23),(4079,'Entre-Ijuís',23),(4080,'Erebango',23),(4081,'Erechim',23),(4082,'Ernestina',23),(4083,'Erval Grande',23),(4084,'Erval Seco',23),(4085,'Esmeralda',23),(4086,'Esperança do Sul',23),(4087,'Espumoso',23),(4088,'Estação',23),(4089,'Estância Velha',23),(4090,'Esteio',23),(4091,'Estrela',23),(4092,'Estrela Velha',23),(4093,'Eugênio de Castro',23),(4094,'Fagundes Varela',23),(4095,'Farroupilha',23),(4096,'Faxinal do Soturno',23),(4097,'Faxinalzinho',23),(4098,'Fazenda Vilanova',23),(4099,'Feliz',23),(4100,'Flores da Cunha',23),(4101,'Floriano Peixoto',23),(4102,'Fontoura Xavier',23),(4103,'Formigueiro',23),(4104,'Forquetinha',23),(4105,'Fortaleza dos Valos',23),(4106,'Frederico Westphalen',23),(4107,'Garibaldi',23),(4108,'Garruchos',23),(4109,'Gaurama',23),(4110,'General Câmara',23),(4111,'Gentil',23),(4112,'Getúlio Vargas',23),(4113,'Giruá',23),(4114,'Glorinha',23),(4115,'Gramado',23),(4116,'Gramado dos Loureiros',23),(4117,'Gramado Xavier',23),(4118,'Gravataí',23),(4119,'Guabiju',23),(4120,'Guaíba',23),(4121,'Guaporé',23),(4122,'Guarani das Missões',23),(4123,'Harmonia',23),(4124,'Herval',23),(4125,'Herveiras',23),(4126,'Horizontina',23),(4127,'Hulha Negra',23),(4128,'Humaitá',23),(4129,'Ibarama',23),(4130,'Ibiaçá',23),(4131,'Ibiraiaras',23),(4132,'Ibirapuitã',23),(4133,'Ibirubá',23),(4134,'Igrejinha',23),(4135,'Ijuí',23),(4136,'Ilópolis',23),(4137,'Imbé',23),(4138,'Imigrante',23),(4139,'Independência',23),(4140,'Inhacorá',23),(4141,'Ipê',23),(4142,'Ipiranga do Sul',23),(4143,'Iraí',23),(4144,'Itaara',23),(4145,'Itacurubi',23),(4146,'Itapuca',23),(4147,'Itaqui',23),(4148,'Itati',23),(4149,'Itatiba do Sul',23),(4150,'Ivorá',23),(4151,'Ivoti',23),(4152,'Jaboticaba',23),(4153,'Jacuizinho',23),(4154,'Jacutinga',23),(4155,'Jaguarão',23),(4156,'Jaguari',23),(4157,'Jaquirana',23),(4158,'Jari',23),(4159,'Jóia',23),(4160,'Júlio de Castilhos',23),(4161,'Lagoa Bonita do Sul',23),(4162,'Lagoa dos Três Cantos',23),(4163,'Lagoa Vermelha',23),(4164,'Lagoão',23),(4165,'Lajeado',23),(4166,'Lajeado do Bugre',23),(4167,'Lavras do Sul',23),(4168,'Liberato Salzano',23),(4169,'Lindolfo Collor',23),(4170,'Linha Nova',23),(4171,'Maçambara',23),(4172,'Machadinho',23),(4173,'Mampituba',23),(4174,'Manoel Viana',23),(4175,'Maquiné',23),(4176,'Maratá',23),(4177,'Marau',23),(4178,'Marcelino Ramos',23),(4179,'Mariana Pimentel',23),(4180,'Mariano Moro',23),(4181,'Marques de Souza',23),(4182,'Mata',23),(4183,'Mato Castelhano',23),(4184,'Mato Leitão',23),(4185,'Mato Queimado',23),(4186,'Maximiliano de Almeida',23),(4187,'Minas do Leão',23),(4188,'Miraguaí',23),(4189,'Montauri',23),(4190,'Monte Alegre dos Campos',23),(4191,'Monte Belo do Sul',23),(4192,'Montenegro',23),(4193,'Mormaço',23),(4194,'Morrinhos do Sul',23),(4195,'Morro Redondo',23),(4196,'Morro Reuter',23),(4197,'Mostardas',23),(4198,'Muçum',23),(4199,'Muitos Capões',23),(4200,'Muliterno',23),(4201,'Não-Me-Toque',23),(4202,'Nicolau Vergueiro',23),(4203,'Nonoai',23),(4204,'Nova Alvorada',23),(4205,'Nova Araçá',23),(4206,'Nova Bassano',23),(4207,'Nova Boa Vista',23),(4208,'Nova Bréscia',23),(4209,'Nova Candelária',23),(4210,'Nova Esperança do Sul',23),(4211,'Nova Hartz',23),(4212,'Nova Pádua',23),(4213,'Nova Palma',23),(4214,'Nova Petrópolis',23),(4215,'Nova Prata',23),(4216,'Nova Ramada',23),(4217,'Nova Roma do Sul',23),(4218,'Nova Santa Rita',23),(4219,'Novo Barreiro',23),(4220,'Novo Cabrais',23),(4221,'Novo Hamburgo',23),(4222,'Novo Machado',23),(4223,'Novo Tiradentes',23),(4224,'Novo Xingu',23),(4225,'Osório',23),(4226,'Paim Filho',23),(4227,'Palmares do Sul',23),(4228,'Palmeira das Missões',23),(4229,'Palmitinho',23),(4230,'Panambi',23),(4231,'Pantano Grande',23),(4232,'Paraí',23),(4233,'Paraíso do Sul',23),(4234,'Pareci Novo',23),(4235,'Parobé',23),(4236,'Passa Sete',23),(4237,'Passo do Sobrado',23),(4238,'Passo Fundo',23),(4239,'Paulo Bento',23),(4240,'Paverama',23),(4241,'Pedras Altas',23),(4242,'Pedro Osório',23),(4243,'Pejuçara',23),(4244,'Pelotas',23),(4245,'Picada Café',23),(4246,'Pinhal',23),(4247,'Pinhal da Serra',23),(4248,'Pinhal Grande',23),(4249,'Pinheirinho do Vale',23),(4250,'Pinheiro Machado',23),(4251,'Pirapó',23),(4252,'Piratini',23),(4253,'Planalto',23),(4254,'Poço das Antas',23),(4255,'Pontão',23),(4256,'Ponte Preta',23),(4257,'Portão',23),(4258,'Porto Lucena',23),(4259,'Porto Mauá',23),(4260,'Porto Vera Cruz',23),(4261,'Porto Xavier',23),(4262,'Pouso Novo',23),(4263,'Presidente Lucena',23),(4264,'Progresso',23),(4265,'Protásio Alves',23),(4266,'Putinga',23),(4267,'Quaraí',23),(4268,'Quatro Irmãos',23),(4269,'Quevedos',23),(4270,'Quinze de Novembro',23),(4271,'Redentora',23),(4272,'Relvado',23),(4273,'Restinga Seca',23),(4274,'Rio dos Índios',23),(4275,'Rio Grande',23),(4276,'Rio Pardo',23),(4277,'Riozinho',23),(4278,'Roca Sales',23),(4279,'Rodeio Bonito',23),(4280,'Rolador',23),(4281,'Rolante',23),(4282,'Ronda Alta',23),(4283,'Rondinha',23),(4284,'Roque Gonzales',23),(4285,'Rosário do Sul',23),(4286,'Sagrada Família',23),(4287,'Saldanha Marinho',23),(4288,'Salto do Jacuí',23),(4289,'Salvador das Missões',23),(4290,'Salvador do Sul',23),(4291,'Sananduva',23),(4292,'Santa Bárbara do Sul',23),(4293,'Santa Cecília do Sul',23),(4294,'Santa Clara do Sul',23),(4295,'Santa Cruz do Sul',23),(4296,'Santa Margarida do Sul',23),(4297,'Santa Maria',23),(4298,'Santa Maria do Herval',23),(4299,'Santa Rosa',23),(4300,'Santa Tereza',23),(4301,'Santa Vitória do Palmar',23),(4302,'Santana da Boa Vista',23),(4303,'Santana do Livramento',23),(4304,'Santiago',23),(4305,'Santo Ângelo',23),(4306,'Santo Antônio da Patrulha',23),(4307,'Santo Antônio das Missões',23),(4308,'Santo Antônio do Palma',23),(4309,'Santo Antônio do Planalto',23),(4310,'Santo Augusto',23),(4311,'Santo Cristo',23),(4312,'Santo Expedito do Sul',23),(4313,'São Borja',23),(4314,'São Domingos do Sul',23),(4315,'São Francisco de Assis',23),(4316,'São Francisco de Paula',23),(4317,'São Gabriel',23),(4318,'São Jerônimo',23),(4319,'São João da Urtiga',23),(4320,'São João do Polêsine',23),(4321,'São Jorge',23),(4322,'São José das Missões',23),(4323,'São José do Herval',23),(4324,'São José do Hortêncio',23),(4325,'São José do Inhacorá',23),(4326,'São José do Norte',23),(4327,'São José do Ouro',23),(4328,'São José do Sul',23),(4329,'São José dos Ausentes',23),(4330,'São Leopoldo',23),(4331,'São Lourenço do Sul',23),(4332,'São Luiz Gonzaga',23),(4333,'São Marcos',23),(4334,'São Martinho',23),(4335,'São Martinho da Serra',23),(4336,'São Miguel das Missões',23),(4337,'São Nicolau',23),(4338,'São Paulo das Missões',23),(4339,'São Pedro da Serra',23),(4340,'São Pedro das Missões',23),(4341,'São Pedro do Butiá',23),(4342,'São Pedro do Sul',23),(4343,'São Sebastião do Caí',23),(4344,'São Sepé',23),(4345,'São Valentim',23),(4346,'São Valentim do Sul',23),(4347,'São Valério do Sul',23),(4348,'São Vendelino',23),(4349,'São Vicente do Sul',23),(4350,'Sapiranga',23),(4351,'Sapucaia do Sul',23),(4352,'Sarandi',23),(4353,'Seberi',23),(4354,'Sede Nova',23),(4355,'Segredo',23),(4356,'Selbach',23),(4357,'Senador Salgado Filho',23),(4358,'Sentinela do Sul',23),(4359,'Serafina Corrêa',23),(4360,'Sério',23),(4361,'Sertão',23),(4362,'Sertão Santana',23),(4363,'Sete de Setembro',23),(4364,'Severiano de Almeida',23),(4365,'Silveira Martins',23),(4366,'Sinimbu',23),(4367,'Sobradinho',23),(4368,'Soledade',23),(4369,'Tabaí',23),(4370,'Tapejara',23),(4371,'Tapera',23),(4372,'Tapes',23),(4373,'Taquara',23),(4374,'Taquari',23),(4375,'Taquaruçu do Sul',23),(4376,'Tavares',23),(4377,'Tenente Portela',23),(4378,'Terra de Areia',23),(4379,'Teutônia',23),(4380,'Tio Hugo',23),(4381,'Tiradentes do Sul',23),(4382,'Toropi',23),(4383,'Torres',23),(4384,'Tramandaí',23),(4385,'Travesseiro',23),(4386,'Três Arroios',23),(4387,'Três Cachoeiras',23),(4388,'Três Coroas',23),(4389,'Três de Maio',23),(4390,'Três Forquilhas',23),(4391,'Três Palmeiras',23),(4392,'Três Passos',23),(4393,'Trindade do Sul',23),(4394,'Triunfo',23),(4395,'Tucunduva',23),(4396,'Tunas',23),(4397,'Tupanci do Sul',23),(4398,'Tupanciretã',23),(4399,'Tupandi',23),(4400,'Tuparendi',23),(4401,'Turuçu',23),(4402,'Ubiretama',23),(4403,'União da Serra',23),(4404,'Unistalda',23),(4405,'Uruguaiana',23),(4406,'Vacaria',23),(4407,'Vale do Sol',23),(4408,'Vale Real',23),(4409,'Vale Verde',23),(4410,'Vanini',23),(4411,'Venâncio Aires',23),(4412,'Vera Cruz',23),(4413,'Veranópolis',23),(4414,'Vespasiano Correa',23),(4415,'Viadutos',23),(4416,'Viamão',23),(4417,'Vicente Dutra',23),(4418,'Victor Graeff',23),(4419,'Vila Flores',23),(4420,'Vila Lângaro',23),(4421,'Vila Maria',23),(4422,'Vila Nova do Sul',23),(4423,'Vista Alegre',23),(4424,'Vista Alegre do Prata',23),(4425,'Vista Gaúcha',23),(4426,'Vitória das Missões',23),(4427,'Westfália',23),(4428,'Xangri-lá',23),(4429,'Abdon Batista',24),(4430,'Abelardo Luz',24),(4431,'Agrolândia',24),(4432,'Agronômica',24),(4433,'Água Doce',24),(4434,'Águas de Chapecó',24),(4435,'Águas Frias',24),(4436,'Águas Mornas',24),(4437,'Alfredo Wagner',24),(4438,'Alto Bela Vista',24),(4439,'Anchieta',24),(4440,'Angelina',24),(4441,'Anita Garibaldi',24),(4442,'Anitápolis',24),(4443,'Antônio Carlos',24),(4444,'Apiúna',24),(4445,'Arabutã',24),(4446,'Araquari',24),(4447,'Araranguá',24),(4448,'Armazém',24),(4449,'Arroio Trinta',24),(4450,'Arvoredo',24),(4451,'Ascurra',24),(4452,'Atalanta',24),(4453,'Aurora',24),(4454,'Balneáreo Piçarras',24),(4455,'Balneário Arroio do Silva',24),(4456,'Balneário Barra do Sul',24),(4457,'Balneário Camboriú',24),(4458,'Balneário Gaivota',24),(4459,'Bandeirante',24),(4460,'Barra Bonita',24),(4461,'Barra Velha',24),(4462,'Bela Vista do Toldo',24),(4463,'Belmonte',24),(4464,'Benedito Novo',24),(4465,'Biguaçu',24),(4466,'Blumenau',24),(4467,'Bocaina do Sul',24),(4468,'Bom Jardim da Serra',24),(4469,'Bom Jesus',24),(4470,'Bom Jesus do Oeste',24),(4471,'Bom Retiro',24),(4472,'Bombinhas',24),(4473,'Botuverá',24),(4474,'Braço do Norte',24),(4475,'Braço do Trombudo',24),(4476,'Brunópolis',24),(4477,'Brusque',24),(4478,'Caçador',24),(4479,'Caibi',24),(4480,'Calmon',24),(4481,'Camboriú',24),(4482,'Campo Alegre',24),(4483,'Campo Belo do Sul',24),(4484,'Campo Erê',24),(4485,'Campos Novos',24),(4486,'Canelinha',24),(4487,'Canoinhas',24),(4488,'Capão Alto',24),(4489,'Capinzal',24),(4490,'Capivari de Baixo',24),(4491,'Catanduvas',24),(4492,'Caxambu do Sul',24),(4493,'Celso Ramos',24),(4494,'Cerro Negro',24),(4495,'Chapadão do Lageado',24),(4496,'Chapecó',24),(4497,'Cocal do Sul',24),(4498,'Concórdia',24),(4499,'Cordilheira Alta',24),(4500,'Coronel Freitas',24),(4501,'Coronel Martins',24),(4502,'Correia Pinto',24),(4503,'Corupá',24),(4504,'Criciúma',24),(4505,'Cunha Porã',24),(4506,'Cunhataí',24),(4507,'Curitibanos',24),(4508,'Descanso',24),(4509,'Dionísio Cerqueira',24),(4510,'Dona Emma',24),(4511,'Doutor Pedrinho',24),(4512,'Entre Rios',24),(4513,'Ermo',24),(4514,'Erval Velho',24),(4515,'Faxinal dos Guedes',24),(4516,'Flor do Sertão',24),(4517,'Formosa do Sul',24),(4518,'Forquilhinha',24),(4519,'Fraiburgo',24),(4520,'Frei Rogério',24),(4521,'Galvão',24),(4522,'Garopaba',24),(4523,'Garuva',24),(4524,'Gaspar',24),(4525,'Governador Celso Ramos',24),(4526,'Grão Pará',24),(4527,'Gravatal',24),(4528,'Guabiruba',24),(4529,'Guaraciaba',24),(4530,'Guaramirim',24),(4531,'Guarujá do Sul',24),(4532,'Guatambú',24),(4533,'Herval d`Oeste',24),(4534,'Ibiam',24),(4535,'Ibicaré',24),(4536,'Ibirama',24),(4537,'Içara',24),(4538,'Ilhota',24),(4539,'Imaruí',24),(4540,'Imbituba',24),(4541,'Imbuia',24),(4542,'Indaial',24),(4543,'Iomerê',24),(4544,'Ipira',24),(4545,'Iporã do Oeste',24),(4546,'Ipuaçu',24),(4547,'Ipumirim',24),(4548,'Iraceminha',24),(4549,'Irani',24),(4550,'Irati',24),(4551,'Irineópolis',24),(4552,'Itá',24),(4553,'Itaiópolis',24),(4554,'Itajaí',24),(4555,'Itapema',24),(4556,'Itapiranga',24),(4557,'Itapoá',24),(4558,'Ituporanga',24),(4559,'Jaborá',24),(4560,'Jacinto Machado',24),(4561,'Jaguaruna',24),(4562,'Jaraguá do Sul',24),(4563,'Jardinópolis',24),(4564,'Joaçaba',24),(4565,'Joinville',24),(4566,'José Boiteux',24),(4567,'Jupiá',24),(4568,'Lacerdópolis',24),(4569,'Lages',24),(4570,'Laguna',24),(4571,'Lajeado Grande',24),(4572,'Laurentino',24),(4573,'Lauro Muller',24),(4574,'Lebon Régis',24),(4575,'Leoberto Leal',24),(4576,'Lindóia do Sul',24),(4577,'Lontras',24),(4578,'Luiz Alves',24),(4579,'Luzerna',24),(4580,'Macieira',24),(4581,'Mafra',24),(4582,'Major Gercino',24),(4583,'Major Vieira',24),(4584,'Maracajá',24),(4585,'Maravilha',24),(4586,'Marema',24),(4587,'Massaranduba',24),(4588,'Matos Costa',24),(4589,'Meleiro',24),(4590,'Mirim Doce',24),(4591,'Modelo',24),(4592,'Mondaí',24),(4593,'Monte Carlo',24),(4594,'Monte Castelo',24),(4595,'Morro da Fumaça',24),(4596,'Morro Grande',24),(4597,'Navegantes',24),(4598,'Nova Erechim',24),(4599,'Nova Itaberaba',24),(4600,'Nova Trento',24),(4601,'Nova Veneza',24),(4602,'Novo Horizonte',24),(4603,'Orleans',24),(4604,'Otacílio Costa',24),(4605,'Ouro',24),(4606,'Ouro Verde',24),(4607,'Paial',24),(4608,'Painel',24),(4609,'Palhoça',24),(4610,'Palma Sola',24),(4611,'Palmeira',24),(4612,'Palmitos',24),(4613,'Papanduva',24),(4614,'Paraíso',24),(4615,'Passo de Torres',24),(4616,'Passos Maia',24),(4617,'Paulo Lopes',24),(4618,'Pedras Grandes',24),(4619,'Penha',24),(4620,'Peritiba',24),(4621,'Petrolândia',24),(4622,'Pinhalzinho',24),(4623,'Pinheiro Preto',24),(4624,'Piratuba',24),(4625,'Planalto Alegre',24),(4626,'Pomerode',24),(4627,'Ponte Alta',24),(4628,'Ponte Alta do Norte',24),(4629,'Ponte Serrada',24),(4630,'Porto Belo',24),(4631,'Porto União',24),(4632,'Pouso Redondo',24),(4633,'Praia Grande',24),(4634,'Presidente Castello Branco',24),(4635,'Presidente Getúlio',24),(4636,'Presidente Nereu',24),(4637,'Princesa',24),(4638,'Quilombo',24),(4639,'Rancho Queimado',24),(4640,'Rio das Antas',24),(4641,'Rio do Campo',24),(4642,'Rio do Oeste',24),(4643,'Rio do Sul',24),(4644,'Rio dos Cedros',24),(4645,'Rio Fortuna',24),(4646,'Rio Negrinho',24),(4647,'Rio Rufino',24),(4648,'Riqueza',24),(4649,'Rodeio',24),(4650,'Romelândia',24),(4651,'Salete',24),(4652,'Saltinho',24),(4653,'Salto Veloso',24),(4654,'Sangão',24),(4655,'Santa Cecília',24),(4656,'Santa Helena',24),(4657,'Santa Rosa de Lima',24),(4658,'Santa Rosa do Sul',24),(4659,'Santa Terezinha',24),(4660,'Santa Terezinha do Progresso',24),(4661,'Santiago do Sul',24),(4662,'Santo Amaro da Imperatriz',24),(4663,'São Bento do Sul',24),(4664,'São Bernardino',24),(4665,'São Bonifácio',24),(4666,'São Carlos',24),(4667,'São Cristovão do Sul',24),(4668,'São Domingos',24),(4669,'São Francisco do Sul',24),(4670,'São João Batista',24),(4671,'São João do Itaperiú',24),(4672,'São João do Oeste',24),(4673,'São João do Sul',24),(4674,'São Joaquim',24),(4675,'São José',24),(4676,'São José do Cedro',24),(4677,'São José do Cerrito',24),(4678,'São Lourenço do Oeste',24),(4679,'São Ludgero',24),(4680,'São Martinho',24),(4681,'São Miguel da Boa Vista',24),(4682,'São Miguel do Oeste',24),(4683,'São Pedro de Alcântara',24),(4684,'Saudades',24),(4685,'Schroeder',24),(4686,'Seara',24),(4687,'Serra Alta',24),(4688,'Siderópolis',24),(4689,'Sombrio',24),(4690,'Sul Brasil',24),(4691,'Taió',24),(4692,'Tangará',24),(4693,'Tigrinhos',24),(4694,'Tijucas',24),(4695,'Timbé do Sul',24),(4696,'Timbó',24),(4697,'Timbó Grande',24),(4698,'Três Barras',24),(4699,'Treviso',24),(4700,'Treze de Maio',24),(4701,'Treze Tílias',24),(4702,'Trombudo Central',24),(4703,'Tubarão',24),(4704,'Tunápolis',24),(4705,'Turvo',24),(4706,'União do Oeste',24),(4707,'Urubici',24),(4708,'Urupema',24),(4709,'Urussanga',24),(4710,'Vargeão',24),(4711,'Vargem',24),(4712,'Vargem Bonita',24),(4713,'Vidal Ramos',24),(4714,'Videira',24),(4715,'Vitor Meireles',24),(4716,'Witmarsum',24),(4717,'Xanxerê',24),(4718,'Xavantina',24),(4719,'Xaxim',24),(4720,'Zortéa',24),(4721,'Amparo de São Francisco',25),(4722,'Aquidabã',25),(4723,'Arauá',25),(4724,'Areia Branca',25),(4725,'Barra dos Coqueiros',25),(4726,'Boquim',25),(4727,'Brejo Grande',25),(4728,'Campo do Brito',25),(4729,'Canhoba',25),(4730,'Canindé de São Francisco',25),(4731,'Capela',25),(4732,'Carira',25),(4733,'Carmópolis',25),(4734,'Cedro de São João',25),(4735,'Cristinápolis',25),(4736,'Cumbe',25),(4737,'Divina Pastora',25),(4738,'Estância',25),(4739,'Feira Nova',25),(4740,'Frei Paulo',25),(4741,'Gararu',25),(4742,'General Maynard',25),(4743,'Gracho Cardoso',25),(4744,'Ilha das Flores',25),(4745,'Indiaroba',25),(4746,'Itabaiana',25),(4747,'Itabaianinha',25),(4748,'Itabi',25),(4749,'Itaporanga d`Ajuda',25),(4750,'Japaratuba',25),(4751,'Japoatã',25),(4752,'Lagarto',25),(4753,'Laranjeiras',25),(4754,'Macambira',25),(4755,'Malhada dos Bois',25),(4756,'Malhador',25),(4757,'Maruim',25),(4758,'Moita Bonita',25),(4759,'Monte Alegre de Sergipe',25),(4760,'Muribeca',25),(4761,'Neópolis',25),(4762,'Nossa Senhora Aparecida',25),(4763,'Nossa Senhora da Glória',25),(4764,'Nossa Senhora das Dores',25),(4765,'Nossa Senhora de Lourdes',25),(4766,'Nossa Senhora do Socorro',25),(4767,'Pacatuba',25),(4768,'Pedra Mole',25),(4769,'Pedrinhas',25),(4770,'Pinhão',25),(4771,'Pirambu',25),(4772,'Poço Redondo',25),(4773,'Poço Verde',25),(4774,'Porto da Folha',25),(4775,'Propriá',25),(4776,'Riachão do Dantas',25),(4777,'Riachuelo',25),(4778,'Ribeirópolis',25),(4779,'Rosário do Catete',25),(4780,'Salgado',25),(4781,'Santa Luzia do Itanhy',25),(4782,'Santa Rosa de Lima',25),(4783,'Santana do São Francisco',25),(4784,'Santo Amaro das Brotas',25),(4785,'São Cristóvão',25),(4786,'São Domingos',25),(4787,'São Francisco',25),(4788,'São Miguel do Aleixo',25),(4789,'Simão Dias',25),(4790,'Siriri',25),(4791,'Telha',25),(4792,'Tobias Barreto',25),(4793,'Tomar do Geru',25),(4794,'Umbaúba',25),(4795,'Adamantina',26),(4796,'Adolfo',26),(4797,'Aguaí',26),(4798,'Águas da Prata',26),(4799,'Águas de Lindóia',26),(4800,'Águas de Santa Bárbara',26),(4801,'Águas de São Pedro',26),(4802,'Agudos',26),(4803,'Alambari',26),(4804,'Alfredo Marcondes',26),(4805,'Altair',26),(4806,'Altinópolis',26),(4807,'Alto Alegre',26),(4808,'Alumínio',26),(4809,'Álvares Florence',26),(4810,'Álvares Machado',26),(4811,'Álvaro de Carvalho',26),(4812,'Alvinlândia',26),(4813,'Americana',26),(4814,'Américo Brasiliense',26),(4815,'Américo de Campos',26),(4816,'Amparo',26),(4817,'Analândia',26),(4818,'Andradina',26),(4819,'Angatuba',26),(4820,'Anhembi',26),(4821,'Anhumas',26),(4822,'Aparecida',26),(4823,'Aparecida d`Oeste',26),(4824,'Apiaí',26),(4825,'Araçariguama',26),(4826,'Araçatuba',26),(4827,'Araçoiaba da Serra',26),(4828,'Aramina',26),(4829,'Arandu',26),(4830,'Arapeí',26),(4831,'Araraquara',26),(4832,'Araras',26),(4833,'Arco-Íris',26),(4834,'Arealva',26),(4835,'Areias',26),(4836,'Areiópolis',26),(4837,'Ariranha',26),(4838,'Artur Nogueira',26),(4839,'Arujá',26),(4840,'Aspásia',26),(4841,'Assis',26),(4842,'Atibaia',26),(4843,'Auriflama',26),(4844,'Avaí',26),(4845,'Avanhandava',26),(4846,'Avaré',26),(4847,'Bady Bassitt',26),(4848,'Balbinos',26),(4849,'Bálsamo',26),(4850,'Bananal',26),(4851,'Barão de Antonina',26),(4852,'Barbosa',26),(4853,'Bariri',26),(4854,'Barra Bonita',26),(4855,'Barra do Chapéu',26),(4856,'Barra do Turvo',26),(4857,'Barretos',26),(4858,'Barrinha',26),(4859,'Barueri',26),(4860,'Bastos',26),(4861,'Batatais',26),(4862,'Bauru',26),(4863,'Bebedouro',26),(4864,'Bento de Abreu',26),(4865,'Bernardino de Campos',26),(4866,'Bertioga',26),(4867,'Bilac',26),(4868,'Birigui',26),(4869,'Biritiba-Mirim',26),(4870,'Boa Esperança do Sul',26),(4871,'Bocaina',26),(4872,'Bofete',26),(4873,'Boituva',26),(4874,'Bom Jesus dos Perdões',26),(4875,'Bom Sucesso de Itararé',26),(4876,'Borá',26),(4877,'Boracéia',26),(4878,'Borborema',26),(4879,'Borebi',26),(4880,'Botucatu',26),(4881,'Bragança Paulista',26),(4882,'Braúna',26),(4883,'Brejo Alegre',26),(4884,'Brodowski',26),(4885,'Brotas',26),(4886,'Buri',26),(4887,'Buritama',26),(4888,'Buritizal',26),(4889,'Cabrália Paulista',26),(4890,'Cabreúva',26),(4891,'Caçapava',26),(4892,'Cachoeira Paulista',26),(4893,'Caconde',26),(4894,'Cafelândia',26),(4895,'Caiabu',26),(4896,'Caieiras',26),(4897,'Caiuá',26),(4898,'Cajamar',26),(4899,'Cajati',26),(4900,'Cajobi',26),(4901,'Cajuru',26),(4902,'Campina do Monte Alegre',26),(4903,'Campinas',26),(4904,'Campo Limpo Paulista',26),(4905,'Campos do Jordão',26),(4906,'Campos Novos Paulista',26),(4907,'Cananéia',26),(4908,'Canas',26),(4909,'Cândido Mota',26),(4910,'Cândido Rodrigues',26),(4911,'Canitar',26),(4912,'Capão Bonito',26),(4913,'Capela do Alto',26),(4914,'Capivari',26),(4915,'Caraguatatuba',26),(4916,'Carapicuíba',26),(4917,'Cardoso',26),(4918,'Casa Branca',26),(4919,'Cássia dos Coqueiros',26),(4920,'Castilho',26),(4921,'Catanduva',26),(4922,'Catiguá',26),(4923,'Cedral',26),(4924,'Cerqueira César',26),(4925,'Cerquilho',26),(4926,'Cesário Lange',26),(4927,'Charqueada',26),(4928,'Chavantes',26),(4929,'Clementina',26),(4930,'Colina',26),(4931,'Colômbia',26),(4932,'Conchal',26),(4933,'Conchas',26),(4934,'Cordeirópolis',26),(4935,'Coroados',26),(4936,'Coronel Macedo',26),(4937,'Corumbataí',26),(4938,'Cosmópolis',26),(4939,'Cosmorama',26),(4940,'Cotia',26),(4941,'Cravinhos',26),(4942,'Cristais Paulista',26),(4943,'Cruzália',26),(4944,'Cruzeiro',26),(4945,'Cubatão',26),(4946,'Cunha',26),(4947,'Descalvado',26),(4948,'Diadema',26),(4949,'Dirce Reis',26),(4950,'Divinolândia',26),(4951,'Dobrada',26),(4952,'Dois Córregos',26),(4953,'Dolcinópolis',26),(4954,'Dourado',26),(4955,'Dracena',26),(4956,'Duartina',26),(4957,'Dumont',26),(4958,'Echaporã',26),(4959,'Eldorado',26),(4960,'Elias Fausto',26),(4961,'Elisiário',26),(4962,'Embaúba',26),(4963,'Embu',26),(4964,'Embu-Guaçu',26),(4965,'Emilianópolis',26),(4966,'Engenheiro Coelho',26),(4967,'Espírito Santo do Pinhal',26),(4968,'Espírito Santo do Turvo',26),(4969,'Estiva Gerbi',26),(4970,'Estrela d`Oeste',26),(4971,'Estrela do Norte',26),(4972,'Euclides da Cunha Paulista',26),(4973,'Fartura',26),(4974,'Fernando Prestes',26),(4975,'Fernandópolis',26),(4976,'Fernão',26),(4977,'Ferraz de Vasconcelos',26),(4978,'Flora Rica',26),(4979,'Floreal',26),(4980,'Flórida Paulista',26),(4981,'Florínia',26),(4982,'Franca',26),(4983,'Francisco Morato',26),(4984,'Franco da Rocha',26),(4985,'Gabriel Monteiro',26),(4986,'Gália',26),(4987,'Garça',26),(4988,'Gastão Vidigal',26),(4989,'Gavião Peixoto',26),(4990,'General Salgado',26),(4991,'Getulina',26),(4992,'Glicério',26),(4993,'Guaiçara',26),(4994,'Guaimbê',26),(4995,'Guaíra',26),(4996,'Guapiaçu',26),(4997,'Guapiara',26),(4998,'Guará',26),(4999,'Guaraçaí',26),(5000,'Guaraci',26),(5001,'Guarani d`Oeste',26),(5002,'Guarantã',26),(5003,'Guararapes',26),(5004,'Guararema',26),(5005,'Guaratinguetá',26),(5006,'Guareí',26),(5007,'Guariba',26),(5008,'Guarujá',26),(5009,'Guarulhos',26),(5010,'Guatapará',26),(5011,'Guzolândia',26),(5012,'Herculândia',26),(5013,'Holambra',26),(5014,'Hortolândia',26),(5015,'Iacanga',26),(5016,'Iacri',26),(5017,'Iaras',26),(5018,'Ibaté',26),(5019,'Ibirá',26),(5020,'Ibirarema',26),(5021,'Ibitinga',26),(5022,'Ibiúna',26),(5023,'Icém',26),(5024,'Iepê',26),(5025,'Igaraçu do Tietê',26),(5026,'Igarapava',26),(5027,'Igaratá',26),(5028,'Iguape',26),(5029,'Ilha Comprida',26),(5030,'Ilha Solteira',26),(5031,'Ilhabela',26),(5032,'Indaiatuba',26),(5033,'Indiana',26),(5034,'Indiaporã',26),(5035,'Inúbia Paulista',26),(5036,'Ipaussu',26),(5037,'Iperó',26),(5038,'Ipeúna',26),(5039,'Ipiguá',26),(5040,'Iporanga',26),(5041,'Ipuã',26),(5042,'Iracemápolis',26),(5043,'Irapuã',26),(5044,'Irapuru',26),(5045,'Itaberá',26),(5046,'Itaí',26),(5047,'Itajobi',26),(5048,'Itaju',26),(5049,'Itanhaém',26),(5050,'Itaóca',26),(5051,'Itapecerica da Serra',26),(5052,'Itapetininga',26),(5053,'Itapeva',26),(5054,'Itapevi',26),(5055,'Itapira',26),(5056,'Itapirapuã Paulista',26),(5057,'Itápolis',26),(5058,'Itaporanga',26),(5059,'Itapuí',26),(5060,'Itapura',26),(5061,'Itaquaquecetuba',26),(5062,'Itararé',26),(5063,'Itariri',26),(5064,'Itatiba',26),(5065,'Itatinga',26),(5066,'Itirapina',26),(5067,'Itirapuã',26),(5068,'Itobi',26),(5069,'Itu',26),(5070,'Itupeva',26),(5071,'Ituverava',26),(5072,'Jaborandi',26),(5073,'Jaboticabal',26),(5074,'Jacareí',26),(5075,'Jaci',26),(5076,'Jacupiranga',26),(5077,'Jaguariúna',26),(5078,'Jales',26),(5079,'Jambeiro',26),(5080,'Jandira',26),(5081,'Jardinópolis',26),(5082,'Jarinu',26),(5083,'Jaú',26),(5084,'Jeriquara',26),(5085,'Joanópolis',26),(5086,'João Ramalho',26),(5087,'José Bonifácio',26),(5088,'Júlio Mesquita',26),(5089,'Jumirim',26),(5090,'Jundiaí',26),(5091,'Junqueirópolis',26),(5092,'Juquiá',26),(5093,'Juquitiba',26),(5094,'Lagoinha',26),(5095,'Laranjal Paulista',26),(5096,'Lavínia',26),(5097,'Lavrinhas',26),(5098,'Leme',26),(5099,'Lençóis Paulista',26),(5100,'Limeira',26),(5101,'Lindóia',26),(5102,'Lins',26),(5103,'Lorena',26),(5104,'Lourdes',26),(5105,'Louveira',26),(5106,'Lucélia',26),(5107,'Lucianópolis',26),(5108,'Luís Antônio',26),(5109,'Luiziânia',26),(5110,'Lupércio',26),(5111,'Lutécia',26),(5112,'Macatuba',26),(5113,'Macaubal',26),(5114,'Macedônia',26),(5115,'Magda',26),(5116,'Mairinque',26),(5117,'Mairiporã',26),(5118,'Manduri',26),(5119,'Marabá Paulista',26),(5120,'Maracaí',26),(5121,'Marapoama',26),(5122,'Mariápolis',26),(5123,'Marília',26),(5124,'Marinópolis',26),(5125,'Martinópolis',26),(5126,'Matão',26),(5127,'Mauá',26),(5128,'Mendonça',26),(5129,'Meridiano',26),(5130,'Mesópolis',26),(5131,'Miguelópolis',26),(5132,'Mineiros do Tietê',26),(5133,'Mira Estrela',26),(5134,'Miracatu',26),(5135,'Mirandópolis',26),(5136,'Mirante do Paranapanema',26),(5137,'Mirassol',26),(5138,'Mirassolândia',26),(5139,'Mococa',26),(5140,'Mogi das Cruzes',26),(5141,'Mogi Guaçu',26),(5142,'Mogi Mirim',26),(5143,'Mombuca',26),(5144,'Monções',26),(5145,'Mongaguá',26),(5146,'Monte Alegre do Sul',26),(5147,'Monte Alto',26),(5148,'Monte Aprazível',26),(5149,'Monte Azul Paulista',26),(5150,'Monte Castelo',26),(5151,'Monte Mor',26),(5152,'Monteiro Lobato',26),(5153,'Morro Agudo',26),(5154,'Morungaba',26),(5155,'Motuca',26),(5156,'Murutinga do Sul',26),(5157,'Nantes',26),(5158,'Narandiba',26),(5159,'Natividade da Serra',26),(5160,'Nazaré Paulista',26),(5161,'Neves Paulista',26),(5162,'Nhandeara',26),(5163,'Nipoã',26),(5164,'Nova Aliança',26),(5165,'Nova Campina',26),(5166,'Nova Canaã Paulista',26),(5167,'Nova Castilho',26),(5168,'Nova Europa',26),(5169,'Nova Granada',26),(5170,'Nova Guataporanga',26),(5171,'Nova Independência',26),(5172,'Nova Luzitânia',26),(5173,'Nova Odessa',26),(5174,'Novais',26),(5175,'Novo Horizonte',26),(5176,'Nuporanga',26),(5177,'Ocauçu',26),(5178,'Óleo',26),(5179,'Olímpia',26),(5180,'Onda Verde',26),(5181,'Oriente',26),(5182,'Orindiúva',26),(5183,'Orlândia',26),(5184,'Osasco',26),(5185,'Oscar Bressane',26),(5186,'Osvaldo Cruz',26),(5187,'Ourinhos',26),(5188,'Ouro Verde',26),(5189,'Ouroeste',26),(5190,'Pacaembu',26),(5191,'Palestina',26),(5192,'Palmares Paulista',26),(5193,'Palmeira d`Oeste',26),(5194,'Palmital',26),(5195,'Panorama',26),(5196,'Paraguaçu Paulista',26),(5197,'Paraibuna',26),(5198,'Paraíso',26),(5199,'Paranapanema',26),(5200,'Paranapuã',26),(5201,'Parapuã',26),(5202,'Pardinho',26),(5203,'Pariquera-Açu',26),(5204,'Parisi',26),(5205,'Patrocínio Paulista',26),(5206,'Paulicéia',26),(5207,'Paulínia',26),(5208,'Paulistânia',26),(5209,'Paulo de Faria',26),(5210,'Pederneiras',26),(5211,'Pedra Bela',26),(5212,'Pedranópolis',26),(5213,'Pedregulho',26),(5214,'Pedreira',26),(5215,'Pedrinhas Paulista',26),(5216,'Pedro de Toledo',26),(5217,'Penápolis',26),(5218,'Pereira Barreto',26),(5219,'Pereiras',26),(5220,'Peruíbe',26),(5221,'Piacatu',26),(5222,'Piedade',26),(5223,'Pilar do Sul',26),(5224,'Pindamonhangaba',26),(5225,'Pindorama',26),(5226,'Pinhalzinho',26),(5227,'Piquerobi',26),(5228,'Piquete',26),(5229,'Piracaia',26),(5230,'Piracicaba',26),(5231,'Piraju',26),(5232,'Pirajuí',26),(5233,'Pirangi',26),(5234,'Pirapora do Bom Jesus',26),(5235,'Pirapozinho',26),(5236,'Pirassununga',26),(5237,'Piratininga',26),(5238,'Pitangueiras',26),(5239,'Planalto',26),(5240,'Platina',26),(5241,'Poá',26),(5242,'Poloni',26),(5243,'Pompéia',26),(5244,'Pongaí',26),(5245,'Pontal',26),(5246,'Pontalinda',26),(5247,'Pontes Gestal',26),(5248,'Populina',26),(5249,'Porangaba',26),(5250,'Porto Feliz',26),(5251,'Porto Ferreira',26),(5252,'Potim',26),(5253,'Potirendaba',26),(5254,'Pracinha',26),(5255,'Pradópolis',26),(5256,'Praia Grande',26),(5257,'Pratânia',26),(5258,'Presidente Alves',26),(5259,'Presidente Bernardes',26),(5260,'Presidente Epitácio',26),(5261,'Presidente Prudente',26),(5262,'Presidente Venceslau',26),(5263,'Promissão',26),(5264,'Quadra',26),(5265,'Quatá',26),(5266,'Queiroz',26),(5267,'Queluz',26),(5268,'Quintana',26),(5269,'Rafard',26),(5270,'Rancharia',26),(5271,'Redenção da Serra',26),(5272,'Regente Feijó',26),(5273,'Reginópolis',26),(5274,'Registro',26),(5275,'Restinga',26),(5276,'Ribeira',26),(5277,'Ribeirão Bonito',26),(5278,'Ribeirão Branco',26),(5279,'Ribeirão Corrente',26),(5280,'Ribeirão do Sul',26),(5281,'Ribeirão dos Índios',26),(5282,'Ribeirão Grande',26),(5283,'Ribeirão Pires',26),(5284,'Ribeirão Preto',26),(5285,'Rifaina',26),(5286,'Rincão',26),(5287,'Rinópolis',26),(5288,'Rio Claro',26),(5289,'Rio das Pedras',26),(5290,'Rio Grande da Serra',26),(5291,'Riolândia',26),(5292,'Riversul',26),(5293,'Rosana',26),(5294,'Roseira',26),(5295,'Rubiácea',26),(5296,'Rubinéia',26),(5297,'Sabino',26),(5298,'Sagres',26),(5299,'Sales',26),(5300,'Sales Oliveira',26),(5301,'Salesópolis',26),(5302,'Salmourão',26),(5303,'Saltinho',26),(5304,'Salto',26),(5305,'Salto de Pirapora',26),(5306,'Salto Grande',26),(5307,'Sandovalina',26),(5308,'Santa Adélia',26),(5309,'Santa Albertina',26),(5310,'Santa Bárbara d`Oeste',26),(5311,'Santa Branca',26),(5312,'Santa Clara d`Oeste',26),(5313,'Santa Cruz da Conceição',26),(5314,'Santa Cruz da Esperança',26),(5315,'Santa Cruz das Palmeiras',26),(5316,'Santa Cruz do Rio Pardo',26),(5317,'Santa Ernestina',26),(5318,'Santa Fé do Sul',26),(5319,'Santa Gertrudes',26),(5320,'Santa Isabel',26),(5321,'Santa Lúcia',26),(5322,'Santa Maria da Serra',26),(5323,'Santa Mercedes',26),(5324,'Santa Rita d`Oeste',26),(5325,'Santa Rita do Passa Quatro',26),(5326,'Santa Rosa de Viterbo',26),(5327,'Santa Salete',26),(5328,'Santana da Ponte Pensa',26),(5329,'Santana de Parnaíba',26),(5330,'Santo Anastácio',26),(5331,'Santo André',26),(5332,'Santo Antônio da Alegria',26),(5333,'Santo Antônio de Posse',26),(5334,'Santo Antônio do Aracanguá',26),(5335,'Santo Antônio do Jardim',26),(5336,'Santo Antônio do Pinhal',26),(5337,'Santo Expedito',26),(5338,'Santópolis do Aguapeí',26),(5339,'Santos',26),(5340,'São Bento do Sapucaí',26),(5341,'São Bernardo do Campo',26),(5342,'São Caetano do Sul',26),(5343,'São Carlos',26),(5344,'São Francisco',26),(5345,'São João da Boa Vista',26),(5346,'São João das Duas Pontes',26),(5347,'São João de Iracema',26),(5348,'São João do Pau d`Alho',26),(5349,'São Joaquim da Barra',26),(5350,'São José da Bela Vista',26),(5351,'São José do Barreiro',26),(5352,'São José do Rio Pardo',26),(5353,'São José do Rio Preto',26),(5354,'São José dos Campos',26),(5355,'São Lourenço da Serra',26),(5356,'São Luís do Paraitinga',26),(5357,'São Manuel',26),(5358,'São Miguel Arcanjo',26),(5359,'São Pedro',26),(5360,'São Pedro do Turvo',26),(5361,'São Roque',26),(5362,'São Sebastião',26),(5363,'São Sebastião da Grama',26),(5364,'São Simão',26),(5365,'São Vicente',26),(5366,'Sarapuí',26),(5367,'Sarutaiá',26),(5368,'Sebastianópolis do Sul',26),(5369,'Serra Azul',26),(5370,'Serra Negra',26),(5371,'Serrana',26),(5372,'Sertãozinho',26),(5373,'Sete Barras',26),(5374,'Severínia',26),(5375,'Silveiras',26),(5376,'Socorro',26),(5377,'Sorocaba',26),(5378,'Sud Mennucci',26),(5379,'Sumaré',26),(5380,'Suzanápolis',26),(5381,'Suzano',26),(5382,'Tabapuã',26),(5383,'Tabatinga',26),(5384,'Taboão da Serra',26),(5385,'Taciba',26),(5386,'Taguaí',26),(5387,'Taiaçu',26),(5388,'Taiúva',26),(5389,'Tambaú',26),(5390,'Tanabi',26),(5391,'Tapiraí',26),(5392,'Tapiratiba',26),(5393,'Taquaral',26),(5394,'Taquaritinga',26),(5395,'Taquarituba',26),(5396,'Taquarivaí',26),(5397,'Tarabai',26),(5398,'Tarumã',26),(5399,'Tatuí',26),(5400,'Taubaté',26),(5401,'Tejupá',26),(5402,'Teodoro Sampaio',26),(5403,'Terra Roxa',26),(5404,'Tietê',26),(5405,'Timburi',26),(5406,'Torre de Pedra',26),(5407,'Torrinha',26),(5408,'Trabiju',26),(5409,'Tremembé',26),(5410,'Três Fronteiras',26),(5411,'Tuiuti',26),(5412,'Tupã',26),(5413,'Tupi Paulista',26),(5414,'Turiúba',26),(5415,'Turmalina',26),(5416,'Ubarana',26),(5417,'Ubatuba',26),(5418,'Ubirajara',26),(5419,'Uchoa',26),(5420,'União Paulista',26),(5421,'Urânia',26),(5422,'Uru',26),(5423,'Urupês',26),(5424,'Valentim Gentil',26),(5425,'Valinhos',26),(5426,'Valparaíso',26),(5427,'Vargem',26),(5428,'Vargem Grande do Sul',26),(5429,'Vargem Grande Paulista',26),(5430,'Várzea Paulista',26),(5431,'Vera Cruz',26),(5432,'Vinhedo',26),(5433,'Viradouro',26),(5434,'Vista Alegre do Alto',26),(5435,'Vitória Brasil',26),(5436,'Votorantim',26),(5437,'Votuporanga',26),(5438,'Zacarias',26),(5439,'Abreulândia',27),(5440,'Aguiarnópolis',27),(5441,'Aliança do Tocantins',27),(5442,'Almas',27),(5443,'Alvorada',27),(5444,'Ananás',27),(5445,'Angico',27),(5446,'Aparecida do Rio Negro',27),(5447,'Aragominas',27),(5448,'Araguacema',27),(5449,'Araguaçu',27),(5450,'Araguaína',27),(5451,'Araguanã',27),(5452,'Araguatins',27),(5453,'Arapoema',27),(5454,'Arraias',27),(5455,'Augustinópolis',27),(5456,'Aurora do Tocantins',27),(5457,'Axixá do Tocantins',27),(5458,'Babaçulândia',27),(5459,'Bandeirantes do Tocantins',27),(5460,'Barra do Ouro',27),(5461,'Barrolândia',27),(5462,'Bernardo Sayão',27),(5463,'Bom Jesus do Tocantins',27),(5464,'Brasilândia do Tocantins',27),(5465,'Brejinho de Nazaré',27),(5466,'Buriti do Tocantins',27),(5467,'Cachoeirinha',27),(5468,'Campos Lindos',27),(5469,'Cariri do Tocantins',27),(5470,'Carmolândia',27),(5471,'Carrasco Bonito',27),(5472,'Caseara',27),(5473,'Centenário',27),(5474,'Chapada da Natividade',27),(5475,'Chapada de Areia',27),(5476,'Colinas do Tocantins',27),(5477,'Colméia',27),(5478,'Combinado',27),(5479,'Conceição do Tocantins',27),(5480,'Couto Magalhães',27),(5481,'Cristalândia',27),(5482,'Crixás do Tocantins',27),(5483,'Darcinópolis',27),(5484,'Dianópolis',27),(5485,'Divinópolis do Tocantins',27),(5486,'Dois Irmãos do Tocantins',27),(5487,'Dueré',27),(5488,'Esperantina',27),(5489,'Fátima',27),(5490,'Figueirópolis',27),(5491,'Filadélfia',27),(5492,'Formoso do Araguaia',27),(5493,'Fortaleza do Tabocão',27),(5494,'Goianorte',27),(5495,'Goiatins',27),(5496,'Guaraí',27),(5497,'Gurupi',27),(5498,'Ipueiras',27),(5499,'Itacajá',27),(5500,'Itaguatins',27),(5501,'Itapiratins',27),(5502,'Itaporã do Tocantins',27),(5503,'Jaú do Tocantins',27),(5504,'Juarina',27),(5505,'Lagoa da Confusão',27),(5506,'Lagoa do Tocantins',27),(5507,'Lajeado',27),(5508,'Lavandeira',27),(5509,'Lizarda',27),(5510,'Luzinópolis',27),(5511,'Marianópolis do Tocantins',27),(5512,'Mateiros',27),(5513,'Maurilândia do Tocantins',27),(5514,'Miracema do Tocantins',27),(5515,'Miranorte',27),(5516,'Monte do Carmo',27),(5517,'Monte Santo do Tocantins',27),(5518,'Muricilândia',27),(5519,'Natividade',27),(5520,'Nazaré',27),(5521,'Nova Olinda',27),(5522,'Nova Rosalândia',27),(5523,'Novo Acordo',27),(5524,'Novo Alegre',27),(5525,'Novo Jardim',27),(5526,'Oliveira de Fátima',27),(5527,'Palmeirante',27),(5528,'Palmeiras do Tocantins',27),(5529,'Palmeirópolis',27),(5530,'Paraíso do Tocantins',27),(5531,'Paranã',27),(5532,'Pau d`Arco',27),(5533,'Pedro Afonso',27),(5534,'Peixe',27),(5535,'Pequizeiro',27),(5536,'Pindorama do Tocantins',27),(5537,'Piraquê',27),(5538,'Pium',27),(5539,'Ponte Alta do Bom Jesus',27),(5540,'Ponte Alta do Tocantins',27),(5541,'Porto Alegre do Tocantins',27),(5542,'Porto Nacional',27),(5543,'Praia Norte',27),(5544,'Presidente Kennedy',27),(5545,'Pugmil',27),(5546,'Recursolândia',27),(5547,'Riachinho',27),(5548,'Rio da Conceição',27),(5549,'Rio dos Bois',27),(5550,'Rio Sono',27),(5551,'Sampaio',27),(5552,'Sandolândia',27),(5553,'Santa Fé do Araguaia',27),(5554,'Santa Maria do Tocantins',27),(5555,'Santa Rita do Tocantins',27),(5556,'Santa Rosa do Tocantins',27),(5557,'Santa Tereza do Tocantins',27),(5558,'Santa Terezinha do Tocantins',27),(5559,'São Bento do Tocantins',27),(5560,'São Félix do Tocantins',27),(5561,'São Miguel do Tocantins',27),(5562,'São Salvador do Tocantins',27),(5563,'São Sebastião do Tocantins',27),(5564,'São Valério',27),(5565,'Silvanópolis',27),(5566,'Sítio Novo do Tocantins',27),(5567,'Sucupira',27),(5568,'Taguatinga',27),(5569,'Taipas do Tocantins',27),(5570,'Talismã',27),(5571,'Tocantínia',27),(5572,'Tocantinópolis',27),(5573,'Tupirama',27),(5574,'Tupiratins',27),(5575,'Wanderlândia',27),(5576,'Rio Branco',1),(5577,'Maceió',2),(5578,'Manaus',3),(5579,'Macapá',4),(5580,'Salvador',5),(5581,'Fortaleza',6),(5582,'Vitória',8),(5583,'Goiânia',9),(5584,'São Luís',10),(5585,'Belo Horizonte',11),(5586,'Campo Grande',12),(5587,'Cuiabá',13),(5588,'Belém',14),(5589,'João Pessoa',15),(5590,'Recife',16),(5591,'Teresina',17),(5592,'Curitiba',18),(5593,'Rio de Janeiro',19),(5594,'Natal',20),(5595,'Porto Velho',21),(5596,'Boa Vista',22),(5597,'Porto Alegre',23),(5598,'Florianópolis',24),(5599,'Aracajú',25),(5600,'São Paulo',26),(5601,'Palmas',27),(5602,'Guará',7),(5603,'Jaboatão dos Guararapes',16);
/*!40000 ALTER TABLE `cad_cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cad_estados`
--

DROP TABLE IF EXISTS `cad_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_estados` (
  `est_id` int(11) NOT NULL AUTO_INCREMENT,
  `est_nome` varchar(115) COLLATE utf8_unicode_ci NOT NULL,
  `est_sigla` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`est_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=606;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_estados`
--

LOCK TABLES `cad_estados` WRITE;
/*!40000 ALTER TABLE `cad_estados` DISABLE KEYS */;
INSERT INTO `cad_estados` VALUES (1,'Acre','AC'),(2,'Alagoas','AL'),(3,'Amazonas','AM'),(4,'Amapá','AP'),(5,'Bahia','BA'),(6,'Ceará','CE'),(7,'Distrito Federal','DF'),(8,'Espírito Santo','ES'),(9,'Goiás','GO'),(10,'Maranhão','MA'),(11,'Minas Gerais','MG'),(12,'Mato Grosso do Sul','MS'),(13,'Mato Grosso','MT'),(14,'Pará','PA'),(15,'Paraíba','PB'),(16,'Pernambuco','PE'),(17,'Piauí','PI'),(18,'Paraná','PR'),(19,'Rio de Janeiro','RJ'),(20,'Rio Grande do Norte','RN'),(21,'Rondônia','RO'),(22,'Roraima','RR'),(23,'Rio Grande do Sul','RS'),(24,'Santa Catarina','SC'),(25,'Sergipe','SE'),(26,'São Paulo','SP'),(27,'Tocantins','TO');
/*!40000 ALTER TABLE `cad_estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `cnpj` bigint(11) unsigned zerofill NOT NULL,
  `ie` bigint(11) unsigned zerofill DEFAULT NULL,
  `longname` varchar(256) NOT NULL,
  `shortname` varchar(25) NOT NULL,
  `bussiness_phone` bigint(11) DEFAULT NULL,
  `mobil_phone` bigint(11) DEFAULT NULL,
  `nextel_phone` bigint(11) DEFAULT NULL,
  `nextelid` varchar(15) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `note` text,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `ie` (`ie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (10,45444222000145,110112452444,'VALENTINIS SEGURANÇA','VALENTINIS',1155554555,0,0,'','',1,'teste','2015-05-14 13:05:29','2015-05-14 13:42:00'),(14,45444333000136,110112452213,'VALENTINIS SEGURANÇA II','VALENTINIS II',1155554555,0,0,'','',1,'','2015-05-14 18:05:51','0000-00-00 00:00:00'),(16,4233633700012,111110221333,'LSEGURANÇA SEGURANÇA COND','LSEGURANÇA',1155554555,0,0,'','',1,'','2015-05-14 18:05:25','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyaddr`
--

DROP TABLE IF EXISTS `companyaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyaddr` (
  `company_id` int(11) NOT NULL,
  `zipid` int(11) NOT NULL,
  `zipcode` varchar(9) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `addr_number` varchar(20) DEFAULT NULL,
  `district` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(2) NOT NULL,
  `reference` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyaddr`
--

LOCK TABLES `companyaddr` WRITE;
/*!40000 ALTER TABLE `companyaddr` DISABLE KEYS */;
INSERT INTO `companyaddr` VALUES (10,5117,'02313-000','Rua Manuel Gaya','110','Vila Nova Mazzei','São Paulo','SP','Teste de Complemento'),(14,5117,'02313-000','Rua Manuel Gaya','100','Vila Nova Mazzei','São Paulo','SP','Teste de Complemento'),(16,5117,'02313-000','Rua Manuel Gaya','152','Vila Nova Mazzei','São Paulo','SP','Teste de Complemento'),(17,5117,'02313-000','Rua Manuel Gaya','115','Vila Nova Mazzei','São Paulo','SP','Teste de Complemento');
/*!40000 ALTER TABLE `companyaddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_type`
--

DROP TABLE IF EXISTS `content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type` (
  `content_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `short_description` varchar(256) NOT NULL,
  `long_description` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type`
--

LOCK TABLES `content_type` WRITE;
/*!40000 ALTER TABLE `content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `content_path` varchar(256) NOT NULL,
  `first_description` varchar(256) NOT NULL,
  `second_description` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_type`
--

DROP TABLE IF EXISTS `cust_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_type` (
  `custtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `longname` varchar(256) DEFAULT NULL,
  `shortname` varchar(256) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`custtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_type`
--

LOCK TABLES `cust_type` WRITE;
/*!40000 ALTER TABLE `cust_type` DISABLE KEYS */;
INSERT INTO `cust_type` VALUES (1,'Cliente Avulsos','Avulso','2015-04-30 13:04:43','0000-00-00 00:00:00'),(2,'Cliente de Contrato','Contrato','2015-04-30 13:04:18','0000-00-00 00:00:00'),(3,'Cliente Contrato Mensal','Contrato Mensal','2015-04-30 13:04:30','0000-00-00 00:00:00'),(4,'Cliente Avulso Trimestral','Cliente Trimestral','2015-04-30 14:04:57','0000-00-00 00:00:00'),(5,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:24','0000-00-00 00:00:00'),(6,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:07','0000-00-00 00:00:00'),(7,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:33','0000-00-00 00:00:00'),(8,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:44','0000-00-00 00:00:00'),(9,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:10','0000-00-00 00:00:00'),(10,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:10','0000-00-00 00:00:00'),(11,'Cliente Avulso Mensal','Cliente Mensal','2015-04-30 14:04:50','0000-00-00 00:00:00'),(12,'AGRO PECUARIA','AGROPEC','2015-05-05 18:05:29','0000-00-00 00:00:00'),(13,'AGRO PECUARIA','AGROPEC','2015-05-05 18:05:07','0000-00-00 00:00:00'),(14,'AGRO PECUARIA','AGROPEC','2015-05-05 18:05:42','0000-00-00 00:00:00'),(15,'Temporario 1','temp 1','2015-05-05 18:05:46','0000-00-00 00:00:00'),(16,'Temporario II','Temp II','2015-05-05 18:05:21','0000-00-00 00:00:00'),(17,'Administradora de Condominio','Condominio','2015-05-05 18:05:47','0000-00-00 00:00:00'),(18,'SETOR MERCADO','MERCADO','2015-05-14 18:05:56','0000-00-00 00:00:00'),(19,'MERCADO','MERCADO','2015-05-14 19:05:09','0000-00-00 00:00:00'),(20,'AGRICUTURA','AGRICULA','2015-05-14 19:05:08','0000-00-00 00:00:00'),(21,'Comercio Aeronautico','Aeronautica','2015-06-08 13:06:18','0000-00-00 00:00:00'),(22,'CONTRATO','CONTRATO','2015-06-15 18:06:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cust_type` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `customer` VALUES (139,16,2,'G','C',7,'12255544000154','1252223334','TESTE DE CADASTRO','TESTE','F','A','','2015-06-15 19:06:38','2015-06-19 14:49:09','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
INSERT INTO `customer_commaddr` VALUES (139,7930,'02613-000','Rua dos Patis','152','','Vila Nova Cachoeirinha','São Paulo','SP','');
/*!40000 ALTER TABLE `customer_commaddr` ENABLE KEYS */;
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
INSERT INTO `customer_commcont` VALUES (139,'ANA CÉLIA MARIA DE ALMEIDA',1155442222,0,0,'99*88*999',0,'ana@provedora.com.br','','');
/*!40000 ALTER TABLE `customer_commcont` ENABLE KEYS */;
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
INSERT INTO `customer_invaddr` VALUES (139,7294,'02518-000','Avenida Professora Ida Kolb','1529','','Jardim das Laranjeiras','São Paulo','SP','');
/*!40000 ALTER TABLE `customer_invaddr` ENABLE KEYS */;
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
INSERT INTO `customer_invcont` VALUES (139,'MARIANE DE ALMEIDA',1122223333,0,0,'',0,'mariane@provedora.com.br','');
/*!40000 ALTER TABLE `customer_invcont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(25) NOT NULL,
  `longname` varchar(256) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'LIMPEZA','LIMPEZA','2015-05-12 19:05:32','0000-00-00 00:00:00'),(2,'PORTARIA','PORTARIA','2015-05-13 12:05:31','0000-00-00 00:00:00'),(3,'GUARDA FERRAMENTAS','ALMOXERIFADO','2015-05-13 13:05:23','0000-00-00 00:00:00'),(4,'ELEVADORES','ELEVADORES','2015-05-13 13:05:41','0000-00-00 00:00:00'),(5,'COBRANÇA','COBRANÇA','2015-05-13 13:05:17','0000-00-00 00:00:00'),(6,'FINANCEIRO','FINANCEIRO','2015-05-13 13:05:26','0000-00-00 00:00:00'),(7,'COMERCIAL','COMERCIAL','2015-05-13 13:05:25','0000-00-00 00:00:00'),(8,'TI','TECNOLOGIA','2015-05-13 13:05:13','0000-00-00 00:00:00'),(9,'TEC','TECNICO','2015-05-13 13:05:27','0000-00-00 00:00:00'),(10,'RH','RECUSOS HUMANOS','2015-05-13 13:05:31','0000-00-00 00:00:00'),(11,'RH2','RH2','2015-05-13 13:05:39','0000-00-00 00:00:00'),(12,'RH3','RH3','2015-05-13 13:05:58','0000-00-00 00:00:00'),(13,'TEC','TECNOLOGIA','2015-05-13 13:05:15','0000-00-00 00:00:00'),(14,'rh4','rh4','2015-05-13 13:05:57','0000-00-00 00:00:00'),(15,'SEG','SEGURANÇA','2015-05-13 13:05:51','0000-00-00 00:00:00'),(16,'RH II','RECUSOS HUMANOS II','2015-05-13 14:05:24','0000-00-00 00:00:00'),(17,'RH III','RECUSSOS HUMANOS III','2015-05-13 14:05:35','0000-00-00 00:00:00'),(18,'RH IV','RECUSSOS HUMANOS IV','2015-05-13 14:05:22','0000-00-00 00:00:00'),(19,'RH V','RECUSSOS HUMANOS V','2015-05-13 14:05:30','0000-00-00 00:00:00'),(20,'RH VI','RECUSOS HUMANOS VI','2015-05-13 14:05:36','0000-00-00 00:00:00'),(21,'','','2015-05-25 20:05:46','0000-00-00 00:00:00'),(22,'teste','teste','2015-06-08 13:06:51','0000-00-00 00:00:00'),(23,'teste','teste','2015-06-08 13:06:20','0000-00-00 00:00:00'),(24,'TESTE','TESTE','2015-06-16 16:06:14','0000-00-00 00:00:00'),(25,'TESTE2','TESTE2','2015-06-16 16:06:46','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `year_completion` date DEFAULT NULL,
  `othereducation` text,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtitle`
--

DROP TABLE IF EXISTS `jobtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobtitle` (
  `jobtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(25) NOT NULL,
  `longname` varchar(256) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`jobtitle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtitle`
--

LOCK TABLES `jobtitle` WRITE;
/*!40000 ALTER TABLE `jobtitle` DISABLE KEYS */;
INSERT INTO `jobtitle` VALUES (1,'ANAL. SISTEMAS','ANALISTA DE SISTEMAS','2015-05-13 16:05:54','0000-00-00 00:00:00'),(2,'ANAL. REC. HUMANOS','ANALISTA DE RECUSOS HUMANOS','2015-05-13 17:05:09','0000-00-00 00:00:00'),(4,'Recepção','Atendente de Recepção','2015-06-01 18:06:02','0000-00-00 00:00:00'),(5,'Anal. RH','Analista de RH','2015-06-08 13:06:05','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `jobtitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `local_id` int(11) NOT NULL AUTO_INCREMENT,
  `longname` varchar(256) DEFAULT NULL,
  `shortname` varchar(256) NOT NULL,
  `acronym` enum('CM','CP','DF') DEFAULT NULL,
  PRIMARY KEY (`local_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,'COLABORADOR DO CLIENTE','CLIENTE','CM'),(2,'COLABORADOR DA EMPRESA','EMPRESA','CP');
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation` (
  `occupation_id` int(11) NOT NULL AUTO_INCREMENT,
  `longname` varchar(256) DEFAULT NULL,
  `shortname` varchar(256) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`occupation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES (1,'Comercio de Supermercados','Supermercados','2015-04-30 20:04:49','0000-00-00 00:00:00'),(2,'Comercio Agricula','Agricultura','2015-05-05 14:05:26','0000-00-00 00:00:00'),(3,'AGRO PECUARIA','AGROPEC','2015-05-05 18:05:56','0000-00-00 00:00:00'),(4,'Comercio Internet','Com Internet','2015-05-05 18:05:21','0000-00-00 00:00:00'),(5,'Comercio Internet II','C.Internet II','2015-05-05 18:05:47','0000-00-00 00:00:00'),(6,'Comercio Internet III','C.Internet III','2015-05-05 18:05:03','0000-00-00 00:00:00'),(7,'Administração de Serviços','Serviços Condominio','2015-05-05 18:05:41','0000-00-00 00:00:00'),(8,'INDUSTRIA COSMETICA','COSMETICA','2015-05-14 19:05:48','0000-00-00 00:00:00'),(9,'IND PANIFICADORA','PANIFICADORA','2015-05-14 19:05:56','0000-00-00 00:00:00'),(10,'Comercio','comercio','2015-06-08 13:06:25','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (706,'ANA AMARIA','DE SOUZA PEREIRA','1980-01-15','F','SÃO PAULO','SP','B','','BRANCA','BRANCA','SG','N','public/images/no_person.png','CARLOS DE SOUZA','MARIA DE NAZARÉ','','A','2015-06-16 15:57:48','2015-06-19 13:42:28');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

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
  `complement` varchar(256) NOT NULL,
  `district` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `state` varchar(2) NOT NULL,
  `reference` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaddr`
--

LOCK TABLES `personaddr` WRITE;
/*!40000 ALTER TABLE `personaddr` DISABLE KEYS */;
INSERT INTO `personaddr` VALUES (706,5162,'02316-001','Rua das Imbiras','115','TESTE COMP','Vila Mazzei','São Paulo','SP','PROXIMO A CEC');
/*!40000 ALTER TABLE `personaddr` ENABLE KEYS */;
UNLOCK TABLES;

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
  `operation` varchar(100) DEFAULT NULL,
  `agency` varchar(100) DEFAULT NULL,
  `account` varchar(100) NOT NULL,
  `account_holder` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personbank`
--

LOCK TABLES `personbank` WRITE;
/*!40000 ALTER TABLE `personbank` DISABLE KEYS */;
INSERT INTO `personbank` VALUES (706,6,1,NULL,'124552','06356-3/500','ANA MARIA');
/*!40000 ALTER TABLE `personbank` ENABLE KEYS */;
UNLOCK TABLES;

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
  `contact_phone` bigint(11) DEFAULT NULL,
  `contact_mobil` bigint(11) DEFAULT NULL,
  `contact_name` varchar(45) NOT NULL,
  `contact_msg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personcontact`
--

LOCK TABLES `personcontact` WRITE;
/*!40000 ALTER TABLE `personcontact` DISABLE KEYS */;
INSERT INTO `personcontact` VALUES (706,'anam@provedora.com.br',1144223366,11977554444,1122222222,'99*99999',1122223333,11999992222,'ANA DE SOUZA','TESTE OBS STAFF');
/*!40000 ALTER TABLE `personcontact` ENABLE KEYS */;
UNLOCK TABLES;

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
  `yearlastcontrib` year(4) NOT NULL DEFAULT '0000',
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
-- Dumping data for table `persondoc`
--

LOCK TABLES `persondoc` WRITE;
/*!40000 ALTER TABLE `persondoc` DISABLE KEYS */;
INSERT INTO `persondoc` VALUES (706,4522233305,'SSP','2003-03-15','',NULL,NULL,45222355605,222333,2233,'2015-01-15',12522355245,2015,155222,0,'','0000-00-00',2556,'02556','0030');
/*!40000 ALTER TABLE `persondoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personeducation`
--

DROP TABLE IF EXISTS `personeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personeducation` (
  `person_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `year_completion` year(4) NOT NULL DEFAULT '0000',
  `othereducation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personeducation`
--

LOCK TABLES `personeducation` WRITE;
/*!40000 ALTER TABLE `personeducation` DISABLE KEYS */;
INSERT INTO `personeducation` VALUES (706,7,2004,'OUTRAS GRADUAÇÕES');
/*!40000 ALTER TABLE `personeducation` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `personref`
--

LOCK TABLES `personref` WRITE;
/*!40000 ALTER TABLE `personref` DISABLE KEYS */;
INSERT INTO `personref` VALUES (706,'ANA DE SOUZA','RUA A, 166',1155554444,'ana@provedora.com.br');
/*!40000 ALTER TABLE `personref` ENABLE KEYS */;
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
INSERT INTO `roles` VALUES (112,'OPERACIONAL-1','Y',NULL,'2015-06-19 17:06:26',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `roles_items` VALUES (112,9),(112,10);
/*!40000 ALTER TABLE `roles_items` ENABLE KEYS */;
UNLOCK TABLES;

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
  `firstjob` enum('Y','N') NOT NULL,
  `staff_msg` text,
  `status` enum('A','I') NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1305,706,1,139,16,2,10,'N','TESTE OBS CONTATO','A','2015-06-16 15:57:48','2015-06-19 13:42:28');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

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
  `starttime` time NOT NULL DEFAULT '00:00:00',
  `endtime` time NOT NULL DEFAULT '00:00:00',
  `resignation_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffadmis`
--

LOCK TABLES `staffadmis` WRITE;
/*!40000 ALTER TABLE `staffadmis` DISABLE KEYS */;
INSERT INTO `staffadmis` VALUES (1305,'2015-01-01',1500.00,'Y',2,3.75,2,3.50,0,0.00,8,'08:00:00','18:00:00','0000-00-00');
/*!40000 ALTER TABLE `staffadmis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_account`
--

DROP TABLE IF EXISTS `type_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_account` (
  `typeaccount_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `acronym` char(3) NOT NULL,
  PRIMARY KEY (`typeaccount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_account`
--

LOCK TABLES `type_account` WRITE;
/*!40000 ALTER TABLE `type_account` DISABLE KEYS */;
INSERT INTO `type_account` VALUES (5,'Poupança','CPP'),(6,'Conta Corrente - PF','CPF'),(7,'Conta Corrente - PJ','CPJ'),(8,'Conta SALARIO','CSA'),(9,'Conta SALARIO-2','CSA'),(10,'CONTA SALARIO II','CS2'),(11,'CONTA CORRENTE 2','CC2'),(12,'',''),(13,'',''),(14,'',''),(15,'Pessoa Juridica','Jur'),(16,'CONTA TESTE','CTP'),(17,'TYPE ACCOUNT','TPT');
/*!40000 ALTER TABLE `type_account` ENABLE KEYS */;
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
INSERT INTO `urls_page` VALUES (9,'Company Add','mngcpny/addcpny','Módulo de Cadastro para Empresa teste 2 3 4 5','2015-06-18 12:31:08','2015-06-18 13:06:06'),(10,'Cadastro de Clientes','mngcust/addcust','Cadastro de Clientes','2015-06-19 19:06:50',NULL);
/*!40000 ALTER TABLE `urls_page` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,1,1,1,1,'admin','38be66c9585d5c4c4cbc309a2d23b70f7111df0aaca44ac1b50faef3e8289b94','admin','d0aa5e6b1be2ae15ef829cb4ca5cb5f9d35ab6ff4613aa458d568e265037ec5e','A','Conta Padrão','2015-05-14 01:22:03','0000-00-00 00:00:00');
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

-- Dump completed on 2015-08-10 12:49:16
