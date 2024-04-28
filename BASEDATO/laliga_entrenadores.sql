CREATE DATABASE  IF NOT EXISTS `laliga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laliga`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laliga
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
-- Table structure for table `entrenadores`
--

DROP TABLE IF EXISTS `entrenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenadores` (
  `EntrenadorID` int NOT NULL AUTO_INCREMENT,
  `NombreEntrenador` varchar(100) DEFAULT NULL,
  `Nacionalidad` varchar(100) DEFAULT NULL,
  `FechaNacimiento` varchar(50) DEFAULT NULL,
  `FotoEntrenador` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EntrenadorID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores`
--

LOCK TABLES `entrenadores` WRITE;
/*!40000 ALTER TABLE `entrenadores` DISABLE KEYS */;
INSERT INTO `entrenadores` VALUES (1,'Xavi Hernandez','España','25 enero 1980','ENTRENADORES/Xavi.jpg'),(2,'Carlo Ancelotti','Italia','10 junio 1959','ENTRENADORES/Ancelotti.jpg'),(3,'Diego Simeone','Argentina','28 abril 1970','ENTRENADORES/Simeone.jpg'),(4,'Mauricio Pelegrino','Argentina','5 octubre 1971','ENTRENADORES/MauricioPellegrino.jpg'),(5,'Michel','España','30 octubre 1975','ENTRENADORES/Michel.jpg'),(6,'Ernesto Valverde','España','9 febrero 1964','ENTRENADORES/ErnestoValverde.jpg'),(7,'Manuel Pellegrini','Chile','16 septiembre 1953','ENTRENADORES/Pellegrini.jpg'),(8,'Imanol Alguacil','Español','4 julio 1971','ENTRENADORES/Alguacil.jpg'),(9,'García Pimienta','España','3 agosto 1974','ENTRENADORES/GarciaPimienta.jpg'),(10,'Rubén Baraja','España','11 julio 1974','ENTRENADORES/RubenBaraja.jpg'),(11,'José Bordalas','España','5 marzo 1964','ENTRENADORES/Bordalas.jpg'),(12,'Jagoba Arrasate','España','22 abril 1978','ENTRENADORES/Arrasate.jpg'),(13,'Luis García','España','1 diciembre 1972','ENTRENADORES/LuisGarcia.jpg'),(14,'Marcelino','España','14 agosto 1965','ENTRENADORES/Marcelino.jpg'),(15,'Iñigo Pérez','España','18 enero 1988','ENTRENADORES/IñigoPerez.jpg'),(16,'Quique Sanchez Flores','España','2 febrero 1965','ENTRENADORES/QuiqueSanchez.jpg'),(17,'Javier Aguirre','Mexico','1 diciembre 1958','ENTRENADORES/JavierAguirre.jpg'),(18,'Claudio Giraldez','España','24 febrero 1988','ENTRENADORES/ClaudioGiraldez.jpg'),(19,'Jose Ramon Sandoval','España','2 mayo 1968','ENTRENADORES/Sandoval.jpg'),(20,'Pepe Mel','España','28 febrero 1963','ENTRENADORES/PepeMel.jpg');
/*!40000 ALTER TABLE `entrenadores` ENABLE KEYS */;
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
