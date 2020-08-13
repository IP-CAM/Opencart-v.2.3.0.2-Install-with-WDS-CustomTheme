-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: thiennam
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,1,'Ly','Nguyen Van','','Hai Hoa, Hai Hau','','Nam Dinh','420000',230,3776,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','1tQYBONFESd4uri9EPq3OVKpQRBrBJsC95pKWPUdT16W4byi3Eczhi4noijgJwH2yQfomK21uIkJEKOh8FqoYmmfQaBpOtyd4efi5Ac4fhw7AKVt3K47ofQDTu6JvcTPd5wuWTT1JD5Y0YckgqJzjgydMjzV3Ag76KFPd6aezachzPEbKhY5Xr9TKa0Bu5BSDa5EgPNlf6fOnkuMAW2okhLfQDrrTzdF7MbrTtK3PKZczy96xlLLD8WvpYI1dMtO',1,'2017-01-08 10:19:55','2017-01-08 10:19:55'),(2,'Default','utXLCC5edP8VaQVKU5V0VnpMT0qCKZIJlj914C4HSqbSge7BGuHpDWQYYwWAKMAvvaRTFg12sY7DH6gz85evoqdedhe2zrPmf9yyqTUGsbccfxErRdqwbj0HLjSzkyoNVtOyCKEJpStP5MOUR1Mj0edmkRSJ43sAycxYMV9wPX6ArovdB9lXTeGxKxkvDZbt8wxk4GEmB1xEvjLCxiVGj7ceVsXBFZ0MxI7nBQTq75aAu8N9fXvUO7JVC3amTNSb',1,'2017-03-03 11:27:18','2017-03-03 11:27:18'),(3,'Default','Eqxn8ADDxBv44GLWOxLdJGv3wUSlEmHMXvTD97GXREQkNAbgbJF5qbLXw2mtvApPHM00xVSu76ZzcMcNpAHggeeI4JDayyWy8XTMwgN0trpEX3p5NV1WATW9rrQ1kuBCRPnWMMXvSR8u4XqQZdejmo1K0YXO2rdrc1fNZrh7uRIuDFIx1QVqynTE9j2M2K3D7vF69oYZ2cLvxNJUJ6db8ZzgZZPTYLVp6QddcjpAJpVEuNeiSBQf4ZTN9PnKonfk',1,'2020-07-29 10:39:57','2020-07-29 10:39:57');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'127.0.0.1');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (1,1,'OtyhuHSXs24MBpjgh2DbFpqp4UvZ9TNC','phe0681mtpehp4v2eobtgpgk06','','127.0.0.1','2017-01-21 17:03:30','2017-01-21 17:03:37'),(2,1,'CEcCLifK1eBL3xjW1qAykUW2g3tcNb6k','j9nd18m6jroq6skhnf1aaf5a42','','127.0.0.1','2017-01-21 17:03:42','2017-01-21 17:03:42');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed'),(1,2,'Description'),(2,2,'No. of Cores'),(4,2,'test 1'),(5,2,'test 2'),(6,2,'test 3'),(7,2,'test 4'),(8,2,'test 5'),(9,2,'test 6'),(10,2,'test 7'),(11,2,'test 8'),(3,2,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor'),(3,2,'Memory'),(4,2,'Technical'),(5,2,'Motherboard'),(6,2,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'Banner 1 - cột phải - Trang chủ',1),(7,'Slideshow - Trang chủ',1),(8,'Banner 2 - cột phải - Trang chủ',1),(9,'Banner cột trái - ngang sản phẩm mới',1),(10,'Banner cuối nội dung',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (124,7,1,'Banner','#','catalog/banner/slide3.jpg',0),(126,10,2,'Banner','#','catalog/banner/banner-bottom.png',0),(127,10,1,'Banner','#','catalog/banner/banner-bottom.png',0),(130,9,2,'Banner','#','catalog/banner/vaz1366174201.png',0),(131,9,1,'Banner','#','catalog/banner/vaz1366174201.png',0),(122,7,1,'iPhone 6','#','catalog/banner/slide1.jpg',0),(123,7,1,'MacBookAir','#','catalog/banner/slide2.jpg',0),(120,7,2,'MacBookAir','#','catalog/banner/slide2.jpg',0),(121,7,2,'Banner','#','catalog/banner/slide3.jpg',0),(117,6,2,'Banner','#','catalog/banner/banner1.jpg',0),(118,6,1,'Banner','#','catalog/banner/banner1.jpg',0),(119,7,2,'iPhone 6','#','catalog/banner/slide1.jpg',0),(116,8,1,'Banner','#','catalog/banner/banner2.jpg',0),(115,8,2,'Banner','#','catalog/banner/banner2.jpg',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (25,'',0,1,0,3,1,'2009-01-31 01:04:25','2020-07-29 11:34:10'),(27,'',20,0,1,0,1,'2009-01-31 01:55:34','2020-07-29 11:18:13'),(20,'catalog/demo/compaq_presario.jpg',0,1,0,1,1,'2009-01-05 21:49:43','2020-07-29 11:04:45'),(68,'',0,1,0,5,1,'2020-08-04 09:37:59','2020-08-04 09:52:52'),(17,'',0,1,0,4,1,'2009-01-03 21:08:57','2020-07-29 11:35:20'),(65,'',0,1,0,7,1,'2020-07-29 11:44:52','2020-07-29 17:39:40'),(30,'',0,1,0,0,1,'2009-02-02 13:11:59','2020-08-04 10:30:28'),(64,'',33,0,0,0,1,'2020-07-29 11:43:30','2020-07-29 11:43:30'),(33,'',0,1,0,6,1,'2009-02-03 14:17:55','2020-07-29 11:40:31'),(57,'',0,1,0,3,1,'2011-04-26 08:53:16','2020-07-29 11:22:51'),(60,'',20,0,1,2,1,'2020-07-29 11:10:33','2020-07-29 11:22:06'),(59,'',20,0,1,1,1,'2020-07-29 11:07:08','2020-07-29 11:07:43'),(61,'catalog/demo/compaq_presario.jpg',20,0,1,3,1,'2020-07-29 11:16:55','2020-07-29 11:22:24'),(70,'',68,0,1,0,1,'2020-08-04 10:25:40','2020-08-04 10:25:40'),(69,'',68,0,1,1,1,'2020-08-04 10:25:08','2020-08-04 10:25:08'),(66,'',0,0,5,0,1,'2020-07-31 14:22:46','2020-07-31 14:22:46');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (25,2,'Tuyển dụng','&lt;p&gt;Thông tin tuyển dụng Thiên Nam&lt;br&gt;&lt;/p&gt;','Tuyển dụng','Tuyển dụng Thiên Nam','Tuyển dụng Thiên Nam, Tuyển dụng'),(25,1,'Recruitment','&lt;p&gt;Recruitment of Thien Nam&lt;br&gt;&lt;/p&gt;','Recruitment of Thien Nam','Recruitment of Thien Nam','Recruitment of Thien Nam, Recruitment, Recruit'),(20,2,'Giới thiệu','&lt;p&gt;Giới thiệu&lt;/p&gt;&lt;p&gt;TẦM NHÌN&lt;/p&gt;&lt;p&gt;Trở thành một trong những Công ty sản xuất hàng thời trang trung cấp hàng đầu trong lĩnh vực dệt may vào năm 2020.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SỨ MỆNH&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Phát huy sức mạnh của tập thể&lt;/p&gt;&lt;p&gt;Là người tiên phong chứ không phải người theo đuổi&lt;/p&gt;&lt;p&gt;Trở thành nhà sản xuất hàng may mặc thời trang uy tín&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;TRIẾT LÝ KINH DOANH&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hiệu quả - Năng động&lt;/p&gt;&lt;p&gt;Bền vững dựa trên niềm tin vào chất lượng và dịch vụ&lt;/p&gt;\r\n','Giới thiệu','Giới thiệu về Công ty Dệt may Thiên Nam','Giới thiệu Thiên Nam, Giới thiệu'),(33,2,'Download','&lt;p&gt;Download&lt;br&gt;&lt;/p&gt;','Download','Download Thien Nam','Download Thien Nam, Download'),(33,1,'Download','&lt;p&gt;Download&lt;br&gt;&lt;/p&gt;','Download','Download Thien Nam','Download Thien Nam, Download'),(64,2,'Kinh doanh hiệu quả','&lt;p&gt;Kinh doanh hiệu quả&lt;br&gt;&lt;/p&gt;','Kinh doanh hiệu quả','Kinh doanh hiệu quả','Kinh doanh hiệu quả, Thien Nam, Thiên Nam'),(64,1,'Business','&lt;p&gt;Business&lt;br&gt;&lt;/p&gt;','Business','Business','Business'),(65,2,'Liên hệ','&lt;p&gt;Liên hệ Thiên Nam&lt;br&gt;&lt;/p&gt;','Liên hệ Thiên Nam','Liên hệ Thiên Nam','Liên hệ Thiên Nam, Liên hệ'),(65,1,'Contact','&lt;p&gt;Contact Thien Nam&lt;/p&gt;','Contact Thien Nam','Contact Thien Nam','Contact Thien Nam, Contact'),(66,2,'Thông tin giới thiệu','&lt;p&gt;GIỚI THIỆU&lt;/p&gt;&lt;p&gt;Tại Hoàng Dũng, Quý khách sẽ nhận được sự phục vụ tốt nhất. Sự hài lòng của Quý khách là mục tiêu cao nhất của Hoàng Dũng. Chúng tôi luôn đề cao chữ tín trong kinh doanh, để có thể gây dựng được một thương hiệu mạnh trên thị trường và hướng tới sự phát triển BỀN VỮNG!&lt;/p&gt;','Thông tin giới thiệu','Thông tin giới thiệu','Thông tin giới thiệu'),(69,1,'Industry News','&lt;p&gt;Industry News&lt;br&gt;&lt;/p&gt;','Industry News','Industry News','Industry News'),(68,1,'Our News','&lt;p&gt;Our News&lt;br&gt;&lt;/p&gt;','Our News','Our News','Our News'),(68,2,'Tin tức','&lt;p&gt;Tin tức&lt;br&gt;&lt;/p&gt;','Tin tức','Tin tức','Tin tức'),(20,1,'About Us','&lt;p&gt;Giới thiệu&lt;/p&gt;&lt;p&gt;TẦM NHÌN&lt;/p&gt;&lt;p&gt;Trở thành một trong những Công ty sản xuất hàng thời trang trung cấp hàng đầu trong lĩnh vực dệt may vào năm 2020.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SỨ MỆNH&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Phát huy sức mạnh của tập thể&lt;/p&gt;&lt;p&gt;Là người tiên phong chứ không phải người theo đuổi&lt;/p&gt;&lt;p&gt;Trở thành nhà sản xuất hàng may mặc thời trang uy tín&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;TRIẾT LÝ KINH DOANH&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hiệu quả - Năng động&lt;/p&gt;&lt;p&gt;Bền vững dựa trên niềm tin vào chất lượng và dịch vụ&lt;/p&gt;\r\n','About us','About us','About Thien Nam, About us'),(57,2,'Sản phẩm','&lt;p&gt;Sản phẩm của công ty Thiên Nam&amp;nbsp;&lt;br&gt;&lt;/p&gt;','Sản phẩm','Sản phẩm của công ty Thiên Nam ','Sản phẩm'),(57,1,'Product','&lt;p&gt;Product of Thien nam&lt;br&gt;&lt;/p&gt;','Product','Product of Thien nam','Product of Thien nam'),(70,2,'Tin Thiên Nam','&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Tin Thiên Nam&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Tin Thiên Nam','Tin Thiên Nam','Tin Thiên Nam'),(69,2,'Tin ngành','&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Tin ngành&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Tin ngành','Tin ngành','Tin ngành'),(66,1,'Thông tin giới thiệu','&lt;p&gt;GIỚI THIỆU&lt;/p&gt;&lt;p&gt;Tại Hoàng Dũng, Quý khách sẽ nhận được sự phục vụ tốt nhất. Sự hài lòng của Quý khách là mục tiêu cao nhất của Hoàng Dũng. Chúng tôi luôn đề cao chữ tín trong kinh doanh, để có thể gây dựng được một thương hiệu mạnh trên thị trường và hướng tới sự phát triển BỀN VỮNG!&lt;/p&gt;','Thông tin giới thiệu','Thông tin giới thiệu','Thông tin giới thiệu'),(30,1,'Home','&lt;p&gt;Home page of Thien Nam company&lt;br&gt;&lt;/p&gt;','Home','Home page','Home page, home, Thien Nam, thiennam'),(30,2,'Trang chủ','&lt;p&gt;Trang chủ Công ty Dệt may Thiên Nam&lt;/p&gt;','Trang chủ','Trang chủ Công ty Dệt may Thiên Nam','Trang chủ Công ty Dệt may Thiên Nam, Thiên Nam, thien nam, thiennam'),(17,2,'Đặt hàng','&lt;p&gt;Đặt hàng sản phẩm của công ty Thiên Nam&lt;/p&gt;','Đặt hàng Thiên Nam','Đặt hàng sản phẩm của công ty Thiên Nam','Đặt hàng Thiên Nam, Đặt hàng'),(17,1,'Order','&lt;p&gt;Order&lt;/p&gt;','Order','Order','Order'),(70,1,'Our News','&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Our News&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Our News','Our News','Our News'),(27,2,'Về Thiên Nam','&lt;p&gt;Công ty TNHH dệt may Hoàng Dũng tiền thân hoạt động sản xuất kinh doanh dưới mô hình tổ hợp dệt may ở làng nghề truyền thống Hòa Hậu - Lý Nhân - Hà Nam nổi tiếng miền Bắc từ những năm 1990, và chính thức thành lập tại thành phố Nam Định vào tháng 12/2004. Với hơn 20 năm kinh nghiệm trong nghề, cùng với sự thấu hiểu, gắn bó sâu sắc và sự nhiệt huyết với nghành, công ty dệt may Hoàng Dũng đã có những bước phát triển rất bền vững, và cũng đã rất mạnh dạn đầu tư trang thiết bị hiện đại từ Nhật Bản, Hàn Quốc và Châu Âu để ngày càng đáp ứng được nhu cầu ngày càng đa dạng, phức tạp của khách hàng và đối tác. Từ đó tạo dựng được thương hiệu dệt may Hoàng Dũng bền vững và được khách hàng toàn quốc và quốc tế công nhận, đưa vị thế cạnh tranh của công ty ngày càng vững chắc.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hiện nay, với dây truyền máy dệt thổi khí Tsudakoma và máy dệt kiếm hiện đại, sản lượng ước tính đạt khoảng 1.000.000m/tháng, cùng đội ngũ lãnh đạo và quản lý dày dặn kinh nghiệm trong ngành dệt may và những người cán bộ công nhân viên nhiệt tình với công việc, tràn đầy nhiệt huyết với ngành nghề, Hoàng Dũng nhận cung cấp và sản xuất đa dạng các chủng loại vải phục vụ cho may xuất khẩu và thời trang, phục vụ cho hàng bảo hộ lao động cao cấp, và các loại vải phục vụ cho may đồng phục học sinh, văn phòng cũng như các ngành công nghiệp nhẹ từ dạng mộc cho đến hoàn tất. Hơn nữa, với dây truyền nhuộm hoàn tất tiên tiến, Công ty dệt may Hoàng Dũng nhận gia công nhuộm và căng kim định hình đa dạng các chủng loại vải, màu sắc tùy theo nhu cầu của Quý khách hàng. Các công nghệ nhuộm tiên tiến nhất như nhuộm hoàn nguyên, nhuộm trực tiếp, nhuộm hoạt tính được công ty chúng tôi ứng dụng chắc chắn sẽ đáp ứng yêu cầu quý khách. Mới đây nhất, nhằm cung cấp dịch vụ khép kín tại Hoàng Dũng cho khách hàng, chúng tôi đã mạnh dạn đầu tư dây truyền in lô lưới trục xoay thương hiệu Stork. Bên cạnh đó, phòng thí nghiệm in và phòng thiết kế chế bản in cũng được chúng tôi đầu tư một cách đồng bộ. Với dây truyền in này, sẽ đáp ứng được nhu cầu in từ đơn giản nhất cho tới phức tạp nhất như in hoạt tính, in trực tiếp, in pigment. Sản lượng in dự tính có thể đáp ứng được tới 1 triệu mét vải in/tháng đối với tất cả các công nghệ và yêu cầu in.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Đến với chúng tôi, chắc chắn Quý khách hàng sẽ nhận được sự phục vụ tốt nhất. Sự hài lòng của Quý khách hàng chính là mục tiêu cao nhất của Hoàng Dũng. Chúng tôi luôn đề cao chữ tín trong kinh doanh, để có thể gây dựng được một thương hiệu mạnh, thương hiệu bền vững trên thương trường.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Không phải bao giờ Khách hàng cũng đúng&lt;/p&gt;&lt;p&gt;Nhưng với Chúng tôi, Khách hàng bao giờ cũng là trên hết!&lt;/p&gt;&lt;p&gt;Chúng tôi chân thành cảm ơn sự tin tưởng của Quý khách hàng!&lt;/p&gt;&lt;p&gt;I. Thông tin chung:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1.Tên Công ty: Công ty TNHH Dệt may Hoàng Dũng&lt;/p&gt;&lt;p&gt;Tên giao dịch: HOANG DUNG WEAVE - STITCH COMPANY LIMITED&lt;/p&gt;&lt;p&gt;Tên viết tắt: HDWSCO.,LTD&lt;/p&gt;&lt;p&gt;Số đăng ký kinh doanh: 0702000856 ngày 29/12/2004&lt;/p&gt;&lt;p&gt;Mã số thuế: 0600336474&lt;/p&gt;&lt;p&gt;Số tài khoản: 102010000364362 tại ngân hàng Công thương tỉnh Nam Định&lt;/p&gt;&lt;p&gt;Giám đốc: TRẦN THẾ DẦN&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;2. Địa chỉ trụ sở chính:&lt;/p&gt;&lt;p&gt;Lô C1 đường D4, N4 khu CN Hòa Xá tỉnh Nam Định&lt;/p&gt;&lt;p&gt;Điện thoại: (02283) 670 935&amp;nbsp; Fax: (0228) 3670 235&lt;/p&gt;&lt;p&gt;Di động: 0905.606.616 (Mr. Dũng)&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3. Ngành nghề kinh doanh:&lt;/p&gt;&lt;p&gt;- Sản xuất, xuất khẩu các mặt hàng vải phục vụ may mặc thời trang và hàng bảo hộ lao động.&lt;/p&gt;&lt;p&gt;- Mua bán hàng bông vải sợi các loại.&lt;/p&gt;&lt;p&gt;II.Diện tích:&amp;nbsp; &amp;nbsp; 16.000m2&lt;/p&gt;&lt;p&gt;A. Khu sản xuất:&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Mặt bằng:&amp;nbsp; &amp;nbsp; 2.125m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Diện tích một phân xưởng:&amp;nbsp; &amp;nbsp;3.500m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;3. Diện tích kho:&amp;nbsp; &amp;nbsp; 1.000m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;4. Diện tích khu vực hoàn tât:&amp;nbsp; &amp;nbsp;2.500m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;5. Diện tích đóng gói:&amp;nbsp; &amp;nbsp; 630m2&lt;/p&gt;&lt;p&gt;B. Khu văn phòng:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Mặt bằng:&amp;nbsp; &amp;nbsp; 3.354m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Diện tích khu hành chính:&amp;nbsp; &amp;nbsp;2.000m2&lt;/p&gt;&lt;p&gt;III. Ví trí:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Cảng biển gần nhất: Cảng Hải phòng Cách: 100km&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Sân bay gần nhất: Sân bay Nội bài Cách: 130km&lt;/p&gt;&lt;p&gt;&amp;nbsp;3. Trạm cứu hỏa gần nhất:&amp;nbsp; Cách&amp;nbsp; 1km&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hân hạnh được hợp tác cùng quý khách!&lt;/p&gt;','Về Thiên Nam','Về Thiên Nam','Về Thiên Nam, Thiên Nam'),(27,1,'About Us','&lt;p&gt;Công ty TNHH dệt may Hoàng Dũng tiền thân hoạt động sản xuất kinh doanh dưới mô hình tổ hợp dệt may ở làng nghề truyền thống Hòa Hậu - Lý Nhân - Hà Nam nổi tiếng miền Bắc từ những năm 1990, và chính thức thành lập tại thành phố Nam Định vào tháng 12/2004. Với hơn 20 năm kinh nghiệm trong nghề, cùng với sự thấu hiểu, gắn bó sâu sắc và sự nhiệt huyết với nghành, công ty dệt may Hoàng Dũng đã có những bước phát triển rất bền vững, và cũng đã rất mạnh dạn đầu tư trang thiết bị hiện đại từ Nhật Bản, Hàn Quốc và Châu Âu để ngày càng đáp ứng được nhu cầu ngày càng đa dạng, phức tạp của khách hàng và đối tác. Từ đó tạo dựng được thương hiệu dệt may Hoàng Dũng bền vững và được khách hàng toàn quốc và quốc tế công nhận, đưa vị thế cạnh tranh của công ty ngày càng vững chắc.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hiện nay, với dây truyền máy dệt thổi khí Tsudakoma và máy dệt kiếm hiện đại, sản lượng ước tính đạt khoảng 1.000.000m/tháng, cùng đội ngũ lãnh đạo và quản lý dày dặn kinh nghiệm trong ngành dệt may và những người cán bộ công nhân viên nhiệt tình với công việc, tràn đầy nhiệt huyết với ngành nghề, Hoàng Dũng nhận cung cấp và sản xuất đa dạng các chủng loại vải phục vụ cho may xuất khẩu và thời trang, phục vụ cho hàng bảo hộ lao động cao cấp, và các loại vải phục vụ cho may đồng phục học sinh, văn phòng cũng như các ngành công nghiệp nhẹ từ dạng mộc cho đến hoàn tất. Hơn nữa, với dây truyền nhuộm hoàn tất tiên tiến, Công ty dệt may Hoàng Dũng nhận gia công nhuộm và căng kim định hình đa dạng các chủng loại vải, màu sắc tùy theo nhu cầu của Quý khách hàng. Các công nghệ nhuộm tiên tiến nhất như nhuộm hoàn nguyên, nhuộm trực tiếp, nhuộm hoạt tính được công ty chúng tôi ứng dụng chắc chắn sẽ đáp ứng yêu cầu quý khách. Mới đây nhất, nhằm cung cấp dịch vụ khép kín tại Hoàng Dũng cho khách hàng, chúng tôi đã mạnh dạn đầu tư dây truyền in lô lưới trục xoay thương hiệu Stork. Bên cạnh đó, phòng thí nghiệm in và phòng thiết kế chế bản in cũng được chúng tôi đầu tư một cách đồng bộ. Với dây truyền in này, sẽ đáp ứng được nhu cầu in từ đơn giản nhất cho tới phức tạp nhất như in hoạt tính, in trực tiếp, in pigment. Sản lượng in dự tính có thể đáp ứng được tới 1 triệu mét vải in/tháng đối với tất cả các công nghệ và yêu cầu in.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Đến với chúng tôi, chắc chắn Quý khách hàng sẽ nhận được sự phục vụ tốt nhất. Sự hài lòng của Quý khách hàng chính là mục tiêu cao nhất của Hoàng Dũng. Chúng tôi luôn đề cao chữ tín trong kinh doanh, để có thể gây dựng được một thương hiệu mạnh, thương hiệu bền vững trên thương trường.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Không phải bao giờ Khách hàng cũng đúng&lt;/p&gt;&lt;p&gt;Nhưng với Chúng tôi, Khách hàng bao giờ cũng là trên hết!&lt;/p&gt;&lt;p&gt;Chúng tôi chân thành cảm ơn sự tin tưởng của Quý khách hàng!&lt;/p&gt;&lt;p&gt;I. Thông tin chung:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1.Tên Công ty: Công ty TNHH Dệt may Hoàng Dũng&lt;/p&gt;&lt;p&gt;Tên giao dịch: HOANG DUNG WEAVE - STITCH COMPANY LIMITED&lt;/p&gt;&lt;p&gt;Tên viết tắt: HDWSCO.,LTD&lt;/p&gt;&lt;p&gt;Số đăng ký kinh doanh: 0702000856 ngày 29/12/2004&lt;/p&gt;&lt;p&gt;Mã số thuế: 0600336474&lt;/p&gt;&lt;p&gt;Số tài khoản: 102010000364362 tại ngân hàng Công thương tỉnh Nam Định&lt;/p&gt;&lt;p&gt;Giám đốc: TRẦN THẾ DẦN&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;2. Địa chỉ trụ sở chính:&lt;/p&gt;&lt;p&gt;Lô C1 đường D4, N4 khu CN Hòa Xá tỉnh Nam Định&lt;/p&gt;&lt;p&gt;Điện thoại: (02283) 670 935&amp;nbsp; Fax: (0228) 3670 235&lt;/p&gt;&lt;p&gt;Di động: 0905.606.616 (Mr. Dũng)&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3. Ngành nghề kinh doanh:&lt;/p&gt;&lt;p&gt;- Sản xuất, xuất khẩu các mặt hàng vải phục vụ may mặc thời trang và hàng bảo hộ lao động.&lt;/p&gt;&lt;p&gt;- Mua bán hàng bông vải sợi các loại.&lt;/p&gt;&lt;p&gt;II.Diện tích:&amp;nbsp; &amp;nbsp; 16.000m2&lt;/p&gt;&lt;p&gt;A. Khu sản xuất:&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Mặt bằng:&amp;nbsp; &amp;nbsp; 2.125m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Diện tích một phân xưởng:&amp;nbsp; &amp;nbsp;3.500m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;3. Diện tích kho:&amp;nbsp; &amp;nbsp; 1.000m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;4. Diện tích khu vực hoàn tât:&amp;nbsp; &amp;nbsp;2.500m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;5. Diện tích đóng gói:&amp;nbsp; &amp;nbsp; 630m2&lt;/p&gt;&lt;p&gt;B. Khu văn phòng:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Mặt bằng:&amp;nbsp; &amp;nbsp; 3.354m2&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Diện tích khu hành chính:&amp;nbsp; &amp;nbsp;2.000m2&lt;/p&gt;&lt;p&gt;III. Ví trí:&lt;/p&gt;&lt;p&gt;&amp;nbsp;1. Cảng biển gần nhất: Cảng Hải phòng Cách: 100km&lt;/p&gt;&lt;p&gt;&amp;nbsp;2. Sân bay gần nhất: Sân bay Nội bài Cách: 130km&lt;/p&gt;&lt;p&gt;&amp;nbsp;3. Trạm cứu hỏa gần nhất:&amp;nbsp; Cách&amp;nbsp; 1km&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hân hạnh được hợp tác cùng quý khách!&lt;/p&gt;','About us','About us','About us'),(59,2,'Tầm nhìn sứ mệnh','&lt;p&gt;TẦM NHÌN&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Bằng bề dày kinh nghiệm trong ngành, sức mạnh của tập thể và khát khao cống hiến cho nền kinh tế Việt Nam, công ty dệt may Hoàng Dũng phấn đầu để trở thành một trong những công ty sản xuất hàng thời trang trung cấp hàng đầu trong lĩnh vực dệt may vào năm 2020. Luôn luôn là người tiên phong chứ không phải người theo đuổi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SỨ MỆNH&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;1. Đối với thị trường: Cung cấp các sản phẩm và dịch vụ ngành dệt may theo định hướng nhu cầu của thị trường. Mỗi sản phẩm, dịch vụ mà Hoàng Dũng đưa ra thị trường đều chứa đựng những thông điệp và niềm tâm huyết phát triển thị trường dệt may ngày một đa dạng và phong phú. Trở thành nhà sản xuất hàng may mặc thời trang uy tín trên thị trường.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2. Đối với khách hàng và đối tác: Luôn luôn đề cao tinh thần hợp tác, mục tiêu giữ trọn niềm tin để khi khách hàng và đối tác sẽ không phải quá lo lắng, bận tâm khi đến với Hoàng Dũng. Cam kết trở thành người bạn đáng tin cậy và luôn luôn gia tăng thêm giá trị thông qua sản phẩm và dịch vụ của mình cho khách hàng và đối tác.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3. Đối với nhân viên: Cam kết xây dựng một môi trường làm việc năng động, hiệu quả, sạch sẽ, an toàn và đảm bảo đáp ứng được điều kiện phát triển về thu nhập, cũng như các cơ hội phát triển nghề nghiệp một cách công bằng cho nhân viên.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4. Đối với xã hội: Hài hòa các lợi ích của doanh nghiệp với các lợi ích của cộng đồng và xã hội. Đóng góp tích cực qua các hoạt động, chương trình an sinh xã hội, hướng về cộng đồng để tạo dựng một xã hội ngày càng văn minh và hiện đại hơn.&amp;nbsp;&lt;/p&gt;','Tầm nhìn sứ mệnh','Tầm nhìn sứ mệnh Thiên Nam','Tầm nhìn sứ mệnh'),(59,1,'Our Value','&lt;p&gt;TẦM NHÌN&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Bằng bề dày kinh nghiệm trong ngành, sức mạnh của tập thể và khát khao cống hiến cho nền kinh tế Việt Nam, công ty dệt may Hoàng Dũng phấn đầu để trở thành một trong những công ty sản xuất hàng thời trang trung cấp hàng đầu trong lĩnh vực dệt may vào năm 2020. Luôn luôn là người tiên phong chứ không phải người theo đuổi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SỨ MỆNH&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;1. Đối với thị trường: Cung cấp các sản phẩm và dịch vụ ngành dệt may theo định hướng nhu cầu của thị trường. Mỗi sản phẩm, dịch vụ mà Hoàng Dũng đưa ra thị trường đều chứa đựng những thông điệp và niềm tâm huyết phát triển thị trường dệt may ngày một đa dạng và phong phú. Trở thành nhà sản xuất hàng may mặc thời trang uy tín trên thị trường.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2. Đối với khách hàng và đối tác: Luôn luôn đề cao tinh thần hợp tác, mục tiêu giữ trọn niềm tin để khi khách hàng và đối tác sẽ không phải quá lo lắng, bận tâm khi đến với Hoàng Dũng. Cam kết trở thành người bạn đáng tin cậy và luôn luôn gia tăng thêm giá trị thông qua sản phẩm và dịch vụ của mình cho khách hàng và đối tác.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3. Đối với nhân viên: Cam kết xây dựng một môi trường làm việc năng động, hiệu quả, sạch sẽ, an toàn và đảm bảo đáp ứng được điều kiện phát triển về thu nhập, cũng như các cơ hội phát triển nghề nghiệp một cách công bằng cho nhân viên.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4. Đối với xã hội: Hài hòa các lợi ích của doanh nghiệp với các lợi ích của cộng đồng và xã hội. Đóng góp tích cực qua các hoạt động, chương trình an sinh xã hội, hướng về cộng đồng để tạo dựng một xã hội ngày càng văn minh và hiện đại hơn.&amp;nbsp;&lt;/p&gt;','Our Value','Thien Nam Value','Thien Nam Value, Value'),(60,2,'Triết lý kinh doanh','&lt;p&gt;Công ty dệt may Thiên nam là một doanh nghiệp sản xuất thuần túy từ khi bắt đầu hoạt động trong nghề. Tuy nhiên, tập trung vào sản xuất vẫn chưa đủ, mà chúng tôi hiểu rằng chất lượng dịch vụ đóng vai trò vô cùng quan trọng trong việc phát triển bền vững và trên con đường tạo dựng một thương hiệu mạnh. Triết lý kinh doanh của Hoàng Dũng là lấy niềm tin của khách hàng là trung tâm và là mục tiêu để Hoàng Dũng phấn đầu để đạt trọn niềm tin đó. Chúng tôi hiểu rằng, có niềm tin là có tất cả.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lắng nghe - Hợp tác - Trách nhiệm - Uy tín&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Chúng tôi luôn luôn lắng nghe ý kiến phản hồi của khách hàng và đối tác để có thể tìm ra được một giải pháp tốt nhất để cùng hợp tác và phát triển. Luôn luôn có trách nhiệm cao với những gì mình cam kết là điểm cốt lõi để công ty Hoàng Dũng gìn giữ và phát huy được uy tín của mình trên thương trường trong suốt hơn 20 năm phát triển.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tất cả những điều trên hội tụ lại để giúp cho Thiên Nam có được niềm tin của khách hàng và đối tác trong mọi giao dịch, để có thể phát triển một cách bền vững nhất.&amp;nbsp;&lt;/p&gt;','Triết lý kinh doanh','Triết lý kinh doanh Thiên Nam','Triết lý kinh doanh'),(60,1,'Our Business ','&lt;p&gt;Công ty dệt may Hoàng Dũng là một doanh nghiệp sản xuất thuần túy từ khi bắt đầu hoạt động trong nghề. Tuy nhiên, tập trung vào sản xuất vẫn chưa đủ, mà chúng tôi hiểu rằng chất lượng dịch vụ đóng vai trò vô cùng quan trọng trong việc phát triển bền vững và trên con đường tạo dựng một thương hiệu mạnh. Triết lý kinh doanh của Hoàng Dũng là lấy niềm tin của khách hàng là trung tâm và là mục tiêu để Hoàng Dũng phấn đầu để đạt trọn niềm tin đó. Chúng tôi hiểu rằng, có niềm tin là có tất cả.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lắng nghe - Hợp tác - Trách nhiệm - Uy tín&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Chúng tôi luôn luôn lắng nghe ý kiến phản hồi của khách hàng và đối tác để có thể tìm ra được một giải pháp tốt nhất để cùng hợp tác và phát triển. Luôn luôn có trách nhiệm cao với những gì mình cam kết là điểm cốt lõi để công ty Hoàng Dũng gìn giữ và phát huy được uy tín của mình trên thương trường trong suốt hơn 20 năm phát triển.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tất cả những điều trên hội tụ lại để giúp cho Hoàng Dũng có được niềm tin của khách hàng và đối tác trong mọi giao dịch, để có thể phát triển một cách bền vững nhất.&amp;nbsp;&lt;/p&gt;','Our Business ','Our Business ','Our Business '),(61,2,'Hình ảnh','&lt;p&gt;Sau đây là một số hình ảnh giới thiệu về cán bộ lãnh đạo công ty cũng như hình ảnh về tổng thể toàn công ty, hệ thống máy móc, trang thiết bị.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Phòng làm việc chung của cán bộ văn phòng.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Head office - Tòa nhà điều hành&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Khuôn viên chung của công ty dệt may Hoàng Dũng&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Cổng chính của công ty&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Xưởng máy dệt&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Hình ảnh','Hình ảnh Thiên Nam','Hình ảnh Thiên Nam, Hình ảnh'),(61,1,'Image','&lt;p&gt;Sau đây là một số hình ảnh giới thiệu về cán bộ lãnh đạo công ty cũng như hình ảnh về tổng thể toàn công ty, hệ thống máy móc, trang thiết bị.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Phòng làm việc chung của cán bộ văn phòng.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Head office - Tòa nhà điều hành&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Khuôn viên chung của công ty dệt may Hoàng Dũng&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Cổng chính của công ty&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Xưởng máy dệt&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Image','Image about Thien Nam','Image about Thien Nam, Image');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_news`
--

DROP TABLE IF EXISTS `oc_category_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_news` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_news`
--

LOCK TABLES `oc_category_news` WRITE;
/*!40000 ALTER TABLE `oc_category_news` DISABLE KEYS */;
INSERT INTO `oc_category_news` VALUES (60,'data/Dreams world (54).jpg',0,1,0,5,1,'2016-05-15 20:07:21','2020-08-04 09:37:01'),(62,'data/13.png',0,0,1,0,1,'2016-08-24 23:50:25','2016-08-24 23:50:25'),(67,'',60,1,1,0,1,'2020-08-04 09:21:05','2020-08-04 09:42:19'),(68,'',60,1,1,1,1,'2020-08-04 09:22:03','2020-08-04 09:42:32');
/*!40000 ALTER TABLE `oc_category_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_news_description`
--

DROP TABLE IF EXISTS `oc_category_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_news_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_news_description`
--

LOCK TABLES `oc_category_news_description` WRITE;
/*!40000 ALTER TABLE `oc_category_news_description` DISABLE KEYS */;
INSERT INTO `oc_category_news_description` VALUES (60,2,'Tin tức','','Tin tức','Tin tức','Tin tức'),(62,2,'Đánh giá','','','',''),(62,5,'Review','','','',''),(67,2,'Tin ngành','&lt;p&gt;Tin ngành&lt;br&gt;&lt;/p&gt;','Tin ngành','Tin ngành','Tin ngành'),(67,1,'Industry News','&lt;p&gt;Industry News&lt;br&gt;&lt;/p&gt;','Industry News','Industry News','Industry News'),(68,2,'Tin Thiên Nam','&lt;p&gt;Tin Thiên Nam&lt;br&gt;&lt;/p&gt;','Tin Thiên Nam','Tin Thiên Nam','Tin Thiên Nam'),(68,1,'Our News','&lt;p&gt;Our News&lt;br&gt;&lt;/p&gt;','Our News','Our News','Our News'),(60,1,'Our News','','Our News','Our News','Our News');
/*!40000 ALTER TABLE `oc_category_news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_news_filter`
--

DROP TABLE IF EXISTS `oc_category_news_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_news_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_news_filter`
--

LOCK TABLES `oc_category_news_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_news_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_news_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_news_path`
--

DROP TABLE IF EXISTS `oc_category_news_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_news_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_news_path`
--

LOCK TABLES `oc_category_news_path` WRITE;
/*!40000 ALTER TABLE `oc_category_news_path` DISABLE KEYS */;
INSERT INTO `oc_category_news_path` VALUES (60,60,0),(62,62,0),(67,60,0),(67,67,1),(68,60,0),(68,68,1);
/*!40000 ALTER TABLE `oc_category_news_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (25,25,0),(30,30,0),(64,64,1),(64,33,0),(66,66,0),(65,65,0),(20,20,0),(27,20,0),(27,27,1),(70,70,1),(17,17,0),(33,33,0),(57,57,0),(59,20,0),(59,59,1),(60,20,0),(60,60,1),(61,20,0),(61,61,1),(70,68,0),(69,69,1),(69,68,0),(68,68,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (25,0,0),(66,0,0),(65,0,0),(64,0,0),(30,0,0),(33,0,0),(68,0,0),(57,0,0),(17,0,0),(20,0,0),(27,0,0),(59,0,0),(60,0,0),(61,0,0),(70,0,0),(69,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(20,0),(25,0),(27,0),(30,0),(33,0),(57,0),(59,0),(60,0),(61,0),(64,0),(65,0),(66,0),(68,0),(69,0),(70,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comment`
--

DROP TABLE IF EXISTS `oc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comment`
--

LOCK TABLES `oc_comment` WRITE;
/*!40000 ALTER TABLE `oc_comment` DISABLE KEYS */;
INSERT INTO `oc_comment` VALUES (1,58,0,'hoan nguyen van','thong tin them',4,1,'2016-08-13 15:43:45','2016-09-03 15:57:17','hfghfet@gmail.com'),(2,58,0,'Nguyễn Lý','Samsung tạm dừng bán Galaxy Note 7 vì lỗi pin',0,1,'2016-09-03 15:39:46','2016-09-03 15:56:50','info@adohan.com'),(3,58,0,'Windysky','Đánh giá Samsung tạm dừng bán Galaxy Note 7 vì lỗi pin',0,1,'2016-09-03 15:56:38','2016-11-06 15:03:28','info.vnw@gmail.com');
/*!40000 ALTER TABLE `oc_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.81379998,1,'2017-01-08 07:28:00'),(2,'US Dollar','USD','$','','2',0.00004440,1,'2017-01-08 11:30:39'),(3,'Euro','EUR','','€','2',0.94940001,1,'2017-01-08 07:28:00'),(4,'Việt Nam','VNĐ','','đ','',1.00000000,1,'2020-08-05 11:00:56');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_counter`
--

DROP TABLE IF EXISTS `oc_customer_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tjd` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Counter vistor customer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_counter`
--

LOCK TABLES `oc_customer_counter` WRITE;
/*!40000 ALTER TABLE `oc_customer_counter` DISABLE KEYS */;
INSERT INTO `oc_customer_counter` VALUES (1,'::1','0','http://localhost/upload/','2020-07-30'),(2,'::1','0','http://localhost/upload/','2020-07-30'),(3,'::1','0','http://localhost/upload/','2020-07-30'),(4,'::1','0','http://localhost/upload/','2020-07-30'),(5,'::1','0','http://localhost/upload/','2020-07-30'),(6,'::1','0','http://localhost/upload/','2020-07-30'),(7,'::1','0','http://localhost/upload/','2020-07-31'),(8,'::1','0','http://localhost/upload/gioi-thieu/ve-thien-nam','2020-07-31'),(9,'::1','0','http://localhost/upload/','2020-07-31'),(10,'::1','0','http://localhost/upload/','2020-07-31'),(11,'::1','0','http://localhost/upload/gioi-thieu/tam-nhin-su-menh','2020-07-31'),(12,'::1','0','http://localhost/upload/gioi-thieu','2020-07-31'),(13,'::1','0','http://localhost/upload/','2020-07-31'),(14,'::1','0','http://localhost/upload/','2020-07-31'),(15,'::1','0','http://localhost/upload/','2020-07-31'),(16,'::1','0','http://localhost/upload/','2020-08-03'),(17,'::1','0','http://localhost/upload/','2020-08-03'),(18,'::1','0','http://localhost/upload/','2020-08-03'),(19,'::1','0','http://localhost/upload/','2020-08-03'),(20,'::1','0','http://localhost/upload/','2020-08-03'),(21,'::1','0','http://localhost/upload/','2020-08-03'),(22,'::1','0','http://localhost/upload/','2020-08-03'),(23,'::1','0','http://localhost/upload/','2020-08-03'),(24,'::1','0','http://localhost/upload/','2020-08-03'),(25,'::1','0','http://localhost/upload/','2020-08-03'),(26,'::1','0','http://localhost/upload/','2020-08-03'),(27,'::1','0','http://localhost/upload/','2020-08-03'),(28,'::1','0','http://localhost/upload/','2020-08-03'),(29,'::1','0','http://localhost/upload/','2020-08-03'),(30,'::1','0','http://localhost/upload/','2020-08-03'),(31,'::1','0','http://localhost/upload/','2020-08-03'),(32,'::1','0','http://localhost/upload/','2020-08-03'),(33,'::1','0','http://localhost/upload/','2020-08-03'),(34,'::1','0','http://localhost/upload/','2020-08-03'),(35,'::1','0','http://localhost/upload/','2020-08-03'),(36,'::1','0','http://localhost/upload/','2020-08-03'),(37,'::1','0','http://localhost/upload/','2020-08-03'),(38,'::1','0','http://localhost/upload/','2020-08-03'),(39,'::1','0','http://localhost/upload/','2020-08-03'),(40,'::1','0','http://localhost/upload/','2020-08-03'),(41,'::1','0','http://localhost/upload/','2020-08-03'),(42,'::1','0','http://localhost/upload/','2020-08-03'),(43,'::1','0','http://localhost/upload/','2020-08-03'),(44,'::1','0','http://localhost/upload/','2020-08-03'),(45,'::1','0','http://localhost/upload/','2020-08-03'),(46,'::1','0','http://localhost/upload/','2020-08-03'),(47,'::1','0','http://localhost/upload/','2020-08-03'),(48,'::1','0','http://localhost/upload/','2020-08-03'),(49,'::1','0','http://localhost/upload/','2020-08-03'),(50,'::1','0','http://localhost/upload/','2020-08-03'),(51,'::1','0','http://localhost/upload/','2020-08-03'),(52,'::1','0','http://localhost/upload/','2020-08-03'),(53,'::1','0','http://localhost/upload/','2020-08-03'),(54,'::1','0','http://localhost/upload/','2020-08-03'),(55,'::1','0','http://localhost/upload/','2020-08-03'),(56,'::1','0','http://localhost/upload/','2020-08-03'),(57,'::1','0','http://localhost/upload/','2020-08-03'),(58,'::1','0','http://localhost/upload/','2020-08-03'),(59,'::1','0','http://localhost/upload/','2020-08-03'),(60,'::1','0','http://localhost/upload/','2020-08-03'),(61,'::1','0','http://localhost/upload/nhung-chiec-kinh-duoc-san-lung-hai-thang-dau-2017','2020-08-03'),(62,'::1','0','http://localhost/upload/','2020-08-03'),(63,'::1','0','http://localhost/upload/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017','2020-08-03'),(64,'::1','0','http://localhost/upload/tin-tuc','2020-08-03'),(65,'::1','0','http://localhost/upload/tin-tuc','2020-08-03'),(66,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-03'),(67,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-03'),(68,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-03'),(69,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-03'),(70,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-03'),(71,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-03'),(72,'::1','0','http://localhost/upload/','2020-08-04'),(73,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(74,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(75,'::1','0','http://localhost/upload/','2020-08-04'),(76,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(77,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(78,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(79,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(80,'::1','0','http://localhost/upload/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017','2020-08-04'),(81,'::1','0','http://localhost/upload/','2020-08-04'),(82,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(83,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(84,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(85,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(86,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(87,'::1','0','http://localhost/upload/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017','2020-08-04'),(88,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(89,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(90,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(91,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(92,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(93,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(94,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(95,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(96,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(97,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(98,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(99,'::1','0','http://localhost/upload/','2020-08-04'),(100,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(101,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(102,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(103,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(104,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(105,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(106,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(107,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(108,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(109,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(110,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(111,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(112,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(113,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(114,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(115,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(116,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(117,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(118,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(119,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(120,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(121,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(122,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(123,'::1','0','http://localhost/upload/','2020-08-04'),(124,'::1','0','http://localhost/upload/','2020-08-04'),(125,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(126,'::1','0','http://localhost/upload/','2020-08-04'),(127,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(128,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(129,'::1','0','http://localhost/upload/','2020-08-04'),(130,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(131,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(132,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(133,'::1','0','http://localhost/upload/tin-nganh','2020-08-04'),(134,'::1','0','http://localhost/upload/tin-nganh','2020-08-04'),(135,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(136,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(137,'::1','0','http://localhost/upload/index.php?route=information/information&amp;information_id=3','2020-08-04'),(138,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(139,'::1','0','http://localhost/upload/','2020-08-04'),(140,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(141,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(142,'::1','0','http://localhost/upload/','2020-08-04'),(143,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(144,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(145,'::1','0','http://localhost/upload/tin-tuc1','2020-08-04'),(146,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(147,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(148,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(149,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(150,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(151,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(152,'::1','0','http://localhost/upload/','2020-08-04'),(153,'::1','0','http://localhost/upload/index.php?route=product/category&amp;path=68','2020-08-04'),(154,'::1','0','http://localhost/upload/index.php?route=product/category&amp;path=68','2020-08-04'),(155,'::1','0','http://localhost/upload/index.php?route=product/category&amp;path=68','2020-08-04'),(156,'::1','0','http://localhost/upload/index.php?route=product/category&amp;path=68','2020-08-04'),(157,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(158,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(159,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(160,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(161,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(162,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(163,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(164,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(165,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(166,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(167,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(168,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(169,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(170,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(171,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(172,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(173,'::1','0','http://localhost/upload/tin-tuc','2020-08-04'),(174,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(175,'::1','0','http://localhost/upload/tin-tuc/tin-nganh','2020-08-04'),(176,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(177,'::1','0','http://localhost/upload/tin-tuc/tin-thien-nam','2020-08-04'),(178,'::1','0','http://localhost/upload/trang-chu','2020-08-04'),(179,'::1','0','http://localhost/upload/trang-chu','2020-08-04'),(180,'::1','0','http://localhost/upload/trang-chu','2020-08-04'),(181,'::1','0','http://localhost/upload/','2020-08-04'),(182,'::1','0','http://localhost/upload/common/home','2020-08-04'),(183,'::1','0','http://localhost/upload/','2020-08-04'),(184,'::1','0','http://localhost/upload/common/home','2020-08-04'),(185,'::1','0','http://localhost/upload/','2020-08-04'),(186,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(187,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(188,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(189,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(190,'::1','0','http://localhost/upload/','2020-08-04'),(191,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(192,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(193,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(194,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-04'),(195,'::1','0','http://localhost/upload/','2020-08-04'),(196,'::1','0','http://localhost/upload/gioi-thieu','2020-08-04'),(197,'::1','0','http://localhost/upload/','2020-08-04'),(198,'::1','0','http://localhost/upload/','2020-08-04'),(199,'::1','0','http://localhost/upload/','2020-08-04'),(200,'::1','0','http://localhost/upload/','2020-08-05'),(201,'::1','0','http://localhost/upload/','2020-08-05'),(202,'::1','0','http://localhost/upload/','2020-08-05'),(203,'::1','0','http://localhost/upload/','2020-08-05'),(204,'::1','0','http://localhost/upload/','2020-08-05'),(205,'::1','0','http://localhost/upload/','2020-08-05'),(206,'::1','0','http://localhost/upload/','2020-08-05'),(207,'::1','0','http://localhost/upload/','2020-08-05'),(208,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-05'),(209,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-05'),(210,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-05'),(211,'::1','0','http://localhost/upload/tin-tuc','2020-08-05'),(212,'::1','0','http://localhost/upload/','2020-08-05'),(213,'::1','0','http://localhost/upload/admin/view/image/flags/','2020-08-05'),(214,'::1','0','http://localhost/upload/','2020-08-05'),(215,'::1','0','http://localhost/upload/','2020-08-05'),(216,'::1','0','http://localhost/upload/','2020-08-05'),(217,'::1','0','http://localhost/upload/','2020-08-05'),(218,'10.65.62.55','0','http://10.65.48.84/upload/index.php','2020-08-06'),(219,'::1','0','http://localhost/upload/index.php','2020-08-06'),(220,'10.65.62.55','0','http://10.65.48.84/upload/','2020-08-06'),(221,'10.65.62.55','0','http://10.65.48.84/upload/index.php','2020-08-06'),(222,'10.65.62.55','0','http://10.65.48.84/upload/','2020-08-06'),(223,'10.65.62.55','0','http://10.65.48.84/upload/','2020-08-06'),(224,'::1','0','http://localhost/upload/index.php','2020-08-06'),(225,'::1','0','http://localhost/upload/index.php','2020-08-06'),(226,'::1','0','http://localhost/upload/index.php','2020-08-06'),(227,'::1','0','http://localhost/upload/index.php','2020-08-06'),(228,'::1','0','http://localhost/upload/index.php','2020-08-06'),(229,'::1','0','http://localhost/upload/index.php','2020-08-06'),(230,'::1','0','http://localhost/upload/index.php','2020-08-06'),(231,'::1','0','http://localhost/upload/index.php','2020-08-06'),(232,'::1','0','http://localhost/upload/index.php','2020-08-06'),(233,'::1','0','http://localhost/upload/index.php','2020-08-07'),(234,'::1','0','http://localhost/upload/index.php','2020-08-07'),(235,'::1','0','http://localhost/upload/index.php','2020-08-07'),(236,'::1','0','http://localhost/upload/index.php','2020-08-07'),(237,'::1','0','http://localhost/upload/index.php','2020-08-07'),(238,'::1','0','http://localhost/upload/index.php','2020-08-07'),(239,'::1','0','http://localhost/upload/index.php','2020-08-07'),(240,'::1','0','http://localhost/upload/index.php','2020-08-07'),(241,'::1','0','http://localhost/upload/index.php','2020-08-07'),(242,'::1','0','http://localhost/upload/index.php','2020-08-07'),(243,'::1','0','http://localhost/upload/index.php','2020-08-07'),(244,'::1','0','http://localhost/upload/index.php','2020-08-07'),(245,'::1','0','http://localhost/upload/index.php','2020-08-07'),(246,'::1','0','http://localhost/upload/index.php','2020-08-07'),(247,'::1','0','http://localhost/upload/index.php','2020-08-07'),(248,'::1','0','http://localhost/upload/index.php','2020-08-07'),(249,'::1','0','http://localhost/upload/index.php','2020-08-07'),(250,'::1','0','http://localhost/upload/index.php','2020-08-07'),(251,'::1','0','http://localhost/upload/index.php','2020-08-07'),(252,'::1','0','http://localhost/upload/index.php','2020-08-07'),(253,'::1','0','http://localhost/upload/index.php','2020-08-07'),(254,'::1','0','http://localhost/upload/index.php','2020-08-07'),(255,'::1','0','http://localhost/upload/index.php','2020-08-07'),(256,'::1','0','http://localhost/upload/index.php','2020-08-07'),(257,'::1','0','http://localhost/upload/index.php','2020-08-07'),(258,'::1','0','http://localhost/upload/index.php','2020-08-07'),(259,'::1','0','http://localhost/upload/index.php','2020-08-07'),(260,'::1','0','http://localhost/upload/index.php','2020-08-07'),(261,'::1','0','http://localhost/upload/index.php','2020-08-07'),(262,'::1','0','http://localhost/upload/index.php','2020-08-07'),(263,'::1','0','http://localhost/upload/index.php','2020-08-07'),(264,'::1','0','http://localhost/upload/index.php','2020-08-07'),(265,'::1','0','http://localhost/upload/index.php','2020-08-07'),(266,'::1','0','http://localhost/upload/index.php','2020-08-07'),(267,'::1','0','http://localhost/upload/index.php','2020-08-07'),(268,'::1','0','http://localhost/upload/index.php','2020-08-07'),(269,'::1','0','http://localhost/upload/index.php','2020-08-07'),(270,'::1','0','http://localhost/upload/index.php','2020-08-07'),(271,'::1','0','http://localhost/upload/index.php','2020-08-07'),(272,'::1','0','http://localhost/upload/index.php','2020-08-07'),(273,'::1','0','http://localhost/upload/index.php','2020-08-07'),(274,'::1','0','http://localhost/upload/index.php','2020-08-07'),(275,'::1','0','http://localhost/upload/index.php','2020-08-07'),(276,'::1','0','http://localhost/upload/index.php','2020-08-07'),(277,'::1','0','http://localhost/upload/index.php','2020-08-07'),(278,'::1','0','http://localhost/upload/index.php','2020-08-07'),(279,'::1','0','http://localhost/upload/index.php','2020-08-07'),(280,'::1','0','http://localhost/upload/index.php','2020-08-07'),(281,'::1','0','http://localhost/upload/index.php','2020-08-07'),(282,'::1','0','http://localhost/upload/index.php','2020-08-07'),(283,'::1','0','http://localhost/upload/index.php','2020-08-07'),(284,'::1','0','http://localhost/upload/index.php','2020-08-07'),(285,'::1','0','http://localhost/upload/index.php','2020-08-07'),(286,'::1','0','http://localhost/upload/index.php','2020-08-07'),(287,'::1','0','http://localhost/upload/index.php','2020-08-10'),(288,'::1','0','http://localhost/upload/index.php','2020-08-10'),(289,'::1','0','http://localhost/upload/index.php','2020-08-10'),(290,'::1','0','http://localhost/upload/index.php','2020-08-10'),(291,'::1','0','http://localhost/upload/index.php','2020-08-10'),(292,'::1','0','http://localhost/upload/index.php','2020-08-10'),(293,'::1','0','http://localhost/upload/index.php','2020-08-10'),(294,'::1','0','http://localhost/upload/index.php','2020-08-10'),(295,'::1','0','http://localhost/upload/index.php','2020-08-10'),(296,'::1','0','http://localhost/upload/index.php','2020-08-10'),(297,'::1','0','http://localhost/upload/index.php','2020-08-10'),(298,'::1','0','http://localhost/upload/index.php','2020-08-10'),(299,'::1','0','http://localhost/upload/index.php','2020-08-10'),(300,'::1','0','http://localhost/upload/index.php','2020-08-10'),(301,'::1','0','http://localhost/upload/index.php','2020-08-10'),(302,'::1','0','http://localhost/upload/index.php','2020-08-10'),(303,'::1','0','http://localhost/upload/index.php','2020-08-10'),(304,'::1','0','http://localhost/upload/index.php','2020-08-10'),(305,'::1','0','http://localhost/upload/index.php','2020-08-10'),(306,'::1','0','http://localhost/upload/index.php','2020-08-10'),(307,'::1','0','http://localhost/upload/index.php','2020-08-10'),(308,'::1','0','http://localhost/upload/index.php','2020-08-10'),(309,'::1','0','http://localhost/upload/index.php','2020-08-10'),(310,'::1','0','http://localhost/upload/index.php','2020-08-10'),(311,'::1','0','http://localhost/upload/index.php','2020-08-10'),(312,'::1','0','http://localhost/upload/index.php','2020-08-10'),(313,'::1','0','http://localhost/upload/index.php','2020-08-10'),(314,'::1','0','http://localhost/upload/index.php','2020-08-10'),(315,'::1','0','http://localhost/upload/index.php','2020-08-10'),(316,'::1','0','http://localhost/upload/index.php','2020-08-10'),(317,'::1','0','http://localhost/upload/index.php','2020-08-10'),(318,'::1','0','http://localhost/upload/index.php','2020-08-10'),(319,'::1','0','http://localhost/upload/index.php','2020-08-10'),(320,'::1','0','http://localhost/upload/index.php','2020-08-10'),(321,'::1','0','http://localhost/upload/index.php','2020-08-10'),(322,'::1','0','http://localhost/upload/index.php','2020-08-10'),(323,'::1','0','http://localhost/upload/index.php','2020-08-10'),(324,'::1','0','http://localhost/upload/index.php','2020-08-10'),(325,'::1','0','http://localhost/upload/index.php','2020-08-10'),(326,'::1','0','http://localhost/upload/index.php','2020-08-10'),(327,'::1','0','http://localhost/upload/index.php','2020-08-10'),(328,'::1','0','http://localhost/upload/index.php','2020-08-10'),(329,'::1','0','http://localhost/upload/index.php','2020-08-10'),(330,'::1','0','http://localhost/upload/index.php','2020-08-10'),(331,'::1','0','http://localhost/upload/index.php','2020-08-10'),(332,'::1','0','http://localhost/upload/index.php','2020-08-10'),(333,'::1','0','http://localhost/upload/index.php','2020-08-10'),(334,'::1','0','http://localhost/upload/index.php','2020-08-10'),(335,'::1','0','http://localhost/upload/index.php','2020-08-10'),(336,'::1','0','http://localhost/upload/index.php','2020-08-10'),(337,'::1','0','http://localhost/upload/index.php','2020-08-10'),(338,'::1','0','http://localhost/upload/index.php','2020-08-10'),(339,'::1','0','http://localhost/upload/index.php','2020-08-10'),(340,'::1','0','http://localhost/upload/index.php','2020-08-10'),(341,'::1','0','http://localhost/upload/index.php','2020-08-10'),(342,'::1','0','http://localhost/upload/index.php','2020-08-10'),(343,'::1','0','http://localhost/upload/index.php','2020-08-10'),(344,'::1','0','http://localhost/upload/index.php','2020-08-10'),(345,'::1','0','http://localhost/upload/index.php','2020-08-10'),(346,'::1','0','http://localhost/upload/index.php','2020-08-10'),(347,'::1','0','http://localhost/upload/index.php','2020-08-10'),(348,'::1','0','http://localhost/upload/index.php','2020-08-10'),(349,'::1','0','http://localhost/upload/index.php','2020-08-10'),(350,'::1','0','http://localhost/upload/index.php','2020-08-10'),(351,'::1','0','http://localhost/upload/index.php','2020-08-10'),(352,'::1','0','http://localhost/upload/index.php','2020-08-10'),(353,'::1','0','http://localhost/upload/index.php','2020-08-10'),(354,'::1','0','http://localhost/upload/index.php','2020-08-10'),(355,'::1','0','http://localhost/upload/index.php','2020-08-10'),(356,'::1','0','http://localhost/upload/index.php','2020-08-10'),(357,'::1','0','http://localhost/upload/index.php','2020-08-10'),(358,'::1','0','http://localhost/upload/index.php','2020-08-10'),(359,'::1','0','http://localhost/upload/index.php','2020-08-11'),(360,'::1','0','http://localhost/upload/index.php','2020-08-11'),(361,'::1','0','http://localhost/upload/index.php','2020-08-11'),(362,'::1','0','http://localhost/upload/index.php','2020-08-11'),(363,'::1','0','http://localhost/upload/index.php','2020-08-11'),(364,'::1','0','http://localhost/upload/index.php','2020-08-11'),(365,'::1','0','http://localhost/upload/index.php','2020-08-11'),(366,'::1','0','http://localhost/upload/index.php','2020-08-11'),(367,'::1','0','http://localhost/upload/index.php','2020-08-11'),(368,'::1','0','http://localhost/upload/index.php','2020-08-11'),(369,'::1','0','http://localhost/upload/index.php','2020-08-11'),(370,'::1','0','http://localhost/upload/index.php','2020-08-11'),(371,'::1','0','http://localhost/upload/index.php','2020-08-11'),(372,'::1','0','http://localhost/upload/index.php','2020-08-11'),(373,'::1','0','http://localhost/upload/index.php','2020-08-11'),(374,'::1','0','http://localhost/upload/index.php','2020-08-11'),(375,'::1','0','http://localhost/upload/index.php','2020-08-11'),(376,'::1','0','http://localhost/upload/index.php','2020-08-11'),(377,'::1','0','http://localhost/upload/index.php','2020-08-11'),(378,'::1','0','http://localhost/upload/index.php','2020-08-11'),(379,'::1','0','http://localhost/upload/index.php','2020-08-11'),(380,'::1','0','http://localhost/upload/index.php','2020-08-11'),(381,'::1','0','http://localhost/upload/index.php','2020-08-11'),(382,'::1','0','http://localhost/upload/index.php','2020-08-11'),(383,'::1','0','http://localhost/upload/index.php','2020-08-11'),(384,'::1','0','http://localhost/upload/index.php','2020-08-11'),(385,'::1','0','http://localhost/upload/index.php','2020-08-11'),(386,'::1','0','http://localhost/upload/index.php','2020-08-11'),(387,'::1','0','http://localhost/upload/index.php','2020-08-11'),(388,'::1','0','http://localhost/upload/index.php','2020-08-11'),(389,'::1','0','http://localhost/upload/index.php','2020-08-11'),(390,'::1','0','http://localhost/upload/index.php','2020-08-11'),(391,'::1','0','http://localhost/upload/index.php','2020-08-11'),(392,'::1','0','http://localhost/upload/index.php','2020-08-11'),(393,'::1','0','http://localhost/upload/index.php','2020-08-11'),(394,'::1','0','http://localhost/upload/index.php','2020-08-11'),(395,'::1','0','http://localhost/upload/index.php','2020-08-11'),(396,'::1','0','http://localhost/upload/index.php','2020-08-11'),(397,'::1','0','http://localhost/upload/index.php','2020-08-11'),(398,'::1','0','http://localhost/upload/index.php','2020-08-11'),(399,'::1','0','http://localhost/upload/index.php','2020-08-11'),(400,'::1','0','http://localhost/upload/index.php','2020-08-11'),(401,'::1','0','http://localhost/upload/index.php','2020-08-11'),(402,'::1','0','http://localhost/upload/index.php','2020-08-11'),(403,'::1','0','http://localhost/upload/index.php','2020-08-11'),(404,'::1','0','http://localhost/upload/index.php','2020-08-11'),(405,'::1','0','http://localhost/upload/index.php','2020-08-11'),(406,'::1','0','http://localhost/upload/index.php','2020-08-11'),(407,'::1','0','http://localhost/upload/index.php','2020-08-11'),(408,'::1','0','http://localhost/upload/index.php','2020-08-11'),(409,'::1','0','http://localhost/upload/index.php','2020-08-11'),(410,'::1','0','http://localhost/upload/index.php','2020-08-11'),(411,'::1','0','http://localhost/upload/index.php','2020-08-11'),(412,'::1','0','http://localhost/upload/index.php','2020-08-11'),(413,'::1','0','http://localhost/upload/index.php','2020-08-11'),(414,'::1','0','http://localhost/upload/index.php','2020-08-11'),(415,'::1','0','http://localhost/upload/index.php','2020-08-11'),(416,'::1','0','http://localhost/upload/index.php','2020-08-11'),(417,'::1','0','http://localhost/upload/index.php','2020-08-11'),(418,'::1','0','http://localhost/upload/index.php','2020-08-11'),(419,'::1','0','http://localhost/upload/index.php','2020-08-11'),(420,'::1','0','http://localhost/upload/index.php','2020-08-11'),(421,'::1','0','http://localhost/upload/index.php','2020-08-11'),(422,'::1','0','http://localhost/upload/index.php','2020-08-11'),(423,'::1','0','http://localhost/upload/index.php','2020-08-11'),(424,'::1','0','http://localhost/upload/index.php','2020-08-11'),(425,'::1','0','http://localhost/upload/index.php','2020-08-11'),(426,'::1','0','http://localhost/upload/index.php','2020-08-11'),(427,'::1','0','http://localhost/upload/index.php','2020-08-11'),(428,'::1','0','http://localhost/upload/index.php','2020-08-11'),(429,'::1','0','http://localhost/upload/index.php','2020-08-11'),(430,'::1','0','http://localhost/upload/index.php','2020-08-11'),(431,'::1','0','http://localhost/upload/index.php','2020-08-11'),(432,'::1','0','http://localhost/upload/index.php','2020-08-11'),(433,'::1','0','http://localhost/upload/index.php','2020-08-11'),(434,'::1','0','http://localhost/upload/index.php','2020-08-11'),(435,'::1','0','http://localhost/upload/index.php','2020-08-11'),(436,'::1','0','http://localhost/upload/index.php','2020-08-11'),(437,'::1','0','http://localhost/upload/index.php','2020-08-11'),(438,'::1','0','http://localhost/upload/index.php','2020-08-11'),(439,'::1','0','http://localhost/upload/index.php','2020-08-11'),(440,'::1','0','http://localhost/upload/index.php','2020-08-11'),(441,'::1','0','http://localhost/upload/index.php','2020-08-11'),(442,'::1','0','http://localhost/upload/index.php','2020-08-11'),(443,'::1','0','http://localhost/upload/index.php','2020-08-11'),(444,'::1','0','http://localhost/upload/index.php','2020-08-11'),(445,'::1','0','http://localhost/upload/index.php','2020-08-11'),(446,'::1','0','http://localhost/upload/index.php','2020-08-11'),(447,'::1','0','http://localhost/upload/index.php','2020-08-11'),(448,'::1','0','http://localhost/upload/index.php','2020-08-11'),(449,'::1','0','http://localhost/upload/index.php','2020-08-11'),(450,'::1','0','http://localhost/upload/index.php','2020-08-11'),(451,'::1','0','http://localhost/upload/index.php','2020-08-11'),(452,'::1','0','http://localhost/upload/index.php','2020-08-11'),(453,'::1','0','http://localhost/upload/index.php','2020-08-11'),(454,'::1','0','http://localhost/upload/index.php','2020-08-11'),(455,'::1','0','http://localhost/upload/index.php','2020-08-11'),(456,'::1','0','http://localhost/upload/index.php','2020-08-11'),(457,'::1','0','http://localhost/upload/index.php','2020-08-11'),(458,'::1','0','http://localhost/upload/index.php','2020-08-11'),(459,'::1','0','http://localhost/upload/index.php','2020-08-11'),(460,'::1','0','http://localhost/upload/index.php','2020-08-11'),(461,'::1','0','http://localhost/upload/index.php','2020-08-11'),(462,'::1','0','http://localhost/upload/index.php','2020-08-11'),(463,'::1','0','http://localhost/upload/index.php','2020-08-11'),(464,'::1','0','http://localhost/upload/index.php','2020-08-11'),(465,'::1','0','http://localhost/upload/index.php','2020-08-11'),(466,'::1','0','http://localhost/upload/index.php','2020-08-11'),(467,'::1','0','http://localhost/upload/index.php','2020-08-11'),(468,'::1','0','http://localhost/upload/index.php','2020-08-11'),(469,'::1','0','http://localhost/upload/index.php','2020-08-11'),(470,'::1','0','http://localhost/upload/index.php','2020-08-11'),(471,'::1','0','http://localhost/upload/index.php','2020-08-11'),(472,'::1','0','http://localhost/upload/index.php','2020-08-11'),(473,'::1','0','http://localhost/upload/index.php','2020-08-11'),(474,'::1','0','http://localhost/upload/index.php','2020-08-11'),(475,'::1','0','http://localhost/upload/index.php','2020-08-11'),(476,'::1','0','http://localhost/upload/index.php','2020-08-11'),(477,'::1','0','http://localhost/upload/index.php','2020-08-11'),(478,'::1','0','http://localhost/upload/index.php','2020-08-11'),(479,'::1','0','http://localhost/upload/index.php','2020-08-11'),(480,'::1','0','http://localhost/upload/index.php','2020-08-11'),(481,'::1','0','http://localhost/upload/index.php','2020-08-11'),(482,'::1','0','http://localhost/upload/index.php','2020-08-11'),(483,'::1','0','http://localhost/upload/index.php','2020-08-11'),(484,'::1','0','http://localhost/upload/index.php','2020-08-11'),(485,'::1','0','http://localhost/upload/index.php','2020-08-11'),(486,'::1','0','http://localhost/upload/','2020-08-11'),(487,'::1','0','http://localhost/upload/','2020-08-11'),(488,'::1','0','http://localhost/upload/','2020-08-11'),(489,'::1','0','http://localhost/upload/','2020-08-11'),(490,'::1','0','http://localhost/upload/','2020-08-11'),(491,'::1','0','http://localhost/upload/','2020-08-11'),(492,'::1','0','http://localhost/upload/','2020-08-12'),(493,'::1','0','http://localhost/upload/','2020-08-12'),(494,'::1','0','http://localhost/upload/','2020-08-12'),(495,'::1','0','http://localhost/upload/','2020-08-12'),(496,'::1','0','http://localhost/upload/','2020-08-12'),(497,'::1','0','http://localhost/upload/','2020-08-12'),(498,'::1','0','http://localhost/upload/','2020-08-12'),(499,'::1','0','http://localhost/upload/','2020-08-12'),(500,'::1','0','http://localhost/upload/','2020-08-12'),(501,'::1','0','http://localhost/upload/','2020-08-12'),(502,'::1','0','http://localhost/upload/','2020-08-12'),(503,'::1','0','http://localhost/upload/','2020-08-12'),(504,'::1','0','http://localhost/upload/','2020-08-12'),(505,'::1','0','http://localhost/upload/','2020-08-12');
/*!40000 ALTER TABLE `oc_customer_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,2,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
INSERT INTO `oc_customer_online` VALUES ('::1',0,'http://localhost/upload/','https://localhost/upload/index.php','2020-08-12 11:50:44');
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `thiennam`.`oc_customer_online_AFTER_INSERT` AFTER INSERT ON `oc_customer_online` FOR EACH ROW
BEGIN
	insert into oc_customer_counter(ip,customer_id,url,tjd) value (new.ip,new.customer_id,new.url,DATE_FORMAT(new.date_added, "%Y-%m-%d"));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(62,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(19,'module','slideshow'),(20,'theme','theme_default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(30,'module','combo_category'),(31,'module','latest'),(37,'module','why_choose'),(40,'module','news_latest'),(42,'captcha','basic_captcha'),(63,'module','change_color'),(47,'module','special'),(48,'module','featured'),(52,'module','html'),(61,'module','pavmegamenu');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,1,5,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (5,1,'Recruitment','&lt;p&gt;\r\n	Recruitment&lt;/p&gt;\r\n','Recruitment','Recruitment','Recruitment'),(3,1,'News','&lt;p&gt;\r\n	News&lt;/p&gt;\r\n','News','News','News'),(7,2,'Liên hệ','&lt;p&gt;Liên hệ&lt;br&gt;&lt;/p&gt;','Liên hệ','Liên hệ','Liên hệ'),(5,2,'Tuyển dụng','&lt;p&gt;\r\n	Tuyển dụng&lt;/p&gt;\r\n','Tuyển dụng','Tuyển dụng','Tuyển dụng'),(3,2,'Tin tức','&lt;p&gt;\r\n	Tin tức&lt;/p&gt;\r\n','Tin tức','Tin tức','Tin tức'),(6,2,'Giới thiệu','&lt;p&gt;\r\n	Giới thiệu&lt;/p&gt;\r\n','Giới thiệu','Giới thiệu','Giới thiệu'),(6,1,'About us','&lt;p&gt;\r\n	Giới thiệu&lt;/p&gt;\r\n','Giới thiệu','Giới thiệu','Giới thiệu'),(4,2,'Trang chủ','&lt;p&gt;Trang chủ Thiên Nam&lt;/p&gt;\r\n','Trang chủ','Trang chủ Thiên Nam','Trang chủ Thiên Nam'),(4,1,'Home page','&lt;p&gt;Home page&lt;br&gt;&lt;/p&gt;\r\n','Home page','Home page','Home page'),(7,1,'Contact us','&lt;p&gt;Contact us&lt;br&gt;&lt;/p&gt;','Contact us','Contact us','Contact us');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,0),(3,0,0),(5,0,0),(6,0,0),(7,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1),(2,'Việt Nam','vi-vn','vi_VN.UTF-8,vi_VN,vi-vn,vietnamese','','',2,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Trang chủ'),(2,'Sản phẩm'),(3,'Danh mục sản phẩm'),(4,'Mặc định'),(5,'Hãng sản xuất'),(6,'Tài khoản'),(7,'Thanh toán'),(8,'Liên hệ'),(9,'Sitemap'),(10,'Đại lý liên kết'),(11,'Thông tin'),(12,'Sản phẩm So sánh'),(13,'Tìm kiếm sản phẩm'),(14,'Sản phẩm khuyến mại'),(15,'Chi tiết tin tức'),(16,'Tags tin tức');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (131,3,'banner.31','column_left',1),(132,3,'banner.30','column_left',2),(142,13,'banner.31','column_left',1),(564,1,'banner.31','column_right',0),(137,2,'banner.31','column_left',1),(565,1,'banner.30','column_right',1),(563,1,'banner.42','content_bottom',4),(562,1,'featured.40','content_top',1),(561,1,'slideshow.27','content_top',0),(560,1,'news_latest.36','column_left',4),(559,1,'html.43','column_left',3),(556,1,'category','column_left',0),(557,1,'html.44','column_left',1),(558,1,'html.45','column_left',2);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (81,6,0,'account/%'),(82,10,0,'affiliate/%'),(73,3,0,'product/category'),(129,1,0,'common/home'),(76,2,0,'product/product'),(65,11,0,'information/information'),(61,7,0,'checkout/%'),(63,8,0,'information/contact'),(32,9,0,'information/sitemap'),(78,4,0,''),(77,5,0,'product/manufacturer'),(80,12,0,'product/compare'),(84,13,0,'product/search'),(79,14,0,'product/special'),(83,15,0,'news/news'),(85,16,0,'news/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in'),(1,2,'Centimeter','cm'),(2,2,'Millimeter','mm'),(3,2,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu`
--

DROP TABLE IF EXISTS `oc_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text,
  `icon` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu`
--

LOCK TABLES `oc_megamenu` WRITE;
/*!40000 ALTER TABLE `oc_megamenu` DISABLE KEYS */;
INSERT INTO `oc_megamenu` VALUES (41,'',1,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,1,0,'',NULL,0,'top','',NULL,'','',0,0,0,1,'',NULL),(42,'',1,0,NULL,NULL,NULL,NULL,'25','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(43,'',1,0,NULL,NULL,NULL,NULL,'57','1','category',2,1,'menu',0,1,0,3,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(44,'',1,0,NULL,NULL,NULL,NULL,'33','1','category',2,1,'menu',0,1,0,4,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(45,'',1,0,NULL,NULL,NULL,NULL,'30','1','category',2,1,'menu',0,1,0,5,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(46,'',1,0,NULL,NULL,NULL,NULL,'65','1','category',2,1,'menu',0,1,0,6,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(47,'',1,0,NULL,NULL,NULL,NULL,'17','1','category',2,1,'menu',0,1,0,7,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(48,'',1,0,NULL,NULL,NULL,NULL,'66','1','category',2,1,'menu',0,1,0,8,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(49,'',1,0,NULL,NULL,NULL,NULL,'20','1','category',2,1,'menu',0,1,0,9,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(50,'',1,0,NULL,NULL,NULL,NULL,'68','1','category',2,1,'menu',0,1,0,10,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(51,'',49,0,NULL,NULL,NULL,NULL,'27','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(52,'',49,0,NULL,NULL,NULL,NULL,'59','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(53,'',49,0,NULL,NULL,NULL,NULL,'61','1','category',2,1,'menu',0,1,0,3,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(54,'',49,0,NULL,NULL,NULL,NULL,'60','1','category',2,1,'menu',0,1,0,4,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(55,'',44,0,NULL,NULL,NULL,NULL,'64','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(56,'',50,0,NULL,NULL,NULL,NULL,'70','1','category',2,1,'menu',0,1,0,1,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(57,'',50,0,NULL,NULL,NULL,NULL,'69','1','category',2,1,'menu',0,1,0,2,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,1,NULL,NULL),(58,'',1,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,11,0,'',NULL,0,'top','',NULL,'','',0,0,0,1,'',NULL),(59,'',1,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,12,0,'',NULL,0,'top','',NULL,'','',0,0,0,1,'',NULL);
/*!40000 ALTER TABLE `oc_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_description`
--

DROP TABLE IF EXISTS `oc_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_description`
--

LOCK TABLES `oc_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_description` DISABLE KEYS */;
INSERT INTO `oc_megamenu_description` VALUES (41,1,'',''),(41,2,'',''),(42,1,'Recruitment',''),(42,2,'Tuyển dụng',''),(43,1,'Product',''),(43,2,'Sản phẩm',''),(44,1,'Download',''),(44,2,'Download',''),(45,1,'Home',''),(45,2,'Trang chủ',''),(46,1,'Contact',''),(46,2,'Liên hệ',''),(47,1,'Order',''),(47,2,'Đặt hàng',''),(48,1,'Thông tin giới thiệu',''),(48,2,'Thông tin giới thiệu',''),(49,1,'About Us',''),(49,2,'Giới thiệu',''),(50,1,'Our News',''),(50,2,'Tin tức',''),(51,1,'About Us',''),(51,2,'Về Thiên Nam',''),(52,1,'Our Value',''),(52,2,'Tầm nhìn sứ mệnh',''),(53,1,'Image',''),(53,2,'Hình ảnh',''),(54,1,'Our Business ',''),(54,2,'Triết lý kinh doanh',''),(55,1,'Business',''),(55,2,'Kinh doanh hiệu quả',''),(56,1,'Our News',''),(56,2,'Tin Thiên Nam',''),(57,1,'Industry News',''),(57,2,'Tin ngành',''),(58,1,'',''),(58,2,'',''),(59,1,'',''),(59,2,'','');
/*!40000 ALTER TABLE `oc_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_widgets`
--

DROP TABLE IF EXISTS `oc_megamenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_widgets`
--

LOCK TABLES `oc_megamenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_megamenu_widgets` VALUES (1,'Video Opencart Installation','video_code','a:1:{s:10:\"video_code\";s:168:\"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\";}',0),(2,'Demo HTML Sample','html','a:1:{s:4:\"html\";a:1:{i:1;s:275:\"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.\";}}',0),(3,'Products Latest','product_list','a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:5:\"limit\";s:2:\"12\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0);
/*!40000 ALTER TABLE `oc_megamenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu`
--

DROP TABLE IF EXISTS `oc_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu`
--

LOCK TABLES `oc_menu` WRITE;
/*!40000 ALTER TABLE `oc_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_description`
--

DROP TABLE IF EXISTS `oc_menu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_description`
--

LOCK TABLES `oc_menu_description` WRITE;
/*!40000 ALTER TABLE `oc_menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_module`
--

DROP TABLE IF EXISTS `oc_menu_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_module`
--

LOCK TABLES `oc_menu_module` WRITE;
/*!40000 ALTER TABLE `oc_menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Banner 2 - cột phải - Trang chủ','banner','{\"name\":\"Banner 2 - c\\u1ed9t ph\\u1ea3i - Trang ch\\u1ee7\",\"banner_id\":\"8\",\"width\":\"280\",\"height\":\"250\",\"status\":\"1\"}'),(27,'Slideshow - Trang chủ','slideshow','{\"name\":\"Slideshow - Trang ch\\u1ee7\",\"banner_id\":\"7\",\"width\":\"1170\",\"height\":\"516\",\"status\":\"1\"}'),(31,'Banner 1 - cột phải - Trang chủ','banner','{\"name\":\"Banner 1 - c\\u1ed9t ph\\u1ea3i - Trang ch\\u1ee7\",\"banner_id\":\"6\",\"width\":\"280\",\"height\":\"250\",\"status\":\"1\"}'),(32,'Hình ảnh','combo_category','{\"name\":\"H\\u00ecnh \\u1ea3nh\",\"combo_categories\":[\"61\"],\"limit\":\"18\",\"width\":\"170\",\"height\":\"170\",\"status\":\"1\"}'),(35,'4 lựa chọn cuối trang chủ','why_choose','{\"name\":\"4 l\\u1ef1a ch\\u1ecdn cu\\u1ed1i trang ch\\u1ee7\",\"status\":\"1\",\"banner_id\":\"10\",\"banner_width\":\"1210\",\"banner_height\":\"180\",\"module_description\":[{\"2\":{\"title\":\"T\\u01b0 v\\u1ea5n mi\\u1ec5n ph\\u00ed\"},\"1\":{\"title\":\"Free Consultation\"},\"icon\":\"cloud-upload\",\"sort_order\":\"1\",\"status\":\"1\"},{\"2\":{\"title\":\"Thanh to\\u00e1n khi nh\\u1eadn h\\u00e0ng\"},\"1\":{\"title\":\"Payment on delivery\"},\"icon\":\"bookmark\",\"sort_order\":\"2\",\"status\":\"1\"},{\"2\":{\"title\":\"Giao mi\\u1ec5n ph\\u00ed trong 10km\"},\"1\":{\"title\":\"Free delivery within 10km\"},\"icon\":\"gift\",\"sort_order\":\"3\",\"status\":\"1\"},{\"2\":{\"title\":\"\\u0110\\u1ea3m b\\u1ea3o ch\\u1ea5t l\\u01b0\\u1ee3ng\"},\"1\":{\"title\":\"Quality assurance\"},\"icon\":\"briefcase\",\"sort_order\":\"4\",\"status\":\"1\"}]}'),(36,'Tin tức mới nhất','news_latest','{\"name\":\"Tin t\\u1ee9c m\\u1edbi nh\\u1ea5t\",\"limit\":\"2\",\"width\":\"400\",\"height\":\"200\",\"status\":\"1\"}'),(37,'Triết lý kinh doanh','combo_category','{\"name\":\"Tri\\u1ebft l\\u00fd kinh doanh\",\"combo_categories\":[\"60\"],\"limit\":\"18\",\"width\":\"170\",\"height\":\"170\",\"status\":\"1\"}'),(38,'Về Thiên Nam','combo_category','{\"name\":\"V\\u1ec1 Thi\\u00ean Nam\",\"combo_categories\":[\"27\"],\"limit\":\"18\",\"width\":\"170\",\"height\":\"170\",\"status\":\"1\"}'),(39,'Khuyến mãi trong tuần','special','{\"name\":\"Khuy\\u1ebfn m\\u00e3i trong tu\\u1ea7n\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(40,'Sản phẩm nổi bật','featured','{\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\",\"product_name\":\"\",\"product\":[\"30\",\"47\",\"28\",\"41\",\"40\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(41,'Giới thiệu','combo_category','{\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"combo_categories\":[\"66\"],\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"0\"}'),(42,'Banner cuối trang','banner','{\"name\":\"Banner cu\\u1ed1i trang\",\"banner_id\":\"10\",\"width\":\"1170\",\"height\":\"214\",\"status\":\"1\"}'),(43,'Hỗ trợ trực tuyến','html','{\"name\":\"H\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn\",\"module_description\":{\"1\":{\"title\":\"H\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn\",\"description\":\"&lt;div class=&quot;block-content&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_1&quot;&gt;\\r\\n                        &lt;h4&gt;&lt;span class=&quot;fa fa-user&quot;&gt; T\\u01b0 v\\u1ea5n 1, Ms. Tuy\\u1ebft&lt;\\/span&gt;&lt;\\/h4&gt;\\r\\n                        &lt;h6&gt;&lt;span class=&quot;fa fa-phone&quot;&gt; Hotline 0912.812.090&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h6&gt;&lt;a href=&quot;http:\\/\\/zaloapp.com\\/qr\\/p\\/afdsti8lst2f&quot; rel=&quot;noopener&quot;&gt; &lt;span class=&quot;fa fa fa-comments&quot;&gt; Zalo&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_1&quot;&gt;\\r\\n                        &lt;h4&gt;&lt;span class=&quot;fa fa-user&quot;&gt; T\\u01b0 v\\u1ea5n 2, Mr. D\\u0169ng&lt;\\/span&gt;&lt;\\/h4&gt;\\r\\n                        &lt;h6&gt;&lt;span class=&quot;fa fa-phone&quot;&gt; Hotline 0905.606.616&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h6&gt;&lt;a href=&quot;http:\\/\\/zaloapp.com\\/qr\\/p\\/afdsti8lst2f&quot; rel=&quot;noopener&quot;&gt;&lt;span class=&quot;fa fa fa-comments&quot;&gt; Zalo&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sk&quot;&gt;\\r\\n\\t\\t\\t&lt;h6&gt;&lt;span class=&quot;fa fa fa-skype&quot; style=&quot;color:blue&quot;&gt; Skype: dungtt_hn&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_mail&quot;&gt;\\r\\n\\t\\t\\t&lt;h6&gt;&lt;span class=&quot;fa fa-envelope&quot; style=&quot;color:red&quot;&gt; info@detmayhoangdung.com.vn&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"},\"2\":{\"title\":\"H\\u1ed7 tr\\u1ee3 tr\\u1ef1c tuy\\u1ebfn\",\"description\":\"&lt;div class=&quot;block-content&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_1&quot;&gt;\\r\\n                        &lt;h4&gt;&lt;span class=&quot;fa fa-user&quot;&gt; T\\u01b0 v\\u1ea5n 1, Ms. Tuy\\u1ebft&lt;\\/span&gt;&lt;\\/h4&gt;\\r\\n                        &lt;h6&gt;&lt;span class=&quot;fa fa-phone&quot;&gt; Hotline 0912.812.090&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h6&gt;&lt;a href=&quot;http:\\/\\/zaloapp.com\\/qr\\/p\\/afdsti8lst2f&quot; rel=&quot;noopener&quot;&gt; &lt;span class=&quot;fa fa fa-comments&quot;&gt; Zalo&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_1&quot;&gt;\\r\\n                        &lt;h4&gt;&lt;span class=&quot;fa fa-user&quot;&gt; T\\u01b0 v\\u1ea5n 2, Mr. D\\u0169ng&lt;\\/span&gt;&lt;\\/h4&gt;\\r\\n                        &lt;h6&gt;&lt;span class=&quot;fa fa-phone&quot;&gt; Hotline 0905.606.616&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h6&gt;&lt;a href=&quot;http:\\/\\/zaloapp.com\\/qr\\/p\\/afdsti8lst2f&quot; rel=&quot;noopener&quot;&gt;&lt;span class=&quot;fa fa fa-comments&quot;&gt; Zalo&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sk&quot;&gt;\\r\\n\\t\\t\\t&lt;h6&gt;&lt;span class=&quot;fa fa fa-skype&quot; style=&quot;color:blue&quot;&gt; Skype: dungtt_hn&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;sp_mail&quot;&gt;\\r\\n\\t\\t\\t&lt;h6&gt;&lt;span class=&quot;fa fa-envelope&quot; style=&quot;color:red&quot;&gt; info@detmayhoangdung.com.vn&lt;\\/span&gt;&lt;\\/h6&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"}},\"status\":\"1\"}'),(44,'Like Facebook','html','{\"name\":\"Like Facebook\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;https:\\/\\/www.facebook.com\\/hoangdungtextile\\/&quot;&gt;&lt;img src=&quot;\\/\\/bizweb.dktcdn.net\\/thumb\\/medium\\/100\\/144\\/213\\/themes\\/189501\\/assets\\/facebook-banner.png?1595905697196&quot;&gt;&lt;\\/a&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;https:\\/\\/www.facebook.com\\/hoangdungtextile\\/&quot;&gt;&lt;img src=&quot;\\/\\/bizweb.dktcdn.net\\/thumb\\/medium\\/100\\/144\\/213\\/themes\\/189501\\/assets\\/facebook-banner.png?1595905697196&quot;&gt;&lt;\\/a&gt;\"}},\"status\":\"1\"}'),(45,'Download Catalog','html','{\"name\":\"Download Catalog\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;http:\\/\\/www.mediafire.com\\/file\\/5n3xx15885ggcwr\\/HoangDungTex_Catalogue_VN%20.pdf&quot;&gt;&lt;img src=&quot;\\/\\/bizweb.dktcdn.net\\/thumb\\/medium\\/100\\/144\\/213\\/themes\\/189501\\/assets\\/banner1.png?1595905697196&quot;&gt;&lt;\\/a&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;a href=&quot;http:\\/\\/www.mediafire.com\\/file\\/5n3xx15885ggcwr\\/HoangDungTex_Catalogue_VN%20.pdf&quot;&gt;&lt;img src=&quot;\\/\\/bizweb.dktcdn.net\\/thumb\\/medium\\/100\\/144\\/213\\/themes\\/189501\\/assets\\/banner1.png?1595905697196&quot;&gt;&lt;\\/a&gt;\"}},\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_news`
--

DROP TABLE IF EXISTS `oc_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_news`
--

LOCK TABLES `oc_news` WRITE;
/*!40000 ALTER TABLE `oc_news` DISABLE KEYS */;
INSERT INTO `oc_news` VALUES (54,'catalog/tin-tuc/1-3-1487177287285.png','2016-09-02',1,1,3,'2016-05-15 20:51:09','2017-02-26 18:50:35'),(55,'catalog/tin-tuc/photo-1-1487437489414.png','2016-08-26',1,1,2,'2016-05-15 20:52:36','2020-08-04 10:26:21'),(56,'catalog/tin-tuc/3-4-1487576433567.png','2016-08-19',1,1,1,'2016-05-15 20:53:48','2017-02-26 18:45:32'),(57,'catalog/tin-tuc/a4-1487877349412.png','2016-08-19',1,1,1,'2016-05-15 20:55:11','2017-02-26 18:41:11'),(58,'catalog/tin-tuc/2-2-1488088079423.png','2016-09-02',1,1,82,'2016-05-15 20:56:23','2017-02-26 18:38:32'),(59,'catalog/tin-tuc/7-1487912571_660x0.png','2016-09-02',1,1,42,'2016-05-15 20:57:47','2017-02-26 18:26:15'),(60,'catalog/tin-tuc/photo-4-1484618324625.jpg','2016-08-24',1,1,18,'2016-05-15 20:59:15','2020-08-04 09:41:35');
/*!40000 ALTER TABLE `oc_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_news_description`
--

DROP TABLE IF EXISTS `oc_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_news_description`
--

LOCK TABLES `oc_news_description` WRITE;
/*!40000 ALTER TABLE `oc_news_description` DISABLE KEYS */;
INSERT INTO `oc_news_description` VALUES (54,2,'5 lựa chọn màu sắc thay thế cho nàng công sở &quot;nghiện&quot; đồ đen','&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn có thể mặc đồ đen trong bất cứ hoàn cảnh nào. Chính vì biết chiều lòng các cô gái như vậy nên không ngạc nhiên chút nào khi đại đa số các quý cô ngày nay đều chọn màu đen làm bạn đồng hành lâu dài của mình trong tủ quần áo. Tuy nhiên đừng chỉ gói gọn hình ảnh của mình chỉ với một màu đen cơ bản. Những cô nàng &quot;nghiền&quot; màu đen như bạn vẫn có những lựa chọn khác thay thế mà vẫn đảm bảo đầy đủ sự thanh lịch và tinh tế cần thiết.&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Màu xanh navy&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Nếu như đen mang lại sự kinh điển đến truyền thống thì màu xanh navy vẫn là tông màu cơ bản nhưng lại thiên về sự trẻ trung, nền nã hơn cho người mặc. Tông màu xanh vừa trung tính vừa khá sạch sẽ, không quá nổi bật nhưng vẫn khiến bạn thật đặc biệt và thu hút. Luôn chứa đựng trong màu sắc là một sự tinh tế nhất định, màu xanh với các sắc độ khác nhau chinh phục mọi quý cô vốn dĩ luôn chuộng sắc đen kinh điển.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-1487177287295.jpg&quot; id=&quot;img_8e137140-f39e-11e6-af8b-61d52144282b&quot; w=&quot;736&quot; h=&quot;1104&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 1.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e137140-f39e-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1487177287295.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1487177287285.jpg&quot; id=&quot;img_8e66c160-f39e-11e6-af8b-61d52144282b&quot; w=&quot;2000&quot; h=&quot;1333&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 3.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e66c160-f39e-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487177287285.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-4-1487177287290.jpg&quot; id=&quot;img_8e95c0a0-f39e-11e6-a2b1-3d0c8270f085&quot; w=&quot;728&quot; h=&quot;1024&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 4.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e95c0a0-f39e-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-4-1487177287290.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1483979773069-1487179207658.jpg&quot; id=&quot;img_05d19960-f3a3-11e6-a2b1-3d0c8270f085&quot; w=&quot;650&quot; h=&quot;974&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 5.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;05d19960-f3a3-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1483979773069-1487179207658.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Màu camel/màu nâu&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn có thể xếp màu camel vào trong bảng màu trung tính cùng trắng, đen, xám… bởi lẽ ở màu camel, bạn không thấy ánh lên sắc màu nóng hay lạnh của một gam màu đơn tính thông thường. Có lẽ cũng vì vậy nên camel rất dễ để bạn kết hợp với bất cứ sắc màu nào khác trong palette màu tự nhiên. Nếu như bạn chưa thử mặc những áo sweater, quần skinny camel thì bạn có thể bắt đầu với một chiếc áo khoác camel cũng ổn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1487177983644.jpg&quot; id=&quot;img_2cc6ecd0-f3a0-11e6-a2b1-3d0c8270f085&quot; w=&quot;2048&quot; h=&quot;1394&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 6.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;2cc6ecd0-f3a0-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1487177983644.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-6-1487177983660.jpg&quot; id=&quot;img_2d22c870-f3a0-11e6-af8b-61d52144282b&quot; w=&quot;1000&quot; h=&quot;1179&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 7.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;2d22c870-f3a0-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-6-1487177983660.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-1487177865171.jpg&quot; id=&quot;img_e64f86e0-f39f-11e6-af8b-61d52144282b&quot; w=&quot;620&quot; h=&quot;938&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 8.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;e64f86e0-f39f-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1487177865171.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487177865164.jpg&quot; id=&quot;img_e6bcc7a0-f39f-11e6-9d4b-1df8ff47a61d&quot; w=&quot;620&quot; h=&quot;929&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 9.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;e6bcc7a0-f39f-11e6-9d4b-1df8ff47a61d&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487177865164.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Màu ghi xám&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Màu ghi không phô trương mà cũng không ảm đạm, sự mờ mờ nền nã ấy khiến người ta xiêu lòng bởi nét quyến rũ rất riêng, nữ tính nhẹ nhàng. Mặc dù từ lâu vốn dĩ nó là gam màu dành riêng cho mùa lạnh nhưng chính sự linh hoạt, biến hóa đến tài tình mà dần dần nó trở thành một gam màu cần có trong bất kỳ hoàn cảnh cũng như mùa thời trang nào trong năm. Với sự ổn định và tinh tế của mình, màu ghi xám dường như là một đại diện hoàn hảo, hiện thân cho một màu đen hoàn toàn mới.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/4-1487178153283.jpg&quot; id=&quot;img_92c093b0-f3a0-11e6-b433-e7450d5b93a9&quot; w=&quot;2592&quot; h=&quot;1728&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 10.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;92c093b0-f3a0-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1487178153283.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-2-1487178153273.png&quot; id=&quot;img_93148010-f3a0-11e6-9d4b-1df8ff47a61d&quot; w=&quot;630&quot; h=&quot;400&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 11.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;93148010-f3a0-11e6-9d4b-1df8ff47a61d&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-2-1487178153273.png&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-4-1487178227725.jpg&quot; id=&quot;img_be1198c0-f3a0-11e6-a2b1-3d0c8270f085&quot; w=&quot;600&quot; h=&quot;839&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 13.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;be1198c0-f3a0-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-4-1487178227725.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-5-1487178227736.jpg&quot; id=&quot;img_be54e350-f3a0-11e6-b433-e7450d5b93a9&quot; w=&quot;600&quot; h=&quot;400&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 14.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;be54e350-f3a0-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-5-1487178227736.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Màu xanh rêu/ xanh lá úa&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Màu xanh rêu không mới mẻ nhưng cũng vẫn còn xa lạ với đại đa số các cô gái vốn ưa thích những màu sắc cơ bản. Sắc xanh rêu được ưa chuộng và đưa vào bảng màu thay thế cho màu đen vì những lẽ: không đơn điệu như màu sắc trung tính mà bắt mắt nhẹ nhàng, nữ tính. Hơn thế nữa, với một chiếc áo khoác, blazer màu xanh rêu bạn sẽ thấy phong cách của mình được nhấn nhá lạ mắt hơn thường ngày. Bạn cũng có thể sử dụng các sắc độ khác nhau của màu xanh rêu để tạo ra một set đồ layering cuốn hút.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-1487178404068.jpg&quot; id=&quot;img_27966230-f3a1-11e6-af8b-61d52144282b&quot; w=&quot;600&quot; h=&quot;902&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 15.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 15.&quot; rel=&quot;lightbox&quot; photoid=&quot;27966230-f3a1-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-1487178404068.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/batch-lho-3153-1486828347362-1487178404075.jpg&quot; id=&quot;img_28072560-f3a1-11e6-a2b1-3d0c8270f085&quot; w=&quot;650&quot; h=&quot;975&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 16.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 16.&quot; rel=&quot;lightbox&quot; photoid=&quot;28072560-f3a1-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/batch-lho-3153-1486828347362-1487178404075.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-5-1487178498139.jpg&quot; id=&quot;img_5f345c10-f3a1-11e6-b433-e7450d5b93a9&quot; w=&quot;564&quot; h=&quot;848&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 18.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 18.&quot; rel=&quot;lightbox&quot; photoid=&quot;5f345c10-f3a1-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-5-1487178498139.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. Màu đỏ rượu&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Hay có cái tên mỹ miều vẫn được các fashionista ưa gọi là burgundy. Sắc đỏ không hề tươi mà trầm sâu như một nốt nhạc buồn. Nhưng chính vì sự khiêm nhường không quá chói lọi này của màu đỏ rượu mà dường như các icon thời trang đều dành dụm một vị trí trong tủ đồ của mình cho sắc màu này. Từ những chiếc áo, quần cho đến phụ kiện như khăn, giày, túi, màu đỏ rượu đều có thể biến hoá đẹp đẽ cho bạn nhiều lựa chọn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-1487179053780.jpg&quot; id=&quot;img_ab571000-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;640&quot; h=&quot;960&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 19.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 19.&quot; rel=&quot;lightbox&quot; photoid=&quot;ab571000-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-1487179053780.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-2-1487179053758.jpg&quot; id=&quot;img_ab8a2df0-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;600&quot; h=&quot;901&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 20.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 20.&quot; rel=&quot;lightbox&quot; photoid=&quot;ab8a2df0-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-2-1487179053758.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/6-4-1487179053766.jpg&quot; id=&quot;img_abbef990-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;960&quot; h=&quot;960&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 21.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 21.&quot; rel=&quot;lightbox&quot; photoid=&quot;abbef990-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-4-1487179053766.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/6-5-1487179053772.jpg&quot; id=&quot;img_abf46170-f3a2-11e6-b433-e7450d5b93a9&quot; w=&quot;790&quot; h=&quot;535&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 22.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 22.&quot; rel=&quot;lightbox&quot; photoid=&quot;abf46170-f3a2-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-5-1487179053772.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','Bộ bàn ghế, mô hình','','',''),(55,1,'Then warm up, she let the &quot;purge&quot; their winter closet go!','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Kết thúc chuỗi ngày mưa phùn ẩm ướt khó chịu là lúc thời tiết chuyển mùa bắt đầu có những thay đổi rõ rệt nhất. Bỏ lại sau lưng những ngày tháng lạnh lẽo, buốt giá của mùa đông, ta tận hưởng sự ấm áp, ngọt ngào của tiết trời những ngày sang xuân. Thời trang giao mùa cũng vì thế mà có những thay đổi kịp thời để phù hợp với thời tiết cũng như xu hướng của mùa mới đang bắt đầu. Hãy cùng chúng tôi liệt kê những món đồ cần cất đi để dành cho mùa đông sau và những món nên giữ lại cho tủ đồ những ngày ấm áp này bạn nhé!&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Đồ giả lông thú&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Không còn cái lạnh đến buốt giá của mùa đông nữa, thời điểm giao mùa sang xuân, thời tiết đã dần trở nên ấm áp hơn rất nhiều, những món đồ giả lông thú - item độc quyền của ngày lạnh, sẽ không còn phù hợp với thời tiết như bây giờ nữa. Tuy giả lông thú luôn là chất liệu làm nên sự sang trọng, đẳng cấp cho của người mặc, nhưng chắc chắn bạn sẽ không muốn mình phải chịu cảnh oi bức trong những bộ cánh này phải không?&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-1-1487437489414.jpg&quot; id=&quot;img_5f0d2700-f5fc-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;398&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 1.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;5f0d2700-f5fc-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-1-1487437489414.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: Chất liệu da lộn&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Chất vải mềm mại với vẻ ngoài sang trọng nhưng vẫn rất gần gũi, mang lại vẻ cá tính đặc biệt cho người mặc, chất liệu da lộn biến hóa khôn lường để trở thành nguồn cảm hứng bất tận của các nhà mốt danh tiếng bất kỳ mùa nào trong năm. Và nếu bạn đang sở hữu một món đồ da lộn cho dù là áo khoác, váy, giày hay bất kỳ thứ gì thì thật là một điều may mắn, hãy giữ lại chúng và tiếp tục diện nhé.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-2-1487437493108.jpg&quot; id=&quot;img_61327800-f5fc-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 2.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;61327800-f5fc-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-2-1487437493108.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-1487438721936.jpg&quot; id=&quot;img_3d3f4100-f5ff-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 3.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;3d3f4100-f5ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1487438721936.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Những thiết kế khăn choàng dày và to bản&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù vẫn rất yêu thích vẻ cá tính và khả năng tạo dựng phong cách của những thiết kế khăn blanket, khăn len, khăn choàng to bản… nhưng thực sự với thời tiết như bây giờ chúng đã không còn phù hợp nữa rồi. Hãy tạm cất đi, để dành đến mùa đông sau diện lại vậy nhé!&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-1487438989957.jpg&quot; id=&quot;img_dce7c060-f5ff-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 4.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;dce7c060-f5ff-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1487438989957.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: những chiếc khăn lụa mỏng nhẹ&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những chiếc khăn lụa mỏng nhẹ, họa tiết nổi bật hay trơn màu nhã nhặn ngày càng được các tín đồ ưu chuộng và ứng dụng nhiều hơn cả. Sự mỏng nhẹ bay bổng của chất vải lụa mềm mại rất thích hợp với tiết trời ngày mát mẻ lãng mạn. Thêm vào đó, chiếc khăn không chỉ được sử dụng để quàng qua cổ một cách đơn thuần, nó còn trở thành những điểm nhấn thu hút trên cổ tay, thắt lưng, túi xách... nâng tầm cả set đồ và phong cách của bạn chỉ trong nháy mắt.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487439521441.jpg&quot; id=&quot;img_19c463c0-f601-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;806&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 5.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;19c463c0-f601-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487439521441.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-3-1487439521460.jpg&quot; id=&quot;img_1a1bd290-f601-11e6-af71-f51b3aae1f33&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 6.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;1a1bd290-f601-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-3-1487439521460.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Boots cao trên gối&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù là một trong những item &quot;đinh&quot; của mùa trước, thật khó để có thể cất chúng vào tận sâu trong tủ đồ nhưng đến thời điểm này bạn cần phải chấp nhận một sự thật rằng những đôi boots cao trên gối đã không còn phù hợp nữa.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-1487439991978.jpg&quot; id=&quot;img_31e30d70-f602-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 7.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;31e30d70-f602-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1487439991978.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: Một đôi ankle boot cut-out&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Một đôi ankle boot với kiểu dáng cut-out không chỉ tạo dựng hình ảnh cá tính và thời thượng cho người dùng, chúng còn mang sự thoải mái, thoáng mát tối đa nhất là khi bạn không đi tất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-2-1487439941333.jpg&quot; id=&quot;img_14ad2d80-f602-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 8.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;14ad2d80-f602-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-2-1487439941333.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Những thiết kế áo khoác dày cộp&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù thời tiết vẫn còn vương vấn chút gió nhưng bạn cũng không nhất thiết phải khoác chiếc áo dày cộp của mùa đông.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-1487440800111.jpg&quot; id=&quot;img_153f9790-f604-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;744&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 9.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;153f9790-f604-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-1487440800111.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên giữ: Một chiếc áo khoác mỏng&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Thay vì những thiết kế áo khoác dày, thì những thiết kế áo vừa phải, nhẹ nhàng sẽ phù hợp hơn với thời tiết ấm áp như bây giờ. Một chiếc áo cardigan sẽ không bao giờ khiến bạn thất vọng, nó có thể mix với mọi món đồ nào có mặt trong tủ đồ của bạn từ sơ mi cá tính, jeans rách bụi bặm đến cả những thiết kế váy áo điệu đà, nữ tính… và đương nhiên bạn chẳng cần đến 1 phút để suy nghĩ xem chúng có hợp với nhau không.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-3-1487440800104.jpg&quot; id=&quot;img_15e21920-f604-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 10.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;15e21920-f604-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-3-1487440800104.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(55,2,'Ấm lên rồi, các nàng hãy &quot;thanh lọc&quot; tủ đồ đông của mình đi thôi!','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Kết thúc chuỗi ngày mưa phùn ẩm ướt khó chịu là lúc thời tiết chuyển mùa bắt đầu có những thay đổi rõ rệt nhất. Bỏ lại sau lưng những ngày tháng lạnh lẽo, buốt giá của mùa đông, ta tận hưởng sự ấm áp, ngọt ngào của tiết trời những ngày sang xuân. Thời trang giao mùa cũng vì thế mà có những thay đổi kịp thời để phù hợp với thời tiết cũng như xu hướng của mùa mới đang bắt đầu. Hãy cùng chúng tôi liệt kê những món đồ cần cất đi để dành cho mùa đông sau và những món nên giữ lại cho tủ đồ những ngày ấm áp này bạn nhé!&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Đồ giả lông thú&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Không còn cái lạnh đến buốt giá của mùa đông nữa, thời điểm giao mùa sang xuân, thời tiết đã dần trở nên ấm áp hơn rất nhiều, những món đồ giả lông thú - item độc quyền của ngày lạnh, sẽ không còn phù hợp với thời tiết như bây giờ nữa. Tuy giả lông thú luôn là chất liệu làm nên sự sang trọng, đẳng cấp cho của người mặc, nhưng chắc chắn bạn sẽ không muốn mình phải chịu cảnh oi bức trong những bộ cánh này phải không?&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-1-1487437489414.jpg&quot; id=&quot;img_5f0d2700-f5fc-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;398&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 1.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;5f0d2700-f5fc-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-1-1487437489414.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: Chất liệu da lộn&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Chất vải mềm mại với vẻ ngoài sang trọng nhưng vẫn rất gần gũi, mang lại vẻ cá tính đặc biệt cho người mặc, chất liệu da lộn biến hóa khôn lường để trở thành nguồn cảm hứng bất tận của các nhà mốt danh tiếng bất kỳ mùa nào trong năm. Và nếu bạn đang sở hữu một món đồ da lộn cho dù là áo khoác, váy, giày hay bất kỳ thứ gì thì thật là một điều may mắn, hãy giữ lại chúng và tiếp tục diện nhé.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-2-1487437493108.jpg&quot; id=&quot;img_61327800-f5fc-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 2.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;61327800-f5fc-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-2-1487437493108.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-1487438721936.jpg&quot; id=&quot;img_3d3f4100-f5ff-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 3.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;3d3f4100-f5ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1487438721936.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Những thiết kế khăn choàng dày và to bản&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù vẫn rất yêu thích vẻ cá tính và khả năng tạo dựng phong cách của những thiết kế khăn blanket, khăn len, khăn choàng to bản… nhưng thực sự với thời tiết như bây giờ chúng đã không còn phù hợp nữa rồi. Hãy tạm cất đi, để dành đến mùa đông sau diện lại vậy nhé!&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-1487438989957.jpg&quot; id=&quot;img_dce7c060-f5ff-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 4.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;dce7c060-f5ff-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1487438989957.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: những chiếc khăn lụa mỏng nhẹ&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những chiếc khăn lụa mỏng nhẹ, họa tiết nổi bật hay trơn màu nhã nhặn ngày càng được các tín đồ ưu chuộng và ứng dụng nhiều hơn cả. Sự mỏng nhẹ bay bổng của chất vải lụa mềm mại rất thích hợp với tiết trời ngày mát mẻ lãng mạn. Thêm vào đó, chiếc khăn không chỉ được sử dụng để quàng qua cổ một cách đơn thuần, nó còn trở thành những điểm nhấn thu hút trên cổ tay, thắt lưng, túi xách... nâng tầm cả set đồ và phong cách của bạn chỉ trong nháy mắt.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487439521441.jpg&quot; id=&quot;img_19c463c0-f601-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;806&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 5.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;19c463c0-f601-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487439521441.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-3-1487439521460.jpg&quot; id=&quot;img_1a1bd290-f601-11e6-af71-f51b3aae1f33&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 6.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;1a1bd290-f601-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-3-1487439521460.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Boots cao trên gối&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù là một trong những item &quot;đinh&quot; của mùa trước, thật khó để có thể cất chúng vào tận sâu trong tủ đồ nhưng đến thời điểm này bạn cần phải chấp nhận một sự thật rằng những đôi boots cao trên gối đã không còn phù hợp nữa.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-1487439991978.jpg&quot; id=&quot;img_31e30d70-f602-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 7.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;31e30d70-f602-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1487439991978.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên có: Một đôi ankle boot cut-out&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Một đôi ankle boot với kiểu dáng cut-out không chỉ tạo dựng hình ảnh cá tính và thời thượng cho người dùng, chúng còn mang sự thoải mái, thoáng mát tối đa nhất là khi bạn không đi tất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-2-1487439941333.jpg&quot; id=&quot;img_14ad2d80-f602-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 8.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;14ad2d80-f602-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-2-1487439941333.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cất đi: Những thiết kế áo khoác dày cộp&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Mặc dù thời tiết vẫn còn vương vấn chút gió nhưng bạn cũng không nhất thiết phải khoác chiếc áo dày cộp của mùa đông.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-1487440800111.jpg&quot; id=&quot;img_153f9790-f604-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;744&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 9.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;153f9790-f604-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-1487440800111.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nên giữ: Một chiếc áo khoác mỏng&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Thay vì những thiết kế áo khoác dày, thì những thiết kế áo vừa phải, nhẹ nhàng sẽ phù hợp hơn với thời tiết ấm áp như bây giờ. Một chiếc áo cardigan sẽ không bao giờ khiến bạn thất vọng, nó có thể mix với mọi món đồ nào có mặt trong tủ đồ của bạn từ sơ mi cá tính, jeans rách bụi bặm đến cả những thiết kế váy áo điệu đà, nữ tính… và đương nhiên bạn chẳng cần đến 1 phút để suy nghĩ xem chúng có hợp với nhau không.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-3-1487440800104.jpg&quot; id=&quot;img_15e21920-f604-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 10.&quot; title=&quot;Ấm lên rồi đó, thanh lọc tủ đồ đông của mình đi thôi! - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;15e21920-f604-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-3-1487440800104.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;\r\n','Bộ bàn ghế, mô hình','','',''),(57,2,'7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Đơn giản một điều, những đợt gió lạnh nếu muốn len lỏi và khiến bạn cản thấy rùng mình thì việc nó phải vượt qua nhiều lớp áo quần sẽ khó khăn hơn nhiều. Chính vì vậy, không gì hoàn hảo hơn việc nhấn nhá và ngẫu hứng kết hợp những set layer đầy cá tính cho phong cách của mình những ngày lạnh giá.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-1-1487876888892.jpg&quot; id=&quot;img_549e8040-f9fb-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;600&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 1.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;549e8040-f9fb-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-1-1487876888892.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Cá tính và phong cách là thế nhưng mix đồ nhiều lớp dễ khiến người mặc trở nên xuề xòa, rườm rà nếu không lựa chọn và kết hợp cẩn thận. Layer cũng có những nguyên tắc riêng mà người mặc phải tuân theo để có một bộ trang phục thật hoàn chỉnh với phong cách này.&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 1: Mặc áo mỏng đầu tiên&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Chúng ta nên ưu tiên những trang phục có chất vải mỏng và ôm sát cơ thể như áo thun, áo sát nách, áo giữ nhiệt, áo sơmi... Chú ý là không nên mặc chất liệu cotton vào mùa đông vì chất vải này có khả năng thấm hút mồ hôi tốt nên có thể khiến bạn bị cảm lạnh. Những chiếc áo mỏng sẽ tạo sự thoải mái và giúp bạn dễ dàng mặc những chiếc áo tiếp theo như áo len, áo khoác nhung, hoặc áo khoác da.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-3-1487877226963.jpg&quot; id=&quot;img_1e295980-f9fc-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;744&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 2.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;1e295980-f9fc-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487877226963.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-2-1487877149538.jpg&quot; id=&quot;img_f0f4ee70-f9fb-11e6-9824-2dfbc8fe5943&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 3.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;f0f4ee70-f9fb-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-2-1487877149538.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 2: Lựa chọn các trang phục cần thiết&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Việc kết hợp của bạn trong những ngày lạnh luôn cần đáp ứng hai yếu tố, đó là: &quot;thời trang&quot; và &quot;thời tiết&quot;. Thế nên đừng chọn 1 trong 2 vì như vậy sẽ không ổn chút nào. Có rất nhiều loại quần áo để bạn giữ ấm và hãy chọn cho mình những sản phẩm phù hợp với sở thích và phong cách thời trang của riêng mình.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-6-1487876891245.jpg&quot; id=&quot;img_56716b80-f9fb-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 4.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;56716b80-f9fb-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-6-1487876891245.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-7-1487876891251.jpg&quot; id=&quot;img_575cdcf0-f9fb-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 5.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;575cdcf0-f9fb-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-7-1487876891251.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 3: Xác định các layer&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn không nên mặc quá 3 lớp quần áo trong một bộ trang phục layer. Vậy nên, hãy lựa chọn các loại trang phục một cách khéo léo và hợp lý. Chúng ta không thể mang cả tủ đồ lên bộ trang phục của mình được.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a2-1487878070432.jpg&quot; id=&quot;img_154631b0-f9fe-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 6.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;154631b0-f9fe-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a2-1487878070432.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a5-1487878070441.jpg&quot; id=&quot;img_15964d80-f9fe-11e6-9824-2dfbc8fe5943&quot; w=&quot;564&quot; h=&quot;626&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 7.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;15964d80-f9fe-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a5-1487878070441.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 4: Phong cách tối giản&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Vì phải sử dụng cùng lúc nhiều loại quần, áo nên việc giữ được sự sang trọng và lịch sự trong tổng thể bộ trang phục là điều hết sức quan trọng. Trong phong cách layer thì sự đơn giản chính là lựa chọn tốt nhất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-10-1487876891266.jpg&quot; id=&quot;img_575f7500-f9fb-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 8.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;575f7500-f9fb-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-10-1487876891266.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-2-1487878631737.jpg&quot; id=&quot;img_64d27670-f9ff-11e6-af71-f51b3aae1f33&quot; w=&quot;640&quot; h=&quot;457&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 9.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;64d27670-f9ff-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-2-1487878631737.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a3-1487878352942.jpg&quot; id=&quot;img_bd6ee670-f9fe-11e6-af71-f51b3aae1f33&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 10.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;bd6ee670-f9fe-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a3-1487878352942.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 5: Tỷ lệ trang phục&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn cần nhớ chiều dài và tỷ lệ là yếu tố quyết định vóc dáng của bạn. Vì thế, nếu muốn mặc nhiều lớp áo layer hãy kết hợp với quần ôm sát với tông màu cơ bản. Các lớp áo thì có thể dài ngắn ngẫu hứng nhưng nên có tỉ lệ nhất định cùng nhau, sự đan xen tinh tế giữa các lớp áo sẽ mang lại cho bạn set đồ ổn định và phong cách hơn cho mình.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a7-1487878528420.jpg&quot; id=&quot;img_268adbf0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;400&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 11.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;268adbf0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a7-1487878528420.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a7-2-1487878528412.jpg&quot; id=&quot;img_26bc4c30-f9ff-11e6-af71-f51b3aae1f33&quot; w=&quot;640&quot; h=&quot;426&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 12.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 12.&quot; rel=&quot;lightbox&quot; photoid=&quot;26bc4c30-f9ff-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a7-2-1487878528412.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 6: Phá cách với màu sắc/ kiểu dáng&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những ngày lạnh lẽo sẽ trở lên ấm áp và bớt u ám hơn nếu bạn mạnh dạn trong việc lựa chọn màu sắc cho những bộ đồ layer của mình. Hãy thử mặc những màu mà trước đây bạn chưa từng mặc. Một chút tinh ý và thẩm mỹ sẽ giúp bạn tạo được những bộ cánh tông-xuyệt-tông nhất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-1487878631750.jpg&quot; id=&quot;img_64abdba0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;640&quot; h=&quot;960&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 13.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;64abdba0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-1487878631750.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-4-1487878631745.jpg&quot; id=&quot;img_65014ea0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;640&quot; h=&quot;426&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 14.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;65014ea0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-4-1487878631745.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 7: Chìa khoá nằm ở khăn choàng và áo khoác dáng dài&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Khăn choàng to bản, áo khoác dáng dài sẽ là món đồ kết thúc set layer của bạn một cách hoàn hảo và tinh tế nhất. Đây cũng là món đồ được sử dụng nhiều trong set đồ layer. Sẽ thật nữ tính và thời trang khi chọn cho mình một chiếc khăn choàng họa tiết để có thể phối chung với nhiều kiểu quần áo khác nhau.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a4-1487877349412.jpg&quot; id=&quot;img_677f7560-f9fc-11e6-9824-2dfbc8fe5943&quot; w=&quot;600&quot; h=&quot;413&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 15.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 15.&quot; rel=&quot;lightbox&quot; photoid=&quot;677f7560-f9fc-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a4-1487877349412.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','Bộ bàn ghế, mô hình','','',''),(56,2,'Xu hướng giày dép 2017: Thời đại của những thiết kế &quot;bánh bèo&quot; thắt nơ','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Không thể phủ nhận rằng, thời trang năm 2017 đang thể hiện một bước chuyển mình rõ rệt khi phong cách thời trang có phần nữ tính và điệu đà càng lúc lại càng lên ngôi. Đâu đâu ta cũng dễ dàng có thể thấy những chi tiết như bèo nhún, đính lông, thêu thùa… cho tới những chất liệu tương đối &quot;lộng lẫy&quot; như lụa, nhung, satin… Bổ sung vào danh sách này chính là chi tiết thắt nơ, mà tiêu biểu nhất là ở những đôi giày thanh lịch, nữ tính.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1487576433550.jpg&quot; id=&quot;img_ddb9a3f0-f73f-11e6-896b-17b31d47e829&quot; w=&quot;1920&quot; h=&quot;2379&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 1.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;ddb9a3f0-f73f-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487576433550.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-1-1487576433547.jpg&quot; id=&quot;img_dd7a9f20-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;844&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 2.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;dd7a9f20-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1-1487576433547.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Có thể nhận định rằng, những đôi giày mang chi tiết thắt nơ là món đồ phụ kiện &quot;kế thừa&quot; những đôi giày buộc dây, giày ballet… nổi đình nổi đám trong năm 2016. Nét nữ tính khó lòng chối từ cùng sự kết hợp vô cùng đa dạng là những gì chúng ta dễ dàng nhận thấy với những đôi giày này. Chúng xuất hiện dưới mọi hình thức: từ những đôi giày cao gót kiêu kì, tới những đôi oxforts thanh lịch, những đôi dép bệt tiện dụng và thậm chí với cả những đôi giày thể thao năng động. Chi tiết thắt nơ thường được xuất hiện dưới dạng bản nơ to cách điệu, nhằm đem tới sự thanh lịch tối đa nhưng vẫn đảm bảo nét duyên dáng đặc trưng.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-6-1487577002762.jpg&quot; id=&quot;img_313f0f50-f741-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;999&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 3.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;313f0f50-f741-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-6-1487577002762.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-3-1487576433558.jpg&quot; id=&quot;img_de8fdfb0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;640&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 4.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;de8fdfb0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-3-1487576433558.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487576433556.jpg&quot; id=&quot;img_de643bd0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;564&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 5.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;de643bd0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487576433556.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-1-1487576433555.jpg&quot; id=&quot;img_de36c330-f73f-11e6-91a9-91ce504d7dc6&quot; w=&quot;1020&quot; h=&quot;1530&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 6.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;de36c330-f73f-11e6-91a9-91ce504d7dc6&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1-1487576433555.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1487576433559.jpg&quot; id=&quot;img_dead04a0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;931&quot; h=&quot;1400&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 7.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;dead04a0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1487576433559.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-6-1487576433561.jpg&quot; id=&quot;img_deed1ae0-f73f-11e6-896b-17b31d47e829&quot; w=&quot;931&quot; h=&quot;1400&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 8.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;deed1ae0-f73f-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-6-1487576433561.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Phong cách tinh tế của những đôi giày thắt nơ là điểm nhấn vô cùng đắt giá dành cho bất kì quý cô nào theo đuổi phong cách thời thượng, nữ tính. Đối với những đôi giày thể thao, giày thắt nơ sẽ tạo nên sự tương phản vô cùng cuốn hút giữa nét cá tính, năng động của kiểu giày với sự nền nã, thanh lịch của chi tiết. Không chỉ vậy, sự kết hợp của những đôi giày thắt nơ với những chất liệu hút mắt như nhung, satin… cùng những tông màu đang &quot;sốt sình sịch&quot; như hồng vàng, Khaki, Caramel… sẽ lại càng đem tới vẻ ngoài lôi cuốn, tô đậm phong cách cho các quý cô.&lt;/p&gt;','Bộ bàn ghế, mô hình','','',''),(58,2,'5 combo màu sắc cứ mặc là đẹp ngay chẳng cần suy nghĩ','&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Tạm biệt những set đồ với tông màu trầm buồn của mùa đông, chúng ta đang ở giữa mùa xuân, là thời điểm của những tông màu tươi sáng lên ngôi. Tuy nhiên, quá nhiều sự lựa chọn màu sắc sẽ dễ khiến bạn cảm thấy khó kết hợp, vì thế các chuyên gia thời trang sẽ giúp bạn chọn ra 5 combo kết hợp màu sắc hài hòa, bắt mắt và thời thượng nhất nhưng không hề lòe loẹt.&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Vàng rượu chartreuse + Ghi xám&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Tông vàng của rượu Chartreuse chắc chắn sẽ giúp cả set đồ của bạn như sáng bừng nhất là khi nó được kết hợp cùng màu ghi nhẹ nhàng nền nã. Hai gam màu một nổi một trầm, một sáng một tối này luôn có sự hỗ trợ tài tình và ăn dơ cùng nhau tạo nên những set đồ tươi tắn xua tan cái âm u của những ngày gió lạnh.&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-2-1488086325529.jpg&quot; id=&quot;img_1281c020-fbe3-11e6-9824-2dfbc8fe5943&quot; w=&quot;700&quot; h=&quot;1070&quot; alt=&quot;&quot; title=&quot;&quot; rel=&quot;http://afamilycdn.com/2017/1-2-1488086325529.jpg&quot; photoid=&quot;1281c020-fbe3-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-2-1488086325529.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; text-align: center;&quot;&gt;&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1488086325533.jpg&quot; id=&quot;img_12ae4e60-fbe3-11e6-af71-f51b3aae1f33&quot; w=&quot;728&quot; h=&quot;485&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 2.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;12ae4e60-fbe3-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1488086325533.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-5-1488086458144.jpeg&quot; id=&quot;img_607f9220-fbe3-11e6-896b-17b31d47e829&quot; w=&quot;700&quot; h=&quot;1050&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 3.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;607f9220-fbe3-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-5-1488086458144.jpeg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Hồng tro + Trắng/ Camel&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Lại là sự kết hợp giữa một tông màu nổi bật với các sắc trung tính khác, an toàn nhưng không hề nhàm chán. Màu hồng tro pha chút tím đầy nữ tính đi cùng màu camel khiến set đồ tràn ngập tinh thần mùa xuân. Hãy chọn quần denim trắng thay vì đen để có diện mạo trẻ trung hơn trong những ngày xuân này.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-1488088079426.jpg&quot; id=&quot;img_27675780-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;700&quot; h=&quot;812&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 4.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;27675780-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1488088079426.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-2-1488088079423.jpg&quot; id=&quot;img_279fa590-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;940&quot; h=&quot;640&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 5.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;279fa590-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1488088079423.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1488088151048.jpg&quot; id=&quot;img_51cd6050-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;700&quot; h=&quot;1052&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 6.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;51cd6050-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1488088151048.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Xanh da trời nhạt + Xanh đậm&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Một trong những cách dễ dàng nhất để đưa màu sắc vào trang phục là kết hợp cùng tông nhưng đậm nhạt khác nhau. Vốn là một gam màu nhạt thiên về sự nhẹ nhàng, trong trẻo xanh da trời nhạt hay xanh baby khi được kết hợp cũng một tông cũng xanh nhưng đậm hơn hẳn sẽ tạo nên những hiệu ứng chuyển màu vô cùng tinh tế và ngọt ngào cho bộ đồ của bạn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/3-1488088533378.jpg&quot; id=&quot;img_35eb0d00-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;736&quot; h=&quot;1040&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 7.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;35eb0d00-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/3-1488088533378.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/3-2-1488088533376.jpg&quot; id=&quot;img_3664a9d0-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;736&quot; h=&quot;1104&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 8.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;3664a9d0-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/3-2-1488088533376.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Màu carot và camel&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những cô nàng thanh lịch chuộng phong cách nền nã cổ điển chắc chắn sẽ rất yêu thích cặp đôi màu sắc này. Màu cam carot hơi đậm màu sóng đôi cùng tông camel hiền hòa tạo nên một bộ đôi hợp vô cùng tiết trời xuân còn vương chút lạnh.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-1488088700368.jpg&quot; id=&quot;img_99599c30-fbe8-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;698&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 9.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;99599c30-fbe8-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1488088700368.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-2-1488088700364.jpg&quot; id=&quot;img_99a79520-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 10.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;99a79520-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-2-1488088700364.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-3-1488088700366.jpg&quot; id=&quot;img_99d7a5d0-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;432&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 11.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;99d7a5d0-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-3-1488088700366.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Đỏ rượu vang và đen&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Cặp đôi đen và đỏ rượu vang không những rất thời thượng và sang trọng, mà đặc biệt không hề kén người mặc bởi sắc đỏ này phù hợp và tôn lên mọi màu da. Sự kết hợp giữa đen và đỏ rượu vang thực sự rất lịch sự nhưng không hề khiến người mặc bị già hay trầm quá, mà nó thiên về sự nền nã pha chút cổ điển, một cặp đôi mà chỉ cần xếp cạnh nhau thôi chứ chưa cần thử lên người đã thấy đẹp rồi.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-1488089040391.jpg&quot; id=&quot;img_65239000-fbe9-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 12.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 12.&quot; rel=&quot;lightbox&quot; photoid=&quot;65239000-fbe9-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-1488089040391.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/8f31c3ff963329424f47ce4db1a5967d-1488089242033.jpg&quot; id=&quot;img_dc164ea0-fbe9-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 13.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;dc164ea0-fbe9-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/8f31c3ff963329424f47ce4db1a5967d-1488089242033.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/f2c2f9fcddbc1d23a756d1ace118c0b6-1488091212528.jpg&quot; id=&quot;img_7259ba10-fbee-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;864&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 14.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;7259ba10-fbee-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/f2c2f9fcddbc1d23a756d1ace118c0b6-1488091212528.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(59,2,'Những chiếc kính được săn lùng hai tháng đầu 2017','&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567035&quot; src=&quot;http://img.f10.giaitri.vnecdn.net/2017/02/24/1-1487912568_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Từ trước đến nay, việc sản xuất kính mắt thường được các tập đoàn lớn thâu tóm. Ray-Ban, Burberry, Chanel hay Bvlgari… đều do Luxottica sản xuất. Kính của Dior, Gucci do Safilo Group nắm giữ hợp đồng.&amp;nbsp;Trong vài năm trở lại đây, các tín đồ thời trang có xu hướng tìm kiếm những mẫu kính mắt mang dấu ấn của nhà thiết kế mà họ yêu thích. Khác biệt cốt lõi của kiểu sản phẩm này là nhà thiết kế không coi kính mắt là phụ kiện, mà là thời trang. Họ tự tay thiết kế và kết hợp với các đơn vị chế tác kính uy tín để tạo nên mẫu sản phẩm chiều lòng khách hàng. Theo &amp;amp;lt;em&amp;amp;gt;Fashionisers&amp;amp;lt;/em&amp;amp;gt;, trong hai tháng đầu năm nay, mẫu kính được cả giới chuyên môn lẫn các tín đồ yêu thích và săn lùng là kính của nhà tạo mốt Nhật Bản Yohji Yamamoto trong bộ sưu tập Xuân Hè 2017.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	&amp;amp;lt;span&amp;amp;gt;Là nhà thiết kế mang phong cách avant garde đặc trưng, ông chịu trách nhiệm cho nhiều xu hướng mới trong làng thời trang vài năm gần đây. Với kính mắt, Yohji Yamamoto đưa ra mẫu mắt tròn, gọng tối giản và siêu mảnh, vừa cá tính, vừa thanh lịch.&amp;nbsp;&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_0&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Từ trước đến nay, việc sản xuất kính mắt thường được các tập đoàn lớn thâu tóm. Ray-Ban, Burberry, Chanel hay Bvlgari… đều do Luxottica sản xuất. Kính của Dior, Gucci do Safilo Group nắm giữ hợp đồng.&amp;nbsp;Trong vài năm trở lại đây, các tín đồ thời trang có xu hướng tìm kiếm những mẫu kính mắt mang dấu ấn của nhà thiết kế mà họ yêu thích. Khác biệt cốt lõi của kiểu sản phẩm này là nhà thiết kế không coi kính mắt là phụ kiện, mà là thời trang. Họ tự tay thiết kế và kết hợp với các đơn vị chế tác kính uy tín để tạo nên mẫu sản phẩm chiều lòng khách hàng. Theo&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;Fashionisers&lt;/em&gt;, trong hai tháng đầu năm nay, mẫu kính được cả giới chuyên môn lẫn các tín đồ yêu thích và săn lùng là kính của nhà tạo mốt Nhật Bản Yohji Yamamoto trong bộ sưu tập Xuân Hè 2017.&lt;/p&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;Là nhà thiết kế mang phong cách avant garde đặc trưng, ông chịu trách nhiệm cho nhiều xu hướng mới trong làng thời trang vài năm gần đây. Với kính mắt, Yohji Yamamoto đưa ra mẫu mắt tròn, gọng tối giản và siêu mảnh, vừa cá tính, vừa thanh lịch.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567036&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/2-1487912569_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Yohji luôn giữ bản sắc bằng lối thể hiện khác biệt. Qua nhiều mùa, chất &amp;amp;quot;điên&amp;amp;quot; của nhà thiết kế 71 tuổi luôn có màu sắc riêng, không trùng lặp. Để sở hữu một mẫu kính này, các tín đồ phải móc hầu bao 420 USD (9,5 triệu đồng).&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_1&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Yohji luôn giữ bản sắc bằng lối thể hiện khác biệt. Qua nhiều mùa, chất &quot;điên&quot; của nhà thiết kế 71 tuổi luôn có màu sắc riêng, không trùng lặp. Để sở hữu một mẫu kính này, các tín đồ phải móc hầu bao 420 USD (9,5 triệu đồng).&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567037&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/4-1487912570_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Cú &amp;amp;quot;bắt tay&amp;amp;quot; của Damir Doma với hãng sản xuất kính cao cấp MYKITA đã thổi một luồng gió mới&amp;amp;lt;span&amp;amp;gt;&amp;nbsp;trong làng kính. Cả hai&amp;nbsp;&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;span&amp;amp;gt;tạo nên một thiết kế hấp dẫn ngay từ cái nhìn đầu tiên: kính nhiều lớp. Phần gọng ngoài tách rời với các lớp mắt kính, kết nối bằng những thanh thép nhỏ. Ngay khi xuất hiện trong bộ sưu tập Thu Đông 2017 ở sàn diễn hồi tháng 1, chiếc kính này đã khiến nhiều tín đồ đứng ngồi không yên dù giá của nó không rẻ: 830 USD (&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;span style=&amp;amp;quot;color:rgb(34,34,34);&amp;amp;quot;&amp;amp;gt;18,8 triệu đồng).&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_2&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Cú &quot;bắt tay&quot; của Damir Doma với hãng sản xuất kính cao cấp MYKITA đã thổi một luồng gió mới&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp;trong làng kính. Cả hai&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;tạo nên một thiết kế hấp dẫn ngay từ cái nhìn đầu tiên: kính nhiều lớp. Phần gọng ngoài tách rời với các lớp mắt kính, kết nối bằng những thanh thép nhỏ. Ngay khi xuất hiện trong bộ sưu tập Thu Đông 2017 ở sàn diễn hồi tháng 1, chiếc kính này đã khiến nhiều tín đồ đứng ngồi không yên dù giá của nó không rẻ: 830 USD (&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34);&quot;&gt;18,8 triệu đồng).&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567038&quot; src=&quot;http://img.f11.giaitri.vnecdn.net/2017/02/24/3-1487912569_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p&amp;amp;gt;\r\n	Kính của Damir Doma nhiều tầng lớp như chính phong cách thiết kế trang phục của anh. Nó phù hợp với nhiều dáng khuôn mặt, dành cho những người cá tính mạnh, mang phong cách hippie, bohemian hay thanh lịch.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p&amp;amp;gt;\r\n	Damir Doma là nhà thiết kế người Áo, tốt nghiệp Học viện thời trang ở Đức. Damir Doma ra mắt thương hiệu thời trang mang tên mình vào năm 2007. Các thiết kế của anh được nhiều ngôi sao hàng đầu lựa chọn. Fan &amp;amp;quot;ruột&amp;amp;quot; của anh gồm Usher, Rihanna, Kanye West, Robert Pattinson… Trong khi đó, MYKITA - hãng sản xuất kính thủ công tại Berlin - đã quá nổi tiếng với đặc trưng sử dụng vật liệu siêu bền, siêu nhẹ. MYKITA cũng là hãng sở hữu công nghệ độc quyền gọng kính không ốc vít.&amp;nbsp;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_3&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Kính của Damir Doma nhiều tầng lớp như chính phong cách thiết kế trang phục của anh. Nó phù hợp với nhiều dáng khuôn mặt, dành cho những người cá tính mạnh, mang phong cách hippie, bohemian hay thanh lịch.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Damir Doma là nhà thiết kế người Áo, tốt nghiệp Học viện thời trang ở Đức. Damir Doma ra mắt thương hiệu thời trang mang tên mình vào năm 2007. Các thiết kế của anh được nhiều ngôi sao hàng đầu lựa chọn. Fan &quot;ruột&quot; của anh gồm Usher, Rihanna, Kanye West, Robert Pattinson… Trong khi đó, MYKITA - hãng sản xuất kính thủ công tại Berlin - đã quá nổi tiếng với đặc trưng sử dụng vật liệu siêu bền, siêu nhẹ. MYKITA cũng là hãng sở hữu công nghệ độc quyền gọng kính không ốc vít.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567039&quot; src=&quot;http://img.f11.giaitri.vnecdn.net/2017/02/24/5-1487912596_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Ngoài Damir Doma, nhà thiết kế Martin Margiela của hãng Maison Margiela cũng hợp tác với MYKITA. Nhắc đến Maison Margiela là nhắc đến haute couture. Martin Margiela được coi là thành viên thứ bảy của Antwerp Six - nhóm nhà thiết kế nổi lên từ chương trình Antwerp Fashion Academy năm 1980. Dành cho mùa Xuân Hè 2017, cả hai cùng tạo nên mẫu kính gọng họa tiết da rắn sành điệu.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_4&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Ngoài Damir Doma, nhà thiết kế Martin Margiela của hãng Maison Margiela cũng hợp tác với MYKITA. Nhắc đến Maison Margiela là nhắc đến haute couture. Martin Margiela được coi là thành viên thứ bảy của Antwerp Six - nhóm nhà thiết kế nổi lên từ chương trình Antwerp Fashion Academy năm 1980. Dành cho mùa Xuân Hè 2017, cả hai cùng tạo nên mẫu kính gọng họa tiết da rắn sành điệu.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567040&quot; src=&quot;http://img.f9.giaitri.vnecdn.net/2017/02/24/6-1487912570_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Họa tiết da rắn được khắc laser chìm trên gọng kính. Thiết kế này có giá lên đến 1.060 USD (24 triệu đồng).&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_5&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Họa tiết da rắn được khắc laser chìm trên gọng kính. Thiết kế này có giá lên đến 1.060 USD (24 triệu đồng).&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567041&quot; src=&quot;http://img.f10.giaitri.vnecdn.net/2017/02/24/7-1487912571_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p&amp;amp;gt;\r\n	Ngoài mẫu kính họa tiết da rắn, kính gương vàng với khung kính siêu mỏng của MYKITA và Maison Margiela cũng là món phụ kiện được nhiều người yêu thích.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_6&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Ngoài mẫu kính họa tiết da rắn, kính gương vàng với khung kính siêu mỏng của MYKITA và Maison Margiela cũng là món phụ kiện được nhiều người yêu thích.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567042&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/8-1487912571_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Một cú &amp;amp;quot;bắt tay&amp;amp;quot; khác cũng tạo nên cơn bão trên đường phố đến từ nhà thiết kế người Thái Lan Phillip Lim và hãng sản xuất kính mắt Linda Farrow. Một trong những mẫu kính hot nhất của sự hợp tác này là kính gương hình nửa vầng trăng năm 2014.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_7&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Một cú &quot;bắt tay&quot; khác cũng tạo nên cơn bão trên đường phố đến từ nhà thiết kế người Thái Lan Phillip Lim và hãng sản xuất kính mắt Linda Farrow. Một trong những mẫu kính hot nhất của sự hợp tác này là kính gương hình nửa vầng trăng năm 2014.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567043&quot; src=&quot;http://img.f9.giaitri.vnecdn.net/2017/02/24/Carey-Mulligan-1487922408_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Năm nay, cả hai cùng cho ra mắt mẫu kính gương mắt tròn, phù hợp với những gương mặt dài hoặc góc cạnh. Thiết kế có giá 330 USD (7,5 triệu đồng). Mẫu kính là một trong những món phụ kiện yêu thích của Carey Mulligan.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Được thành lập vào năm 2005, Phillip Lim nhanh chóng gia nhập vào New York Fashion Week và được chú ý. Thương hiệu của nhà thiết kế người Thái mang phong cách kinh điển, pha trộn sự trẻ trung, lịch lãm, được các nhà phê bình, giới biên tập viên thời trang và tín đồ yêu thích.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_8&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Năm nay, cả hai cùng cho ra mắt mẫu kính gương mắt tròn, phù hợp với những gương mặt dài hoặc góc cạnh. Thiết kế có giá 330 USD (7,5 triệu đồng). Mẫu kính là một trong những món phụ kiện yêu thích của Carey Mulligan.&lt;/p&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Được thành lập vào năm 2005, Phillip Lim nhanh chóng gia nhập vào New York Fashion Week và được chú ý. Thương hiệu của nhà thiết kế người Thái mang phong cách kinh điển, pha trộn sự trẻ trung, lịch lãm, được các nhà phê bình, giới biên tập viên thời trang&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(60,1,'New trends motifs can not miss from Versace Jeans 2017','&lt;p&gt;Versace Jeans collection has just launched a new season is predicted to be hot-trend fashionista motifs for should not be missed in the Spring-Summer 2017 fashion season&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Versace Jeans is a fashion brand Versace apps famous brand from Italy dedicated to the young love youthful style, personality. Versace Jeans has launched the Spring Summer Pre 2017danh super set for both men and women. Fashion house has incorporated the graphic pattern textured abstract art from the middle ages to the Future Flower picture bright color, creating a contrast between the strong visual nature and future technologies. The designs also bring fashion followers colors of Pop and Rock music line \'N\' Roll luxury, outstanding, vibrant with neon colors, pastel, iridescent sparkle. This summer, the collection was cleverly selecting lightweight materials commonly used cooling for daily activities such as a picnic, party or event.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Versace&lt;/p&gt;&lt;p&gt;Versace&lt;/p&gt;&lt;p&gt;International stars simultaneously become&lt;/p&gt;&lt;p&gt;International stars simultaneously become &quot;followers&quot; of the Versace fashion&lt;/p&gt;&lt;p&gt;Each fashion season is also the time to fashion devotees are satisfied to experience a series of design and novel style. Besides, textures, colors as well as one of the factors will change to bring fresh aftertaste.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SEE THE ENTIRE Figure 3&lt;/p&gt;&lt;p&gt;In the summer of this year the design of the brand Versace Jeans brought back the impression stripes and floral tones to the popular, young, attractive never be outdated for sunny days. It is expected for the fashionista hottrend should not be missed in the fashion season Spring-Summer 2017&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SEE THE ENTIRE Figure 3&lt;/p&gt;&lt;p&gt;The designer brings fashion trends inspired by summer flowers, indispensable bright color tones. The flowers are arranged on the body highlights shirt and placed on a cloth dark or bright colors to highlight every detail of brilliant flower colors.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SEE THE ENTIRE Figure 3&lt;/p&gt;&lt;p&gt;Plaid texture color leopard is dynamic trends that deserve no fashion lovers can skip to make a difference.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;SEE THE ENTIRE Figure 3&lt;/p&gt;&lt;p&gt;Not only that, Versace Jeans brings a new look for the grave tone of the 2017 spring-summer fashion is a combination of brilliant floral colors with stripes strong personality. With unique combinations of daring fashionista brand Versace Jeans became impressed the young and style leader in summer 2017.&lt;/p&gt;','','','',''),(60,2,'Xu hướng họa tiết mới không thể bỏ lỡ từ Versace Jeans 2017','&lt;p class=&quot;content-excerpt&quot; style=&quot;margin-top: 20px; margin-bottom: 10px; font-size: 16px; color: rgb(70, 70, 70); padding-left: 0px; font-style: italic;&quot;&gt;Versace Jeans vừa tung ra bộ sưu tập mùa mới được dự đoán là hot-trend họa tiết cho các fashionista không nên thể bỏ qua trong mùa thời trang Xuân Hè 2017&lt;/p&gt;&lt;div class=&quot;lo-post-content&quot;&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 10px; padding-left: 0px;&quot;&gt;&lt;font color=&quot;#464646&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Versace Jeans&amp;nbsp;là nhãn hiệu thời trang ứng dụng của&amp;nbsp;&lt;/span&gt;&lt;/font&gt;thương hiệu Versace&lt;font color=&quot;#464646&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;nổi tiếng đến từ Italy dành riêng cho các bạn trẻ yêu phong cách trẻ trung, cá tính. Versace Jeans vừa cho ra mắt bộ siêu tập Pre Spring Summer 2017dành cho cả nam và nữ. Nhà mốt đã kết hợp các hoạ tiết đồ hoạ hoa văn từ nghệ thuật trừu tượng thời trung cổ với hình ảnh Future Flower in màu sáng, tạo ra sự tương phản thị giác mạnh mẽ giữa thiên nhiên và công nghệ tương lai. Các mẫu thiết kế còn mang đến cho tín đồ thời trang sắc màu của dòng âm nhạc Pop và&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;a href=&quot;http://lofficiel.vn/celebrity-style/can-canh-nhung-thuong-hieu-khien-sao-hollywood-phai-man.html&quot; style=&quot;color: rgb(200, 171, 94); font-size: 16px; text-decoration: inherit;&quot;&gt;Rock ‘N’ Roll&lt;/a&gt;&lt;font color=&quot;#464646&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;sang trọng, nổi bật, sôi động với những gam màu neon, pastel, ánh kim lấp lánh. Mùa hè năm nay, bộ sưu tập đã khéo léo lựa chọn các chất liệu nhẹ, mát thông dụng cho mọi hoạt động hằng ngày như dã ngoại, party hay sự kiện.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;&lt;/p&gt;&lt;div class=&quot;detail-box-1&quot; style=&quot;color: rgb(51, 51, 51); font-size: 16px; margin-top: 30px; margin-bottom: 30px; border: 1px solid rgb(215, 193, 137); height: auto; overflow: hidden; padding: 1px !important;&quot;&gt;&lt;div class=&quot;item&quot; style=&quot;float: left; background: rgb(246, 246, 246); width: 368px;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/xuan-he-2017/sac-mau-huyen-ao-tren-san-runway-versace-nu-xuan-he-2017.html&quot; title=&quot;Versace&quot; style=&quot;color: rgb(200, 171, 94); text-decoration: inherit; float: left; width: 116px; height: 116px; overflow: hidden; margin-right: 15px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/15/Versace-Women-SS17-09-576x800.jpg&quot; alt=&quot;Versace&quot; width=&quot;116&quot; style=&quot;max-width: 100%; height: auto; float: left; margin-right: 15px;&quot;&gt;&lt;/a&gt;&lt;a href=&quot;https://www.lofficiel.vn/xuan-he-2017/sac-mau-huyen-ao-tren-san-runway-versace-nu-xuan-he-2017.html&quot; title=&quot;Versace&quot; style=&quot;color: rgb(200, 171, 94); text-decoration: inherit;&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;margin-top: 15px; margin-bottom: 0px; font-size: 18px; color: rgb(63, 63, 63); padding-left: 0px; padding-right: 15px;&quot;&gt;Versace&lt;/p&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;item&quot; style=&quot;float: left; background: rgb(246, 246, 246); width: 368px;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/celebrity-style/sao-quoc-te-dong-loat-tro-thanh-tin-do-cua-thoi-trang-versace.html&quot; title=&quot;Sao quốc tế đồng loạt trở thành &quot; tín=&quot;&quot; đồ&quot;=&quot;&quot; của=&quot;&quot; thời=&quot;&quot; trang=&quot;&quot; versace&quot;=&quot;&quot; style=&quot;color: rgb(200, 171, 94); text-decoration: inherit; float: left; width: 116px; height: 116px; overflow: hidden; margin-right: 15px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/16/thoi-trang-Versace-New-York-thumb-576x800.jpg&quot; alt=&quot;Sao quốc tế đồng loạt trở thành &quot; tín=&quot;&quot; đồ&quot;=&quot;&quot; của=&quot;&quot; thời=&quot;&quot; trang=&quot;&quot; versace&quot;=&quot;&quot; width=&quot;116&quot; style=&quot;max-width: 100%; height: auto; float: left; margin-right: 15px;&quot;&gt;&lt;/a&gt;&lt;a href=&quot;https://www.lofficiel.vn/celebrity-style/sao-quoc-te-dong-loat-tro-thanh-tin-do-cua-thoi-trang-versace.html&quot; title=&quot;Sao quốc tế đồng loạt trở thành &quot; tín=&quot;&quot; đồ&quot;=&quot;&quot; của=&quot;&quot; thời=&quot;&quot; trang=&quot;&quot; versace&quot;=&quot;&quot; style=&quot;color: rgb(200, 171, 94); text-decoration: inherit;&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;margin-top: 15px; margin-bottom: 0px; font-size: 18px; color: rgb(63, 63, 63); padding-left: 0px; padding-right: 15px;&quot;&gt;Sao quốc tế đồng loạt trở thành &quot;tín đồ&quot; của thời trang Versace&lt;/p&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;Mỗi mùa thời trang đến cũng là lúc các tín đồ thời trang được thỏa sức trải nghiệm hàng loạt kiểu dáng và những phong cách mới lạ. Bên cạnh đó, hoạ tiết, màu sắc cũng là một trong những yếu tố sẽ thay đổi để mang đến những dư vị mới mẻ.&lt;/p&gt;&lt;div class=&quot;gallery-item&quot; data-gallery=&quot;gallery-43560-0&quot; style=&quot;color: rgb(51, 51, 51); font-size: 16px; text-align: center; position: relative; margin-top: 20px; margin-bottom: 20px;&quot;&gt;&lt;div class=&quot;gallery-item-inner social-image-item&quot; style=&quot;display: inline-block; position: relative;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/xu-huong-thoi-trang/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017.html#&quot; class=&quot;show-btn&quot; data-gallery=&quot;gallery-43560-0&quot; style=&quot;background: rgba(0, 0, 0, 0.4); color: rgb(255, 255, 255); text-decoration: inherit; padding: 10px; display: block; position: absolute; font-size: 20px; top: 0px; right: 0px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/img/show.png&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;/a&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/17/01_NDR_9253-800x1152.jpg&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;div class=&quot;info&quot; style=&quot;background: rgba(194, 172, 109, 0.8); position: absolute; bottom: 50px; left: 0px; width: 165px; height: 90px; text-transform: uppercase; padding: 15px; text-align: left; color: rgb(255, 255, 255) !important; font-size: 14px !important;&quot;&gt;XEM TOÀN BỘ HÌNH&lt;span style=&quot;display: block; background: url(&amp;quot;../img/frame-1.png&amp;quot;) no-repeat; width: 50px; height: 30px; text-align: center; line-height: 30px; float: right; margin-top: 10px; font-size: 24px;&quot;&gt;3&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;Trong mùa hè năm nay các thiết kế của thương hiệu Versace Jeans mang trở lại những đường&amp;nbsp;&lt;a href=&quot;http://lofficiel.vn/xu-huong-thoi-trang/dan-dau-xu-huong-xuan-he-2016-voi-thoi-trang-ke-soc-da-sac-mau.html&quot; style=&quot;color: rgb(200, 171, 94); text-decoration: inherit;&quot;&gt;kẻ sọc ấn tượng&lt;/a&gt;&amp;nbsp;và họạ tiết hoa bản to với tông màu nổi, trẻ trung, bắt mắt không bao giờ là lỗi thời cho những ngày nắng. Đây được dự đoán là hottrend cho các fashionista không nên thể bỏ qua trong mùa thời trang Xuân-Hè&amp;nbsp;2017&lt;/p&gt;&lt;div class=&quot;gallery-item&quot; data-gallery=&quot;gallery-43560-1&quot; style=&quot;color: rgb(51, 51, 51); font-size: 16px; text-align: center; position: relative; margin-top: 20px; margin-bottom: 20px;&quot;&gt;&lt;div class=&quot;gallery-item-inner social-image-item&quot; style=&quot;display: inline-block; position: relative;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/xu-huong-thoi-trang/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017.html#&quot; class=&quot;show-btn&quot; data-gallery=&quot;gallery-43560-1&quot; style=&quot;background: rgba(0, 0, 0, 0.4); color: rgb(255, 255, 255); text-decoration: inherit; padding: 10px; display: block; position: absolute; font-size: 20px; top: 0px; right: 0px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/img/show.png&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;/a&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/17/09_NDR_1114-800x1152.jpg&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;div class=&quot;info&quot; style=&quot;background: rgba(194, 172, 109, 0.8); position: absolute; bottom: 50px; left: 0px; width: 165px; height: 90px; text-transform: uppercase; padding: 15px; text-align: left; color: rgb(255, 255, 255) !important; font-size: 14px !important;&quot;&gt;XEM TOÀN BỘ HÌNH&lt;span style=&quot;display: block; background: url(&amp;quot;../img/frame-1.png&amp;quot;) no-repeat; width: 50px; height: 30px; text-align: center; line-height: 30px; float: right; margin-top: 10px; font-size: 24px;&quot;&gt;3&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;Nhà thiết kế mang đến xu hướng thời trang lấy cảm hứng từ những bông hoa mùa hè, không thể thiếu màu sắc tông sáng. Những bông hoa được sắp đặt nổi bật trên thân áo và được đặt trên nền vải tối hoặc sáng màu làm nổi từng chi tiết của sắc hoa rực rỡ.&lt;/p&gt;&lt;div class=&quot;gallery-item&quot; data-gallery=&quot;gallery-43560-2&quot; style=&quot;color: rgb(51, 51, 51); font-size: 16px; text-align: center; position: relative; margin-top: 20px; margin-bottom: 20px;&quot;&gt;&lt;div class=&quot;gallery-item-inner social-image-item&quot; style=&quot;display: inline-block; position: relative;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/xu-huong-thoi-trang/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017.html#&quot; class=&quot;show-btn&quot; data-gallery=&quot;gallery-43560-2&quot; style=&quot;background: rgba(0, 0, 0, 0.4); color: rgb(255, 255, 255); text-decoration: inherit; padding: 10px; display: block; position: absolute; font-size: 20px; top: 0px; right: 0px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/img/show.png&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;/a&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/17/16_NDR_0551-800x1152.jpg&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;div class=&quot;info&quot; style=&quot;background: rgba(194, 172, 109, 0.8); position: absolute; bottom: 50px; left: 0px; width: 165px; height: 90px; text-transform: uppercase; padding: 15px; text-align: left; color: rgb(255, 255, 255) !important; font-size: 14px !important;&quot;&gt;XEM TOÀN BỘ HÌNH&lt;span style=&quot;display: block; background: url(&amp;quot;../img/frame-1.png&amp;quot;) no-repeat; width: 50px; height: 30px; text-align: center; line-height: 30px; float: right; margin-top: 10px; font-size: 24px;&quot;&gt;3&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;Họa tiết kẻ sọc màu sắc da báo năng động luôn xứng đáng là xu hướng&amp;nbsp;không có người yêu thời trang &amp;nbsp;nào có thể bỏ qua để tạo nên sự khác biệt.&lt;/p&gt;&lt;div class=&quot;gallery-item&quot; data-gallery=&quot;gallery-43560-3&quot; style=&quot;color: rgb(51, 51, 51); font-size: 16px; text-align: center; position: relative; margin-top: 20px; margin-bottom: 20px;&quot;&gt;&lt;div class=&quot;gallery-item-inner social-image-item&quot; style=&quot;display: inline-block; position: relative;&quot;&gt;&lt;a href=&quot;https://www.lofficiel.vn/xu-huong-thoi-trang/xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017.html#&quot; class=&quot;show-btn&quot; data-gallery=&quot;gallery-43560-3&quot; style=&quot;background: rgba(0, 0, 0, 0.4); color: rgb(255, 255, 255); text-decoration: inherit; padding: 10px; display: block; position: absolute; font-size: 20px; top: 0px; right: 0px;&quot;&gt;&lt;img src=&quot;https://www.lofficiel.vn/img/show.png&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;/a&gt;&lt;img src=&quot;https://www.lofficiel.vn/wp-content/uploads/2017/02/17/06_v_jeans_ss17_cat-800x975.jpg&quot; alt=&quot;&quot; style=&quot;max-width: 100%; height: auto;&quot;&gt;&lt;div class=&quot;info&quot; style=&quot;background: rgba(194, 172, 109, 0.8); position: absolute; bottom: 50px; left: 0px; width: 165px; height: 90px; text-transform: uppercase; padding: 15px; text-align: left; color: rgb(255, 255, 255) !important; font-size: 14px !important;&quot;&gt;XEM TOÀN BỘ HÌNH&lt;span style=&quot;display: block; background: url(&amp;quot;../img/frame-1.png&amp;quot;) no-repeat; width: 50px; height: 30px; text-align: center; line-height: 30px; float: right; margin-top: 10px; font-size: 24px;&quot;&gt;3&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;color: rgb(70, 70, 70); font-size: 16px; margin-top: 20px; margin-bottom: 10px; padding-left: 0px; text-align: justify;&quot;&gt;Không chỉ có vậy, Versace Jeans đem đến một cái nhìn mới cho giới mộ điệu về thời trang xuân hè 2017 là sự kết hợp giữa&amp;nbsp;hoạ tiết hoà rực rỡ với màu sắc mạnh mẽ cùng với đường sọc cá tính. Với cách phối hợp độc đáo táo bạo của thương hiệu Versace Jeans các fashionista trở nên ấn tượng, trẻ trung và dẫn đầu phong cách trong mùa Hè 2017.&lt;/p&gt;&lt;/div&gt;','xu hướng, 2017','IPhone 6s Plus vs Galaxy Note 5: 1 trận chiến khốc liệt','IPhone 6s Plus vs Galaxy Note 5: 1 trận chiến khốc liệt','IPhone 6s Plus vs Galaxy Note 5: 1 trận chiến khốc liệt'),(59,1,'The telescope is hunting the first two months 2017','&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567035&quot; src=&quot;http://img.f10.giaitri.vnecdn.net/2017/02/24/1-1487912568_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Từ trước đến nay, việc sản xuất kính mắt thường được các tập đoàn lớn thâu tóm. Ray-Ban, Burberry, Chanel hay Bvlgari… đều do Luxottica sản xuất. Kính của Dior, Gucci do Safilo Group nắm giữ hợp đồng.&amp;nbsp;Trong vài năm trở lại đây, các tín đồ thời trang có xu hướng tìm kiếm những mẫu kính mắt mang dấu ấn của nhà thiết kế mà họ yêu thích. Khác biệt cốt lõi của kiểu sản phẩm này là nhà thiết kế không coi kính mắt là phụ kiện, mà là thời trang. Họ tự tay thiết kế và kết hợp với các đơn vị chế tác kính uy tín để tạo nên mẫu sản phẩm chiều lòng khách hàng. Theo &amp;amp;lt;em&amp;amp;gt;Fashionisers&amp;amp;lt;/em&amp;amp;gt;, trong hai tháng đầu năm nay, mẫu kính được cả giới chuyên môn lẫn các tín đồ yêu thích và săn lùng là kính của nhà tạo mốt Nhật Bản Yohji Yamamoto trong bộ sưu tập Xuân Hè 2017.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	&amp;amp;lt;span&amp;amp;gt;Là nhà thiết kế mang phong cách avant garde đặc trưng, ông chịu trách nhiệm cho nhiều xu hướng mới trong làng thời trang vài năm gần đây. Với kính mắt, Yohji Yamamoto đưa ra mẫu mắt tròn, gọng tối giản và siêu mảnh, vừa cá tính, vừa thanh lịch.&amp;nbsp;&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_0&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Từ trước đến nay, việc sản xuất kính mắt thường được các tập đoàn lớn thâu tóm. Ray-Ban, Burberry, Chanel hay Bvlgari… đều do Luxottica sản xuất. Kính của Dior, Gucci do Safilo Group nắm giữ hợp đồng.&amp;nbsp;Trong vài năm trở lại đây, các tín đồ thời trang có xu hướng tìm kiếm những mẫu kính mắt mang dấu ấn của nhà thiết kế mà họ yêu thích. Khác biệt cốt lõi của kiểu sản phẩm này là nhà thiết kế không coi kính mắt là phụ kiện, mà là thời trang. Họ tự tay thiết kế và kết hợp với các đơn vị chế tác kính uy tín để tạo nên mẫu sản phẩm chiều lòng khách hàng. Theo&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;Fashionisers&lt;/em&gt;, trong hai tháng đầu năm nay, mẫu kính được cả giới chuyên môn lẫn các tín đồ yêu thích và săn lùng là kính của nhà tạo mốt Nhật Bản Yohji Yamamoto trong bộ sưu tập Xuân Hè 2017.&lt;/p&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;Là nhà thiết kế mang phong cách avant garde đặc trưng, ông chịu trách nhiệm cho nhiều xu hướng mới trong làng thời trang vài năm gần đây. Với kính mắt, Yohji Yamamoto đưa ra mẫu mắt tròn, gọng tối giản và siêu mảnh, vừa cá tính, vừa thanh lịch.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567036&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/2-1487912569_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Yohji luôn giữ bản sắc bằng lối thể hiện khác biệt. Qua nhiều mùa, chất &amp;amp;quot;điên&amp;amp;quot; của nhà thiết kế 71 tuổi luôn có màu sắc riêng, không trùng lặp. Để sở hữu một mẫu kính này, các tín đồ phải móc hầu bao 420 USD (9,5 triệu đồng).&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_1&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Yohji luôn giữ bản sắc bằng lối thể hiện khác biệt. Qua nhiều mùa, chất &quot;điên&quot; của nhà thiết kế 71 tuổi luôn có màu sắc riêng, không trùng lặp. Để sở hữu một mẫu kính này, các tín đồ phải móc hầu bao 420 USD (9,5 triệu đồng).&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567037&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/4-1487912570_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Cú &amp;amp;quot;bắt tay&amp;amp;quot; của Damir Doma với hãng sản xuất kính cao cấp MYKITA đã thổi một luồng gió mới&amp;amp;lt;span&amp;amp;gt;&amp;nbsp;trong làng kính. Cả hai&amp;nbsp;&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;span&amp;amp;gt;tạo nên một thiết kế hấp dẫn ngay từ cái nhìn đầu tiên: kính nhiều lớp. Phần gọng ngoài tách rời với các lớp mắt kính, kết nối bằng những thanh thép nhỏ. Ngay khi xuất hiện trong bộ sưu tập Thu Đông 2017 ở sàn diễn hồi tháng 1, chiếc kính này đã khiến nhiều tín đồ đứng ngồi không yên dù giá của nó không rẻ: 830 USD (&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;span style=&amp;amp;quot;color:rgb(34,34,34);&amp;amp;quot;&amp;amp;gt;18,8 triệu đồng).&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_2&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Cú &quot;bắt tay&quot; của Damir Doma với hãng sản xuất kính cao cấp MYKITA đã thổi một luồng gió mới&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;nbsp;trong làng kính. Cả hai&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px;&quot;&gt;tạo nên một thiết kế hấp dẫn ngay từ cái nhìn đầu tiên: kính nhiều lớp. Phần gọng ngoài tách rời với các lớp mắt kính, kết nối bằng những thanh thép nhỏ. Ngay khi xuất hiện trong bộ sưu tập Thu Đông 2017 ở sàn diễn hồi tháng 1, chiếc kính này đã khiến nhiều tín đồ đứng ngồi không yên dù giá của nó không rẻ: 830 USD (&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34);&quot;&gt;18,8 triệu đồng).&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567038&quot; src=&quot;http://img.f11.giaitri.vnecdn.net/2017/02/24/3-1487912569_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p&amp;amp;gt;\r\n	Kính của Damir Doma nhiều tầng lớp như chính phong cách thiết kế trang phục của anh. Nó phù hợp với nhiều dáng khuôn mặt, dành cho những người cá tính mạnh, mang phong cách hippie, bohemian hay thanh lịch.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p&amp;amp;gt;\r\n	Damir Doma là nhà thiết kế người Áo, tốt nghiệp Học viện thời trang ở Đức. Damir Doma ra mắt thương hiệu thời trang mang tên mình vào năm 2007. Các thiết kế của anh được nhiều ngôi sao hàng đầu lựa chọn. Fan &amp;amp;quot;ruột&amp;amp;quot; của anh gồm Usher, Rihanna, Kanye West, Robert Pattinson… Trong khi đó, MYKITA - hãng sản xuất kính thủ công tại Berlin - đã quá nổi tiếng với đặc trưng sử dụng vật liệu siêu bền, siêu nhẹ. MYKITA cũng là hãng sở hữu công nghệ độc quyền gọng kính không ốc vít.&amp;nbsp;&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_3&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Kính của Damir Doma nhiều tầng lớp như chính phong cách thiết kế trang phục của anh. Nó phù hợp với nhiều dáng khuôn mặt, dành cho những người cá tính mạnh, mang phong cách hippie, bohemian hay thanh lịch.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Damir Doma là nhà thiết kế người Áo, tốt nghiệp Học viện thời trang ở Đức. Damir Doma ra mắt thương hiệu thời trang mang tên mình vào năm 2007. Các thiết kế của anh được nhiều ngôi sao hàng đầu lựa chọn. Fan &quot;ruột&quot; của anh gồm Usher, Rihanna, Kanye West, Robert Pattinson… Trong khi đó, MYKITA - hãng sản xuất kính thủ công tại Berlin - đã quá nổi tiếng với đặc trưng sử dụng vật liệu siêu bền, siêu nhẹ. MYKITA cũng là hãng sở hữu công nghệ độc quyền gọng kính không ốc vít.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567039&quot; src=&quot;http://img.f11.giaitri.vnecdn.net/2017/02/24/5-1487912596_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Ngoài Damir Doma, nhà thiết kế Martin Margiela của hãng Maison Margiela cũng hợp tác với MYKITA. Nhắc đến Maison Margiela là nhắc đến haute couture. Martin Margiela được coi là thành viên thứ bảy của Antwerp Six - nhóm nhà thiết kế nổi lên từ chương trình Antwerp Fashion Academy năm 1980. Dành cho mùa Xuân Hè 2017, cả hai cùng tạo nên mẫu kính gọng họa tiết da rắn sành điệu.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_4&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Ngoài Damir Doma, nhà thiết kế Martin Margiela của hãng Maison Margiela cũng hợp tác với MYKITA. Nhắc đến Maison Margiela là nhắc đến haute couture. Martin Margiela được coi là thành viên thứ bảy của Antwerp Six - nhóm nhà thiết kế nổi lên từ chương trình Antwerp Fashion Academy năm 1980. Dành cho mùa Xuân Hè 2017, cả hai cùng tạo nên mẫu kính gọng họa tiết da rắn sành điệu.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567040&quot; src=&quot;http://img.f9.giaitri.vnecdn.net/2017/02/24/6-1487912570_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Họa tiết da rắn được khắc laser chìm trên gọng kính. Thiết kế này có giá lên đến 1.060 USD (24 triệu đồng).&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_5&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Họa tiết da rắn được khắc laser chìm trên gọng kính. Thiết kế này có giá lên đến 1.060 USD (24 triệu đồng).&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 660.016px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 660.016px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567041&quot; src=&quot;http://img.f10.giaitri.vnecdn.net/2017/02/24/7-1487912571_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p&amp;amp;gt;\r\n	Ngoài mẫu kính họa tiết da rắn, kính gương vàng với khung kính siêu mỏng của MYKITA và Maison Margiela cũng là món phụ kiện được nhiều người yêu thích.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_6&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 660.016px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Ngoài mẫu kính họa tiết da rắn, kính gương vàng với khung kính siêu mỏng của MYKITA và Maison Margiela cũng là món phụ kiện được nhiều người yêu thích.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567042&quot; src=&quot;http://img.f12.giaitri.vnecdn.net/2017/02/24/8-1487912571_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Một cú &amp;amp;quot;bắt tay&amp;amp;quot; khác cũng tạo nên cơn bão trên đường phố đến từ nhà thiết kế người Thái Lan Phillip Lim và hãng sản xuất kính mắt Linda Farrow. Một trong những mẫu kính hot nhất của sự hợp tác này là kính gương hình nửa vầng trăng năm 2014.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_7&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Một cú &quot;bắt tay&quot; khác cũng tạo nên cơn bão trên đường phố đến từ nhà thiết kế người Thái Lan Phillip Lim và hãng sản xuất kính mắt Linda Farrow. Một trong những mẫu kính hot nhất của sự hợp tác này là kính gương hình nửa vầng trăng năm 2014.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;clear&quot; style=&quot;margin: 0px; padding: 0px; clear: both; font-size: 0px; line-height: 0;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;item_slide_show&quot; style=&quot;margin: 0px auto 10px; padding: 0px; clear: both; font-family: arial; width: 500px;&quot;&gt;&lt;div class=&quot;block_thumb_slide_show&quot; style=&quot;margin: 0px; padding: 0px; width: 500px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;&quot;&gt;&lt;img data-reference-id=&quot;24567043&quot; src=&quot;http://img.f9.giaitri.vnecdn.net/2017/02/24/Carey-Mulligan-1487922408_660x0.jpg&quot; alt=&quot;Những chiếc kính được săn lùng hai tháng đầu 2017&quot; class=&quot;left&quot; data-component-caption=&quot;&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Năm nay, cả hai cùng cho ra mắt mẫu kính gương mắt tròn, phù hợp với những gương mặt dài hoặc góc cạnh. Thiết kế có giá 330 USD (7,5 triệu đồng). Mẫu kính là một trong những món phụ kiện yêu thích của Carey Mulligan.&amp;amp;lt;/p&amp;amp;gt;\r\n&amp;amp;lt;p class=&amp;amp;quot;Normal&amp;amp;quot;&amp;amp;gt;\r\n	Được thành lập vào năm 2005, Phillip Lim nhanh chóng gia nhập vào New York Fashion Week và được chú ý. Thương hiệu của nhà thiết kế người Thái mang phong cách kinh điển, pha trộn sự trẻ trung, lịch lãm, được các nhà phê bình, giới biên tập viên thời trang và tín đồ yêu thích.&amp;amp;lt;/p&amp;amp;gt;&quot; id=&quot;vne_slide_image_8&quot; style=&quot;margin: 0px; padding: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(&amp;quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&amp;quot;), auto;&quot;&gt;&lt;a class=&quot;btn_icon_show_slide_show&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; height: 28px; width: 28px; display: block; background-image: url(&amp;quot;images/graphics/icon_total_01.png&amp;quot;); background-position: -178px -21px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: absolute; right: 0px; top: 0px;&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;desc_cation&quot; style=&quot;margin: 0px; padding: 10px 10px 0px; width: 500px; float: left; background: rgb(245, 245, 245);&quot;&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Năm nay, cả hai cùng cho ra mắt mẫu kính gương mắt tròn, phù hợp với những gương mặt dài hoặc góc cạnh. Thiết kế có giá 330 USD (7,5 triệu đồng). Mẫu kính là một trong những món phụ kiện yêu thích của Carey Mulligan.&lt;/p&gt;&lt;p class=&quot;Normal&quot; style=&quot;margin-bottom: 0px; padding: 0px 0px 10px;&quot;&gt;Được thành lập vào năm 2005, Phillip Lim nhanh chóng gia nhập vào New York Fashion Week và được chú ý. Thương hiệu của nhà thiết kế người Thái mang phong cách kinh điển, pha trộn sự trẻ trung, lịch lãm, được các nhà phê bình, giới biên tập viên thời trang&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(58,1,'5 combo colors are beautiful just as soon not even need to think','&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Tạm biệt những set đồ với tông màu trầm buồn của mùa đông, chúng ta đang ở giữa mùa xuân, là thời điểm của những tông màu tươi sáng lên ngôi. Tuy nhiên, quá nhiều sự lựa chọn màu sắc sẽ dễ khiến bạn cảm thấy khó kết hợp, vì thế các chuyên gia thời trang sẽ giúp bạn chọn ra 5 combo kết hợp màu sắc hài hòa, bắt mắt và thời thượng nhất nhưng không hề lòe loẹt.&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Vàng rượu chartreuse + Ghi xám&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Tông vàng của rượu Chartreuse chắc chắn sẽ giúp cả set đồ của bạn như sáng bừng nhất là khi nó được kết hợp cùng màu ghi nhẹ nhàng nền nã. Hai gam màu một nổi một trầm, một sáng một tối này luôn có sự hỗ trợ tài tình và ăn dơ cùng nhau tạo nên những set đồ tươi tắn xua tan cái âm u của những ngày gió lạnh.&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-2-1488086325529.jpg&quot; id=&quot;img_1281c020-fbe3-11e6-9824-2dfbc8fe5943&quot; w=&quot;700&quot; h=&quot;1070&quot; alt=&quot;&quot; title=&quot;&quot; rel=&quot;http://afamilycdn.com/2017/1-2-1488086325529.jpg&quot; photoid=&quot;1281c020-fbe3-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-2-1488086325529.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; text-align: center;&quot;&gt;&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1488086325533.jpg&quot; id=&quot;img_12ae4e60-fbe3-11e6-af71-f51b3aae1f33&quot; w=&quot;728&quot; h=&quot;485&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 2.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;12ae4e60-fbe3-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1488086325533.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-5-1488086458144.jpeg&quot; id=&quot;img_607f9220-fbe3-11e6-896b-17b31d47e829&quot; w=&quot;700&quot; h=&quot;1050&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 3.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;607f9220-fbe3-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-5-1488086458144.jpeg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Hồng tro + Trắng/ Camel&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Lại là sự kết hợp giữa một tông màu nổi bật với các sắc trung tính khác, an toàn nhưng không hề nhàm chán. Màu hồng tro pha chút tím đầy nữ tính đi cùng màu camel khiến set đồ tràn ngập tinh thần mùa xuân. Hãy chọn quần denim trắng thay vì đen để có diện mạo trẻ trung hơn trong những ngày xuân này.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-1488088079426.jpg&quot; id=&quot;img_27675780-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;700&quot; h=&quot;812&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 4.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;27675780-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1488088079426.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-2-1488088079423.jpg&quot; id=&quot;img_279fa590-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;940&quot; h=&quot;640&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 5.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;279fa590-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1488088079423.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1488088151048.jpg&quot; id=&quot;img_51cd6050-fbe7-11e6-b49a-e10163e92f04&quot; w=&quot;700&quot; h=&quot;1052&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 6.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;51cd6050-fbe7-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1488088151048.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Xanh da trời nhạt + Xanh đậm&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Một trong những cách dễ dàng nhất để đưa màu sắc vào trang phục là kết hợp cùng tông nhưng đậm nhạt khác nhau. Vốn là một gam màu nhạt thiên về sự nhẹ nhàng, trong trẻo xanh da trời nhạt hay xanh baby khi được kết hợp cũng một tông cũng xanh nhưng đậm hơn hẳn sẽ tạo nên những hiệu ứng chuyển màu vô cùng tinh tế và ngọt ngào cho bộ đồ của bạn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/3-1488088533378.jpg&quot; id=&quot;img_35eb0d00-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;736&quot; h=&quot;1040&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 7.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;35eb0d00-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/3-1488088533378.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/3-2-1488088533376.jpg&quot; id=&quot;img_3664a9d0-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;736&quot; h=&quot;1104&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 8.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;3664a9d0-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/3-2-1488088533376.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Màu carot và camel&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những cô nàng thanh lịch chuộng phong cách nền nã cổ điển chắc chắn sẽ rất yêu thích cặp đôi màu sắc này. Màu cam carot hơi đậm màu sóng đôi cùng tông camel hiền hòa tạo nên một bộ đôi hợp vô cùng tiết trời xuân còn vương chút lạnh.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-1488088700368.jpg&quot; id=&quot;img_99599c30-fbe8-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;698&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 9.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;99599c30-fbe8-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1488088700368.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-2-1488088700364.jpg&quot; id=&quot;img_99a79520-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 10.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;99a79520-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-2-1488088700364.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-3-1488088700366.jpg&quot; id=&quot;img_99d7a5d0-fbe8-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;432&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 11.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;99d7a5d0-fbe8-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-3-1488088700366.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Đỏ rượu vang và đen&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Cặp đôi đen và đỏ rượu vang không những rất thời thượng và sang trọng, mà đặc biệt không hề kén người mặc bởi sắc đỏ này phù hợp và tôn lên mọi màu da. Sự kết hợp giữa đen và đỏ rượu vang thực sự rất lịch sự nhưng không hề khiến người mặc bị già hay trầm quá, mà nó thiên về sự nền nã pha chút cổ điển, một cặp đôi mà chỉ cần xếp cạnh nhau thôi chứ chưa cần thử lên người đã thấy đẹp rồi.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-1488089040391.jpg&quot; id=&quot;img_65239000-fbe9-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 12.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 12.&quot; rel=&quot;lightbox&quot; photoid=&quot;65239000-fbe9-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-1488089040391.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/8f31c3ff963329424f47ce4db1a5967d-1488089242033.jpg&quot; id=&quot;img_dc164ea0-fbe9-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 13.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;dc164ea0-fbe9-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/8f31c3ff963329424f47ce4db1a5967d-1488089242033.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/f2c2f9fcddbc1d23a756d1ace118c0b6-1488091212528.jpg&quot; id=&quot;img_7259ba10-fbee-11e6-896b-17b31d47e829&quot; w=&quot;564&quot; h=&quot;864&quot; alt=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 14.&quot; title=&quot;5 combo màu sắc cứ mặc là đẹp ngay chẳng cần nghĩ suy gì - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;7259ba10-fbee-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/f2c2f9fcddbc1d23a756d1ace118c0b6-1488091212528.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(57,1,'7 Rules to wear multiple layers help you warm enough just fashion','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Đơn giản một điều, những đợt gió lạnh nếu muốn len lỏi và khiến bạn cản thấy rùng mình thì việc nó phải vượt qua nhiều lớp áo quần sẽ khó khăn hơn nhiều. Chính vì vậy, không gì hoàn hảo hơn việc nhấn nhá và ngẫu hứng kết hợp những set layer đầy cá tính cho phong cách của mình những ngày lạnh giá.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-1-1487876888892.jpg&quot; id=&quot;img_549e8040-f9fb-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;600&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 1.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;549e8040-f9fb-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-1-1487876888892.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Cá tính và phong cách là thế nhưng mix đồ nhiều lớp dễ khiến người mặc trở nên xuề xòa, rườm rà nếu không lựa chọn và kết hợp cẩn thận. Layer cũng có những nguyên tắc riêng mà người mặc phải tuân theo để có một bộ trang phục thật hoàn chỉnh với phong cách này.&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 1: Mặc áo mỏng đầu tiên&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Chúng ta nên ưu tiên những trang phục có chất vải mỏng và ôm sát cơ thể như áo thun, áo sát nách, áo giữ nhiệt, áo sơmi... Chú ý là không nên mặc chất liệu cotton vào mùa đông vì chất vải này có khả năng thấm hút mồ hôi tốt nên có thể khiến bạn bị cảm lạnh. Những chiếc áo mỏng sẽ tạo sự thoải mái và giúp bạn dễ dàng mặc những chiếc áo tiếp theo như áo len, áo khoác nhung, hoặc áo khoác da.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-3-1487877226963.jpg&quot; id=&quot;img_1e295980-f9fc-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;744&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 2.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;1e295980-f9fc-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487877226963.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-2-1487877149538.jpg&quot; id=&quot;img_f0f4ee70-f9fb-11e6-9824-2dfbc8fe5943&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 3.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;f0f4ee70-f9fb-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-2-1487877149538.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 2: Lựa chọn các trang phục cần thiết&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Việc kết hợp của bạn trong những ngày lạnh luôn cần đáp ứng hai yếu tố, đó là: &quot;thời trang&quot; và &quot;thời tiết&quot;. Thế nên đừng chọn 1 trong 2 vì như vậy sẽ không ổn chút nào. Có rất nhiều loại quần áo để bạn giữ ấm và hãy chọn cho mình những sản phẩm phù hợp với sở thích và phong cách thời trang của riêng mình.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-6-1487876891245.jpg&quot; id=&quot;img_56716b80-f9fb-11e6-896b-17b31d47e829&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 4.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;56716b80-f9fb-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-6-1487876891245.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-7-1487876891251.jpg&quot; id=&quot;img_575cdcf0-f9fb-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;900&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 5.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;575cdcf0-f9fb-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-7-1487876891251.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 3: Xác định các layer&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn không nên mặc quá 3 lớp quần áo trong một bộ trang phục layer. Vậy nên, hãy lựa chọn các loại trang phục một cách khéo léo và hợp lý. Chúng ta không thể mang cả tủ đồ lên bộ trang phục của mình được.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a2-1487878070432.jpg&quot; id=&quot;img_154631b0-f9fe-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 6.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;154631b0-f9fe-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a2-1487878070432.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a5-1487878070441.jpg&quot; id=&quot;img_15964d80-f9fe-11e6-9824-2dfbc8fe5943&quot; w=&quot;564&quot; h=&quot;626&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 7.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;15964d80-f9fe-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a5-1487878070441.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 4: Phong cách tối giản&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Vì phải sử dụng cùng lúc nhiều loại quần, áo nên việc giữ được sự sang trọng và lịch sự trong tổng thể bộ trang phục là điều hết sức quan trọng. Trong phong cách layer thì sự đơn giản chính là lựa chọn tốt nhất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/photo-10-1487876891266.jpg&quot; id=&quot;img_575f7500-f9fb-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;743&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 8.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;575f7500-f9fb-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/photo-10-1487876891266.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-2-1487878631737.jpg&quot; id=&quot;img_64d27670-f9ff-11e6-af71-f51b3aae1f33&quot; w=&quot;640&quot; h=&quot;457&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 9.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;64d27670-f9ff-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-2-1487878631737.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a3-1487878352942.jpg&quot; id=&quot;img_bd6ee670-f9fe-11e6-af71-f51b3aae1f33&quot; w=&quot;564&quot; h=&quot;846&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 10.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;bd6ee670-f9fe-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a3-1487878352942.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 5: Tỷ lệ trang phục&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn cần nhớ chiều dài và tỷ lệ là yếu tố quyết định vóc dáng của bạn. Vì thế, nếu muốn mặc nhiều lớp áo layer hãy kết hợp với quần ôm sát với tông màu cơ bản. Các lớp áo thì có thể dài ngắn ngẫu hứng nhưng nên có tỉ lệ nhất định cùng nhau, sự đan xen tinh tế giữa các lớp áo sẽ mang lại cho bạn set đồ ổn định và phong cách hơn cho mình.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a7-1487878528420.jpg&quot; id=&quot;img_268adbf0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;600&quot; h=&quot;400&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 11.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;268adbf0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a7-1487878528420.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a7-2-1487878528412.jpg&quot; id=&quot;img_26bc4c30-f9ff-11e6-af71-f51b3aae1f33&quot; w=&quot;640&quot; h=&quot;426&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 12.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 12.&quot; rel=&quot;lightbox&quot; photoid=&quot;26bc4c30-f9ff-11e6-af71-f51b3aae1f33&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a7-2-1487878528412.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 6: Phá cách với màu sắc/ kiểu dáng&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Những ngày lạnh lẽo sẽ trở lên ấm áp và bớt u ám hơn nếu bạn mạnh dạn trong việc lựa chọn màu sắc cho những bộ đồ layer của mình. Hãy thử mặc những màu mà trước đây bạn chưa từng mặc. Một chút tinh ý và thẩm mỹ sẽ giúp bạn tạo được những bộ cánh tông-xuyệt-tông nhất.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-1487878631750.jpg&quot; id=&quot;img_64abdba0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;640&quot; h=&quot;960&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 13.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;64abdba0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-1487878631750.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a8-4-1487878631745.jpg&quot; id=&quot;img_65014ea0-f9ff-11e6-b49a-e10163e92f04&quot; w=&quot;640&quot; h=&quot;426&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 14.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;65014ea0-f9ff-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a8-4-1487878631745.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Quy tắc 7: Chìa khoá nằm ở khăn choàng và áo khoác dáng dài&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Khăn choàng to bản, áo khoác dáng dài sẽ là món đồ kết thúc set layer của bạn một cách hoàn hảo và tinh tế nhất. Đây cũng là món đồ được sử dụng nhiều trong set đồ layer. Sẽ thật nữ tính và thời trang khi chọn cho mình một chiếc khăn choàng họa tiết để có thể phối chung với nhiều kiểu quần áo khác nhau.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/a4-1487877349412.jpg&quot; id=&quot;img_677f7560-f9fc-11e6-9824-2dfbc8fe5943&quot; w=&quot;600&quot; h=&quot;413&quot; alt=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 15.&quot; title=&quot;7 quy tắc mặc đồ nhiều tầng lớp giúp bạn vừa đủ ấm lại vừa thời trang - Ảnh 15.&quot; rel=&quot;lightbox&quot; photoid=&quot;677f7560-f9fc-11e6-9824-2dfbc8fe5943&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/a4-1487877349412.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(56,1,'Footwear Trends 2017: The era of the design &quot;dirt cake&quot; to tie knots','&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Không thể phủ nhận rằng, thời trang năm 2017 đang thể hiện một bước chuyển mình rõ rệt khi phong cách thời trang có phần nữ tính và điệu đà càng lúc lại càng lên ngôi. Đâu đâu ta cũng dễ dàng có thể thấy những chi tiết như bèo nhún, đính lông, thêu thùa… cho tới những chất liệu tương đối &quot;lộng lẫy&quot; như lụa, nhung, satin… Bổ sung vào danh sách này chính là chi tiết thắt nơ, mà tiêu biểu nhất là ở những đôi giày thanh lịch, nữ tính.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1487576433550.jpg&quot; id=&quot;img_ddb9a3f0-f73f-11e6-896b-17b31d47e829&quot; w=&quot;1920&quot; h=&quot;2379&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 1.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;ddb9a3f0-f73f-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487576433550.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-1-1487576433547.jpg&quot; id=&quot;img_dd7a9f20-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;844&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 2.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 2.&quot; rel=&quot;lightbox&quot; photoid=&quot;dd7a9f20-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1-1487576433547.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Có thể nhận định rằng, những đôi giày mang chi tiết thắt nơ là món đồ phụ kiện &quot;kế thừa&quot; những đôi giày buộc dây, giày ballet… nổi đình nổi đám trong năm 2016. Nét nữ tính khó lòng chối từ cùng sự kết hợp vô cùng đa dạng là những gì chúng ta dễ dàng nhận thấy với những đôi giày này. Chúng xuất hiện dưới mọi hình thức: từ những đôi giày cao gót kiêu kì, tới những đôi oxforts thanh lịch, những đôi dép bệt tiện dụng và thậm chí với cả những đôi giày thể thao năng động. Chi tiết thắt nơ thường được xuất hiện dưới dạng bản nơ to cách điệu, nhằm đem tới sự thanh lịch tối đa nhưng vẫn đảm bảo nét duyên dáng đặc trưng.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/1-6-1487577002762.jpg&quot; id=&quot;img_313f0f50-f741-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;999&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 3.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;313f0f50-f741-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-6-1487577002762.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-3-1487576433558.jpg&quot; id=&quot;img_de8fdfb0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;640&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 4.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;de8fdfb0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-3-1487576433558.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487576433556.jpg&quot; id=&quot;img_de643bd0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;564&quot; h=&quot;564&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 5.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;de643bd0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487576433556.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-1-1487576433555.jpg&quot; id=&quot;img_de36c330-f73f-11e6-91a9-91ce504d7dc6&quot; w=&quot;1020&quot; h=&quot;1530&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 6.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;de36c330-f73f-11e6-91a9-91ce504d7dc6&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1-1487576433555.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1487576433559.jpg&quot; id=&quot;img_dead04a0-f73f-11e6-b49a-e10163e92f04&quot; w=&quot;931&quot; h=&quot;1400&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 7.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;dead04a0-f73f-11e6-b49a-e10163e92f04&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1487576433559.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode active noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-6-1487576433561.jpg&quot; id=&quot;img_deed1ae0-f73f-11e6-896b-17b31d47e829&quot; w=&quot;931&quot; h=&quot;1400&quot; alt=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 8.&quot; title=&quot;Xu hướng giày dép 2017: Thời đại của những thiết kế bánh bèo thắt nơ - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;deed1ae0-f73f-11e6-896b-17b31d47e829&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-6-1487576433561.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;&quot; style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Phong cách tinh tế của những đôi giày thắt nơ là điểm nhấn vô cùng đắt giá dành cho bất kì quý cô nào theo đuổi phong cách thời thượng, nữ tính. Đối với những đôi giày thể thao, giày thắt nơ sẽ tạo nên sự tương phản vô cùng cuốn hút giữa nét cá tính, năng động của kiểu giày với sự nền nã, thanh lịch của chi tiết. Không chỉ vậy, sự kết hợp của những đôi giày thắt nơ với những chất liệu hút mắt như nhung, satin… cùng những tông màu đang &quot;sốt sình sịch&quot; như hồng vàng, Khaki, Caramel… sẽ lại càng đem tới vẻ ngoài lôi cuốn, tô đậm phong cách cho các quý cô.&lt;/p&gt;','','','',''),(54,1,'5 alternative color options for the office her &quot;addiction&quot; black','&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn có thể mặc đồ đen trong bất cứ hoàn cảnh nào. Chính vì biết chiều lòng các cô gái như vậy nên không ngạc nhiên chút nào khi đại đa số các quý cô ngày nay đều chọn màu đen làm bạn đồng hành lâu dài của mình trong tủ quần áo. Tuy nhiên đừng chỉ gói gọn hình ảnh của mình chỉ với một màu đen cơ bản. Những cô nàng &quot;nghiền&quot; màu đen như bạn vẫn có những lựa chọn khác thay thế mà vẫn đảm bảo đầy đủ sự thanh lịch và tinh tế cần thiết.&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Màu xanh navy&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Nếu như đen mang lại sự kinh điển đến truyền thống thì màu xanh navy vẫn là tông màu cơ bản nhưng lại thiên về sự trẻ trung, nền nã hơn cho người mặc. Tông màu xanh vừa trung tính vừa khá sạch sẽ, không quá nổi bật nhưng vẫn khiến bạn thật đặc biệt và thu hút. Luôn chứa đựng trong màu sắc là một sự tinh tế nhất định, màu xanh với các sắc độ khác nhau chinh phục mọi quý cô vốn dĩ luôn chuộng sắc đen kinh điển.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption active&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-1487177287295.jpg&quot; id=&quot;img_8e137140-f39e-11e6-af8b-61d52144282b&quot; w=&quot;736&quot; h=&quot;1104&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 1.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 1.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e137140-f39e-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-1487177287295.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-3-1487177287285.jpg&quot; id=&quot;img_8e66c160-f39e-11e6-af8b-61d52144282b&quot; w=&quot;2000&quot; h=&quot;1333&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 3.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 3.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e66c160-f39e-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-3-1487177287285.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/1-4-1487177287290.jpg&quot; id=&quot;img_8e95c0a0-f39e-11e6-a2b1-3d0c8270f085&quot; w=&quot;728&quot; h=&quot;1024&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 4.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 4.&quot; rel=&quot;lightbox&quot; photoid=&quot;8e95c0a0-f39e-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/1-4-1487177287290.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1483979773069-1487179207658.jpg&quot; id=&quot;img_05d19960-f3a3-11e6-a2b1-3d0c8270f085&quot; w=&quot;650&quot; h=&quot;974&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 5.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 5.&quot; rel=&quot;lightbox&quot; photoid=&quot;05d19960-f3a3-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1483979773069-1487179207658.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Màu camel/màu nâu&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Bạn có thể xếp màu camel vào trong bảng màu trung tính cùng trắng, đen, xám… bởi lẽ ở màu camel, bạn không thấy ánh lên sắc màu nóng hay lạnh của một gam màu đơn tính thông thường. Có lẽ cũng vì vậy nên camel rất dễ để bạn kết hợp với bất cứ sắc màu nào khác trong palette màu tự nhiên. Nếu như bạn chưa thử mặc những áo sweater, quần skinny camel thì bạn có thể bắt đầu với một chiếc áo khoác camel cũng ổn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-4-1487177983644.jpg&quot; id=&quot;img_2cc6ecd0-f3a0-11e6-a2b1-3d0c8270f085&quot; w=&quot;2048&quot; h=&quot;1394&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 6.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 6.&quot; rel=&quot;lightbox&quot; photoid=&quot;2cc6ecd0-f3a0-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-4-1487177983644.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/2-6-1487177983660.jpg&quot; id=&quot;img_2d22c870-f3a0-11e6-af8b-61d52144282b&quot; w=&quot;1000&quot; h=&quot;1179&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 7.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 7.&quot; rel=&quot;lightbox&quot; photoid=&quot;2d22c870-f3a0-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-6-1487177983660.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-1487177865171.jpg&quot; id=&quot;img_e64f86e0-f39f-11e6-af8b-61d52144282b&quot; w=&quot;620&quot; h=&quot;938&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 8.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 8.&quot; rel=&quot;lightbox&quot; photoid=&quot;e64f86e0-f39f-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-1487177865171.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/2-2-1487177865164.jpg&quot; id=&quot;img_e6bcc7a0-f39f-11e6-9d4b-1df8ff47a61d&quot; w=&quot;620&quot; h=&quot;929&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 9.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 9.&quot; rel=&quot;lightbox&quot; photoid=&quot;e6bcc7a0-f39f-11e6-9d4b-1df8ff47a61d&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/2-2-1487177865164.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Màu ghi xám&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Màu ghi không phô trương mà cũng không ảm đạm, sự mờ mờ nền nã ấy khiến người ta xiêu lòng bởi nét quyến rũ rất riêng, nữ tính nhẹ nhàng. Mặc dù từ lâu vốn dĩ nó là gam màu dành riêng cho mùa lạnh nhưng chính sự linh hoạt, biến hóa đến tài tình mà dần dần nó trở thành một gam màu cần có trong bất kỳ hoàn cảnh cũng như mùa thời trang nào trong năm. Với sự ổn định và tinh tế của mình, màu ghi xám dường như là một đại diện hoàn hảo, hiện thân cho một màu đen hoàn toàn mới.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/4-1487178153283.jpg&quot; id=&quot;img_92c093b0-f3a0-11e6-b433-e7450d5b93a9&quot; w=&quot;2592&quot; h=&quot;1728&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 10.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 10.&quot; rel=&quot;lightbox&quot; photoid=&quot;92c093b0-f3a0-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-1487178153283.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-2-1487178153273.png&quot; id=&quot;img_93148010-f3a0-11e6-9d4b-1df8ff47a61d&quot; w=&quot;630&quot; h=&quot;400&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 11.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 11.&quot; rel=&quot;lightbox&quot; photoid=&quot;93148010-f3a0-11e6-9d4b-1df8ff47a61d&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-2-1487178153273.png&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-4-1487178227725.jpg&quot; id=&quot;img_be1198c0-f3a0-11e6-a2b1-3d0c8270f085&quot; w=&quot;600&quot; h=&quot;839&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 13.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 13.&quot; rel=&quot;lightbox&quot; photoid=&quot;be1198c0-f3a0-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-4-1487178227725.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/4-5-1487178227736.jpg&quot; id=&quot;img_be54e350-f3a0-11e6-b433-e7450d5b93a9&quot; w=&quot;600&quot; h=&quot;400&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 14.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 14.&quot; rel=&quot;lightbox&quot; photoid=&quot;be54e350-f3a0-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/4-5-1487178227736.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Màu xanh rêu/ xanh lá úa&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Màu xanh rêu không mới mẻ nhưng cũng vẫn còn xa lạ với đại đa số các cô gái vốn ưa thích những màu sắc cơ bản. Sắc xanh rêu được ưa chuộng và đưa vào bảng màu thay thế cho màu đen vì những lẽ: không đơn điệu như màu sắc trung tính mà bắt mắt nhẹ nhàng, nữ tính. Hơn thế nữa, với một chiếc áo khoác, blazer màu xanh rêu bạn sẽ thấy phong cách của mình được nhấn nhá lạ mắt hơn thường ngày. Bạn cũng có thể sử dụng các sắc độ khác nhau của màu xanh rêu để tạo ra một set đồ layering cuốn hút.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-1487178404068.jpg&quot; id=&quot;img_27966230-f3a1-11e6-af8b-61d52144282b&quot; w=&quot;600&quot; h=&quot;902&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 15.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 15.&quot; rel=&quot;lightbox&quot; photoid=&quot;27966230-f3a1-11e6-af8b-61d52144282b&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-1487178404068.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/batch-lho-3153-1486828347362-1487178404075.jpg&quot; id=&quot;img_28072560-f3a1-11e6-a2b1-3d0c8270f085&quot; w=&quot;650&quot; h=&quot;975&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 16.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 16.&quot; rel=&quot;lightbox&quot; photoid=&quot;28072560-f3a1-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/batch-lho-3153-1486828347362-1487178404075.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 610px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/5-5-1487178498139.jpg&quot; id=&quot;img_5f345c10-f3a1-11e6-b433-e7450d5b93a9&quot; w=&quot;564&quot; h=&quot;848&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 18.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 18.&quot; rel=&quot;lightbox&quot; photoid=&quot;5f345c10-f3a1-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/5-5-1487178498139.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 544px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 544px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. Màu đỏ rượu&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;Hay có cái tên mỹ miều vẫn được các fashionista ưa gọi là burgundy. Sắc đỏ không hề tươi mà trầm sâu như một nốt nhạc buồn. Nhưng chính vì sự khiêm nhường không quá chói lọi này của màu đỏ rượu mà dường như các icon thời trang đều dành dụm một vị trí trong tủ đồ của mình cho sắc màu này. Từ những chiếc áo, quần cho đến phụ kiện như khăn, giày, túi, màu đỏ rượu đều có thể biến hoá đẹp đẽ cho bạn nhiều lựa chọn.&lt;/p&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-1487179053780.jpg&quot; id=&quot;img_ab571000-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;640&quot; h=&quot;960&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 19.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 19.&quot; rel=&quot;lightbox&quot; photoid=&quot;ab571000-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-1487179053780.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/2017/6-2-1487179053758.jpg&quot; id=&quot;img_ab8a2df0-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;600&quot; h=&quot;901&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 20.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 20.&quot; rel=&quot;lightbox&quot; photoid=&quot;ab8a2df0-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-2-1487179053758.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 580px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 580px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/6-4-1487179053766.jpg&quot; id=&quot;img_abbef990-f3a2-11e6-a2b1-3d0c8270f085&quot; w=&quot;960&quot; h=&quot;960&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 21.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 21.&quot; rel=&quot;lightbox&quot; photoid=&quot;abbef990-f3a2-11e6-a2b1-3d0c8270f085&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-4-1487179053766.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;PhotoCMS_Caption&quot; style=&quot;margin: auto; padding: 0px; font-style: italic; width: 590px;&quot;&gt;&lt;p data-placeholder=&quot;[nhập chú thích]&quot; class=&quot;NLPlaceholderShow&quot; style=&quot;margin: 5px; padding: 0px; line-height: 20px; width: 590px; font-size: 12pt !important;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;VCSortableInPreviewMode noCaption&quot; type=&quot;Photo&quot; style=&quot;margin: 0px auto 22px; padding: 0px; text-align: center; width: 610px; color: rgb(51, 51, 51); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: 16px; -webkit-text-stroke: 0.1px rgba(255, 255, 255, 0.00784314);&quot;&gt;&lt;div style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://afamilycdn.com/thumb_w/650/2017/6-5-1487179053772.jpg&quot; id=&quot;img_abf46170-f3a2-11e6-b433-e7450d5b93a9&quot; w=&quot;790&quot; h=&quot;535&quot; alt=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 22.&quot; title=&quot;5 lựa chọn màu sắc thay thế cho nàng công sở nghiện đồ đen - Ảnh 22.&quot; rel=&quot;lightbox&quot; photoid=&quot;abf46170-f3a2-11e6-b433-e7450d5b93a9&quot; type=&quot;photo&quot; data-original=&quot;http://afamilycdn.com/2017/6-5-1487179053772.jpg&quot; width=&quot;&quot; height=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border-width: initial; border-style: none; outline: none; -webkit-appearance: none; max-width: 100%; vertical-align: bottom;&quot;&gt;&lt;/div&gt;&lt;/div&gt;','','','','');
/*!40000 ALTER TABLE `oc_news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_news_image`
--

DROP TABLE IF EXISTS `oc_news_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_image` (
  `news_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_image_id`),
  KEY `product_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2375 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_news_image`
--

LOCK TABLES `oc_news_image` WRITE;
/*!40000 ALTER TABLE `oc_news_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_news_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_news_related`
--

DROP TABLE IF EXISTS `oc_news_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_related` (
  `news_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_news_related`
--

LOCK TABLES `oc_news_related` WRITE;
/*!40000 ALTER TABLE `oc_news_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_news_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_news_to_category`
--

DROP TABLE IF EXISTS `oc_news_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_to_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_news_to_category`
--

LOCK TABLES `oc_news_to_category` WRITE;
/*!40000 ALTER TABLE `oc_news_to_category` DISABLE KEYS */;
INSERT INTO `oc_news_to_category` VALUES (54,60),(54,62),(55,60),(55,68),(56,60),(57,60),(57,62),(58,60),(58,62),(59,60),(59,62),(60,60),(60,67);
/*!40000 ALTER TABLE `oc_news_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(1,2,'Radio'),(2,2,'Checkbox'),(4,2,'Text'),(6,2,'Textarea'),(8,2,'Date'),(7,2,'File'),(5,2,'Select'),(9,2,'Time'),(10,2,'Date &amp; Time'),(12,2,'Delivery Date'),(11,2,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(43,2,1,'Large'),(32,2,1,'Small'),(45,2,2,'Checkbox 4'),(44,2,2,'Checkbox 3'),(31,2,1,'Medium'),(42,2,5,'Yellow'),(41,2,5,'Green'),(39,2,5,'Red'),(40,2,5,'Blue'),(23,2,2,'Checkbox 1'),(24,2,2,'Checkbox 2'),(48,2,11,'Large'),(47,2,11,'Medium'),(46,2,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (7,1,'Canceled'),(11,1,'Refunded'),(12,1,'Reversed'),(2,2,'Đang xử lý'),(3,2,'Đã vận chuyển'),(7,2,'Hủy bỏ'),(5,2,'Hoàn thành'),(8,2,'Bị tự chối'),(9,2,'Hủy bỏ không thành công'),(10,2,'Không thành công'),(11,2,'Hoàn lại'),(12,2,'Trả lại'),(1,2,'Chưa xử lý'),(15,2,'Đã xử lý'),(14,2,'Hết hạn'),(5,1,'Complete'),(14,1,'Expired'),(10,1,'Failed'),(8,1,'Denied'),(2,1,'Processing'),(15,1,'Processed'),(1,1,'Pending'),(3,1,'Shipped'),(9,1,'Canceled Reversal');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (28,'Product 1','','','','','','','',939,7,'catalog/san-pham/thoi-trang-em-be/bominionTRANG.jpg',7,1,150000.0000,200,0,'2009-02-03',0.00000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:06:50','2017-02-11 12:29:30'),(29,'Product 2','','','','','','','',999,6,'catalog/san-pham/thoi-trang-nu/1BW8BVHY3Q-avt2.jpg',6,1,300000.0000,0,0,'2009-02-03',0.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,0,'2009-02-03 16:42:17','2017-02-11 11:31:41'),(30,'Product 3','','','','','','','',7,6,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaido.jpg',9,1,100000.0000,0,0,'2017-02-11',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:59:00','2017-02-11 10:14:08'),(31,'Product 4','','','','','','','',1000,5,'catalog/san-pham/ao-khoac-nam-2781-1.jpg',0,1,450000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,3,1,1,0,1,0,'2009-02-03 17:00:10','2017-02-11 10:42:54'),(32,'Product 5','','','','','','','',999,6,'catalog/san-pham/quan-jean-nam-2761-1.jpg',8,1,500000.0000,0,0,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 17:07:26','2017-02-11 10:46:03'),(33,'Product 6','','','','','','','',1000,6,'catalog/san-pham/thoi-trang-nu/YRSYBXZII6-avt.jpg',0,1,700000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 17:08:31','2017-02-11 11:44:04'),(34,'Product 7','','','','','','','',1000,6,'catalog/san-pham/ao-so-mi-nam-2802-1.jpg',8,1,250000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:07:54','2017-02-11 10:44:10'),(35,'Product 8','','','','','','','',1000,5,'catalog/san-pham/thoi-trang-nu/T1GLNN54KG-avt.jpg',6,0,350000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 18:08:31','2017-02-11 11:33:37'),(36,'Product 9','','','','','','','',994,6,'catalog/san-pham/thoi-trang-em-be/bominionxanh.jpg',8,0,300000.0000,100,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:09:19','2017-02-11 12:29:21'),(40,'product 11','','','','','','','',969,5,'catalog/san-pham/thoi-trang-em-be/quanleggingtrang-500x500.jpg',8,1,160000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2009-02-03 21:07:12','2017-02-11 10:11:47'),(41,'Product 14','','','','','','','',977,5,'catalog/san-pham/thoi-trang-em-be/damthunganxetaXANHNGOC.jpg',6,1,250000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:26','2017-02-11 10:14:24'),(42,'Product 15','','','','','','','',988,7,'catalog/san-pham/ao-khoac-da-nam-2790-1.jpg',8,0,250000.0000,0,0,'2017-01-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:37','2017-02-11 10:20:18'),(43,'Product 16','','','','','','','',929,5,'catalog/san-pham/ao-so-mi-nam-2804-1.jpg',8,0,300000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:07:49','2017-02-11 10:49:24'),(44,'Product 17','','','','','','','',1000,5,'catalog/san-pham/thoi-trang-em-be/bominiondo.jpg',8,1,400000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:00','2017-02-11 10:47:59'),(45,'Product 18','','','','','','','',998,5,'catalog/san-pham/thoi-trang-nu/01W8FCSVRW-avt.jpg',8,1,600000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:17','2017-02-11 11:29:44'),(46,'Product 19','','','','','','','',1000,5,'catalog/san-pham/thoi-trang-nu/8TR4BC890Y-avt.jpg',10,1,550000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:29','2017-02-11 11:45:49'),(47,'Product 21','','','','','','','',1000,5,'catalog/san-pham/thoi-trang-em-be/aothunganDEN.jpg',5,1,200000.0000,400,0,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2009-02-03 21:08:40','2017-02-11 10:14:13'),(48,'product 20','test 1','','','','','','test 2',995,5,'catalog/san-pham/thoi-trang-em-be/setyemjeanwashtim1.jpg',8,1,350000.0000,0,0,'2009-02-08',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-08 17:21:51','2017-02-11 10:13:48'),(49,'SAM1','','','','','','','',12,8,'catalog/san-pham/thoi-trang-nu/XNEKPBNTW7-avt1.jpg',0,1,200000.0000,0,0,'2011-04-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:34','2017-02-11 11:35:54'),(50,'WF 07','','','','','','','',110,6,'catalog/san-pham/thoi-trang-nu/LPYFRERFCI-320_crop_bo_do_thu_dong_nu.jpg',6,1,250000.0000,0,0,'2017-02-11',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2017-02-11 12:31:46','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (48,1,'Fashion baby 6','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Fashion baby 6','',''),(40,1,'Fashion baby 5','&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','','Fashion baby 5','',''),(28,1,'Fashion baby 3','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Fashion baby 3','',''),(44,2,'Thời trang nam 05','&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','','Thời trang nam 05','',''),(45,1,'Women fashion 01','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Women fashion 01','',''),(29,1,'Women Fashion 02','&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Women Fashion 02','',''),(36,1,'Fashion baby 7','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Fashion baby 7','',''),(46,1,'Fashion Ladies 06','&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','','Fashion Ladies 06','',''),(47,1,'Fashion baby 2','&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n','','Fashion baby 2','',''),(32,1,'Men fashion 04','&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n','','Men fashion 04','',''),(41,2,'Thời trang em bé 4','&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','','Thời trang em bé 4','',''),(33,1,'Fashion Ladies 05','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','','Fashion Ladies 05','',''),(34,1,'Male fashion 03','&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Male fashion 03','',''),(43,1,'Men fashion 06','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Men fashion 06','',''),(31,1,'Men fashion 02','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Men fashion 02','',''),(49,1,'Fashion Ladies 04','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n','','Fashion Ladies 04','',''),(35,1,'Fashion Ladies 03','&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n','','Fashion Ladies 03','',''),(50,2,'Thời trang nữ 07','&lt;p&gt;Thời trang nữ 07&lt;br&gt;&lt;/p&gt;','','Thời trang nữ 07','',''),(50,1,'Fashion Ladies 07','&lt;p&gt;Fashion Ladies 07&lt;br&gt;&lt;/p&gt;','','Fashion Ladies 07','',''),(30,2,'Thời trang em bé 1','&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n','','Thời trang em bé 1','',''),(35,2,'Thời trang nữ 03','&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n','','Thời trang nữ 03','',''),(48,2,'Thời trang em bé 6','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Thời trang em bé 6','',''),(40,2,'Thời trang em bé 5','&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','','Thời trang em bé 5','',''),(28,2,'Thời trang em bé 3','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Thời trang em bé 3','',''),(44,1,'Men fashion 05','&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','','Men fashion 05','',''),(45,2,'Thời trang nữ 01','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Thời trang nữ 01','',''),(29,2,'Thời trang nữ 02','&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Thời trang nữ 02','',''),(36,2,'Thời trang em bé 7','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Thời trang em bé 7','',''),(46,2,'Thời trang nữ 06','&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','','Thời trang nữ 06','',''),(47,2,'Thời trang em bé 2','&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n','','Thời trang em bé 2','',''),(32,2,'Thời trang nam 04','&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n','','Thời trang nam 04','',''),(41,1,'Fashion baby 4','&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','','Fashion baby 4','',''),(33,2,'Thời trang nữ 05','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','','Thời trang nữ 05','',''),(34,2,'Thời trang nam 03','&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Thời trang nam 03','',''),(43,2,'Thời trang nam 06','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Thời trang nam 06','',''),(31,2,'Thời trang nam 02','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Thời trang nam 02','',''),(49,2,'Thời trang nữ 04','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n','','Thời trang nữ 04','',''),(42,2,'Thời trang nam 01','&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Đối với những chiếc đầm ghi-lê bình thường mang lại vẻ đứng đắn cho người mặc thì những chiếc ghi- lê cách điệu với việc phối 2 túi bên hông sẽ tạo nét duyên dáng hơn cho người mặc.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Mùa xuân là mùa hoa cỏ đua nhau khoe sắc nên con người ta cũng đua nhau trưng diện bằng những &amp;nbsp;“bộ cánh” rực rỡ. Nếu bạn trẻ trung, năng động, muốn tạo cho mình sự tươi mới vào những ngày se lạnh đầu năm thì hãy phối 1 chiếc ĐẦM DẠ GHI-LÊ CÁCH ĐIỆU màu cam với 1 chiếc áo thun đen dài tay.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Bộ trang phục này sẽ vừa có tác dụng giữ ấm, vừa thể hiện được tính cách của bạn, khiến người nhìn phải dõi mắt theo từng bước chân của bạn.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Nếu bạn là người co làn da trắng hồng và thích sự đứng đắn, chính chắn trong bộ trang phục nhưng vẫn giữ được nét trẻ trung thì hãy chọn mẫu ĐẦM ĐẦM DẠ GHI-LÊ màu đen nhé.&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','Thời trang nam 01','',''),(42,1,'Men Fashion 01','&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;For record-crystal dresses normally bring dignity to the wearer, the stylized pear ghi- the coordination 2 pockets on the sides will create more charm to the wearer.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Spring is the season of blooming flowers should humans have also competed in the display area &quot;wings&quot; brilliant. If you are young, energetic, want to create their own freshness into the chilly early days then 1 gowns distribution LE RECORD-1 stylized orange with black long-sleeved T-shirt.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;This outfit will just serve to keep warm, just express your personality, making people look to their eyes follow your footsteps.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;If you are the pink and white skin contraction like decency, maturity in costume but retains its youth, then select dress patterns recorded black-LE offline.&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','Men Fashion 01','',''),(30,1,'Fashion baby 1','&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n','','Fashion baby 1','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2624 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2560,40,'catalog/san-pham/thoi-trang-em-be/damxetakhoetvaiden.jpg',0),(2620,36,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaihong.jpg',0),(2588,34,'catalog/san-pham/ao-so-mi-nam-2794-1.jpg',0),(2592,32,'catalog/san-pham/ao-khoac-nam-du-2-mat-2771-1.jpg',0),(2602,43,'catalog/san-pham/ao-khoac-nam-2781-1.jpg',0),(2598,44,'catalog/san-pham/ao-so-mi-cap-2795-1.jpg',0),(2607,45,'catalog/san-pham/thoi-trang-nu/2HNMPMVFW0-avt1.jpg',0),(2584,31,'catalog/san-pham/ao-so-mi-nam-2802-1.jpg',0),(2608,29,'catalog/san-pham/thoi-trang-nu/8TR4BC890Y-avt.jpg',0),(2606,45,'catalog/san-pham/thoi-trang-nu/1BW8BVHY3Q-avt2.jpg',0),(2564,48,'catalog/san-pham/thoi-trang-em-be/aothungancamsua.jpg',0),(2569,47,'catalog/san-pham/thoi-trang-em-be/aothungantrang.jpg',0),(2622,28,'catalog/san-pham/thoi-trang-em-be/bominionvang.jpg',0),(2573,41,'catalog/san-pham/thoi-trang-em-be/damxetakhoetvaiden.jpg',0),(2561,40,'catalog/san-pham/thoi-trang-em-be/bominionxanh.jpg',0),(2618,36,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaido.jpg',0),(2587,34,'catalog/san-pham/ao-so-mi-nam-2785-1.jpg',0),(2591,32,'catalog/san-pham/ao-khoac-nam-2781-1.jpg',0),(2590,32,'catalog/san-pham/ao-khoac-da-nam-2790-1.jpg',0),(2600,43,'catalog/san-pham/ao-so-mi-nam-2785-1.jpg',0),(2597,44,'catalog/san-pham/ao-so-mi-nam-2803-1.jpg',0),(2583,31,'catalog/san-pham/ao-so-mi-nam-2785-1.jpg',0),(2566,30,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaihong.jpg',0),(2567,30,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaixanhngoc.jpg',0),(2613,49,'catalog/san-pham/thoi-trang-nu/WF1AC2IU1Y-avt.jpg',0),(2612,49,'catalog/san-pham/thoi-trang-nu/8TR4BC890Y-avt.jpg',0),(2581,42,'catalog/san-pham/ao-khoac-nam-2796-1.jpg',0),(2580,42,'catalog/san-pham/ao-khoac-nam-2781-1.jpg',0),(2579,42,'catalog/san-pham/ao-khoac-nam-du-2-mat-2771-1.jpg',0),(2578,42,'catalog/san-pham/ao-khoac-nam-kaki-2805-1.jpg',0),(2570,47,'catalog/san-pham/thoi-trang-em-be/aothungandodo.jpg',0),(2621,28,'catalog/san-pham/thoi-trang-em-be/bominiondo.jpg',0),(2559,40,'catalog/san-pham/thoi-trang-em-be/quanleggingxam.jpg',0),(2565,48,'catalog/san-pham/thoi-trang-em-be/bominionxanh.jpg',0),(2563,48,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaido.jpg',0),(2619,36,'catalog/san-pham/thoi-trang-em-be/aonokhoetvaixanhngoc.jpg',0),(2586,34,'catalog/san-pham/ao-so-mi-nam-2803-1.jpg',0),(2585,34,'catalog/san-pham/ao-so-mi-nam-2786-1.jpg',0),(2589,32,'catalog/san-pham/ao-khoac-nam-mang-to-2806-1.jpg',0),(2601,43,'catalog/san-pham/ao-khoac-da-nam-2790-1.jpg',0),(2599,43,'catalog/san-pham/ao-so-mi-nam-2802-1.jpg',0),(2596,44,'catalog/san-pham/ao-so-mi-nam-2785-1.jpg',0),(2582,31,'catalog/san-pham/ao-so-mi-nam-2803-1.jpg',0),(2609,29,'catalog/san-pham/thoi-trang-nu/LDRG4ZGJ2O-avt.jpg',0),(2568,47,'catalog/san-pham/thoi-trang-em-be/aothungancamsua.jpg',0),(2574,41,'catalog/san-pham/thoi-trang-em-be/damthunganxetacamsua.jpg',0),(2562,40,'catalog/san-pham/thoi-trang-em-be/aothungantrang.jpg',0),(2610,35,'catalog/san-pham/thoi-trang-nu/LMW6S7OCW8-avt.jpg',0),(2611,35,'catalog/san-pham/thoi-trang-nu/P9Z7KZDQ6B-avt.jpg',0),(2614,33,'catalog/san-pham/thoi-trang-nu/LDRG4ZGJ2O-avt.jpg',0),(2615,33,'catalog/san-pham/thoi-trang-nu/WF1AC2IU1Y-avt.jpg',0),(2616,46,'catalog/san-pham/thoi-trang-nu/SCFZAS6PQ1-avt1.jpg',0),(2617,46,'catalog/san-pham/thoi-trang-nu/TPPY9WW012-avt.jpg',0),(2623,50,'catalog/san-pham/thoi-trang-nu/SCFZAS6PQ1-avt1.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (28,30),(28,36),(28,40),(28,47),(29,35),(29,45),(30,28),(30,36),(30,47),(31,42),(33,45),(34,42),(35,29),(35,45),(36,28),(36,30),(36,41),(36,47),(40,28),(40,42),(40,47),(41,36),(41,42),(42,31),(42,34),(42,40),(42,41),(45,29),(45,33),(45,35),(47,28),(47,30),(47,36),(47,40),(47,47);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=580 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (579,44,1,700);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (453,42,1,1,90000.0000,'2017-01-22','2017-03-10');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (28,30),(28,33),(30,30),(31,25),(31,33),(32,25),(32,33),(33,17),(33,20),(34,25),(34,33),(35,20),(35,25),(36,25),(36,30),(40,25),(40,30),(41,25),(41,30),(42,25),(42,33),(43,20),(43,25),(43,33),(44,25),(44,33),(45,25),(46,20),(46,25),(47,30),(48,25),(48,30),(49,17),(49,20),(49,57);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (42,0,0),(30,0,0),(47,0,0),(28,0,0),(41,0,0),(40,0,0),(48,0,0),(49,0,0),(46,0,0),(31,0,0),(36,0,0),(34,0,0),(32,0,0),(43,0,0),(44,0,0),(29,0,0),(35,0,0),(33,0,0),(45,0,0),(50,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent'),(1,2,'Refunded'),(2,2,'Credit Issued'),(3,2,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details'),(1,2,'Dead On Arrival'),(2,2,'Received Wrong Item'),(3,2,'Order Error'),(4,2,'Faulty, please supply details'),(5,2,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products'),(1,2,'Pending'),(3,2,'Complete'),(2,2,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123457070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (843,0,'basic_captcha','basic_captcha_status','1',0),(2659,0,'config','config_file_max_size','300000',0),(2660,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(2652,0,'config','config_seo_url','1',0),(2653,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(123456999,0,'config','config_subcategory_left','20',0),(4,0,'voucher','voucher_sort_order','8',0),(5,0,'voucher','voucher_status','1',0),(2662,0,'config','config_error_display','1',0),(2663,0,'config','config_error_log','1',0),(2664,0,'config','config_error_filename','error.log',0),(2654,0,'config','config_compression','0',0),(2655,0,'config','config_secure','1',0),(2656,0,'config','config_password','1',0),(2657,0,'config','config_shared','0',0),(2658,0,'config','config_encryption','5ctD5NAl48OkbiP5GqI32IT87T4mZiNcxl5sw7wTPXmhQVG56lHpfK3wnRcYQrHHkMCfbbu5siEUaIqA1r3JeDiUYyuMAKEH5WjmH29qZrQ34TSku0P4M5nuSmeGLg9Bnh85U2rLBD2LRw2zuj8pxt3nvc89XQ6Gxd9cBWrTG0ZA1HEWCvEGJxngS4dKknmdRopUcOTc0dcvmMxgqAmPL1KHYBGHy1PFzNXIoly8q0Bg9WeDedoKjhefy5lLaepN9JqV2uHbITMb8BrkzErL4JSB09jG3WRQ6ENUWJwJmxD2WW0fSFZFZ0gTfEpHQaXMaq30bcVVbvvSxa7Gws1wYsOZV6IfzKcfxXsaVGqiEuUqKNRbyhJpRzjr6vp43T5oOIRHhKGjpFnTWWhMUjG3euuUkyHughqV54dXmkJFwjyfNlIXMSbdEUR6eJF53NJNNzCIGUyeK9tqwM2LqLCqyJ4b4B30Nef17gKwNjDRF4yL9i8e79Er6yddImXNZh3o40knOeRdGZXP5PSxjlhiGC0YLYvPDDZMMB8lKEpojkinu4hvEg9yPNAssaq7afndhHxe09jn47mvAbU5gjelgHcY6lNRQhodkVUJPaxeacFnyqXhiYQznDIeJ8bvsVq18rq5a0zA1Yd2hqpBzIiNXarDJx6BWvZwjc23gIg9r147Sxm2DPgyf1mcGVhZsxvnPdq6V5d7ZU0q2jTw6Rv2EIW5055ooWwP9vroPGh4MrbJeV2ERCiOFytjDDgxrEjFbgy8Gws5gj7ATo3YcBXi9Xp1Oa0oF1eYJqdZxStySneYREUlOfukTnuqpmAchX3CzTfNNjJzkdl7gtdmN9wVYMI5pCIx5WSnZLEX174Ts1BranVbXTCBa7MscESyui23fjgOk2Arbmb1jAcnwMJGTrT7c5weSbWOmzlMzFcd7e5iJckljg2B71wTppQBMpNyEyipKBFt5oJQfAEk1iiRsXVZxEnF0HRCjcIpLhgz4riAkWdgW1JIxhOSvA56bfCx',0),(2661,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(95,0,'free_checkout','free_checkout_status','1',0),(96,0,'free_checkout','free_checkout_order_status_id','1',0),(97,0,'shipping','shipping_sort_order','3',0),(98,0,'sub_total','sub_total_sort_order','1',0),(99,0,'sub_total','sub_total_status','1',0),(100,0,'tax','tax_status','1',0),(101,0,'total','total_sort_order','9',0),(102,0,'total','total_status','1',0),(103,0,'tax','tax_sort_order','5',0),(104,0,'free_checkout','free_checkout_sort_order','1',0),(105,0,'cod','cod_sort_order','5',0),(106,0,'cod','cod_total','0.01',0),(107,0,'cod','cod_order_status_id','1',0),(108,0,'cod','cod_geo_zone_id','0',0),(109,0,'cod','cod_status','1',0),(110,0,'shipping','shipping_status','1',0),(111,0,'shipping','shipping_estimator','1',0),(112,0,'coupon','coupon_sort_order','4',0),(113,0,'coupon','coupon_status','1',0),(114,0,'flat','flat_sort_order','1',0),(115,0,'flat','flat_status','1',0),(116,0,'flat','flat_geo_zone_id','0',0),(117,0,'flat','flat_tax_class_id','9',0),(118,0,'flat','flat_cost','5.00',0),(119,0,'credit','credit_sort_order','7',0),(120,0,'credit','credit_status','1',0),(121,0,'reward','reward_sort_order','2',0),(122,0,'reward','reward_status','1',0),(2671,0,'category','category_status','1',0),(124,0,'account','account_status','1',0),(822,0,'theme_default','theme_default_product_description_length','100',0),(842,0,'theme_default','theme_default_image_location_height','50',0),(841,0,'theme_default','theme_default_image_location_width','268',0),(840,0,'theme_default','theme_default_image_cart_height','47',0),(839,0,'theme_default','theme_default_image_cart_width','47',0),(838,0,'theme_default','theme_default_image_wishlist_height','47',0),(837,0,'theme_default','theme_default_image_wishlist_width','47',0),(836,0,'theme_default','theme_default_image_compare_height','90',0),(835,0,'theme_default','theme_default_image_compare_width','90',0),(834,0,'theme_default','theme_default_image_related_height','300',0),(833,0,'theme_default','theme_default_image_related_width','300',0),(832,0,'theme_default','theme_default_image_additional_height','400',0),(831,0,'theme_default','theme_default_image_additional_width','400',0),(830,0,'theme_default','theme_default_image_product_height','400',0),(829,0,'theme_default','theme_default_image_product_width','400',0),(828,0,'theme_default','theme_default_image_popup_height','500',0),(827,0,'theme_default','theme_default_image_popup_width','500',0),(826,0,'theme_default','theme_default_image_thumb_height','400',0),(825,0,'theme_default','theme_default_image_thumb_width','400',0),(150,0,'dashboard_activity','dashboard_activity_status','1',0),(151,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(152,0,'dashboard_sale','dashboard_sale_status','1',0),(153,0,'dashboard_sale','dashboard_sale_width','3',0),(154,0,'dashboard_chart','dashboard_chart_status','1',0),(155,0,'dashboard_chart','dashboard_chart_width','6',0),(156,0,'dashboard_customer','dashboard_customer_status','1',0),(157,0,'dashboard_customer','dashboard_customer_width','3',0),(158,0,'dashboard_map','dashboard_map_status','1',0),(159,0,'dashboard_map','dashboard_map_width','6',0),(160,0,'dashboard_online','dashboard_online_status','1',0),(161,0,'dashboard_online','dashboard_online_width','3',0),(162,0,'dashboard_order','dashboard_order_sort_order','1',0),(163,0,'dashboard_order','dashboard_order_status','1',0),(164,0,'dashboard_order','dashboard_order_width','3',0),(165,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(166,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(167,0,'dashboard_online','dashboard_online_sort_order','4',0),(168,0,'dashboard_map','dashboard_map_sort_order','5',0),(169,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(170,0,'dashboard_recent','dashboard_recent_status','1',0),(171,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(172,0,'dashboard_activity','dashboard_activity_width','4',0),(173,0,'dashboard_recent','dashboard_recent_width','8',0),(2651,0,'config','config_maintenance','0',0),(2650,0,'config','config_mail_alert_email','',0),(2649,0,'config','config_mail_alert','[\"order\"]',1),(2647,0,'config','config_mail_smtp_port','25',0),(2648,0,'config','config_mail_smtp_timeout','5',0),(2646,0,'config','config_mail_smtp_password','',0),(2645,0,'config','config_mail_smtp_username','',0),(2644,0,'config','config_mail_smtp_hostname','',0),(2643,0,'config','config_mail_parameter','',0),(2642,0,'config','config_mail_protocol','mail',0),(2641,0,'config','config_ftp_status','1',0),(2640,0,'config','config_ftp_root','',0),(2639,0,'config','config_ftp_password','Muahe2020a',0),(824,0,'theme_default','theme_default_image_category_height','170',0),(823,0,'theme_default','theme_default_image_category_width','170',0),(821,0,'theme_default','theme_default_product_limit','15',0),(820,0,'theme_default','theme_default_status','1',0),(819,0,'theme_default','theme_default_directory','wds',0),(2638,0,'config','config_ftp_username','phapnd',0),(2637,0,'config','config_ftp_port','21',0),(2636,0,'config','config_ftp_hostname','localhost',0),(2635,0,'config','config_icon','catalog/logo/logo.png',0),(2633,0,'config','config_captcha_page','[\"register\",\"review\",\"contact\"]',1),(2634,0,'config','config_logo','catalog/logo/logo.png',0),(2632,0,'config','config_captcha','basic_captcha',0),(2631,0,'config','config_return_status_id','2',0),(2630,0,'config','config_return_id','0',0),(2629,0,'config','config_affiliate_id','4',0),(2628,0,'config','config_affiliate_commission','5',0),(2627,0,'config','config_affiliate_auto','0',0),(2626,0,'config','config_affiliate_approval','0',0),(2625,0,'config','config_stock_checkout','0',0),(123457069,0,'change_color','change_color_link_hover','',0),(123457068,0,'change_color','change_color_bg_body_image_background_position','',0),(2624,0,'config','config_stock_warning','0',0),(2623,0,'config','config_stock_display','0',0),(123457062,0,'change_color','change_color_bg_copyright','',0),(123457063,0,'change_color','change_color_bg_body','ffffff',0),(123457064,0,'change_color','change_color_bg_body_background_image','',0),(123457065,0,'change_color','change_color_bg_body_image_background_repeat','',0),(123457066,0,'change_color','change_color_bg_body_image_background_size','',0),(2622,0,'config','config_api_id','3',0),(2621,0,'config','config_fraud_status_id','7',0),(2620,0,'config','config_complete_status','[\"5\",\"3\"]',1),(2619,0,'config','config_processing_status','[\"1\",\"5\",\"12\",\"3\",\"2\"]',1),(2618,0,'config','config_order_status_id','1',0),(2617,0,'config','config_checkout_id','5',0),(2616,0,'config','config_checkout_guest','1',0),(2615,0,'config','config_cart_weight','1',0),(2614,0,'config','config_invoice_prefix','INV-2013-00',0),(2613,0,'config','config_account_id','3',0),(2612,0,'config','config_login_attempts','5',0),(2611,0,'config','config_customer_price','0',0),(2610,0,'config','config_customer_group_display','[\"1\"]',1),(2609,0,'config','config_customer_group_id','1',0),(2608,0,'config','config_customer_search','0',0),(2607,0,'config','config_customer_activity','1',0),(2606,0,'config','config_customer_online','1',0),(2605,0,'config','config_tax_customer','shipping',0),(2604,0,'config','config_tax_default','shipping',0),(2603,0,'config','config_tax','0',0),(2602,0,'config','config_voucher_max','1000',0),(2601,0,'config','config_voucher_min','1',0),(2600,0,'config','config_review_guest','1',0),(2599,0,'config','config_review_status','1',0),(2598,0,'config','config_limit_admin','35',0),(2597,0,'config','config_product_count','1',0),(2596,0,'config','config_weight_class_id','1',0),(2595,0,'config','config_length_class_id','1',0),(2594,0,'config','config_currency_auto','1',0),(2593,0,'config','config_currency','VNĐ',0),(2592,0,'config','config_admin_language','vi-vn',0),(2591,0,'config','config_language','vi-vn',0),(2590,0,'config','config_zone_id','3776',0),(2589,0,'config','config_country_id','230',0),(2588,0,'config','config_comment','',0),(2587,0,'config','config_open','Mon - Sat: 7:30 - 18:00',0),(2586,0,'config','config_image','catalog/logo.png',0),(2585,0,'config','config_fax','+84-228-3738993',0),(2584,0,'config','config_telephone','+842283738992',0),(2583,0,'config','config_email','business@thienmatowels.com',0),(2582,0,'config','config_geocode','20.281390, 106.391309',0),(2581,0,'config','config_address','Xóm 6 - Quyết Tiến - Giao Tiến - Giao Thủy - TP Nam Định',0),(2580,0,'config','config_owner','Liu Shi Bin',0),(2578,0,'config','config_layout_id','4',0),(2579,0,'config','config_name','Công ty TNHH Dệt May Thiên Nam',0),(2577,0,'config','config_theme','theme_default',0),(2576,0,'config','config_meta_keyword','Công ty dệt may Thiên Nam, Thiên Nam, thien nam, thiennam',0),(2575,0,'config','config_meta_description','Công ty dệt may Thiên Nam',0),(2574,0,'config','config_meta_title','Công ty dệt may Thiên Nam',0),(123457067,0,'change_color','change_color_bg_body_image_background_attachment','',0),(123457060,0,'change_color','change_color_name','Thay đổi màu website',0),(123457061,0,'change_color','change_color_bg_menu','',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days'),(7,2,'In Stock'),(8,2,'Pre-Order'),(5,2,'Out Of Stock'),(6,2,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1071 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (973,'product_id=48','thoi-trang-em-be-6'),(1022,'category_id=27','ve-thien-nam'),(730,'manufacturer_id=8','apple'),(1048,'information_id=7','lien-he2'),(979,'product_id=42','thoi-trang-nam-01'),(1061,'news_id=60','xu-huong-hoa-tiet-moi-khong-the-bo-lo-tu-versace-jeans-2017'),(1028,'category_id=25','tuyen-dung'),(1044,'information_id=4','trang-chu1'),(1041,'category_id=65','lien-he1'),(1070,'category_id=30','common/home'),(1035,'category_id=64','kinh-doanh-hieu-qua'),(1029,'category_id=17','dat-hang'),(1066,'category_id=68','tin-tuc'),(1034,'category_id=33','download'),(1003,'news_id=58','5-combo-mau-sac-cu-mac-la-dep-ngay-chang-can-suy-nghi'),(1001,'news_id=59','nhung-chiec-kinh-duoc-san-lung-hai-thang-dau-2017'),(4,'checkout/cart','gio-hang'),(3,'account/login','dang-nhap-tai-khoan'),(2,'account/register','dang-ky-tai-khoan'),(1,'common/home',''),(975,'product_id=47','thoi-trang-em-be-2'),(994,'product_id=28','thoi-trang-em-be-3'),(985,'product_id=43','thoi-trang-nam-06'),(987,'product_id=45','thoi-trang-nu-01'),(980,'product_id=31','thoi-trang-nam-02'),(988,'product_id=29','thoi-trang-nu-02'),(989,'product_id=35','thoi-trang-nu-03'),(990,'product_id=49','thoi-trang-nu-04'),(991,'product_id=33','thoi-trang-nu-05'),(992,'product_id=46','thoi-trang-nu-06'),(972,'product_id=40','thoi-trang-em-be-5'),(993,'product_id=36','thoi-trang-em-be-7'),(981,'product_id=34','thoi-trang-nam-03'),(982,'product_id=32','thoi-trang-nam-04'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(1045,'information_id=6','ve-thien-nam1'),(1059,'category_news_id=60','tin-tuc'),(1047,'information_id=5','tuyen-dung1'),(5,'checkout/checkout','thanh-toan'),(6,'checkout/success','thanh-toan-thanh-cong'),(7,'information/contact','lien-he'),(8,'product/all_product','san-pham'),(9,'account/account','thong-tin-tai-khoan'),(10,'account/edit','cap-nhat-thong-tin-tai-khoan'),(11,'account/password','thay-doi-mat-khau-tai-khoan'),(12,'account/address','cap-nhat-dia-chi-tai-khoan'),(13,'account/wishlist','danh-sach-yeu-thich'),(14,'account/order','lich-su-dat-hang'),(15,'account/return','thong-tin-doi-tra-hang'),(16,'account/newsletter','dang-ky-thu-thong-bao'),(17,'news/search','news-search'),(18,'product/search','tim-kiem'),(19,'account/order/info','thong-tin-don-hang'),(20,'account/logout','dang-xuat-tai-khoan'),(21,'information/contact/success','gui-lien-he-thanh-cong'),(22,'error/not_found','page-not-found'),(23,'product/manufacturer','hang-san-xuat'),(24,'product/special','san-pham-khuyen-mai'),(25,'account/return/add','tra-hang'),(26,'information/sitemap','so-do-website'),(1004,'news_id=57','7-quy-tac-mac-do-nhieu-tang-lop-giup-ban-vua-du-am-lai-vua-thoi-trang'),(1005,'news_id=56','xu-huong-giay-dep-2017-thoi-dai-cua-nhung-thiet-ke-bang-beo-that-no'),(1069,'news_id=55','am-len-roi-cac-nang-hay-thanh-loc-tu-do-dong-cua-minh-di-thoi'),(1007,'news_id=54','5-mau-sac-thay-the-cho-nang-cong-so-nghien-do-den'),(974,'product_id=30','thoi-trang-em-be-1'),(977,'product_id=41','thoi-trang-em-be-4'),(984,'product_id=44','thoi-trang-nam-05'),(995,'product_id=50','thoi-trang-nu-07'),(1013,'category_id=20','gioi-thieu'),(1017,'category_id=59','tam-nhin-su-menh'),(1024,'category_id=60','triet-ly-kinh-doanh'),(1026,'category_id=57','san-pham-1'),(1025,'category_id=61','hinh-anh'),(1068,'category_id=70','tin-thien-nam'),(1067,'category_id=69','tin-nganh'),(1049,'category_id=66','thong-tin-gioi-thieu'),(1062,'category_news_id=67','tin-nganh'),(1063,'category_news_id=68','tin-thien-nam');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','dea3661e82c61de11e4ad5c8c661ed672be4b90c','T1lPIzM0k','John','Doe','business@thienmatowels.com','','','::1',1,'2020-07-29 10:39:57');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/change_color\",\"extension\\/module\\/combo_category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/why_choose\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/pavmegamenu\",\"news\\/category\",\"news\\/news\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/store\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/category\",\"extension\\/module\\/filter\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/category\",\"extension\\/module\\/change_color\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/change_color\",\"extension\\/module\\/combo_category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/why_choose\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/pavmegamenu\",\"news\\/category\",\"news\\/news\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/store\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/category\",\"extension\\/module\\/filter\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/category\",\"extension\\/module\\/change_color\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General'),(6,2,'Christmas'),(7,2,'Birthday'),(8,2,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz'),(1,2,'Kilogram','kg'),(2,2,'Gram','g'),(5,2,'Pound ','lb'),(6,2,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Niederösterreich','NOS',1),(202,14,'Oberösterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4232,44,'Qinghai','QH',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'thiennam'
--

--
-- Dumping routines for database 'thiennam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 16:52:19
