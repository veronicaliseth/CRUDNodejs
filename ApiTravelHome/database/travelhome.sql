-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: travelhome
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `alojamiento`
--

DROP TABLE IF EXISTS `alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alojamiento` (
  `idAlojamiento` int(11) NOT NULL AUTO_INCREMENT,
  `huespedes` varchar(50) NOT NULL,
  `adultos` varchar(50) NOT NULL,
  `ninos` varchar(50) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  PRIMARY KEY (`idAlojamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alojamiento`
--

LOCK TABLES `alojamiento` WRITE;
/*!40000 ALTER TABLE `alojamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busqueda`
--

DROP TABLE IF EXISTS `busqueda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busqueda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `where` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL,
  `resident` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busqueda`
--

LOCK TABLES `busqueda` WRITE;
/*!40000 ALTER TABLE `busqueda` DISABLE KEYS */;
/*!40000 ALTER TABLE `busqueda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personaldata`
--

DROP TABLE IF EXISTS `personaldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personaldata` (
  `idPersonalData` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `postalCode` varchar(45) NOT NULL,
  `card` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL,
  `expirationDate` varchar(45) NOT NULL,
  `holdersName` varchar(45) NOT NULL,
  PRIMARY KEY (`idPersonalData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaldata`
--

LOCK TABLES `personaldata` WRITE;
/*!40000 ALTER TABLE `personaldata` DISABLE KEYS */;
/*!40000 ALTER TABLE `personaldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrocasa`
--

DROP TABLE IF EXISTS `registrocasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrocasa` (
  `idRegistroCasa` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `numeroTelefonico` int(11) NOT NULL,
  PRIMARY KEY (`idRegistroCasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrocasa`
--

LOCK TABLES `registrocasa` WRITE;
/*!40000 ALTER TABLE `registrocasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrocasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Anfitrion'),(2,'Viajero'),(3,'administrador');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idRol` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidoPaterno` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'1','1','1','$2b$10$.wgnC5qve4ZQZ8SWxTxbcO8P6ZNn1xHEXz6hDSGSXD5f/WFTVFq.K',1),(1,'1','1','1','$2b$10$.wgnC5qve4ZQZ8SWxTxbcO8P6ZNn1xHEXz6hDSGSXD5f/WFTVFq.K',2),(1,'1','1','1','$2b$10$.wgnC5qve4ZQZ8SWxTxbcO8P6ZNn1xHEXz6hDSGSXD5f/WFTVFq.K',3),(1,'2','2','2','$2b$10$PkoIwSKoKW5ptzrqoT91peM/3cfvTqAORpzQSV4jQobGv6bCFmcLq',4),(2,'carolina','bezares','carbez01','$2b$10$IBuMPPXW2SMj26O9Ztx7Hum1EtBDKJ7PMaf5sgfr3dfF/7.Ln9MaS',5),(1,'123','123','123','$2b$10$jLozvCn/2pceCeGTynUIf.4AxxcE8Z6Z/K1S6RP8TQnW/KEpmgPtW',6),(1,'asdasd','asdasdasd','asdasdasd','$2b$10$H3nZwzS4e/xTdH9GpkTOyushxD7hi/8loURynQOIXB9ZsRvzgH.VK',7),(2,'luis','solis','solis1','$2b$10$6oUuqqFevl7T1c6cC8fW7eqsMxLYnzZPca4nWRbU7/cMgr3W.bPOu',8),(2,'Karol Yareni','Moctezuma','karol0505','$2b$10$VCEAEiTyyGjhyh4Vm9bm5uSDsy6VJfSCH4FCrzc0hngVmKqvh8p3i',9),(1,'Veronica Liseth','Martínez Toledo','Vero01','$2b$10$G23bjMlSqZVWDbz2D34mX.zkz6ODg3y/HdC7TnzpCn06zXFaiJ6Ie',10),(2,'manuel','perez','manu','$2b$10$kNY2Zw6p.gsHe0Sd.QDzneN9bqc7NitTD3UsK47EnIyvAs8OZlrqW',11),(2,'rosa','perez','rosaa','$2b$10$ms2ux0hXewH3Mgpuq0mHguMdJ2Cz5bMse6st.o9elGxggjUtCuDR6',12),(2,'carlos','lopez','carlos','$2b$10$3zY8i//T.UxhPIOpfcltJu81/S4a8lGohKLWjEHG6Vd8z27UMECym',13);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 11:59:30
