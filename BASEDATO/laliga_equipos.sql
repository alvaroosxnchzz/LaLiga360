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
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `EquipoID` int NOT NULL AUTO_INCREMENT,
  `Abrebiatura` varchar(3) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Posicion` int DEFAULT NULL,
  `Puntos` int DEFAULT NULL,
  `PartidosJugados` int DEFAULT NULL,
  `PartidosGanados` int DEFAULT NULL,
  `PartidosEmpatados` int DEFAULT NULL,
  `PartidosPerdidos` int DEFAULT NULL,
  `GolesFavor` int DEFAULT NULL,
  `GolesContra` int DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  `Fundacion` int DEFAULT NULL,
  `Estadio` varchar(150) DEFAULT NULL,
  `Escudo` varchar(200) DEFAULT NULL,
  `FotoEstadio` varchar(200) DEFAULT NULL,
  `FotoLiga` varchar(200) DEFAULT NULL,
  `EntrenadorID` int DEFAULT NULL,
  PRIMARY KEY (`EquipoID`),
  KEY `EntrenadorID` (`EntrenadorID`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`EntrenadorID`) REFERENCES `entrenadores` (`EntrenadorID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'BCF','Barcelona',2,67,30,20,7,3,61,20,'Barcelona',1899,'Spotify Camp Nou','ESCUDOS/barcelona.png','ESTADIOS/campnou.jpg','ESCUDOS/LaLiga.png',1),(2,'RMF','Real Madrid',1,75,30,23,6,1,66,20,'Madrid',1902,'Santiago Bernabeu','ESCUDOS/madrid.png','ESTADIOS/bernabeu.jpg','ESCUDOS/LaLiga.png',2),(3,'ATM','Atlético de Madrid',4,58,30,18,4,8,56,35,'Madrid',1903,'Wanda Metropolitano','ESCUDOS/atletico.png','ESTADIOS/metropolitano.jpg','ESCUDOS/LaLiga.png',3),(4,'CAD','Cadíz',18,25,30,2,8,20,30,60,'Cádiz',1910,'Nuevo Mirandilla','ESCUDOS/cadiz.png','ESTADIOS/mirandilla.jpg','ESCUDOS/LaLiga.png',4),(5,'GIR','Girona',3,65,30,20,5,5,62,36,'Girona',1930,'Montilivi','ESCUDOS/girona.png','ESTADIOS/montilivi.jpg','ESCUDOS/LaLiga.png',5),(6,'ATH','Athletic Club de Bilbao',5,56,30,16,8,6,50,35,'Bilbao',1898,'San Mamés','ESCUDOS/bilbao.png','ESTADIOS/sanmames.jpg','ESCUDOS/LaLiga.png',6),(7,'BET','Real Betis',8,42,30,11,6,13,36,43,'Sevilla',1907,'Benito Villamarín','ESCUDOS/betis.png','ESTADIOS/benitovillamarin.jpg','ESCUDOS/LaLiga.png',7),(8,'RSO','Real Sociedad',6,49,30,13,10,7,43,31,'San Sebastián',1909,'Anoeta','ESCUDOS/real.png','ESTADIOS/realsociedad.jpg','ESCUDOS/LaLiga.png',8),(9,'UDL','Union Deportiva Las Palmas',12,37,30,10,7,13,29,33,'Las Palmas De Gran Canaria',1949,'Gran Canaria','ESCUDOS/palmas.png','ESTADIOS/grancanaria.jpg','ESCUDOS/LaLiga.png',9),(10,'VCF','Valencia CF',7,44,30,12,8,10,33,32,'Valencia',1919,'Mestalla','ESCUDOS/valencia.png','ESTADIOS/mestalla.jpg','ESCUDOS/LaLiga.png',10),(11,'GET','Getafe CF',11,38,30,9,11,10,37,43,'Getafe',1983,'Coliseum Alfonso Pérez','ESCUDOS/getafe.png','ESTADIOS/coliseum.jpg','ESCUDOS/LaLiga.png',11),(12,'OSA','Osasuna',9,39,30,11,6,13,36,43,'Pamplona',1920,'El Sadar','ESCUDOS/osasuna.png','ESTADIOS/elsadar.jpg','ESCUDOS/LaLiga.png',12),(13,'ALA','Deportivo Alavés',13,32,30,8,8,14,26,36,'Vitoria',1921,'Mendizorroza','ESCUDOS/alaves.png','ESTADIOS/mendizorroza.jpg','ESCUDOS/LaLiga.png',13),(14,'VIL','Villarreal FC',10,38,30,10,8,12,48,53,'Villarreal',1923,'Estadio de la Cerámica','ESCUDOS/villarreal.png','ESTADIOS/laceramica.jpg','ESCUDOS/LaLiga.png',14),(15,'RAY','Rayo Vallecano',16,30,30,6,12,12,25,35,'Puente de Vallecas',1924,'Vallecas','ESCUDOS/rayo.png','ESTADIOS/vallecas.jpg','ESCUDOS/LaLiga.png',15),(16,'SEV','Sevilla FC',14,31,30,7,10,13,37,44,'Sevilla',1890,'Ramón Sánchez Pizjuán','ESCUDOS/sevilla.png','ESTADIOS/sanchezpizjuan.jpg','ESCUDOS/LaLiga.png',16),(17,'MLL','Mallorca',15,31,30,6,13,11,25,35,'Palma de Mallorca',1916,'Estadi Mallorca Son Moix','ESCUDOS/mallorca.png','ESTADIOS/sonmoix.jpg','ESCUDOS/LaLiga.png',17),(18,'CEL','RC Celta',17,28,30,6,10,14,32,44,'Vigo',1923,'Abanca Balaídos','ESCUDOS/celta.png','ESTADIOS/balaidos.jpg','ESCUDOS/LaLiga.png',18),(19,'GRA','Granada CF',19,14,30,2,8,20,30,60,'Granada',1931,'Nuevo Los Cármenes','ESCUDOS/granada.png','ESTADIOS/nuevocarmenes.jpg','ESCUDOS/LaLiga.png',19),(20,'ALM','Almería',20,13,30,1,10,19,28,60,'Almeria',1989,'Juegos del Mediterráneo','ESCUDOS/almeria.png','ESTADIOS/almeria.jpg','ESCUDOS/LaLiga.png',20);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
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
