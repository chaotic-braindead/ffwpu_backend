-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: ffwpu_db
-- ------------------------------------------------------
-- Server version	11.4.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blessing',7,'add_blessing'),(26,'Can change blessing',7,'change_blessing'),(27,'Can delete blessing',7,'delete_blessing'),(28,'Can view blessing',7,'view_blessing'),(29,'Can add blessing recipient',8,'add_blessingrecipient'),(30,'Can change blessing recipient',8,'change_blessingrecipient'),(31,'Can delete blessing recipient',8,'delete_blessingrecipient'),(32,'Can view blessing recipient',8,'view_blessingrecipient'),(33,'Can add church',9,'add_church'),(34,'Can change church',9,'change_church'),(35,'Can delete church',9,'delete_church'),(36,'Can view church',9,'view_church'),(37,'Can add donation',10,'add_donation'),(38,'Can change donation',10,'change_donation'),(39,'Can delete donation',10,'delete_donation'),(40,'Can view donation',10,'view_donation'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add region',12,'add_region'),(46,'Can change region',12,'change_region'),(47,'Can delete region',12,'delete_region'),(48,'Can view region',12,'view_region'),(49,'Can add subregion',13,'add_subregion'),(50,'Can change subregion',13,'change_subregion'),(51,'Can delete subregion',13,'delete_subregion'),(52,'Can view subregion',13,'view_subregion'),(53,'Can add worship event',14,'add_worshipevent'),(54,'Can change worship event',14,'change_worshipevent'),(55,'Can delete worship event',14,'delete_worshipevent'),(56,'Can view worship event',14,'view_worshipevent'),(57,'Can add worship attendee',15,'add_worshipattendee'),(58,'Can change worship attendee',15,'change_worshipattendee'),(59,'Can delete worship attendee',15,'delete_worshipattendee'),(60,'Can view worship attendee',15,'view_worshipattendee'),(61,'Can add Token',16,'add_token'),(62,'Can change Token',16,'change_token'),(63,'Can delete Token',16,'delete_token'),(64,'Can view Token',16,'view_token'),(65,'Can add Token',17,'add_tokenproxy'),(66,'Can change Token',17,'change_tokenproxy'),(67,'Can delete Token',17,'delete_tokenproxy'),(68,'Can view Token',17,'view_tokenproxy'),(69,'Can add member mission',18,'add_membermission'),(70,'Can change member mission',18,'change_membermission'),(71,'Can delete member mission',18,'delete_membermission'),(72,'Can view member mission',18,'view_membermission'),(73,'Can add worship image',19,'add_worshipimage'),(74,'Can change worship image',19,'change_worshipimage'),(75,'Can delete worship image',19,'delete_worshipimage'),(76,'Can view worship image',19,'view_worshipimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$WSKFITynn1r5MSnWu9eAeb$qksjsc/WGkf4XVmo3ZELcql+Ujge4oqSLqVU1CZatIs=',NULL,1,'admin','','','',1,1,'2025-04-22 09:50:06.213280'),(2,'pbkdf2_sha256$870000$4nuP2oYwSEKfmPtgi5BiRO$MpDZlIuVYrShTjYkj6jrJRN4EvfBK3CbxnO9TZWckK8=',NULL,1,'testing','','','test@mail.com',1,1,'2025-04-23 04:06:25.957201');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessing_blessing`
--

DROP TABLE IF EXISTS `blessing_blessing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessing_blessing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `chaenbo` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessing_blessing`
--

LOCK TABLES `blessing_blessing` WRITE;
/*!40000 ALTER TABLE `blessing_blessing` DISABLE KEYS */;
INSERT INTO `blessing_blessing` VALUES (1,'Blessing #1','2025-04-21','Vertical');
/*!40000 ALTER TABLE `blessing_blessing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessing_blessingrecipient`
--

DROP TABLE IF EXISTS `blessing_blessingrecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessing_blessingrecipient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` longtext NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `blessing_id` bigint(20) NOT NULL,
  `invited_by_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blessing_blessingrec_blessing_id_19c75899_fk_blessing_` (`blessing_id`),
  KEY `blessing_blessingrec_invited_by_id_830ec3f5_fk_member_me` (`invited_by_id`),
  KEY `blessing_blessingrec_member_id_a86e2ee0_fk_member_me` (`member_id`),
  CONSTRAINT `blessing_blessingrec_blessing_id_19c75899_fk_blessing_` FOREIGN KEY (`blessing_id`) REFERENCES `blessing_blessing` (`id`),
  CONSTRAINT `blessing_blessingrec_invited_by_id_830ec3f5_fk_member_me` FOREIGN KEY (`invited_by_id`) REFERENCES `member_member` (`id`),
  CONSTRAINT `blessing_blessingrec_member_id_a86e2ee0_fk_member_me` FOREIGN KEY (`member_id`) REFERENCES `member_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessing_blessingrecipient`
--

LOCK TABLES `blessing_blessingrecipient` WRITE;
/*!40000 ALTER TABLE `blessing_blessingrecipient` DISABLE KEYS */;
INSERT INTO `blessing_blessingrecipient` VALUES (1,'Guest','Steve Rogers','mail@mail.com',1,18,NULL),(2,'Member',NULL,NULL,1,NULL,18);
/*!40000 ALTER TABLE `blessing_blessingrecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `church_church`
--

DROP TABLE IF EXISTS `church_church`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `church_church` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region_id` bigint(20) NOT NULL,
  `subregion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `church_church_region_id_81b281d6_fk_region_region_id` (`region_id`),
  KEY `church_church_subregion_id_ef7a732d_fk_region_subregion_id` (`subregion_id`),
  CONSTRAINT `church_church_region_id_81b281d6_fk_region_region_id` FOREIGN KEY (`region_id`) REFERENCES `region_region` (`id`),
  CONSTRAINT `church_church_subregion_id_ef7a732d_fk_region_subregion_id` FOREIGN KEY (`subregion_id`) REFERENCES `region_subregion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church_church`
--

LOCK TABLES `church_church` WRITE;
/*!40000 ALTER TABLE `church_church` DISABLE KEYS */;
INSERT INTO `church_church` VALUES (2,'Church #1','Philippines',3,1),(3,'Church #2','Philippines',3,1),(4,'Church #3','Philippines',3,1),(5,'Church #4','Philippines',3,1);
/*!40000 ALTER TABLE `church_church` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(16,'authtoken','token'),(17,'authtoken','tokenproxy'),(7,'blessing','blessing'),(8,'blessing','blessingrecipient'),(9,'church','church'),(5,'contenttypes','contenttype'),(10,'donation','donation'),(11,'member','member'),(18,'member','membermission'),(12,'region','region'),(13,'region','subregion'),(6,'sessions','session'),(15,'worship','worshipattendee'),(14,'worship','worshipevent'),(19,'worship','worshipimage');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-04-22 09:42:32.918799'),(2,'auth','0001_initial','2025-04-22 09:42:33.224146'),(3,'admin','0001_initial','2025-04-22 09:42:33.302857'),(4,'admin','0002_logentry_remove_auto_add','2025-04-22 09:42:33.309148'),(5,'admin','0003_logentry_add_action_flag_choices','2025-04-22 09:42:33.314987'),(6,'sessions','0001_initial','2025-04-22 09:42:36.753360'),(7,'contenttypes','0002_remove_content_type_name','2025-04-22 09:43:04.664859'),(8,'auth','0002_alter_permission_name_max_length','2025-04-22 09:43:04.694992'),(9,'auth','0003_alter_user_email_max_length','2025-04-22 09:43:04.713155'),(10,'auth','0004_alter_user_username_opts','2025-04-22 09:43:04.718479'),(11,'auth','0005_alter_user_last_login_null','2025-04-22 09:43:04.744396'),(12,'auth','0006_require_contenttypes_0002','2025-04-22 09:43:04.745992'),(13,'auth','0007_alter_validators_add_error_messages','2025-04-22 09:43:04.752431'),(14,'auth','0008_alter_user_username_max_length','2025-04-22 09:43:04.773008'),(15,'auth','0009_alter_user_last_name_max_length','2025-04-22 09:43:04.791300'),(16,'auth','0010_alter_group_name_max_length','2025-04-22 09:43:04.809605'),(17,'auth','0011_update_proxy_permissions','2025-04-22 09:43:04.816045'),(18,'auth','0012_alter_user_first_name_max_length','2025-04-22 09:43:04.833314'),(19,'authtoken','0001_initial','2025-04-22 09:43:20.736312'),(20,'authtoken','0002_auto_20160226_1747','2025-04-22 09:43:20.752008'),(21,'authtoken','0003_tokenproxy','2025-04-22 09:43:20.754138'),(22,'authtoken','0004_alter_tokenproxy_options','2025-04-22 09:43:20.759531'),(23,'region','0001_initial','2025-04-22 09:43:20.818934'),(24,'member','0001_initial','2025-04-22 09:43:20.860505'),(25,'blessing','0001_initial','2025-04-22 09:43:20.964788'),(26,'church','0001_initial','2025-04-22 09:43:21.002088'),(27,'donation','0001_initial','2025-04-22 09:43:21.059545'),(28,'worship','0001_initial','2025-04-22 09:43:21.193246'),(29,'member','0002_membermission','2025-04-22 12:55:00.870054'),(30,'member','0003_member_subregion','2025-04-22 14:03:49.162628'),(31,'church','0002_church_subregion','2025-04-23 01:13:44.544242'),(32,'worship','0002_remove_worshipevent_photo_worshipimage','2025-04-23 01:13:44.596639');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_donation`
--

DROP TABLE IF EXISTS `donation_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_donation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `church_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donation_donation_church_id_a7eb7939_fk_church_church_id` (`church_id`),
  KEY `donation_donation_member_id_f463508f_fk_member_member_id` (`member_id`),
  CONSTRAINT `donation_donation_church_id_a7eb7939_fk_church_church_id` FOREIGN KEY (`church_id`) REFERENCES `church_church` (`id`),
  CONSTRAINT `donation_donation_member_id_f463508f_fk_member_member_id` FOREIGN KEY (`member_id`) REFERENCES `member_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_donation`
--

LOCK TABLES `donation_donation` WRITE;
/*!40000 ALTER TABLE `donation_donation` DISABLE KEYS */;
INSERT INTO `donation_donation` VALUES (1,'2025-04-23',6000.00,'PHP',3,18),(3,'2025-04-28',9600.00,'PHP',3,1),(4,'2025-04-27',15000.00,'PHP',2,18),(5,'2025-04-01',2000.00,'PHP',2,18),(6,'2025-04-25',10000.00,'PHP',2,18),(7,'2025-04-28',10000.00,'PHP',3,18),(8,'2025-04-29',5000.00,'PHP',2,1);
/*!40000 ALTER TABLE `donation_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_member`
--

DROP TABLE IF EXISTS `member_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `given_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) NOT NULL,
  `gender` longtext NOT NULL,
  `birthday` date NOT NULL,
  `nation` varchar(255) NOT NULL,
  `marital_status` longtext NOT NULL,
  `name_of_spouse` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `generation` varchar(255) NOT NULL,
  `blessing_status` varchar(255) NOT NULL,
  `spiritual_birthday` date NOT NULL,
  `spiritual_parent` varchar(255) NOT NULL,
  `membership_category` longtext NOT NULL,
  `region_id` bigint(20) NOT NULL,
  `subregion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_member_region_id_d89c5df3_fk_region_region_id` (`region_id`),
  KEY `member_member_subregion_id_ca277fea_fk_region_subregion_id` (`subregion_id`),
  CONSTRAINT `member_member_region_id_d89c5df3_fk_region_region_id` FOREIGN KEY (`region_id`) REFERENCES `region_region` (`id`),
  CONSTRAINT `member_member_subregion_id_ca277fea_fk_region_subregion_id` FOREIGN KEY (`subregion_id`) REFERENCES `region_subregion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member`
--

LOCK TABLES `member_member` WRITE;
/*!40000 ALTER TABLE `member_member` DISABLE KEYS */;
INSERT INTO `member_member` VALUES (1,'asf','asdf','asdf','Male','2025-04-22','Philippines','Single','','09123456789','email@mail.com','12341adfsdf','','1st Generation','asdf','2025-04-22','aasdf','Regular',3,1),(18,'Rafael Sebastian','de la Cruz','Torres','Male','2003-09-08','Philippines','Single','','09123456788','rafael@email.com','123 Address Street','','1st Generation','Blessed','2007-08-09','Arthur Morgan','Regular',3,1),(20,'Juan Paolo','Balba','Dionisio','Male','2002-11-12','Philippines','Single','','09123456789','mail@mai.com','123 Address Street','member/photos/juan-paolo-balba-dionisio-853da7d6.jpg','1st Generation','Blessed','2005-11-04','Arthur Morgan','Regular',3,1),(21,'James','','Adams','Male','2005-04-09','Philippines','Single','','09132456788','james@mail.com','123 Address Street','','1st Generation','Blessed','2007-11-12','John Marston','Regular',3,1);
/*!40000 ALTER TABLE `member_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_membermission`
--

DROP TABLE IF EXISTS `member_membermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_membermission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_membermission_member_id_7c888b42_fk_member_member_id` (`member_id`),
  CONSTRAINT `member_membermission_member_id_7c888b42_fk_member_member_id` FOREIGN KEY (`member_id`) REFERENCES `member_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_membermission`
--

LOCK TABLES `member_membermission` WRITE;
/*!40000 ALTER TABLE `member_membermission` DISABLE KEYS */;
INSERT INTO `member_membermission` VALUES (1,'Mission #1','Organization Organization','Philippines','2015-09-04','2017-03-30',18),(5,'Mission #2','Org','Philippines','2019-05-28','2020-11-21',18),(6,'Mission Impossible','Org','United States','2017-04-25','2019-11-04',20),(7,'Test','org','Philippines','2010-02-22','2011-05-23',21);
/*!40000 ALTER TABLE `member_membermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_region`
--

DROP TABLE IF EXISTS `region_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_region`
--

LOCK TABLES `region_region` WRITE;
/*!40000 ALTER TABLE `region_region` DISABLE KEYS */;
INSERT INTO `region_region` VALUES (2,'Europe'),(3,'Asia'),(4,'Africa'),(5,'South America'),(6,'Oceania'),(7,'North America');
/*!40000 ALTER TABLE `region_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_subregion`
--

DROP TABLE IF EXISTS `region_subregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_subregion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `region_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_subregion_region_id_99d004f2_fk_region_region_id` (`region_id`),
  CONSTRAINT `region_subregion_region_id_99d004f2_fk_region_region_id` FOREIGN KEY (`region_id`) REFERENCES `region_region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_subregion`
--

LOCK TABLES `region_subregion` WRITE;
/*!40000 ALTER TABLE `region_subregion` DISABLE KEYS */;
INSERT INTO `region_subregion` VALUES (1,'Southeast Asia',3);
/*!40000 ALTER TABLE `region_subregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_worshipattendee`
--

DROP TABLE IF EXISTS `worship_worshipattendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_worshipattendee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` longtext NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `invited_by_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `worship_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_worshipatten_invited_by_id_84bbe4e8_fk_member_me` (`invited_by_id`),
  KEY `worship_worshipattendee_member_id_a77feb42_fk_member_member_id` (`member_id`),
  KEY `worship_worshipatten_worship_id_6a5ecb08_fk_worship_w` (`worship_id`),
  CONSTRAINT `worship_worshipatten_invited_by_id_84bbe4e8_fk_member_me` FOREIGN KEY (`invited_by_id`) REFERENCES `member_member` (`id`),
  CONSTRAINT `worship_worshipatten_worship_id_6a5ecb08_fk_worship_w` FOREIGN KEY (`worship_id`) REFERENCES `worship_worshipevent` (`id`),
  CONSTRAINT `worship_worshipattendee_member_id_a77feb42_fk_member_member_id` FOREIGN KEY (`member_id`) REFERENCES `member_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_worshipattendee`
--

LOCK TABLES `worship_worshipattendee` WRITE;
/*!40000 ALTER TABLE `worship_worshipattendee` DISABLE KEYS */;
INSERT INTO `worship_worshipattendee` VALUES (1,'Member',NULL,NULL,NULL,1,2),(14,'Guest','Weee','mail@mail.com',1,NULL,2),(15,'Member',NULL,NULL,NULL,18,1),(16,'Member',NULL,NULL,NULL,18,2),(17,'Guest','James Madison','email@mail.com',18,NULL,6),(18,'Member',NULL,NULL,NULL,18,6);
/*!40000 ALTER TABLE `worship_worshipattendee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_worshipevent`
--

DROP TABLE IF EXISTS `worship_worshipevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_worshipevent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `worship_type` longtext NOT NULL,
  `church_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_worshipevent_church_id_b9594bb8_fk_church_church_id` (`church_id`),
  CONSTRAINT `worship_worshipevent_church_id_b9594bb8_fk_church_church_id` FOREIGN KEY (`church_id`) REFERENCES `church_church` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_worshipevent`
--

LOCK TABLES `worship_worshipevent` WRITE;
/*!40000 ALTER TABLE `worship_worshipevent` DISABLE KEYS */;
INSERT INTO `worship_worshipevent` VALUES (1,'Event #1','2025-04-20','Onsite',2),(2,'Event #2','2025-04-23','Onsite',2),(6,'Worship Sample','2025-04-29','Onsite',4);
/*!40000 ALTER TABLE `worship_worshipevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_worshipimage`
--

DROP TABLE IF EXISTS `worship_worshipimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_worshipimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) DEFAULT NULL,
  `worship_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_worshipimage_worship_id_ab826fd1_fk_worship_w` (`worship_id`),
  CONSTRAINT `worship_worshipimage_worship_id_ab826fd1_fk_worship_w` FOREIGN KEY (`worship_id`) REFERENCES `worship_worshipevent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_worshipimage`
--

LOCK TABLES `worship_worshipimage` WRITE;
/*!40000 ALTER TABLE `worship_worshipimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `worship_worshipimage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 14:56:40
