-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 10/06/2014 às 21:23:44
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
-- Estrutura da tabela `admimage`
--

CREATE TABLE IF NOT EXISTS `admimage` (
  `imgid` int(11) NOT NULL AUTO_INCREMENT,
  `desc1` varchar(40) NOT NULL,
  `desc2` varchar(40) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`imgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `admimage`
--

INSERT INTO `admimage` (`imgid`, `desc1`, `desc2`, `imagem`, `date_add`) VALUES
(2, 'Cachoeira do Salto', 'Imagem do Caminho da Cachoeira do Salto', 'public/upldimg/CachoeiraSalto.jpg', '2014-06-10 20:11:10'),
(3, 'Cachoeira do Jaguari', 'Imagem da Cachoeira do Jaguari', 'public/upldimg/CachoeiraJaguari.jpg', '2014-06-10 20:12:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
