-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 07/06/2014 às 16:52:14
-- Versão do Servidor: 5.5.37
-- Versão do PHP: 5.4.4-14+deb7u10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `pcsmvc`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`custid`, `userid`, `name`, `dateofbirth`, `occupation`, `gender`, `cpf`, `rg`, `dispatcher_zone`, `address`, `district`, `city`, `state`, `zipcode`, `email`, `home_phone`, `business_phone`, `mobil_phone`, `date_add`, `date_updt`) VALUES
(7, 4, 'JOÃO BATISTA DA SILVA FILHO', '1970-10-21', 'ENGENHEIRO', 'M', '413.036.523-15', '381848164', 'SSP', 'RUA SÃO GABRIEL, 41', 'JD. ÍTALIA', 'EXTREMA', 'MG', '37640-000', 'batista_silva@ossb.com.br', '(35)9158-8894', '(35)9158-8894', '(11)97719-6355', '2014-06-06 23:51:41', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `rooms`
--

INSERT INTO `rooms` (`roomid`, `description`, `typebeds`, `costtype`, `costroom`, `imagem`, `complement`, `date_add`, `date_update`, `status`) VALUES
(8, 'Quarto de casal sem filhos', 'Uma cama de casal', 'Preço de Inverno', 60.00, 'public/upload/DSC02058N.JPG', 'Diária para um casal com direito a café da manhã.    \r\n                                    \r\n                                ', '2014-06-04 15:03:24', '2014-06-06 20:08:05', 'Livre'),
(9, 'Quarto para casal com filhos', 'uma cama de casal com três de solteiros ', 'Preço de Inverno', 90.00, 'public/upload/DSC01966N.JPG', '                                  Diária para casal com 3 filho, com café da manhã.                                                                                                    \r\n                                    \r\n                                    \r\n                                    \r\n                                ', '2014-06-04 15:07:13', '2014-06-06 20:04:14', 'Livre'),
(11, 'Quarto de Souteiro', 'Quarto com duas camas ', 'Preço de Inverno', 80.00, 'public/upload/DSC01963N.JPG', '                                 Hospedagem para duas pessoas souteiras com direito ao café da manhã.    \r\n                                ', '2014-06-04 15:10:23', '2014-06-05 10:22:54', 'Livre'),
(12, 'Quarto de casal com um filho', 'Uma cama de casal e uma de solteiro', 'Preço de Inverno', 70.00, 'public/upload/DSC01956N.JPG', 'Hospedagem para um Casal com um filho, com direito ao café da manhã.    \r\n                                    \r\n                                ', '2014-06-04 15:16:51', '2014-06-06 20:05:18', 'Livre'),
(13, 'Quarto de solteiro triplo', 'Três camas de solteiros', 'Preço de Inverno', 120.00, 'public/upload/DSC01959N.JPG', 'Hospedagem para três pessoas com direito ao café da manhã.    \r\n                                    \r\n                                ', '2014-06-04 15:18:41', '2014-06-06 20:06:09', 'Livre'),
(15, 'Quarto para uma pessoa', 'Cama de solteiro', 'Preço de Inverno', 50.00, 'public/upload/DSC02064N.JPG', '                                 Quarto para uma Pesoa, direito a café da manhã    \r\n                                ', '2014-06-05 10:25:22', '2014-06-06 20:07:15', 'Livre');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `rsvcust`
--

INSERT INTO `rsvcust` (`rsvid`, `rsvcode`, `roomid`, `custid`, `daysqty`, `checkin`, `checkout`, `totalcost`, `date_add`, `date_updt`, `status`) VALUES
(1, 4782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:05:18', '0000-00-00 00:00:00', 1),
(2, 4782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:06:04', '0000-00-00 00:00:00', 1),
(3, 4782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:13:13', '0000-00-00 00:00:00', 1),
(4, 4782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:16:05', '0000-00-00 00:00:00', 1),
(5, 5782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:16:53', '0000-00-00 00:00:00', 1),
(6, 6782, 8, 7, 2, '2014-06-08', '2014-06-10', 120.00, '2014-06-07 16:20:21', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` enum('default','admin','owner') NOT NULL,
  `userkey` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`userid`, `email`, `username`, `password`, `role`, `userkey`, `status`, `date_add`) VALUES
(1, 'admin@pousadacs.com.br', 'admin', '20a0afc57d424ff7ff882e3a82a6036c4989c563f246a882a5a2e8d8babc766d', 'owner', '20a0afc57d424ff7ff882e3a82a6036c4989c563f246a882a5a2e8d8babc766d', 1, '2014-05-30 00:00:00'),
(4, 'batista_silva@ossb.com.br', 'batista', '2b46ca41b6c96d1993e59c6a222553f9f30e9586817d7617bc6ed062085cb6b6', 'default', '5d9e2d92999555ced56973c10043fb8d', 1, '2014-06-06 20:51:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
