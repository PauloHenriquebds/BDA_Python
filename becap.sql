-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: academiaturmac
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` char(11) NOT NULL,
  `telefone` char(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João Pedro','13313313313','81818181818','Softex'),(2,'Gabriel Bandeira','76767676767','83838383838','Alberto'),(3,'Alyff','55555555555','99999999999','Casa da Mãe Joana'),(4,'Luiz','44444444444','11111111111','Afogados'),(5,'Esthefany','33333333333','22222222222','Curado'),(6,'Menino Ney','32322312314','11111111111','Paris'),(7,'Menino Ney','32322312314','11111111111','Paris');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `Id_Funcionario` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `CPF` char(11) NOT NULL,
  `Departamento` int NOT NULL,
  `Salario` decimal(8,2) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`Id_Funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Lulinha','13131313131',13,1509.95,'luli@gmail.com'),(2,'Bozo','17221722172',22,2549.55,NULL),(4,'Jordana','15658479563',1,6500.00,NULL),(5,'Estefany','87895684230',1,1518.45,NULL),(6,'Maria','11321251768',1,9500.00,NULL),(7,'Erick','37895684238',1,4000.00,NULL),(8,'Kevin','01895684239',1,2300.00,NULL),(9,'Yasmin','27895684236',6,1150.00,NULL),(10,'Victo','96755684231',2,7000.00,NULL);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculado`
--

DROP TABLE IF EXISTS `matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculado` (
  `Id_Matriculado` int NOT NULL AUTO_INCREMENT,
  `fk_matricula` int DEFAULT NULL,
  PRIMARY KEY (`Id_Matriculado`),
  KEY `fk_matricula` (`fk_matricula`),
  CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`fk_matricula`) REFERENCES `alunos` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculado`
--

LOCK TABLES `matriculado` WRITE;
/*!40000 ALTER TABLE `matriculado` DISABLE KEYS */;
/*!40000 ALTER TABLE `matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidades`
--

DROP TABLE IF EXISTS `modalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidades` (
  `id_Modalidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `duracao` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_Modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidades`
--

LOCK TABLES `modalidades` WRITE;
/*!40000 ALTER TABLE `modalidades` DISABLE KEYS */;
INSERT INTO `modalidades` VALUES (1,'Musculacao','10h'),(2,'Dança','3h'),(3,'Natação','21h'),(4,'Fit Dance','5h'),(5,'CrossFit','10h'),(6,'Futbol','2h');
/*!40000 ALTER TABLE `modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_Personal` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `endreco` varchar(255) NOT NULL,
  `telefone` char(11) NOT NULL,
  `cref` char(10) NOT NULL,
  PRIMARY KEY (`id_Personal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Luquinha','88888888888','lplp@gmail.com','Mustardinha','32323232323','1010101010'),(2,'José','00000000000','jjj@gmail.com','Mustardinha','44444444444','4040404040'),(3,'Felipe','77777777777','fff@gmail.com','Mustardinha','90909090909','5050505050'),(4,'Keyly','23322332322','kkk@gmail.com','Mustardinha','88888888888','8080808080'),(5,'lorenzo','32123121312','lolo@gmail.com','Mustardinha','18181818181','7676767676');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17 15:33:54
