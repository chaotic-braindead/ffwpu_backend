-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: ffwpu
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add country',7,'add_country'),(26,'Can change country',7,'change_country'),(27,'Can delete country',7,'delete_country'),(28,'Can view country',7,'view_country'),(29,'Can add currency',8,'add_currency'),(30,'Can change currency',8,'change_currency'),(31,'Can delete currency',8,'delete_currency'),(32,'Can view currency',8,'view_currency'),(33,'Can add church',9,'add_church'),(34,'Can change church',9,'change_church'),(35,'Can delete church',9,'delete_church'),(36,'Can view church',9,'view_church'),(37,'Can add family',10,'add_family'),(38,'Can change family',10,'change_family'),(39,'Can delete family',10,'delete_family'),(40,'Can view family',10,'view_family'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add blessing',12,'add_blessing'),(46,'Can change blessing',12,'change_blessing'),(47,'Can delete blessing',12,'delete_blessing'),(48,'Can view blessing',12,'view_blessing'),(49,'Can add blessing list',13,'add_blessinglist'),(50,'Can change blessing list',13,'change_blessinglist'),(51,'Can delete blessing list',13,'delete_blessinglist'),(52,'Can view blessing list',13,'view_blessinglist'),(53,'Can add donation',14,'add_donation'),(54,'Can change donation',14,'change_donation'),(55,'Can delete donation',14,'delete_donation'),(56,'Can view donation',14,'view_donation'),(57,'Can add Token',15,'add_token'),(58,'Can change Token',15,'change_token'),(59,'Can delete Token',15,'delete_token'),(60,'Can view Token',15,'view_token'),(61,'Can add Token',16,'add_tokenproxy'),(62,'Can change Token',16,'change_tokenproxy'),(63,'Can delete Token',16,'delete_tokenproxy'),(64,'Can view Token',16,'view_tokenproxy'),(65,'Can add worship',17,'add_worship'),(66,'Can change worship',17,'change_worship'),(67,'Can delete worship',17,'delete_worship'),(68,'Can view worship',17,'view_worship'),(69,'Can add member worship',18,'add_memberworship'),(70,'Can change member worship',18,'change_memberworship'),(71,'Can delete member worship',18,'delete_memberworship'),(72,'Can view member worship',18,'view_memberworship'),(73,'Can add guest worship',19,'add_guestworship'),(74,'Can change guest worship',19,'change_guestworship'),(75,'Can delete guest worship',19,'delete_guestworship'),(76,'Can view guest worship',19,'view_guestworship'),(77,'Can add guest',20,'add_guest'),(78,'Can change guest',20,'change_guest'),(79,'Can delete guest',20,'delete_guest'),(80,'Can view guest',20,'view_guest');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$vSNuQmzHe3I9oC3aAs9qAa$DJpAfcS1zZp7m6It6tL2FilpYqoMfHKDYQnArB2rA5w=',NULL,1,'admin','','','',1,1,'2025-02-16 12:31:32.589047'),(2,'pbkdf2_sha256$870000$KO61mnhG8QMt6deTzxIoBR$M7W8TPnM4Aj6rhAfxhBniG+2kAC0C9uk+NdBN21PbMQ=',NULL,1,'rapi','','','rapi@mail.com',1,1,'2025-03-01 11:27:53.592500'),(3,'pbkdf2_sha256$870000$h6gUAu6gCVmkuVf0njyOwo$arTjSMmiyUi/oH9jYloPGawwwUtGHMD1dY5pYDga1cc=',NULL,1,'test','','','test@email.com',1,1,'2025-03-08 05:47:34.022228');
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
-- Table structure for table `blessings_blessing`
--

DROP TABLE IF EXISTS `blessings_blessing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessings_blessing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blessing_date` date NOT NULL,
  `name_of_blessing` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessings_blessing`
--

LOCK TABLES `blessings_blessing` WRITE;
/*!40000 ALTER TABLE `blessings_blessing` DISABLE KEYS */;
INSERT INTO `blessings_blessing` VALUES (1,'2025-03-03','test');
/*!40000 ALTER TABLE `blessings_blessing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessings_blessing_members`
--

DROP TABLE IF EXISTS `blessings_blessing_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessings_blessing_members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blessing_id` bigint(20) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blessings_blessing_members_blessing_id_member_id_19c4530e_uniq` (`blessing_id`,`member_id`),
  KEY `blessings_blessing_m_member_id_23278890_fk_members_m` (`member_id`),
  CONSTRAINT `blessings_blessing_m_blessing_id_6b2a1021_fk_blessings` FOREIGN KEY (`blessing_id`) REFERENCES `blessings_blessing` (`id`),
  CONSTRAINT `blessings_blessing_m_member_id_23278890_fk_members_m` FOREIGN KEY (`member_id`) REFERENCES `members_member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessings_blessing_members`
--

LOCK TABLES `blessings_blessing_members` WRITE;
/*!40000 ALTER TABLE `blessings_blessing_members` DISABLE KEYS */;
INSERT INTO `blessings_blessing_members` VALUES (1,1,1);
/*!40000 ALTER TABLE `blessings_blessing_members` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(15,'authtoken','token'),(16,'authtoken','tokenproxy'),(12,'blessings','blessing'),(13,'blessings','blessinglist'),(5,'contenttypes','contenttype'),(14,'donations','donation'),(9,'members','church'),(7,'members','country'),(8,'members','currency'),(10,'members','family'),(11,'members','member'),(18,'members','memberworship'),(6,'sessions','session'),(20,'worship','guest'),(19,'worship','guestworship'),(17,'worship','worship');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'members','0001_initial','2025-02-11 11:32:06.658838'),(2,'blessings','0001_initial','2025-02-11 11:32:10.414616'),(3,'donations','0001_initial','2025-02-11 11:32:20.880503'),(4,'contenttypes','0001_initial','2025-02-11 11:32:44.186799'),(5,'auth','0001_initial','2025-02-11 11:32:44.624242'),(6,'admin','0001_initial','2025-02-11 11:32:44.718057'),(7,'admin','0002_logentry_remove_auto_add','2025-02-11 11:32:44.733671'),(8,'admin','0003_logentry_add_action_flag_choices','2025-02-11 11:32:44.733671'),(9,'contenttypes','0002_remove_content_type_name','2025-02-11 11:32:44.811723'),(10,'auth','0002_alter_permission_name_max_length','2025-02-11 11:32:44.843052'),(11,'auth','0003_alter_user_email_max_length','2025-02-11 11:32:44.874333'),(12,'auth','0004_alter_user_username_opts','2025-02-11 11:32:44.889948'),(13,'auth','0005_alter_user_last_login_null','2025-02-11 11:32:45.155552'),(14,'auth','0006_require_contenttypes_0002','2025-02-11 11:32:45.171176'),(15,'auth','0007_alter_validators_add_error_messages','2025-02-11 11:32:45.171176'),(16,'auth','0008_alter_user_username_max_length','2025-02-11 11:32:45.202350'),(17,'auth','0009_alter_user_last_name_max_length','2025-02-11 11:32:45.233599'),(18,'auth','0010_alter_group_name_max_length','2025-02-11 11:32:45.249258'),(19,'auth','0011_update_proxy_permissions','2025-02-11 11:32:45.264920'),(20,'auth','0012_alter_user_first_name_max_length','2025-02-11 11:32:45.296178'),(21,'authtoken','0001_initial','2025-02-11 11:32:45.343077'),(22,'authtoken','0002_auto_20160226_1747','2025-02-11 11:32:45.374290'),(23,'authtoken','0003_tokenproxy','2025-02-11 11:32:45.374290'),(24,'authtoken','0004_alter_tokenproxy_options','2025-02-11 11:32:45.389977'),(25,'sessions','0001_initial','2025-02-11 11:32:45.452409'),(26,'members','0002_country_region','2025-02-23 16:55:07.362383'),(27,'worship','0001_initial','2025-02-23 17:35:22.808740'),(28,'members','0003_memberworship_member_worships_and_more','2025-02-23 17:59:42.498446'),(29,'worship','0002_guest_guestworship','2025-03-01 07:27:36.419081'),(30,'blessings','0002_blessing_id_alter_blessing_name_of_blessing','2025-03-03 07:29:13.863796'),(31,'blessings','0003_blessing_members_delete_blessinglist','2025-03-03 07:48:44.308221');
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
-- Table structure for table `donations_donation`
--

DROP TABLE IF EXISTS `donations_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations_donation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `church_id` bigint(20) NOT NULL,
  `currency_id` varchar(3) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donations_donation_church_id_9a67bd17_fk_members_church_id` (`church_id`),
  KEY `donations_donation_currency_id_65955642_fk_members_currency_code` (`currency_id`),
  KEY `donations_donation_member_id_216189e2_fk_members_m` (`member_id`),
  CONSTRAINT `donations_donation_church_id_9a67bd17_fk_members_church_id` FOREIGN KEY (`church_id`) REFERENCES `members_church` (`id`),
  CONSTRAINT `donations_donation_currency_id_65955642_fk_members_currency_code` FOREIGN KEY (`currency_id`) REFERENCES `members_currency` (`code`),
  CONSTRAINT `donations_donation_member_id_216189e2_fk_members_m` FOREIGN KEY (`member_id`) REFERENCES `members_member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations_donation`
--

LOCK TABLES `donations_donation` WRITE;
/*!40000 ALTER TABLE `donations_donation` DISABLE KEYS */;
INSERT INTO `donations_donation` VALUES (1,'2025-03-15',500.00,1,'PHP',1);
/*!40000 ALTER TABLE `donations_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_church`
--

DROP TABLE IF EXISTS `members_church`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_church` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `country_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `members_church_country_id_8837802f_fk_members_country_nation` (`country_id`),
  CONSTRAINT `members_church_country_id_8837802f_fk_members_country_nation` FOREIGN KEY (`country_id`) REFERENCES `members_country` (`nation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_church`
--

LOCK TABLES `members_church` WRITE;
/*!40000 ALTER TABLE `members_church` DISABLE KEYS */;
INSERT INTO `members_church` VALUES (1,'Test','Philippines'),(2,'Test1','Philippines');
/*!40000 ALTER TABLE `members_church` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_country`
--

DROP TABLE IF EXISTS `members_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_country` (
  `subregion` varchar(64) DEFAULT NULL,
  `nation` varchar(64) NOT NULL,
  `currency_id` varchar(3) NOT NULL,
  `region` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`nation`),
  KEY `members_country_currency_id_ef962b1e_fk_members_currency_code` (`currency_id`),
  CONSTRAINT `members_country_currency_id_ef962b1e_fk_members_currency_code` FOREIGN KEY (`currency_id`) REFERENCES `members_currency` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_country`
--

LOCK TABLES `members_country` WRITE;
/*!40000 ALTER TABLE `members_country` DISABLE KEYS */;
INSERT INTO `members_country` VALUES ('','Afghanistan','AFN',NULL),('','Albania','ALL',NULL),('','Algeria','DZD',NULL),('','American Samoa','USD',NULL),('','Andorra','EUR',NULL),('','Angola','AOA',NULL),('','Anguilla','XCD',NULL),('','Antigua and Barbuda','XCD',NULL),('','Argentina','ARS',NULL),('','Armenia','AMD',NULL),('','Aruba','AWG',NULL),('','Australia','AUD',NULL),('','Austria','EUR',NULL),('','Azerbaijan','AZN',NULL),('','Bahamas','BSD',NULL),('','Bahrain','BHD',NULL),('','Bangladesh','BDT',NULL),('','Barbados','BBD',NULL),('','Belarus','BYN',NULL),('','Belgium','EUR',NULL),('','Belize','BZD',NULL),('','Benin','XOF',NULL),('','Bermuda','BMD',NULL),('','Bhutan','BTN',NULL),('','Bolivia','BOB',NULL),('','Bosnia and Herzegovina','BAM',NULL),('','Botswana','BWP',NULL),('','Bouvet Island','NOK',NULL),('','Brazil','BRL',NULL),('','British Indian Ocean Territory','USD',NULL),('','Brunei Darussalam','BND',NULL),('','Bulgaria','BGN',NULL),('','Burkina Faso','XOF',NULL),('','Burundi','BIF',NULL),('','Cambodia','KHR',NULL),('','Cameroon','XAF',NULL),('','Canada','CAD',NULL),('','Cape Verde','CVE',NULL),('','Cayman Islands','KYD',NULL),('','Central African Republic','XAF',NULL),('','Chad','XAF',NULL),('','Chile','CLP',NULL),('','China','CNY',NULL),('','Christmas Island','AUD',NULL),('','Cocos (Keeling) Islands','AUD',NULL),('','Colombia','COP',NULL),('','Comoros','KMF',NULL),('','Cook Islands','NZD',NULL),('','Costa Rica','CRC',NULL),('','Croatia (Hrvatska)','HRK',NULL),('','Cuba','CUP',NULL),('','Cyprus','EUR',NULL),('','Czech Republic','CZK',NULL),('','Democratic Republic of the Congo','CDF',NULL),('','Denmark','DKK',NULL),('','Djibouti','DJF',NULL),('','Dominica','XCD',NULL),('','Dominican Republic','DOP',NULL),('','East Timor','USD',NULL),('','Ecuador','USD',NULL),('','Egypt','EGP',NULL),('','El Salvador','USD',NULL),('','Equatorial Guinea','XAF',NULL),('','Eritrea','ERN',NULL),('','Estonia','EUR',NULL),('','Eswatini','SZL',NULL),('','Ethiopia','ETB',NULL),('','Falkland Islands (Malvinas)','FKP',NULL),('','Faroe Islands','DKK',NULL),('','Fiji','FJD',NULL),('','Finland','EUR',NULL),('','France','EUR',NULL),('','French Guiana','EUR',NULL),('','French Polynesia','XPF',NULL),('','French Southern Territories','EUR',NULL),('','Gabon','XAF',NULL),('','Gambia','GMD',NULL),('','Georgia','GEL',NULL),('','Germany','EUR',NULL),('','Ghana','GHS',NULL),('','Gibraltar','GIP',NULL),('','Greece','EUR',NULL),('','Greenland','DKK',NULL),('','Grenada','XCD',NULL),('','Guadeloupe','EUR',NULL),('','Guam','USD',NULL),('','Guatemala','GTQ',NULL),('','Guinea','GNF',NULL),('','Guinea-Bissau','XOF',NULL),('','Guyana','GYD',NULL),('','Haiti','HTG',NULL),('','Honduras','HNL',NULL),('','Hong Kong','HKD',NULL),('','Hungary','HUF',NULL),('','Iceland','ISK',NULL),('','India','INR',NULL),('','Indonesia','IDR',NULL),('','Iran (Islamic Republic of)','IRR',NULL),('','Iraq','IQD',NULL),('','Ireland','EUR',NULL),('','Isle of Man','GBP',NULL),('','Israel','ILS',NULL),('','Italy','EUR',NULL),('','Ivory Coast','XOF',NULL),('','Jamaica','JMD',NULL),('','Japan','JPY',NULL),('','Jersey','GBP',NULL),('','Jordan','JOD',NULL),('','Kazakhstan','KZT',NULL),('','Kenya','KES',NULL),('','Kiribati','AUD',NULL),('','Korea, Democratic People\'s Republic of','KPW',NULL),('','Korea, Republic of','KRW',NULL),('','Kuwait','KWD',NULL),('','Kyrgyzstan','KGS',NULL),('','Lao People\'s Democratic Republic','LAK',NULL),('','Latvia','EUR',NULL),('','Lebanon','LBP',NULL),('','Lesotho','LSL',NULL),('','Liberia','LRD',NULL),('','Libya','LYD',NULL),('','Liechtenstein','CHF',NULL),('','Lithuania','EUR',NULL),('','Luxembourg','EUR',NULL),('','Macau','MOP',NULL),('','Madagascar','MGA',NULL),('','Malawi','MWK',NULL),('','Malaysia','MYR',NULL),('','Maldives','MVR',NULL),('','Mali','XOF',NULL),('','Malta','EUR',NULL),('','Marshall Islands','USD',NULL),('','Martinique','EUR',NULL),('','Mauritania','MRO',NULL),('','Mauritius','MUR',NULL),('','Mayotte','EUR',NULL),('','Mexico','MXN',NULL),('','Micronesia, Federated States of','USD',NULL),('','Moldova, Republic of','MDL',NULL),('','Mongolia','MNT',NULL),('','Montenegro','EUR',NULL),('','Montserrat','XCD',NULL),('','Morocco','MAD',NULL),('','Mozambique','MZN',NULL),('','Myanmar','MMK',NULL),('','Namibia','NAD',NULL),('','Nauru','AUD',NULL),('','Nepal','NPR',NULL),('','Netherlands','EUR',NULL),('','New Caledonia','XPF',NULL),('','New Zealand','NZD',NULL),('','Nicaragua','NIO',NULL),('','Niger','XOF',NULL),('','Nigeria','NGN',NULL),('','Niue','NZD',NULL),('','North Macedonia','MKD',NULL),('','Northern Mariana Islands','USD',NULL),('','Norway','NOK',NULL),('','Oman','OMR',NULL),('','Pakistan','PKR',NULL),('','Palau','USD',NULL),('','Panama','PAB',NULL),('','Papua New Guinea','PGK',NULL),('','Paraguay','PYG',NULL),('','Peru','PEN',NULL),('','Philippines','PHP','Asia Pacific'),('','Pitcairn','NZD',NULL),('','Poland','PLN',NULL),('','Portugal','EUR',NULL),('','Puerto Rico','USD',NULL),('','Qatar','QAR',NULL),('','Republic of Congo','XAF',NULL),('','Reunion','EUR',NULL),('','Romania','RON',NULL),('','Russian Federation','RUB',NULL),('','Rwanda','RWF',NULL),('','Saint Kitts and Nevis','XCD',NULL),('','Saint Lucia','XCD',NULL),('','Saint Vincent and the Grenadines','XCD',NULL),('','Samoa','WST',NULL),('','Sao Tome and Principe','STD',NULL),('','Saudi Arabia','SAR',NULL),('','Senegal','XOF',NULL),('','Serbia','RSD',NULL),('','Seychelles','SCR',NULL),('','Sierra Leone','SLL',NULL),('','Singapore','SGD',NULL),('','Slovakia','EUR',NULL),('','Slovenia','EUR',NULL),('','Solomon Islands','SBD',NULL),('','Somalia','SOS',NULL),('','South Africa','ZAR',NULL),('','South Sudan','SSP',NULL),('','Spain','EUR',NULL),('','Sri Lanka','LKR',NULL),('','St. Helena','SHP',NULL),('','St. Pierre and Miquelon','EUR',NULL),('','Sudan','SDG',NULL),('','Suriname','SRD',NULL),('','Svalbard and Jan Mayen Islands','NOK',NULL),('','Sweden','SEK',NULL),('','Switzerland','CHF',NULL),('','Syrian Arab Republic','SYP',NULL),('','Taiwan','TWD',NULL),('','Tajikistan','TJS',NULL),('','Tanzania, United Republic of','TZS',NULL),('','Thailand','THB',NULL),('','Togo','XOF',NULL),('','Tokelau','NZD',NULL),('','Tonga','TOP',NULL),('','Trinidad and Tobago','TTD',NULL),('','Tunisia','TND',NULL),('','Turkey','TRY',NULL),('','Turkmenistan','TMT',NULL),('','Turks and Caicos Islands','USD',NULL),('','Tuvalu','AUD',NULL),('','Uganda','UGX',NULL),('','Ukraine','UAH',NULL),('','United Arab Emirates','AED',NULL),('','United Kingdom','GBP',NULL),('','United States of America','USD',NULL),('','Uruguay','UYU',NULL),('','Uzbekistan','UZS',NULL),('','Vanuatu','VUV',NULL),('','Venezuela','VEF',NULL),('','Vietnam','VND',NULL),('','Virgin Islands (U.S.)','USD',NULL),('','Wallis and Futuna Islands','XPF',NULL),('','Western Sahara','MAD',NULL),('','Yemen','YER',NULL),('','Zambia','ZMW',NULL),('','Zimbabwe','ZWL',NULL);
/*!40000 ALTER TABLE `members_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_currency`
--

DROP TABLE IF EXISTS `members_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_currency` (
  `code` varchar(3) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_currency`
--

LOCK TABLES `members_currency` WRITE;
/*!40000 ALTER TABLE `members_currency` DISABLE KEYS */;
INSERT INTO `members_currency` VALUES ('AED'),('AFN'),('ALL'),('AMD'),('ANG'),('AOA'),('ARS'),('AUD'),('AWG'),('AZN'),('BAM'),('BBD'),('BDT'),('BGN'),('BHD'),('BIF'),('BMD'),('BND'),('BOB'),('BOV'),('BRL'),('BSD'),('BTN'),('BWP'),('BYN'),('BZD'),('CAD'),('CDF'),('CHE'),('CHF'),('CHW'),('CLF'),('CLP'),('CNY'),('COP'),('COU'),('CRC'),('CUC'),('CUP'),('CVE'),('CZK'),('DJF'),('DKK'),('DOP'),('DZD'),('EGP'),('ERN'),('ETB'),('EUR'),('FJD'),('FKP'),('GBP'),('GEL'),('GHS'),('GIP'),('GMD'),('GNF'),('GTQ'),('GYD'),('HKD'),('HNL'),('HRK'),('HTG'),('HUF'),('IDR'),('ILS'),('INR'),('IQD'),('IRR'),('ISK'),('JMD'),('JOD'),('JPY'),('KES'),('KGS'),('KHR'),('KMF'),('KPW'),('KRW'),('KWD'),('KYD'),('KZT'),('LAK'),('LBP'),('LKR'),('LRD'),('LSL'),('LYD'),('MAD'),('MDL'),('MGA'),('MKD'),('MMK'),('MNT'),('MOP'),('MRO'),('MRU'),('MUR'),('MVR'),('MWK'),('MXN'),('MXV'),('MYR'),('MZN'),('NAD'),('NGN'),('NIO'),('NOK'),('NPR'),('NZD'),('OMR'),('PAB'),('PEN'),('PGK'),('PHP'),('PKR'),('PLN'),('PYG'),('QAR'),('RON'),('RSD'),('RUB'),('RWF'),('SAR'),('SBD'),('SCR'),('SDG'),('SEK'),('SGD'),('SHP'),('SLE'),('SLL'),('SOS'),('SRD'),('SSP'),('STD'),('STN'),('SVC'),('SYP'),('SZL'),('THB'),('TJS'),('TMT'),('TND'),('TOP'),('TRY'),('TTD'),('TWD'),('TZS'),('UAH'),('UGX'),('USD'),('USN'),('UYI'),('UYU'),('UZS'),('VED'),('VEF'),('VND'),('VUV'),('WST'),('XAF'),('XCD'),('XDR'),('XOF'),('XPF'),('XSU'),('XUA'),('YER'),('ZAR'),('ZMW'),('ZWL');
/*!40000 ALTER TABLE `members_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_family`
--

DROP TABLE IF EXISTS `members_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `church_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_family_church_id_cf229afd_fk_members_church_id` (`church_id`),
  CONSTRAINT `members_family_church_id_cf229afd_fk_members_church_id` FOREIGN KEY (`church_id`) REFERENCES `members_church` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_family`
--

LOCK TABLES `members_family` WRITE;
/*!40000 ALTER TABLE `members_family` DISABLE KEYS */;
INSERT INTO `members_family` VALUES (1,'Test',1);
/*!40000 ALTER TABLE `members_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_member`
--

DROP TABLE IF EXISTS `members_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `title` int(11) NOT NULL,
  `given_name` varchar(64) NOT NULL,
  `middle_name` varchar(64) NOT NULL,
  `family_name` varchar(64) NOT NULL,
  `gender` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `generation` varchar(64) NOT NULL,
  `blessing_status` varchar(64) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `blessed_year` date NOT NULL,
  `marital_status` int(11) NOT NULL,
  `spiritual_birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `membership_category` int(11) NOT NULL,
  `country_id` varchar(64) NOT NULL,
  `family_id` bigint(20) DEFAULT NULL,
  `spiritual_parent_id` int(11) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `members_member_country_id_8384b760_fk_members_country_nation` (`country_id`),
  KEY `members_member_family_id_d7305582_fk_members_family_id` (`family_id`),
  KEY `members_member_spiritual_parent_id_a2148aed_fk_members_m` (`spiritual_parent_id`),
  KEY `members_member_spouse_id_aa71a074_fk_members_member_member_id` (`spouse_id`),
  CONSTRAINT `members_member_country_id_8384b760_fk_members_country_nation` FOREIGN KEY (`country_id`) REFERENCES `members_country` (`nation`),
  CONSTRAINT `members_member_family_id_d7305582_fk_members_family_id` FOREIGN KEY (`family_id`) REFERENCES `members_family` (`id`),
  CONSTRAINT `members_member_spiritual_parent_id_a2148aed_fk_members_m` FOREIGN KEY (`spiritual_parent_id`) REFERENCES `members_member` (`member_id`),
  CONSTRAINT `members_member_spouse_id_aa71a074_fk_members_member_member_id` FOREIGN KEY (`spouse_id`) REFERENCES `members_member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_member`
--

LOCK TABLES `members_member` WRITE;
/*!40000 ALTER TABLE `members_member` DISABLE KEYS */;
INSERT INTO `members_member` VALUES (1,'',1,'Test','Test','Test',1,'2016-10-11','1st Generation','IDK','email@mail.com','09123456789','2025-02-04',1,'2025-02-06','Address Street',1,'Philippines',NULL,NULL,NULL),(5,'',1,'Rafael Sebastian','de la Cruz','Torres',1,'2003-09-08','1st Generation','idk','rafael@email.com','09123456789','2009-04-23',1,'2022-05-11','123 Address Street',1,'Philippines',NULL,NULL,NULL);
/*!40000 ALTER TABLE `members_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_memberworship`
--

DROP TABLE IF EXISTS `members_memberworship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_memberworship` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `worship_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_member_worship` (`member_id`,`worship_id`),
  KEY `members_memberworshi_worship_id_d7ee3e35_fk_worship_w` (`worship_id`),
  CONSTRAINT `members_memberworshi_member_id_88eab76e_fk_members_m` FOREIGN KEY (`member_id`) REFERENCES `members_member` (`member_id`),
  CONSTRAINT `members_memberworshi_worship_id_d7ee3e35_fk_worship_w` FOREIGN KEY (`worship_id`) REFERENCES `worship_worship` (`worship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_memberworship`
--

LOCK TABLES `members_memberworship` WRITE;
/*!40000 ALTER TABLE `members_memberworship` DISABLE KEYS */;
INSERT INTO `members_memberworship` VALUES (1,1,1),(3,1,9);
/*!40000 ALTER TABLE `members_memberworship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_guest`
--

DROP TABLE IF EXISTS `worship_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_guest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `invited_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_guest_invited_by_id_43e06818_fk_members_member_member_id` (`invited_by_id`),
  CONSTRAINT `worship_guest_invited_by_id_43e06818_fk_members_member_member_id` FOREIGN KEY (`invited_by_id`) REFERENCES `members_member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_guest`
--

LOCK TABLES `worship_guest` WRITE;
/*!40000 ALTER TABLE `worship_guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `worship_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_guestworship`
--

DROP TABLE IF EXISTS `worship_guestworship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_guestworship` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guest_id_id` bigint(20) NOT NULL,
  `worship_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_guestworship_guest_id_id_4f466c58_fk_worship_guest_id` (`guest_id_id`),
  KEY `worship_guestworship_worship_id_id_f474d97a_fk_worship_w` (`worship_id_id`),
  CONSTRAINT `worship_guestworship_guest_id_id_4f466c58_fk_worship_guest_id` FOREIGN KEY (`guest_id_id`) REFERENCES `worship_guest` (`id`),
  CONSTRAINT `worship_guestworship_worship_id_id_f474d97a_fk_worship_w` FOREIGN KEY (`worship_id_id`) REFERENCES `worship_worship` (`worship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_guestworship`
--

LOCK TABLES `worship_guestworship` WRITE;
/*!40000 ALTER TABLE `worship_guestworship` DISABLE KEYS */;
/*!40000 ALTER TABLE `worship_guestworship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_worship`
--

DROP TABLE IF EXISTS `worship_worship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_worship` (
  `worship_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `worship_type` int(11) NOT NULL,
  `church_id` bigint(20) NOT NULL,
  PRIMARY KEY (`worship_id`),
  KEY `worship_worship_church_id_59ac3982_fk_members_church_id` (`church_id`),
  CONSTRAINT `worship_worship_church_id_59ac3982_fk_members_church_id` FOREIGN KEY (`church_id`) REFERENCES `members_church` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_worship`
--

LOCK TABLES `worship_worship` WRITE;
/*!40000 ALTER TABLE `worship_worship` DISABLE KEYS */;
INSERT INTO `worship_worship` VALUES (1,'sample','2025-03-03',1,1),(2,'Sample Event','2015-03-17',1,1),(3,'Test Event','2025-03-15',1,1),(4,'Testing','2015-03-15',1,1),(5,'Testing','2010-12-28',1,1),(6,'Cool Event','2008-11-02',1,1),(7,'asdf','2020-02-03',2,1),(8,'Main Event','2021-07-13',2,2),(9,'Event of the Decade','2021-04-23',1,2);
/*!40000 ALTER TABLE `worship_worship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 20:35:24
