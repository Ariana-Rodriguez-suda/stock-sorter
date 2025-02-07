-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mi_base
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` enum('Pantalon','Camiseta','Camisa','Blusa','Falda','Vestido','Short','Abrigo') NOT NULL,
  `talla` enum('S','M','L') DEFAULT NULL,
  `genero` enum('Hombre','Mujer') DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Camiseta Nike','Camiseta','L','Hombre',29.50,14),(2,'Pantalón Slim Fit','Pantalon','L','Hombre',24.00,17),(3,'Camisa de Algodón','Camisa','S','Hombre',25.75,18),(4,'Blusa con Volantes','Blusa','M','Mujer',16.00,15),(5,'Falda Larga','Falda','L','Mujer',14.50,13),(6,'Vestido Corto de Verano','Vestido','M','Mujer',31.00,14),(7,'Short Deportivo','Short','S','Mujer',10.00,15),(8,'Abrigo Largo de Lana','Abrigo','M','Mujer',39.99,12),(9,'Camiseta Deportiva','Camiseta','M','Mujer',19.50,9),(10,'Pantalón de Tela Fino','Pantalon','L','Hombre',17.00,19),(11,'Camisa de Cuello Mao','Camisa','M','Hombre',21.50,14),(12,'Blusa de Seda','Blusa','S','Mujer',30.00,11),(13,'Falda Plisada','Falda','M','Mujer',15.80,13),(14,'Vestido de Noche','Vestido','M','Mujer',39.50,17),(15,'Short de Mezclilla','Short','L','Mujer',20.00,10),(16,'Abrigo de Piel Sintética','Abrigo','S','Hombre',40.99,11),(17,'Camiseta de Rayas','Camiseta','S','Hombre',22.00,6),(18,'Pantalón Cargo','Pantalon','M','Hombre',26.50,20),(19,'Camisa de Cuadros','Camisa','M','Hombre',30.00,9),(20,'Blusa de Manga Corta','Blusa','S','Mujer',28.65,17),(21,'Falda de Cuero','Falda','L','Mujer',30.00,5),(22,'Vestido de Algodón','Vestido','M','Mujer',33.00,12),(23,'Short de Pijama','Short','L','Hombre',6.50,14),(24,'Abrigo Trench','Abrigo','M','Hombre',45.00,6),(25,'Camiseta de Manga Corta','Camiseta','L','Hombre',11.50,17),(26,'Pantalón de Chándal','Pantalon','L','Hombre',27.00,13),(27,'Camisa Formal de Manga Larga','Camisa','M','Hombre',30.00,9),(28,'Blusa de Encaje','Blusa','S','Mujer',24.00,13),(29,'Falda con Cintura Alta','Falda','M','Mujer',14.50,15),(30,'Vestido  de Seda','Vestido','M','Mujer',35.50,8),(31,'Short de Cintura Alta','Short','S','Hombre',10.00,20),(32,'Abrigo de Plumas','Abrigo','M','Hombre',40.00,12),(33,'Camiseta Básica','Camiseta','L','Hombre',22.00,20),(34,'Pantalón Vaquero','Pantalon','M','Hombre',21.50,16),(35,'Camisa de Lino','Camisa','S','Hombre',29.00,11),(36,'Blusa Estampada','Blusa','S','Mujer',20.00,20),(37,'Falda de Cuadros','Falda','M','Mujer',14.50,15),(38,'Vestido Mini','Vestido','M','Mujer',37.00,11),(39,'Short de Playa','Short','L','Hombre',9.50,14),(40,'Abrigo Corto de Lana','Abrigo','M','Mujer',38.50,13);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-06 19:49:45
