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
-- Table structure for table `pm_supplier_master`
--

DROP TABLE IF EXISTS `pm_supplier_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pm_supplier_master` (
  `supplier_code` varchar(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city_code` varchar(10) NOT NULL,
  `state_code` varchar(4) DEFAULT NULL,
  `country_code` varchar(4) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  `phno` varchar(20) DEFAULT NULL,
  `grams_no` varchar(20) DEFAULT NULL,
  `fax_no` varchar(20) DEFAULT NULL,
  `telex_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `contact_person` varchar(30) DEFAULT NULL,
  `category` varchar(4) DEFAULT NULL,
  `manufacturer_agent_flag` varchar(1) DEFAULT NULL,
  `agent_code` varchar(7) DEFAULT NULL,
  `itcc_date` datetime(6) DEFAULT NULL,
  `status_code` varchar(4) DEFAULT NULL,
  `status_effective_date` datetime(6) DEFAULT NULL,
  `cst_number` varchar(10) DEFAULT NULL,
  `ist_number` varchar(10) DEFAULT NULL,
  `monitery_limit` decimal(5,0) DEFAULT NULL,
  `iso_9000_ind` char(1) DEFAULT NULL,
  `iso_14000_ind` char(1) DEFAULT NULL,
  `itcc_submitted_ind` char(1) DEFAULT NULL,
  `order_value` decimal(8,0) DEFAULT NULL,
  `pending_order_value` decimal(8,0) DEFAULT NULL,
  `no_of_orders` int(4) DEFAULT NULL,
  `no_ofpending__orders` int(4) DEFAULT NULL,
  `bulletine_validity_date` datetime(6) DEFAULT NULL,
  `remarks` tinytext,
  `delete_flag` varchar(1) DEFAULT NULL,
  `delete_reason` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`supplier_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_supplier_master`
--

LOCK TABLES `pm_supplier_master` WRITE;
/*!40000 ALTER TABLE `pm_supplier_master` DISABLE KEYS */;
INSERT INTO `pm_supplier_master` VALUES ('11','sss','add','c12','ss2','cc2','pp2','123434','gg2','ff2','tt2','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc2','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('12','sss','add','c12','ss2','cc2','pp2','123434','gg2','ff2','tt2','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc2','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('s11','sidra','add','c11','ss1','cc1','pp1','123434','gg1','ff1','tt1','sidra@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc1','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('s12','sss','add','c12','ss2','cc2','pp2','123434','gg2','ff2','tt2','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc2','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('s13','sioe','add','c13','ss3','cc3','pp3','123434','gg3','ff3','tt3','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc3','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('s14','samaira','add','c13','ss3','cc3','pp3','123434','gg3','ff3','tt3','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc3','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq'),('s15','sam','add','c15','ss5','cc5','p5','123434','gg3','ff3','tt3','sss@g.com','vs','pb','w','aa1','0002-02-02 00:00:00.000000','sc3','0003-03-03 00:00:00.000000','21','42',32,'r','w','q',31,41,2,6,'0005-05-05 00:00:00.000000','eeeee','q','qqq');
/*!40000 ALTER TABLE `pm_supplier_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-29  9:46:20
