CREATE DATABASE  IF NOT EXISTS `cursomysql` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cursomysql`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cursomysql
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'destornillador',25,50),(2,'pinza',35,22),(3,'martillo',15,28),(4,'maza',35,18),(5,'balde',55,13);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `comentarios` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'juan','perez','xxxxx','peru 323',NULL),(2,'diego','torres','xxxxx','chile 320',NULL),(3,'laura','gomez','xxxxx','san juan 420',NULL),(4,'mario','lopez','xxxxx','lavalle 770',NULL),(5,'dario','sanchez','xxxxx','mexico 150',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes2`
--

DROP TABLE IF EXISTS `clientes2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes2` (
  `codigo` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `comentarios` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes2`
--

LOCK TABLES `clientes2` WRITE;
/*!40000 ALTER TABLE `clientes2` DISABLE KEYS */;
INSERT INTO `clientes2` VALUES (1,'juan','perez','xxxxx','peru 323',NULL),(2,'diego','torres','xxxxx','chile 320',NULL),(3,'laura','gomez','xxxxx','san juan 420',NULL),(4,'mario','lopez','xxxxx','lavalle 770',NULL),(5,'dario','sanchez','xxxxx','mexico 150',NULL);
/*!40000 ALTER TABLE `clientes2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes3`
--

DROP TABLE IF EXISTS `clientes3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes3` (
  `codigo` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `comentarios` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes3`
--

LOCK TABLES `clientes3` WRITE;
/*!40000 ALTER TABLE `clientes3` DISABLE KEYS */;
INSERT INTO `clientes3` VALUES (1,'juan','perez','xxxxx','peru 323',NULL),(2,'diego','torres','xxxxx','chile 320',NULL),(3,'laura','gomez','xxxxx','san juan 420',NULL),(4,'mario','lopez','xxxxx','lavalle 770',NULL),(5,'dario','sanchez','xxxxx','mexico 150',NULL),(1,'juan','perez','xxxxx','peru 323',NULL),(2,'diego','torres','xxxxx','chile 320',NULL),(3,'laura','gomez','xxxxx','san juan 420',NULL),(4,'mario','lopez','xxxxx','lavalle 770',NULL),(5,'dario','sanchez','xxxxx','mexico 150',NULL);
/*!40000 ALTER TABLE `clientes3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `letra` char(1) NOT NULL,
  `numero` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  PRIMARY KEY (`letra`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES ('a',1,'2011-09-18',500),('a',2,'2012-10-18',2500),('a',25,'2019-07-13',1800.54),('b',3,'2015-07-11',320),('b',4,'2016-05-22',120),('b',5,'2012-03-17',560);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-13 11:01:55
