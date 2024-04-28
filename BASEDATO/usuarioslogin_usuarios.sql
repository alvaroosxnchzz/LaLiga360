CREATE DATABASE  IF NOT EXISTS `usuarioslogin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `usuarioslogin`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: usuarioslogin
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `equipos_favoritos` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'koke','admin@gmail.com','admin123','697898574','admin','[null, null, null, null, null, null, null, null, null, null, null]'),(2,'Usuario de Prueba','usuario@example.com','password123','123456789','usuario',NULL),(3,'david','locococo@example.com','password123','123456789','admin',NULL),(5,'usuario','usuario12@example.com','usuario','123456789','admin',NULL),(8,'Alvaro','alvaro@gmail.com','alvaro123','123456789','Admin',NULL),(9,'Alvaro ','koketa@gmail.com','1234','123456789','Admin',NULL),(10,'Alvaro Sanchez','kokeprivao@gmail.com','123','+34697898574','Admin',NULL),(13,'Alvaro Sanchez','kokeprivao@gmail.comlakaka','1234','+34697898574','Admin',NULL),(15,'Alvaro Sanchez','kokeprivao@gmail.comlakaksdas','123','+34697898574','Admin',NULL),(18,'Alvaro Sanchez','asrffdd@gmail.com','aaa','+34697898574','Admin',NULL),(20,'Alvaro Sanchez','54445@gmail.com','asd','+34697898574','Admin',NULL),(21,'admin','admin@admin.com','admin123','+34697898574','Admin',NULL),(22,'David Ginola','ginola@ginola.com','123','123456789','Admin',NULL),(23,'admin','admin2@admin.com','1234','+34697898574','Admin',NULL),(24,'aa','aa@aa.aa','aaaaaa','aa','admin',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19 13:07:47
