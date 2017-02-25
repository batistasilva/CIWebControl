-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 14/06/2014 às 07:22:20
-- Versão do Servidor: 5.5.33-31.1
-- Versão do PHP: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `pousa846_pcsmvc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admimage`
--

CREATE TABLE IF NOT EXISTS `admimage` (
  `imgid` int(11) NOT NULL AUTO_INCREMENT,
  `desc1` varchar(40) NOT NULL,
  `desc2` varchar(40) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`imgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `admimage`
--

INSERT INTO `admimage` (`imgid`, `desc1`, `desc2`, `imagem`, `date_add`) VALUES
(4, 'Cachoeira do Jaguari', 'Parque Municipal Cachoeira do Jaquari', 'public/upldimg/CachoeiraJaguari.jpg', '2014-06-10 19:46:27'),
(5, 'Caminho para Cachoeira do Salto ', 'Caminho para Cachoeira do Salto ', 'public/upldimg/CachoeiraSalto.jpg', '2014-06-10 19:48:14'),
(6, 'RESTAURANTE DO JAUGARI', 'VENHA SABOREAR O MELOR DA COMIDA CAIPIRA', 'public/upldimg/cachoeiradojaguari.png', '2014-06-12 07:58:11'),
(7, 'Cachoeira do salto', 'Venham descansar na cachoeira do salto', 'public/upldimg/cachoeirasalto.jpg', '2014-06-13 06:03:04'),
(8, 'Venham Se Hospedar Aqui', 'Venham Saborear O Nosso Cafe Da Manha ', 'public/upldimg/cafedamnha.jpg', '2014-06-13 06:15:32'),
(9, 'Trilha Do Jaguari', 'Venha Fazer A  Trilha Do Jaguari', 'public/upldimg/fotocaminhojaguari.png', '2014-06-13 07:26:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `custid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `dispatcher_zone` char(3) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `district` varchar(40) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` varchar(9) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `home_phone` varchar(13) DEFAULT NULL,
  `business_phone` varchar(13) DEFAULT NULL,
  `mobil_phone` varchar(14) DEFAULT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_updt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`custid`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`custid`, `userid`, `name`, `dateofbirth`, `occupation`, `gender`, `cpf`, `rg`, `dispatcher_zone`, `address`, `district`, `city`, `state`, `zipcode`, `email`, `home_phone`, `business_phone`, `mobil_phone`, `date_add`, `date_updt`) VALUES
(7, 4, 'JOÃO BATISTA DA SILVA FILHO', '1970-10-21', 'ENGENHEIRO', 'M', '413.036.523-15', '381848164', 'SSP', 'RUA SÃO GABRIEL, 41', 'JD. ÍTALIA', 'EXTREMA', 'MG', '37640-000', 'batista_silva@ossb.com.br', '(35)9158-8894', '(35)9158-8894', '(11)97719-6355', '2014-06-06 23:51:41', '0000-00-00 00:00:00'),
(8, 5, 'LEONARDO AUGUSTO COSTA', '2003-02-28', 'CANTOR', 'm', '112.482.591-23', '340250190', 'MS', 'SAO GABRIEL 41', 'morbidelli', 'EXTREMA', 'MG', '37640-000', 'costa@pousadacs.com.br', '(35)3435-1155', '(35)8426-1689', '(35)84558-2123', '2014-06-09 23:44:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `dataid` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `noteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`noteid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `personid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(3) unsigned NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `typebeds` varchar(40) NOT NULL,
  `costtype` varchar(40) NOT NULL,
  `costroom` decimal(10,2) NOT NULL,
  `imagem` text NOT NULL,
  `complement` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `status` enum('Livre','Ocupado') NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `rooms`
--

INSERT INTO `rooms` (`roomid`, `description`, `typebeds`, `costtype`, `costroom`, `imagem`, `complement`, `date_add`, `date_update`, `status`) VALUES
(8, 'Quarto de casal ', 'Uma cama de casal e duas de solteiro', 'Preço Durante O Rodeio', '150.00', 'public/upload/DSC02058N.JPG', '                                                                                                                                                                    DIARIA COM CAFE DA MANHÃ \r\n(OBS O VALOR DA DIARIA E POR PESSOA) OU SEJA 150,00 O CASAL    \r\n                                    \r\n                                    \r\n                                ', '2014-06-04 15:03:24', '2014-06-07 20:44:22', 'Livre'),
(9, 'Quarto Qutriplo', 'QUARTO PARA 4 PESSOAS', 'Preço de Rodeio', '75.00', 'public/upload/DSC01966N.JPG', '                                                                  O VALOR DESSA DIARIA  SERÁ COBRADA POR PESSOA', '2014-06-04 15:07:13', '2014-06-07 20:47:34', 'Livre'),
(11, 'Quarto de Solteiro', 'Quarto com duas camas ', 'Preço de Rodeio', '75.00', 'public/upload/DSC01963N.JPG', '                                                                                                   O PREÇO DA DIARIA SERA COBRADA POR PESSOA OU SEJA 75,00  POR PESSOA   \r\n                                ', '2014-06-04 15:10:23', '2014-06-07 20:50:17', 'Livre'),
(12, 'Quarto de casal ', 'Uma cama de casal e duas de solteiro', 'Preço de Rodeio', '75.00', 'public/upload/DSC01956N.JPG', '                                 \nO VALOR DA DIARIA SERA COBRADA POR PESSOAS OU SEJA 150,00 O CASAL', '2014-06-04 15:16:51', '2014-06-07 20:51:46', 'Livre'),
(13, 'Quarto de solteiro ', 'QUARTO PARA 4 PESSOAS', 'Preço de Rodeio', '75.00', 'public/upload/DSC01959N.JPG', '                                 O VALOR DA DIARIA SERA COBRADA POR PESSOA OU SEJA 150,00 O CASAL', '2014-06-04 15:18:41', '2014-06-07 20:54:03', 'Livre'),
(15, 'Quarto de Solteiro', 'Cama de solteiro', 'Preço de Rodeio', '75.00', 'public/upload/DSC02064N.JPG', ' O VALOR DA DIÁRIA SERA COBRADA POR PESSOA OU SEJA 150,00 O CASAL\r\n                                    \r\n                                    \r\n                                    \r\n                                ', '2014-06-05 10:25:22', '2014-06-10 16:37:45', 'Livre'),
(17, 'Quarto de casal ', 'Uma cama de casal e duas de solteiro', 'Preço de Rodeio', '75.00', 'public/upload/DSC01956A.JPG', 'QUARTO SIMPLES', '2014-06-12 07:51:44', '0000-00-00 00:00:00', 'Livre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsvcust`
--

CREATE TABLE IF NOT EXISTS `rsvcust` (
  `rsvid` int(11) NOT NULL AUTO_INCREMENT,
  `rsvcode` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `daysqty` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `totalcost` decimal(10,2) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_updt` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`rsvid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `custid` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL,
  `userkey` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `note` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_updt` datetime NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`userid`, `custid`, `email`, `username`, `password`, `role`, `userkey`, `status`, `note`, `date_add`, `date_updt`) VALUES
(1, 0, 'contato@pousadacs.com.br', 'admin', '20a0afc57d424ff7ff882e3a82a6036c4989c563f246a882a5a2e8d8babc766d', 'owner', '20a0afc57d424ff7ff882e3a82a6036c4989c563f246a882a5a2e8d8babc766d', 1, '', '2014-05-30 00:00:00', '0000-00-00 00:00:00'),
(4, 7, 'batista_silva@ossb.com.br', 'batista', '2b46ca41b6c96d1993e59c6a222553f9f30e9586817d7617bc6ed062085cb6b6', 'admin', '5d9e2d92999555ced56973c10043fb8d', 1, 'Alteração Batista', '2014-06-06 20:51:41', '2014-06-13 19:16:18'),
(5, 8, 'costa@pousadacs.com.br', 'LEONARDO', 'd56630da4c4302e70582fb2d73ead3d493c51b7ae73b437ead25e7221d97432a', 'default', '2ebb194c1d16cc2e85e0e3e3008dddfd', 0, '', '2014-06-09 18:44:16', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
