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
-- Table structure for table `tb_question`
--

DROP TABLE IF EXISTS `tb_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET latin1 NOT NULL,
  `code` text CHARACTER SET latin1,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_question`
--

LOCK TABLES `tb_question` WRITE;
/*!40000 ALTER TABLE `tb_question` DISABLE KEYS */;
INSERT INTO `tb_question` VALUES (1,'What is the output of the following code? \r','echo \'1\' . (print \'2\') + 3'),(2,'What is the output of the following code?','$a = 3;\nswitch ($a) {\ncase 1: echo \'one\'; break;\ncase 2: echo \'two\'; break;\ndefault: echo \'four\'; break;\ncase 3: echo \'three\'; break;\n}'),(3,'What is \"instanceof\" an example of?',NULL),(4,'Which of the following may be used in conjunction with CASE inside a SWITCH statement?',NULL),(5,'What is the output of the following code?','$a = \'a\'; $b = \'b\';\necho isset($c) ? $a.$b.$c : ($c = \'c\').\'d\';'),(6,'Which of the following are valid identifiers? (Choose 3)','A. function 4You() { }\nB. function _4You() { }\nC. function object() { }\nD. $1 = \"Hello\";\nE. $_1 = \"Hello World\";'),(7,'What super-global should be used to access information about uploaded files via a POST request?\n',NULL),(8,'What is the difference between \"print\" and \"echo\"?',NULL),(9,'What is the output of the following code?','echo \"1\" + 2 * \"0x02\";'),(10,'What is the result of the following bitwise operation in PHP?','1 ^ 2'),(11,'What is the output of the following code?','echo \"22\" + \"0.2\", 23 . 1;'),(12,'What is the output of the following code?','$first = \"second\";\n$second = \"first\";\necho $$$first;'),(13,'Which of the following code snippets DO NOT write the exact content of the file \"source.txt\" to \"target.txt\"? (Choose 2)','A. file_put_contents(\"target.txt\", fopen(\"source.txt\", \"r\"));\nB. file_put_contents(\"target.txt\", readfile(\"source.txt\"));\nC. file_put_contents(\"target.txt\", join(file(\"source.txt\"), \"\\n\"));\nD. file_put_contents(\"target.txt\", file_get_contents(\"source.txt\"));\nE. $handle = fopen(\"target.txt\", \"w+\"); fwrite($handle, file_get_contents(\"source.txt\")); fclose($handle);'),(14,'What is the recommended method of copying data between two opened files?',NULL),(15,'Which of the following will set a 10 seconds read timeout for a stream?',NULL),(16,'What function allows resizing of PHP\'s file write buffer?',NULL),(17,'What does the __FILE__ constant contain?',NULL),(18,'What can prevent PHP from being able to open a file on the hard drive? (Choose 2)','A. File system permissions\nB. File is outside of open_basedir\nC. File is inside the /tmp directory.\nD. PHP is running in CGI mode.'),(19,'What purpose do namespaces fulfill?',NULL),(20,'When would you use classes and when would you use namespaces?',NULL);
/*!40000 ALTER TABLE `tb_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-11 13:20:51
