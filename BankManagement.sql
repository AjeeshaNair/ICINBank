CREATE DATABASE  IF NOT EXISTS `bankmgt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bankmgt`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: bankmgt
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `b_accountbalance`
--

DROP TABLE IF EXISTS `b_accountbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_accountbalance` (
  `ID` bigint(20) NOT NULL,
  `accountNo` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_accountbalance`
--

LOCK TABLES `b_accountbalance` WRITE;
/*!40000 ALTER TABLE `b_accountbalance` DISABLE KEYS */;
INSERT INTO `b_accountbalance` VALUES (1,1001020102,192600,NULL,NULL,'2019-06-28 21:03:29','2019-06-28 21:03:29'),(2,1001020103,6500,NULL,NULL,'2019-06-29 19:52:35','2019-06-29 19:52:35'),(3,1001020104,0,NULL,NULL,'2019-07-09 15:44:27','2019-07-09 15:44:27'),(4,1001020105,5000,NULL,NULL,'2019-07-27 05:45:54','2019-07-27 05:45:54');
/*!40000 ALTER TABLE `b_accountbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bank`
--

DROP TABLE IF EXISTS `b_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bank` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `IFSECode` varchar(225) DEFAULT NULL,
  `description` varchar(700) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shortCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bank`
--

LOCK TABLES `b_bank` WRITE;
/*!40000 ALTER TABLE `b_bank` DISABLE KEYS */;
INSERT INTO `b_bank` VALUES (1,'Bank Of India','BKID0008810','DDDDD','Admin123','Admin123','2019-06-04 21:08:13','2019-06-29 20:29:02','BOI'),(2,'State Bank  Indiaaa','SKID0001011','IGIG wge8tcbywefr','Admin123','Admin123','2019-06-29 18:18:49','2019-07-10 04:27:28','SBI1'),(3,'DEmo Bank','IF000026','fgfdhdhd','Admin123','Admin123','2019-07-27 05:42:05','2019-07-27 05:42:05','2585');
/*!40000 ALTER TABLE `b_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_booktransaction`
--

DROP TABLE IF EXISTS `b_booktransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_booktransaction` (
  `ID` bigint(20) NOT NULL,
  `accountNo` bigint(20) DEFAULT NULL,
  `AccHolderName` varchar(225) DEFAULT NULL,
  `transactionType` varchar(225) DEFAULT NULL,
  `transactionAmount` bigint(20) DEFAULT NULL,
  `bankName` varchar(225) DEFAULT NULL,
  `routingNo` varchar(225) DEFAULT NULL,
  `transactionDate` date DEFAULT NULL,
  `transactionDescription` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_booktransaction`
--

LOCK TABLES `b_booktransaction` WRITE;
/*!40000 ALTER TABLE `b_booktransaction` DISABLE KEYS */;
INSERT INTO `b_booktransaction` VALUES (1,1001020102,'Hariom Mukati','Credit',200000,'Bank Of India','5','2019-06-28','xcbxfbd gfgh','Admin123','Admin123','2019-06-28 21:03:28','2019-06-28 21:03:28'),(2,1001020102,'Hariom Mukati','Debit',100000,'Bank Of India','5','2019-06-28','fgngnfg gn','Admin123','Admin123','2019-06-28 21:04:31','2019-06-28 21:04:31'),(3,1001020102,'Hariom Mukati','Debit',500,'Bank Of India','4','2019-06-28','dbsvehvs','Admin123','Admin123','2019-06-28 22:20:49','2019-06-28 22:20:49'),(4,1001020102,'Hariom Mukati','Credit',100000,'Bank Of India','4','2019-06-28','sdfbgsfnbfd','Admin123','Admin123','2019-06-29 01:27:06','2019-06-29 01:27:06'),(5,1001020102,'Hariom Mukati','Debit',500,'Bank Of India','5','2019-06-29','Fund Transfer',NULL,NULL,'2019-06-29 19:52:35','2019-06-29 19:52:35'),(6,1001020103,'Demo Demo','Credit',500,'State Bank  India','5','2019-06-29','Fund Transfer',NULL,NULL,'2019-06-29 19:52:35','2019-06-29 19:52:35'),(7,1001020102,'Hariom Mukati','Debit',500,'Bank Of India','4','2019-07-02','Fund Transfer',NULL,NULL,'2019-07-03 04:28:51','2019-07-03 04:28:51'),(8,1001020103,'Demo Demo','Credit',500,'State Bank  India','4','2019-07-02','Fund Transfer',NULL,NULL,'2019-07-03 04:28:51','2019-07-03 04:28:51'),(9,1001020102,'Hariom Mukati','Debit',500,'Bank Of India','4','2019-07-02','Fund Transfer',NULL,NULL,'2019-07-03 04:29:03','2019-07-03 04:29:03'),(10,1001020103,'Demo Demo','Credit',500,'State Bank  India','4','2019-07-02','Fund Transfer',NULL,NULL,'2019-07-03 04:29:03','2019-07-03 04:29:03'),(11,1001020104,'sdfff dfgdfg','Debit',600,'Bank Of India','54353','2019-07-09','ghfhfgh','Admin123','Admin123','2019-07-10 04:13:27','2019-07-10 04:14:27'),(12,1001020103,'Demo Demo','Credit',5000,'State Bank  India','4535','2019-07-09','4534','Admin123','Admin123','2019-07-10 04:15:35','2019-07-10 04:15:35'),(13,1001020104,'sdfff dfgdfg','Debit',600,'Bank Of India','fgd','2019-07-09','Fund Transfer',NULL,NULL,'2019-07-09 15:56:21','2019-07-09 15:56:21'),(14,1001020102,'Hariom Mukati','Credit',600,'Bank Of India','fgd','2019-07-09','Fund Transfer',NULL,NULL,'2019-07-09 15:56:21','2019-07-09 15:56:21'),(15,1001020102,'Hariom Mukati','Debit',5000,'Bank Of India','fhgf','2019-07-27','Fund Transfer',NULL,NULL,'2019-07-27 05:45:54','2019-07-27 05:45:54'),(16,1001020105,'Demo User','Credit',5000,'Bank Of India','fhgf','2019-07-27','Fund Transfer',NULL,NULL,'2019-07-27 05:45:54','2019-07-27 05:45:54');
/*!40000 ALTER TABLE `b_booktransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_fundtransfer`
--

DROP TABLE IF EXISTS `b_fundtransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_fundtransfer` (
  `ID` bigint(20) NOT NULL,
  `byAccountNo` bigint(20) DEFAULT NULL,
  `byAccHolderName` varchar(225) DEFAULT NULL,
  `transferDate` date DEFAULT NULL,
  `benAccountNo` bigint(20) DEFAULT NULL,
  `benAccHolderName` varchar(225) DEFAULT NULL,
  `bankName` varchar(225) DEFAULT NULL,
  `routing` varchar(225) DEFAULT NULL,
  `traAmount` bigint(20) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_fundtransfer`
--

LOCK TABLES `b_fundtransfer` WRITE;
/*!40000 ALTER TABLE `b_fundtransfer` DISABLE KEYS */;
INSERT INTO `b_fundtransfer` VALUES (1,1001020102,'Hariom Mukati','2019-06-29',1001020103,'Demo Demo','State Bank  India','5',500,'Completed','Hariom123','Hariom123','2019-06-29 19:52:27','2019-06-29 18:22:10'),(2,1001020102,'Hariom Mukati','2019-07-02',1001020103,'Demo Demo','State Bank  India','4',500,'Completed','Hariom123','Hariom123','2019-06-29 20:02:52','2019-06-29 19:59:03'),(3,1001020104,'sdfff dfgdfg','2019-07-09',1001020102,'Hariom Mukati','Bank Of India','fgd',600,'Completed','Bhupi1234','Bhupi1234','2019-07-10 04:02:33','2019-07-10 04:02:33'),(4,1001020102,'Hariom Mukati','2019-07-27',1001020105,'Demo User','Bank Of India','fhgf',5000,'Completed','Hariom123','Hariom123','2019-07-27 05:44:56','2019-07-27 05:44:56');
/*!40000 ALTER TABLE `b_fundtransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_role`
--

DROP TABLE IF EXISTS `b_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_role`
--

LOCK TABLES `b_role` WRITE;
/*!40000 ALTER TABLE `b_role` DISABLE KEYS */;
INSERT INTO `b_role` VALUES (1,'Admin','Administration',NULL,NULL,'2019-06-13 19:56:27','2019-06-13 19:56:30'),(2,'User','User',NULL,NULL,'2019-06-13 19:57:14','2019-06-13 19:57:17');
/*!40000 ALTER TABLE `b_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `accountNo` bigint(20) DEFAULT NULL,
  `bankId` bigint(20) DEFAULT NULL,
  `bankName` varchar(225) DEFAULT NULL,
  `typeOfAccount` varchar(225) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `accountName` varchar(225) DEFAULT NULL,
  `fax` varchar(225) DEFAULT NULL,
  `nationality` varchar(225) DEFAULT NULL,
  `userImage` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emailId` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'Admin','Admin','Admin123','Admin@321','2019-06-04','8319171979',1,'Male',1001020101,1,'Bank Of India',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-03 04:11:40','2019-06-04 16:44:35',NULL),(2,'Hariom','Mukati','Hariom123','Hari@123','1998-10-06','9165415598',2,'Male',1001020102,1,'Bank Of India','Saving','Hivevuv','Bbdiubu','jjv','Indian',NULL,'Admin123','Admin123','2019-07-02 17:10:55','2019-07-02 17:06:02','hihyduta@mailinator.com'),(4,'sdfff','dfgdfg','Bhupi1234','Bhupi@123','1985-03-19','9859685965',2,'Male',1001020104,1,'Bank Of India','Saving','MY Account','Demo123','asdf','indian',NULL,'root','root','2019-07-10 03:48:22','2019-07-10 03:50:39','asdf@gmail.com'),(5,'Demo','User','Demo@gmail.com','Demo@123','1989-01-02','9858963569',2,'Male',1001020105,1,'Bank Of India','Saving','Demo Title','Demo AccountName','gffd','indian',NULL,'Admin123','Admin123','2019-07-27 05:41:13','2019-07-27 05:41:13','Demo@gmail.com'),(6,'MR Taster','dfgfd','taster@gmail.com','Demo@123','2019-08-01','9858963569',2,'Male',1001020106,1,'Bank Of India','Saving','gfdgfdg','Testing','asdf','indian',NULL,'root','root','2019-08-10 05:10:30','2019-08-10 05:10:43','taster@gmail.com');
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-10 10:50:02
