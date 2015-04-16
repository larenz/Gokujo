CREATE DATABASE  IF NOT EXISTS `crk_j33` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crk_j33`;
-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: crk_j33
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

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
-- Table structure for table `xy79i_assets`
--

DROP TABLE IF EXISTS `xy79i_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_assets`
--

LOCK TABLES `xy79i_assets` WRITE;
/*!40000 ALTER TABLE `xy79i_assets` DISABLE KEYS */;
INSERT INTO `xy79i_assets` VALUES (1,0,1,139,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,54,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,55,56,1,'com_cpanel','com_cpanel','{}'),(10,1,57,58,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,59,60,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,61,62,1,'com_login','com_login','{}'),(13,1,63,64,1,'com_mailto','com_mailto','{}'),(14,1,65,66,1,'com_massmail','com_massmail','{}'),(15,1,67,68,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,69,70,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,71,72,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,73,76,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,77,80,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,81,82,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,83,84,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,85,86,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,87,88,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,89,92,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,93,96,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,97,98,1,'com_wrapper','com_wrapper','{}'),(27,8,18,33,2,'com_content.category.2','General','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,78,79,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,94,95,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,90,91,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,99,100,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,101,102,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,103,104,1,'com_gantry','gantry','{}'),(36,1,105,106,1,'com_rokcandy.category.8','Basic',''),(37,1,107,108,1,'com_rokcandy.category.9','Typography',''),(38,1,109,110,1,'com_rokcandy.category.10','Uncategorised',''),(39,1,111,112,1,'com_rokcandy','rokcandy','{}'),(40,1,113,114,1,'com_rokgallery','rokgallery','{}'),(41,1,115,116,1,'com_roksprocket','roksprocket','{}'),(42,1,117,118,1,'com_jce','jce','{\"core.admin\":[],\"core.manage\":[],\"jce.config\":[],\"jce.profiles\":[],\"jce.preferences\":[],\"jce.installer\":[],\"jce.browser\":[],\"jce.mediabox\":[]}'),(43,1,119,120,1,'com_rsform','rsform','{}'),(44,1,121,122,1,'com_rsinstaller','rsinstaller','{}'),(45,1,123,124,1,'com_qlue404','qlue404','{}'),(46,1,125,126,1,'com_tagmeta','com_tagmeta','{}'),(47,1,127,128,1,'com_xmap','com_xmap','{}'),(48,27,19,20,3,'com_content.article.1','About Us','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(49,8,34,41,2,'com_content.category.11','Service','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(50,8,42,53,2,'com_content.category.12','Packages and Services','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(51,27,21,22,3,'com_content.article.2','Link Xchange','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,27,23,24,3,'com_content.article.3','Mac/PC Support Specialists','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(53,49,35,36,3,'com_content.article.4','Web Development','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(54,49,37,38,3,'com_content.article.5','Home Office','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,27,25,26,3,'com_content.article.6','Network Resources','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,49,39,40,3,'com_content.article.7','Data Networks','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,27,27,28,3,'com_content.article.8','Protecting Your Computer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,50,43,44,3,'com_content.article.9','Products and Services','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,50,45,46,3,'com_content.article.10','All Inclusive Web Packages','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(60,50,47,48,3,'com_content.article.11','Groupware Solution - A Microsoft Exchange Alternative','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(61,27,29,30,3,'com_content.article.12','Enhanced Email Security and SPAM Filtering','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,50,49,50,3,'com_content.article.13','Email Marketing Center (EMC) - Professional Email Services','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,50,51,52,3,'com_content.article.14','Secure Online Backup Solution','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(64,1,129,130,1,'com_rsfirewall','rsfirewall','{\"core.admin\":[],\"core.manage\":[],\"check.run\":[],\"dbcheck.run\":[],\"logs.view\":[],\"lists.maange\":[],\"exceptions.manage\":[],\"feeds.manage\":[],\"updates.view\":[]}'),(65,1,131,132,1,'com_tags','com_tags','{}'),(66,1,133,134,1,'com_contenthistory','com_contenthistory','{}'),(67,1,135,136,1,'com_ajax','com_ajax','{}'),(68,1,137,138,1,'com_postinstall','com_postinstall','{}'),(69,27,31,32,3,'com_content.article.15','Error_404','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(70,18,74,75,2,'com_modules.module.99','Hidden Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `xy79i_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_associations`
--

DROP TABLE IF EXISTS `xy79i_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_associations`
--

LOCK TABLES `xy79i_associations` WRITE;
/*!40000 ALTER TABLE `xy79i_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_banner_clients`
--

DROP TABLE IF EXISTS `xy79i_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_banner_clients`
--

LOCK TABLES `xy79i_banner_clients` WRITE;
/*!40000 ALTER TABLE `xy79i_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_banner_tracks`
--

DROP TABLE IF EXISTS `xy79i_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_banner_tracks`
--

LOCK TABLES `xy79i_banner_tracks` WRITE;
/*!40000 ALTER TABLE `xy79i_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_banners`
--

DROP TABLE IF EXISTS `xy79i_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_banners`
--

LOCK TABLES `xy79i_banners` WRITE;
/*!40000 ALTER TABLE `xy79i_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_categories`
--

DROP TABLE IF EXISTS `xy79i_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_categories`
--

LOCK TABLES `xy79i_categories` WRITE;
/*!40000 ALTER TABLE `xy79i_categories` DISABLE KEYS */;
INSERT INTO `xy79i_categories` VALUES (1,0,0,0,23,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'general','com_content','General','general','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',249,'2013-03-18 03:37:16',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),(8,36,1,13,14,1,'basic','com_rokcandy','Basic','basic','','',1,0,'0000-00-00 00:00:00',1,'','','','',249,'2013-03-18 03:07:33',0,'0000-00-00 00:00:00',0,'',1),(9,37,1,15,16,1,'typography','com_rokcandy','Typography','typography','','',1,0,'0000-00-00 00:00:00',1,'','','','',249,'2013-03-18 03:07:33',0,'0000-00-00 00:00:00',0,'',1),(10,38,1,17,18,1,'uncategorised','com_rokcandy','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'','','','',249,'2013-03-18 03:07:33',0,'0000-00-00 00:00:00',0,'',1),(11,49,1,19,20,1,'service','com_content','Service','service','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',249,'2013-03-18 03:37:22',0,'0000-00-00 00:00:00',0,'*',1),(12,50,1,21,22,1,'packages-and-services','com_content','Packages and Services','packages-and-services','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',249,'2013-03-18 03:37:40',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `xy79i_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_contact_details`
--

DROP TABLE IF EXISTS `xy79i_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_contact_details`
--

LOCK TABLES `xy79i_contact_details` WRITE;
/*!40000 ALTER TABLE `xy79i_contact_details` DISABLE KEYS */;
INSERT INTO `xy79i_contact_details` VALUES (1,'Chester Kiernicki','chester-kiernicki','Sr. Consultant','Darien, Illinois 60561','','','US','','815-588-1001','','','','chesterk2@crkconsultinggroup.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":null,\"linkb_name\":\"\",\"linkb\":null,\"linkc_name\":\"\",\"linkc\":null,\"linkd_name\":\"\",\"linkd\":null,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'','http://www.crkconsultinggroup.com','','','','*','2013-03-18 15:47:12',250,'','2013-05-22 20:10:57',250,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,284);
/*!40000 ALTER TABLE `xy79i_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_content`
--

DROP TABLE IF EXISTS `xy79i_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_content`
--

LOCK TABLES `xy79i_content` WRITE;
/*!40000 ALTER TABLE `xy79i_content` DISABLE KEYS */;
INSERT INTO `xy79i_content` VALUES (1,48,'About Us','about-us','<p><img style=\"margin-bottom: 15px; margin-left: 15px; float: right;\" alt=\"work at home\" src=\"images/crk/work_at_home_114562.jpg\" height=\"270\" width=\"180\" />CRK Consulting Group has the knowledge and skills to plan, implement, and support today’s technology for your home or home business:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Computer maintenance, upgrades and repairs</li>\r\n<li>Data Recovery Solutions</li>\r\n<li>Desktop/Laptop backup solutions, local and online. (Mac, PC, Linux)</li>\r\n<li>Anti-virus - Anti Spyware solutions</li>\r\n<li>Remote managment solutions</li>\r\n<li>WiFi–extending the wireless private network</li>\r\n<li>Disaster Recovery and Business Continuity Solutions</li>\r\n<li>Website Hosting, emails Solutions</li>\r\n<li>EMail Marketing Solutions</li>\r\n<li>Voice over IP phone system solutions</li>\r\n<li>Internet security and protection solutions</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><br />Keep in mind, while many of the above items can be implemented as a stand alone resource, it is possible to implement networkable resources such as printers etc. For example, a private domain name (www.myfamilyname.com) on a hosted website can provide email services to your family or home business. We make housecalls.</p>\r\n<p>Call CRK Consulting Group today at (815) 588-1001 to assist you in planning your next project or upgrade.</p>','',1,2,'2013-03-18 03:36:20',249,'','2013-03-18 15:27:29',250,0,'0000-00-00 00:00:00','2013-03-18 03:36:20','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,6,'','',1,1369,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,51,'Link Xchange','link-xchange','<p>Our reference list of consultants, services and people we do business with:<br /><strong>Advertising Agencies</strong><br />Barcelona &amp; Co. - www.barcelonacreative.com 708-448-8077<br />Hanna Zappa &amp; Polz Randy Polz 708-836-1100</p>\r\n<p><strong>Automobiles</strong><br />South Oak Dodge - www.southoakdodge.com <br />contact Ray Coie Sales Manager 708-747-7950</p>\r\n<p><strong>Chamber of Commerce</strong><br />Orland Park Area Chamber of Commerce- www.orlandparkchamber.org</p>\r\n<p><strong>Computer Store</strong><br />Micro Center- www.microcenter.com</p>\r\n<p><strong>Educational Resources</strong><br />Kids Safe Internet Research Portal - www.kidskonnect.com</p>\r\n<p><strong>Graphic Design</strong><br />Hey Banana Design Studio - Ann Seidl - <a href=\"mailto:heybanana_studio@yahoo.com\">heybanana_studio@yahoo.com</a><br />Korzenowski Design - www.korzenowskidesign.com<br />Catherine Vogel Design Catherine Vogel 630-290-2714</p>\r\n<p><strong>Hair Salons</strong><br />TreVolte Salons Orland Park 708-326-3977</p>\r\n<p><strong>Insurance Brokers &amp; Agents</strong><br />Elite Benefits Health Insurance - Butch Zemar 708-535-8811</p>\r\n<p><strong>Jewelers</strong><br />Weidingers Jewelry - 708-798-6336<br />David Anthony Jewelry - 708-429-4367</p>\r\n<p><strong>Pet Shop</strong><br />Animal Island Pet Shop - www.animalislandpets.com 708-263-0600</p>\r\n<p><strong>Plumbing Services</strong><br data-mce-bogus=\"1\" />Drip Drop Plumbing 630-412-1179 - www.dripdropplumbing.com</p>\r\n<p><strong>Printers and Printing Services</strong><br />Park Printing - Tim or Carol Parks 708-430-4878<br />Type Concepts - Palos Heights, IL 60463<br />(708) 361-1005</p>\r\n<p><strong>Real Estate / Property Management</strong><br />Kempa Realty, Christine Kempa, Broker 708-645-2000<br /><strong><br />Home Remodeling</strong><br />www.irishhandyman.net Francis Bryan 773-429-0966</p>\r\n<p><strong>Web Design &amp; Hosting Services</strong><br />JIKOmetrix - www.jikometrix.net</p>','',1,2,'2013-03-18 03:38:19',249,'','2014-03-11 14:35:33',252,0,'0000-00-00 00:00:00','2013-03-18 03:38:19','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,5,'','',1,1198,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,52,'Mac/PC Support Specialists','mac-pc-specialists','<p><img style=\"float: right;\" alt=\"macg5 workstation 250\" src=\"images/crk/macg5_workstation_250.jpg\" height=\"158\" width=\"250\" />CRK Consulting Group is a multi-platform technology company with extensive Macintosh and Windows experience. We offer full service technology planning, implementation, and support from basic network infrastructures to LAN/WAN connectivity and client/server network resources. In addition we support private users and home business clients.</p>\r\n<p>While we do provide full service project planning and implementation we recognize our client’s need for support services such as:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Help desk</li>\r\n<li>On-demand network/systems administration</li>\r\n<li>Network connectivity wired or wireless</li>\r\n<li>Installation and configuration workstations</li>\r\n<li>Installation and configuration network resources – printers, scanners etc.</li>\r\n<li>Router configuration - shared internet access/ firewall</li>\r\n<li>IT and disaster planning</li>\r\n<li>On call 24/7 support</li>\r\n<li>System training</li>\r\n<li>Project planning, proposals and budgeting</li>\r\n<li>Web development</li>\r\n<li>Installation and configuration server resources</li>\r\n<li>Installation and configuration networked security cameras</li>\r\n<li>Domain management</li>\r\n<li>Database programming (custom office systems)</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h4><br />Member of the Homer Township Chamber of Commerce&nbsp; <a target=\"_blank\" href=\"http://homerchamber.com/\">http://homerchamber.com/</a></h4>','',1,2,'2013-03-18 03:39:06',249,'','2013-03-18 15:35:16',250,0,'0000-00-00 00:00:00','2013-03-18 03:39:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,4,'','',1,194,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(4,53,'Web Development','web-development','<p><img style=\"margin-bottom: 15px; margin-left: 15px; float: right;\" alt=\"marki g4b 180\" src=\"images/crk/marki_g4b_180.gif\" height=\"180\" width=\"112\" />Adding a web site to your business should not be taken lightly. A web site functions as an extension of your organization. It supplements your sales materials, giving prospects information on products and services. Your web site may even be an electronic store front, taking orders and collecting payments or an integrated part of your business providing product training, literature, and help desk management. In any of its many uses you will want a clean, well thought out design. After all it is a tool you will use to leverage sales and support your customers.</p>\r\n<p>CRK Consulting Group in partnership with <strong>Jikometrix</strong> is a local web developer with strong programming experience in HTML, Flash, PhP, MySQL and JavaScript. We specialize in using the Joomla Content Management System. Joomla CMS is a customizable system that once it is setup and running can be administered by a non technical user easily.</p>\r\n<p>We have over 10 years experience working with private individuals, small to mid-size companies in Web Hosting, Web Development and e-commerce systems.</p>\r\n<p><strong>We have recently added new website development options and services. We offer support on Joomla, WordPress, HTML and other websites. Call us today for a free consultation. </strong></p>\r\n<p><strong>Ask about adding Groupware Collaborative Environment to your office*. </strong>Features include web based: Portal, Calendar, Contacts, Task, Projects, Document management and Web mail. Call for a quote.</p>\r\n<p>We welcome custom programming applications like: Content Management Systems, BLOGS, Data Collection Forms, Event registration Systems .etc. In addition, contact us for your business, personal, home business or other website needs. Call today to discuss your project needs at (815) 588-1001.</p>\r\n<h3>Web Hosting</h3>\r\n<p>In addition to web development, we offer web hosting as a standalone service or as an add-on to any web project. Our web service is sold under the brand name <a href=\"http://www.jikometrix.net/\" target=\"_blank\">JIKOmetrix</a>. All of our web hosting plans, except Personal, allow you to host multiple web sites within a single plan. Visit us online at <a href=\"http://www.jikometrix.net/\" target=\"_blank\">www.JIKOmetrix.net</a> for a complete list of plan features or call (815) 588-1001 to discuss your current needs. Custom hosting solutions are also available.</p>\r\n<table style=\"width: 550px;\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"6\">\r\n<h4>JIKOmetrix.net Package Price Summary:</h4>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #a6a6a6;\">\r\n<td>&nbsp;</td>\r\n<td width=\"20%\">\r\n<div align=\"center\"><strong>HD Space</strong></div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\"><strong>Monthly bandwidth</strong></div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\"><strong>Monthly fee*</strong></div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\"><strong>Yearly Fee*</strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Standard</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">300MB SP</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">3.0Gig BW</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$15</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$165</div>\r\n</td>\r\n</tr>\r\n<tr bgcolor=\"#e6e6e6\">\r\n<td>Basic</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">500MB SP</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">8.0Gig BW</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$25</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$275</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Professional</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">1000MB SP</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">16.0Gig BW</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$35</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$385</div>\r\n</td>\r\n</tr>\r\n<tr bgcolor=\"#e6e6e6\">\r\n<td>Advanced</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">2000MB SP</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">32.0Gig BW</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$75</div>\r\n</td>\r\n<td width=\"20%\">\r\n<div align=\"center\">$825</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"6\">Pay for one year and get one month of hosting free. <a href=\"http://www.jikometrix.net/\" target=\"_blank\">www.JIKOmetrix.net</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Technical:</h3>\r\n<p>CRK Consulting Group offers web hosting services to the low and mid-range hosting markets. Our data center is located in Houston, Texas and is staffed 24/7/365. There are multiple OC48 SONET fiber rings that provide basic connectivity to eight access carriers. The data center is completely redundant, including a 2200 gallon backup diesel generator. For more information visit us at <a href=\"http://www.jikometrix.net/\" target=\"_blank\"></a><a href=\"http://www.JIKOmetrix.net\" target=\"_blank\">http://www.JIKOmetrix.net</a> or call (815) 588-1001.</p>\r\n<p>*Pricing subject to change without notice. Restrictions apply. <br /> **Subject to client\'s credit rating. Not all clients will be eligible.</p>','',1,11,'2013-03-18 03:41:00',249,'','2015-02-19 13:16:17',253,253,'2015-02-19 13:16:17','2013-03-18 03:41:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,2,'','',1,2273,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,54,'Home Office','home-office','<p><img style=\"margin-left: 15px; margin-bottom: 15px; float: right;\" alt=\"work at home\" src=\"images/crk/work_at_home_114562.jpg\" height=\"270\" width=\"180\" />CRK Consulting Group has the knowledge and skills to plan, implement, and support today’s technology for your home or home business:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Computer maintenance, upgrades and repairs</li>\r\n<li>Data Recovery Solutions</li>\r\n<li>Desktop/Laptop backup solutions, local and online. (Mac, PC)</li>\r\n<li>Anti-virus - Anti Spyware solutions</li>\r\n<li>Remote managment solutions</li>\r\n<li>WiFi–extending the wireless private network</li>\r\n<li>Disaster Recovery and Business Continuity Solutions</li>\r\n<li>Website Hosting, emails Solutions</li>\r\n<li>EMail Marketing Solutions</li>\r\n<li>Voice over IP (VoIP) phone system solutions</li>\r\n<li>Internet security and protection solutions</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><br />Keep in mind, while many of the above items can be implemented as a stand alone resource, it is possible to implement networkable resources such as printers etc. For example, a private domain name (www.myfamilyname.com) on a hosted website can provide email services to your family or home business. We make housecalls.</p>\r\n<p>Call CRK Consulting Group today at (815) 588-1001 to assist you in planning your next project or upgrade.</p>','',1,11,'2013-03-18 03:41:53',249,'','2013-05-22 20:19:02',250,0,'0000-00-00 00:00:00','2013-03-18 03:41:53','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,1,'','',1,1043,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,55,'Network Resources','network-resources','<p><img style=\"margin-bottom: 15px; margin-left: 15px; float: right;\" alt=\"macg5 profile\" src=\"images/crk/macg5_profile.jpg\" height=\"195\" width=\"191\" />Network resources are services available to users on the company network. These services might include a file server, a shared printer, an email server, a database application, a scanner or even security cameras. These are only a few of the items that may be found on a company network. Often they are crucial to the functionality of the business.</p>\r\n<p>CRK Consulting Group has the knowledge and skills to plan, implement, and support today’s technology on your company’s local and remote networks:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>File Server (Mac, PC)</li>\r\n<li>Shared Printer (Mac, PC)</li>\r\n<li>Desktop/Laptop backup solutions (Mac, PC)</li>\r\n<li>Anti-virus Gateway - Scan incoming email</li>\r\n<li>Desktop anti-virus</li>\r\n<li>WiFi Hot spots – public/private</li>\r\n<li>Groupware/ Email Server (Mac, PC) - Project management and shared calendars</li>\r\n<li>Server backup solutions (Mac, PC) - desktops and mobile laptops</li>\r\n<li>Database applications (Web based MySQL, FileMaker Pro, MS Access)</li>\r\n<li>IP Security Cameras monitor from your desktop and record to a central server</li>\r\n<li>Voice over IP telephone systems<br /><br /><br /></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><img style=\"margin-right: 36px; margin-left: 36px; float: left;\" alt=\"hp color3700n\" src=\"images/crk/hp_color3700n.jpg\" height=\"150\" width=\"150\" />Keep in mind, while many of the above resources can be implemented as a stand alone resource, many network resources are a feature/ function of a larger resource. For example, a groupware server may provide email service in addition to networked file storage for small to medium workgroups. Call CRK Consulting Group today at (815) 588-1001 to assist you in planning your next project.</p>','',1,2,'2013-03-18 03:42:49',249,'','2013-05-22 19:45:47',250,0,'0000-00-00 00:00:00','2013-03-18 03:42:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,3,'','',1,2379,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,56,'Data Networks','data-networks','<h3>Wired Networks</h3>\r\n<p><img style=\"margin-bottom: 15px; margin-left: 15px; float: right;\" alt=\"smc8624t\" src=\"images/crk/smc8624t.jpg\" height=\"75\" width=\"150\" />Wired networks are at the core of most office network infrastructures. They are used to connect the workstations in your office to local and remote network resources like printers, scanners, office database, the internet etc… CRK Consulting Group offers the following component services to connect your office to needed resources:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>In-wall or surface mounted wiring</li>\r\n<li>Firewall install and configure port maps/ access rules</li>\r\n<li>Hubs and switches</li>\r\n<li>Router installation and configure internet sharing</li>\r\n<li>VPN install and configure remote access/ site-2-site</li>\r\n<li>Patch Panel network termination</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h3>Wireless Networks - WiFi</h3>\r\n<p><img style=\"float: right;\" alt=\"smc wireless\" src=\"images/crk/smc_wireless.jpg\" height=\"75\" width=\"150\" />Wireless networks also known as WiFi networks allow users to connect laptops, PDA’s and other WiFi compatible devises to data networks without the need for a physical connection from the device to the network. Wireless connectivity can also be scaled to create a wireless point-to-point connection up to 12 miles away. How does wireless networking fit into your company network?</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Extend your private network without pulling new wire</li>\r\n<li>Make it easy for your mobile workers to access the company network</li>\r\n<li>Add a public hot spot to your business for guest access</li>\r\n<li>Connect 2 buildings to your private network instead of leasing a dedicated line or using internet bandwidth with a VPN</li>\r\n</ul>\r\n</li>\r\n</ul>','',1,11,'2013-03-18 03:43:48',249,'','2013-09-12 14:56:40',250,0,'0000-00-00 00:00:00','2013-03-18 03:43:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,'','',1,1108,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,57,'Protecting Your Computer','protecting-your-computer','<p>Here are some suggestions to protect your computer. If you have any questions or would like to discuss any of the items listed below, please send an email to <a href=\"mailto:chesterk2@crkconsultinggroup.com\">chesterk2@crkconsultinggroup.com</a>.</p>\r\n<h3>General</h3>\r\n<p>Protect your computer when connectedInvest in a battery backup unit or use a quality surge suppression power strip. If you leave your computer powered on regularly a sudden power outage or power surge&nbsp; may cause damage to your system. Battery backup units and&nbsp; quality surge suppression power strips will reduce the risk of damage.</p>\r\n<p>Store your software installation CD/DVDs in a storage container that has a tight lid. These containers are a good place to keep all of your installation CD/DVDs in one spot and in the event that you have an unexpected water problem, they will be protect from getting wet and damaged.</p>\r\n<p>Save copies of the installation keys or serial numbers in a plastic or waterproof container. These keys or serial numbers will allow you to re-install the software in case you have to rebuild your system for any reason.<br />Protect your computer on the Internet:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Make sure your anti-virus, anti-spyware protection and firewall software is up to date. There are over 4.6 million viruses, Trojan Horses, RootKits and variants reported as of June 2011.&nbsp; More are being created and released daily. Making sure your subscription to your anti-virus software is current and your software isn’t more than two years old will go a long way in protecting your computer from being infected.</li>\r\n<li>When surfing the Internet be aware that many sites unknowingly may have malware on them. Also beware of emails that you receive with attachments many contain funny messages, jokes, greeting cards, movie or music files that are actually Trojan horses designed to infect or compromise your computer. Recently there was an email that had a link to a celebrity website that supposedly had a blooper clip on it but in fact was a Trojan horse that once infecting your computer would steal personal and financial information and send it to a hidden identity theft ring site. Current anti-virus software will help protect you.</li>\r\n<li>If you are you are using a software firewall, make sure it is turned on and it is up to date. Firewalls are a good tool to keep your system shielded from the Internet and to provide alerts if you are being probed or attacked from the Internet.</li>\r\n<li>Make sure you have all of your Operating System updates and security patches installed. Keeping your operating system up dated and current helps keep you safe from exploiters trying to take advantage of security holes and problems.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h3>Protecting your data:</h3>\r\n<p><img style=\"margin-bottom: 15px; margin-left: 15px; float: right;\" alt=\"2856360-tapes\" src=\"images/crk/2856360-tapes.jpg\" height=\"166\" width=\"250\" />Backup your critical data files (family pictures, documents, financial files, customer records, contact management databases, etc). All hard drives will eventually fail. In some cases failures may be sudden, a power outage for example may cause significant issues if the hard drive was in the process of writing data. Subtle problems develop over time causing the drive to work slower and slower eventually a hard failure occurs. To protect your data these are the options:</p>\r\n<ol>\r\n<li style=\"list-style-type: none;\"><ol>\r\n<li><strong>Online data backup:</strong> best security and protection. Data is stored in a secure off site facility. Requires Internet access and once set up will backup your designated data files continually.</li>\r\n<li><strong>External backup device:</strong> good protection. Data is backed up to an external hard drive either through a manual copy process or through backup software. Requires some user intervention to maintain backup hard drive and or to create a script to backup desire files, etc. Security is up to the user.</li>\r\n<li><strong>CD/DVD backup:</strong> fair protection. Although CD/DVDs have good to excellent storage life, the process is manual. The user must designate the files to be burn to the disk and must manage the file size not to exceed the capacity of the CD or DVD. Process is very time intensive and maybe limited by the CD/DVD drives capacity and speed. Security is up to the user.</li>\r\n<li><strong>Remember this saying: \"Backup Early, Backup Often, Backup Lots\".</strong> Start the backup process when you first open the document or work file, backup frequently while you are working on the document, and finally backup the original to an external device. Again it\'s up to you, the user, to maintain the security and data backups.</li>\r\n</ol></li>\r\n</ol>\r\n<h3>Protecting the Health and Maintenance:</h3>\r\n<p style=\"margin-left: 30px;\">For PC users:</p>\r\n<ol>\r\n<li style=\"list-style-type: none;\"><ol>\r\n<li style=\"list-style-type: none;\"><ol>\r\n<li>Run Virus Scan</li>\r\n<li>Run Windows Update.</li>\r\n<li>Run Disk Cleanup and delete all temporary files, Internet, system etc.</li>\r\n<li>Run Disk Defragmenter.</li>\r\n<li>Run Virus Scan Again.</li>\r\n</ol></li>\r\n</ol></li>\r\n</ol>\r\n<p style=\"margin-left: 30px;\"><br />For Mac Users:</p>\r\n<ol>\r\n<li style=\"list-style-type: none;\"><ol>\r\n<li style=\"list-style-type: none;\"><ol>\r\n<li>Run System Software updates.</li>\r\n<li>Run Disk Utility: Repair Permissions</li>\r\n<li>Run Disk Utility: Disk Verify<br /><br /></li>\r\n</ol></li>\r\n</ol></li>\r\n</ol>','',1,2,'2013-03-18 03:50:22',249,'','2013-03-18 15:39:35',250,0,'0000-00-00 00:00:00','2013-03-18 03:50:22','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,2,'','',1,1080,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,58,'Products and Services','products-and-services','<p>CRK Consulting Group with our partner company JIKOmetrix offers additional services and products. Our products are range in scope from email solutions to Voice over IP telephone solutions. Click on <strong>Products</strong> tab above and see all of our solution offerings.</p>','',1,12,'2013-03-18 03:50:53',249,'','2013-03-18 03:51:11',249,0,'0000-00-00 00:00:00','2013-03-18 03:50:53','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,1361,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,59,'All Inclusive Web Packages','all-inclusive-web-packages','<p><span style=\"font-size: small; color: #000000;\" color=\"#000000\" size=\"3\"><strong></strong>3 all-inclusive web packages: Starter, Basic, and Complete will give you the tools to create an effective and engaging web site. They are based on our content management system. Our experience will make your web site functional and effective.</span></p>\r\n<p>Examples of web site packages available:</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Brochure style web sites</li>\r\n<li>Restaurant web sites</li>\r\n<li>eCommerce shopping carts</li>\r\n<li>Managed content - database drive</li>\r\n<li>Real Estate listings</li>\r\n<li>Home Owner Association web site</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><br />Call Today for free consultation! 815-588-1001.</p>','',1,12,'2013-03-18 03:52:54',249,'','2013-05-22 20:24:01',250,0,'0000-00-00 00:00:00','2013-03-18 03:52:54','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,3,'','',1,1070,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,60,'Groupware Solution - A Microsoft Exchange Alternative','groupware-solution-a-microsoft-exchange-alternative','<p>Add a Groupware Collaborative Environment! Features include web based: Calendar, Contacts, Task, Outlook-to-Web Mail Sync and Web Mail Client. We create the infrastructure and you create the content. We can implement a variety of solutions from email servers to a more extensive Customer Relations Management solution that rivals some the high end CRM software. If you have a dispersed employee situation where not everyone comes to the office but you want to make sure you have the customers in a secure database, we have a solution for you.</p>\r\n<p>Call Today for a free consultation! 815-588-1001.</p>','',1,12,'2013-03-18 03:54:24',249,'','2013-03-18 15:32:13',250,0,'0000-00-00 00:00:00','2013-03-18 03:54:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,2,'','',1,1168,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,61,'Enhanced Email Security and SPAM Filtering','enhanced-email-security-and-spam-filtering','<p>Our email security system helps keep your email free from spam, viruses, phishing, and other email threats. It is a hosted solution that blocks spam and other threats well before they reach your enterprise.</p>\r\n<p>Did you realize that over 90% of all emails sent are considered SPAM?</p>\r\n<p>Why deal with high volumes of SPAM in your inbox when we can filter them out?</p>\r\n<p>Call Today for a free consultation: 815-588-1001.</p>','',1,2,'2013-03-18 03:55:19',249,'','2013-05-22 19:43:11',250,0,'0000-00-00 00:00:00','2013-03-18 03:55:19','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,819,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,62,'Email Marketing Center (EMC) - Professional Email Services','email-marketing-center-emc-professional-email-services','<p>Sending branded communications to your audience with genuine information they want to read will make your company memorable, increase your perceived&nbsp; value, and your audience will read your next message. Call Today for a DEMO!</p>','',1,12,'2013-03-18 03:56:13',249,'','2013-03-18 15:31:09',250,0,'0000-00-00 00:00:00','2013-03-18 03:56:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,1119,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,63,'Secure Online Backup Solution','secure-online-backup-solution','<p>Hard Drive failure is the #1 cause of data loss. Viruses can destroy data. Losing your digital photos and financial information as a result of a hard drive failure or virus attack would be devastating.</p>\r\n<p>Look at what kinds of files you have on your hard drive. QuickBooks company files, MYOB, Peachtree Accounting, financial records in other words. Digital pictures that go back to when your child was a baby, letters and documents to clients, friends or... Spreadsheets that have your entire household goods inventory. If you lose them, what you do or feel. Hard drive data recovery is expensive, with today\'s large capacity hard drives, recovery costs can run into a $1000 dollars or more easily.</p>\r\n<p>Call Today for a free consultation!&nbsp; 815-588-1001.</p>','',1,12,'2013-03-18 03:57:15',249,'','2013-03-18 15:39:55',250,0,'0000-00-00 00:00:00','2013-03-18 03:57:15','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,854,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,69,'Error_404','error_404','<p>404 page</p>','',1,2,'2015-02-20 05:24:12',253,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2015-02-20 05:24:12','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,1,'{\"robots\":\"noindex, follow\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `xy79i_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_content_frontpage`
--

DROP TABLE IF EXISTS `xy79i_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_content_frontpage`
--

LOCK TABLES `xy79i_content_frontpage` WRITE;
/*!40000 ALTER TABLE `xy79i_content_frontpage` DISABLE KEYS */;
INSERT INTO `xy79i_content_frontpage` VALUES (3,1);
/*!40000 ALTER TABLE `xy79i_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_content_rating`
--

DROP TABLE IF EXISTS `xy79i_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_content_rating`
--

LOCK TABLES `xy79i_content_rating` WRITE;
/*!40000 ALTER TABLE `xy79i_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_content_types`
--

DROP TABLE IF EXISTS `xy79i_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_content_types`
--

LOCK TABLES `xy79i_content_types` WRITE;
/*!40000 ALTER TABLE `xy79i_content_types` DISABLE KEYS */;
INSERT INTO `xy79i_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\": {\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"url\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10000,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10001,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10002,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(10003,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(10004,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `xy79i_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_contentitem_tag_map`
--

DROP TABLE IF EXISTS `xy79i_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_contentitem_tag_map`
--

LOCK TABLES `xy79i_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `xy79i_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_core_log_searches`
--

DROP TABLE IF EXISTS `xy79i_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_core_log_searches`
--

LOCK TABLES `xy79i_core_log_searches` WRITE;
/*!40000 ALTER TABLE `xy79i_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_extensions`
--

DROP TABLE IF EXISTS `xy79i_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_extensions`
--

LOCK TABLES `xy79i_extensions` WRITE;
/*!40000 ALTER TABLE `xy79i_extensions` DISABLE KEYS */;
INSERT INTO `xy79i_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"0\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"sts\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"c5ef0bdb5bbbd463fca71076576bdac2\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"Se[ptember 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,0,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.6\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(900,'PLG_EOSNOTIFY','plugin','eosnotify','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"PLG_EOSNOTIFY\",\"type\":\"plugin\",\"creationDate\":\"October 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"End of Support Notifier\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'gantry','component','com_gantry','',0,1,0,0,'{\"legacy\":false,\"name\":\"Gantry\",\"type\":\"component\",\"creationDate\":\"August 6, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.25\",\"description\":\"Gantry Starting Template for Joomla! v4.1.25\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'System - Gantry','plugin','gantry','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Gantry\",\"type\":\"plugin\",\"creationDate\":\"August 6, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.25\",\"description\":\"Gantry System Plugin for Joomla\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10004,'rt_kirigami','template','rt_kirigami','',0,1,1,0,'{\"legacy\":false,\"name\":\"rt_kirigami\",\"type\":\"template\",\"creationDate\":\" September 10, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"Copyright 2005-2014 - RocketTheme.com\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.9\",\"description\":\"Kirigami\",\"group\":\"\"}','{\"master\":\"true\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'System - RokExtender','plugin','rokextender','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokExtender\",\"type\":\"plugin\",\"creationDate\":\"October 31, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.0\",\"description\":\"System - Gantry\",\"group\":\"\"}','{\"registered\":\"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php\"}','','',0,'0000-00-00 00:00:00',1,0),(10006,'RokNavMenu','module','mod_roknavmenu','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokNavMenu\",\"type\":\"module\",\"creationDate\":\"November 5, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.7\",\"description\":\"RocketTheme Customizable Navigation Menu\",\"group\":\"\"}','{\"limit_levels\":\"0\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"filteringspacer2\":\"\",\"theme\":\"default\",\"custom_layout\":\"default.php\",\"custom_formatter\":\"default.php\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10008,'RokAjaxSearch','module','mod_rokajaxsearch','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokAjaxSearch\",\"type\":\"module\",\"creationDate\":\"May 2, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.3\",\"description\":\"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    \",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"search_page\":\"index.php?option=com_search&view=search&tmpl=component\",\"adv_search_page\":\"index.php?option=com_search&view=search\",\"spacer_style_options\":\"\",\"include_css\":\"1\",\"theme\":\"blue\",\"spacer_advanced_search\":\"\",\"searchphrase\":\"any\",\"ordering\":\"newest\",\"limit\":\"10\",\"perpage\":\"3\",\"websearch\":\"0\",\"blogsearch\":\"0\",\"imagesearch\":\"0\",\"videosearch\":\"0\",\"websearch_api\":\"\",\"show_pagination\":\"1\",\"safesearch\":\"MODERATE\",\"image_size\":\"MEDIUM\",\"show_estimated\":\"1\",\"spacer_advanced_settings\":\"\",\"hide_divs\":\"\",\"include_link\":\"1\",\"show_description\":\"1\",\"include_category\":\"1\",\"show_readmore\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10011,'RokTwittie','module','mod_roktwittie','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokTwittie\",\"type\":\"module\",\"creationDate\":\"June 1, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.7\",\"description\":\"RokTwittie is a Twitter module that lets you display up to 140 tweets, display tweets through oAuth authentication and display Twitter search results. RokTwittie supports many settings like multiple users to display, merged tweets and comes with a light and dark built-in styles.\",\"group\":\"\"}','{\"@status\":\"\",\"use_oauth\":\"0\",\"consumer_key\":\"\",\"consumer_secret\":\"\",\"@signin\":\"\",\"moduleclass_sfx\":\"\",\"load_css\":\"1\",\"enable_cache\":\"1\",\"timeout_connect\":\"3\",\"timeout_response\":\"6\",\"enable_cache_time\":\"5\",\"usernames\":\"rockettheme\",\"inactive_opacity\":\"0.5\",\"show_default_avatar\":\"1\",\"header_style\":\"dark\",\"include_rts\":\"1\",\"enable_statuses\":\"1\",\"status_external\":\"1\",\"show_feed\":\"1\",\"show_follow_updates\":\"1\",\"show_bio\":\"1\",\"show_web\":\"1\",\"show_location\":\"1\",\"show_updates\":\"1\",\"show_followers\":\"1\",\"show_following\":\"1\",\"show_following_icons\":\"1\",\"following_icons_count\":\"10\",\"show_viewall\":\"1\",\"enable_usernames\":\"1\",\"enable_usernames_avatar\":\"1\",\"usernames_avatar_size\":\"48\",\"usernames_count_size\":\"4\",\"usernames_count_merged\":\"1\",\"enable_usernames_externals\":\"1\",\"enable_usernames_source\":\"1\",\"enable_usernames_user\":\"1\",\"enable_search\":\"1\",\"search\":\"@rockettheme\",\"enable_search_avatar\":\"1\",\"search_avatar_size\":\"48\",\"search_count_size\":\"4\",\"enable_search_externals\":\"1\",\"enable_search_source\":\"1\",\"enable_search_user\":\"1\",\"oauth_token\":\"\",\"oauth_token_secret\":\"\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10012,'Editor - RokPad','plugin','rokpad','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"Editor - RokPad\",\"type\":\"plugin\",\"creationDate\":\"February 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.8\",\"description\":\"\\n        <div class=\\\"rokpad-description\\\">\\n        <img src=\\\"..\\/plugins\\/editors\\/rokpad\\/assets\\/admin\\/images\\/rokpad.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokPad<\\/h1>\\n        <h2>The Power of Desktop Text Editor in a Joomla!<\\/h2>\\n        <p>Ever wished you could use a powerful desktop text editor such as Textmate, SublimeText, or UltraEdit directly on a Joomla! web site?  Now with RokPad we provide many features and capabilities that traditionally would only be found in a powerful desktop editor.  RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, configurable themes, multiple cursors and selections, shortcut keys, multiple language support, and many other incredible features.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n\\t\\t\\t<li>Code Highlighter built on the great ACE Editor<\\/li>\\n\\t        <li>Support for CSS, HTML, JavaScript, JSON, LESS, Markdown, PHP, SQL, Plain Text, Textile, XML and more...<\\/li>\\n\\t        <li>Ajax save and Automatic Save options. You\'ll never loose your content again, nor wait until the page has finished reloading after a save!<\\/li>\\n\\t        <li>Save, Undo, Redo, Goto line, Advanced Search and Search &amp; Replace, Full Screen. Settings like Themes, Font Size, Code Folding, Wrap Mode, Invisible Characters, Print Margin, Highlight of selected word<\\/li>\\n\\t        <li>26 Themes to choose from<\\/li>\\n\\t        <li>Resizable Editor by dragging the Statusbar<\\/li>\\n\\t        <li>Keyboard shortcuts<\\/li>\\n\\t        <li>Brackets match<\\/li>\\n\\t        <li>Multiple cursors and selections<\\/li>\\n\\t        <li>Vertical Selection<\\/li>\\n\\t        <li>Ability to insert at multiple locations xtd-buttons shortcodes, all at once.<\\/li>\\n\\t        <li>Shortcodes and Universal Tag Insertion<\\/li>\\n\\t        <li>Drag &amp; Drop of text from external applications such as other Browser Tabs\\/windows or Native Applications (Supported on Firefox, Chrome, IE10 and Safari)<\\/li>\\n\\t        <li>Import local files by Drag &amp; Drop directly from your desktop! (Supported on Firefox, Chrome, IE10 and Safari 6+)<\\/li>\\n\\t        <li>And much more!<\\/li>\\n        <\\/ul>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"autosave-enabled\":\"0\",\"autosave-time\":\"5\",\"theme\":\"fluidvision\",\"font-size\":\"12px\",\"fold-style\":\"markbeginend\",\"use-wrap-mode\":\"free\",\"selection-style\":\"1\",\"highlight-active-line\":\"1\",\"highlight-selected-word\":\"1\",\"show-invisibles\":\"0\",\"show-gutter\":\"1\",\"show-print-margin\":\"1\",\"fade-fold-widgets\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(10014,'System - RokBooster','plugin','rokbooster','system',0,0,1,0,'{\"legacy\":false,\"name\":\"System - RokBooster\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.1.13\",\"description\":\"\\n        \\n        <div class=\\\"booster-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won\'t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    \",\"group\":\"\"}','{\"cache_time\":\"60\",\"minify_css\":\"1\",\"style_sort\":\"RokBooster_Compressor_Sort_ExternalOnTop\",\"inline_css\":\"1\",\"imported_css\":\"1\",\"minify_js\":\"1\",\"script_sort\":\"RokBooster_Compressor_Sort_ExternalOnTop\",\"inline_js\":\"1\",\"ignored_files\":\"\",\"scan_method\":\"header\",\"use_background_processing\":\"1\",\"disable_for_ie\":\"1\"}','','',0,'0000-00-00 00:00:00',100,0),(10016,'System - RokBox','plugin','rokbox','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokBox\",\"type\":\"plugin\",\"creationDate\":\"November 13, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.8\",\"description\":\"\\n        <div class=\\\"rokbox-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBox2<\\/h1>\\n        <p>RokBox2 is a fully responsive modal pop-up plug-in for Joomla.  It displays <strong>images<\\/strong>, <strong>videos<\\/strong>, <strong>embedded widgets<\\/strong>, <strong>Ajax content<\\/strong> and <strong>Joomla modules<\\/strong>.<\\/p>\\n\\n        <p>RokBox2 contains a <strong>Content plug-in<\\/strong> and <strong>Button Editor plug-in<\\/strong>. The <strong>Content plug-in<\\/strong> can auto-generate thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can easily adapt to any device. The <strong>Button Editor plug-in<\\/strong> allows for easy creation of RokBox2 style snippets with just a few clicks.<\\/p>\\n        <p>RokBox2 also provides backward compatibility for RokBox1 style <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\\"features\\\">\\n            <li>HTML5 and CSS3<\\/li>\\n            <li>Fully Responsive<\\/li>\\n            <li>Auto thumbnails generator<\\/li>\\n            <li>Captions supporting HTML syntax<\\/li>\\n            <li>Ajax Content listener<\\/li>\\n            <li>Multiple media types supported:\\n                <ul class=\\\"features\\\">\\n                    <li>Images: base64 encoded, jpg, gif, png, bmp, webp<\\/li>\\n                    <li>HTML5 Video and Audio<\\/li>\\n                    <li>TwitPic<\\/li>\\n                    <li>Instagram<\\/li>\\n                    <li>YouTube<\\/li>\\n                    <li>Vimeo<\\/li>\\n                    <li>Telly (ex TwitVid)<\\/li>\\n                    <li>Metacafe<\\/li>\\n                    <li>Dailymotion<\\/li>\\n                    <li>Spotify<\\/li>\\n                    <li>Google Maps<\\/li>\\n                <\\/ul>\\n            <\\/li>\\n            <li>Fit\\/Unfit Screen: If an image is too big it gets shrunk to fit the view-port but you can always click the Fit Screen icon to expand it and scroll.<\\/li>\\n            <li>Albums to group related images<\\/li>\\n            <li>Key Bindings for easy navigation: <code>&larr;<\\/code> (Previous), <code>&rarr;<\\/code> (Next), <code>f<\\/code> Fitscreen\\/Unfitscreen, <code>esc<\\/code> Close<\\/li>\\n        <\\/ul>\\n\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> RokBox2 consists of 3 plug-ins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plug-in manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"theme\":\"light\",\"custom-theme\":\"sample\",\"custom-legacy\":\"0\",\"width\":\"640\",\"height\":\"460\",\"transition\":\"Quad.easeOut\",\"duration\":\"200\",\"chase\":\"40\",\"effect\":\"quicksilver\",\"frame-border\":\"20\",\"content-padding\":\"0\",\"arrows-height\":\"35\",\"captions\":\"1\",\"captionsDelay\":\"800\",\"scrolling\":\"0\",\"keyEvents\":\"1\",\"overlay_background\":\"#000000\",\"overlay_opacity\":\"0.85\",\"overlay_duration\":\"200\",\"overlay_transition\":\"Quad.easeInOut\",\"autoplay\":\"true\",\"ytautoplay\":\"0\",\"ythighquality\":\"0\",\"controller\":\"false\",\"bgcolor\":\"#f3f3f3\",\"vimeoColor\":\"00adef\",\"vimeoPortrait\":\"0\",\"vimeoTitle\":\"0\",\"vimeoFullScreen\":\"1\",\"vimeoByline\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(10017,'Content - RokBox','plugin','rokbox','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokBox\",\"type\":\"plugin\",\"creationDate\":\"November 13, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.8\",\"description\":\"\\n        <div class=\\\"rokbox-description\\\">\\n        <img src=\\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\\" class=\\\"img-padding\\\" \\/><h1>RokBox2<\\/h1>\\n        <p>Auto generates thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can be easily adapted to any device. RokBox2 Content plugins also provides backward compatibility for the old discontinued RokBox1 that allowed writing snippets through the <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <p class=\\\"note\\\"><strong>NOTE:<\\/strong> RokBox2 comes with 3 plugins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plugin manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        \",\"group\":\"\"}','{\"remote_sizes\":\"0\",\"thumb_ext\":\"_thumb\",\"thumb_class\":\"album\",\"thumb_custom\":\"0\",\"thumb_dir\":\"cache\",\"thumb_width\":\"150\",\"thumb_height\":\"100\",\"thumb_quality\":\"90\"}','','',0,'0000-00-00 00:00:00',1,0),(10019,'rokcandy','component','com_rokcandy','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokCandy\",\"type\":\"component\",\"creationDate\":\"May 28, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.0\",\"description\":\"\\n\\t\\tRokCandy is a simple yet powerful macro system for Joomla 1.6.  It provides the ability to create and categorize macros that can be used throughout your site.\\n\\t\",\"group\":\"\"}','{\"forcecache\":\"0\",\"adminenabled\":\"0\",\"editenabled\":\"0\",\"contentPlugin\":\"0\",\"disabled\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10020,'Button - RokCandy','plugin','rokcandy','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokCandy\",\"type\":\"plugin\",\"creationDate\":\"May 28, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.0\",\"description\":\"This is an Editor Button to allow selection of RokCandy macros\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(10021,'System - RokCandy','plugin','rokcandy','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokCandy\",\"type\":\"plugin\",\"creationDate\":\"May 28, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.0\",\"description\":\"This is the RokCandy system plugin that performs the macro replacement\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10024,'System - RokCommon','plugin','rokcommon','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokCommon\",\"type\":\"plugin\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.1.11\",\"description\":\"RokCommon System Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10025,'rokgallery','component','com_rokgallery','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokGallery\",\"type\":\"component\",\"creationDate\":\"August 3, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.16\",\"description\":\"A Gallery component for Joomla 1.6 from RocketTheme.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10026,'RokGallery Module','module','mod_rokgallery','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokGallery Module\",\"type\":\"module\",\"creationDate\":\"August 3, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.16\",\"description\":\"A module to allow you to display galleries from the RokGallery component in a module position.\",\"group\":\"\"}','{\"link\":\"0\",\"default_menuitem\":\"0\",\"title\":\"false\",\"caption\":\"false\",\"sort_by\":\"gallery_ordering\",\"sort_direction\":\"ASC\",\"limit_count\":\"10\",\"style\":\"light\",\"layout\":\"grid\",\"columns\":\"1\",\"arrows\":\"onhover\",\"navigation\":\"thumbnails\",\"animation_type\":\"random\",\"animation_duration\":\"500\",\"autoplay_enabled\":\"0\",\"autoplay_delay\":\"7\",\"showcase_arrows\":\"onhover\",\"showcase_image_position\":\"left\",\"showcase_imgpadding\":\"0\",\"showcase_animation_type\":\"random\",\"showcase_captionsanimation\":\"crossfade\",\"showcase_animation_duration\":\"500\",\"showcase_autoplay_enabled\":\"0\",\"showcase_autoplay_delay\":\"7\",\"showcase_responsive_arrows\":\"onhover\",\"showcase_responsive_image_position\":\"left\",\"showcase_responsive_imgpadding\":\"0\",\"showcase_responsive_animation_type\":\"random\",\"showcase_responsive_captionsanimation\":\"crossfade\",\"showcase_responsive_animation_duration\":\"500\",\"showcase_responsive_autoplay_enabled\":\"0\",\"showcase_responsive_autoplay_delay\":\"7\",\"cache\":\"0\",\"module_cache\":\"1\",\"cache_time\":\"900\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10027,'Button - RokGallery','plugin','rokgallery','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokGallery\",\"type\":\"plugin\",\"creationDate\":\"August 3, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.16\",\"description\":\"This is an Editor Button to allow selection of RokGallery Slices\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10028,'System - RokGallery','plugin','rokgallery','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokGallery\",\"type\":\"plugin\",\"creationDate\":\"August 3, 2012\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.16\",\"description\":\"A system level support plugin for RokGallery.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',50,0),(10030,'Content - RokSocialButtons','plugin','roksocialbuttons','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokSocialButtons\",\"type\":\"plugin\",\"creationDate\":\"June 19, 2013\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.5.1\",\"description\":\"RokSocialButtons Content Plugin.  Use format {socialbuttons} in your article to display the social buttons in your article\",\"group\":\"\"}','{\"addthis_id\":\"\",\"enable_twitter\":\"1\",\"enable_facebook\":\"1\",\"enable_google\":\"1\",\"prepend_text\":\"\",\"extra_class\":\"\"}','','',0,'0000-00-00 00:00:00',5,0),(10033,'roksprocket','component','com_roksprocket','',1,1,0,0,'{\"legacy\":false,\"name\":\"RokSprocket\",\"type\":\"component\",\"creationDate\":\"August 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.2\",\"description\":\"Parent for all PHP based projects\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10034,'RokSprocket Module','module','mod_roksprocket','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokSprocket Module\",\"type\":\"module\",\"creationDate\":\"August 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.2\",\"description\":\"RokSprocket makes it easy to display content in a dynamic, visual layout.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10035,'System - RokSprocket','plugin','roksprocket','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RokSprocket\",\"type\":\"plugin\",\"creationDate\":\"August 15, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.2\",\"description\":\"RokSprocket System Plugin\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10036,'Content - RokInjectModule','plugin','rokinjectmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RokInjectModule\",\"type\":\"plugin\",\"creationDate\":\"February 28, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.6\",\"description\":\"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(10043,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10044,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10045,'jce','component','com_jce','',1,1,0,0,'{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{\"help_url\":\"http:\\/\\/www.joomlacontenteditor.net\",\"feed\":\"0\",\"feed_limit\":\"2\",\"browser_width\":\"780\",\"browser_height\":\"560\",\"updates_key\":\"WFA774D821A1A1A03C143429BAF0\"}','','',0,'0000-00-00 00:00:00',0,0),(10046,'System - JCE MediaBox','plugin','jcemediabox','system',0,0,1,0,'{\"legacy\":false,\"name\":\"System - JCE MediaBox\",\"type\":\"plugin\",\"creationDate\":\"08 May 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"1.1.16\",\"description\":\"JCEMEDIABOX_DESC\",\"group\":\"\"}','{\"theme\":\"standard\",\"imgpath\":\"plugins\\/system\\/jcemediabox\\/img\",\"fadespeed\":\"500\",\"scalespeed\":\"500\",\"overlay\":\"1\",\"overlayopacity\":\"0.8\",\"overlaycolor\":\"#000000\",\"width\":\"\",\"height\":\"\",\"resize\":\"1\",\"close\":\"2\",\"icons\":\"1\",\"hideobjects\":\"0\",\"scrolling\":\"fixed\",\"components\":\"\",\"dynamic_themes\":\"0\",\"legacy\":\"0\",\"lightbox\":\"0\",\"shadowbox\":\"0\",\"tipclass\":\"tooltip\",\"tipopacity\":\"0.8\",\"tipspeed\":\"150\",\"tipposition\":\"br\",\"tipoffsets_x\":\"16\",\"tipoffsets_y\":\"16\",\"flash\":\"10,0,22,87\",\"windowsmedia\":\"5,1,52,701\",\"quicktime\":\"6,0,2,0\",\"realmedia\":\"7,0,0,0\",\"shockwave\":\"8,5,1,0\"}','','',0,'0000-00-00 00:00:00',0,0),(10047,'rsform','component','com_rsform','',1,1,0,0,'{\"legacy\":false,\"name\":\"RSForm!\",\"type\":\"component\",\"creationDate\":\"March 2013\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2013 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0 R46\",\"description\":\"COM_RSFORM_INSTALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10048,'TCPDF','library','tcpdf','',0,1,1,0,'{\"legacy\":false,\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10049,'RSForm! Pro Module','module','mod_rsform','',0,1,0,0,'{\"legacy\":false,\"name\":\"RSForm! Pro Module\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"MOD_RSFORM_DESC\",\"group\":\"\"}','{\"formId\":\"1\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10050,'RSForm! Pro Feedback Module','module','mod_rsform_feedback','',0,1,0,0,'{\"legacy\":false,\"name\":\"RSForm! Pro Feedback Module\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"MOD_RSFORM_FEEDBACK_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"@spacer\":\"\",\"formId\":\"\",\"open-in\":\"modal\",\"modal_x\":\"660\",\"modal_y\":\"475\",\"itemid\":\"\",\"string\":\"feedback\",\"font\":\"arial\",\"font-size\":\"14\",\"position\":\"left\",\"text-color\":\"#ffffff\",\"bg-color\":\"#ff0000\",\"border-color\":\"#c90000\",\"type\":\"png\"}','','',0,'0000-00-00 00:00:00',0,0),(10051,'RSForm! Pro Module Frontend List','module','mod_rsform_list','',0,1,0,0,'{\"legacy\":false,\"name\":\"RSForm! Pro Module Frontend List\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"MOD_RSFORM_LIST_DESC\",\"group\":\"\"}','{\"formId\":\"1\",\"lang\":\"\",\"sort_submissions\":\"0\",\"@spacer\":\"\",\"userId\":\"0\",\"show_confirmed\":\"0\",\"template_module\":\"<table width=\\\"100%\\\">{formdata}<\\/table>\",\"template_formdatarow\":\"<tr><td>{details}{FullName:value}{\\/details}<\\/td><td>{Email:value}<\\/td><\\/tr>\",\"template_formdetail\":\"<table width=\\\"100%\\\"><tr><td>{FullName:value}<\\/td><td>{Email:value}<\\/td><\\/tr><\\/table>\",\"limit\":\"30\",\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10052,'System - RSForm! Pro Payment','plugin','rsfppayment','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro Payment\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFFPAYMENT_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10053,'System - RSForm! Pro PayPal','plugin','rsfppaypal','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro PayPal\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPPAYPAL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10054,'System - RSForm! Pro Offline Payment','plugin','rsfpofflinepayment','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro Offline Payment\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPOFFLINEPAYMENT_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10055,'RSFormProPaymentPlugins','package','pkg_RSFormProPaymentPlugins','',0,1,1,0,'{\"legacy\":false,\"name\":\"RSForm! Pro Payment Plugins\",\"type\":\"package\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10056,'Content - RSForm! Pro','plugin','rsform','content',0,1,1,0,'{\"legacy\":false,\"name\":\"Content - RSForm! Pro\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_CONTENT_RSFORM_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10057,'System - RSForm! Pro Google Analytics','plugin','rsfpgoogle','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro Google Analytics\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPGOOGLE_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10058,'System - RSForm! Pro PDF','plugin','rsfppdf','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro PDF\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPPDF_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10059,'System - RSForm! Pro reCAPTCHA','plugin','rsfprecaptcha','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro reCAPTCHA\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPRECAPTCHA_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10060,'System - RSForm! Pro','plugin','rsform','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFORM_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10061,'System - PlayThru Captcha for RSForm! Pro','plugin','rsfpplaythru','system',0,1,1,0,'{\"legacy\":true,\"name\":\"System - PlayThru Captcha for RSForm! Pro\",\"type\":\"plugin\",\"creationDate\":\"2012-11-05\",\"author\":\"Davide Tampellini\",\"copyright\":\"(C) 2009-2012 www.fabbricabinaria.it\",\"authorEmail\":\"info@fabbricabinaria.it\",\"authorUrl\":\"www.fabbricabinaria.it\",\"version\":\"1.0.1\",\"description\":\"PlayThru Captcha for RSForm!Pro - PlayThru plugin allows you to add PlayThru minigames to validate your forms. Works with at least RSForm! Pro 1.4.0 REV45!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10062,'rsinstaller','component','com_rsinstaller','',1,0,0,0,'{\"legacy\":true,\"name\":\"rsinstaller\",\"type\":\"component\",\"creationDate\":\"04\\/06\\/2009\",\"author\":\"RSJoomla\",\"copyright\":\"(C) 2007-2010 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.3.0\",\"description\":\"PlayThru Captcha for RSForm!Pro - PlayThru plugin allows you to add PlayThru minigames to validate your forms. Works with at least RSForm! Pro 1.3.0 REV30!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10063,'System - RSForm! Pro Registration Form','plugin','rsfpregistration','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSForm! Pro Registration Form\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFPREGISTRATION_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10064,'Qlue 404','plugin','qlue404','system',0,0,1,0,'{\"name\":\"Qlue 404\",\"type\":\"plugin\",\"creationDate\":\"27 April\",\"author\":\"Aaron Harding - Qlue\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.qlue.co.uk\",\"version\":\"3.0\",\"description\":\"This plugin is installed with the Qlue 404 component, this plugin is used to capture any errors to log and feedback to the component\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',101,0),(10065,'qlue404','component','com_qlue404','',1,1,0,0,'{\"name\":\"Qlue 404\",\"type\":\"component\",\"creationDate\":\"April 2011\",\"author\":\"Aaron Harding\",\"copyright\":\"Copyright (C) 2011 Qlue Ltd. All rights reserved.\",\"authorEmail\":\"support@qlue.info\",\"authorUrl\":\"http:\\/\\/www.qlue.co.uk\",\"version\":\"3.0\",\"description\":\"COM_QLUE404_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10066,'plg_system_tagmeta','plugin','tagmeta','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_tagmeta\",\"type\":\"plugin\",\"creationDate\":\"May 2012\",\"author\":\"selfget.com\",\"copyright\":\"Copyright (C) 2009 - 2012 selfget.com\",\"authorEmail\":\"info@selfget.com\",\"authorUrl\":\"http:\\/\\/www.selfget.com\",\"version\":\"1.7.1\",\"description\":\"PLG_SYS_TAGMETA_DESCRIPTION\",\"group\":\"\"}','{\"customauthor\":\"\",\"addauthor\":\"0\",\"customcopyright\":\"\",\"addcopyright\":\"0\",\"customgenerator\":\"\",\"replacegenerator\":\"0\",\"addsitename\":\"0\",\"separator\":\"\\\\b-\\\\b\",\"cleandefaultpage\":\"0\",\"metatitle\":\"1\",\"cleancanonical\":\"0\",\"selfexcludecanonical\":\"0\",\"safewordcount\":\"0\",\"cleankeys\":\"0\",\"excludekeys\":\"nbsp\",\"excludekeys2\":\"nbsp\",\"redirect\":\"0\",\"basepath\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10067,'com_tagmeta','component','com_tagmeta','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_tagmeta\",\"type\":\"component\",\"creationDate\":\"May 2012\",\"author\":\"selfget.com\",\"copyright\":\"Copyright (C) 2009 - 2012 selfget.com\",\"authorEmail\":\"info@selfget.com\",\"authorUrl\":\"http:\\/\\/www.selfget.com\",\"version\":\"1.7.1\",\"description\":\"COM_TAGMETA_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10068,'com_xmap','component','com_xmap','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_xmap\",\"type\":\"component\",\"creationDate\":\"2011-04-10\",\"author\":\"Guillermo Vargas\",\"copyright\":\"This component is released under the GNU\\/GPL License\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"http:\\/\\/joomla.vargas.co.cr\",\"version\":\"2.3.2\",\"description\":\"Xmap - Sitemap Generator for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10069,'Xmap - Content Plugin','plugin','com_content','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - Content Plugin\",\"type\":\"plugin\",\"creationDate\":\"01\\/26\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.4\",\"description\":\"Add support for articles and categories on Joomla 1.6 or newer\",\"group\":\"\"}','{\"expand_categories\":\"1\",\"expand_featured\":\"1\",\"include_archived\":\"2\",\"show_unauth\":\"0\",\"add_pagebreaks\":\"1\",\"max_art\":\"0\",\"max_art_age\":\"0\",\"add_images\":\"0\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"art_priority\":\"-1\",\"art_changefreq\":\"-1\",\"keywords\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10070,'Xmap - Kunena Plugin','plugin','com_kunena','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - Kunena Plugin\",\"type\":\"plugin\",\"creationDate\":\"September 2007\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.3\",\"description\":\"Xmap Plugin for Kunena component\",\"group\":\"\"}','{\"include_topics\":\"1\",\"max_topics\":\"\",\"max_age\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"topic_priority\":\"-1\",\"topic_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10071,'Xmap - SobiPro Plugin','plugin','com_sobipro','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - SobiPro Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/15\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"Xmap Plugin for SobiPro component\",\"group\":\"\"}','{\"include_entries\":\"1\",\"max_entries\":\"\",\"max_age\":\"\",\"entries_order\":\"a.ordering\",\"entries_orderdir\":\"DESC\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"weekly\",\"entry_priority\":\"-1\",\"entry_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10072,'Xmap - Mosets Tree Plugin','plugin','com_mtree','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - Mosets Tree Plugin\",\"type\":\"plugin\",\"creationDate\":\"07\\/20\\/2011\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.2\",\"description\":\"XMAP_MTREE_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"cats_order\":\"cat_name\",\"cats_orderdir\":\"ASC\",\"include_links\":\"1\",\"links_order\":\"ordering\",\"entries_orderdir\":\"ASC\",\"max_links\":\"\",\"max_age\":\"\",\"cat_priority\":\"0.5\",\"cat_changefreq\":\"weekly\",\"link_priority\":\"0.5\",\"link_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0),(10073,'Xmap - Virtuemart Plugin','plugin','com_virtuemart','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - Virtuemart Plugin\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.1\",\"description\":\"XMAP_VM_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_products\":\"1\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"prod_priority\":\"-1\",\"prod_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10074,'Xmap - WebLinks Plugin','plugin','com_weblinks','xmap',0,0,1,0,'{\"legacy\":false,\"name\":\"Xmap - WebLinks Plugin\",\"type\":\"plugin\",\"creationDate\":\"Apr 2004\",\"author\":\"Guillermo Vargas\",\"copyright\":\"GNU GPL\",\"authorEmail\":\"guille@vargas.co.cr\",\"authorUrl\":\"joomla.vargas.co.cr\",\"version\":\"2.0.1\",\"description\":\"XMAP_WL_PLUGIN_DESCRIPTION\",\"group\":\"\"}','{\"include_links\":\"1\",\"max_links\":\"\",\"cat_priority\":\"-1\",\"cat_changefreq\":\"-1\",\"link_priority\":\"-1\",\"link_changefreq\":\"-1\"}','','',0,'0000-00-00 00:00:00',0,0),(10075,'xmap','package','pkg_xmap','',0,1,1,0,'{\"legacy\":false,\"name\":\"Xmap Package\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.0.0\",\"description\":\"The Site Map generator for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10080,'Button - RokBox','plugin','rokbox','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"Button - RokBox\",\"type\":\"plugin\",\"creationDate\":\"November 13, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.0.8\",\"description\":\"This is an Editor Button to allow injection of RokBox snippets into your Content\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10112,'rsfirewall','component','com_rsfirewall','',1,1,0,0,'{\"legacy\":false,\"name\":\"RSFirewall!\",\"type\":\"component\",\"creationDate\":\"June 2014\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2009-2014 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"2.8.4\",\"description\":\"COM_RSFIREWALL_INSTALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10113,'System - RSFirewall! Active Scanner','plugin','rsfirewall','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - RSFirewall! Active Scanner\",\"type\":\"plugin\",\"creationDate\":\"October 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2009-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"PLG_SYSTEM_RSFIREWALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',-999,0),(10114,'RSFirewall! Control Panel Module','module','mod_rsfirewall','',1,1,2,0,'{\"legacy\":false,\"name\":\"RSFirewall! Control Panel Module\",\"type\":\"module\",\"creationDate\":\"October 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2009-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0\",\"description\":\"MOD_RSFIREWALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10119,'RokCommon','library','lib_rokcommon','',0,1,1,0,'{\"legacy\":false,\"name\":\"RokCommon\",\"type\":\"library\",\"creationDate\":\"March 11, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.1.11\",\"description\":\"RokCommon Shared Library\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10121,'Gantry','library','lib_gantry','',0,1,1,0,'{\"legacy\":false,\"name\":\"Gantry\",\"type\":\"library\",\"creationDate\":\"August 6, 2014\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"4.1.25\",\"description\":\"Gantry Starting Template for Joomla! v4.1.25\",\"group\":\"\"}','{}','','{\"compatibility\":{\"available\":{\"value\":[\"^(1.[67]|2\\\\.5|3\\\\.)\"],\"version\":\"4.1.27\"}}}',0,'0000-00-00 00:00:00',0,0),(10122,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10123,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10124,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(10125,'Qlue404','package','pkg_Qlue404','',0,1,1,0,'{\"name\":\"Qlue 404\",\"type\":\"package\",\"creationDate\":\"April 2011\",\"author\":\"Aaron Harding\",\"copyright\":\"\",\"authorEmail\":\"support@qlue.info\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"COM_QLUE404_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10126,'plg_404log','plugin','404log','system',0,1,1,0,'{\"name\":\"plg_404log\",\"type\":\"plugin\",\"creationDate\":\"May 2014\",\"author\":\"Ionut Lupu\",\"copyright\":\"2014 Ionut Lupu. All Rights Reserved\",\"authorEmail\":\"ionut@medialup.com\",\"authorUrl\":\"www.medialup.com\",\"version\":\"1.2 Python\",\"description\":\" 404log will log all the 404 events and send proper notifications. \",\"group\":\"\"}','{\"sendEmail\":\"0\",\"emailTo\":\"\",\"emailSubject\":\"\",\"logfile\":\"\",\"redirect\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `xy79i_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_filters`
--

DROP TABLE IF EXISTS `xy79i_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_filters`
--

LOCK TABLES `xy79i_finder_filters` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links`
--

DROP TABLE IF EXISTS `xy79i_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links`
--

LOCK TABLES `xy79i_finder_links` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms0`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms0`
--

LOCK TABLES `xy79i_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms1`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms1`
--

LOCK TABLES `xy79i_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms2`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms2`
--

LOCK TABLES `xy79i_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms3`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms3`
--

LOCK TABLES `xy79i_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms4`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms4`
--

LOCK TABLES `xy79i_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms5`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms5`
--

LOCK TABLES `xy79i_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms6`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms6`
--

LOCK TABLES `xy79i_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms7`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms7`
--

LOCK TABLES `xy79i_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms8`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms8`
--

LOCK TABLES `xy79i_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_terms9`
--

DROP TABLE IF EXISTS `xy79i_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_terms9`
--

LOCK TABLES `xy79i_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termsa`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termsa`
--

LOCK TABLES `xy79i_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termsb`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termsb`
--

LOCK TABLES `xy79i_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termsc`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termsc`
--

LOCK TABLES `xy79i_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termsd`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termsd`
--

LOCK TABLES `xy79i_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termse`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termse`
--

LOCK TABLES `xy79i_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_links_termsf`
--

DROP TABLE IF EXISTS `xy79i_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_links_termsf`
--

LOCK TABLES `xy79i_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_taxonomy`
--

DROP TABLE IF EXISTS `xy79i_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_taxonomy`
--

LOCK TABLES `xy79i_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `xy79i_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `xy79i_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `xy79i_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_taxonomy_map`
--

LOCK TABLES `xy79i_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_terms`
--

DROP TABLE IF EXISTS `xy79i_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_terms`
--

LOCK TABLES `xy79i_finder_terms` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_terms_common`
--

DROP TABLE IF EXISTS `xy79i_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_terms_common`
--

LOCK TABLES `xy79i_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_terms_common` DISABLE KEYS */;
INSERT INTO `xy79i_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `xy79i_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_tokens`
--

DROP TABLE IF EXISTS `xy79i_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_tokens`
--

LOCK TABLES `xy79i_finder_tokens` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `xy79i_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_tokens_aggregate`
--

LOCK TABLES `xy79i_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_finder_types`
--

DROP TABLE IF EXISTS `xy79i_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_finder_types`
--

LOCK TABLES `xy79i_finder_types` WRITE;
/*!40000 ALTER TABLE `xy79i_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_languages`
--

DROP TABLE IF EXISTS `xy79i_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_languages`
--

LOCK TABLES `xy79i_languages` WRITE;
/*!40000 ALTER TABLE `xy79i_languages` DISABLE KEYS */;
INSERT INTO `xy79i_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `xy79i_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_menu`
--

DROP TABLE IF EXISTS `xy79i_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_menu`
--

LOCK TABLES `xy79i_menu` WRITE;
/*!40000 ALTER TABLE `xy79i_menu` DISABLE KEYS */;
INSERT INTO `xy79i_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,151,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',29,30,1,'*',0),(106,'main','RokGallery','rokgallery','','rokgallery','index.php?option=com_rokgallery','component',0,1,1,10025,0,'0000-00-00 00:00:00',0,1,'components/com_rokgallery/assets/images/rokgallery_16x16.png',0,'',45,46,0,'',1),(120,'main','RSFormPro','rsformpro','','rsformpro','index.php?option=com_rsform','component',0,1,1,10047,0,'0000-00-00 00:00:00',0,1,'components/com_rsform/assets/images/rsformpro.gif',0,'',51,64,0,'',1),(121,'main','COM_RSFORM_MANAGE_FORMS','com-rsform-manage-forms','','rsformpro/com-rsform-manage-forms','index.php?option=com_rsform&view=forms','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',52,53,0,'',1),(122,'main','COM_RSFORM_MANAGE_SUBMISSIONS','com-rsform-manage-submissions','','rsformpro/com-rsform-manage-submissions','index.php?option=com_rsform&view=submissions','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',54,55,0,'',1),(123,'main','COM_RSFORM_CONFIGURATION','com-rsform-configuration','','rsformpro/com-rsform-configuration','index.php?option=com_rsform&view=configuration','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',56,57,0,'',1),(124,'main','COM_RSFORM_BACKUP_RESTORE','com-rsform-backup-restore','','rsformpro/com-rsform-backup-restore','index.php?option=com_rsform&view=backuprestore','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',58,59,0,'',1),(125,'main','COM_RSFORM_UPDATES','com-rsform-updates','','rsformpro/com-rsform-updates','index.php?option=com_rsform&view=updates','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',60,61,0,'',1),(126,'main','COM_RSFORM_PLUGINS','com-rsform-plugins','','rsformpro/com-rsform-plugins','index.php?option=com_rsform&task=goto.plugins','component',0,120,2,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',62,63,0,'',1),(127,'main','com_rsinstaller','com-rsinstaller','','com-rsinstaller','index.php?option=com_rsinstaller','component',0,1,1,10062,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',65,66,0,'',1),(129,'main','COM_TAGMETA_MENU_TAGMETA','com-tagmeta-menu-tagmeta','','com-tagmeta-menu-tagmeta','index.php?option=com_tagmeta','component',0,1,1,10067,0,'0000-00-00 00:00:00',0,1,'components/com_tagmeta/images/tagmeta.png',0,'',67,74,0,'',1),(130,'main','COM_TAGMETA_MENU_RULES','com-tagmeta-menu-rules','','com-tagmeta-menu-tagmeta/com-tagmeta-menu-rules','index.php?option=com_tagmeta&view=rules','component',0,129,2,10067,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',68,69,0,'',1),(131,'main','COM_TAGMETA_MENU_SYNONYMS','com-tagmeta-menu-synonyms','','com-tagmeta-menu-tagmeta/com-tagmeta-menu-synonyms','index.php?option=com_tagmeta&view=synonyms','component',0,129,2,10067,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',70,71,0,'',1),(132,'main','COM_TAGMETA_MENU_ABOUT','com-tagmeta-menu-about','','com-tagmeta-menu-tagmeta/com-tagmeta-menu-about','index.php?option=com_tagmeta&view=about','component',0,129,2,10067,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',72,73,0,'',1),(133,'main','COM_XMAP_TITLE','com-xmap-title','','com-xmap-title','index.php?option=com_xmap','component',0,1,1,10068,0,'0000-00-00 00:00:00',0,1,'components/com_xmap/images/xmap-favicon.png',0,'',75,76,0,'',1),(134,'mainmenu','Services','services','','services','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',77,86,0,'*',0),(135,'mainmenu','Network Resources','network-resources','','services/network-resources','index.php?option=com_content&view=article&id=6','component',1,134,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',78,79,0,'*',0),(136,'mainmenu','Data Networks','data-networks','','services/data-networks','index.php?option=com_content&view=article&id=7','component',1,134,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',80,81,0,'*',0),(137,'mainmenu','Web Development','web-development','','services/web-development','index.php?option=com_content&view=article&id=4','component',1,134,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',82,83,0,'*',0),(138,'mainmenu','Home Office','home-office','','services/home-office','index.php?option=com_content&view=article&id=5','component',1,134,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',84,85,0,'*',0),(139,'mainmenu','Products','products','','products','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',87,100,0,'*',0),(140,'mainmenu','Web Development','web-development','','products/web-development','index.php?option=com_content&view=article&id=4','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',88,89,0,'*',0),(141,'mainmenu','Web Packages','web-packages','','products/web-packages','index.php?option=com_content&view=article&id=10','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',90,91,0,'*',0),(142,'mainmenu','Email Service','email-service','','products/email-service','index.php?option=com_content&view=article&id=12','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',92,93,0,'*',0),(143,'mainmenu','Email Marketing','email-marketing','','products/email-marketing','index.php?option=com_content&view=article&id=13','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',94,95,0,'*',0),(144,'mainmenu','Secure Online Backup','online-backup','','products/online-backup','index.php?option=com_content&view=article&id=14','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',96,97,0,'*',0),(145,'mainmenu','Groupware','groupware','','products/groupware','index.php?option=com_content&view=article&id=11','component',1,139,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',98,99,0,'*',0),(146,'mainmenu','About Us','about-us','','about-us','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',101,102,0,'*',0),(147,'mainmenu','Link Xchange','link-xchange','','link-xchange','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',103,104,0,'*',0),(148,'mainmenu','FAQ','faq','','faq','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',105,106,0,'*',0),(149,'mainmenu','Contact Us','contact-us','','contact-us','index.php?option=com_contact&view=contact&id=1','component',1,1,1,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"tabs\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"92\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"92\",\"splitmenu_item_subtext\":\"\"}',107,108,0,'*',0),(163,'main','COM_ROKCANDY','com_rokcandy','','com_rokcandy','index.php?option=com_rokcandy','component',0,1,1,10019,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/rokcandy-icon-16.png',0,'',109,114,0,'',1),(164,'main','COM_ROKCANDY_SUBMENU_MACROS','com_rokcandy_submenu_macros','','com_rokcandy/com_rokcandy_submenu_macros','index.php?option=com_rokcandy','component',0,163,2,10019,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/rokcandy-icon-16.png',0,'',110,111,0,'',1),(165,'main','COM_ROKCANDY_SUBMENU_CATEGORIES','com_rokcandy_submenu_categories','','com_rokcandy/com_rokcandy_submenu_categories','index.php?option=com_categories&extension=com_rokcandy','component',0,163,2,10019,0,'0000-00-00 00:00:00',0,1,'components/com_rokcandy/assets/icon-16-category.png',0,'',112,113,0,'',1),(178,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',115,124,0,'',1),(179,'main','WF_MENU_CPANEL','wf_menu_cpanel','','jce/wf_menu_cpanel','index.php?option=com_jce','component',0,178,2,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',116,117,0,'',1),(180,'main','WF_MENU_CONFIG','wf_menu_config','','jce/wf_menu_config','index.php?option=com_jce&view=config','component',0,178,2,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',118,119,0,'',1),(181,'main','WF_MENU_PROFILES','wf_menu_profiles','','jce/wf_menu_profiles','index.php?option=com_jce&view=profiles','component',0,178,2,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',120,121,0,'',1),(182,'main','WF_MENU_INSTALL','wf_menu_install','','jce/wf_menu_install','index.php?option=com_jce&view=installer','component',0,178,2,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',122,123,0,'',1),(195,'main','RSFirewall','rsfirewall','','rsfirewall','index.php?option=com_rsfirewall','component',0,1,1,10112,0,'0000-00-00 00:00:00',0,1,'components/com_rsfirewall/assets/images/rsfirewall.gif',0,'',125,144,0,'',1),(196,'main','COM_RSFIREWALL_OVERVIEW','com_rsfirewall_overview','','rsfirewall/com_rsfirewall_overview','index.php?option=com_rsfirewall','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',126,127,0,'',1),(197,'main','COM_RSFIREWALL_SYSTEM_CHECK','com_rsfirewall_system_check','','rsfirewall/com_rsfirewall_system_check','index.php?option=com_rsfirewall&view=check','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',128,129,0,'',1),(198,'main','COM_RSFIREWALL_DATABASE_CHECK','com_rsfirewall_database_check','','rsfirewall/com_rsfirewall_database_check','index.php?option=com_rsfirewall&view=dbcheck','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',130,131,0,'',1),(199,'main','COM_RSFIREWALL_SYSTEM_LOGS','com_rsfirewall_system_logs','','rsfirewall/com_rsfirewall_system_logs','index.php?option=com_rsfirewall&view=logs','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',132,133,0,'',1),(200,'main','COM_RSFIREWALL_FIREWALL_CONFIGURATION','com_rsfirewall_firewall_configuration','','rsfirewall/com_rsfirewall_firewall_configuration','index.php?option=com_rsfirewall&view=configuration','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',134,135,0,'',1),(201,'main','COM_RSFIREWALL_LISTS','com_rsfirewall_lists','','rsfirewall/com_rsfirewall_lists','index.php?option=com_rsfirewall&view=lists','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',136,137,0,'',1),(202,'main','COM_RSFIREWALL_EXCEPTIONS','com_rsfirewall_exceptions','','rsfirewall/com_rsfirewall_exceptions','index.php?option=com_rsfirewall&view=exceptions','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',138,139,0,'',1),(203,'main','COM_RSFIREWALL_RSS_FEEDS_CONFIGURATION','com_rsfirewall_rss_feeds_configuration','','rsfirewall/com_rsfirewall_rss_feeds_configuration','index.php?option=com_rsfirewall&view=feeds','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',140,141,0,'',1),(204,'main','COM_RSFIREWALL_UPDATES','com_rsfirewall_updates','','rsfirewall/com_rsfirewall_updates','index.php?option=com_rsfirewall&view=updates','component',0,195,2,10112,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',142,143,0,'',1),(206,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',49,50,0,'',1),(207,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',47,48,0,'*',1),(208,'hiddenmenu','404 page','404-page','','404-page','index.php?option=com_content&view=article&id=15','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"fusion_item_subtext\":\"\",\"fusion_customicon\":\"\",\"fusion_customimage\":\"\",\"fusion_customclass\":\"\",\"fusion_columns\":\"1\",\"fusion_distribution\":\"even\",\"fusion_manual_distribution\":\"\",\"fusion_dropdown_width\":\"\",\"fusion_column_widths\":\"\",\"fusion_children_group\":\"0\",\"fusion_children_type\":\"menuitems\",\"fusion_modules\":\"94\",\"fusion_module_positions\":\"\",\"splitmenu_menu_entry_type\":\"normal\",\"splitmenu_menu_module\":\"94\",\"splitmenu_item_subtext\":\"\"}',145,146,0,'*',0),(209,'main','COM_QLUE404_MENU','com_qlue404_menu','','com_qlue404_menu','index.php?option=com_qlue404','component',0,1,1,10065,0,'0000-00-00 00:00:00',0,1,'components/com_qlue404/assets/images/qlue_logo.png',0,'',147,150,0,'',1),(210,'main','COM_QLUE404_MENU_CUSTOM_ADMIN','com_qlue404_menu_custom_admin','','com_qlue404_menu/com_qlue404_menu_custom_admin','index.php?option=com_qlue404&view=customs','component',0,209,2,10065,0,'0000-00-00 00:00:00',0,1,'class:custom',0,'',148,149,0,'',1);
/*!40000 ALTER TABLE `xy79i_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_menu_types`
--

DROP TABLE IF EXISTS `xy79i_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_menu_types`
--

LOCK TABLES `xy79i_menu_types` WRITE;
/*!40000 ALTER TABLE `xy79i_menu_types` DISABLE KEYS */;
INSERT INTO `xy79i_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'sitemap','Site Map',''),(3,'hiddenmenu','Hidden Menu','');
/*!40000 ALTER TABLE `xy79i_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_messages`
--

DROP TABLE IF EXISTS `xy79i_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_messages`
--

LOCK TABLES `xy79i_messages` WRITE;
/*!40000 ALTER TABLE `xy79i_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_messages_cfg`
--

DROP TABLE IF EXISTS `xy79i_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_messages_cfg`
--

LOCK TABLES `xy79i_messages_cfg` WRITE;
/*!40000 ALTER TABLE `xy79i_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_modules`
--

DROP TABLE IF EXISTS `xy79i_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_modules`
--

LOCK TABLES `xy79i_modules` WRITE;
/*!40000 ALTER TABLE `xy79i_modules` DISABLE KEYS */;
INSERT INTO `xy79i_modules` VALUES (1,0,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,0,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,0,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(92,0,'RSForm! Pro Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_rsform',1,1,'',0,'*'),(93,0,'RSForm! Pro Feedback Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_rsform_feedback',1,1,'',0,'*'),(94,0,'RSForm! Pro Module Frontend List','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_rsform_list',1,1,'',0,'*'),(95,0,'Call Us!','','<h3 style=\"text-align: center;\">Call Today <br />For A Quote!</h3>\r\n<p style=\"text-align: center;\">Schedule a Demonstration Today.<br /><span style=\"font-size: small;\"><strong>(815) 588-1001</strong></span></p>',1,'sidebar-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"box2\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(96,0,'Newsflash','','',1,'breadcrumb',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_articles_news',1,1,'{\"catid\":[\"12\"],\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"0\",\"count\":\"5\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(97,0,'Footer','','',1,'footer-a',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,0,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"box1 basictitle\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(98,0,'RSFirewall! Control Panel Module','','',1,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_rsfirewall',1,1,'',1,'*'),(99,70,'Hidden Menu','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"hiddenmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `xy79i_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_modules_menu`
--

DROP TABLE IF EXISTS `xy79i_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_modules_menu`
--

LOCK TABLES `xy79i_modules_menu` WRITE;
/*!40000 ALTER TABLE `xy79i_modules_menu` DISABLE KEYS */;
INSERT INTO `xy79i_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(95,0),(96,0),(97,0),(98,0);
/*!40000 ALTER TABLE `xy79i_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_newsfeeds`
--

DROP TABLE IF EXISTS `xy79i_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_newsfeeds`
--

LOCK TABLES `xy79i_newsfeeds` WRITE;
/*!40000 ALTER TABLE `xy79i_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_overrider`
--

DROP TABLE IF EXISTS `xy79i_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_overrider`
--

LOCK TABLES `xy79i_overrider` WRITE;
/*!40000 ALTER TABLE `xy79i_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_postinstall_messages`
--

DROP TABLE IF EXISTS `xy79i_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_postinstall_messages`
--

LOCK TABLES `xy79i_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `xy79i_postinstall_messages` DISABLE KEYS */;
INSERT INTO `xy79i_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `xy79i_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_qlue404`
--

DROP TABLE IF EXISTS `xy79i_qlue404`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_qlue404` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_qlue404`
--

LOCK TABLES `xy79i_qlue404` WRITE;
/*!40000 ALTER TABLE `xy79i_qlue404` DISABLE KEYS */;
INSERT INTO `xy79i_qlue404` VALUES (1,'Error','404','<p>dhfkldjgkljdslgj</p>',1,0,'0000-00-00 00:00:00','2015-02-20 14:41:34','2015-02-20 14:41:34','{\"page_suffix\":\"\",\"show_title\":\"0\"}');
/*!40000 ALTER TABLE `xy79i_qlue404` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_qlue404_links`
--

DROP TABLE IF EXISTS `xy79i_qlue404_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_qlue404_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `redirect` varchar(250) NOT NULL,
  `referer` varchar(250) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_qlue404_links`
--

LOCK TABLES `xy79i_qlue404_links` WRITE;
/*!40000 ALTER TABLE `xy79i_qlue404_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_qlue404_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_redirect_links`
--

DROP TABLE IF EXISTS `xy79i_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_redirect_links`
--

LOCK TABLES `xy79i_redirect_links` WRITE;
/*!40000 ALTER TABLE `xy79i_redirect_links` DISABLE KEYS */;
INSERT INTO `xy79i_redirect_links` VALUES (1,'http://192.168.1.24/crk/services/data-networks.htm','','','',2,0,'2015-02-20 04:47:32','0000-00-00 00:00:00'),(2,'http://192.168.1.24/crk/bnmbm.htm','','','',1,0,'2015-02-20 05:49:05','0000-00-00 00:00:00'),(3,'http://192.168.1.24/crk/contact-.php','','','',1,0,'2015-02-20 09:30:16','0000-00-00 00:00:00'),(4,'http://192.168.1.24/crk/contact-.;lk;','','','',1,0,'2015-02-20 09:31:14','0000-00-00 00:00:00'),(5,'http://192.168.1.24/crk/fdsfdsf.h','','','',1,0,'2015-02-20 09:50:45','0000-00-00 00:00:00'),(6,'http://192.168.1.24/crk/fdsfdsf.htm','','','',1,0,'2015-02-20 09:50:53','0000-00-00 00:00:00'),(7,'http://192.168.1.24/crk/error.php','','','',1,0,'2015-02-20 09:56:02','0000-00-00 00:00:00'),(8,'http://192.168.1.24/crk/uo','','','',3,0,'2015-02-20 10:49:48','0000-00-00 00:00:00'),(9,'http://192.168.1.24/crk/jghkjhkl','','','',1,0,'2015-02-20 10:55:31','0000-00-00 00:00:00'),(10,'http://192.168.1.24/crk/products.htm','','','',1,0,'2015-02-20 10:55:37','0000-00-00 00:00:00'),(11,'http://192.168.1.24/crk/productsskdljskl','','','',1,0,'2015-02-20 10:56:07','0000-00-00 00:00:00'),(12,'http://192.168.1.24/crk/productsskdljskl.html','','','',2,0,'2015-02-20 10:56:33','0000-00-00 00:00:00'),(13,'http://192.168.1.24/crk/productsskdljskl.php','','','',1,0,'2015-02-20 10:56:39','0000-00-00 00:00:00'),(14,'http://192.168.1.24/crk/asd','','','',1,0,'2015-02-20 10:57:07','0000-00-00 00:00:00'),(15,'http://192.168.1.24/crk/kdfgkldfjl','','','',1,0,'2015-02-20 10:57:17','0000-00-00 00:00:00'),(16,'http://192.168.1.24/crk/kdfgkldfjl.php','','','',1,0,'2015-02-20 10:57:36','0000-00-00 00:00:00'),(17,'http://192.168.1.24/crk/skjd','','','',2,0,'2015-02-20 10:59:08','0000-00-00 00:00:00'),(18,'http://192.168.1.24/crk/skjd.php','','','',1,0,'2015-02-20 10:59:27','0000-00-00 00:00:00'),(19,'http://192.168.1.24/crk/services/network-resources.htm','','','',1,0,'2015-02-20 11:01:16','0000-00-00 00:00:00'),(20,'http://192.168.1.24/crk/services/network-reso,html','','','',1,0,'2015-02-20 11:01:49','0000-00-00 00:00:00'),(21,'http://192.168.1.24/crk/services/network-reso.html','','','',3,0,'2015-02-20 11:01:55','0000-00-00 00:00:00'),(22,'http://192.168.1.24/crk/services/network-reso.pdf','','','',2,0,'2015-02-20 11:02:13','0000-00-00 00:00:00'),(23,'http://192.168.1.24/crk/services/network-reso.htm','','','',4,0,'2015-02-20 11:05:10','0000-00-00 00:00:00'),(24,'http://192.168.1.24/crk/services/network-reso.php','','','',2,0,'2015-02-20 11:05:41','0000-00-00 00:00:00'),(25,'http://192.168.1.24/crk/services/network-reso','','','',1,0,'2015-02-20 11:14:58','0000-00-00 00:00:00'),(26,'http://192.168.1.24/crk/services/network-r','','','',1,0,'2015-02-20 11:20:53','0000-00-00 00:00:00'),(27,'http://192.168.1.24/crk/jhgjk\'','','','',1,0,'2015-02-20 11:21:06','0000-00-00 00:00:00'),(28,'http://192.168.1.24/crk/jhgjk\'dhkj','','','',1,0,'2015-02-20 11:21:09','0000-00-00 00:00:00'),(29,'http://192.168.1.24/crk/jhnvn\'','','','',1,0,'2015-02-20 11:22:24','0000-00-00 00:00:00'),(30,'http://192.168.1.24/crk/jhnvn\'jfdk','','','',1,0,'2015-02-20 11:25:01','0000-00-00 00:00:00'),(31,'http://192.168.1.24/crk/jhnvn\'jfdkjh','','','',1,0,'2015-02-20 11:25:06','0000-00-00 00:00:00'),(32,'http://192.168.1.24/crk/jhnvn\'jfdkjhnjkhlk','','','',2,0,'2015-02-20 11:25:11','0000-00-00 00:00:00'),(33,'http://192.168.1.24/crk/dvfd','','','',1,0,'2015-02-20 11:31:34','0000-00-00 00:00:00'),(34,'http://192.168.1.24/crk/dvfd. n','','','',1,0,'2015-02-20 11:31:40','0000-00-00 00:00:00'),(35,'http://192.168.1.24/crk/dvfd.','','','',1,0,'2015-02-20 11:31:44','0000-00-00 00:00:00'),(36,'http://192.168.1.24/crk/dvfd.n','','','',1,0,'2015-02-20 11:31:49','0000-00-00 00:00:00'),(37,'http://192.168.1.24/crk/dvfd.bncnsd','','','',1,0,'2015-02-20 11:35:02','0000-00-00 00:00:00'),(38,'http://192.168.1.24/crk/dvfd.,l','','','',1,0,'2015-02-20 11:35:08','0000-00-00 00:00:00'),(39,'http://192.168.1.24/crk/dvfd.html','','','',1,0,'2015-02-20 11:35:13','0000-00-00 00:00:00'),(40,'http://192.168.1.24/crk/dvf','','','',8,0,'2015-02-20 11:35:51','0000-00-00 00:00:00'),(41,'http://192.168.1.24/crk/dvf.php','','','',2,0,'2015-02-20 11:36:03','0000-00-00 00:00:00'),(42,'http://192.168.1.24/crk/dvf,','','','',1,0,'2015-02-20 12:02:22','0000-00-00 00:00:00'),(43,'http://192.168.1.24/crk/dvf,l','','','',1,0,'2015-02-20 12:02:25','0000-00-00 00:00:00'),(44,'http://192.168.1.24/crk/fhgfjhg','','','',1,0,'2015-02-20 12:04:17','0000-00-00 00:00:00'),(45,'http://192.168.1.24/crk/fhgfjhg.html','','','',1,0,'2015-02-20 12:04:36','0000-00-00 00:00:00'),(46,'http://192.168.1.24/crk/fhgfjhg.php','','','',2,0,'2015-02-20 12:04:42','0000-00-00 00:00:00'),(47,'http://192.168.1.24/crk/vvb','','','',2,0,'2015-02-20 12:10:01','0000-00-00 00:00:00'),(48,'http://192.168.1.24/crk/vvbgff','','','',1,0,'2015-02-20 12:11:38','0000-00-00 00:00:00'),(49,'http://192.168.1.24/crk/vvbgffkhkhhhkjhjhjkh','','','',1,0,'2015-02-20 12:11:48','0000-00-00 00:00:00'),(50,'http://192.168.1.24/crk/vvbgffkhkhhhkjhjhjkh.php','','','',1,0,'2015-02-20 12:12:07','0000-00-00 00:00:00'),(51,'http://192.168.1.24/crk/vvbg','','','',3,0,'2015-02-20 12:16:48','0000-00-00 00:00:00'),(52,'http://192.168.1.24/crk/vvbgmlml','','','',1,0,'2015-02-20 12:19:10','0000-00-00 00:00:00'),(53,'http://192.168.1.24/crk/services/data-networks.htmlkjhkl','','','',1,0,'2015-02-20 12:21:03','0000-00-00 00:00:00'),(54,'http://192.168.1.24/crk/services/data-networks.h','','','',1,0,'2015-02-20 12:21:08','0000-00-00 00:00:00'),(55,'http://192.168.1.24/crk/services/data-networksjhjk','','','',4,0,'2015-02-20 12:21:19','0000-00-00 00:00:00'),(56,'http://192.168.1.24/crk/services/data-networksjhjk.b','','','',1,0,'2015-02-20 12:22:30','0000-00-00 00:00:00'),(57,'http://192.168.1.24/crk/services/data-networksjhjk.php','','','',1,0,'2015-02-20 12:22:54','0000-00-00 00:00:00'),(58,'http://192.168.1.24/crk/services/data-networksjhjk.html','','','',1,0,'2015-02-20 12:23:02','0000-00-00 00:00:00'),(59,'http://192.168.1.24/crk/services/data-networksjhjk.htm','','','',1,0,'2015-02-20 12:23:09','0000-00-00 00:00:00'),(60,'http://192.168.1.24/crk/services/data-networksjhjk.ht','','','',1,0,'2015-02-20 12:23:25','0000-00-00 00:00:00'),(61,'http://192.168.1.24/crk/services/data-networksjhjk.hh','','','',1,0,'2015-02-20 12:25:43','0000-00-00 00:00:00'),(62,'http://192.168.1.24/crk/services/data-networksjhjk.htmlbnmn','','','',1,0,'2015-02-20 12:25:53','0000-00-00 00:00:00'),(63,'http://192.168.1.24/crk/products/email-service.ht','','','',1,0,'2015-02-20 12:37:52','0000-00-00 00:00:00'),(64,'http://192.168.1.24/crk/products/email-service.','','','',2,0,'2015-02-20 12:38:32','0000-00-00 00:00:00'),(65,'http://192.168.1.24/crk/products/email-service.m','','','',3,0,'2015-02-20 12:38:40','0000-00-00 00:00:00'),(66,'http://192.168.1.24/crk/products/email-','','','',1,0,'2015-02-20 12:53:11','0000-00-00 00:00:00'),(67,'http://192.168.1.24/crk/products/email','','','',1,0,'2015-02-20 12:58:54','0000-00-00 00:00:00'),(68,'http://192.168.1.24/crk/products/email.','','','',1,0,'2015-02-20 12:58:57','0000-00-00 00:00:00'),(69,'http://192.168.1.24/crk/products/email.hy','','','',1,0,'2015-02-20 12:59:01','0000-00-00 00:00:00'),(70,'http://192.168.1.24/crk/products/email.h','','','',1,0,'2015-02-20 13:04:10','0000-00-00 00:00:00'),(71,'http://192.168.1.24/crk/products/web-development.htmljhj','','','',1,0,'2015-02-20 13:04:24','0000-00-00 00:00:00'),(72,'http://192.168.1.24/crk/products/web-developmentjjkhkj','','','',2,0,'2015-02-20 13:04:36','0000-00-00 00:00:00'),(73,'http://192.168.1.24/crk/products/web-developmentjjkhkj.hgkjhkj','','','',1,0,'2015-02-20 13:04:41','0000-00-00 00:00:00'),(74,'http://192.168.1.24/crk/products/web-developmentjjkhkj.','','','',1,0,'2015-02-20 13:06:27','0000-00-00 00:00:00'),(75,'http://192.168.1.24/crk/products/web-developmentjjkhkj.jjk','','','',1,0,'2015-02-20 13:06:30','0000-00-00 00:00:00'),(76,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksd','','','',1,0,'2015-02-20 13:06:58','0000-00-00 00:00:00'),(77,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdks.php','','','',2,0,'2015-02-20 13:07:07','0000-00-00 00:00:00'),(78,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdks','','','',1,0,'2015-02-20 13:11:01','0000-00-00 00:00:00'),(79,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg','','','',5,0,'2015-02-20 13:11:04','0000-00-00 00:00:00'),(80,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg.html','','','',4,0,'2015-02-20 13:16:12','0000-00-00 00:00:00'),(81,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg.php','','','',1,0,'2015-02-20 13:16:33','0000-00-00 00:00:00'),(82,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg.feef','','','',1,0,'2015-02-20 13:17:24','0000-00-00 00:00:00'),(83,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg.ini','','','',1,0,'2015-02-20 13:17:46','0000-00-00 00:00:00'),(84,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg.htm','','','',1,0,'2015-02-20 13:19:00','0000-00-00 00:00:00'),(85,'http://192.168.1.24/crk/products/web-developmentjjkhkjdsjhfjksdjdksgjhklfg,','','','',1,0,'2015-02-20 13:31:36','0000-00-00 00:00:00'),(86,'http://192.168.1.24/crk/contact-us.php','','','',4,0,'2015-02-20 13:38:25','0000-00-00 00:00:00'),(87,'http://192.168.1.24/crk/contact','','','',2,0,'2015-02-20 13:38:39','0000-00-00 00:00:00'),(88,'http://192.168.1.24/crk/contactjhghjg','','','',9,0,'2015-02-20 13:38:43','0000-00-00 00:00:00'),(89,'http://192.168.1.24/crk/contactjhghjg.html','','','',2,0,'2015-02-20 13:38:50','0000-00-00 00:00:00'),(90,'http://192.168.1.24/crk/contactjhghjg.php','','','',3,0,'2015-02-20 13:45:06','0000-00-00 00:00:00'),(91,'http://192.168.1.24/crk/contactjhghjg.','','','',2,0,'2015-02-20 13:45:40','0000-00-00 00:00:00'),(92,'http://192.168.1.24/crk/contactjhghjg.htmkkk.pdf','','','',2,0,'2015-02-20 13:46:15','0000-00-00 00:00:00'),(93,'http://192.168.1.24/crk/contactjhghjg.htmkkk.p','','','',1,0,'2015-02-20 13:47:07','0000-00-00 00:00:00'),(94,'http://192.168.1.24/crk/contactjhghjg.htm','','','',1,0,'2015-02-20 13:47:14','0000-00-00 00:00:00'),(95,'http://192.168.1.24/crk/contactjhghjg.jkh','','','',2,0,'2015-02-20 13:47:51','0000-00-00 00:00:00'),(96,'http://192.168.1.24/crk/contactjhghjg,v','','','',1,0,'2015-02-20 13:51:12','0000-00-00 00:00:00'),(97,'http://192.168.1.24/crk/contactshga','','','',1,0,'2015-02-20 14:07:53','0000-00-00 00:00:00'),(98,'http://192.168.1.24/crk/contacts','','','',1,0,'2015-02-20 14:10:53','0000-00-00 00:00:00'),(99,'http://192.168.1.24/crk/contact-uskgnhkl','','','',1,0,'2015-02-20 14:11:02','0000-00-00 00:00:00'),(100,'http://192.168.1.24/crk/contact-uskgnhkl.php','','','',1,0,'2015-02-20 14:11:15','0000-00-00 00:00:00'),(101,'http://192.168.1.24/crk/contact-us;\'l','','','',1,0,'2015-02-20 14:20:11','0000-00-00 00:00:00'),(102,'http://192.168.1.24/crk/contact-us;\'l.html','','','',1,0,'2015-02-20 14:20:21','0000-00-00 00:00:00'),(103,'http://192.168.1.24/crk/contact-us;\'l.htm','','','',2,0,'2015-02-20 14:20:25','0000-00-00 00:00:00'),(104,'http://192.168.1.24/crk/bfhgf','','','',1,0,'2015-02-20 14:41:46','0000-00-00 00:00:00'),(105,'http://192.168.1.24/crk/services/affssfasfs','','','',1,0,'2015-02-20 14:44:24','0000-00-00 00:00:00'),(106,'http://192.168.1.24/crk/services/aggsdfgdfgd','','','',2,0,'2015-02-20 14:45:26','0000-00-00 00:00:00'),(107,'http://192.168.1.24/crk/services/aggsdfgdfgd.php','','','',3,0,'2015-02-20 14:45:35','0000-00-00 00:00:00'),(108,'http://192.168.1.24/crk/services/aggsdfgdfgd.html','','','',1,0,'2015-02-20 14:45:40','0000-00-00 00:00:00'),(109,'http://192.168.1.24/crk/services/aggsdfgdfgd.htm','','','',1,0,'2015-02-20 14:45:47','0000-00-00 00:00:00'),(110,'http://192.168.1.24/crk/products/web-developmentdhfk','','','',1,0,'2015-02-20 14:49:57','0000-00-00 00:00:00'),(111,'http://192.168.1.24/crk/about-us.php','','','',1,0,'2015-02-20 14:52:36','0000-00-00 00:00:00'),(112,'http://192.168.1.24/crk/jdjjjjj','','','',4,0,'2015-02-20 14:53:11','0000-00-00 00:00:00'),(113,'http://192.168.1.24/crk/services/data-networks.php','','','',1,0,'2015-02-20 15:00:09','0000-00-00 00:00:00'),(114,'http://192.168.1.24/crk/services/network-resourcesm,m','','','',1,0,'2015-02-20 15:01:23','0000-00-00 00:00:00'),(115,'http://192.168.1.24/crk/services/network-resourcesm,mhk','','','',4,0,'2015-02-20 15:01:42','0000-00-00 00:00:00'),(116,'http://192.168.1.24/crk/hgjh','','','',1,0,'2015-02-20 15:05:33','0000-00-00 00:00:00'),(117,'http://192.168.1.24/crk/services/aggsdfgdfg','','','',2,0,'2015-02-20 15:11:29','0000-00-00 00:00:00'),(118,'http://192.168.1.24/crk/services/aggsdfgdfg.htm','','','',3,0,'2015-02-20 15:11:53','0000-00-00 00:00:00'),(119,'http://192.168.1.24/crk/services/aggsdfgdfg.html','','','',2,0,'2015-02-20 15:11:57','0000-00-00 00:00:00'),(120,'http://192.168.1.24/crk/services/aggsdfgdfg.php','','','',1,0,'2015-02-20 15:17:33','0000-00-00 00:00:00'),(121,'http://192.168.1.24/crk/link-xchangehgh','','','',1,0,'2015-02-21 04:59:08','0000-00-00 00:00:00'),(122,'http://192.168.1.24/crk/link-xchangehg','','','',1,0,'2015-02-21 04:59:17','0000-00-00 00:00:00'),(123,'http://192.168.1.24/crk/dsf','','','',2,0,'2015-02-21 06:33:27','0000-00-00 00:00:00'),(124,'http://192.168.1.24/crk/dsfk','','','',1,0,'2015-02-21 06:34:35','0000-00-00 00:00:00'),(125,'http://192.168.1.24/crk/fhf','','','',29,0,'2015-02-21 06:48:49','0000-00-00 00:00:00'),(126,'http://192.168.1.24/crk/servicesghg','','','',1,0,'2015-02-21 07:15:51','0000-00-00 00:00:00'),(127,'http://192.168.1.24/crk/djhfk','','','',1,0,'2015-02-21 07:26:17','0000-00-00 00:00:00'),(128,'http://192.168.1.24/crk/djhfk.pp','','','',1,0,'2015-02-21 07:26:31','0000-00-00 00:00:00'),(129,'http://192.168.1.24/crk/djhfk.ppsgfjkds','','','',1,0,'2015-02-21 07:26:35','0000-00-00 00:00:00'),(130,'http://192.168.1.24/crk/products/web-packages.htmlfhkghf','','','',1,0,'2015-02-21 07:49:44','0000-00-00 00:00:00'),(131,'http://192.168.1.24/crk/products/web-packages.htm','','','',1,0,'2015-02-21 07:49:51','0000-00-00 00:00:00'),(132,'http://192.168.1.24/crk/services/network-resources.php','','','',1,0,'2015-02-21 07:51:03','0000-00-00 00:00:00'),(133,'http://192.168.1.24/crk/services/network-resources.html','','','',1,0,'2015-02-21 07:51:08','0000-00-00 00:00:00'),(134,'http://192.168.1.24/crk/faq.htmlsad','','','',1,0,'2015-02-21 07:51:37','0000-00-00 00:00:00'),(135,'http://192.168.1.24/crk/faq.htm','','','',52,0,'2015-02-21 07:51:49','0000-00-00 00:00:00'),(136,'http://192.168.1.24/crk/products/online-backup.htmlgh','','','',2,0,'2015-02-21 07:52:44','0000-00-00 00:00:00'),(137,'http://192.168.1.24/crk/services/data-networksnbnm.html','','','',1,0,'2015-02-21 07:56:25','0000-00-00 00:00:00'),(138,'http://192.168.1.24/crk/services/data-networksnbnm.ht','','','',1,0,'2015-02-21 07:56:29','0000-00-00 00:00:00'),(139,'http://192.168.1.24/crk/services/data-networksnbnm.php','','','',24,0,'2015-02-21 07:56:35','0000-00-00 00:00:00'),(140,'http://192.168.1.24/crk/services/data-networksnbnm.phpjkh','','','',1,0,'2015-02-21 08:02:57','0000-00-00 00:00:00'),(141,'http://192.168.1.24/crk/services/data-networksnbnm','','','',1,0,'2015-02-21 08:03:17','0000-00-00 00:00:00'),(142,'http://192.168.1.24/crk/productshjk','','','',1,0,'2015-02-21 08:08:12','0000-00-00 00:00:00'),(143,'http://192.168.1.24/crk/productshjk.php','','','',1,0,'2015-02-21 08:58:23','0000-00-00 00:00:00'),(144,'http://192.168.1.24/crk/ask.htm','','','',1,0,'2015-02-24 05:18:47','0000-00-00 00:00:00'),(145,'http://192.168.1.24/crk/ask.html','','','',1,0,'2015-02-24 05:18:54','0000-00-00 00:00:00'),(146,'http://192.168.1.24/crk/ask','','','',1,0,'2015-02-24 05:18:58','0000-00-00 00:00:00'),(147,'http://192.168.1.24/crk/ask.php','','','',1,0,'2015-02-24 05:19:01','0000-00-00 00:00:00'),(148,'http://192.168.1.24/crk/ask.asp','','','',1,0,'2015-02-24 05:19:05','0000-00-00 00:00:00'),(149,'http://192.168.1.24/crk/contact-us.dghhh','','','',1,0,'2015-02-24 05:20:47','0000-00-00 00:00:00'),(150,'http://192.168.1.24/crk/jgfj.hjf','','','',1,0,'2015-02-24 05:20:59','0000-00-00 00:00:00'),(151,'http://192.168.1.24/crk/sds.sdjsd','','','',1,0,'2015-02-24 05:46:54','0000-00-00 00:00:00'),(152,'http://192.168.1.24/crk/fsdafsd','','','',1,0,'2015-02-24 05:46:55','0000-00-00 00:00:00'),(153,'http://192.168.1.24/crk/sds.html','','','',1,0,'2015-02-24 05:46:58','0000-00-00 00:00:00'),(154,'http://192.168.1.24/crk/fsdafs.as','','','',1,0,'2015-02-24 05:47:00','0000-00-00 00:00:00'),(155,'http://192.168.1.24/crk/fsdafs.a','','','',1,0,'2015-02-24 05:47:03','0000-00-00 00:00:00'),(156,'http://192.168.1.24/crk/ssdsd.html','','','',1,0,'2015-02-24 05:47:07','0000-00-00 00:00:00'),(157,'http://192.168.1.24/crk/fsdafs.asfsdafs','','','',1,0,'2015-02-24 05:47:07','0000-00-00 00:00:00'),(158,'http://192.168.1.24/crk/fsdafs.html','','','',1,0,'2015-02-24 05:47:12','0000-00-00 00:00:00'),(159,'http://192.168.1.24/crk/fsdafs.php','','','',1,0,'2015-02-24 05:47:16','0000-00-00 00:00:00'),(160,'http://192.168.1.24/crk/dfdfd.hjdshhh','','','',1,0,'2015-02-24 05:47:33','0000-00-00 00:00:00'),(161,'http://192.168.1.24/crk/services.html/dsfskd.dfksdl','','','',1,0,'2015-02-24 05:48:00','0000-00-00 00:00:00'),(162,'http://192.168.1.24/crk/services/data-networks/sdfsdf','','','',1,0,'2015-02-24 05:48:10','0000-00-00 00:00:00'),(163,'http://192.168.1.24/crk/services/data-networks/sdfsdf.sdfds','','','',1,0,'2015-02-24 05:48:13','0000-00-00 00:00:00'),(164,'http://192.168.1.24/crk/fdafsf.df','','','',1,0,'2015-02-24 06:08:19','0000-00-00 00:00:00'),(165,'http://192.168.1.24/crk/services.html','','','',1,0,'2015-02-25 08:22:08','0000-00-00 00:00:00'),(166,'http://192.168.1.24/crk/services.htmljkdfhgkj','','','',1,0,'2015-02-25 08:23:11','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `xy79i_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokcandy`
--

DROP TABLE IF EXISTS `xy79i_rokcandy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokcandy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `macro` text NOT NULL,
  `html` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokcandy`
--

LOCK TABLES `xy79i_rokcandy` WRITE;
/*!40000 ALTER TABLE `xy79i_rokcandy` DISABLE KEYS */;
INSERT INTO `xy79i_rokcandy` VALUES (20,8,'[h1]{text}[/h1]','<h1>{text}</h1>',1,0,'0000-00-00 00:00:00',1,''),(21,8,'[h2]{text}[/h2]','<h2>{text}</h2>',1,0,'0000-00-00 00:00:00',2,''),(22,8,'[h3]{text}[/h3]','<h3>{text}</h3>',1,0,'0000-00-00 00:00:00',3,''),(23,8,'[h4]{text}[/h4]','<h4>{text}</h4>',1,0,'0000-00-00 00:00:00',4,''),(24,8,'[h5]{text}[/h5]','<h5>{text}</h5>',1,0,'0000-00-00 00:00:00',5,''),(25,8,'[b]{text}[/b]','<strong>{text}</strong>',1,0,'0000-00-00 00:00:00',6,''),(26,8,'[i]{text}[/i]','<em>{text}</em>',1,0,'0000-00-00 00:00:00',7,''),(27,8,'[code]{text}[/code]','<code>{text}</code>',1,0,'0000-00-00 00:00:00',8,'');
/*!40000 ALTER TABLE `xy79i_rokcandy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokcommon_configs`
--

DROP TABLE IF EXISTS `xy79i_rokcommon_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokcommon_configs`
--

LOCK TABLES `xy79i_rokcommon_configs` WRITE;
/*!40000 ALTER TABLE `xy79i_rokcommon_configs` DISABLE KEYS */;
INSERT INTO `xy79i_rokcommon_configs` VALUES (1,'rokgallery','container','/components/com_rokgallery/container.xml',10),(2,'rokgallery','library','/components/com_rokgallery/lib',10),(20,'roksprocket','library','/components/com_roksprocket/lib',10),(19,'roksprocket','container','/components/com_roksprocket/container.xml',10);
/*!40000 ALTER TABLE `xy79i_rokcommon_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_file_loves`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_file_loves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_file_loves` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_file_loves`
--

LOCK TABLES `xy79i_rokgallery_file_loves` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_loves` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_loves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_file_tags`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_file_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_file_tags` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`,`tag`),
  KEY `xy79i_rokgallery_file_tags_file_id_idx` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_file_tags`
--

LOCK TABLES `xy79i_rokgallery_file_tags` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_file_views`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_file_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_file_views` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_file_views`
--

LOCK TABLES `xy79i_rokgallery_file_views` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_file_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_files`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `guid` char(36) NOT NULL,
  `md5` char(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `license` varchar(255) DEFAULT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `type` char(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `xy79i_files_sluggable_idx` (`slug`),
  KEY `xy79i_rokgallery_files_published_idx` (`published`),
  KEY `xy79i_rokgallery_files_md5_idx` (`md5`),
  KEY `xy79i_rokgallery_files_guid_idx` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_files`
--

LOCK TABLES `xy79i_rokgallery_files` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_files_index`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_files_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_files_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `xy79i_rokgallery_files_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_files_index`
--

LOCK TABLES `xy79i_rokgallery_files_index` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_files_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_files_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_filters`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `query` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_filters`
--

LOCK TABLES `xy79i_rokgallery_filters` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_galleries`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `filetags` longtext,
  `width` int(10) unsigned NOT NULL DEFAULT '910',
  `height` int(10) unsigned NOT NULL DEFAULT '500',
  `keep_aspect` tinyint(1) DEFAULT '0',
  `force_image_size` tinyint(1) DEFAULT '0',
  `thumb_xsize` int(10) unsigned NOT NULL DEFAULT '190',
  `thumb_ysize` int(10) unsigned NOT NULL DEFAULT '150',
  `thumb_background` varchar(12) DEFAULT NULL,
  `thumb_keep_aspect` tinyint(1) DEFAULT '0',
  `auto_publish` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `xy79i_rokgallery_galleries_auto_publish_idx` (`auto_publish`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_galleries`
--

LOCK TABLES `xy79i_rokgallery_galleries` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_jobs`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_jobs` (
  `id` char(36) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `properties` text,
  `state` varchar(255) NOT NULL,
  `status` text,
  `percent` bigint(20) unsigned DEFAULT NULL,
  `sm` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_jobs`
--

LOCK TABLES `xy79i_rokgallery_jobs` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_profiles`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `profile` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `xy79i_rokgallery_profiles_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_profiles`
--

LOCK TABLES `xy79i_rokgallery_profiles` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_schema_version`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_schema_version` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_schema_version`
--

LOCK TABLES `xy79i_rokgallery_schema_version` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_schema_version` DISABLE KEYS */;
INSERT INTO `xy79i_rokgallery_schema_version` VALUES (1);
/*!40000 ALTER TABLE `xy79i_rokgallery_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_slice_tags`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_slice_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_slice_tags` (
  `slice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`slice_id`,`tag`),
  KEY `rokgallery_slice_tags_slice_id_idx` (`slice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_slice_tags`
--

LOCK TABLES `xy79i_rokgallery_slice_tags` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_slice_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_slice_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_slices`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_slices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_slices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `caption` text,
  `link` text,
  `filesize` int(10) unsigned NOT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `admin_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `manipulations` longtext,
  `palette` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb_xsize` int(10) unsigned NOT NULL,
  `thumb_ysize` int(10) unsigned NOT NULL,
  `thumb_keep_aspect` tinyint(1) NOT NULL DEFAULT '1',
  `thumb_background` varchar(12) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `xy79i_rokgallery_slices_sluggable_idx` (`slug`,`gallery_id`),
  KEY `rokgallery_slices_published_idx` (`published`),
  KEY `rokgallery_slices_guid_idx` (`guid`),
  KEY `file_id_idx` (`file_id`),
  KEY `gallery_id_idx` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_slices`
--

LOCK TABLES `xy79i_rokgallery_slices` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_slices` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_slices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rokgallery_slices_index`
--

DROP TABLE IF EXISTS `xy79i_rokgallery_slices_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rokgallery_slices_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `rokgallery_slices_index_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rokgallery_slices_index`
--

LOCK TABLES `xy79i_rokgallery_slices_index` WRITE;
/*!40000 ALTER TABLE `xy79i_rokgallery_slices_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rokgallery_slices_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_roksprocket_items`
--

DROP TABLE IF EXISTS `xy79i_roksprocket_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_roksprocket_items`
--

LOCK TABLES `xy79i_roksprocket_items` WRITE;
/*!40000 ALTER TABLE `xy79i_roksprocket_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_roksprocket_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_configuration`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_configuration` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_configuration`
--

LOCK TABLES `xy79i_rsfirewall_configuration` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_configuration` DISABLE KEYS */;
INSERT INTO `xy79i_rsfirewall_configuration` VALUES ('active_scanner_status','1','int'),('capture_backend_password','1','int'),('verify_upload','1','int'),('verify_upload_blacklist_exts','php\r\njs\r\nexe\r\ncom\r\nbat\r\ncmd\r\nmp3','text'),('monitor_core','1','int'),('monitor_users','','array-int'),('active_scanner_status_backend','1','int'),('backend_password_enabled','0','int'),('backend_password','','text'),('log_emails','support@jikometrix.net','text'),('log_alert_level','critical','array-text'),('log_history','30','int'),('log_overview','5','int'),('verify_agents','perl\ncurl\njava','array-text'),('verify_multiple_exts','1','int'),('capture_backend_login','1','int'),('code','','text'),('verify_generator','1','int'),('grade','0','int'),('verify_emails','0','int'),('offset','300','int'),('request_timeout','0','int'),('log_system_check','0','int'),('enable_extra_logging','0','int'),('enable_backend_captcha','1','int'),('backend_captcha','3','int'),('blocked_countries','','array-text'),('autoban_attempts','5','int'),('enable_autoban','1','int'),('enable_autoban_login','1','int'),('log_hour_limit','50','int'),('log_emails_count','0','int'),('log_emails_send_after','0','int'),('lfi','1','int'),('rfi','1','int'),('enable_php_for','get','array-text'),('enable_sql_for','get','array-text'),('enable_js_for','post','array-text'),('filter_js','1','int'),('filter_uploads','1','int'),('disable_installer','0','int'),('disable_new_admin_users','0','int'),('admin_users','249\n252\n250','array-int'),('file_permissions','644','int'),('folder_permissions','755','int'),('abusive_ips','1','int'),('ipv4_whois','http://whois.domaintools.com/{ip}','text'),('ipv6_whois','','text');
/*!40000 ALTER TABLE `xy79i_rsfirewall_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_exceptions`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_exceptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `regex` tinyint(1) NOT NULL,
  `match` text NOT NULL,
  `php` tinyint(1) NOT NULL,
  `sql` tinyint(1) NOT NULL,
  `js` tinyint(1) NOT NULL,
  `uploads` tinyint(1) NOT NULL,
  `reason` text NOT NULL,
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_exceptions`
--

LOCK TABLES `xy79i_rsfirewall_exceptions` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsfirewall_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_feeds`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `limit` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_feeds`
--

LOCK TABLES `xy79i_rsfirewall_feeds` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_feeds` DISABLE KEYS */;
INSERT INTO `xy79i_rsfirewall_feeds` VALUES (1,'http://feeds.joomla.org/JoomlaSecurityNews',5,1,1);
/*!40000 ALTER TABLE `xy79i_rsfirewall_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_hashes`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_hashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` text NOT NULL,
  `hash` varchar(32) NOT NULL,
  `type` varchar(64) NOT NULL,
  `flag` varchar(1) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_hashes`
--

LOCK TABLES `xy79i_rsfirewall_hashes` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_hashes` DISABLE KEYS */;
INSERT INTO `xy79i_rsfirewall_hashes` VALUES (81,'plugins/user/joomla/joomla.php','cdc25e22efba44c2ee96765f7f29fc94','3.0.0','',''),(82,'plugins/authentication/joomla/joomla.php','8ed6639864a180fbc2206a44441a8b7d','3.0.0','',''),(83,'index.php','5ef1a5edf66502c473de1439650b7157','3.0.0','',''),(84,'administrator/index.php','ee513c632afbd46b64cb6ddb11579862','3.0.0','',''),(85,'plugins/user/joomla/joomla.php','cdc25e22efba44c2ee96765f7f29fc94','3.0.1','',''),(86,'plugins/authentication/joomla/joomla.php','8ed6639864a180fbc2206a44441a8b7d','3.0.1','',''),(87,'index.php','5ef1a5edf66502c473de1439650b7157','3.0.1','',''),(88,'administrator/index.php','ee513c632afbd46b64cb6ddb11579862','3.0.1','',''),(89,'plugins/user/joomla/joomla.php','cdc25e22efba44c2ee96765f7f29fc94','3.0.2','',''),(90,'plugins/authentication/joomla/joomla.php','8ed6639864a180fbc2206a44441a8b7d','3.0.2','',''),(91,'index.php','5ef1a5edf66502c473de1439650b7157','3.0.2','',''),(92,'administrator/index.php','ee513c632afbd46b64cb6ddb11579862','3.0.2','',''),(93,'plugins/user/joomla/joomla.php','9fd830d97736f5f7536f6f9c7e180995','3.0.3','',''),(94,'plugins/authentication/joomla/joomla.php','6f323887899ea20d4dc5a42ef99b9176','3.0.3','',''),(95,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.0.3','',''),(96,'administrator/index.php','3527f9b34bd165f74e91c9425e8cc85a','3.0.3','',''),(97,'plugins/user/joomla/joomla.php','9fd830d97736f5f7536f6f9c7e180995','3.0.4','',''),(98,'plugins/authentication/joomla/joomla.php','6f323887899ea20d4dc5a42ef99b9176','3.0.4','',''),(99,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.0.4','',''),(100,'administrator/index.php','3527f9b34bd165f74e91c9425e8cc85a','3.0.4','',''),(101,'plugins/user/joomla/joomla.php','3cd9d1f8beff4cad347fe808d8e48acf','3.1.0','',''),(102,'plugins/authentication/joomla/joomla.php','37ef6204d8dfcd41b5d7fd7f97cdf526','3.1.0','',''),(103,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.1.0','',''),(104,'administrator/index.php','3527f9b34bd165f74e91c9425e8cc85a','3.1.0','',''),(105,'plugins/user/joomla/joomla.php','3cd9d1f8beff4cad347fe808d8e48acf','3.1.1','',''),(106,'plugins/authentication/joomla/joomla.php','37ef6204d8dfcd41b5d7fd7f97cdf526','3.1.1','',''),(107,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.1.1','',''),(108,'administrator/index.php','3527f9b34bd165f74e91c9425e8cc85a','3.1.1','',''),(109,'plugins/user/joomla/joomla.php','3cd9d1f8beff4cad347fe808d8e48acf','3.1.4','',''),(110,'plugins/authentication/joomla/joomla.php','e32dc6b8000891726982fc265cf88bd9','3.1.4','',''),(111,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.1.4','',''),(112,'administrator/index.php','3e6d4dcde6cee18a841798773028b4ff','3.1.4','',''),(113,'plugins/user/joomla/joomla.php','3cd9d1f8beff4cad347fe808d8e48acf','3.1.5','',''),(114,'plugins/authentication/joomla/joomla.php','e32dc6b8000891726982fc265cf88bd9','3.1.5','',''),(115,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.1.5','',''),(116,'administrator/index.php','3e6d4dcde6cee18a841798773028b4ff','3.1.5','',''),(117,'plugins/user/joomla/joomla.php','3cd9d1f8beff4cad347fe808d8e48acf','3.1.6','',''),(118,'plugins/authentication/joomla/joomla.php','e32dc6b8000891726982fc265cf88bd9','3.1.6','',''),(119,'index.php','d5a79d6d4694694a225a6b9a678ec6b1','3.1.6','',''),(120,'administrator/index.php','3e6d4dcde6cee18a841798773028b4ff','3.1.6','',''),(121,'plugins/user/joomla/joomla.php','503dfe4bea35227f7c07d4401d366f30','3.2.0','',''),(122,'plugins/authentication/joomla/joomla.php','5c22bb3cee69ed662d353ff1f7575a63','3.2.0','',''),(123,'index.php','acf88666df61e778e7455c5024a95eff','3.2.0','',''),(124,'administrator/index.php','8ad14cf42cafbfb4345c555ae5cdd567','3.2.0','',''),(125,'plugins/user/joomla/joomla.php','d939397041ef29bd8febec3c75d433b3','3.2.1','',''),(126,'plugins/authentication/joomla/joomla.php','2ef41dd148c1d9c4db79b157eabdd7d0','3.2.1','',''),(127,'index.php','acf88666df61e778e7455c5024a95eff','3.2.1','',''),(128,'administrator/index.php','8ad14cf42cafbfb4345c555ae5cdd567','3.2.1','',''),(129,'plugins/user/joomla/joomla.php','6cdf1c5a27a5caa6be0d373c791f2cc9','3.2.2','',''),(130,'plugins/authentication/joomla/joomla.php','5604973f5b7de18ffe3ebebdb274c013','3.2.2','',''),(131,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.2','',''),(132,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.2','',''),(133,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.2.3','',''),(134,'plugins/authentication/joomla/joomla.php','5604973f5b7de18ffe3ebebdb274c013','3.2.3','',''),(135,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.3','',''),(136,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.3','',''),(137,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.2.4','',''),(138,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.2.4','',''),(139,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.4','',''),(140,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.4','',''),(141,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.2.5','',''),(142,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.2.5','',''),(143,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.5','',''),(144,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.5','',''),(145,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.2.6','',''),(146,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.2.6','',''),(147,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.6','',''),(148,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.6','',''),(149,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.2.7','',''),(150,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.2.7','',''),(151,'index.php','ef5646b4d3a4de44f891bb993c5c2c27','3.2.7','',''),(152,'administrator/index.php','b65e93fd1da75297aa713c4585aaf90f','3.2.7','',''),(153,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.3.0','',''),(154,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.0','',''),(155,'index.php','7397f4ad99a402006262384a5f48157e','3.3.0','',''),(156,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.0','',''),(157,'plugins/user/joomla/joomla.php','0c79ab5d674eaa3f5a81e7e1a57ac0ee','3.3.1','',''),(158,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.1','',''),(159,'index.php','7397f4ad99a402006262384a5f48157e','3.3.1','',''),(160,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.1','',''),(161,'plugins/user/joomla/joomla.php','dc7b2aad0aa7c4112596d589c843261b','3.3.2','',''),(162,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.2','',''),(163,'index.php','7397f4ad99a402006262384a5f48157e','3.3.2','',''),(164,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.2','',''),(165,'plugins/user/joomla/joomla.php','dc7b2aad0aa7c4112596d589c843261b','3.3.3','',''),(166,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.3','',''),(167,'index.php','7397f4ad99a402006262384a5f48157e','3.3.3','',''),(168,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.3','',''),(169,'plugins/user/joomla/joomla.php','8125edbbdc2b3d28718d7df38aa8ef50','3.3.4','',''),(170,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.4','',''),(171,'index.php','7397f4ad99a402006262384a5f48157e','3.3.4','',''),(172,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.4','',''),(173,'plugins/user/joomla/joomla.php','8125edbbdc2b3d28718d7df38aa8ef50','3.3.5','',''),(174,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.5','',''),(175,'index.php','7397f4ad99a402006262384a5f48157e','3.3.5','',''),(176,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.5','',''),(177,'plugins/user/joomla/joomla.php','8125edbbdc2b3d28718d7df38aa8ef50','3.3.6','',''),(178,'plugins/authentication/joomla/joomla.php','f34bc9cfc67ee58e1bd5af603b76e96d','3.3.6','',''),(179,'index.php','7397f4ad99a402006262384a5f48157e','3.3.6','',''),(180,'administrator/index.php','2886000c74dea168b0d7d6ae49d46838','3.3.6','','');
/*!40000 ALTER TABLE `xy79i_rsfirewall_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_ignored`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_ignored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_ignored` (
  `path` text NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_ignored`
--

LOCK TABLES `xy79i_rsfirewall_ignored` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_ignored` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsfirewall_ignored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_lists`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_lists`
--

LOCK TABLES `xy79i_rsfirewall_lists` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsfirewall_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_logs`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` enum('low','medium','high','critical') NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `page` text NOT NULL,
  `referer` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `debug_variables` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_logs`
--

LOCK TABLES `xy79i_rsfirewall_logs` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_logs` DISABLE KEYS */;
INSERT INTO `xy79i_rsfirewall_logs` VALUES (1,'medium','2015-01-17 05:45:28','24.114.29.162',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_UNKNOWN','Username requested: crkconsultinggroup\nPassword requested: asdasd'),(2,'medium','2015-01-17 07:05:54','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: password'),(3,'medium','2015-01-17 07:05:56','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 159753'),(4,'medium','2015-01-17 07:05:59','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1qaz2wsx'),(5,'medium','2015-01-17 07:06:01','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: gfhjkm'),(6,'medium','2015-01-17 07:06:04','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123qweasd'),(7,'medium','2015-01-17 07:06:06','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123qwe'),(8,'medium','2015-01-17 07:06:09','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12qwaszx'),(9,'medium','2015-01-17 07:06:13','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r'),(10,'medium','2015-01-17 07:06:15','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: pass'),(11,'medium','2015-01-17 07:06:18','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: root'),(12,'medium','2015-01-17 07:06:20','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1qa2ws3ed'),(13,'medium','2015-01-17 07:06:23','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1qazxsw2'),(14,'medium','2015-01-17 07:06:25','193.176.147.144',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: gfhjkm123'),(15,'medium','2015-01-19 23:19:16','24.114.29.162',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_UNKNOWN','Username requested: crkconsultinggroup\nPassword requested: 12345a'),(16,'medium','2015-01-20 22:35:08','24.114.29.162',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345a'),(17,'medium','2015-01-21 19:27:27','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 112233'),(18,'medium','2015-01-21 19:27:32','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 11223344'),(19,'medium','2015-01-21 19:27:36','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123123123'),(20,'medium','2015-01-21 19:27:38','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12341234'),(21,'medium','2015-01-21 19:27:44','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123qweasdzxc'),(22,'medium','2015-01-21 19:27:55','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 54321'),(23,'medium','2015-01-21 19:28:02','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: ghbdtn'),(24,'medium','2015-01-21 19:28:05','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 654321'),(25,'medium','2015-01-21 19:28:17','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 987654321'),(26,'medium','2015-01-21 19:28:35','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 8888888888'),(27,'medium','2015-01-21 19:28:38','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 0123456789'),(28,'medium','2015-01-21 19:28:44','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1122'),(29,'medium','2015-01-21 19:28:54','193.176.147.115',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 111222'),(30,'medium','2015-01-28 18:33:48','41.105.180.188',0,'','http://www.crkconsultinggroup.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php','','LFI_ATTEMPTED','URI: action=revslider_show_image&img=../wp-config.php&format=php&Itemid=101&option=com_content&view=category&id=0\nMatch: ./'),(31,'medium','2015-01-28 21:26:19','212.47.195.52',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin123'),(32,'medium','2015-01-28 21:55:03','46.108.39.193',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234'),(33,'medium','2015-01-29 01:05:20','94.242.239.164',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456'),(34,'medium','2015-01-29 02:36:41','94.185.85.44',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin'),(35,'medium','2015-01-29 19:59:18','193.169.86.61',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123123'),(36,'medium','2015-01-30 10:56:14','46.108.39.193',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: password'),(37,'medium','2015-01-30 14:20:30','176.103.49.235',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123'),(38,'medium','2015-01-30 17:59:03','149.154.71.21',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1'),(39,'medium','2015-01-30 21:39:39','149.154.68.117',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456789'),(40,'medium','2015-01-31 20:48:27','149.154.71.21',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: pass'),(41,'medium','2015-02-01 11:55:27','94.250.248.34',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1111'),(42,'medium','2015-02-02 07:17:02','82.146.52.214',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e'),(43,'medium','2015-02-02 12:03:30','185.58.207.78',0,'','http://CRKCONSULTINGGROUP.COM/index.php?option=com_hdflvplayer&id=1+AND+1=2+UNION+SELECT+concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--','','SQLI_ATTEMPTED','URI: option=com_hdflvplayer&id=1 AND 1=2 UNION SELECT concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--\nMatch:  UNION SELECT '),(44,'medium','2015-02-02 22:46:25','80.249.233.246',0,'','http://CRKCONSULTINGGROUP.COM/index.php?option=com_hdflvplayer&id=1+AND+1=2+UNION+SELECT+concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--','','SQLI_ATTEMPTED','URI: option=com_hdflvplayer&id=1 AND 1=2 UNION SELECT concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--\nMatch:  UNION SELECT '),(45,'medium','2015-02-03 17:30:50','93.115.92.247',0,'','http://CRKCONSULTINGGROUP.COM/index.php?option=com_hdflvplayer&id=1+AND+1=2+UNION+SELECT+concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--','','SQLI_ATTEMPTED','URI: option=com_hdflvplayer&id=1 AND 1=2 UNION SELECT concat(12,0x3a,32),1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21--\nMatch:  UNION SELECT '),(46,'medium','2015-02-03 17:50:17','50.192.203.171',0,'','http://crkconsultinggroup.com/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php','','LFI_ATTEMPTED','URI: action=revslider_show_image&img=../wp-config.php&format=php&Itemid=101&option=com_content&view=category&id=0\nMatch: ./'),(47,'medium','2015-02-03 20:00:02','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: parol'),(48,'medium','2015-02-03 20:00:05','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: passwort'),(49,'medium','2015-02-03 20:00:08','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 11111111'),(50,'medium','2015-02-03 20:00:11','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 11'),(51,'medium','2015-02-03 20:00:13','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 11111'),(52,'medium','2015-02-03 20:00:18','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1111111'),(53,'medium','2015-02-03 20:00:23','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 111111111'),(54,'medium','2015-02-03 20:00:26','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1111111111'),(55,'medium','2015-02-03 20:00:28','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 11111111111'),(56,'medium','2015-02-03 20:00:32','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234512345'),(57,'medium','2015-02-03 20:00:34','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 007'),(58,'medium','2015-02-03 20:00:36','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1a2b3c'),(59,'medium','2015-02-03 20:00:39','46.148.30.50',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator/','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123qwe123'),(60,'medium','2015-02-04 11:23:13','176.103.50.234',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: password'),(61,'medium','2015-02-04 14:34:46','188.138.1.229',0,'','http://crkconsultinggroup.com/wp-admin/admin-ajax.php?action=revolution-slider_show_image&img=../wp-config.php','','LFI_ATTEMPTED','URI: action=revolution-slider_show_image&img=../wp-config.php&format=php&Itemid=101&option=com_content&view=category&id=0\nMatch: ./'),(62,'medium','2015-02-04 14:34:46','188.138.1.229',0,'','http://crkconsultinggroup.com/wp-admin/admin-ajax.php?action=revolution-slider_show_image&img=../wp-config.php','','LFI_ATTEMPTED','URI: action=revolution-slider_show_image&img=../wp-config.php&format=php&Itemid=101&option=com_content&view=category&id=0\nMatch: ./'),(63,'medium','2015-02-04 17:06:55','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123123'),(64,'medium','2015-02-04 17:06:56','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: adminadmin'),(65,'medium','2015-02-04 17:06:58','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345'),(66,'medium','2015-02-04 17:06:59','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qazwsx'),(67,'medium','2015-02-04 17:07:01','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1'),(68,'medium','2015-02-04 17:07:02','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456'),(69,'medium','2015-02-04 17:07:04','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 88'),(70,'medium','2015-02-04 17:07:05','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 77777'),(71,'medium','2015-02-04 17:07:07','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: pass'),(72,'medium','2015-02-04 17:07:08','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123qwe'),(73,'medium','2015-02-04 17:07:10','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: password'),(74,'medium','2015-02-04 17:07:11','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234'),(75,'medium','2015-02-04 17:07:13','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qazwsxedc'),(76,'medium','2015-02-04 17:07:14','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: test'),(77,'medium','2015-02-04 17:07:16','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 4'),(78,'medium','2015-02-04 17:07:17','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qweasd'),(79,'medium','2015-02-04 17:07:19','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123'),(80,'medium','2015-02-04 17:07:20','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qwerty'),(81,'medium','2015-02-04 17:07:22','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456789'),(82,'medium','2015-02-04 17:07:23','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 987654321'),(83,'medium','2015-02-04 17:07:25','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 111111'),(84,'medium','2015-02-04 17:07:27','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 159753'),(85,'medium','2015-02-04 17:07:28','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin123'),(86,'medium','2015-02-04 17:07:30','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: demo'),(87,'medium','2015-02-04 17:07:31','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: linux'),(88,'medium','2015-02-04 17:07:33','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234567890'),(89,'medium','2015-02-04 17:07:35','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123321'),(90,'medium','2015-02-04 17:07:37','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: q1w2e3'),(91,'medium','2015-02-04 17:07:38','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234567'),(92,'medium','2015-02-04 17:07:40','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12'),(93,'medium','2015-02-04 17:07:41','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin1'),(94,'medium','2015-02-04 17:07:43','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: Administrator'),(95,'medium','2015-02-04 17:07:44','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: support'),(96,'medium','2015-02-04 17:07:46','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admins'),(97,'medium','2015-02-04 17:07:47','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1qazxsw2'),(98,'medium','2015-02-04 17:07:49','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: administrators'),(99,'medium','2015-02-04 17:07:50','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: test123'),(100,'medium','2015-02-04 17:07:52','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345678'),(101,'medium','2015-02-04 17:07:53','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: passw'),(102,'medium','2015-02-04 17:07:54','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qweqwe'),(103,'medium','2015-02-04 17:07:56','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12qwaszx'),(104,'medium','2015-02-04 17:07:58','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: user123'),(105,'medium','2015-02-04 17:08:00','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r'),(106,'medium','2015-02-04 17:08:01','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: adm1n'),(107,'medium','2015-02-04 17:08:03','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: qwerty123'),(108,'medium','2015-02-04 17:08:04','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: garena'),(109,'medium','2015-02-04 17:08:06','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234qwer'),(110,'medium','2015-02-04 17:08:07','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1qw23e'),(111,'medium','2015-02-04 17:08:09','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: myhome'),(112,'medium','2015-02-04 17:08:10','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: root'),(113,'medium','2015-02-04 17:08:12','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 234567'),(114,'medium','2015-02-04 17:08:13','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 111'),(115,'medium','2015-02-04 17:08:15','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 333'),(116,'medium','2015-02-04 17:08:16','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 222'),(117,'medium','2015-02-04 17:08:18','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 444'),(118,'medium','2015-02-04 17:08:19','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 555'),(119,'medium','2015-02-04 17:08:20','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: user'),(120,'medium','2015-02-04 17:08:22','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r5t'),(121,'medium','2015-02-04 17:08:23','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r5t6z'),(122,'medium','2015-02-04 17:08:25','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r5t6z7u'),(123,'medium','2015-02-04 17:08:27','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 98765432'),(124,'medium','2015-02-04 17:08:29','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123654789'),(125,'medium','2015-02-04 17:08:30','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 531531531'),(126,'medium','2015-02-04 17:08:32','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 321321321'),(127,'medium','2015-02-04 17:08:33','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123123123'),(128,'medium','2015-02-04 17:08:35','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 9876543'),(129,'medium','2015-02-04 17:08:36','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 69696969'),(130,'medium','2015-02-04 17:08:38','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 321'),(131,'medium','2015-02-04 17:08:40','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 777'),(132,'medium','2015-02-04 17:08:41','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 888'),(133,'medium','2015-02-04 17:08:43','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 7654321'),(134,'medium','2015-02-04 17:08:44','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 666'),(135,'medium','2015-02-04 17:08:46','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 654321'),(136,'medium','2015-02-04 17:08:47','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 0'),(137,'medium','2015-02-04 17:08:49','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 101010101'),(138,'medium','2015-02-04 17:08:50','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 22221111'),(139,'medium','2015-02-04 17:08:52','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1111'),(140,'medium','2015-02-04 17:08:53','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: pwd'),(141,'medium','2015-02-04 17:08:55','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: passwords'),(142,'medium','2015-02-04 17:08:56','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123ewq'),(143,'medium','2015-02-04 17:08:58','221.143.48.160',0,'','http://crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: manage'),(144,'medium','2015-02-05 05:37:44','62.109.27.16',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1q2w3e4r'),(145,'medium','2015-02-05 08:24:22','188.190.100.207',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: demo'),(146,'medium','2015-02-05 09:21:11','92.63.101.7',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: test'),(147,'medium','2015-02-05 15:44:06','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin'),(148,'medium','2015-02-05 15:44:08','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin'),(149,'medium','2015-02-05 15:44:10','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456'),(150,'medium','2015-02-05 15:44:12','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin123'),(151,'medium','2015-02-05 15:44:14','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123'),(152,'medium','2015-02-05 15:44:16','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234'),(153,'medium','2015-02-05 15:44:18','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123123'),(154,'medium','2015-02-05 15:44:20','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: password'),(155,'medium','2015-02-05 15:44:22','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: pass'),(156,'medium','2015-02-05 15:44:24','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: crkconsultinggroup'),(157,'medium','2015-02-05 15:44:26','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: crkconsultinggroup.com'),(158,'medium','2015-02-05 15:44:28','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123321'),(159,'medium','2015-02-05 15:44:30','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345'),(160,'medium','2015-02-05 15:44:32','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345678'),(161,'medium','2015-02-05 15:44:34','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 123456789'),(162,'medium','2015-02-05 15:44:36','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234567890'),(163,'medium','2015-02-05 15:44:38','37.57.231.110',0,'','http://crkconsultinggroup.comhttp//crkconsultinggroup.com/administrator/index.php','','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: root'),(164,'medium','2015-02-06 08:15:56','92.63.96.229',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345'),(165,'medium','2015-02-06 10:47:49','94.250.255.22',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 12345678'),(166,'medium','2015-02-06 12:06:59','92.63.105.102',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 1234567'),(167,'medium','2015-02-06 16:01:32','176.99.12.71',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: admin123'),(168,'medium','2015-02-07 06:02:45','37.230.115.61',0,'','http://crkconsultinggroup.com/administrator/index.php','http://crkconsultinggroup.com/administrator','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: admin\nPassword requested: 111111'),(169,'medium','2015-02-08 06:30:15','93.115.92.247',0,'','http://crkconsultinggroup.com/index.php?option=com_kunena&func=userlist&search=%\' and 1=2) union select 1, concat_ws(0x3B,123,654),2,3,4,5,6,7,8,9,10,11,12,13,14-- ;','','SQLI_ATTEMPTED','URI: option=com_kunena&func=userlist&search=%\' and 1=2) union select 1, concat_ws(0x3B,123,654),2,3,4,5,6,7,8,9,10,11,12,13,14-- ;\nMatch:  union select '),(170,'medium','2015-02-20 13:12:54','192.168.1.24',0,'','http://192.168.1.24/crk/administrator/index.php','http://192.168.1.24/crk/administrator/index.php?option=com_plugins&layout=edit&extension_id=10064','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: jsupport2\nPassword requested: Ckc4qq3vlDPS'),(171,'medium','2015-02-20 13:48:45','192.168.1.24',0,'','http://192.168.1.24/crk/administrator/index.php','http://192.168.1.24/crk/administrator/index.php?option=com_plugins&task=plugin.edit&extension_id=10064','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: jsupport2\nPassword requested: Ckc4qq3vlDPS'),(172,'medium','2015-02-21 06:32:07','192.168.1.24',0,'','http://192.168.1.24/crk/administrator/index.php','http://192.168.1.24/crk/administrator/index.php?option=com_cache','BACKEND_LOGIN_ATTEMPT_KNOWN','Username requested: jsupport2\nPassword requested: Ckc4qq3vlDPS');
/*!40000 ALTER TABLE `xy79i_rsfirewall_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_offenders`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_offenders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_offenders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_offenders`
--

LOCK TABLES `xy79i_rsfirewall_offenders` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_offenders` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsfirewall_offenders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_signatures`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_signatures` (
  `signature` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`signature`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_signatures`
--

LOCK TABLES `xy79i_rsfirewall_signatures` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_signatures` DISABLE KEYS */;
INSERT INTO `xy79i_rsfirewall_signatures` VALUES ('eval\\(base64_decode\\((?s).*?\\)\\)','regex','Possible PHP injection (encoded code - base64)'),('\\(gzinflate\\(base64_decode\\((?s).*\\)','regex','Possible PHP injection (compressed code - gzip)'),('str_rot13\\(base64_decode\\((?s).*?\\)\\)','regex','Possible PHP injection (encoded code - str_rot13())'),('strrev\\(base64_decode\\((?s).*?\\)\\)','regex','Possible PHP injection (encoded code - strrev())'),('eval\\(stripslashes\\(\\$_(.*?)\\)\\)','regex','Possible PHP injection (code executed from superglobal variable)'),('eval\\(\\$_(.*?)\\)','regex','Possible PHP injection (code executed from superglobal variable)'),('_il_exec\\(\\)','regex','Possible risk - ionCube encrypted file'),('header(\\s+)?\\([\"|\'](l|L)ocation:(\\s+)?http:(.*?)\\)','regex','Possible PHP injection (redirect)'),('\\$wp_add_filter\\(','regex','PHP injection (obfuscated code)'),('if\\(function_exists\\(\'ob_start\'\\)&&!isset\\(\\$GLOBALS\\[(.*?)\\]\\)\\){\\$GLOBALS\\[(.*?)\\]=','regex','PHP injection'),('\\$_[a-zA-Z]=__FILE__;\\$_[a-zA-Z]=','regex','PHP injection (obfuscated code)'),('mail(\\s+)?\\((\"|\')(.*@)','regex','Possible PHP injection (mailer)'),('strrev\\((\'|\")edoced_46esab(\'|\")\\)','regex','Possible PHP injection (obfuscated code)'),('(shell_exec|passthru|system|exec|popen)\\s?\\((\'|\")(wget|lynx|links|curl)','regex','Possible PHP Injection (file download)'),('<script .*?src=[\"|\']https?://(.*)[\"|\']','regex','Suspicious JS inclusion'),('bash_history','filename','Possible hijacked server'),('bitchx','filename','IRC Client - possible hijacked server'),('brute *force','filename','Bruteforce'),('c99shell','filename','PHP Shell'),('cwings','filename','PHP Shell'),('DALnet','filename','IRC Client - possible hijacked server'),('directmail','filename','Mailer - possible hijacked server'),('eggdrop','filename','IRC Bot - possible hijacked server'),('guardservices','filename','Possible hijacked server'),('m0rtix','filename','Backdoor - possible hijacked server'),('phpremoteview','filename','PHP Shell'),('phpshell','filename','PHP Shell'),('psyBNC','filename','IRC Client - possible hijacked server'),('r0nin','filename','Exploit - possible hijacked server'),('w00t','filename','Exploit - possible hijacked server'),('r57shell','filename','PHP Shell'),('raslan58','filename','Possible hijacked server'),('spymeta','filename','Possible hijacked server'),('shellbot','filename','Backdoor - possible hijacked server'),('undernet','filename','IRC Client - possible hijacked server'),('void\\.ru','filename','Possible hijacked server'),('vulnscan','filename','Vulnerability Scanner - possible hijacked server'),('\\.ru/','filename','Possible hijacked server'),('r57\\.gen\\.tr','regex','PHP Shell - General variant'),('h4cker\\.tr','regex','PHP Shell - General variant'),('\\$QBDB51E25BF9A7F3D2475072803D1C36D','regex','PHP Shell - c99shell variant compressed'),('antichat','filename','PHP Shell - c99shell Antichat variant'),('PHPencoder','regex','PHP Encoded file - PHPencoder variant, please review manually'),('ccteam\\.ru','regex','PHP Shell - c99shell variant'),('c99shell','regex','PHP Shell - c99shell variant'),('act=phpinfo','regex','PHP Shell - c99shell variant'),('cgi','filename','PHP Shell - c99shell Cgi variant'),('CWShellDumper','filename','PHP Shell - c99shell CWShellDumper variant'),('ekin0x','filename','PHP Shell - c99shell ekin0x variant'),('kacak','filename','PHP Shell - c99shell kacak variant'),('liz0zim','filename','PHP Shell - c99shell liz0zim variant'),('r57shell','regex','PHP Shell - r57shell variant'),('\\/etc\\/passwd','regex','PHP Shell - suspicious code'),('ps -aux','regex','PHP Shell - suspicious code'),('\\$_POST\\[\'cmd\'\\]\\=\\=\"php_eval\"','regex','PHP Shell - r57shell variant'),('safe0ver','filename','PHP Shell - c99shell safe0ver variant'),('\\$_GET\\[\'sws\'\\]\\=\\= \'phpinfo\'','regex','PHP Shell - Saudi Sh3ll variant'),('Saudi Sh3ll','filename','PHP Shell - Saudi Sh3ll variant'),('sosyete','filename','PHP Shell - c99shell sosyete variant'),('tryag','filename','PHP Shell - c99shell tryag variant'),('zehir4','filename','PHP Shell - c99shell zehir4 variant'),('create\\_function\\(\\\'\\$\\\'(.*)','regex','Possible PHP injection (create_function() call)'),('Upload Gagal','regex','PHP Shell - File uploader'),('^GIF89;([^\\n]*\\n+)+(\\<\\?php)','regex','PHP injection - Hidden inside GIF file'),('exec\\((.*)\\/bin\\/sh','regex','Possible PHP Injection (shell execution)'),('preg_replace\\(\"/\\.\\*/e\"','regex','Possible PHP injection (obfuscated code using /e modifier)'),('\\(\"/[a-zA-Z0-9]+/e\",','regex','Possible PHP injection (obfuscated code using /e modifier)'),('ob_start\\(\"callbck\"\\)','regex','PHP Injection'),('eval\\(\"\\?\\>\"\\.base64_decode','regex','Possible PHP injection (encoded code - base64)'),('eval[\\s]?\\([\\s]?base64_decode\\([\\s]?.*?\\)\\)','regex','Possible PHP injection (encoded code - base64)'),('(wget|lynx|links|curl) https?:\\/\\/.*?; perl .*?','regex','Possible PHP Injection (file download and execution)'),('(wget|lynx|links|curl) https?:\\/\\/.*?; chmod .*?; \\.\\/','regex','Possible PHP Injection (file download and execution)'),('ini\\_set\\(chr\\(','regex','PHP injection'),('(include\\_once|require\\_once|include|require)(\\s+)?(\\()?[\'|\"](.*)(\\.png|\\.gif|\\.jpg|\\.jpeg|\\.ini)[\'|\"](\\))?','regex','Highly suspicious inclusion (possible CryptoPHP)'),('eval\\/\\*\\*\\/\\(','regex','Hidden eval()'),('mkdir\\([\'|\"].*?[\'|\"][\\s+]?,[\\s+]?0777\\)','regex','Unsafe directory creation - 0777 permissions.'),('(shell_exec|passthru|system|exec|popen)[\\s+]?\\([\\s+]?\\$(GLOBALS|_SERVER|_GET|_POST|_FILES|_COOKIE|_SESSION|_REQUEST|_ENV)','regex','Possible PHP injection (binary executed from superglobal variable)'),('http\\://fbt\\.yahoo\\.com/counter\\.php','regex','PHP injection (Russian counter)');
/*!40000 ALTER TABLE `xy79i_rsfirewall_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsfirewall_snapshots`
--

DROP TABLE IF EXISTS `xy79i_rsfirewall_snapshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsfirewall_snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `snapshot` text NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsfirewall_snapshots`
--

LOCK TABLES `xy79i_rsfirewall_snapshots` WRITE;
/*!40000 ALTER TABLE `xy79i_rsfirewall_snapshots` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsfirewall_snapshots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_component_type_fields`
--

DROP TABLE IF EXISTS `xy79i_rsform_component_type_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_component_type_fields`
--

LOCK TABLES `xy79i_rsform_component_type_fields` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_component_type_fields` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_component_type_fields` VALUES (1,'NAME','textbox','',1),(1,'CAPTION','textbox','',2),(1,'REQUIRED','select','NO\r\nYES',3),(1,'SIZE','textbox','20',4),(1,'MAXSIZE','textbox','',5),(1,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6),(1,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7),(1,'ADDITIONALATTRIBUTES','textarea','',8),(1,'DEFAULTVALUE','textarea','',9),(1,'DESCRIPTION','textarea','',11),(1,'COMPONENTTYPE','hidden','1',15),(1,'VALIDATIONEXTRA','textbox','',6),(2,'NAME','textbox','',1),(2,'CAPTION','textbox','',2),(2,'REQUIRED','select','NO\r\nYES',3),(2,'COLS','textbox','50',4),(2,'ROWS','textbox','5',5),(2,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6),(2,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7),(2,'ADDITIONALATTRIBUTES','textarea','',8),(2,'DEFAULTVALUE','textarea','',9),(2,'DESCRIPTION','textarea','',10),(2,'COMPONENTTYPE','hidden','2',10),(2,'WYSIWYG','select','NO\r\nYES',11),(2,'VALIDATIONEXTRA','textbox','',6),(3,'NAME','textbox','',1),(3,'CAPTION','textbox','',2),(3,'SIZE','textbox','',3),(3,'MULTIPLE','select','NO\r\nYES',4),(3,'ITEMS','textarea','',5),(3,'REQUIRED','select','NO\r\nYES',6),(3,'ADDITIONALATTRIBUTES','textarea','',7),(3,'DESCRIPTION','textarea','',8),(3,'COMPONENTTYPE','hidden','3',10),(3,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(4,'NAME','textbox','',1),(4,'CAPTION','textbox','',2),(4,'ITEMS','textarea','',3),(4,'FLOW','select','HORIZONTAL\r\nVERTICAL',4),(4,'REQUIRED','select','NO\r\nYES',5),(4,'ADDITIONALATTRIBUTES','textarea','',6),(4,'DESCRIPTION','textarea','',6),(4,'COMPONENTTYPE','hidden','4',7),(4,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(5,'NAME','textbox','',1),(5,'CAPTION','textbox','',2),(5,'ITEMS','textarea','',3),(5,'FLOW','select','HORIZONTAL\r\nVERTICAL',4),(5,'REQUIRED','select','NO\r\nYES',5),(5,'ADDITIONALATTRIBUTES','textarea','',6),(5,'DESCRIPTION','textarea','',6),(5,'COMPONENTTYPE','hidden','5',7),(5,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(6,'NAME','textbox','',1),(6,'CAPTION','textbox','',2),(6,'REQUIRED','select','NO\r\nYES',3),(6,'VALIDATIONCALENDAR','select','//<code>\r\nreturn RSFormProHelper::getOtherCalendars();\r\n//</code>',4),(6,'DATEFORMAT','textbox','DDMMYYYY',4),(6,'CALENDARLAYOUT','select','FLAT\r\nPOPUP',5),(6,'ADDITIONALATTRIBUTES','textarea','',6),(6,'DESCRIPTION','textarea','',7),(6,'COMPONENTTYPE','hidden','6',8),(6,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(6,'READONLY','select','NO\r\nYES',6),(6,'POPUPLABEL','textbox','...',6),(6,'MINDATE','textarea','',5),(6,'MAXDATE','textarea','',5),(6,'DEFAULTVALUE','textarea','',2),(7,'NAME','textbox','',1),(7,'CAPTION','textbox','',2),(7,'LABEL','textbox','',3),(7,'RESET','select','NO\r\nYES',4),(7,'RESETLABEL','textbox','',5),(7,'ADDITIONALATTRIBUTES','textarea','',6),(7,'DESCRIPTION','textarea','',7),(7,'COMPONENTTYPE','hidden','7',8),(7,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',6),(8,'NAME','textbox','',1),(8,'CAPTION','textbox','',2),(8,'LENGTH','textbox','4',3),(8,'BACKGROUNDCOLOR','textbox','#FFFFFF',4),(8,'TEXTCOLOR','textbox','#000000',5),(8,'TYPE','select','ALPHA\r\nNUMERIC\r\nALPHANUMERIC',6),(8,'ADDITIONALATTRIBUTES','textarea','style=\"text-align:center;width:75px;\"',7),(8,'DESCRIPTION','textarea','',9),(8,'COMPONENTTYPE','hidden','8',9),(8,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(8,'FLOW','select','VERTICAL\r\nHORIZONTAL',7),(8,'SHOWREFRESH','select','NO\r\nYES',8),(8,'REFRESHTEXT','textbox','REFRESH',11),(8,'SIZE','textbox','15',12),(8,'IMAGETYPE','select','FREETYPE\r\nNOFREETYPE\r\nINVISIBLE',3),(9,'NAME','textbox','',1),(9,'CAPTION','textbox','',2),(9,'FILESIZE','textbox','',3),(9,'REQUIRED','select','NO\r\nYES',4),(9,'ACCEPTEDFILES','textarea','',5),(9,'DESTINATION','textbox','//<code>\r\nreturn JPATH_SITE.\'/components/com_rsform/uploads/\';\r\n//</code>',6),(9,'ADDITIONALATTRIBUTES','textarea','',7),(9,'DESCRIPTION','textarea','',8),(9,'COMPONENTTYPE','hidden','9',9),(9,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(9,'PREFIX','textarea','',6),(9,'EMAILATTACH','emailattach','',102),(10,'NAME','textbox','',1),(10,'TEXT','textarea','',1),(10,'COMPONENTTYPE','hidden','10',9),(11,'NAME','textbox','',1),(11,'DEFAULTVALUE','textarea','',1),(11,'ADDITIONALATTRIBUTES','textarea','',1),(11,'COMPONENTTYPE','hidden','11',9),(12,'COMPONENTTYPE','hidden','12',10),(12,'ADDITIONALATTRIBUTES','textarea','',9),(12,'RESETLABEL','textbox','',7),(12,'RESET','select','NO\r\nYES',6),(12,'IMAGERESET','textbox','',5),(12,'IMAGEBUTTON','textbox','',4),(12,'LABEL','textbox','',3),(12,'CAPTION','textbox','',2),(12,'NAME','textbox','',1),(12,'DESCRIPTION','textarea','',10),(13,'NAME','textbox','',1),(13,'CAPTION','textbox','',3),(13,'LABEL','textbox','',2),(13,'RESET','select','NO\r\nYES',6),(13,'RESETLABEL','textbox','',7),(13,'ADDITIONALATTRIBUTES','textarea','',9),(13,'COMPONENTTYPE','hidden','13',10),(13,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',9),(13,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',8),(13,'DISPLAYPROGRESS','select','NO\r\nYES',8),(13,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',8),(14,'NAME','textbox','',1),(14,'CAPTION','textbox','',2),(14,'REQUIRED','select','NO\r\nYES',3),(14,'SIZE','textbox','',4),(14,'MAXSIZE','textbox','',5),(14,'DEFAULTVALUE','textarea','',6),(14,'ADDITIONALATTRIBUTES','textarea','',7),(14,'COMPONENTTYPE','hidden','14',8),(14,'DESCRIPTION','textarea','',100),(14,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100),(14,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',9),(15,'NAME','textbox','',1),(15,'LENGTH','textbox','8',4),(15,'ADDITIONALATTRIBUTES','textarea','',7),(15,'COMPONENTTYPE','hidden','15',8),(15,'CHARACTERS','select','ALPHANUMERIC\r\nALPHA\r\nNUMERIC',3),(41,'NAME','textbox','',1),(41,'COMPONENTTYPE','hidden','41',5),(41,'NEXTBUTTON','textbox','//<code>\r\nreturn JText::_(\'NEXT\');\r\n//</code>',2),(41,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',3),(41,'ADDITIONALATTRIBUTES','textarea','',4),(41,'VALIDATENEXTPAGE','select','NO\r\nYES',5),(41,'DISPLAYPROGRESS','select','NO\r\nYES',6),(41,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',7),(211,'VALIDATION_ALLOW_INCORRECT_DATE','select','NO\r\nYES',0),(211,'NAME','textbox','',1),(211,'VALIDATIONRULE_DATE','select','//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>',1),(211,'CAPTION','textbox','',2),(211,'DESCRIPTION','textarea','',3),(211,'REQUIRED','select','NO\r\nYES',4),(211,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',5),(211,'DATEORDERING','select','DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM',6),(211,'DATESEPARATOR','textbox',' / ',7),(211,'SHOWDAY','select','YES\r\nNO',8),(211,'SHOWDAYPLEASE','textbox','Day',9),(211,'SHOWDAYTYPE','select','DAY_TYPE_01\r\nDAY_TYPE_1',10),(211,'SHOWMONTH','select','YES\r\nNO',11),(211,'SHOWMONTHPLEASE','textbox','Month',12),(211,'SHOWMONTHTYPE','select','MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG',13),(211,'SHOWYEAR','select','YES\r\nNO',14),(211,'SHOWYEARPLEASE','textbox','Year',15),(211,'STARTYEAR','textbox','1960',16),(211,'ENDYEAR','textbox','2013',17),(211,'ADDITIONALATTRIBUTES','textarea','',18),(211,'COMPONENTTYPE','hidden','211',19),(21,'PRICE','textbox','',4),(21,'CAPTION','textbox','',1),(21,'NAME','hiddenparam','rsfp_Product',0),(21,'COMPONENTTYPE','hidden','21',0),(21,'DESCRIPTION','textarea','',2),(21,'SHOW','select','YES\r\nNO',3),(22,'REQUIRED','select','NO\r\nYES',6),(22,'ITEMS','textarea','',5),(22,'MULTIPLE','select','NO\r\nYES',3),(22,'SIZE','textbox','',2),(22,'COMPONENTTYPE','hidden','22',9),(22,'CAPTION','textbox','',1),(22,'NAME','textbox','',0),(22,'ADDITIONALATTRIBUTES','textarea','',7),(22,'DESCRIPTION','textarea','',8),(22,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',9),(22,'VIEW_TYPE','select','DROPDOWN\r\nCHECKBOX',4),(22,'FLOW','select','HORIZONTAL\r\nVERTICAL',3),(23,'COMPONENTTYPE','hidden','23',2),(23,'CAPTION','textbox','',1),(23,'NAME','textbox','',0),(27,'NAME','textbox','',0),(27,'CAPTION','textbox','',1),(27,'FLOW','select','HORIZONTAL\r\nVERTICAL',2),(27,'VIEW_TYPE','select','DROPDOWN\r\nRADIOGROUP',3),(27,'ADDITIONALATTRIBUTES','textarea','',4),(27,'DESCRIPTION','textarea','',5),(27,'SHOW','select','YES\r\nNO',6),(27,'COMPONENTTYPE','hidden','27',6),(28,'NAME','textbox','',1),(28,'CAPTION','textbox','',2),(28,'REQUIRED','select','NO\r\nYES',3),(28,'SIZE','textbox','20',4),(28,'MAXSIZE','textbox','',5),(28,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6),(28,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7),(28,'ADDITIONALATTRIBUTES','textarea','',8),(28,'DEFAULTVALUE','textarea','',9),(28,'DESCRIPTION','textarea','',10),(28,'COMPONENTTYPE','hidden','28',11),(28,'VALIDATIONEXTRA','textbox','',12),(500,'NAME','textbox','',0),(500,'LABEL','textbox','',1),(500,'COMPONENTTYPE','hidden','500',2),(500,'LAYOUTHIDDEN','hiddenparam','YES',7),(499,'NAME','textbox','',0),(499,'LABEL','textbox','',1),(499,'WIRE','textarea','',2),(499,'COMPONENTTYPE','hidden','499',6),(499,'LAYOUTHIDDEN','hiddenparam','YES',7),(24,'NAME','textbox','',0),(24,'CAPTION','textbox','',1),(24,'ADDITIONALATTRIBUTES','textarea','',2),(24,'DESCRIPTION','textarea','',3),(24,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',4),(24,'COMPONENTTYPE','hidden','24',5),(501,'NAME','textbox','',0),(501,'CAPTION','textbox','',1),(501,'ADDITIONALATTRIBUTES','textarea','',2),(501,'DESCRIPTION','textarea','',3),(501,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',4),(501,'REQUIRED','select','NO\r\nYES',5),(501,'COMPONENTTYPE','hidden','501',6);
/*!40000 ALTER TABLE `xy79i_rsform_component_type_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_component_types`
--

DROP TABLE IF EXISTS `xy79i_rsform_component_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_component_types`
--

LOCK TABLES `xy79i_rsform_component_types` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_component_types` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_component_types` VALUES (1,'textBox'),(2,'textArea'),(3,'selectList'),(4,'checkboxGroup'),(5,'radioGroup'),(6,'calendar'),(7,'button'),(8,'captcha'),(9,'fileUpload'),(10,'freeText'),(11,'hidden'),(12,'imageButton'),(13,'submitButton'),(14,'password'),(15,'ticket'),(41,'pageBreak'),(211,'birthDay'),(21,'singleProduct'),(22,'multipleProducts'),(28,'donationProduct'),(23,'total'),(27,'choosePayment'),(500,'paypal'),(499,'offlinePayment'),(24,'recaptcha'),(501,'playthru');
/*!40000 ALTER TABLE `xy79i_rsform_component_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_components`
--

DROP TABLE IF EXISTS `xy79i_rsform_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_components`
--

LOCK TABLES `xy79i_rsform_components` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_components` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_components` VALUES (1,1,1,2,1),(2,1,10,1,1),(3,1,1,3,1),(4,1,3,4,1),(5,1,5,5,1),(6,1,4,6,1),(7,1,6,7,1),(8,1,13,8,1),(9,1,10,9,1),(10,2,1,2,1),(11,2,10,1,1),(12,2,1,3,1),(13,2,3,6,1),(14,2,5,7,1),(15,2,4,10,1),(16,2,6,11,1),(17,2,13,12,1),(18,2,10,13,1),(19,2,41,4,1),(20,2,41,8,1),(21,2,10,5,1),(22,2,10,9,1);
/*!40000 ALTER TABLE `xy79i_rsform_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_condition_details`
--

DROP TABLE IF EXISTS `xy79i_rsform_condition_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_condition_details`
--

LOCK TABLES `xy79i_rsform_condition_details` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_condition_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_condition_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_conditions`
--

DROP TABLE IF EXISTS `xy79i_rsform_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_conditions`
--

LOCK TABLES `xy79i_rsform_conditions` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_config`
--

DROP TABLE IF EXISTS `xy79i_rsform_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_config`
--

LOCK TABLES `xy79i_rsform_config` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_config` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_config` VALUES ('global.register.code',''),('global.debug.mode','0'),('global.iis','0'),('global.editor','1'),('global.codemirror','0'),('auto_responsive','1'),('global.date_mask','Y-m-d H:i:s'),('global.filtering','joomla'),('payment.currency','USD'),('payment.thousands',','),('payment.decimal','.'),('payment.nodecimals','2'),('payment.mask','{product} - {price} {currency}'),('payment.totalmask','{price} {currency}'),('paypal.email',''),('paypal.return',''),('paypal.test','0'),('paypal.cancel',''),('paypal.language','US'),('paypal.tax.type','1'),('paypal.tax.value',''),('google.code',''),('pdf.font','times'),('pdf.orientation','portrait'),('pdf.paper','a4'),('recaptcha.private.key',''),('recaptcha.public.key',''),('recaptcha.theme',''),('playthru.publisher.key',''),('playthru.scoring.key',''),('registration_form','0'),('redirect_url','');
/*!40000 ALTER TABLE `xy79i_rsform_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_emails`
--

DROP TABLE IF EXISTS `xy79i_rsform_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_emails`
--

LOCK TABLES `xy79i_rsform_emails` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_forms`
--

DROP TABLE IF EXISTS `xy79i_rsform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_forms`
--

LOCK TABLES `xy79i_rsform_forms` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_forms` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_forms` VALUES (1,'RSformPro example','<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_1_page_0\">\r\n	<div class=\"rsform-block rsform-block-header\">\r\n		<div class=\"formControlLabel\">{Header:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\r\n		<p class=\"formDescription\">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-fullname\">\r\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\r\n		<p class=\"formDescription\">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-email\">\r\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\r\n		<p class=\"formDescription\">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-companysize\">\r\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-position\">\r\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\r\n		<p class=\"formDescription\">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactby\">\r\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactwhen\">\r\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-submit\">\r\n		<div class=\"formControlLabel\">{Submit:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\r\n		<p class=\"formDescription\">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-footer\">\r\n		<div class=\"formControlLabel\">{Footer:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\r\n		<p class=\"formDescription\">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n','responsive',1,'','','RSForm! Pro example',1,1,'','',1,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'','','(*)','',', ',1,'','userForm','','','',0,'',1,0,0),(2,'RSformPro Multipage example','<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_0\">\r\n	<div class=\"rsform-block rsform-block-header\">\r\n		<div class=\"formControlLabel\">{Header:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\r\n		<p class=\"formDescription\">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-fullname\">\r\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\r\n		<p class=\"formDescription\">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-email\">\r\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\r\n		<p class=\"formDescription\">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page1\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_1\">\r\n	<div class=\"rsform-block rsform-block-companyheader\">\r\n		<div class=\"formControlLabel\">{CompanyHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanyHeader:body}<span class=\"formValidation\">{CompanyHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-companysize\">\r\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-position\">\r\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\r\n		<p class=\"formDescription\">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page2\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_2\">\r\n	<div class=\"rsform-block rsform-block-contactheader\">\r\n		<div class=\"formControlLabel\">{ContactHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactHeader:body}<span class=\"formValidation\">{ContactHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactby\">\r\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactwhen\">\r\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-submit\">\r\n		<div class=\"formControlLabel\">{Submit:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\r\n		<p class=\"formDescription\">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-footer\">\r\n		<div class=\"formControlLabel\">{Footer:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\r\n		<p class=\"formDescription\">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n','responsive',1,'','','RSForm! Pro Multipage example',1,1,'','',0,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'This is the meta description of your form. You can use it for SEO purposes.','rsform, contact, form, joomla','(*)','<p class=\"formRed\">Please complete all required fields!</p>',', ',1,'','userForm','','','',0,'',1,0,0);
/*!40000 ALTER TABLE `xy79i_rsform_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_mappings`
--

DROP TABLE IF EXISTS `xy79i_rsform_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_mappings`
--

LOCK TABLES `xy79i_rsform_mappings` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_payment`
--

DROP TABLE IF EXISTS `xy79i_rsform_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_payment` (
  `form_id` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_payment`
--

LOCK TABLES `xy79i_rsform_payment` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_pdfs`
--

DROP TABLE IF EXISTS `xy79i_rsform_pdfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_pdfs` (
  `form_id` int(11) NOT NULL,
  `useremail_send` tinyint(1) NOT NULL,
  `useremail_filename` varchar(255) NOT NULL,
  `useremail_php` text NOT NULL,
  `useremail_layout` text NOT NULL,
  `adminemail_send` tinyint(1) NOT NULL,
  `adminemail_filename` varchar(255) NOT NULL,
  `adminemail_php` text NOT NULL,
  `adminemail_layout` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_pdfs`
--

LOCK TABLES `xy79i_rsform_pdfs` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_pdfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_pdfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_posts`
--

DROP TABLE IF EXISTS `xy79i_rsform_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_posts`
--

LOCK TABLES `xy79i_rsform_posts` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_properties`
--

DROP TABLE IF EXISTS `xy79i_rsform_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_properties`
--

LOCK TABLES `xy79i_rsform_properties` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_properties` DISABLE KEYS */;
INSERT INTO `xy79i_rsform_properties` VALUES (1,1,'NAME','FullName'),(2,1,'CAPTION','Full Name'),(3,1,'REQUIRED','YES'),(4,1,'SIZE','20'),(5,1,'MAXSIZE',''),(6,1,'VALIDATIONRULE','none'),(7,1,'VALIDATIONMESSAGE','Please type your full name.'),(8,1,'ADDITIONALATTRIBUTES',''),(9,1,'DEFAULTVALUE',''),(10,1,'DESCRIPTION',''),(11,2,'NAME','Header'),(12,2,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),(13,3,'NAME','Email'),(14,3,'CAPTION','E-mail'),(15,3,'REQUIRED','YES'),(16,3,'SIZE','20'),(17,3,'MAXSIZE',''),(18,3,'VALIDATIONRULE','email'),(19,3,'VALIDATIONMESSAGE','Invalid email address.'),(20,3,'ADDITIONALATTRIBUTES',''),(21,3,'DEFAULTVALUE',''),(22,3,'DESCRIPTION',''),(23,4,'NAME','CompanySize'),(24,4,'CAPTION','Number of Employees'),(25,4,'SIZE',''),(26,4,'MULTIPLE','NO'),(27,4,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),(28,4,'REQUIRED','YES'),(29,4,'ADDITIONALATTRIBUTES',''),(30,4,'DESCRIPTION',''),(31,4,'VALIDATIONMESSAGE','Please tell us how big is your company.'),(32,5,'NAME','Position'),(33,5,'CAPTION','Position'),(34,5,'ITEMS','CEO\nCFO\nCTO\nHR[c]'),(35,5,'FLOW','HORIZONTAL'),(36,5,'REQUIRED','YES'),(37,5,'ADDITIONALATTRIBUTES',''),(38,5,'DESCRIPTION',''),(39,5,'VALIDATIONMESSAGE','Please specify your position in the company'),(40,6,'NAME','ContactBy'),(41,6,'CAPTION','How should we contact you?'),(42,6,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail'),(43,6,'FLOW','HORIZONTAL'),(44,6,'REQUIRED','NO'),(45,6,'ADDITIONALATTRIBUTES',''),(46,6,'DESCRIPTION',''),(47,6,'VALIDATIONMESSAGE',''),(48,7,'NAME','ContactWhen'),(49,7,'CAPTION','When would you like to be contacted?'),(50,7,'REQUIRED','YES'),(51,7,'DATEFORMAT','dd.mm.yyyy'),(52,7,'CALENDARLAYOUT','POPUP'),(53,7,'ADDITIONALATTRIBUTES',''),(54,7,'READONLY','YES'),(55,7,'POPUPLABEL','...'),(56,7,'DESCRIPTION',''),(57,7,'VALIDATIONMESSAGE','Please select a date when we should contact you.'),(58,8,'NAME','Submit'),(59,8,'LABEL','Submit'),(60,8,'CAPTION',''),(61,8,'RESET','YES'),(62,8,'RESETLABEL','Reset'),(63,8,'ADDITIONALATTRIBUTES',''),(64,9,'NAME','Footer'),(65,9,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>'),(66,10,'NAME','FullName'),(67,10,'CAPTION','Full Name'),(68,10,'REQUIRED','YES'),(69,10,'SIZE','20'),(70,10,'MAXSIZE',''),(71,10,'VALIDATIONRULE','none'),(72,10,'VALIDATIONMESSAGE','Please type your full name.'),(73,10,'ADDITIONALATTRIBUTES',''),(74,10,'DEFAULTVALUE',''),(75,10,'DESCRIPTION',''),(76,10,'VALIDATIONEXTRA',''),(77,11,'NAME','Header'),(78,11,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.'),(79,12,'NAME','Email'),(80,12,'CAPTION','E-mail'),(81,12,'REQUIRED','YES'),(82,12,'SIZE','20'),(83,12,'MAXSIZE',''),(84,12,'VALIDATIONRULE','email'),(85,12,'VALIDATIONMESSAGE','Invalid email address.'),(86,12,'ADDITIONALATTRIBUTES',''),(87,12,'DEFAULTVALUE',''),(88,12,'DESCRIPTION',''),(89,12,'VALIDATIONEXTRA',''),(90,13,'NAME','CompanySize'),(91,13,'CAPTION','Number of Employees'),(92,13,'SIZE',''),(93,13,'MULTIPLE','NO'),(94,13,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100'),(95,13,'REQUIRED','YES'),(96,13,'ADDITIONALATTRIBUTES',''),(97,13,'DESCRIPTION',''),(98,13,'VALIDATIONMESSAGE','Please tell us how big is your company.'),(99,14,'NAME','Position'),(100,14,'CAPTION','Position'),(101,14,'ITEMS','CEO\nCFO\nCTO\nHR[c]'),(102,14,'FLOW','HORIZONTAL'),(103,14,'REQUIRED','YES'),(104,14,'ADDITIONALATTRIBUTES',''),(105,14,'DESCRIPTION',''),(106,14,'VALIDATIONMESSAGE','Please specify your position in the company'),(107,15,'NAME','ContactBy'),(108,15,'CAPTION','How should we contact you?'),(109,15,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail'),(110,15,'FLOW','HORIZONTAL'),(111,15,'REQUIRED','NO'),(112,15,'ADDITIONALATTRIBUTES',''),(113,15,'DESCRIPTION',''),(114,15,'VALIDATIONMESSAGE',''),(115,16,'NAME','ContactWhen'),(116,16,'CAPTION','When would you like to be contacted?'),(117,16,'REQUIRED','YES'),(118,16,'DATEFORMAT','dd.mm.yyyy'),(119,16,'CALENDARLAYOUT','POPUP'),(120,16,'ADDITIONALATTRIBUTES',''),(121,16,'READONLY','YES'),(122,16,'POPUPLABEL','...'),(123,16,'DESCRIPTION',''),(124,16,'VALIDATIONMESSAGE','Please select a date when we should contact you.'),(125,17,'NAME','Submit'),(126,17,'LABEL','Submit'),(127,17,'CAPTION',''),(128,17,'RESET','YES'),(129,17,'RESETLABEL','Reset'),(130,17,'ADDITIONALATTRIBUTES',''),(131,18,'NAME','Footer'),(132,18,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>'),(133,19,'NAME','Page1'),(134,19,'NEXTBUTTON','Next >'),(135,19,'PREVBUTTON','Prev'),(136,19,'ADDITIONALATTRIBUTES',''),(137,20,'NAME','Page2'),(138,20,'NEXTBUTTON','Next >'),(139,20,'PREVBUTTON','Prev'),(140,20,'ADDITIONALATTRIBUTES',''),(141,21,'NAME','CompanyHeader'),(142,21,'TEXT','Please tell us a little about your company.'),(143,22,'NAME','ContactHeader'),(144,22,'TEXT','Please let us know how and when to contact you.');
/*!40000 ALTER TABLE `xy79i_rsform_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_registration`
--

DROP TABLE IF EXISTS `xy79i_rsform_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_registration` (
  `form_id` int(11) NOT NULL,
  `reg_merge_vars` text NOT NULL,
  `activation` tinyint(1) NOT NULL,
  `cbactivation` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_registration`
--

LOCK TABLES `xy79i_rsform_registration` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_submission_columns`
--

DROP TABLE IF EXISTS `xy79i_rsform_submission_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_submission_columns`
--

LOCK TABLES `xy79i_rsform_submission_columns` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_submission_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_submission_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_submission_values`
--

DROP TABLE IF EXISTS `xy79i_rsform_submission_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_submission_values`
--

LOCK TABLES `xy79i_rsform_submission_values` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_submission_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_submission_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_submissions`
--

DROP TABLE IF EXISTS `xy79i_rsform_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_submissions`
--

LOCK TABLES `xy79i_rsform_submissions` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_rsform_translations`
--

DROP TABLE IF EXISTS `xy79i_rsform_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_rsform_translations`
--

LOCK TABLES `xy79i_rsform_translations` WRITE;
/*!40000 ALTER TABLE `xy79i_rsform_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_rsform_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_schemas`
--

DROP TABLE IF EXISTS `xy79i_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_schemas`
--

LOCK TABLES `xy79i_schemas` WRITE;
/*!40000 ALTER TABLE `xy79i_schemas` DISABLE KEYS */;
INSERT INTO `xy79i_schemas` VALUES (700,'3.3.6-2014-09-30'),(10067,'1.7.1');
/*!40000 ALTER TABLE `xy79i_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_session`
--

DROP TABLE IF EXISTS `xy79i_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_session`
--

LOCK TABLES `xy79i_session` WRITE;
/*!40000 ALTER TABLE `xy79i_session` DISABLE KEYS */;
INSERT INTO `xy79i_session` VALUES ('mku6je180p828ca1sgdecbdgd1',0,1,'1424858837','__default|a:9:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1424858833;s:18:\"session.timer.last\";i:1424858833;s:17:\"session.timer.now\";i:1424858833;s:22:\"session.client.browser\";s:74:\"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:30.0) Gecko/20100101 Firefox/30.0\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"1\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\\0\\0\\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:20:\"com_rsfirewall.geoip\";s:0:\"\";s:23:\"gantry-current-template\";s:11:\"rt_kirigami\";}',0,'');
/*!40000 ALTER TABLE `xy79i_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_tagmeta_rules`
--

DROP TABLE IF EXISTS `xy79i_tagmeta_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_tagmeta_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `case_sensitive` tinyint(1) NOT NULL DEFAULT '1',
  `request_only` tinyint(1) NOT NULL DEFAULT '1',
  `decode_url` tinyint(1) NOT NULL DEFAULT '1',
  `last_rule` tinyint(1) NOT NULL DEFAULT '1',
  `placeholders` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `rights` varchar(255) DEFAULT NULL,
  `xreference` varchar(255) DEFAULT NULL,
  `canonical` varchar(255) DEFAULT NULL,
  `rindex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes,2=Skip',
  `rfollow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes,2=Skip',
  `rsnippet` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `rarchive` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `rodp` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `rimageindex` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=No,1=Yes,2=Skip',
  `comment` varchar(255) DEFAULT NULL,
  `synonyms` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes,2=Yes (case sensitive)',
  `synonmax` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Max number of synonyms to add',
  `synonweight` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Use ordering,1=Use weight',
  `preserve_title` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxurl` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_tagmeta_rules`
--

LOCK TABLES `xy79i_tagmeta_rules` WRITE;
/*!40000 ALTER TABLE `xy79i_tagmeta_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_tagmeta_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_tagmeta_synonyms`
--

DROP TABLE IF EXISTS `xy79i_tagmeta_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_tagmeta_synonyms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(500) NOT NULL DEFAULT '',
  `synonyms` varchar(500) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_tagmeta_synonyms`
--

LOCK TABLES `xy79i_tagmeta_synonyms` WRITE;
/*!40000 ALTER TABLE `xy79i_tagmeta_synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_tagmeta_synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_tags`
--

DROP TABLE IF EXISTS `xy79i_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_tags`
--

LOCK TABLES `xy79i_tags` WRITE;
/*!40000 ALTER TABLE `xy79i_tags` DISABLE KEYS */;
INSERT INTO `xy79i_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `xy79i_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_template_styles`
--

DROP TABLE IF EXISTS `xy79i_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_template_styles`
--

LOCK TABLES `xy79i_template_styles` WRITE;
/*!40000 ALTER TABLE `xy79i_template_styles` DISABLE KEYS */;
INSERT INTO `xy79i_template_styles` VALUES (2,'bluestork',1,'0','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":\"0\"}'),(8,'rt_kirigami',0,'1','rt_kirigami - Default','{\"master\":\"true\",\"current_id\":\"8\",\"template_full_name\":\"Kirigami\",\"grid_system\":\"12\",\"template_prefix\":\"kirigami-\",\"cookie_time\":\"31536000\",\"name\":\"Preset1\",\"copy_lang_files_if_diff\":\"1\",\"main\":{\"body\":\"light\",\"accent\":\"#657d2d\",\"bg\":\"paper\"},\"loadtransition\":\"1\",\"webfonts\":{\"enabled\":\"0\",\"source\":\"google\"},\"font\":{\"family\":\"s:kirigami\",\"size\":\"default\",\"size-is\":\"default\"},\"viewswitcher-priority\":\"1\",\"logo-priority\":\"2\",\"copyright-priority\":\"3\",\"styledeclaration-priority\":\"4\",\"date-priority\":\"6\",\"fontsizer-priority\":\"7\",\"totop-priority\":\"8\",\"systemmessages-priority\":\"9\",\"morearticles-priority\":\"12\",\"smartload-priority\":\"13\",\"pagesuffix-priority\":\"14\",\"resetsettings-priority\":\"15\",\"analytics-priority\":\"16\",\"fusionmenu-priority\":\"18\",\"jstools-priority\":\"21\",\"moduleoverlays-priority\":\"22\",\"rtl-priority\":\"23\",\"splitmenu-priority\":\"24\",\"webfonts-priority\":\"27\",\"styledeclaration-enabled\":\"1\",\"logo\":{\"enabled\":\"1\",\"position\":\"header-a\",\"type\":\"kirigami\",\"kirigami\":{\"logostyle\":\"style1\"},\"custom\":{\"image\":\"\"}},\"social\":{\"enabled\":\"0\",\"position\":\"social\",\"twitter\":\"\",\"facebook\":\"\",\"google\":\"\",\"rss\":\"\"},\"date\":{\"enabled\":\"1\",\"position\":\"content-top-a\",\"clientside\":\"0\",\"formats\":\"%A, %B %d, %Y\"},\"fontsizer\":{\"enabled\":\"0\",\"position\":\"utility-b\"},\"login\":{\"enabled\":\"0\",\"position\":\"utility-c\",\"text\":\"Member Login\",\"logouttext\":\"Logout\"},\"popup\":{\"enabled\":\"0\",\"position\":\"utility-d\",\"text\":\"Popup Module\",\"width\":\"250\",\"height\":\"235\"},\"branding\":{\"enabled\":\"0\",\"position\":\"copyright-c\"},\"copyright\":{\"enabled\":\"0\",\"position\":\"copyright-a\",\"text\":\"Designed by RocketTheme\",\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"smartload\":{\"enabled\":\"0\",\"text\":\"200\",\"ignores\":\"com_community,com_contact,com_k2,com_tienda,com_weblinks\",\"exclusion\":\"\"},\"morearticles\":{\"enabled\":\"0\",\"text\":\"Load More Articles\",\"pagination\":\"1\"},\"totop\":{\"enabled\":\"1\",\"position\":\"copyright-b\"},\"systemmessages\":{\"enabled\":\"1\",\"position\":\"drawer\"},\"resetsettings\":{\"enabled\":\"0\",\"position\":\"footer-b\",\"text\":\"Reset Settings\"},\"analytics\":{\"enabled\":\"0\",\"code\":\"\",\"position\":\"analytics\"},\"menu\":{\"enabled\":\"1\",\"type\":\"fusionmenu\",\"fusionmenu\":{\"menutype\":\"mainmenu\",\"position\":\"header-b\",\"enable_js\":\"1\",\"opacity\":\"1\",\"effect\":\"slidefade\",\"hidedelay\":\"500\",\"menu-animation\":\"Circ.easeOut\",\"menu-duration\":\"300\",\"centered-offset\":\"0\",\"tweak-initial-x\":\"-8\",\"tweak-initial-y\":\"-8\",\"tweak-subsequent-x\":\"-8\",\"tweak-subsequent-y\":\"-11\",\"tweak-width\":\"18\",\"tweak-height\":\"20\",\"enable-current-id\":\"0\",\"theme\":\"gantry-fusion\",\"limit_levels\":\"0\",\"startLevel\":\"0\",\"showAllChildren\":\"1\",\"class_sfx\":\"top\",\"cache\":\"0\",\"module_cache\":\"1\"},\"splitmenu\":{\"roknavmenu_fusion_enable-current-id\":\"0\",\"menutype\":\"mainmenu\",\"theme\":\"gantry-splitmenu\",\"mainmenu-position\":\"header-b\",\"mainmenu-limit_levels\":\"1\",\"mainmenu-startLevel\":\"0\",\"mainmenu-endLevel\":\"0\",\"mainmenu-class_sfx\":\"top\",\"submenu-position\":\"sidebar-a\",\"submenu-title\":\"1\",\"submenu-limit_levels\":\"1\",\"submenu-startLevel\":\"1\",\"submenu-endLevel\":\"9\",\"submenu-module_sfx\":\"\",\"submenu-class_sfx\":\"\",\"cache\":\"0\",\"module_cache\":\"1\"}},\"top\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"header\":{\"layout\":\"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:4;i:1;i:8;}}}\",\"showall\":\"1\",\"showmax\":\"2\"},\"feature\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"showcase\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"utility\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"maintop\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"mainbodyPosition\":\"6,3,3\",\"mainbottom\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"extension\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"bottom\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"footer\":{\"layout\":\"3,3,3,3\",\"showall\":\"0\",\"showmax\":\"6\"},\"cache\":{\"enabled\":\"0\",\"time\":\"900\"},\"component-enabled\":\"1\",\"mainbody-enabled\":\"1\",\"rtl-enabled\":\"1\",\"moduleoverlays-enabled\":\"1\",\"pagesuffix-enabled\":\"1\",\"typography\":{\"enabled\":\"1\",\"style\":\"light\"},\"k2\":\"1\",\"selectivizr-enabled\":\"0\"}'),(9,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(10,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(11,'beez3',0,'0','beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"bootstrap\":\"\",\"templatecolor\":\"nature\",\"headerImage\":\"\",\"backgroundcolor\":\"#eee\"}');
/*!40000 ALTER TABLE `xy79i_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_ucm_base`
--

DROP TABLE IF EXISTS `xy79i_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_ucm_base`
--

LOCK TABLES `xy79i_ucm_base` WRITE;
/*!40000 ALTER TABLE `xy79i_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_ucm_content`
--

DROP TABLE IF EXISTS `xy79i_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_ucm_content`
--

LOCK TABLES `xy79i_ucm_content` WRITE;
/*!40000 ALTER TABLE `xy79i_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_ucm_history`
--

DROP TABLE IF EXISTS `xy79i_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_ucm_history`
--

LOCK TABLES `xy79i_ucm_history` WRITE;
/*!40000 ALTER TABLE `xy79i_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_update_sites`
--

DROP TABLE IF EXISTS `xy79i_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_update_sites`
--

LOCK TABLES `xy79i_update_sites` WRITE;
/*!40000 ALTER TABLE `xy79i_update_sites` DISABLE KEYS */;
INSERT INTO `xy79i_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/sts/list_sts.xml',0,0,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,0,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',0,0,''),(5,'RocketTheme Update Directory','collection','http://updates.rockettheme.com/joomla/updates.xml',0,0,''),(7,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        ',0,0,''),(8,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1',0,0,''),(9,'JCE MediaBox Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=3',0,0,''),(12,'JCE MediaBox Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=3&file=extension.xml',0,0,''),(13,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml',0,0,''),(17,'Gantry Framework Update Site','extension','http://www.gantry-framework.org/updates/joomla16/gantry.xml',0,0,''),(18,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',0,0,'');
/*!40000 ALTER TABLE `xy79i_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_update_sites_extensions`
--

DROP TABLE IF EXISTS `xy79i_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_update_sites_extensions`
--

LOCK TABLES `xy79i_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `xy79i_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `xy79i_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(5,10006),(5,10008),(5,10012),(5,10014),(5,10016),(5,10019),(5,10030),(5,10034),(5,10036),(5,10119),(7,10045),(8,10045),(9,10046),(12,10046),(13,10045),(17,10121),(18,28);
/*!40000 ALTER TABLE `xy79i_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_updates`
--

DROP TABLE IF EXISTS `xy79i_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_updates`
--

LOCK TABLES `xy79i_updates` WRITE;
/*!40000 ALTER TABLE `xy79i_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_user_keys`
--

DROP TABLE IF EXISTS `xy79i_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_user_keys`
--

LOCK TABLES `xy79i_user_keys` WRITE;
/*!40000 ALTER TABLE `xy79i_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_user_notes`
--

DROP TABLE IF EXISTS `xy79i_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_user_notes`
--

LOCK TABLES `xy79i_user_notes` WRITE;
/*!40000 ALTER TABLE `xy79i_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_user_profiles`
--

DROP TABLE IF EXISTS `xy79i_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_user_profiles`
--

LOCK TABLES `xy79i_user_profiles` WRITE;
/*!40000 ALTER TABLE `xy79i_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_user_usergroup_map`
--

DROP TABLE IF EXISTS `xy79i_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_user_usergroup_map`
--

LOCK TABLES `xy79i_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `xy79i_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `xy79i_user_usergroup_map` VALUES (249,8),(250,8),(252,2),(252,7),(253,2),(253,8);
/*!40000 ALTER TABLE `xy79i_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_usergroups`
--

DROP TABLE IF EXISTS `xy79i_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_usergroups`
--

LOCK TABLES `xy79i_usergroups` WRITE;
/*!40000 ALTER TABLE `xy79i_usergroups` DISABLE KEYS */;
INSERT INTO `xy79i_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `xy79i_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_users`
--

DROP TABLE IF EXISTS `xy79i_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_users`
--

LOCK TABLES `xy79i_users` WRITE;
/*!40000 ALTER TABLE `xy79i_users` DISABLE KEYS */;
INSERT INTO `xy79i_users` VALUES (249,'Super User','admin','info@crkconsultinggroup.com','38f2a9f131bc5ffe54c573e6f3e7a42c:KIsQq2fWiBy9GPbfkDw5ONRDuFMxoSwa',0,1,'2013-03-18 03:03:22','2013-03-18 04:15:40','0','','0000-00-00 00:00:00',0,'','',0),(250,'jsupport','jsupport','support@jikometrix.net','$P$Dg4t3PH/K2qOVzat8/o03Amms/qx5W1',0,0,'2013-03-18 03:04:44','2015-02-13 16:58:14','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(252,'Chester Kiernicki','chesterk2','chesterk2@crkconsultinggroup.com','$P$D.MnojImCKCIXL0.wNMsNmlRDCQHMy1',0,0,'2014-01-23 22:13:15','2014-07-24 19:36:41','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"America\\/Chicago\"}','0000-00-00 00:00:00',0,'','',0),(253,'JIKOmetrix Support - 2','jsupport2','jsupport2@jikometrix.net','$2y$10$AmK5VLG1MrhbaoRHgg99f.L4ggW6SD9VjFQiUNFhQQPk4wrs2op/.',0,0,'2015-02-13 16:57:05','2015-02-25 08:22:24','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"America\\/Chicago\"}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `xy79i_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_viewlevels`
--

DROP TABLE IF EXISTS `xy79i_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_viewlevels`
--

LOCK TABLES `xy79i_viewlevels` WRITE;
/*!40000 ALTER TABLE `xy79i_viewlevels` DISABLE KEYS */;
INSERT INTO `xy79i_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `xy79i_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_weblinks`
--

DROP TABLE IF EXISTS `xy79i_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_weblinks`
--

LOCK TABLES `xy79i_weblinks` WRITE;
/*!40000 ALTER TABLE `xy79i_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_wf_profiles`
--

DROP TABLE IF EXISTS `xy79i_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_wf_profiles`
--

LOCK TABLES `xy79i_wf_profiles` WRITE;
/*!40000 ALTER TABLE `xy79i_wf_profiles` DISABLE KEYS */;
INSERT INTO `xy79i_wf_profiles` VALUES (1,'Default','Default Profile for all users','','6,7,3,4,5,8','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article,caption,filemanager,imgmanager_ext,mediamanager,templatemanager','contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap,caption,filemanager,imgmanager_ext,mediamanager,templatemanager,formatselect,styleselect,fontselect,fontsizeselect,fontcolor',1,1,0,'0000-00-00 00:00:00','{\"editor\":{\"width\":\"\",\"height\":\"\",\"toolbar_theme\":\"default\",\"toolbar_align\":\"left\",\"toolbar_location\":\"top\",\"statusbar_location\":\"bottom\",\"path\":\"1\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"resizing_use_cookie\":\"1\",\"toggle\":\"1\",\"toggle_label\":\"[Toggle Editor]\",\"toggle_state\":\"1\",\"relative_urls\":\"1\",\"verify_html\":\"\",\"schema\":\"\",\"forced_root_block\":\"\",\"profile_content_css\":\"2\",\"profile_content_css_custom\":\"\",\"theme_advanced_styles\":\"\",\"theme_advanced_blockformats\":[\"p\",\"div\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"address\",\"code\",\"pre\",\"samp\",\"span\",\"section\",\"article\",\"hgroup\",\"aside\",\"figure\",\"dt\",\"dd\"],\"theme_advanced_fonts_add\":\"\",\"theme_advanced_fonts_remove\":\"\",\"theme_advanced_font_sizes\":\"\",\"custom_colors\":\"\",\"dir\":\"\",\"filesystem\":{\"name\":\"joomla\",\"joomla\":{\"allow_root\":\"0\",\"restrict_dir\":\"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc\"}},\"max_size\":\"8024\",\"upload_conflict\":\"overwrite\",\"upload_runtimes\":[\"html5\",\"flash\",\"silverlight\",\"html4\"],\"browser_position\":\"bottom\",\"folder_tree\":\"1\",\"list_limit\":\"all\",\"validate_mimetype\":\"1\",\"websafe_mode\":\"utf-8\",\"websafe_allow_spaces\":\"0\",\"upload_add_random\":\"0\",\"invalid_elements\":\"\",\"invalid_attributes\":\"dynsrc,lowsrc\",\"invalid_attribute_values\":\"\",\"extended_elements\":\"\",\"allow_javascript\":\"0\",\"allow_css\":\"0\",\"allow_php\":\"0\",\"cdata\":\"1\"},\"browser\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"office=doc,docx,ppt,xls;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf\",\"filesystem\":{\"name\":\"\"},\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\"},\"media\":{\"strict\":\"1\",\"iframes\":\"0\",\"audio\":\"1\",\"video\":\"1\",\"object\":\"1\",\"embed\":\"1\",\"version_flash\":\"10,1,53,64\",\"version_windowsmedia\":\"10,00,00,3646\",\"version_quicktime\":\"7,3,0,0\",\"version_java\":\"1,5,0,0\",\"version_shockwave\":\"10,2,0,023\"},\"clipboard\":{\"paste_use_dialog\":\"0\",\"paste_dialog_width\":\"450\",\"paste_dialog_height\":\"400\",\"paste_force_cleanup\":\"0\",\"paste_strip_class_attributes\":\"all\",\"paste_remove_spans\":\"0\",\"paste_remove_styles\":\"0\",\"paste_remove_attributes\":\"\",\"paste_retain_style_properties\":\"\",\"paste_remove_empty_paragraphs\":\"1\",\"paste_remove_styles_if_webkit\":\"0\",\"paste_process_footnotes\":\"convert\",\"paste_html\":\"1\",\"paste_text\":\"1\",\"buttons\":[\"cut\",\"copy\",\"paste\"]},\"source\":{\"highlight\":\"1\",\"numbers\":\"1\",\"wrap\":\"1\",\"format\":\"1\",\"tag_closing\":\"1\",\"selection_match\":\"1\",\"theme\":\"textmate\"},\"table\":{\"width\":\"\",\"height\":\"\",\"border\":\"0\",\"cols\":\"2\",\"rows\":\"2\",\"cellpadding\":\"\",\"cellspacing\":\"\",\"align\":\"\",\"classes\":\"\",\"buttons\":[\"table_insert\",\"delete_table\",\"row_props\",\"cell_props\",\"row_before\",\"row_after\",\"delete_row\",\"col_before\",\"col_after\",\"delete_col\",\"split_cells\",\"merge_cells\"]},\"visualblocks\":{\"state\":\"1\"},\"xhtmlxtras\":{\"buttons\":[\"cite\",\"abbr\",\"acronym\",\"del\",\"ins\",\"attribs\"]},\"imgmanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"image=jpeg,jpg,png,gif\",\"filesystem\":{\"name\":\"\"},\"alt\":\"\",\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"always_include_dimensions\":\"1\",\"style\":\"\",\"classes\":\"\",\"title\":\"\",\"id\":\"\",\"direction\":\"\",\"usemap\":\"\",\"longdesc\":\"\",\"tabs_rollover\":\"1\",\"tabs_advanced\":\"1\",\"attributes_dimensions\":\"1\",\"attributes_align\":\"1\",\"attributes_margin\":\"1\",\"attributes_border\":\"1\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"dragdrop_upload\":\"1\"},\"link\":{\"target\":\"\",\"id\":\"\",\"style\":\"\",\"classes\":\"\",\"dir\":\"\",\"hreflang\":\"\",\"lang\":\"\",\"charset\":\"\",\"type\":\"\",\"rel\":\"\",\"rev\":\"\",\"tabindex\":\"\",\"accesskey\":\"\",\"file_browser\":\"1\",\"tabs_advanced\":\"1\",\"attributes_anchor\":\"1\",\"attributes_target\":\"1\",\"links\":{\"joomlalinks\":{\"enable\":\"1\",\"content\":\"1\",\"article_alias\":\"1\",\"static\":\"1\",\"contacts\":\"1\",\"weblinks\":\"1\",\"weblinks_alias\":\"1\",\"menu\":\"1\"}},\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"rokbox\":{\"enable\":\"1\"},\"widgetkit\":{\"enable\":\"1\",\"lightbox_titlePosition\":\"\",\"lightbox_padding\":\"\",\"lightbox_overlayShow\":\"\",\"lightbox_transitionIn\":\"\",\"lightbox_transitionOut\":\"\"},\"window\":{\"enable\":\"1\"}},\"search\":{\"link\":{\"enable\":\"1\",\"plugins\":[\"categories\",\"contacts\",\"content\",\"newsfeeds\",\"weblinks\"]}}},\"spellchecker\":{\"engine\":\"browser\",\"browser_state\":\"0\",\"googlespell_languages\":[\"English=en\"],\"languages\":\"English=en\",\"pspell_mode\":\"PSPELL_FAST\",\"pspell_spelling\":\"\",\"pspell_jargon\":\"\",\"pspell_encoding\":\"\",\"pspell_dictionary\":\"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws\",\"pspellshell_aspell\":\"\\/usr\\/bin\\/aspell\",\"pspellshell_tmp\":\"\\/tmp\"},\"article\":{\"buttons\":[\"readmore\",\"pagebreak\"]},\"lists\":{\"number_styles\":[\"default\",\"lower-alpha\",\"lower-greek\",\"lower-roman\",\"upper-alpha\",\"upper-roman\"],\"bullet_styles\":[\"default\",\"circle\",\"disc\",\"square\"],\"buttons\":[\"numlist\",\"bullist\"]},\"caption\":{\"text_color\":\"\",\"text_bgcolor\":\"\",\"text_align\":\"\",\"text_padding\":\"\",\"text_margin\":\"\",\"margin\":\"\",\"padding\":\"\",\"bgcolor\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\"},\"filemanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"xml=xml;html=htm,html;text=txt,rtf,pdf;office=doc,docx,ppt,xls,xlsx;image=gif,jpeg,jpg,png;archive=zip,tar,gz;video=swf,mov,wmv,avi,flv,mp4,ogv,ogg,webm,mpeg,mpg;audio=wav,mp3,ogg,webm,aiff;openoffice=odt,odg,odp,ods,odf\",\"replace_text\":\"1\",\"text_alert\":\"1\",\"filesystem\":\"\",\"target\":\"\",\"id\":\"\",\"style\":\"\",\"classes\":\"\",\"direction\":\"\",\"hreflang\":\"\",\"lang\":\"\",\"charset\":\"\",\"type\":\"\",\"rel\":\"\",\"rev\":\"\",\"tabindex\":\"\",\"accesskey\":\"\",\"option_icon_check\":\"0\",\"option_size_check\":\"0\",\"option_date_check\":\"0\",\"googledocs_enable\":\"1\",\"googledocs_type\":\"\",\"googledocs_width\":\"\",\"googledocs_height\":\"\",\"icon_path\":\"media\\/jce\\/icons\",\"icon_format\":\"{$name}.png\",\"date_format\":\"%d\\/%m\\/%Y, %H:%M\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"}}},\"imgmanager_ext\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"image=jpeg,jpg,png,gif\",\"filesystem\":{\"name\":\"\"},\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"tabs_rollover\":\"1\",\"tabs_advanced\":\"1\",\"attributes_dimensions\":\"1\",\"attributes_align\":\"1\",\"attributes_margin\":\"1\",\"attributes_border\":\"1\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"file_delete\":\"1\",\"folder_move\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"upload_resize\":\"1\",\"upload_resize_state\":\"0\",\"upload_thumbnail\":\"1\",\"upload_thumbnail_state\":\"0\",\"upload_thumbnail_crop\":\"0\",\"image_editor\":\"1\",\"thumbnail_editor\":\"1\",\"insert_multiple\":\"1\",\"mode\":\"list\",\"cache_enable\":\"0\",\"cache\":\"\",\"cache_size\":\"10\",\"cache_age\":\"30\",\"cache_files\":\"0\",\"resize_width\":\"640\",\"resize_height\":\"480\",\"resize_quality\":\"100\",\"resize_presets\":\"320x240,640x480,800x600,1024x768\",\"crop_presets\":\"4:3,16:9,20:30,320x240,240x320,640x480,480x640,800x600,1024x768\",\"thumbnail_width\":\"120\",\"thumbnail_height\":\"90\",\"thumbnail_quality\":\"80\",\"thumbnail_folder\":\"thumbnails\",\"thumbnail_prefix\":\"thumb_\",\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"rokbox\":{\"enable\":\"1\"},\"widgetkit\":{\"enable\":\"1\",\"lightbox_titlePosition\":\"\",\"lightbox_padding\":\"\",\"lightbox_overlayShow\":\"\",\"lightbox_transitionIn\":\"\",\"lightbox_transitionOut\":\"\"},\"window\":{\"enable\":\"1\"}}},\"mediamanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"windowsmedia=avi,wmv,wm,asf,asx,wmx,wvx;quicktime=mov,qt,mpg,mpeg,m4a;flash=swf;shockwave=dcr;real=rm,ra,ram;divx=divx;video=mp4,ogv,ogg,webm;audio=mp3,ogg,webm;silverlight=xap\",\"filesystem\":{\"name\":\"\"},\"mediaplayer\":{\"name\":\"jceplayer\",\"jceplayer\":{\"extensions\":\"flv,f4v,mp3,mp4,xml\",\"path\":\"media\\/jce\\/mediaplayer\\/mediaplayer.swf\"}},\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"aggregator\":{\"vimeo\":{\"enable\":\"1\",\"width\":\"400\",\"height\":\"225\"},\"youtube\":{\"enable\":\"1\",\"width\":\"425\",\"height\":\"350\"}},\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"rokbox\":{\"enable\":\"1\"},\"widgetkit\":{\"enable\":\"1\",\"lightbox_titlePosition\":\"\",\"lightbox_padding\":\"\",\"lightbox_overlayShow\":\"\",\"lightbox_transitionIn\":\"\",\"lightbox_transitionOut\":\"\"}}},\"templatemanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"html=html,htm,txt\",\"filesystem\":\"\",\"content_url\":\"\",\"replace_values\":\"\",\"selected_content_classes\":\"\",\"cdate_classes\":\"cdate creationdate\",\"mdate_classes\":\"mdate modifieddate\",\"cdate_format\":\"%m\\/%d\\/%Y : %H:%M:%S\",\"mdate_format\":\"%m\\/%d\\/%Y : %H:%M:%S\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\"}}'),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,charmap,formatselect,styleselect',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,7,8','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,charmap,formatselect,fontcolor',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,7,8','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `xy79i_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_xmap_items`
--

DROP TABLE IF EXISTS `xy79i_xmap_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_xmap_items`
--

LOCK TABLES `xy79i_xmap_items` WRITE;
/*!40000 ALTER TABLE `xy79i_xmap_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `xy79i_xmap_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xy79i_xmap_sitemap`
--

DROP TABLE IF EXISTS `xy79i_xmap_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xy79i_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xy79i_xmap_sitemap`
--

LOCK TABLES `xy79i_xmap_sitemap` WRITE;
/*!40000 ALTER TABLE `xy79i_xmap_sitemap` DISABLE KEYS */;
INSERT INTO `xy79i_xmap_sitemap` VALUES (1,'mainmap','mainmap','',NULL,NULL,'{\"showintro\":\"1\",\"show_menutitle\":\"1\",\"classname\":\"\",\"columns\":\"\",\"exlinks\":\"img_blue.gif\",\"compress_xml\":\"1\",\"beautify_xml\":\"1\",\"news_publication_name\":\"\"}','{\"mainmenu\":{\"priority\":\"0.5\",\"changefreq\":\"weekly\",\"ordering\":0}}',NULL,1,1,1,'2013-09-12 19:57:05',0,0,0,0,0,0);
/*!40000 ALTER TABLE `xy79i_xmap_sitemap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-25 15:41:27
