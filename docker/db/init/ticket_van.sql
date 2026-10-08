-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: ticket_van
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_account` (
  `bank_id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (1,'ธนาคารไทยพาณิชย์ ','3-453-45-46-2745'),(2,'ธนาคารกสิกรไทย','45-3453-4534-14'),(3,'ธนาคารกรุงไทย','1-523-6412-23-1');
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_pay`
--

DROP TABLE IF EXISTS `bank_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_pay` (
  `pay_id` int(9) NOT NULL AUTO_INCREMENT,
  `bank_id` int(9) NOT NULL,
  `ticket_id` int(9) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_pay`
--

LOCK TABLES `bank_pay` WRITE;
/*!40000 ALTER TABLE `bank_pay` DISABLE KEYS */;
INSERT INTO `bank_pay` VALUES (16,1,20,'sdadadaasdasd'),(15,3,19,'sdhadfgaswdfasg');
/*!40000 ALTER TABLE `bank_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(9) NOT NULL AUTO_INCREMENT,
  `regis` varchar(100) NOT NULL,
  `seat_limit` int(2) NOT NULL,
  `mark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'979-1',40,'น๊อตหลุด โซ่พัง หม้อน้ำเสีย น้ำมันหมด พวกมาลัยหัก'),(2,'979-2',48,''),(5,'979-3',60,''),(6,'979-4',40,'');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_list`
--

DROP TABLE IF EXISTS `old_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `old_list` (
  `old_id` int(9) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `user_id` int(9) NOT NULL,
  `travel_id` int(9) NOT NULL,
  `seat` int(2) NOT NULL,
  `view` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`old_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_list`
--

LOCK TABLES `old_list` WRITE;
/*!40000 ALTER TABLE `old_list` DISABLE KEYS */;
INSERT INTO `old_list` VALUES (1,1314223200,5,1,10,0),(2,1314252000,5,1,1,0),(3,1313964000,5,2,20,0),(4,1314223200,8,1,40,0),(5,1317247200,8,2,1,0),(6,1314741600,8,1,1,0),(7,1316728800,8,1,1,0),(8,1314064800,10,1,1,0),(9,1314050400,10,1,1,0),(10,1314061200,11,1,1,0),(11,1314136800,8,1,1,0),(12,1314136800,8,1,2,0),(13,1314136800,8,1,3,0),(14,1314136800,1,1,4,0),(15,1314136800,1,1,5,0),(16,1314136800,1,1,6,0),(17,1314136800,1,1,7,0),(18,1314136800,1,1,8,0),(19,1314136800,1,1,9,0),(26,1314223200,19,1,1,0),(25,1314136800,4,1,10,1),(23,1314136800,4,1,12,0),(24,1314136800,4,1,13,0),(27,1314223200,19,1,2,0),(28,1314223200,20,1,3,0),(29,1314752400,8,1,1,0),(30,1314745200,8,1,1,0),(31,1314741600,1,1,2,0),(32,1314741600,1,1,3,0),(33,1314741600,1,1,4,0),(85,1341352800,1,1,1,1),(81,1315432800,1,3,1,0),(80,1315432800,1,2,1,0),(79,1315432800,1,1,1,0),(78,1315173600,1,3,2,0),(77,1315173600,1,3,1,0),(76,1315173600,1,1,2,0),(75,1315173600,1,1,1,0);
/*!40000 ALTER TABLE `old_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `path`
--

DROP TABLE IF EXISTS `path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path` (
  `path_id` int(9) NOT NULL AUTO_INCREMENT,
  `begin_id` int(9) NOT NULL,
  `finish_id` int(9) NOT NULL,
  PRIMARY KEY (`path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path`
--

LOCK TABLES `path` WRITE;
/*!40000 ALTER TABLE `path` DISABLE KEYS */;
INSERT INTO `path` VALUES (1,1,2),(2,2,1),(3,1,2);
/*!40000 ALTER TABLE `path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `place_id` int(9) NOT NULL AUTO_INCREMENT,
  `province_id` int(9) NOT NULL,
  `place` varchar(100) NOT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,11,'เมืองประจวบฯ'),(2,13,'สายใต้ใหม่'),(3,14,'Big C'),(4,11,'กุยบุรี'),(5,11,'ปราณบุรี'),(6,11,'หัวหิน'),(7,14,'ชะอำ');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` int(9) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (14,'เพชรบุรี'),(13,'กรุงเทพ'),(11,'ประจวบคีรีขันธ์');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticket_id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `date` int(11) NOT NULL,
  `pay` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,5,1313925663,1),(2,5,1313925741,1),(3,8,1313927209,1),(4,8,1313927370,1),(5,8,1314019235,1),(6,10,1314019649,1),(7,10,1314019734,1),(8,11,1314020301,1),(9,8,1314020536,1),(10,8,1314090877,0),(11,8,1314091718,1),(12,8,1314092258,0),(13,1,1314109464,0),(14,4,1314109706,0),(15,19,1314157133,0),(16,20,1314158867,1),(17,8,1314679077,0),(18,8,1314679187,0),(19,1,1314697645,1),(20,1,1315129174,0),(21,1,1315129193,0),(22,1,1315388311,0);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_list`
--

DROP TABLE IF EXISTS `ticket_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_list` (
  `list_id` int(9) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(9) NOT NULL,
  `travel_id` int(9) NOT NULL,
  `seat` int(2) NOT NULL,
  `traveldate` int(11) NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_list`
--

LOCK TABLES `ticket_list` WRITE;
/*!40000 ALTER TABLE `ticket_list` DISABLE KEYS */;
INSERT INTO `ticket_list` VALUES (1,1,1,10,1314223200),(2,1,1,1,1314252000),(3,2,2,20,1313964000),(4,3,1,40,1314223200),(5,4,2,1,1317247200),(6,5,1,1,1314741600),(7,6,1,1,1314064800),(8,7,1,1,1314050400),(9,8,1,1,1314061200),(10,9,1,1,1316728800),(11,10,1,1,1314136800),(12,11,1,2,1314136800),(13,12,1,3,1314136800),(14,13,1,4,1314136800),(15,13,1,5,1314136800),(16,13,1,6,1314136800),(17,13,1,7,1314136800),(30,20,1,2,1315173600),(19,14,1,12,1314136800),(20,14,1,13,1314136800),(21,15,1,1,1314223200),(22,15,1,2,1314223200),(23,16,1,3,1314223200),(24,17,1,1,1314752400),(25,18,1,1,1314745200),(26,19,1,9,1314136800),(27,19,1,2,1314741600),(28,19,1,3,1314741600),(31,20,1,1,1315173600),(32,21,3,2,1315173600),(33,21,3,1,1315173600),(34,22,3,1,1315432800),(35,22,2,1,1315432800),(36,22,1,1,1315432800);
/*!40000 ALTER TABLE `ticket_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel` (
  `travel_id` int(9) NOT NULL AUTO_INCREMENT,
  `path_id` int(9) NOT NULL,
  `car_id` int(9) NOT NULL,
  `fare` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`travel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,1,1,200),(2,2,1,200),(3,3,5,222);
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(9) NOT NULL AUTO_INCREMENT,
  `level_id` int(9) NOT NULL DEFAULT '1',
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `address` text,
  `telephone` varchar(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,4,'admin','admin','Administrator','M','ไม่มี','0800000000','info@localhost.com'),(2,2,'dvgamer','dvgamer','HaKkoMEw','M','15 ม.5 ปากตะโก ทุ่งตะโก ชุมพร 86220','0835073318','devil_draked@hotmail.com'),(4,1,'asdasd','asdasd','asdasdasd','M','asdasdasd','asdasdasd','asdasdasd'),(5,1,'pamza','1234','พิเชฎฐ์ เจริญศักดิ์','F','123/121','0810186011','pam@hotmail.com'),(6,1,'','','','F','','',''),(7,1,'pamza','1234','นายก ไก่','M','ๅ/-ก','0890211222','1'),(8,1,'1111','1111','hyfcgv kkugjh','M','fxg','hvhgvhgvg','fcgfc'),(9,1,'ghghghg','12345','ghghghgh','M','ghghghghg','08901232323','1212@hotmail.com'),(10,1,'Chalamfad','1234567890','รัตน ทิมเจริญ','M','17/128','0806566232','myu_mumew@hotmail.com'),(11,1,'peter','1111','ok ko','M','122','0891234567','1223@hotmail.com'),(12,1,'Chalamfad','123456','รัตน ทิมเจริญ','M','123','0806566232','myu_mumew@hotmail.com'),(13,1,'1111','111111','asdasdas','M','dasdasdasdasd','34563','dafh@sdgv.sdf'),(14,1,'1111','11111','adsfgas','M','dgasdfasdf','43532','asdfs@adsf.sdf'),(15,1,'sdadasd','123456','asdasd','M','asdasdas','032440325','adasd@dasds.com'),(16,1,'dasdas','dasdas','dasdas','M','dasdas','12312312312','adas@dasdas.com'),(17,1,'asdasdasczxa','asdasdasczxa','asdasdasczxa','M','asdasdasczxa','0324152487','asdasdasczxa@asdas.com'),(18,1,'adasdas','adasdas','adasdas','M','adasdas','0215241','adasdas@adasdas.com'),(19,1,'1234','1234','นายข ไข่','M','123','0889897676','1234@hotmail.com'),(20,1,'12345','12345','นายป ปู','M','12345','899123456','12345@hotmail.com'),(21,1,'djdfghasdf','zxczxc','gsdfgargaqwrhg','F','asertgaqwetgfasdg','0247857860','zdfhsefd@dfghjdfs.asg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level` (
  `level_id` int(9) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level`
--

LOCK TABLES `user_level` WRITE;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
INSERT INTO `user_level` VALUES (1,'ลูกค้า'),(2,'คนขับรถ'),(3,'พนักงาน'),(4,'ผู้ดูแลระบบ');
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
