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
  `q21` varchar(45) DEFAULT NULL,
  `q22` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ideval`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eval`
--

LOCK TABLES `eval` WRITE;
/*!40000 ALTER TABLE `eval` DISABLE KEYS */;
INSERT INTO `eval` VALUES (11,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL),(12,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL),(13,'Desktop Review','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','No:  a','No:  adfa','No:  afdas','No:  aaa','No:  asdfasdf','No:  asfda','No:  adfadf','No:  dafasdf','No: af','No: asdfafs','No: adsdfasf','No:  asdfaf','No:  dasfas','No:  asdfaf',NULL,NULL,NULL),(14,'Unproven Technology','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL),(15,'Moved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'October 20 2018','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Moved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Ocr','Supported if:  wtf','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL),(19,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/08','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Not Approved','No:  asdfa','No:  dafasfsa','No:  asfas','Yes','No:  adsfafda','No:  afdsaa','2018/10/09','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Terminal Located In A Remote Area','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/14','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes',NULL,NULL,NULL),(22,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/14','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Not Approved','Yes','No:  yes','Yes','Yes','Yes','Yes','2018/10/14','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/14','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Not Approved','Yes','Yes','Yes','Yes','Yes','Yes','2018/10/14','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Not Approved','No:  sc','No:  acas','No:  fva','Yes','Yes','Yes','2018/10/16','Not applicable','No Decision Yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Not Permitted','Yes','Yes','No:  a','Yes','Yes','No:  b','2018/10/16','Not applicable','No Decision Yet','Yes','No:  g','No:  d','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Not Permitted','Yes','No:  sfafffad','No:  aaaa','No:  ffff','No:  fffaa','No:  aaaaa','2018/10/16','Not applicable','No Decision Yet','No:  gsfsg','No:  aaaasa','No:  aadsfd','No:  asfda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Not Permitted','Yes','Yes','Yes','No:  adafda','Yes:  adfad','Yes','2018/10/16','Not applicable','No Decision Yet','Yes','Yes','Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Not Permitted','Yes','Yes','Yes','Yes','Yes:  asdfa','No:  aasfs','2018/10/16','Not applicable','No Decision Yet','No:  asdfa','No:  fafasf','No:  dasfasdf','No:  fasdfa','No:  sad','No:  v','No:  a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Desktop Review','No:  ttyty','No:  dghdfd','No:  dghdhf','No:  dgffdghdf','Yes:  dghdgh','No:  dghdfhdfd','2018/10/16','Not applicable','No Decision Yet','No:  nnnhgdngh','No:  xxxx','No:  mmmmm','No:  nnnn','No:  bbbbb','No:  ttt','No:  ee','No:  lll','No:  kkk','No:  jjj','No:  gg','No:  aafgagf','No:  sfs','No:  aa',NULL,NULL,NULL),(32,'Desktop Review','No:  ttyty','No:  dghdfd','No:  dghdhf','No:  dgffdghdf','Yes:  dghdgh','No:  dghdfhdfd','2018/10/16','Not applicable','No Decision Yet','No:  nnnhgdngh','No:  xxxx','No:  mmmmm','No:  nnnn','No:  bbbbb','No:  ttt','No:  ee','No:  lll','No:  kkk','No:  jjj','No:  gg','No:  aafgagf','No:  sfs','No:  aa',NULL,'No:  b','No:  a'),(33,'Moved','No:  a','Yes','Yes','Yes','Yes:  sasaf','No:  afaf','2018/10/16','May 13','No Decision Yet','No:  afdsaf','Yes','No:  asdfasdfsa','No:  asdfasdfad','No:  aadsfadafffa','No:  fasdfafa','No:  vvvvv','No:  sadfaf','No:  fdafa','No:  aaas','No:  fff','No:  f',NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2018-10-16 15:49:35
