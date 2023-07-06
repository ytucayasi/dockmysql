-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dockdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `categorias`
--
USE dockdb;

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Computadoras'),(2,'Componentes de PC'),(3,'Periféricos'),(4,'Almacenamiento'),(5,'Accesorios');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','Calle Principal 123','1234567890'),(2,'María Rodríguez','Avenida Central 456','0987654321'),(3,'Pedro Gómez','Carrera 7 890','9876543210'),(4,'Ana López','Calle Secundaria 456','4567890123'),(5,'Luis Torres','Avenida Principal 789','0123456789'),(6,'Laura González','Carrera 3 234','9870123456'),(7,'Carlos Sánchez','Calle Principal 567','3456789012'),(8,'Sofía Ramírez','Avenida Central 890','8901234567'),(9,'Javier Vargas','Carrera 8 123','2345678901'),(10,'Marta Fernández','Calle Secundaria 890','6789012345'),(11,'Roberto Herrera','Avenida Principal 234','9012345678'),(12,'Carolina Castro','Carrera 4 567','5678901234'),(13,'Gabriel Morales','Calle Principal 901','3456789012'),(14,'Valentina Ríos','Avenida Central 234','7890123456'),(15,'Andrés Mendoza','Carrera 9 567','0123456789'),(16,'Fernanda Silva','Calle Secundaria 901','4567890123'),(17,'Diego Araya','Avenida Principal 567','8901234567'),(18,'Camila Navarro','Carrera 5 901','1234567890'),(19,'Ricardo Ortega','Calle Principal 234','9012345678'),(20,'Natalia Guzmán','Avenida Central 567','2345678901'),(21,'Alejandro Paredes','Carrera 1 901','6789012345'),(22,'Isabella Cordero','Calle Secundaria 567','0123456789'),(23,'Andrea Morales','Avenida Principal 901','3456789012'),(24,'Sebastián Vargas','Carrera 6 234','7890123456'),(25,'Daniela Vega','Calle Principal 567','2345678901'),(26,'Felipe Rojas','Avenida Central 901','6789012345'),(27,'Valeria Méndez','Carrera 2 234','0123456789'),(28,'Héctor Castro','Calle Secundaria 567','3456789012'),(29,'Sara Núñez','Avenida Principal 901','7890123456'),(30,'Gustavo Peralta','Carrera 7 234','2345678901');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_compra` date NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2020-01-01',8),(2,'2020-01-01',3),(3,'2020-01-01',10),(4,'2020-01-01',4),(5,'2020-02-01',2),(6,'2020-02-01',10),(7,'2020-02-01',6),(8,'2020-02-01',2),(9,'2020-03-01',5),(10,'2020-03-01',10),(11,'2020-03-01',5),(12,'2020-03-01',3),(13,'2020-04-01',7),(14,'2020-04-01',4),(15,'2020-04-01',7),(16,'2020-04-01',10),(17,'2020-05-01',2),(18,'2020-05-01',1),(19,'2020-05-01',5),(20,'2020-05-01',10),(21,'2020-06-01',3),(22,'2020-06-01',6),(23,'2020-06-01',1),(24,'2020-06-01',1),(25,'2020-07-01',7),(26,'2020-07-01',3),(27,'2020-07-01',8),(28,'2020-07-01',3),(29,'2020-08-01',7),(30,'2020-08-01',10),(31,'2020-08-01',7),(32,'2020-08-01',5),(33,'2020-09-01',10),(34,'2020-09-01',2),(35,'2020-09-01',6),(36,'2020-09-01',4),(37,'2020-10-01',5),(38,'2020-10-01',2),(39,'2020-10-01',7),(40,'2020-10-01',1),(41,'2020-11-01',8),(42,'2020-11-01',2),(43,'2020-11-01',10),(44,'2020-11-01',6),(45,'2020-12-01',5),(46,'2020-12-01',4),(47,'2020-12-01',10),(48,'2020-12-01',1);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_compras`
--

DROP TABLE IF EXISTS `det_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det_compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `estado` char(1) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `compra_id` (`compra_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `det_compras_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`),
  CONSTRAINT `det_compras_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_compras`
--

LOCK TABLES `det_compras` WRITE;
/*!40000 ALTER TABLE `det_compras` DISABLE KEYS */;
INSERT INTO `det_compras` VALUES (1,1,1700.00,0.18,'B',8,9),(2,2,190.00,0.18,'N',16,24),(3,3,450.00,0.18,'M',43,95),(4,4,1300.00,0.18,'B',22,16),(5,1,40.00,0.18,'B',41,61),(6,3,290.00,0.18,'N',6,85),(7,2,29.00,0.18,'B',23,72),(8,1,130.00,0.18,'B',39,51),(9,1,800.00,0.18,'N',34,15),(10,4,40.00,0.18,'B',15,97),(11,1,190.00,0.18,'N',47,25),(12,2,10.00,0.18,'B',24,70),(13,3,400.00,0.18,'N',28,21),(14,2,20.00,0.18,'B',42,63),(15,3,5.00,0.18,'B',26,71),(16,1,2300.00,0.18,'N',46,90),(17,1,190.00,0.18,'N',37,58),(18,4,1200.00,0.18,'B',21,6),(19,3,180.00,0.18,'B',47,55),(20,2,340.00,0.18,'N',41,23),(21,1,90.00,0.18,'B',25,86),(22,3,900.00,0.18,'N',32,18),(23,1,1400.00,0.18,'B',12,1),(24,2,10.00,0.18,'B',46,75),(25,1,300.00,0.18,'N',36,23),(26,3,350.00,0.18,'B',41,54),(27,1,900.00,0.18,'B',28,10),(28,2,190.00,0.18,'N',23,43),(29,3,50.00,0.18,'M',25,66),(30,4,1400.00,0.18,'B',45,4),(31,3,950.00,0.18,'N',27,18),(32,2,900.00,0.18,'B',12,10),(33,1,500.00,0.18,'N',2,32),(34,2,800.00,0.18,'M',28,20),(35,1,100.00,0.18,'N',20,46),(36,1,1200.00,0.18,'B',19,19),(37,1,130.00,0.18,'B',7,51),(38,2,140.00,0.18,'B',17,48),(39,3,130.00,0.18,'B',39,30),(40,1,180.00,0.18,'N',14,43),(41,2,20.00,0.18,'B',9,72),(42,1,15.00,0.18,'B',13,68),(43,3,330.00,0.18,'B',19,36),(44,1,70.00,0.18,'N',23,52),(45,2,250.00,0.18,'B',32,39),(46,1,340.00,0.18,'B',41,23),(47,1,10.00,0.18,'N',21,77),(48,1,240.00,0.18,'B',45,87),(49,2,380.00,0.18,'B',23,54),(50,1,120.00,0.18,'N',4,83),(51,3,30.00,0.18,'B',25,74),(52,1,10.00,0.18,'B',10,79);
/*!40000 ALTER TABLE `det_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_ventas`
--

DROP TABLE IF EXISTS `det_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `det_ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_id` (`venta_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `det_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  CONSTRAINT `det_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_ventas`
--

LOCK TABLES `det_ventas` WRITE;
/*!40000 ALTER TABLE `det_ventas` DISABLE KEYS */;
INSERT INTO `det_ventas` VALUES (1,3,10.00,1000.00,0.18,9,8),(2,4,20.00,1600.00,0.18,11,11),(3,2,30.00,60.00,0.18,22,61),(4,1,20.00,25.00,0.18,23,73),(5,3,10.00,90.00,0.18,9,57),(6,1,30.00,450.00,0.18,25,31),(7,2,20.00,180.00,0.18,16,51),(8,3,10.00,1800.00,0.18,14,14),(9,1,30.00,100.00,0.18,17,50),(10,3,20.00,20.00,0.18,16,65),(11,4,10.00,550.00,0.18,8,59),(12,3,30.00,190.00,0.18,11,83),(13,4,10.00,950.00,0.18,23,15),(14,3,10.00,70.00,0.18,23,84),(15,2,30.00,60.00,0.18,28,74),(16,1,30.00,120.00,0.18,14,35),(17,4,10.00,2000.00,0.18,19,12),(18,2,20.00,1000.00,0.18,27,20),(19,1,20.00,800.00,0.18,16,26),(20,3,10.00,600.00,0.18,19,21),(21,4,20.00,400.00,0.18,21,92),(22,1,30.00,80.00,0.18,10,69),(23,2,20.00,20.00,0.18,14,76),(24,3,10.00,50.00,0.18,11,78),(25,2,30.00,130.00,0.18,11,56),(26,4,10.00,20.00,0.18,8,73),(27,1,10.00,1500.00,0.18,3,16),(28,2,30.00,50.00,0.18,22,74),(29,1,20.00,80.00,0.18,20,66),(30,3,30.00,30.00,0.18,12,80),(31,2,20.00,50.00,0.18,9,78),(32,2,30.00,1100.00,0.18,11,10),(33,3,20.00,750.00,0.18,23,44),(34,2,20.00,1900.00,0.18,8,17),(35,3,10.00,250.00,0.18,16,24),(36,2,20.00,1850.00,0.18,5,5),(37,2,10.00,250.00,0.18,27,24),(38,2,30.00,1600.00,0.18,15,11),(39,3,10.00,90.00,0.18,31,50),(40,2,20.00,1400.00,0.18,9,19),(41,1,20.00,1100.00,0.18,18,18),(42,2,20.00,1600.00,0.18,23,11),(43,3,10.00,300.00,0.18,48,58),(44,2,10.00,1900.00,0.18,26,5),(45,2,20.00,25.00,0.18,42,75),(46,3,20.00,100.00,0.18,21,52),(47,2,20.00,250.00,0.18,53,55),(48,2,20.00,20.00,0.18,52,70),(49,1,10.00,400.00,0.18,30,53),(50,3,20.00,50.00,0.18,29,69),(51,2,10.00,150.00,0.18,45,60);
/*!40000 ALTER TABLE `det_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `monto_ideal` decimal(10,2) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop ASUS ROG Zephyrus G14','ASUS',1499.99,1),(2,'Desktop HP Pavilion Gaming','HP',1699.99,1),(3,'Mini PC Intel NUC','Intel',799.99,1),(4,'Laptop Lenovo ThinkPad X1 Carbon','Lenovo',1499.99,1),(5,'All-in-One HP Envy 32','HP',1799.99,1),(6,'Laptop Acer Predator Helios 300','Acer',1299.99,1),(7,'Desktop Dell XPS Tower','Dell',1999.99,1),(8,'Mini PC Gigabyte BRIX','Gigabyte',899.99,1),(9,'Laptop MSI GS66 Stealth','MSI',1799.99,1),(10,'All-in-One Lenovo IdeaCentre AIO 5i','Lenovo',999.99,1),(11,'Laptop HP Spectre x360','HP',1499.99,1),(12,'Desktop Corsair Vengeance i7200','Corsair',1899.99,1),(13,'Mini PC ASRock DeskMini','ASRock',849.99,1),(14,'Laptop Dell XPS 15','Dell',1599.99,1),(15,'All-in-One MSI PRO 22XT 10M','MSI',899.99,1),(16,'Laptop Lenovo Legion 5','Lenovo',1399.99,1),(17,'Desktop HP EliteDesk 800 G6','HP',1799.99,1),(18,'Mini PC Intel NUC 11','Intel',999.99,1),(19,'Laptop Acer Swift 3','Acer',1299.99,1),(20,'All-in-One Dell Inspiron 24','Dell',899.99,1),(21,'Procesador Intel Core i9-10900K','Intel',499.99,2),(22,'Tarjeta gráfica NVIDIA GeForce RTX 3080','NVIDIA',799.99,2),(23,'Placa madre ASUS ROG Strix Z590-E','ASUS',349.99,2),(24,'Memoria RAM Corsair Vengeance RGB Pro 32GB','Corsair',199.99,2),(25,'Disco duro SSD Samsung 980 PRO 1TB','Samsung',199.99,2),(26,'Procesador AMD Ryzen 9 5950X','AMD',699.99,2),(27,'Tarjeta gráfica AMD Radeon RX 6900 XT','AMD',899.99,2),(28,'Placa madre Gigabyte Aorus X570 Master','Gigabyte',299.99,2),(29,'Memoria RAM Kingston HyperX Fury 16GB','Kingston',99.99,2),(30,'Disco duro SSD Western Digital Black SN750 1TB','Western Digital',149.99,2),(31,'Procesador AMD Ryzen 7 5800X','AMD',399.99,2),(32,'Tarjeta gráfica MSI GeForce RTX 3070','MSI',599.99,2),(33,'Placa madre ASRock B550 Steel Legend','ASRock',199.99,2),(34,'Memoria RAM Crucial Ballistix 32GB','Crucial',149.99,2),(35,'Disco duro SSD Toshiba XG6 512GB','Toshiba',99.99,2),(36,'Procesador Intel Core i7-10700K','Intel',349.99,2),(37,'Tarjeta gráfica ZOTAC GeForce RTX 3060 Ti','ZOTAC',499.99,2),(38,'Placa madre MSI MAG B550 TOMAHAWK','MSI',179.99,2),(39,'Memoria RAM HyperX Predator RGB 64GB','HyperX',299.99,2),(40,'Disco duro HDD Hitachi Ultrastar 4TB','Hitachi',129.99,2),(41,'Teclado mecánico Razer BlackWidow Elite','Razer',129.99,3),(42,'Mouse gamer Logitech G502 HERO','Logitech',79.99,3),(43,'Auriculares inalámbricos SteelSeries Arctis Pro','SteelSeries',199.99,3),(44,'Monitor curvo Samsung Odyssey G7','Samsung',699.99,3),(45,'Webcam HD Microsoft LifeCam HD-3000','Microsoft',39.99,3),(46,'Teclado mecánico Corsair K70 RGB','Corsair',119.99,3),(47,'Mouse gamer Razer DeathAdder V2','Razer',69.99,3),(48,'Auriculares inalámbricos Logitech G733','Logitech',149.99,3),(49,'Monitor curvo LG UltraGear 34GN850-B','LG',999.99,3),(50,'Webcam HD Logitech C920S','Logitech',79.99,3),(51,'Teclado mecánico HyperX Alloy Elite 2','HyperX',139.99,3),(52,'Mouse gamer SteelSeries Rival 600','SteelSeries',89.99,3),(53,'Auriculares inalámbricos Sony WH-1000XM4','Sony',349.99,3),(54,'Monitor curvo ASUS TUF Gaming VG27WQ1B','ASUS',399.99,3),(55,'Webcam HD Logitech Brio','Logitech',199.99,3),(56,'Teclado mecánico Ducky One 2 Mini','Ducky',99.99,3),(57,'Mouse gamer Razer Basilisk V2','Razer',79.99,3),(58,'Auriculares inalámbricos JBL Quantum 800','JBL',199.99,3),(59,'Monitor curvo MSI Optix MAG341CQ','MSI',499.99,3),(60,'Webcam HD Razer Kiyo','Razer',99.99,3),(61,'Mochila para laptop Targus','Targus',49.99,4),(62,'Maletín para laptop Samsonite','Samsonite',79.99,4),(63,'Base de enfriamiento para laptop Cooler Master','Cooler Master',29.99,4),(64,'Hub USB Anker 7 puertos','Anker',19.99,4),(65,'Cable HDMI 2.0','AmazonBasics',9.99,4),(66,'Mochila para laptop SwissGear','SwissGear',59.99,4),(67,'Maletín para laptop Case Logic','Case Logic',39.99,4),(68,'Base de enfriamiento para laptop Havit','Havit',24.99,4),(69,'Hub USB Satechi 10 puertos','Satechi',39.99,4),(70,'Cable DisplayPort 1.4','Cable Matters',14.99,4),(71,'Adaptador Bluetooth 5.0','UGREEN',9.99,4),(72,'Soporte para laptop Nulaxy','Nulaxy',29.99,4),(73,'Estuche para auriculares Hardcase','Hardcase',14.99,4),(74,'Teclado inalámbrico Logitech K380','Logitech',39.99,4),(75,'Mousepad SteelSeries QcK','SteelSeries',14.99,4),(76,'Cable USB-C a USB-A','Belkin',12.99,4),(77,'Almohadilla de muñeca Ergonomic','Ergonomic',19.99,4),(78,'Soporte para monitor HUANUO','HUANUO',29.99,4),(79,'Cable de red Ethernet Cat 7','Jadaol',19.99,4),(80,'Adaptador de corriente universal','LOETAD',24.99,4),(81,'Microsoft Office 365 Personal','Microsoft',69.99,5),(82,'Adobe Creative Cloud suscripción anual','Adobe',599.99,5),(83,'Windows 10 Home','Microsoft',139.99,5),(84,'Antivirus Norton Security Deluxe','Norton',49.99,5),(85,'Autodesk AutoCAD suscripción mensual','Autodesk',299.99,5),(86,'Microsoft Office 365 Home','Microsoft',99.99,5),(87,'Adobe Photoshop','Adobe',249.99,5),(88,'Windows 10 Pro','Microsoft',199.99,5),(89,'Antivirus McAfee Total Protection','McAfee',59.99,5),(90,'Autodesk Revit suscripción anual','Autodesk',2399.99,5),(91,'Gestor de contraseñas LastPass','LastPass',29.99,5),(92,'Software de edición de video DaVinci Resolve','Blackmagic Design',299.99,5),(93,'Sistema operativo macOS Big Sur','Apple',0.00,5),(94,'Antivirus Avast Premium Security','Avast',69.99,5),(95,'Software de diseño gráfico CorelDRAW Graphics Suite','Corel',499.99,5),(96,'Sistema operativo Linux Ubuntu','Canonical',0.00,5),(97,'Antivirus AVG Internet Security','AVG',49.99,5),(98,'Software de modelado 3D Blender','Blender Foundation',0.00,5),(99,'Suite ofimática LibreOffice','The Document Foundation',0.00,5),(100,'Antivirus Bitdefender Total Security','Bitdefender',79.99,5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'FabriCenter','2200 Mission College Blvd., Santa Clara, CA 95054, USA','765-8080'),(2,'ElectroMan','129 Samsung-ro, Maetan 3(sam)-dong, Yeongtong-gu, Suwon, Gyeonggi-do, South Korea','200-1114'),(3,'PeruTec','One Apple Park Way, Cupertino, CA 95014, USA','996-1010'),(4,'PeruCorp Group','One Microsoft Way, Redmond, WA 98052-6399, USA','882-8080'),(5,'Dell Peru','One Dell Way, Round Rock, TX 78682, USA','289-3355'),(6,'SomosTec','1501 Page Mill Road, Palo Alto, CA 94304, USA','857-1501'),(7,'TechInnova','Hong Kong Science Park, Sha Tin, New Territories, Hong Kong','516-3838'),(8,'TechBlack','No. 15, Li-Te Road, Peitou, Taipei 112, Taiwan','894-3447'),(9,'Fan Inc.','30-2, Shimomaruko 3-chome, Ohta-ku, Tokyo 146-8501, Japan','758-2111'),(10,'Peru Soluciones','1-7-1 Konan, Minato-ku, Tokyo 108-0075, Japan','748-2111');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2020-01-01',1),(2,'2020-01-08',8),(3,'2020-01-15',12),(4,'2020-01-22',18),(5,'2020-01-29',19),(6,'2020-02-05',6),(7,'2020-02-12',18),(8,'2020-02-19',16),(9,'2020-02-26',7),(10,'2020-03-04',25),(11,'2020-03-11',20),(12,'2020-03-18',12),(13,'2020-03-25',13),(14,'2020-04-01',13),(15,'2020-04-08',25),(16,'2020-04-15',24),(17,'2020-04-22',3),(18,'2020-04-29',15),(19,'2020-05-06',30),(20,'2020-05-13',22),(21,'2020-05-20',25),(22,'2020-05-27',28),(23,'2020-06-03',2),(24,'2020-06-10',14),(25,'2020-06-17',5),(26,'2020-06-24',19),(27,'2020-07-01',14),(28,'2020-07-08',8),(29,'2020-07-15',19),(30,'2020-07-22',27),(31,'2020-07-29',16),(32,'2020-08-05',17),(33,'2020-08-12',6),(34,'2020-08-19',29),(35,'2020-08-26',27),(36,'2020-09-02',15),(37,'2020-09-09',16),(38,'2020-09-16',25),(39,'2020-09-23',3),(40,'2020-09-30',12),(41,'2020-10-07',20),(42,'2020-10-14',13),(43,'2020-10-21',22),(44,'2020-10-28',7),(45,'2020-11-04',1),(46,'2020-11-11',22),(47,'2020-11-18',24),(48,'2020-11-25',18),(49,'2020-12-02',21),(50,'2020-12-09',12),(51,'2020-12-16',17),(52,'2020-12-23',19),(53,'2020-12-30',6);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dockdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-06  4:16:04
