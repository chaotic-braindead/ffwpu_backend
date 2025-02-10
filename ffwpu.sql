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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add currency',7,'add_currency'),(26,'Can change currency',7,'change_currency'),(27,'Can delete currency',7,'delete_currency'),(28,'Can view currency',7,'view_currency'),(29,'Can add country',8,'add_country'),(30,'Can change country',8,'change_country'),(31,'Can delete country',8,'delete_country'),(32,'Can view country',8,'view_country'),(33,'Can add church',9,'add_church'),(34,'Can change church',9,'change_church'),(35,'Can delete church',9,'delete_church'),(36,'Can view church',9,'view_church'),(37,'Can add family',10,'add_family'),(38,'Can change family',10,'change_family'),(39,'Can delete family',10,'delete_family'),(40,'Can view family',10,'view_family'),(41,'Can add member',11,'add_member'),(42,'Can change member',11,'change_member'),(43,'Can delete member',11,'delete_member'),(44,'Can view member',11,'view_member'),(45,'Can add blessing',12,'add_blessing'),(46,'Can change blessing',12,'change_blessing'),(47,'Can delete blessing',12,'delete_blessing'),(48,'Can view blessing',12,'view_blessing'),(49,'Can add blessing list',13,'add_blessinglist'),(50,'Can change blessing list',13,'change_blessinglist'),(51,'Can delete blessing list',13,'delete_blessinglist'),(52,'Can view blessing list',13,'view_blessinglist'),(53,'Can add donation',14,'add_donation'),(54,'Can change donation',14,'change_donation'),(55,'Can delete donation',14,'delete_donation'),(56,'Can view donation',14,'view_donation'),(57,'Can add Token',15,'add_token'),(58,'Can change Token',15,'change_token'),(59,'Can delete Token',15,'delete_token'),(60,'Can view Token',15,'view_token'),(61,'Can add Token',16,'add_tokenproxy'),(62,'Can change Token',16,'change_tokenproxy'),(63,'Can delete Token',16,'delete_tokenproxy'),(64,'Can view Token',16,'view_tokenproxy');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$bw3zbaum23n3ZH3KP18VHA$B60Yr7ixdwo2q1H+02EvuITGvtHrv/Tt3PKuj22f6rE=',NULL,1,'raffy','','','email@email.com',1,1,'2025-02-10 07:58:04.161222'),(2,'pbkdf2_sha256$870000$PzJEVjdW61oGLDFhNoijyA$gvIp0u0gfeZA1EfNxbWoVp4RVPJblt7qXTCjQKSA+ZA=',NULL,1,'admin','','','',1,1,'2025-02-10 08:10:52.821223');
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
INSERT INTO `authtoken_token` VALUES ('969f69d70b8ff2966b5388d26ee11529eaa16d84','2025-02-10 07:58:44.185703',1),('a6f3ef73280c4cab0d3a5b44803d5fd0a3c32da0','2025-02-10 08:11:29.553330',2);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessings_blessing`
--

DROP TABLE IF EXISTS `blessings_blessing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessings_blessing` (
  `blessing_date` date NOT NULL,
  `name_of_blessing` varchar(255) NOT NULL,
  PRIMARY KEY (`name_of_blessing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessings_blessing`
--

LOCK TABLES `blessings_blessing` WRITE;
/*!40000 ALTER TABLE `blessings_blessing` DISABLE KEYS */;
/*!40000 ALTER TABLE `blessings_blessing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blessings_blessinglist`
--

DROP TABLE IF EXISTS `blessings_blessinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blessings_blessinglist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blessing_id` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blessings_blessingli_blessing_id_f0a9710f_fk_blessings` (`blessing_id`),
  KEY `blessings_blessingli_member_id_c142287f_fk_members_m` (`member_id`),
  CONSTRAINT `blessings_blessingli_blessing_id_f0a9710f_fk_blessings` FOREIGN KEY (`blessing_id`) REFERENCES `blessings_blessing` (`name_of_blessing`),
  CONSTRAINT `blessings_blessingli_member_id_c142287f_fk_members_m` FOREIGN KEY (`member_id`) REFERENCES `members_member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessings_blessinglist`
--

LOCK TABLES `blessings_blessinglist` WRITE;
/*!40000 ALTER TABLE `blessings_blessinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blessings_blessinglist` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(15,'authtoken','token'),(16,'authtoken','tokenproxy'),(12,'blessings','blessing'),(13,'blessings','blessinglist'),(5,'contenttypes','contenttype'),(14,'donations','donation'),(9,'members','church'),(8,'members','country'),(7,'members','currency'),(10,'members','family'),(11,'members','member'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-10 06:53:47.341465'),(2,'auth','0001_initial','2025-02-10 06:53:47.623818'),(3,'admin','0001_initial','2025-02-10 06:53:47.691966'),(4,'admin','0002_logentry_remove_auto_add','2025-02-10 06:53:47.697077'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-10 06:53:47.704069'),(6,'contenttypes','0002_remove_content_type_name','2025-02-10 06:53:47.751603'),(7,'auth','0002_alter_permission_name_max_length','2025-02-10 06:53:47.777875'),(8,'auth','0003_alter_user_email_max_length','2025-02-10 06:53:47.796969'),(9,'auth','0004_alter_user_username_opts','2025-02-10 06:53:47.802977'),(10,'auth','0005_alter_user_last_login_null','2025-02-10 06:53:47.844075'),(11,'auth','0006_require_contenttypes_0002','2025-02-10 06:53:47.846077'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-10 06:53:47.850216'),(13,'auth','0008_alter_user_username_max_length','2025-02-10 06:53:47.870370'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-10 06:53:47.887499'),(15,'auth','0010_alter_group_name_max_length','2025-02-10 06:53:47.905656'),(16,'auth','0011_update_proxy_permissions','2025-02-10 06:53:47.913657'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-10 06:53:47.930589'),(18,'sessions','0001_initial','2025-02-10 06:53:47.957325'),(19,'members','0001_initial','2025-02-10 06:54:12.137183'),(20,'donations','0001_initial','2025-02-10 06:54:26.629167'),(21,'blessings','0001_initial','2025-02-10 06:54:29.913833'),(22,'authtoken','0001_initial','2025-02-10 07:45:27.876037'),(23,'authtoken','0002_auto_20160226_1747','2025-02-10 07:45:27.898081'),(24,'authtoken','0003_tokenproxy','2025-02-10 07:45:27.901208'),(25,'authtoken','0004_alter_tokenproxy_options','2025-02-10 07:45:27.904554');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations_donation`
--

LOCK TABLES `donations_donation` WRITE;
/*!40000 ALTER TABLE `donations_donation` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_church`
--

LOCK TABLES `members_church` WRITE;
/*!40000 ALTER TABLE `members_church` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_church` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_country`
--

DROP TABLE IF EXISTS `members_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_country` (
  `subregion` varchar(64) NOT NULL,
  `nation` varchar(64) NOT NULL,
  `currency_id` varchar(3) NOT NULL,
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
INSERT INTO `members_country` VALUES ('','Afghanistan','AFN'),('','Albania','ALL'),('','Algeria','DZD'),('','American Samoa','USD'),('','Andorra','EUR'),('','Angola','AOA'),('','Anguilla','XCD'),('','Antigua and Barbuda','XCD'),('','Argentina','ARS'),('','Armenia','AMD'),('','Aruba','AWG'),('','Australia','AUD'),('','Austria','EUR'),('','Azerbaijan','AZN'),('','Bahamas','BSD'),('','Bahrain','BHD'),('','Bangladesh','BDT'),('','Barbados','BBD'),('','Belarus','BYN'),('','Belgium','EUR'),('','Belize','BZD'),('','Benin','XOF'),('','Bermuda','BMD'),('','Bhutan','BTN'),('','Bolivia','BOB'),('','Bosnia and Herzegovina','BAM'),('','Botswana','BWP'),('','Bouvet Island','NOK'),('','Brazil','BRL'),('','British Indian Ocean Territory','USD'),('','Brunei Darussalam','BND'),('','Bulgaria','BGN'),('','Burkina Faso','XOF'),('','Burundi','BIF'),('','Cambodia','KHR'),('','Cameroon','XAF'),('','Canada','CAD'),('','Cape Verde','CVE'),('','Cayman Islands','KYD'),('','Central African Republic','XAF'),('','Chad','XAF'),('','Chile','CLP'),('','China','CNY'),('','Christmas Island','AUD'),('','Cocos (Keeling) Islands','AUD'),('','Colombia','COP'),('','Comoros','KMF'),('','Cook Islands','NZD'),('','Costa Rica','CRC'),('','Croatia (Hrvatska)','HRK'),('','Cuba','CUP'),('','Cyprus','EUR'),('','Czech Republic','CZK'),('','Democratic Republic of the Congo','CDF'),('','Denmark','DKK'),('','Djibouti','DJF'),('','Dominica','XCD'),('','Dominican Republic','DOP'),('','East Timor','USD'),('','Ecuador','USD'),('','Egypt','EGP'),('','El Salvador','USD'),('','Equatorial Guinea','XAF'),('','Eritrea','ERN'),('','Estonia','EUR'),('','Eswatini','SZL'),('','Ethiopia','ETB'),('','Falkland Islands (Malvinas)','FKP'),('','Faroe Islands','DKK'),('','Fiji','FJD'),('','Finland','EUR'),('','France','EUR'),('','French Guiana','EUR'),('','French Polynesia','XPF'),('','French Southern Territories','EUR'),('','Gabon','XAF'),('','Gambia','GMD'),('','Georgia','GEL'),('','Germany','EUR'),('','Ghana','GHS'),('','Gibraltar','GIP'),('','Greece','EUR'),('','Greenland','DKK'),('','Grenada','XCD'),('','Guadeloupe','EUR'),('','Guam','USD'),('','Guatemala','GTQ'),('','Guinea','GNF'),('','Guinea-Bissau','XOF'),('','Guyana','GYD'),('','Haiti','HTG'),('','Honduras','HNL'),('','Hong Kong','HKD'),('','Hungary','HUF'),('','Iceland','ISK'),('','India','INR'),('','Indonesia','IDR'),('','Iran (Islamic Republic of)','IRR'),('','Iraq','IQD'),('','Ireland','EUR'),('','Isle of Man','GBP'),('','Israel','ILS'),('','Italy','EUR'),('','Ivory Coast','XOF'),('','Jamaica','JMD'),('','Japan','JPY'),('','Jersey','GBP'),('','Jordan','JOD'),('','Kazakhstan','KZT'),('','Kenya','KES'),('','Kiribati','AUD'),('','Korea, Democratic People\'s Republic of','KPW'),('','Korea, Republic of','KRW'),('','Kuwait','KWD'),('','Kyrgyzstan','KGS'),('','Lao People\'s Democratic Republic','LAK'),('','Latvia','EUR'),('','Lebanon','LBP'),('','Lesotho','LSL'),('','Liberia','LRD'),('','Libya','LYD'),('','Liechtenstein','CHF'),('','Lithuania','EUR'),('','Luxembourg','EUR'),('','Macau','MOP'),('','Madagascar','MGA'),('','Malawi','MWK'),('','Malaysia','MYR'),('','Maldives','MVR'),('','Mali','XOF'),('','Malta','EUR'),('','Marshall Islands','USD'),('','Martinique','EUR'),('','Mauritania','MRO'),('','Mauritius','MUR'),('','Mayotte','EUR'),('','Mexico','MXN'),('','Micronesia, Federated States of','USD'),('','Moldova, Republic of','MDL'),('','Mongolia','MNT'),('','Montenegro','EUR'),('','Montserrat','XCD'),('','Morocco','MAD'),('','Mozambique','MZN'),('','Myanmar','MMK'),('','Namibia','NAD'),('','Nauru','AUD'),('','Nepal','NPR'),('','Netherlands','EUR'),('','New Caledonia','XPF'),('','New Zealand','NZD'),('','Nicaragua','NIO'),('','Niger','XOF'),('','Nigeria','NGN'),('','Niue','NZD'),('','North Macedonia','MKD'),('','Northern Mariana Islands','USD'),('','Norway','NOK'),('','Oman','OMR'),('','Pakistan','PKR'),('','Palau','USD'),('','Panama','PAB'),('','Papua New Guinea','PGK'),('','Paraguay','PYG'),('','Peru','PEN'),('','Philippines','PHP'),('','Pitcairn','NZD'),('','Poland','PLN'),('','Portugal','EUR'),('','Puerto Rico','USD'),('','Qatar','QAR'),('','Republic of Congo','XAF'),('','Reunion','EUR'),('','Romania','RON'),('','Russian Federation','RUB'),('','Rwanda','RWF'),('','Saint Kitts and Nevis','XCD'),('','Saint Lucia','XCD'),('','Saint Vincent and the Grenadines','XCD'),('','Samoa','WST'),('','Sao Tome and Principe','STD'),('','Saudi Arabia','SAR'),('','Senegal','XOF'),('','Serbia','RSD'),('','Seychelles','SCR'),('','Sierra Leone','SLL'),('','Singapore','SGD'),('','Slovakia','EUR'),('','Slovenia','EUR'),('','Solomon Islands','SBD'),('','Somalia','SOS'),('','South Africa','ZAR'),('','South Sudan','SSP'),('','Spain','EUR'),('','Sri Lanka','LKR'),('','St. Helena','SHP'),('','St. Pierre and Miquelon','EUR'),('','Sudan','SDG'),('','Suriname','SRD'),('','Svalbard and Jan Mayen Islands','NOK'),('','Sweden','SEK'),('','Switzerland','CHF'),('','Syrian Arab Republic','SYP'),('','Taiwan','TWD'),('','Tajikistan','TJS'),('','Tanzania, United Republic of','TZS'),('','Thailand','THB'),('','Togo','XOF'),('','Tokelau','NZD'),('','Tonga','TOP'),('','Trinidad and Tobago','TTD'),('','Tunisia','TND'),('','Turkey','TRY'),('','Turkmenistan','TMT'),('','Turks and Caicos Islands','USD'),('','Tuvalu','AUD'),('','Uganda','UGX'),('','Ukraine','UAH'),('','United Arab Emirates','AED'),('','United Kingdom','GBP'),('','United States of America','USD'),('','Uruguay','UYU'),('','Uzbekistan','UZS'),('','Vanuatu','VUV'),('','Venezuela','VEF'),('','Vietnam','VND'),('','Virgin Islands (U.S.)','USD'),('','Wallis and Futuna Islands','XPF'),('','Western Sahara','MAD'),('','Yemen','YER'),('','Zambia','ZMW'),('','Zimbabwe','ZWL');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_family`
--

LOCK TABLES `members_family` WRITE;
/*!40000 ALTER TABLE `members_family` DISABLE KEYS */;
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
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_member`
--

LOCK TABLES `members_member` WRITE;
/*!40000 ALTER TABLE `members_member` DISABLE KEYS */;
INSERT INTO `members_member` VALUES (1,'',1,'Rafael Sebastian','','Torres',1,'2003-09-08','email@email.com','09123456789',1,'2025-01-27','Pandacan, Manila',2,'Philippines',NULL,NULL,NULL);
/*!40000 ALTER TABLE `members_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 17:36:20
