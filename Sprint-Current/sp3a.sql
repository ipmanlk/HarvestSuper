CREATE DATABASE  IF NOT EXISTS `eucbitproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eucbitproject`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: eucbitproject
-- ------------------------------------------------------
-- Server version	5.5.10

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Nipuna'),(2,'Maliban'),(3,'Anchor'),(4,'Manchee');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Busicuit'),(2,'Dairy'),(3,'Rice');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorybrand`
--

DROP TABLE IF EXISTS `categorybrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorybrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_has_brand_brand1_idx` (`brand_id`),
  KEY `fk_category_has_brand_category1_idx` (`category_id`),
  CONSTRAINT `fk_category_has_brand_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_category_has_brand_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorybrand`
--

LOCK TABLES `categorybrand` WRITE;
/*!40000 ALTER TABLE `categorybrand` DISABLE KEYS */;
INSERT INTO `categorybrand` VALUES (1,1,2),(2,2,2),(3,2,3),(4,3,1);
/*!40000 ALTER TABLE `categorybrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `civilstatus`
--

DROP TABLE IF EXISTS `civilstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `civilstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civilstatus`
--

LOCK TABLES `civilstatus` WRITE;
/*!40000 ALTER TABLE `civilstatus` DISABLE KEYS */;
INSERT INTO `civilstatus` VALUES (13,'Married');
/*!40000 ALTER TABLE `civilstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (13,'Owner'),(15,'Manager');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` char(4) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `callingname` varchar(45) DEFAULT NULL,
  `photo` mediumblob,
  `dobirth` date DEFAULT NULL,
  `nic` char(12) DEFAULT NULL,
  `address` text,
  `mobile` char(10) DEFAULT NULL,
  `land` char(10) DEFAULT NULL,
  `description` text,
  `doassignment` date DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `civilstatus_id` int(11) NOT NULL,
  `employeestatus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_gender_idx` (`gender_id`),
  KEY `fk_employee_designation1_idx` (`designation_id`),
  KEY `fk_employee_civilstatus1_idx` (`civilstatus_id`),
  KEY `fk_employee_employeestatus1_idx` (`employeestatus_id`),
  CONSTRAINT `fk_employee_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_civilstatus1` FOREIGN KEY (`civilstatus_id`) REFERENCES `civilstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_employeestatus1` FOREIGN KEY (`employeestatus_id`) REFERENCES `employeestatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (13,NULL,'Earth University Collage','Admin',NULL,NULL,'000000000V',NULL,NULL,NULL,NULL,NULL,13,13,13,13),(14,'0401','Suranga','Dimuthu',NULL,'1998-06-09','786767667V','Weliweriya','0999999999','0999999999','sdfds','2018-08-21',13,13,13,14),(15,'0501','PAS Sanasuma','Susith','data:image/png;base64,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','1998-02-10','875676767V','Gampaha','0773333333','0888888888','Nothing','2018-08-22',13,13,13,13),(16,'0801','Manjula Sanjeewa','Manjula','data:image/png;base64,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','1998-01-05','876787878V','Minuwangoda','0888888888','0999999999','Nothing','2018-08-22',13,15,13,13);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeestatus`
--

DROP TABLE IF EXISTS `employeestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeestatus`
--

LOCK TABLES `employeestatus` WRITE;
/*!40000 ALTER TABLE `employeestatus` DISABLE KEYS */;
INSERT INTO `employeestatus` VALUES (13,'Operational'),(14,'Suspended'),(15,'Retired'),(16,'Onleave');
/*!40000 ALTER TABLE `employeestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (13,'Male');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` decimal(7,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `invoicestatus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_customer1_idx` (`customer_id`),
  KEY `fk_invoice_invoicestatus1_idx` (`invoicestatus_id`),
  CONSTRAINT `fk_invoice_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_invoicestatus1` FOREIGN KEY (`invoicestatus_id`) REFERENCES `invoicestatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceitem`
--

DROP TABLE IF EXISTS `invoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoiceitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `linetotal` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_has_item_item1_idx` (`item_id`),
  KEY `fk_invoice_has_item_invoice1_idx` (`invoice_id`),
  CONSTRAINT `fk_invoice_has_item_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_has_item_item1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceitem`
--

LOCK TABLES `invoiceitem` WRITE;
/*!40000 ALTER TABLE `invoiceitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicestatus`
--

DROP TABLE IF EXISTS `invoicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicestatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicestatus`
--

LOCK TABLES `invoicestatus` WRITE;
/*!40000 ALTER TABLE `invoicestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `unittype_id` int(11) NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `photo` mediumblob,
  `quantity` int(11) DEFAULT NULL,
  `rop` int(11) DEFAULT NULL,
  `itemstatus_id` int(11) NOT NULL,
  `dointroduced` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_subcategory1_idx` (`subcategory_id`),
  KEY `fk_item_itemstatus1_idx` (`itemstatus_id`),
  KEY `fk_item_unittype1_idx` (`unittype_id`),
  KEY `fk_item_brand1_idx` (`brand_id`),
  CONSTRAINT `fk_item_unittype1` FOREIGN KEY (`unittype_id`) REFERENCES `unittype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_itemstatus1` FOREIGN KEY (`itemstatus_id`) REFERENCES `itemstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_subcategory1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,1,'Rice-Samba-Keeri-Nipuna-5kg','010001',1,850.00,NULL,15,10,1,'2015-02-12'),(2,3,4,'Dairy-Milk-Powder-Anchor-400g','020001',1,325.00,NULL,12,10,1,'2014-08-12');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemstatus`
--

DROP TABLE IF EXISTS `itemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemstatus`
--

LOCK TABLES `itemstatus` WRITE;
/*!40000 ALTER TABLE `itemstatus` DISABLE KEYS */;
INSERT INTO `itemstatus` VALUES (1,'Available'),(2,'Discontinued'),(3,'Pending');
/*!40000 ALTER TABLE `itemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'EMPLOYEE'),(2,'USER'),(3,'PRIVILAGE'),(4,'DESIGNATION'),(5,'USERPASSWORDCHANGE'),(6,'ITEM');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationlog`
--

DROP TABLE IF EXISTS `operationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `operation` tinyint(4) DEFAULT NULL,
  `description` text,
  `datetime` datetime DEFAULT NULL,
  `operationstatus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_operationlog_employee1_idx` (`employee_id`),
  KEY `fk_operationlog_module1_idx` (`module_id`),
  KEY `fk_operationlog_operationstatus1_idx` (`operationstatus_id`),
  CONSTRAINT `fk_operationlog_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_operationlog_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_operationlog_operationstatus1` FOREIGN KEY (`operationstatus_id`) REFERENCES `operationstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationlog`
--

LOCK TABLES `operationlog` WRITE;
/*!40000 ALTER TABLE `operationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationstatus`
--

DROP TABLE IF EXISTS `operationstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operationstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationstatus`
--

LOCK TABLES `operationstatus` WRITE;
/*!40000 ALTER TABLE `operationstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilage`
--

DROP TABLE IF EXISTS `privilage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sel` int(11) DEFAULT NULL,
  `ins` int(11) DEFAULT NULL,
  `upd` int(11) DEFAULT NULL,
  `del` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_has_module_module1_idx` (`module_id`),
  KEY `fk_role_has_module_role1_idx` (`role_id`),
  CONSTRAINT `fk_role_has_module_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_has_module_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilage`
--

LOCK TABLES `privilage` WRITE;
/*!40000 ALTER TABLE `privilage` DISABLE KEYS */;
INSERT INTO `privilage` VALUES (1,2,2,1,1,0,1),(2,2,5,0,1,0,0);
/*!40000 ALTER TABLE `privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Saleperson'),(2,'Cashier'),(3,'Manager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessionlog`
--

DROP TABLE IF EXISTS `sessionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessionlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `logouttime` datetime DEFAULT NULL,
  `description` text,
  `sessionstatus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sessionlog_user1_idx` (`user_id`),
  KEY `fk_sessionlog_sessionstatus1_idx` (`sessionstatus_id`),
  CONSTRAINT `fk_sessionlog_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sessionlog_sessionstatus1` FOREIGN KEY (`sessionstatus_id`) REFERENCES `sessionstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessionlog`
--

LOCK TABLES `sessionlog` WRITE;
/*!40000 ALTER TABLE `sessionlog` DISABLE KEYS */;
INSERT INTO `sessionlog` VALUES (2,6,NULL,'2018-08-19 22:40:00',NULL,NULL,15),(3,6,NULL,'2018-08-19 22:41:46',NULL,NULL,15),(4,6,NULL,'2018-08-19 22:45:05',NULL,NULL,15),(5,6,NULL,'2018-08-19 22:47:08',NULL,NULL,15),(6,6,NULL,'2018-08-19 22:51:10',NULL,NULL,15),(7,6,NULL,'2018-08-19 22:52:48',NULL,NULL,15),(8,6,NULL,'2018-08-19 22:54:56',NULL,NULL,15),(9,6,NULL,'2018-08-19 22:56:36',NULL,NULL,15),(10,6,NULL,'2018-08-19 22:57:34',NULL,NULL,15),(11,6,NULL,'2018-08-19 22:58:41',NULL,NULL,15),(12,6,NULL,'2018-08-19 23:27:17',NULL,NULL,15),(13,6,NULL,'2018-08-19 23:27:57',NULL,NULL,15),(14,6,NULL,'2018-08-21 10:47:24',NULL,NULL,15),(15,8,NULL,'2018-08-21 17:49:27',NULL,NULL,15),(16,6,NULL,'2018-08-21 17:58:12',NULL,NULL,15),(17,8,NULL,'2018-08-21 18:01:30',NULL,NULL,15),(18,8,NULL,'2018-08-21 18:02:54',NULL,NULL,15),(19,8,NULL,'2018-08-21 18:08:33',NULL,NULL,15),(20,8,NULL,'2018-08-21 18:09:03','2018-08-21 18:09:42',NULL,16),(21,6,NULL,'2018-08-21 18:09:54',NULL,NULL,15),(22,8,NULL,'2018-08-21 18:23:10',NULL,NULL,15),(23,6,NULL,'2018-08-21 18:24:46',NULL,NULL,15),(24,8,NULL,'2018-08-21 18:25:57',NULL,NULL,15),(25,8,NULL,'2018-08-21 18:45:06',NULL,NULL,15),(26,8,NULL,'2018-08-21 19:06:13',NULL,NULL,15),(27,6,NULL,'2018-08-21 19:12:16',NULL,NULL,15),(28,8,NULL,'2018-08-21 19:12:35',NULL,NULL,15),(29,6,NULL,'2018-08-21 19:17:52',NULL,NULL,15),(30,8,NULL,'2018-08-21 19:41:16',NULL,NULL,15),(31,6,NULL,'2018-08-21 19:42:55',NULL,NULL,15),(32,6,NULL,'2018-08-21 19:47:53',NULL,NULL,15),(33,6,NULL,'2018-08-21 20:12:10','2018-08-21 21:17:21',NULL,16),(34,6,NULL,'2018-08-21 21:26:57',NULL,NULL,15),(35,6,NULL,'2018-08-22 21:54:58',NULL,NULL,15);
/*!40000 ALTER TABLE `sessionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessionstatus`
--

DROP TABLE IF EXISTS `sessionstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessionstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessionstatus`
--

LOCK TABLES `sessionstatus` WRITE;
/*!40000 ALTER TABLE `sessionstatus` DISABLE KEYS */;
INSERT INTO `sessionstatus` VALUES (15,'Login'),(16,'Logout');
/*!40000 ALTER TABLE `sessionstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subcategory_category1_idx` (`category_id`),
  CONSTRAINT `fk_subcategory_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,'Samba',3),(2,'Kakulu',3),(3,'Nadu',3),(4,'Milk-Pwder',2),(5,'Yoghurt',2);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittype`
--

DROP TABLE IF EXISTS `unittype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittype`
--

LOCK TABLES `unittype` WRITE;
/*!40000 ALTER TABLE `unittype` DISABLE KEYS */;
INSERT INTO `unittype` VALUES (1,'Unit'),(2,'Retail-1kg'),(3,'Retail100g');
/*!40000 ALTER TABLE `unittype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `docreation` date DEFAULT NULL,
  `description` text,
  `userstatus_id` int(11) NOT NULL,
  `employee_created_id` int(11) NOT NULL,
  `salt` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_userstatus1_idx` (`userstatus_id`),
  KEY `fk_user_employee1_idx` (`employee_created_id`),
  KEY `fk_user_employee2_idx` (`employee_id`),
  CONSTRAINT `fk_user_userstatus1` FOREIGN KEY (`userstatus_id`) REFERENCES `userstatus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_employee1` FOREIGN KEY (`employee_created_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_employee2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,13,'admin','24ee446e59f43f09d4e46a25a68adc398cceb082','2018-08-19','RootUser',13,13,'8c090cbf5286dbaa4f8dc80c6192887addc342ed'),(8,15,'su','5e6ae120a94b7c645884fdb11ed4d5d0719441b0','2018-08-22','Nothing',13,13,'d1a63044b65bab4c3eb97e67fcc79a7228a0bf28');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_has_user_user1_idx` (`user_id`),
  KEY `fk_role_has_user_role1_idx` (`role_id`),
  CONSTRAINT `fk_role_has_user_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (16,1,8),(17,3,8);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstatus`
--

DROP TABLE IF EXISTS `userstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstatus`
--

LOCK TABLES `userstatus` WRITE;
/*!40000 ALTER TABLE `userstatus` DISABLE KEYS */;
INSERT INTO `userstatus` VALUES (13,'Operational');
/*!40000 ALTER TABLE `userstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-26 11:37:32
