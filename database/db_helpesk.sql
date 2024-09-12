CREATE DATABASE  IF NOT EXISTS `db_helpdesk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_helpdesk`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_helpdesk
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salesperson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Pemkot Depok','Jl. Margonda Raya No. 1, Depok','021 87623765','admin@pemkotdepok.go.id','Edi','Jono','Instalasi LAN',NULL,NULL),(2,'Polsek Sukmajaya','Jl. Keadilan No. 1, Depok','021 48756382','polseksukmajaya@gmail.com','Lukman','Edi','Instalasi Video Conference',NULL,NULL),(4,'Cliente Prueba 1','1','123456789','clienteprueba1@gmail.com','123','t','laptop','2024-09-07 22:06:41','2024-09-07 22:06:41'),(5,'Cliente Prueba 2','Av Nose','999 899 324','clienteprueba2@gmail.com','1','Rodrigo Barrenechea camones','Una Laptop HP OMEN','2024-09-08 20:27:15','2024-09-08 20:27:15'),(6,'cliente prueba 3','e','123231232','cliente3@gmail.com','1','1','1','2024-09-08 22:33:24','2024-09-08 22:33:24');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_emails`
--

DROP TABLE IF EXISTS `log_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint unsigned NOT NULL,
  `emailto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailcc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailbcc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `log_emails_ticket_id_foreign` (`ticket_id`),
  CONSTRAINT `log_emails_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_emails`
--

LOCK TABLES `log_emails` WRITE;
/*!40000 ALTER TABLE `log_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_users`
--

DROP TABLE IF EXISTS `log_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_users_user_id_foreign` (`user_id`),
  CONSTRAINT `log_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_users`
--

LOCK TABLES `log_users` WRITE;
/*!40000 ALTER TABLE `log_users` DISABLE KEYS */;
INSERT INTO `log_users` VALUES (1,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket Baru','2021-03-27 16:25:34','2021-03-27 16:25:34'),(2,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 4/2021','2021-03-28 02:10:30','2021-03-28 02:10:30'),(3,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Menghapus Tiket No 4/2021','2021-03-28 02:12:25','2021-03-28 02:12:25'),(4,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Memperbaharui Tiket No 3/2021','2021-03-28 02:18:55','2021-03-28 02:18:55'),(5,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 4/2021','2021-03-28 03:21:50','2021-03-28 03:21:50'),(6,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 5/2021','2021-03-28 03:25:22','2021-03-28 03:25:22'),(7,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 6/2021','2021-03-29 05:06:48','2021-03-29 05:06:48'),(8,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 7/2021','2021-03-29 05:12:57','2021-03-29 05:12:57'),(9,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 18/2021','2021-03-29 05:44:57','2021-03-29 05:44:57'),(10,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 19/2021','2021-03-29 05:46:16','2021-03-29 05:46:16'),(11,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 20/2021','2021-03-29 05:48:46','2021-03-29 05:48:46'),(12,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 21/2021','2021-03-29 05:58:14','2021-03-29 05:58:14'),(13,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 22/2021','2021-03-29 06:02:03','2021-03-29 06:02:03'),(14,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 23/2021','2021-03-29 06:03:10','2021-03-29 06:03:10'),(15,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 24/2021','2021-03-29 06:04:00','2021-03-29 06:04:00'),(16,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 25/2021','2021-03-29 06:05:13','2021-03-29 06:05:13'),(17,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 26/2021','2021-03-29 06:30:19','2021-03-29 06:30:19'),(18,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 27/2021','2021-03-29 06:35:59','2021-03-29 06:35:59'),(19,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 28/2021','2021-03-29 06:44:46','2021-03-29 06:44:46'),(20,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','Membuat Tiket No 29/2021','2021-03-29 06:45:08','2021-03-29 06:45:08'),(21,3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Membuat Tiket No 30/2021','2021-04-08 04:53:14','2021-04-08 04:53:14'),(22,3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Menghapus Tiket No 30/2021','2021-04-08 06:13:42','2021-04-08 06:13:42'),(23,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Membuat Tiket No 30/2021','2021-04-11 08:35:07','2021-04-11 08:35:07'),(24,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Membuat Tiket No 31/2021','2021-04-13 08:21:39','2021-04-13 08:21:39'),(25,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Membuat Tiket No 32/2021','2021-04-13 08:28:37','2021-04-13 08:28:37'),(26,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Menghapus Tiket No 30/2021','2021-04-13 09:08:46','2021-04-13 09:08:46'),(27,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-13 15:49:45','2021-04-13 15:49:45'),(28,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','Memperbaharui Tiket No 31/2021','2021-04-13 15:50:57','2021-04-13 15:50:57'),(29,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 32/2021','2021-04-15 05:52:47','2021-04-15 05:52:47'),(30,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-15 06:19:22','2021-04-15 06:19:22'),(31,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-15 06:20:46','2021-04-15 06:20:46'),(32,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-15 06:21:25','2021-04-15 06:21:25'),(33,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-15 06:28:04','2021-04-15 06:28:04'),(34,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 2/2021','2021-04-15 06:28:31','2021-04-15 06:28:31'),(35,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 3/2021','2021-04-15 06:29:09','2021-04-15 06:29:09'),(36,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-15 06:34:07','2021-04-15 06:34:07'),(37,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 35/2021',NULL,NULL),(38,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 36/2021',NULL,NULL),(39,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 37/2021',NULL,NULL),(40,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 38/2021','2021-04-16 03:18:03','2021-04-16 03:18:03'),(41,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 39/2021','2021-04-16 03:38:26','2021-04-16 03:38:26'),(42,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 39/2021','2021-04-16 03:38:52','2021-04-16 03:38:52'),(43,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 38/2021','2021-04-16 03:40:19','2021-04-16 03:40:19'),(44,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Memperbaharui Tiket No 32/2021','2021-04-16 03:41:16','2021-04-16 03:41:16'),(45,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Menghapus Tiket No 37/2021','2021-04-16 03:42:55','2021-04-16 03:42:55'),(46,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 37/2021','2021-04-17 00:55:40','2021-04-17 00:55:40'),(47,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 38/2021','2021-04-17 01:10:05','2021-04-17 01:10:05'),(48,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 39/2021','2021-04-17 01:12:59','2021-04-17 01:12:59'),(49,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 40/2021','2021-04-17 01:21:01','2021-04-17 01:21:01'),(50,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','Membuat Tiket No 41/2021','2021-04-17 01:25:46','2021-04-17 01:25:46'),(51,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 42/2024','2024-09-07 22:03:44','2024-09-07 22:03:44'),(52,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 43/2024','2024-09-07 22:09:07','2024-09-07 22:09:07'),(53,4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 43/2024','2024-09-07 22:29:02','2024-09-07 22:29:02'),(54,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 43/2024','2024-09-08 20:09:12','2024-09-08 20:09:12'),(55,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 42/2024','2024-09-08 20:09:40','2024-09-08 20:09:40'),(56,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 44/2024','2024-09-08 20:31:32','2024-09-08 20:31:32'),(57,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 45/2024','2024-09-08 20:37:57','2024-09-08 20:37:57'),(58,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 45/2024','2024-09-08 20:43:11','2024-09-08 20:43:11'),(59,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 44/2024','2024-09-08 20:43:21','2024-09-08 20:43:21'),(60,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 46/2024','2024-09-08 20:44:30','2024-09-08 20:44:30'),(61,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 47/2024','2024-09-08 21:32:36','2024-09-08 21:32:36'),(62,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Membuat Tiket No 48/2024','2024-09-08 21:42:12','2024-09-08 21:42:12'),(63,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Menghapus Tiket No 48/2024','2024-09-08 21:44:07','2024-09-08 21:44:07'),(64,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Menghapus Tiket No 47/2024','2024-09-08 21:44:11','2024-09-08 21:44:11'),(65,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Menghapus Tiket No 46/2024','2024-09-08 21:44:14','2024-09-08 21:44:14'),(66,6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','Memperbaharui Tiket No 41/2021','2024-09-08 21:44:32','2024-09-08 21:44:32');
/*!40000 ALTER TABLE `log_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_02_28_213738_create_permission_tables',1),(5,'2021_03_01_143915_create_customers_table',1),(6,'2021_03_01_145258_create_news_table',1),(7,'2021_03_01_150701_create_slas_table',1),(8,'2021_03_02_232306_create_projects_table',1),(9,'2021_03_02_233320_create_tickets_table',1),(10,'2021_03_03_123910_create_log_emails_table',1),(11,'2021_03_03_130339_create_log_users_table',1),(12,'2021_04_17_074910_create_jobs_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',3),(3,'App\\Models\\User',4),(3,'App\\Models\\User',5),(1,'App\\Models\\User',6),(3,'App\\Models\\User',7);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`),
  CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'Rencana Lembur Seminggu','Lembur Seminggu',1,'2021-03-25 09:33:39','2021-04-15 07:34:45'),(3,'Kenaikan Gaji','Minggu depan gaji naik',4,'2021-04-15 07:32:18','2024-09-08 20:23:58'),(4,'Pemeliharaan','Mohon maaf akan ada pemeliharaan jaringan pada hari minggu',4,'2021-04-15 08:05:18','2021-04-15 08:05:18'),(5,'hola mundo','trtrtrt',6,'2024-09-08 22:25:02','2024-09-08 22:25:02');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('cisnerosllatasmichel@gmail.com','$2y$10$ssNFLawRMUjISxbMTU4XrOPhRw.kg4fIUfq0YFo.Qj2s/6aRZ4A2G','2024-09-09 15:32:17');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'tickets.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(2,'tickets.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(3,'tickets.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(4,'tickets.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(5,'slas.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(6,'slas.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(7,'slas.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(8,'slas.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(9,'news.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(10,'news.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(11,'news.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(12,'news.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(13,'users.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(14,'users.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(15,'users.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(16,'users.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(17,'customers.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(18,'customers.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(19,'customers.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(20,'customers.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(21,'projects.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(22,'projects.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(23,'projects.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(24,'projects.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(25,'log_emails.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(26,'log_emails.create','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(27,'log_emails.edit','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(28,'log_emails.delete','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(29,'log_users.index','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(31,'permissions.index','web',NULL,NULL),(33,'roles.index','web','2021-03-14 08:35:00','2021-03-14 08:35:00'),(34,'roles.create','web','2021-03-14 08:35:11','2021-03-14 08:35:11'),(35,'roles.edit','web','2021-03-14 08:35:25','2021-03-14 08:35:25'),(36,'roles.delete','web','2021-03-14 08:35:35','2021-03-14 08:35:35');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `deliverystart` datetime NOT NULL,
  `deliveryend` datetime NOT NULL,
  `installstart` datetime NOT NULL,
  `installend` datetime NOT NULL,
  `uatstart` datetime NOT NULL,
  `uatend` datetime NOT NULL,
  `billstart` datetime NOT NULL,
  `billdue` datetime NOT NULL,
  `warrantyperiod` int NOT NULL,
  `contractstart` datetime NOT NULL,
  `contractperiod` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_customer_id_foreign` (`customer_id`),
  CONSTRAINT `projects_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Instalasi LAN',1,'2021-01-11 20:32:01','2021-01-12 20:32:01','2021-01-13 20:32:01','2021-01-22 20:32:01','2021-01-23 20:32:01','2021-01-29 20:32:01','2021-01-11 20:32:01','2021-02-01 20:32:01',12,'2021-01-01 20:32:01',3,NULL,NULL),(2,'Instalasi Perangkat Video Conference',2,'2021-02-01 20:44:43','2021-02-05 20:44:43','2021-02-08 20:44:43','2021-03-12 20:44:43','2021-03-15 20:44:43','2021-03-19 20:44:43','2021-03-22 20:44:43','2021-03-01 20:44:43',12,'2021-02-01 20:44:43',3,NULL,NULL),(4,'TTT',4,'2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00',2,'2024-09-07 00:00:00',1,'2024-09-07 22:08:27','2024-09-07 22:08:27'),(5,'Proyecto 1',4,'2024-09-08 00:00:00','2024-09-10 00:00:00','2024-09-10 00:00:00','2024-09-10 00:00:00','2024-09-10 00:00:00','2024-09-10 00:00:00','2024-09-08 00:00:00','2024-09-10 00:00:00',3,'2024-09-08 00:00:00',3,'2024-09-08 20:21:36','2024-09-08 20:21:36'),(6,'proyecto 1 cliente2',5,'2024-09-08 00:00:00','2024-09-10 00:00:00','2024-09-08 00:00:00','2024-09-08 00:00:00','2024-09-09 00:00:00','2024-09-09 00:00:00','2024-09-08 00:00:00','2024-09-10 00:00:00',1,'2024-09-08 00:00:00',1,'2024-09-08 20:29:44','2024-09-08 20:29:44');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(31,1),(33,1),(34,1),(35,1),(36,1),(1,2),(2,2),(3,2),(4,2),(5,2),(9,2),(10,2),(11,2),(12,2),(17,2),(21,2),(25,2),(26,2),(1,3),(3,3),(5,3),(9,3),(10,3),(11,3),(12,3),(21,3),(25,3),(26,3),(27,3),(28,3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2021-03-03 09:40:45','2021-03-03 09:40:45'),(2,'HelpDesk','web','2021-03-03 09:40:45','2024-09-08 20:12:59'),(3,'Teknisi','web','2021-03-03 09:40:45','2024-09-07 20:45:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slas`
--

DROP TABLE IF EXISTS `slas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` int NOT NULL,
  `resolution` int NOT NULL,
  `warning` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slas`
--

LOCK TABLES `slas` WRITE;
/*!40000 ALTER TABLE `slas` DISABLE KEYS */;
INSERT INTO `slas` VALUES (1,'Crítico',1,8,6),(2,'Alto',2,24,20),(3,'Medio',3,48,40);
/*!40000 ALTER TABLE `slas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sla_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `reportedby` int NOT NULL,
  `reporteddate` datetime NOT NULL,
  `problemsummary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `problemdetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee` int NOT NULL,
  `assigneddate` datetime NOT NULL,
  `pendingby` int DEFAULT NULL,
  `pendingdate` datetime DEFAULT NULL,
  `resolution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolvedby` int DEFAULT NULL,
  `resolveddate` datetime DEFAULT NULL,
  `closedby` int DEFAULT NULL,
  `closeddate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_sla_id_foreign` (`sla_id`),
  KEY `tickets_customer_id_foreign` (`customer_id`),
  CONSTRAINT `tickets_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `tickets_sla_id_foreign` FOREIGN KEY (`sla_id`) REFERENCES `slas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (2,'2/2021',2,2,1,'2021-03-02 21:23:52','camera mati','Camera tidak dapat dinyalakan','Assigned',2,'2021-03-02 20:19:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'3/2021',3,2,1,'2021-03-01 21:23:52','LAN Mati','LAN mati sama sekali','Assigned',2,'2021-03-01 21:23:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'4/2021',2,2,1,'2021-03-02 21:25:59','Suara tidak keluar','Suara tidak ada','Assigned',2,'2021-03-02 21:25:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'5/2021',2,1,1,'2021-03-03 21:25:59','Internet putus','Kabel putus','Assigned',2,'2021-03-03 21:25:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'6/2021',2,2,1,'2021-03-04 21:28:15','Kabel putus','kabel dimakan tikus','Assigned',2,'2021-03-04 21:28:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'1/2021',1,1,1,'2021-03-16 00:00:00','kabel putus','asasasas','Pending',5,'2021-03-16 11:51:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-16 04:51:17','2021-04-08 06:30:09'),(8,'2/2021',2,1,1,'2021-03-28 00:00:00','Koneksi Lambat','Download Lambat','Closed',5,'2021-03-27 23:24:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-27 16:24:43','2021-04-15 06:28:31'),(9,'3/2021',3,1,1,'2021-03-28 00:00:00','Koneksi Lambat','lemot','Closed',4,'2021-03-27 23:25:34',NULL,NULL,'kabel disambung',NULL,NULL,NULL,NULL,'2021-03-27 16:25:34','2021-04-15 06:29:09'),(11,'4/2021',3,1,1,'2021-03-28 00:00:00','Tidak ada koneksi','Kabel digigit tikus','Assigned',5,'2021-03-28 10:21:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-28 03:21:50','2021-03-28 03:21:50'),(12,'5/2021',1,2,1,'2021-03-28 00:00:00','Tidak ada suara','Speaker bermasalah','Assigned',5,'2021-03-28 10:25:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-28 03:25:22','2021-03-28 03:25:22'),(13,'6/2021',3,1,1,'2021-03-29 00:00:00','Kabel kurang','kabel hilang','Assigned',5,'2021-03-29 12:06:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:06:48','2021-03-29 05:06:48'),(14,'7/2021',2,2,1,'2021-03-29 00:00:00','mic tidak berfungsi','mic rusak','Assigned',5,'2021-03-29 12:12:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:12:57','2021-03-29 05:12:57'),(15,'8/2021',2,1,1,'2021-03-29 00:00:00','Tidak ada koneksi','Kabel putus','Assigned',5,'2021-03-29 12:14:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:14:45','2021-03-29 05:14:45'),(16,'9/2021',2,2,1,'2021-03-29 00:00:00','Tidak ada suara','speaker rusak','Assigned',5,'2021-03-29 12:15:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:15:59','2021-03-29 05:15:59'),(17,'10/2021',3,2,1,'2021-03-29 00:00:00','kabel putus','Digigit tikus','Assigned',5,'2021-03-29 12:35:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:35:22','2021-03-29 05:35:22'),(18,'11/2021',3,2,1,'2021-03-29 00:00:00','kabel putus','Digigit tikus','Assigned',5,'2021-03-29 12:35:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:35:41','2021-03-29 05:35:41'),(19,'12/2021',3,1,1,'2021-03-29 00:00:00','kabel putus','digigit tikus','Assigned',5,'2021-03-29 12:37:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:37:45','2021-03-29 05:37:45'),(20,'13/2021',2,1,1,'2021-03-29 00:00:00','Kabel kurang','kabel kurang','Assigned',5,'2021-03-29 12:40:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:40:03','2021-03-29 05:40:03'),(21,'14/2021',2,1,1,'2021-03-29 00:00:00','kabel putus','dfasdsd','Assigned',5,'2021-03-29 12:41:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:41:34','2021-03-29 05:41:34'),(22,'15/2021',3,2,1,'2021-03-29 00:00:00','Video tidak ada gambar','asasa','Assigned',5,'2021-03-29 12:42:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:42:23','2021-03-29 05:42:23'),(23,'16/2021',2,1,1,'2021-03-29 00:00:00','kabel putus','jjjjj','Assigned',5,'2021-03-29 12:43:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:43:35','2021-03-29 05:43:35'),(24,'17/2021',2,1,1,'2021-03-29 00:00:00','kabel putus','jjjjj','Assigned',5,'2021-03-29 12:44:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:44:27','2021-03-29 05:44:27'),(25,'18/2021',2,1,1,'2021-03-29 00:00:00','kabel putus','jjjjj','Assigned',5,'2021-03-29 12:44:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:44:57','2021-03-29 05:44:57'),(26,'19/2021',2,2,1,'2021-03-29 00:00:00','Video tidak ada gambar','kokokoko','Assigned',5,'2021-03-29 12:46:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:46:15','2021-03-29 05:46:15'),(27,'20/2021',2,1,1,'2021-03-29 00:00:00','Tidak ada suara','asasa','Assigned',5,'2021-03-29 12:48:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:48:46','2021-03-29 05:48:46'),(28,'21/2021',2,2,1,'2021-03-29 00:00:00','Kabel kurang','kabel dicuri','Assigned',5,'2021-03-29 12:58:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 05:58:14','2021-03-29 05:58:14'),(29,'22/2021',3,2,1,'2021-03-29 00:00:00','Tidak ada suara','sdsds','Assigned',5,'2021-03-29 13:02:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:02:03','2021-03-29 06:02:03'),(30,'23/2021',2,2,1,'2021-03-29 00:00:00','kabel putus','sdsd','Assigned',5,'2021-03-29 13:03:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:03:10','2021-03-29 06:03:10'),(31,'24/2021',2,1,1,'2021-03-29 00:00:00','Tidak ada koneksi','asas','Assigned',5,'2021-03-29 13:04:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:04:00','2021-03-29 06:04:00'),(32,'25/2021',2,1,1,'2021-03-29 00:00:00','Tidak ada suara','sdasad','Assigned',5,'2021-03-29 13:05:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:05:13','2021-03-29 06:05:13'),(33,'26/2021',3,1,1,'2021-03-29 00:00:00','Tidak ada suara','dfsfsdfs','Assigned',5,'2021-03-29 13:30:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:30:19','2021-03-29 06:30:19'),(34,'27/2021',1,2,1,'2021-03-29 00:00:00','Tidak ada suara','sdsdsd','Assigned',5,'2021-03-29 13:35:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:35:59','2021-03-29 06:35:59'),(35,'28/2021',2,2,1,'2021-03-29 00:00:00','Video tidak ada gambar','sdasda','Assigned',5,'2021-03-29 13:44:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:44:46','2021-03-29 06:44:46'),(36,'29/2021',3,2,1,'2021-03-29 00:00:00','Video tidak ada gambar','sdasda','Assigned',5,'2021-03-29 13:45:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-29 06:45:08','2021-04-08 06:13:55'),(39,'31/2021',2,1,1,'2021-04-13 00:00:00','kabel putus','sdadas','Closed',5,'2021-04-13 15:21:39',NULL,NULL,'sdasa',NULL,NULL,NULL,NULL,'2021-04-13 08:21:39','2021-04-13 15:50:57'),(40,'32/2021',2,1,1,'2021-04-13 00:00:00','Video tidak ada gambar','asas','Assigned',5,'2021-04-13 15:28:37',NULL,NULL,'blalala',NULL,NULL,NULL,NULL,'2021-04-13 08:28:37','2021-04-16 03:41:16'),(41,'32/2021',2,1,1,'2021-04-15 00:00:00','Tidak ada suara','asasa','Closed',4,'2021-04-15 12:52:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-15 05:52:47','2021-04-15 06:28:04'),(42,'33/2021',3,1,1,'2021-04-16 16:42:00','Koneksi Lambat','sdasd','Assigned',5,'2021-04-16 09:43:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-16 02:43:01','2021-04-16 02:43:01'),(43,'34/2021',3,1,1,'2021-04-16 16:42:00','Koneksi Lambat','sdasd','Assigned',5,'2021-04-16 09:44:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-16 02:44:48','2021-04-16 02:44:48'),(44,'35/2021',3,1,1,'2021-04-16 16:42:00','Koneksi Lambat','sdasd','Assigned',5,'2021-04-16 09:45:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-16 02:45:19','2021-04-16 02:45:19'),(45,'36/2021',2,2,1,'2021-04-16 16:45:00','Kabel kurang','iojoijoi','Assigned',5,'2021-04-16 09:46:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-16 02:46:12','2021-04-16 02:46:12'),(49,'37/2021',1,1,1,'2021-04-17 14:55:00','Tidak ada suara','asas','Assigned',5,'2021-04-17 07:55:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-17 00:55:40','2021-04-17 00:55:40'),(50,'38/2021',1,1,1,'2021-04-17 15:09:00','Kabel kurang','asas','Assigned',5,'2021-04-17 08:10:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-17 01:10:05','2021-04-17 01:10:05'),(51,'39/2021',1,1,1,'2021-04-17 15:12:00','Tidak ada suara','asas','Assigned',5,'2021-04-17 08:12:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-17 01:12:59','2021-04-17 01:12:59'),(52,'40/2021',1,1,1,'2021-04-17 15:20:00','Tidak ada suara','asas','Assigned',5,'2021-04-17 08:21:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-17 01:21:01','2021-04-17 01:21:01'),(53,'41/2021',1,1,1,'2021-04-17 00:00:00','Video tidak ada gambar','asasa','Closed',4,'2021-04-17 08:25:46',NULL,NULL,'yy',NULL,NULL,NULL,NULL,'2021-04-17 01:25:46','2024-09-08 21:44:32'),(54,'42/2024',2,1,6,'2024-09-07 00:00:00','problemas y fallos de internet','n','Closed',4,'2024-09-07 17:03:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-09-07 22:03:44','2024-09-08 20:09:40'),(55,'43/2024',2,4,6,'2024-09-07 00:00:00','error','aca tiene error','Closed',4,'2024-09-07 17:09:07',NULL,NULL,'dxde chedjc djhe cehfdj cej efhj vchefc',NULL,NULL,NULL,NULL,'2024-09-07 22:09:07','2024-09-08 20:09:12'),(56,'44/2024',1,5,6,'2024-09-08 00:00:00','Tiene fallos en el Sistema','El ordenador tiene que formatearse','Closed',4,'2024-09-08 15:31:32',NULL,NULL,'Solucionado',NULL,NULL,NULL,NULL,'2024-09-08 20:31:32','2024-09-08 20:43:21'),(57,'45/2024',3,5,6,'2024-09-08 00:00:00','Tiene fallos en el Hadware','Al parecer las bisagras no funcionan correctamente','Closed',4,'2024-09-08 15:37:57',NULL,NULL,'Se Solucion',NULL,NULL,NULL,NULL,'2024-09-08 20:37:57','2024-09-08 20:43:11');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com',NULL,'$2y$10$JJaLK7OAN3tLkdSRH0enQOxW3IB3SoRtJ0apq/7OadeZKci5EAaLO',NULL,'2021-03-03 09:43:36','2021-03-03 09:43:36'),(3,'Moises Rengifo','moises@gmail.com',NULL,'$2y$10$2FjBGvZ5bIRFWgH1ezQiMOWv8qPD22n4P5ithIJcpb20.altylAcW',NULL,'2021-03-14 08:58:12','2024-09-07 20:47:15'),(4,'Rodrigo Barrenechea','rodrigo@gmail.com',NULL,'$2y$10$szYwq4aa4S13vkEOmfHb9eM4aPOYONmET50iuQxduBwp6I3ujrs8S','KDOvx8zgRa1ExLfGV3iPl6ga39BdMJWmb8FDKV7L9TTfUH1VUjWA0U0VRYIh','2021-03-14 08:58:39','2024-09-07 20:44:13'),(6,'Michel Cisneros','cisnerosllatasmichel@gmail.com',NULL,'$2y$10$aExQPHAz9Zhzoc4hWplnMeqrPpxl4UB7i7Zr7sDG/iqwR8tM17I76','ULznxs8V9V3eMHTdT02p8ccq1M6O0uCR9SAq70zUSKjTDdxmzbZ63Ac9scxq','2024-09-07 19:57:10','2024-09-07 20:48:09'),(7,'tecnico2','tecnico2@gmail.com',NULL,'$2y$10$6yH//alwmtDrVg4VKIfWT.51bvKm9URHQVPUaVmpvhp7EEg39k9LO',NULL,'2024-09-09 00:53:05','2024-09-09 00:53:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_helpdesk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-09 18:13:56
