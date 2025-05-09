-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: ffwpu_db3
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessing_blessing`
--

LOCK TABLES `blessing_blessing` WRITE;
/*!40000 ALTER TABLE `blessing_blessing` DISABLE KEYS */;
INSERT INTO `blessing_blessing` VALUES (1,'John Park','2024-04-01','Vertical'),(2,'Maria Gonzalez','2022-04-02','Horizontal'),(3,'David Kim','2025-04-03','Vertical'),(4,'Aiko Tanaka','2023-04-04','Horizontal'),(5,'Isaac Lee','2024-04-05','Vertical'),(6,'Sofia Ramos','2024-04-06','Horizontal'),(7,'Daniel Choi','2025-04-07','Vertical'),(8,'Liam Smith','2021-04-08','Horizontal'),(9,'Minji Seo','2020-04-09','Vertical'),(10,'James Liu','2022-04-10','Horizontal'),(11,'Emily Wang','2022-04-11','Vertical'),(12,'Henry Nguyen','2025-04-12','Horizontal'),(13,'Angela Park','2025-04-13','Vertical'),(14,'Joshua Kim','2025-04-14','Horizontal'),(15,'Grace Lee','2021-04-15','Vertical'),(16,'Ethan Lim','2024-04-16','Horizontal'),(17,'Chloe Yang','2024-04-17','Vertical'),(18,'Ryan Chen','2022-04-18','Horizontal'),(19,'Hana Yoon','2021-04-19','Vertical'),(20,'Lucas Tran','2020-04-20','Horizontal'),(21,'Isabella Martinez','2020-04-21','Vertical'),(22,'Sebastian Cruz','2020-04-22','Horizontal'),(23,'Olivia Jung','2021-04-23','Vertical'),(24,'Benjamin Cho','2021-04-24','Horizontal'),(25,'Jessica Kim','2025-04-25','Vertical'),(26,'Kevin Lee','2025-04-26','Horizontal'),(27,'Natalie Park','2025-04-27','Vertical'),(28,'Mason Lim','2022-04-28','Horizontal'),(29,'Ella Choi','2023-04-29','Vertical'),(30,'Noah Hong','2025-04-30','Horizontal'),(31,'Ava Moon','2024-05-01','Vertical'),(32,'Jayden Kim','2025-05-02','Horizontal'),(33,'Luna Han','2023-05-03','Vertical'),(34,'Christopher Seo','2025-05-04','Horizontal'),(35,'Aria Lee','2025-05-05','Vertical'),(36,'Logan Park','2021-05-06','Horizontal'),(37,'Mia Zhang','2022-05-07','Vertical'),(38,'Nathan Kim','2023-05-08','Horizontal'),(39,'Zoe Shin','2024-05-09','Vertical'),(40,'Jacob Wang','2020-05-10','Horizontal'),(41,'Layla Kim','2020-05-11','Vertical'),(42,'Lucas Oh','2025-05-12','Horizontal'),(43,'Emily Song','2021-05-13','Vertical'),(44,'Dylan Lee','2022-05-14','Horizontal'),(45,'Isla Park','2023-05-15','Vertical'),(46,'Matthew Jeong','2025-05-16','Horizontal'),(47,'Sophie Hwang','2025-05-17','Vertical'),(48,'Leo Kim','2021-05-18','Horizontal'),(49,'Victoria Bae','2025-05-19','Vertical'),(50,'Eunwoo Nam','2009-05-20','Horizontal');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blessing_blessingrecipient`
--

LOCK TABLES `blessing_blessingrecipient` WRITE;
/*!40000 ALTER TABLE `blessing_blessingrecipient` DISABLE KEYS */;
INSERT INTO `blessing_blessingrecipient` VALUES (1,'Guest','Juan Dela Cruz','juan.delacruz@example.com',1,1,1),(2,'Member','Maria Santos','maria.santos@example.com',2,2,2),(3,'Guest','Josefina Reyes','josefina.reyes@example.com',3,3,3),(4,'Member','Carlos Mercado','carlos.mercado@example.com',4,4,4),(5,'Guest','Isabella Garcia','isabella.garcia@example.com',5,5,5),(6,'Member','Andres Cruz','andres.cruz@example.com',1,6,6),(7,'Guest','Luna Garcia','luna.garcia@example.com',2,7,7),(8,'Member','Ricardo Hernandez','ricardo.hernandez@example.com',3,8,8),(9,'Guest','Antonio Rivera','antonio.rivera@example.com',4,9,9),(10,'Member','Samantha Lopez','samantha.lopez@example.com',5,10,10),(11,'Guest','Juanita Aquino','juanita.aquino@example.com',1,11,11),(12,'Member','Felix Ramos','felix.ramos@example.com',2,12,12),(13,'Guest','Angelica Mendoza','angelica.mendoza@example.com',3,13,13),(14,'Member','Mario Alonzo','mario.alonzo@example.com',4,14,14),(15,'Guest','Paula Tan','paula.tan@example.com',5,15,15),(16,'Member','Gerardo Salazar','gerardo.salazar@example.com',1,16,16),(17,'Guest','Belen Castillo','belen.castillo@example.com',2,17,17),(18,'Member','Nestor Dizon','nestor.dizon@example.com',3,18,18),(19,'Guest','Olivia De Leon','olivia.deleon@example.com',4,19,19),(20,'Member','Carlos Bautista','carlos.bautista@example.com',5,20,20),(21,'Guest','Tomas Mendoza','tomas.mendoza@example.com',1,21,21),(22,'Member','Rafael Cruz','rafael.cruz@example.com',2,22,22),(23,'Guest','Liza Torres','liza.torres@example.com',3,23,23),(24,'Member','Esteban Reyes','esteban.reyes@example.com',4,24,24),(25,'Guest','Vivian Rojas','vivian.rojas@example.com',5,25,25),(26,'Member','Benedicto Gonzales','benedicto.gonzales@example.com',1,26,26),(27,'Guest','Veronica Aquino','veronica.aquino@example.com',2,27,27),(28,'Member','Alfredo Lopez','alfredo.lopez@example.com',3,28,28),(29,'Guest','Gabrielle Fernandez','gabrielle.fernandez@example.com',4,29,29),(30,'Member','Marcos Cruz','marcos.cruz@example.com',5,30,30),(31,'Guest','Lucia De La Cruz','lucia.delacruz@example.com',1,31,31),(32,'Member','Edgar Santos','edgar.santos@example.com',2,32,32),(33,'Guest','Yasmin Garcia','yasmin.garcia@example.com',3,33,33),(34,'Member','Enrico Bautista','enrico.bautista@example.com',4,34,34),(35,'Guest','Alma Aquino','alma.aquino@example.com',5,35,35),(36,'Member','Herman Castillo','herman.castillo@example.com',1,36,36),(37,'Guest','Clara Morales','clara.morales@example.com',2,37,37),(38,'Member','Oscar Navarro','oscar.navarro@example.com',3,38,38),(39,'Guest','Nicole Santos','nicole.santos@example.com',4,39,39),(40,'Member','Daniel Hernandez','daniel.hernandez@example.com',5,40,40),(41,'Guest','Salvador Martinez','salvador.martinez@example.com',1,41,41),(42,'Member','Michele Alvero','michele.alvero@example.com',2,42,42),(43,'Guest','Ricarda Santos','ricarda.santos@example.com',3,43,43),(44,'Member','Gabriel Reyes','gabriel.reyes@example.com',4,44,44),(45,'Guest','Edwin Flores','edwin.flores@example.com',5,45,45),(46,'Member','Trinidad Lopez','trinidad.lopez@example.com',1,46,46),(47,'Guest','Joaquin Dela Cruz','joaquin.delacruz@example.com',2,47,47),(48,'Member','Fermin Alonzo','fermin.alonzo@example.com',3,48,48),(49,'Guest','Amparo Navarro','amparo.navarro@example.com',4,49,49),(50,'Member','Manuel De Leon','manuel.deleon@example.com',5,50,50),(51,'Guest','Teresa Mercado','teresa.mercado@example.com',1,51,51),(52,'Member','Raul Reyes','raul.reyes@example.com',2,52,52),(53,'Guest','Bianca Ramos','bianca.ramos@example.com',3,53,53),(54,'Member','Irene Santos','irene.santos@example.com',4,54,54),(55,'Guest','Cesar Ramos','cesar.ramos@example.com',5,55,55),(56,'Member','Herminia Lopez','herminia.lopez@example.com',1,56,56),(57,'Guest','Lydia Garcia','lydia.garcia@example.com',2,57,57),(58,'Member','Vicente Cruz','vicente.cruz@example.com',3,58,58),(59,'Guest','Rodrigo Tan','rodrigo.tan@example.com',4,59,59),(60,'Member','Martha Aquino','martha.aquino@example.com',5,60,60),(61,'Guest','Emilio Mercado','emilio.mercado@example.com',1,61,61),(62,'Member','Jovita Lopez','jovita.lopez@example.com',2,62,62),(63,'Guest','Oscar Fernandez','oscar.fernandez@example.com',3,63,63),(64,'Member','Raquel Reyes','raquel.reyes@example.com',4,64,64),(65,'Guest','Jovelyn De La Cruz','jovelyn.delacruz@example.com',5,65,65),(66,'Member','Nena Bautista','nena.bautista@example.com',1,66,66),(67,'Guest','Agnes Dizon','agnes.dizon@example.com',2,67,67),(68,'Member','Lilia Rojas','lilia.rojas@example.com',3,68,68),(69,'Guest','Sofia Alvero','sofia.alvero@example.com',4,69,69),(70,'Member','Yolanda Martinez','yolanda.martinez@example.com',5,70,70),(71,'Guest','Edgardo Cruz','edgardo.cruz@example.com',1,71,71),(72,'Member','Victoria Navarro','victoria.navarro@example.com',2,72,72),(73,'Guest','Benjamin Dela Cruz','benjamin.delacruz@example.com',3,73,73),(74,'Member','Cristina Tan','cristina.tan@example.com',4,74,74),(75,'Guest','Marina Lopez','marina.lopez@example.com',5,75,75),(76,'Member','Lourdes Aquino','lourdes.aquino@example.com',1,76,76),(77,'Guest','Feliciana Tan','feliciana.tan@example.com',2,77,77),(78,'Member','Manuela Mercado','manuela.mercado@example.com',3,78,78),(79,'Guest','Lilia Santos','lilia.santos@example.com',4,79,79),(80,'Member','Benita Fernandez','benita.fernandez@example.com',5,80,80),(81,'Member','Victoria Morales','victoria.morales@example.com',1,81,81),(82,'Guest','Felisa Reyes','felisa.reyes@example.com',2,82,82),(83,'Member','Joaquim Rivera','joaquim.rivera@example.com',3,83,83),(84,'Guest','Adela Lopez','adela.lopez@example.com',4,84,84),(85,'Member','Eduardo Aquino','eduardo.aquino@example.com',5,85,85),(86,'Guest','Magdalena Tan','magdalena.tan@example.com',1,86,86),(87,'Member','Ramon Bautista','ramon.bautista@example.com',2,87,87),(88,'Guest','Serafin De Leon','serafin.deleon@example.com',3,88,88),(89,'Member','Rochelle Gonzales','rochelle.gonzales@example.com',4,89,89),(90,'Guest','Arnold Tan','arnold.tan@example.com',5,90,90),(91,'Member','Rolando Rojas','rolando.rojas@example.com',1,91,91),(92,'Guest','Martina Cruz','martina.cruz@example.com',2,92,92),(93,'Member','Pablo Reyes','pablo.reyes@example.com',3,93,93),(94,'Guest','Rosario Aquino','rosario.aquino@example.com',4,94,94),(95,'Member','Daniela Tan','daniela.tan@example.com',5,95,95),(96,'Guest','Alicia Mercado','alicia.mercado@example.com',1,96,96),(97,'Member','Javier Dela Cruz','javier.delacruz@example.com',2,97,97),(98,'Guest','Gertrude Santos','gertrude.santos@example.com',3,98,98),(99,'Member','Omar Lopez','omar.lopez@example.com',4,99,99),(100,'Guest','Jacinta Tan','jacinta.tan@example.com',5,100,100);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church_church`
--

LOCK TABLES `church_church` WRITE;
/*!40000 ALTER TABLE `church_church` DISABLE KEYS */;
INSERT INTO `church_church` VALUES (1,'St. Peter’s Church','Canada',3,27),(2,'Grace Community Church','South Africa',4,34),(3,'Sacred Heart Parish','India',2,8),(4,'New Hope Church','Australia',5,56),(5,'Christ the King Chapel','Germany',1,18),(6,'Shalom Baptist Church','Japan',2,2),(7,'Holy Trinity Anglican','UK',1,18),(8,'Victory Christian Fellowship','Philippines',2,4),(9,'Jesus Is Lord Church','India',2,8),(10,'Lutheran Mission Church','Germany',1,18),(11,'The Rock Church','Philippines',2,4),(12,'Igreja Vida Nova','Brazil',4,50),(13,'St. Andrew’s Cathedral','Germany',1,18),(14,'Zion Pentecostal Church','India',2,8),(15,'Westminster Chapel','UK',1,18),(16,'Tokyo Gospel Church','Japan',2,2),(17,'East Coast Bible Church','USA',3,23),(18,'St. Mary’s Church','UK',1,18),(19,'Yokohama Grace Church','Japan',2,2),(20,'Word of Life Church','Philippines',2,4),(21,'Assembléia de Deus','Brazil',4,50),(22,'Hillsong Sydney','Australia',5,56),(23,'Bethlehem Revival Church','South Africa',4,34),(24,'Maple Leaf Church','Canada',3,27),(25,'Agape Fellowship','India',2,8),(26,'Faith Bible Church','USA',3,23),(27,'Destiny Church Manila','Philippines',2,4),(28,'St. Paul’s Lutheran','Germany',1,18),(29,'Osaka Vineyard Church','Japan',2,2),(30,'King’s Church London','UK',1,18),(31,'Cape Town Grace Church','South Africa',4,34),(32,'Igreja Batista Central','Brazil',4,50),(33,'Toronto Life Church','Canada',3,27),(34,'Calvary Fellowship Mumbai','India',2,8),(35,'Faith City Church','Australia',5,56),(36,'Cornerstone Church LA','USA',3,24),(37,'G12 Worship Center','Philippines',2,4),(38,'Sapporo Praise Church','Japan',2,2),(39,'Hope Church UK','UK',1,18),(40,'St. John’s Evangelical','Germany',1,18),(41,'Johannesburg Gospel Centre','South Africa',4,34),(42,'North Shore Church','Canada',3,27),(43,'Redeemer Church Delhi','India',2,8),(44,'Igreja da Graça','Brazil',4,50),(45,'Christ Commission Fellowship','Philippines',2,4),(46,'Elevation Church Melbourne','Australia',5,56),(47,'Southridge Church Texas','USA',3,26),(48,'St. Mark’s Church','UK',1,18),(49,'Sendai Bible Church','Japan',2,2),(50,'Berlin Christian Church','Germany',1,18);
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
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_donation`
--

LOCK TABLES `donation_donation` WRITE;
/*!40000 ALTER TABLE `donation_donation` DISABLE KEYS */;
INSERT INTO `donation_donation` VALUES (1,'2022-04-23',6000.00,'PHP',3,100),(2,'2022-04-24',500.00,'KRW',3,1),(3,'2025-02-20',1200.50,'EUR',3,2),(4,'1993-08-22',800.00,'USD',3,3),(5,'2022-04-27',1500.75,'PHP',3,4),(6,'2022-04-28',300.00,'USD',3,5),(7,'2022-04-29',650.00,'PHP',3,6),(8,'2022-04-30',1000.00,'EUR',3,7),(9,'2023-05-01',1100.00,'PHP',3,8),(10,'2023-05-02',200.00,'USD',3,9),(11,'2023-05-03',950.50,'PHP',3,10),(12,'2023-05-04',200.00,'EUR',3,11),(13,'2023-05-05',1200.00,'PHP',3,12),(14,'2023-05-06',700.00,'USD',3,13),(15,'2023-05-07',900.50,'PHP',3,14),(16,'2023-05-08',1300.00,'USD',3,15),(17,'2023-05-09',200.00,'PHP',3,16),(18,'2023-05-10',1000.00,'CNY',3,17),(19,'2023-05-11',1500.00,'CNY',3,18),(20,'2023-05-12',850.00,'CNY',3,19),(21,'2023-05-13',1100.00,'EUR',3,20),(22,'2023-05-14',900.00,'USD',3,21),(23,'2023-05-15',1600.00,'PHP',3,22),(24,'2023-05-16',1300.00,'CNY',3,23),(25,'1993-08-22',750.00,'PHP',3,24),(26,'1990-09-20',950.00,'USD',3,25),(27,'2016-11-05',1200.00,'PHP',3,26),(28,'2023-05-20',200.00,'JPY',3,27),(29,'2023-05-21',800.00,'PHP',3,28),(30,'2023-05-22',1000.00,'USD',3,29),(31,'2023-05-23',1300.50,'EUR',3,30),(32,'2023-05-24',950.00,'KRW',3,31),(33,'2023-05-25',1100.00,'PHP',3,32),(34,'2023-05-26',600.00,'USD',3,33),(35,'2023-05-27',500.00,'PHP',3,34),(36,'2023-05-28',850.00,'KRW',3,35),(37,'2023-05-29',950.50,'PHP',3,36),(38,'2023-05-30',1200.00,'USD',3,37),(39,'2023-05-31',600.00,'PHP',3,38),(40,'2024-06-01',800.00,'JPY',3,39),(41,'2024-06-02',1500.50,'PHP',3,40),(42,'2024-06-03',200.00,'EUR',3,41),(43,'2025-04-02',1000.00,'PHP',3,42),(44,'2024-06-05',500.00,'USD',3,43),(45,'2024-06-06',750.00,'PHP',3,44),(46,'2024-06-07',1100.00,'EUR',3,45),(47,'2024-06-08',1300.00,'PHP',3,46),(48,'2024-06-09',850.00,'USD',3,47),(49,'2025-04-15',1200.00,'PHP',3,48),(50,'2024-06-11',600.00,'EUR',3,49),(51,'2024-06-12',700.00,'PHP',3,50),(52,'2024-06-13',900.50,'USD',3,51),(53,'2024-06-14',1200.00,'JPY',3,52),(54,'2024-06-15',1500.00,'USD',3,53),(55,'2024-06-16',750.00,'PHP',3,54),(56,'2024-06-17',950.00,'USD',3,55),(57,'2024-06-18',800.00,'PHP',3,56),(58,'2024-06-19',1100.00,'USD',3,57),(59,'2024-06-20',1200.00,'PHP',3,58),(60,'2024-06-21',1500.00,'USD',3,59),(61,'2024-06-22',1000.00,'PHP',3,60),(62,'2024-06-23',750.00,'JPY',3,61),(63,'2013-04-13',600.00,'PHP',3,62),(64,'2024-06-25',850.00,'USD',3,63),(65,'2024-06-26',1300.00,'PHP',3,64),(66,'2024-06-27',1100.00,'JPY',3,65),(67,'2024-06-28',1500.50,'PHP',3,66),(68,'2024-06-29',950.00,'USD',3,67),(69,'2024-06-30',200.00,'PHP',3,68),(70,'2025-04-01',1000.00,'USD',3,69),(71,'2025-04-02',750.00,'PHP',3,70),(72,'2025-04-03',950.00,'USD',3,71),(73,'2025-04-04',1200.00,'PHP',3,72),(74,'2025-04-05',850.00,'USD',3,73),(75,'2025-04-06',1100.00,'PHP',3,74),(76,'2025-04-07',900.00,'USD',3,75),(77,'2025-04-08',1500.00,'PHP',3,76),(78,'2025-04-09',600.00,'USD',3,77),(79,'2018-05-11',1100.00,'PHP',3,78),(80,'2025-04-11',1200.00,'USD',3,79),(81,'2025-04-12',750.00,'PHP',3,80),(82,'2025-04-13',950.00,'USD',3,81),(83,'2025-04-14',1200.00,'CNY',3,82),(84,'2025-04-15',1000.00,'CNY',3,83),(85,'2025-04-16',600.00,'PHP',3,84),(86,'2025-04-17',700.00,'JPY',3,85),(87,'2025-04-18',1300.00,'PHP',3,86),(88,'2018-01-12',950.00,'USD',3,87),(89,'2025-04-20',800.00,'PHP',3,88),(90,'2025-04-21',1300.00,'USD',3,89),(91,'2025-04-22',1000.00,'PHP',3,90),(92,'2025-04-23',1500.50,'USD',3,91),(93,'2025-04-24',1200.00,'PHP',3,92),(94,'2025-04-25',1100.00,'EUR',3,93),(95,'2025-04-26',950.00,'PHP',3,94),(96,'2025-04-27',750.00,'USD',3,95),(97,'2025-04-28',1300.00,'PHP',3,96),(98,'2025-04-29',200.00,'KRW',3,97),(99,'2025-04-30',1100.00,'PHP',3,98),(100,'2018-10-15',850.00,'EUR',3,99);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_member`
--

LOCK TABLES `member_member` WRITE;
/*!40000 ALTER TABLE `member_member` DISABLE KEYS */;
INSERT INTO `member_member` VALUES (1,'Rafael','A.','Torres','Male','1990-01-01','Philippines','Single',NULL,'09100000001','john1@email.com','Address 1',NULL,'1st Generation','Not Blessed','2010-01-01','Parent 1','Regular',2,1),(2,'Paolo','B.','Dionisio','Male','1991-02-02','Korea','Single',NULL,'09100000002','mary2@email.com','Address 2',NULL,'1st Generation','Blessed','2010-02-02','Parent 2','Associate',2,1),(3,'James','C.','Fanio','Male','1992-03-03','USA','Single',NULL,'09100000003','james3@email.com','Address 3',NULL,'1st Generation','Not Blessed','2010-03-03','Parent 3','Regular',2,1),(4,'Irish','D.','Gorme','Female','1993-04-04','Japan','Single',NULL,'09100000004','patricia4@email.com','Address 4',NULL,'1st Generation','Blessed','2010-04-04','Parent 4','Registered',2,1),(5,'Venus','E.','Sanchez','Female','1994-05-05','China','Single',NULL,'09100000005','robert5@email.com','Address 5',NULL,'1st Generation','Not Blessed','2010-05-05','Parent 5','Inactive',2,1),(6,'Elocin','F.','Princess','Female','1995-06-06','Philippines','Single',NULL,'09100000006','linda6@email.com','Address 6',NULL,'1st Generation','Blessed','2010-06-06','Parent 6','Regular',2,2),(7,'Alexis','G.','Tolin','Male','1996-07-07','Korea','Single',NULL,'09100000007','michael7@email.com','Address 7',NULL,'1st Generation','Not Blessed','2010-07-07','Parent 7','Associate',2,2),(8,'Barbara','H.','Davis','Female','1997-08-08','USA','Single',NULL,'09100000008','barbara8@email.com','Address 8',NULL,'1st Generation','Blessed','2010-08-08','Parent 8','Regular',2,2),(9,'William','I.','Rodriguez','Male','1998-09-09','Japan','Single',NULL,'09100000009','william9@email.com','Address 9',NULL,'1st Generation','Not Blessed','2010-09-09','Parent 9','Registered',2,2),(10,'Elizabeth','J.','Martinez','Female','1999-10-10','China','Single',NULL,'09100000010','elizabeth10@email.com','Address 10',NULL,'1st Generation','Blessed','2010-10-10','Parent 10','Inactive',2,2),(11,'David','K.','Hernandez','Male','1990-01-11','Philippines','Single',NULL,'09100000011','david11@email.com','Address 11',NULL,'1st Generation','Not Blessed','2010-01-11','Parent 11','Regular',3,1),(12,'Jennifer','L.','Lopez','Female','1991-02-12','Korea','Single',NULL,'09100000012','jennifer12@email.com','Address 12',NULL,'1st Generation','Blessed','2010-02-12','Parent 12','Associate',3,1),(13,'Richard','M.','Gonzales','Male','1992-03-13','USA','Single',NULL,'09100000013','richard13@email.com','Address 13',NULL,'1st Generation','Not Blessed','2010-03-13','Parent 13','Regular',3,1),(14,'Susan','N.','Wilson','Female','1993-04-14','Japan','Single',NULL,'09100000014','susan14@email.com','Address 14',NULL,'1st Generation','Blessed','2010-04-14','Parent 14','Registered',3,1),(15,'Joseph','O.','Anderson','Male','1994-05-15','China','Single',NULL,'09100000015','joseph15@email.com','Address 15',NULL,'1st Generation','Not Blessed','2010-05-15','Parent 15','Inactive',3,1),(16,'Karen','P.','Thomas','Female','1995-06-16','Philippines','Single',NULL,'09100000016','karen16@email.com','Address 16',NULL,'2nd Generation','Blessed','2010-06-16','Parent 16','Regular',3,2),(17,'Charles','Q.','Taylor','Male','1996-07-17','Korea','Single',NULL,'09100000017','charles17@email.com','Address 17',NULL,'2nd Generation','Not Blessed','2010-07-17','Parent 17','Associate',3,2),(18,'Lisa','R.','Moore','Female','1997-08-18','USA','Single',NULL,'09100000018','lisa18@email.com','Address 18',NULL,'2nd Generation','Blessed','2010-08-18','Parent 18','Regular',3,2),(19,'Thomas','S.','Jackson','Male','1998-09-19','Japan','Single',NULL,'09100000019','thomas19@email.com','Address 19',NULL,'2nd Generation','Not Blessed','2010-09-19','Parent 19','Registered',3,2),(20,'Sarah','T.','Martin','Female','1999-10-20','China','Single',NULL,'09100000020','sarah20@email.com','Address 20',NULL,'2nd Generation','Blessed','2010-10-20','Parent 20','Inactive',3,2),(21,'Brian','U.','White','Male','1990-01-21','Philippines','Single',NULL,'09100000021','brian21@email.com','Address 21',NULL,'2nd Generation','Not Blessed','2010-01-21','Parent 21','Regular',4,1),(22,'Angela','V.','Harris','Female','1991-02-22','Korea','Single',NULL,'09100000022','angela22@email.com','Address 22',NULL,'2nd Generation','Blessed','2010-02-22','Parent 22','Associate',4,1),(23,'Kevin','W.','Clark','Male','1992-03-23','USA','Single',NULL,'09100000023','kevin23@email.com','Address 23',NULL,'2nd Generation','Not Blessed','2010-03-23','Parent 23','Regular',4,1),(24,'Nancy','X.','Lewis','Female','1993-04-24','Japan','Single',NULL,'09100000024','nancy24@email.com','Address 24',NULL,'2nd Generation','Blessed','2010-04-24','Parent 24','Registered',4,1),(25,'Edward','Y.','Robinson','Male','1994-05-25','China','Single',NULL,'09100000025','edward25@email.com','Address 25',NULL,'2nd Generation','Not Blessed','2010-05-25','Parent 25','Inactive',4,1),(26,'Sandra','Z.','Walker','Female','1995-06-26','Philippines','Single',NULL,'09100000026','sandra26@email.com','Address 26',NULL,'2nd Generation','Blessed','2010-06-26','Parent 26','Regular',4,2),(27,'George','AA.','Young','Male','1996-07-27','Korea','Single',NULL,'09100000027','george27@email.com','Address 27',NULL,'2nd Generation','Not Blessed','2010-07-27','Parent 27','Associate',4,2),(28,'Donna','BB.','Allen','Female','1997-08-28','USA','Single',NULL,'09100000028','donna28@email.com','Address 28',NULL,'2nd Generation','Blessed','2010-08-28','Parent 28','Regular',4,2),(29,'Paul','CC.','King','Male','1998-09-29','Japan','Single',NULL,'09100000029','paul29@email.com','Address 29',NULL,'2nd Generation','Not Blessed','2010-09-29','Parent 29','Registered',4,2),(30,'Carol','DD.','Wright','Female','1999-10-30','China','Single',NULL,'09100000030','carol30@email.com','Address 30',NULL,'2nd Generation','Blessed','2010-10-30','Parent 30','Inactive',4,2),(31,'Mark','EE.','Scott','Male','1990-01-31','Philippines','Single',NULL,'09100000031','mark31@email.com','Address 31',NULL,'3rd Generation','Not Blessed','2010-01-31','Parent 31','Regular',5,1),(32,'Michelle','FF.','Green','Female','1991-02-01','Korea','Single',NULL,'09100000032','michelle32@email.com','Address 32',NULL,'3rd Generation','Blessed','2010-02-01','Parent 32','Associate',5,1),(33,'Steven','GG.','Baker','Male','1992-03-02','USA','Single',NULL,'09100000033','steven33@email.com','Address 33',NULL,'3rd Generation','Not Blessed','2010-03-02','Parent 33','Regular',5,1),(34,'Emily','HH.','Adams','Female','1993-04-03','Japan','Single',NULL,'09100000034','emily34@email.com','Address 34',NULL,'3rd Generation','Blessed','2010-04-03','Parent 34','Registered',5,1),(35,'Kenneth','II.','Nelson','Male','1994-05-04','China','Single',NULL,'09100000035','kenneth35@email.com','Address 35',NULL,'3rd Generation','Not Blessed','2010-05-04','Parent 35','Inactive',5,1),(36,'Deborah','JJ.','Carter','Female','1995-06-05','Philippines','Single',NULL,'09100000036','deborah36@email.com','Address 36',NULL,'3rd Generation','Blessed','2010-06-05','Parent 36','Regular',5,2),(37,'Joshua','KK.','Mitchell','Male','1996-07-06','Korea','Single',NULL,'09100000037','joshua37@email.com','Address 37',NULL,'3rd Generation','Not Blessed','2010-07-06','Parent 37','Associate',5,2),(38,'Jessica','LL.','Perez','Female','1997-08-07','USA','Single',NULL,'09100000038','jessica38@email.com','Address 38',NULL,'3rd Generation','Blessed','2010-08-07','Parent 38','Regular',5,2),(39,'Larry','MM.','Roberts','Male','1998-09-08','Japan','Single',NULL,'09100000039','larry39@email.com','Address 39',NULL,'3rd Generation','Not Blessed','2010-09-08','Parent 39','Registered',5,2),(40,'Sarah','NN.','Turner','Female','1999-10-09','China','Single',NULL,'09100000040','sarah40@email.com','Address 40',NULL,'3rd Generation','Blessed','2010-10-09','Parent 40','Inactive',5,2),(41,'Jeffrey','OO.','Phillips','Male','1990-01-10','Philippines','Married','Anna Phillips','09100000041','jeffrey41@email.com','Address 41',NULL,'1st Generation','Not Blessed','2010-01-10','Parent 41','Regular',2,3),(42,'Amy','PP.','Campbell','Female','1991-02-11','Korea','Married','James Campbell','09100000042','amy42@email.com','Address 42',NULL,'1st Generation','Blessed','2010-02-11','Parent 42','Associate',2,3),(43,'Frank','QQ.','Parker','Male','1992-03-12','USA','Married','Helen Parker','09100000043','frank43@email.com','Address 43',NULL,'1st Generation','Not Blessed','2010-03-12','Parent 43','Regular',2,3),(44,'Rebecca','RR.','Evans','Female','1993-04-13','Japan','Married','Michael Evans','09100000044','rebecca44@email.com','Address 44',NULL,'1st Generation','Blessed','2010-04-13','Parent 44','Registered',2,3),(45,'Raymond','SS.','Edwards','Male','1994-05-14','China','Married','Sarah Edwards','09100000045','raymond45@email.com','Address 45',NULL,'1st Generation','Not Blessed','2010-05-14','Parent 45','Inactive',2,3),(46,'Shirley','TT.','Collins','Female','1995-06-15','Philippines','Married','Robert Collins','09100000046','shirley46@email.com','Address 46',NULL,'1st Generation','Blessed','2010-06-15','Parent 46','Regular',2,4),(47,'Gregory','UU.','Stewart','Male','1996-07-16','Korea','Married','Jennifer Stewart','09100000047','gregory47@email.com','Address 47',NULL,'1st Generation','Not Blessed','2010-07-16','Parent 47','Associate',2,4),(48,'Laura','VV.','Sanchez','Female','1997-08-17','USA','Married','David Sanchez','09100000048','laura48@email.com','Address 48',NULL,'1st Generation','Blessed','2010-08-17','Parent 48','Regular',2,4),(49,'Dennis','WW.','Morris','Male','1998-09-18','Japan','Married','Patricia Morris','09100000049','dennis49@email.com','Address 49',NULL,'1st Generation','Not Blessed','2010-09-18','Parent 49','Registered',2,4),(50,'Cynthia','XX.','Rogers','Female','1999-10-19','China','Married','Thomas Rogers','09100000050','cynthia50@email.com','Address 50',NULL,'1st Generation','Blessed','2010-10-19','Parent 50','Inactive',2,4),(51,'Michael',NULL,'Miller','Male','1990-01-15','Philippines','Married','Anna Miller','09123456501','michael.miller@mail.com','108 Address St',NULL,'1st Generation','Not Blessed','2012-05-10','Paul Walker','Regular',3,3),(52,'Emily',NULL,'Wilson','Female','1985-04-20','Korea','Single',NULL,'09123456502','emily.wilson@mail.com','109 Address Rd',NULL,'2nd Generation','Blessed','2007-10-05','John Johnson','Associate',3,3),(53,'Oliver',NULL,'Moore','Male','1992-02-12','USA','Married','Charlotte Moore','09123456503','oliver.moore@mail.com','110 Address Blvd',NULL,'3rd Generation','Not Blessed','2016-08-17','Sophie Turner','Regular',3,3),(54,'Ava',NULL,'Taylor','Female','1995-09-25','Japan','Single',NULL,'09123456504','ava.taylor@mail.com','111 Address Ln',NULL,'1st Generation','Blessed','2011-02-10','Richard Lee','Registered',3,3),(55,'William',NULL,'Anderson','Male','1983-11-11','China','Married','Rebecca Anderson','09123456505','william.anderson@mail.com','112 Address Dr',NULL,'2nd Generation','Not Blessed','2008-05-22','Isabella Martinez','Inactive',3,3),(56,'Mia',NULL,'Thomas','Female','1994-05-10','Philippines','Single',NULL,'09123456506','mia.thomas@mail.com','113 Address Pl',NULL,'3rd Generation','Blessed','2010-12-19','Daniel Smith','Regular',3,4),(57,'Elijah',NULL,'Jackson','Male','1990-06-30','Korea','Married','Emily Jackson','09123456507','elijah.jackson@mail.com','114 Address Ave',NULL,'1st Generation','Not Blessed','2014-03-22','Charles Green','Associate',3,4),(58,'Zoe',NULL,'White','Female','1993-12-15','USA','Single',NULL,'09123456508','zoe.white@mail.com','115 Address Rd',NULL,'2nd Generation','Blessed','2012-11-13','Amelia White','Regular',3,4),(59,'James',NULL,'Hernandez','Male','1987-03-21','Japan','Married','Lily Hernandez','09123456509','james.hernandez@mail.com','116 Address Blvd',NULL,'3rd Generation','Not Blessed','2011-06-18','Jackie Brown','Registered',3,4),(60,'Charlotte',NULL,'King','Female','1991-08-30','China','Single',NULL,'09123456510','charlotte.king@mail.com','117 Address Ln',NULL,'1st Generation','Blessed','2013-09-25','Ethan Moore','Inactive',3,4),(61,'Aiden',NULL,'Lee','Male','1996-10-03','Philippines','Married','Sophia Lee','09123456511','aiden.lee@mail.com','118 Address Pl',NULL,'2nd Generation','Not Blessed','2015-12-01','Harper Davis','Regular',4,3),(62,'Amelia',NULL,'Harris','Female','1999-04-10','Korea','Single',NULL,'09123456512','amelia.harris@mail.com','119 Address St',NULL,'3rd Generation','Blessed','2018-05-20','Liam Robinson','Associate',4,3),(63,'Ethan',NULL,'Clark','Male','1989-02-28','USA','Married','Olivia Clark','09123456513','ethan.clark@mail.com','120 Address Ave',NULL,'1st Generation','Not Blessed','2014-03-15','Grace Walker','Regular',4,3),(64,'Harper',NULL,'Lewis','Female','1994-07-25','Japan','Single',NULL,'09123456514','harper.lewis@mail.com','121 Address Blvd',NULL,'2nd Generation','Blessed','2011-11-09','Lucas Perez','Registered',4,3),(65,'Lucas',NULL,'Roberts','Male','1986-12-18','China','Married','Ava Roberts','09123456515','lucas.roberts@mail.com','122 Address Pl',NULL,'3rd Generation','Not Blessed','2016-08-05','Sophia Thompson','Inactive',4,3),(66,'Madeline',NULL,'Walker','Female','1993-10-05','Philippines','Single',NULL,'09123456516','madeline.walker@mail.com','123 Address Rd',NULL,'1st Generation','Blessed','2012-01-14','Jackson Scott','Regular',4,4),(67,'Oliver',NULL,'Perez','Male','1995-11-25','Korea','Married','Chloe Perez','09123456517','oliver.perez@mail.com','124 Address Ave',NULL,'2nd Generation','Not Blessed','2017-04-21','Sebastian Harris','Associate',4,4),(68,'Sophia',NULL,'Martinez','Female','1992-08-13','USA','Single',NULL,'09123456518','sophia.martinez@mail.com','125 Address Blvd',NULL,'3rd Generation','Blessed','2013-05-15','Lucas Mitchell','Regular',4,4),(69,'Amos',NULL,'Lopez','Male','1984-05-19','Japan','Married','Grace Lopez','09123456519','amos.lopez@mail.com','126 Address Ln',NULL,'1st Generation','Not Blessed','2009-02-09','Mia Green','Registered',4,4),(70,'Natalie',NULL,'Taylor','Female','1997-03-14','China','Single',NULL,'09123456520','natalie.taylor@mail.com','127 Address Rd',NULL,'2nd Generation','Blessed','2014-07-22','Mason Cooper','Inactive',4,4),(71,'Caleb',NULL,'King','Male','1990-06-06','Philippines','Married','Lily King','09123456521','caleb.king@mail.com','128 Address Blvd',NULL,'3rd Generation','Not Blessed','2012-01-30','Daniel Brooks','Regular',5,3),(72,'Grace',NULL,'Scott','Female','1983-12-11','Korea','Single',NULL,'09123456522','grace.scott@mail.com','129 Address Pl',NULL,'1st Generation','Blessed','2008-05-18','Carter Perez','Associate',5,3),(73,'Mason',NULL,'Green','Male','1992-01-22','USA','Married','Emily Green','09123456523','mason.green@mail.com','130 Address Ln',NULL,'2nd Generation','Not Blessed','2013-09-03','Harper Lee','Regular',5,3),(74,'Liam',NULL,'Mitchell','Male','1996-04-12','Japan','Single',NULL,'09123456524','liam.mitchell@mail.com','131 Address Blvd',NULL,'3rd Generation','Blessed','2012-06-11','Aiden Harris','Registered',5,3),(75,'Madison',NULL,'Collins','Female','1990-11-29','China','Married','Joshua Collins','09123456525','madison.collins@mail.com','132 Address Ave',NULL,'1st Generation','Not Blessed','2014-10-13','Ella White','Inactive',5,3),(76,'Mila',NULL,'Garcia','Female','1996-05-14','Philippines','Single',NULL,'09123456726','mila.garcia@mail.com','133 Address Blvd',NULL,'2nd Generation','Blessed','2015-11-09','Isaac Thomas','Regular',5,4),(77,'Jackson',NULL,'Hall','Male','1992-02-05','Korea','Single',NULL,'09123456725','jackson.hall@mail.com','134 Address Ave',NULL,'3rd Generation','Not Blessed','2014-04-15','Sophia Davis','Associate',5,4),(78,'Zachary',NULL,'Young','Male','1985-06-21','USA','Married','Emily Young','09123456724','zachary.young@mail.com','135 Address St',NULL,'1st Generation','Blessed','2012-02-28','Nora Harris','Regular',5,4),(79,'Lily',NULL,'Moore','Female','1998-07-07','Japan','Single',NULL,'09123456723','lily.moore@mail.com','136 Address Ln',NULL,'2nd Generation','Not Blessed','2014-09-01','Benjamin Brown','Registered',5,4),(80,'Logan',NULL,'Taylor','Male','1991-12-28','China','Single',NULL,'09123456722','logan.taylor@mail.com','137 Address Rd',NULL,'3rd Generation','Blessed','2010-07-06','Amelia Harris','Inactive',5,4),(81,'Leah',NULL,'Martinez','Female','1994-09-15','Philippines','Married','Joshua Martinez','09123456721','leah.martinez@mail.com','138 Address Blvd',NULL,'1st Generation','Not Blessed','2013-03-12','Mason Clark','Regular',2,5),(82,'James',NULL,'Wilson','Male','1989-02-10','Korea','Single',NULL,'09123456720','james.wilson@mail.com','139 Address Ave',NULL,'2nd Generation','Blessed','2009-11-19','Sophia Hall','Associate',2,5),(83,'Victoria',NULL,'Allen','Female','2000-08-24','USA','Single',NULL,'09123456719','victoria.allen@mail.com','140 Address Rd',NULL,'3rd Generation','Not Blessed','2016-01-17','Olivia Moore','Regular',2,5),(84,'Jack',NULL,'Thomas','Male','1993-05-30','Japan','Married','Emma Thomas','09123456718','jack.thomas@mail.com','141 Address Ln',NULL,'1st Generation','Blessed','2014-06-09','Mason Lewis','Registered',2,5),(85,'Maya',NULL,'White','Female','1987-09-22','China','Single',NULL,'09123456717','maya.white@mail.com','142 Address St',NULL,'2nd Generation','Not Blessed','2012-05-04','James Walker','Inactive',2,5),(86,'Carter',NULL,'Hernandez','Male','1998-12-13','Philippines','Single',NULL,'09123456716','carter.hernandez@mail.com','143 Address Blvd',NULL,'3rd Generation','Blessed','2017-07-17','Sophia Clark','Regular',3,5),(87,'Lucas',NULL,'King','Male','1994-03-02','Korea','Single',NULL,'09123456715','lucas.king@mail.com','144 Address Rd',NULL,'1st Generation','Not Blessed','2013-04-12','Amelia White','Associate',3,5),(88,'Isabel',NULL,'Martinez','Female','1987-06-19','USA','Married','Evan Martinez','09123456714','isabel.martinez@mail.com','145 Address Ln',NULL,'2nd Generation','Blessed','2012-11-05','James Miller','Regular',3,5),(89,'Caden',NULL,'Lee','Male','1999-04-01','Japan','Single',NULL,'09123456713','caden.lee@mail.com','146 Address St',NULL,'3rd Generation','Not Blessed','2015-09-28','Isabella Walker','Registered',3,5),(90,'Eva',NULL,'Rodriguez','Female','1992-11-15','China','Married','Juan Rodriguez','09123456712','eva.rodriguez@mail.com','147 Address Rd',NULL,'1st Generation','Blessed','2014-03-07','Samuel Lee','Inactive',3,5),(91,'Ariana',NULL,'Gomez','Female','2000-06-23','Philippines','Single',NULL,'09123456711','ariana.gomez@mail.com','148 Address Blvd',NULL,'2nd Generation','Not Blessed','2016-02-17','Matthew Scott','Regular',4,5),(92,'Milo',NULL,'Clark','Male','1995-02-07','Korea','Single',NULL,'09123456710','milo.clark@mail.com','149 Address Ln',NULL,'3rd Generation','Blessed','2013-10-01','Sophia Harris','Associate',4,5),(93,'Liam',NULL,'Taylor','Male','1994-05-28','USA','Single',NULL,'09123456709','liam.taylor@mail.com','150 Address Rd',NULL,'1st Generation','Not Blessed','2011-09-15','Olivia Clark','Regular',4,5),(94,'Hazel',NULL,'Young','Female','1999-12-12','Japan','Married','Nathan Young','09123456708','hazel.young@mail.com','151 Address Blvd',NULL,'2nd Generation','Blessed','2016-11-04','Liam Martin','Registered',4,5),(95,'Sebastian',NULL,'Parker','Male','1986-07-25','China','Single',NULL,'09123456707','sebastian.parker@mail.com','152 Address Ave',NULL,'3rd Generation','Not Blessed','2010-10-22','Grace Martinez','Inactive',4,5),(96,'Juliana',NULL,'Roberts','Female','1991-01-17','Philippines','Single',NULL,'09123456706','juliana.roberts@mail.com','153 Address Blvd',NULL,'1st Generation','Blessed','2013-07-06','Ethan Green','Regular',5,5),(97,'Jackson',NULL,'Harris','Male','1993-09-08','Korea','Single',NULL,'09123456705','jackson.harris@mail.com','154 Address Rd',NULL,'2nd Generation','Not Blessed','2014-02-25','Abigail Thomas','Associate',5,5),(98,'Ella',NULL,'King','Female','1992-10-20','USA','Single',NULL,'09123456704','ella.king@mail.com','155 Address Ln',NULL,'3rd Generation','Blessed','2012-11-14','Lucas Thomas','Regular',5,5),(99,'Lucas',NULL,'Martinez','Male','1995-05-18','Japan','Single',NULL,'09123456703','lucas.martinez@mail.com','156 Address Blvd',NULL,'1st Generation','Not Blessed','2013-09-01','Grace White','Registered',5,5),(100,'Emma',NULL,'Lopez','Female','1991-08-09','Philippines','Married','David Lopez','09123456702','emma.lopez@mail.com','157 Address Rd',NULL,'2nd Generation','Blessed','2015-05-11','Olivia Lee','Regular',3,1);
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
INSERT INTO `region_region` VALUES (1,'Europe'),(2,'Asia'),(3,'Africa'),(4,'South America'),(5,'Oceania'),(6,'North America'),(7,'Latin America');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_subregion`
--

LOCK TABLES `region_subregion` WRITE;
/*!40000 ALTER TABLE `region_subregion` DISABLE KEYS */;
INSERT INTO `region_subregion` VALUES (1,'Korea',2),(2,'Japan',2),(3,'China',2),(4,'Philippines',2),(5,'Thailand',2),(6,'Indonesia',2),(7,'Vietnam ',2),(8,'India',2),(9,'Nepal',2),(10,'Sri Lanka',2),(11,'Pakistan',2),(12,'Southeast Asia',2),(13,'South Asia',2),(14,'Central Asia',2),(15,'East Asia',2),(16,'North Asia',2),(17,'West Asia',2),(18,'Western Europe',1),(19,'UK (Western Europe)',1),(20,'France (Western Europe)',1),(21,'Germany (Western Europe)',1),(22,'Netherlands (Western Europe)',1),(23,'Eastern Europe',1),(24,'Poland (Eastern Europe)',1),(25,'Romania (Eastern Europe)',1),(26,'Ukraine (Eastern Europe)',1),(27,'Hungary (Eastern Europe)',1),(28,'Southern Europe',1),(29,'Italy (Southern Europe)',1),(30,'Spain (Southern Europe)',1),(31,'Greece (Southern Europe)',1),(32,'Portugal (Southern Europe)',1),(33,'Northern Europe',1),(34,'Sweden (Northern Europe)',1),(35,'Norway (Northern Europe)',1),(36,'Finland (Northern Europe)',1),(37,'Denmark (Northern Europe)',1),(38,'Balkans',1),(39,'Serbia (Balkans)',1),(40,'Croatia (Balkans)',1),(41,'Bosnia and Herzegovina (Balkans)',1),(42,'USA - East Coast',6),(43,'USA - West Coast',6),(44,'USA - Midwest',6),(45,'USA - South',6),(46,'Canada',6),(47,'Caribbean',6),(48,'West Africa',3),(49,'East Africa',3),(50,'Central Africa',3),(51,'Southern Africa',3),(52,'North Africa',3),(53,'South America',4),(54,'Central America',4),(55,'Caribbean',4),(56,'Australia & New Zealand',5),(57,'Pacific Islands',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_worshipevent`
--

LOCK TABLES `worship_worshipevent` WRITE;
/*!40000 ALTER TABLE `worship_worshipevent` DISABLE KEYS */;
INSERT INTO `worship_worshipevent` VALUES (1,'Event #1','2025-01-03','Onsite',13),(2,'Event #2','2023-01-08','Online',27),(3,'Event #3','2023-01-14','Hybrid',6),(4,'Event #4','1909-01-20','Onsite',45),(5,'Event #5','1999-01-25','Online',21),(6,'Event #6','2022-02-01','Hybrid',33),(7,'Event #7','2021-02-05','Onsite',48),(8,'Event #8','2020-02-10','Online',3),(9,'Event #9','2025-02-15','Hybrid',30),(10,'Event #10','2023-02-20','Onsite',19),(11,'Event #11','2021-02-25','Online',37),(12,'Event #12','2021-03-02','Hybrid',12),(13,'Event #13','2022-03-07','Onsite',40),(14,'Event #14','1993-03-12','Online',7),(15,'Event #15','2025-03-17','Hybrid',50),(16,'Event #16','2025-03-22','Onsite',9),(17,'Event #17','2025-03-27','Online',1),(18,'Event #18','2025-04-01','Hybrid',34),(19,'Event #19','2025-04-06','Onsite',24),(20,'Event #20','2025-04-11','Online',15),(21,'Event #21','2025-04-16','Hybrid',4),(22,'Event #22','2025-04-21','Onsite',44),(23,'Event #23','2023-04-26','Online',2),(24,'Event #24','2025-05-01','Hybrid',31),(25,'Event #25','2022-05-06','Onsite',26),(26,'Event #26','2021-05-11','Online',38),(27,'Event #27','2020-05-16','Hybrid',14),(28,'Event #28','2021-05-21','Onsite',47),(29,'Event #29','2022-05-26','Online',41),(30,'Event #30','2021-05-31','Hybrid',20),(31,'Event #31','2021-06-05','Onsite',16),(32,'Event #32','1993-06-10','Online',5),(33,'Event #33','2025-06-15','Hybrid',10),(34,'Event #34','2025-06-20','Onsite',28),(35,'Event #35','1992-06-25','Online',35),(36,'Event #36','2025-06-30','Hybrid',22),(37,'Event #37','2024-07-05','Onsite',32),(38,'Event #38','2025-07-10','Online',23),(39,'Event #39','1999-07-15','Hybrid',46),(40,'Event #40','2025-07-20','Onsite',8),(41,'Event #41','2025-07-25','Online',36),(42,'Event #42','1993-07-30','Hybrid',11),(43,'Event #43','2022-08-04','Onsite',17),(44,'Event #44','2025-08-09','Online',25),(45,'Event #45','2020-08-14','Hybrid',29),(46,'Event #46','2025-08-19','Onsite',43),(47,'Event #47','2025-08-24','Online',42),(48,'Event #48','1993-08-29','Hybrid',18),(49,'Event #49','2025-09-03','Onsite',39),(50,'Event #50','1993-09-08','Online',49);
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

-- Dump completed on 2025-05-09 16:52:55
