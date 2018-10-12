-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alarp
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `eval`
--

DROP TABLE IF EXISTS `eval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eval` (
  `ideval` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `q1` varchar(45) NOT NULL,
  `q2` varchar(45) NOT NULL,
  `q3` varchar(45) NOT NULL,
  `q4` varchar(45) NOT NULL,
  `q5` varchar(45) NOT NULL,
  `q6` varchar(45) NOT NULL,
  `date_submitted` varchar(45) DEFAULT NULL,
  `date_inspected` varchar(45) DEFAULT NULL,
  `sme_decision` varchar(45) DEFAULT NULL,
  `q7` varchar(45) DEFAULT NULL,
  `q8` varchar(45) DEFAULT NULL,
  `q9` varchar(45) DEFAULT NULL,
  `q10` varchar(45) DEFAULT NULL,
  `q11` varchar(45) DEFAULT NULL,
  `q12` varchar(45) DEFAULT NULL,
  `q13` varchar(45) DEFAULT NULL,
  `q14` varchar(45) DEFAULT NULL,
  `q15` varchar(45) DEFAULT NULL,
  `q16` varchar(45) DEFAULT NULL,
  `q17` varchar(45) DEFAULT NULL,
  `q18` varchar(45) DEFAULT NULL,
  `q19` varchar(45) DEFAULT NULL,
  `q20` varchar(45) DEFAULT NULL,
  `iduser` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ideval`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eval`
--

LOCK TABLES `eval` WRITE;
/*!40000 ALTER TABLE `eval` DISABLE KEYS */;
INSERT INTO `eval` VALUES (1,NULL,'No:  a','No:  a','No:  a','No:  a','No:  a','No:  a',NULL,'October',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Not Approved','Yes','No:  a','No:  pakyu','No:  heywassup hello','No:  pakyo','No:  pakshet','2018/10/07','October 2 2018','Supported',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/07','May 13','Supported',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Not Approved','No:  payo','Yes','Yes','Yes','Yes','Yes','2018/10/07','May 13','Supported',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/07','May 14','Supported if:  Please man',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Not Approved','Yes','No:  heyo','Yes','Yes','Yes','Yes','2018/10/07','Not applicable','Supported if:  If umoo si Tin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Not Approved','Yes','Yes','Yes','No:  Kasi oo','Yes','Yes','2018/10/07','Not applicable','Supported if:  aasf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','Supported',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','Supported if:  because haha!','No:  a','No:  b','No:  c','No:  d','No:  e','No:  f','No:  g','Yes','No:  i','No:  j','Yes','No:  l','No:  m','Yes',NULL),(11,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL),(12,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL),(13,'Desktop Review','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','No:  a','No:  adfa','No:  afdas','No:  aaa','No:  asdfasdf','No:  asfda','No:  adfadf','No:  dafasdf','No: af','No: asdfafs','No: adsdfasf','No:  asdfaf','No:  dasfas','No:  asdfaf',NULL),(14,'Unproven Technology','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL),(15,'Moved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'October 20 2018','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Moved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Ocr','Supported if:  wtf','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL),(19,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Not Approved','No:  asdfa','No:  dafasfsa','No:  asfas','Yes','No:  adsfafda','No:  afdsaa','2018/10/09','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `eval` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-13  2:13:05
