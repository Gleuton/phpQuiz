-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quiz
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `tb_option`
--

DROP TABLE IF EXISTS `tb_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_option` (
  `id_option` int(11) NOT NULL AUTO_INCREMENT,
  `option` varchar(150) CHARACTER SET latin1 NOT NULL,
  `id_question` int(11) NOT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_option`),
  KEY `fk_tb_option_tb_question_idx` (`id_question`),
  CONSTRAINT `fk_tb_option_tb_question` FOREIGN KEY (`id_question`) REFERENCES `tb_question` (`id_question`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_option`
--

LOCK TABLES `tb_option` WRITE;
/*!40000 ALTER TABLE `tb_option` DISABLE KEYS */;
INSERT INTO `tb_option` VALUES (1,'123',1,0),(2,'213',1,0),(3,'142',1,0),(4,'214',1,1),(5,'Syntax error',1,0),(6,'one',2,0),(7,'two',2,0),(8,'three',2,1),(9,'four',2,0),(10,'a boolean',3,0),(11,'an operator',3,1),(12,'a function',3,0),(13,'a language construct',3,0),(14,'a class magic',3,0),(15,'a scalar',4,0),(16,'an expression',4,0),(17,'a boolean',4,0),(18,'all of the above',4,1),(19,'abc',5,0),(20,'cd',5,1),(21,'0d',5,0),(22,'(A)(B)(C)',6,0),(23,'(A)(B)(D)',6,0),(24,'(B)(C)(D)',6,0),(25,'(B)(C)(E)',6,1),(26,'(C)(D)(E)',6,0),(27,'$_SERVER',7,0),(28,'$_GET',7,0),(29,'$_FILES',7,1),(30,'$_POST',7,0),(31,'$_ENV',7,0),(32,'There is no difference.',8,0),(33,'Print has a return value, echo does not',8,1),(34,'Echo has a return value, print does not',8,0),(35,'Print buffers the output, while echo does not',8,0),(36,'None of the above',8,0),(37,'1',9,0),(38,'3',9,0),(39,'5',9,1),(40,'20',9,0),(41,'7',9,0),(42,'1',10,0),(43,'3',10,1),(44,'2',10,0),(45,'4',10,0),(46,'-1',10,0),(47,'220.2231',11,0),(48,'22.2231',11,1),(49,'22.2,231',11,0),(50,'56.2',11,0),(51,'\"first\"',12,0),(52,'\"second\"',12,1),(53,'an empty string',12,0),(54,'an error',12,0),(55,'(B)(C)',13,1),(56,'(A)(B)',13,0),(57,'(A)(D)',13,0),(58,'(B)(D)',13,0),(59,'(C)(D)',13,0),(60,'(C)(E)',13,0),(61,'copy($source_file, $destination_file)',14,0),(62,'copy($destination_file, $source_file);',14,0),(63,'stream_copy_to_stream($source_file, $destination_file);',14,1),(64,'stream_copy_to_stream($destination_file, $source_file);',14,0),(65,'stream_bucket_prepend($source_file, $destination_file);',14,0),(66,'ini_set(\"default_socket_timeout\", 10);',15,0),(67,'stream_read_timeout($stream, 10);',15,0),(68,'Specify the timeout as the 5th parameter to the fsockopen() function used to open a stream',15,0),(69,'stream_set_timeout($stream, 10);',15,1),(70,'None of the above',15,0),(71,'ob_start()',16,0),(72,'set_write_buffer()',16,0),(73,'stream_set_write_buffer()',16,1),(74,'Change the output_buffering INI setting via ini_set() function',16,0),(75,'The filename of the current script.',17,0),(76,'The full path to the current script',17,1),(77,'The URL of the request made',17,0),(78,'The path to the main script.',17,0),(79,'(B)(C)',18,0),(80,'(A)(B)',18,1),(81,'(A)(D)',18,0),(82,'(B)(D)',18,0),(83,'(C)(D)',18,0),(84,'(A)(C)',18,0),(86,'Encapsulation',19,1),(87,'Alternative to classes',19,0),(88,'Improved performance',19,0),(89,'All of the above',19,0),(90,'Use classes to encapsulate code and represent objects, and namespaces to avoid symbol name collisions',20,1),(91,'Use classes for performance-sensitive code, and namespaces when readability matters more',20,0),(92,'Use namespaces for performance-sensitive code, and classes when readability matters more',20,0),(93,'Always use them; namespaces are always superior to classes',20,0);
/*!40000 ALTER TABLE `tb_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-11 13:20:52
