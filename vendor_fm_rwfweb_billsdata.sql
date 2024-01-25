-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: vendor
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fm_rwfweb_billsdata`
--

DROP TABLE IF EXISTS `fm_rwfweb_billsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fm_rwfweb_billsdata` (
  `po_number` varchar(9) DEFAULT NULL,
  `supplier_code` varchar(8) NOT NULL,
  `aggrement_number` varchar(100) DEFAULT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `bill_number` varchar(12) DEFAULT NULL,
  `bill_date` datetime(6) DEFAULT NULL,
  `bill_amount` float DEFAULT NULL,
  `amount_passed` float DEFAULT NULL,
  `amount_payeble` float DEFAULT NULL,
  `remarks` varchar(167) DEFAULT NULL,
  `selection_code` varchar(2) DEFAULT NULL,
  `co6_number` varchar(9) DEFAULT NULL,
  `co6_date` datetime(6) DEFAULT NULL,
  `co7_number` varchar(8) DEFAULT NULL,
  `co7_date` datetime(6) DEFAULT NULL,
  `pmr_number` varchar(9) DEFAULT NULL,
  `pmr_date` datetime(6) DEFAULT NULL,
  `web_upload` varchar(1) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`supplier_code`),
  CONSTRAINT `fm_rwfweb_billsdata_ibfk_1` FOREIGN KEY (`supplier_code`) REFERENCES `pm_supplier_master` (`supplier_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fm_rwfweb_billsdata`
--

LOCK TABLES `fm_rwfweb_billsdata` WRITE;
/*!40000 ALTER TABLE `fm_rwfweb_billsdata` DISABLE KEYS */;
INSERT INTO `fm_rwfweb_billsdata` VALUES ('11','11','ag1','cmp3','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p15','12','ag1','cmp3','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p11','s11','ag1','cmp1','bb1','0003-03-03 00:00:00.000000',3232,23323,2222,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p12','s12','ag1','cmp1','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p13','s13','ag1','cmp3','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p14','s14','ag1','cmp3','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000'),('p15','s15','ag1','cmp3','bb1','0003-03-03 00:00:00.000000',3232,2332,2332,'erwrer','s1','co11','0003-03-03 00:00:00.000000','co71','0005-05-05 00:00:00.000000','pmr1','0009-09-09 00:00:00.000000','q','2012-04-12 00:00:00.000000');
/*!40000 ALTER TABLE `fm_rwfweb_billsdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-29  9:46:22
