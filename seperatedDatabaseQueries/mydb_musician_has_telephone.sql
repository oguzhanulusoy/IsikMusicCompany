-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.8-MariaDB

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
-- Table structure for table `musician_has_telephone`
--

DROP TABLE IF EXISTS `musician_has_telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musician_has_telephone` (
  `Musician_ssn` varchar(45) NOT NULL,
  `Telephone_phone_no` int(11) NOT NULL,
  `Telephone_Place_address` varchar(45) NOT NULL,
  PRIMARY KEY (`Musician_ssn`,`Telephone_phone_no`,`Telephone_Place_address`),
  KEY `fk_Musician_has_Telephone_Telephone1_idx` (`Telephone_phone_no`,`Telephone_Place_address`),
  KEY `fk_Musician_has_Telephone_Musician1_idx` (`Musician_ssn`),
  CONSTRAINT `fk_Musician_has_Telephone_Musician1` FOREIGN KEY (`Musician_ssn`) REFERENCES `musician` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Musician_has_Telephone_Telephone1` FOREIGN KEY (`Telephone_phone_no`, `Telephone_Place_address`) REFERENCES `telephone` (`phone_no`, `Place_address`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musician_has_telephone`
--

LOCK TABLES `musician_has_telephone` WRITE;
/*!40000 ALTER TABLE `musician_has_telephone` DISABLE KEYS */;
/*!40000 ALTER TABLE `musician_has_telephone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-18  3:46:12
