-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: origami
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (2,'军事',2),(3,'动物',1),(4,'工具',3),(23,'test9',9),(24,'test10',10),(25,'test4',4),(26,'test5',5),(27,'test6',6),(28,'test11',11),(31,'1',1),(32,'11111',-2),(33,'tttttttt',2);
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_image`
--

DROP TABLE IF EXISTS `tb_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tb_model` (`pid`),
  CONSTRAINT `fk_tb_model` FOREIGN KEY (`pid`) REFERENCES `tb_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_image`
--

LOCK TABLES `tb_image` WRITE;
/*!40000 ALTER TABLE `tb_image` DISABLE KEYS */;
INSERT INTO `tb_image` VALUES (5,8,NULL,11,NULL),(6,8,NULL,13,NULL),(7,8,NULL,17,NULL),(8,8,NULL,15,NULL),(9,8,NULL,16,NULL),(10,8,NULL,19,NULL),(11,8,NULL,18,NULL),(12,8,NULL,7,NULL),(13,8,NULL,8,NULL),(14,8,NULL,6,NULL),(15,8,NULL,3,NULL),(16,8,NULL,5,NULL),(17,8,NULL,2,NULL),(18,8,NULL,4,NULL),(19,8,NULL,1,NULL),(75,14,NULL,NULL,'5fc8a191-171d-4075-9431-9c8538bb4bfa'),(82,7,NULL,0,'cba84155-211e-4e4d-a142-b397d8051b99'),(83,7,NULL,0,'7505277f-bdb2-4702-a798-c62860ab8b2f'),(84,7,NULL,0,'e8c00b04-806e-426b-bd70-c551cfc2e195'),(85,7,NULL,0,'c8b78a04-6bdc-4da6-80cc-53d5d32b8064'),(86,7,NULL,0,'6ee16a7a-838d-462a-8388-b4aaf65bd65c'),(87,7,NULL,NULL,'5d49dcd4-cc35-4223-aa94-ecec548695b3'),(88,7,NULL,NULL,'ad99aa26-56ca-45b8-9f71-06f677964c2c'),(89,7,NULL,NULL,'c65da262-bd9c-4c2d-bb8e-3dbe9aecf3b1'),(114,12,NULL,1,'d4d0e340-6619-44a3-8550-aca8b8dce42a'),(115,12,NULL,2,'16bc4eba-3c98-4668-af7a-aa60cb231e93'),(116,12,NULL,3,'9e101a9e-359d-42f9-bcfc-788b173e0079'),(117,12,NULL,4,'e226ff16-1bef-458c-9211-b9fa119ec380'),(118,12,NULL,5,'877621a8-1651-4d88-a487-fb65751f5294'),(119,12,NULL,6,'95daf39f-0bd6-49d8-9457-22d6174a3498'),(125,7,NULL,NULL,'e9569682-4c83-4350-8e7f-17a2dcfec109');
/*!40000 ALTER TABLE `tb_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_model`
--

DROP TABLE IF EXISTS `tb_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tb_category` (`pid`),
  CONSTRAINT `fk_tb_category` FOREIGN KEY (`pid`) REFERENCES `tb_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_model`
--

LOCK TABLES `tb_model` WRITE;
/*!40000 ALTER TABLE `tb_model` DISABLE KEYS */;
INSERT INTO `tb_model` VALUES (7,2,'飞机',1),(8,4,'船',2),(12,3,'牛',2),(14,25,'test4-model',4),(15,3,'te',11);
/*!40000 ALTER TABLE `tb_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'origami'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 15:03:57
