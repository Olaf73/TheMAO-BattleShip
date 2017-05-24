-- MySQL dump 10.11
--
-- Host: localhost    Database: battleshipdb
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt-log

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
-- Table structure for table `cometarios`
--

DROP TABLE IF EXISTS `cometarios`;
CREATE TABLE `cometarios` (
  `id_comentario` int(5) NOT NULL auto_increment,
  `cometario` varchar(500) default NULL,
  PRIMARY KEY  (`id_comentario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometarios`
--

LOCK TABLES `cometarios` WRITE;
/*!40000 ALTER TABLE `cometarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cometarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id_perfil` int(5) NOT NULL auto_increment,
  `f_perfil` longblob,
  `t_perfil` tinytext,
  `id_usuario` int(5) default NULL,
  `id_public` int(5) default NULL,
  PRIMARY KEY  (`id_perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_1`
--

DROP TABLE IF EXISTS `publicacion_1`;
CREATE TABLE `publicacion_1` (
  `id_p` int(5) NOT NULL auto_increment,
  `publicacion` varchar(500) default NULL,
  `id_comentario` int(5) default NULL,
  `id_reaccion` int(5) default NULL,
  PRIMARY KEY  (`id_p`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publicacion_1`
--

LOCK TABLES `publicacion_1` WRITE;
/*!40000 ALTER TABLE `publicacion_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_2`
--

DROP TABLE IF EXISTS `publicacion_2`;
CREATE TABLE `publicacion_2` (
  `id_pa` int(5) NOT NULL auto_increment,
  `p_autom` varchar(100) default NULL,
  `id_comentario` int(5) default NULL,
  `id_reaccion` int(5) default NULL,
  PRIMARY KEY  (`id_pa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publicacion_2`
--

LOCK TABLES `publicacion_2` WRITE;
/*!40000 ALTER TABLE `publicacion_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
CREATE TABLE `publicaciones` (
  `id_public` int(5) NOT NULL auto_increment,
  `id_p` int(5) default NULL,
  `id_pa` int(5) default NULL,
  PRIMARY KEY  (`id_public`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacciones`
--

DROP TABLE IF EXISTS `reacciones`;
CREATE TABLE `reacciones` (
  `id_reaccion` int(5) NOT NULL auto_increment,
  `t_reaccion` varchar(20) default NULL,
  PRIMARY KEY  (`id_reaccion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reacciones`
--

LOCK TABLES `reacciones` WRITE;
/*!40000 ALTER TABLE `reacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro` (
  `id_usuario` int(5) NOT NULL auto_increment,
  `nombre` text,
  `f_nac` date default NULL,
  `c_elec` varchar(50) default NULL,
  `usuario` varchar(15) default NULL,
  `contrasennia` varchar(20) default NULL,
  PRIMARY KEY  (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
CREATE TABLE `reportes` (
  `id_r` int(5) NOT NULL auto_increment,
  `reporte` varchar(500) default NULL,
  PRIMARY KEY  (`id_r`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
CREATE TABLE `solicitud` (
  `id_s` int(5) NOT NULL auto_increment,
  `s_soporte` varchar(500) default NULL,
  PRIMARY KEY  (`id_s`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 18:46:29
