-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: Farm
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(255) DEFAULT NULL,
  `CustomerEmail` varchar(255) DEFAULT NULL,
  `CustomerAddressLine1` varchar(255) DEFAULT NULL,
  `CustomerAddressLine2` varchar(255) DEFAULT NULL,
  `CustomerPostCode` varchar(8) DEFAULT NULL,
  `CustomerPhone` varchar(10) DEFAULT NULL,
  `CustomerAccountNumber` varchar(8) DEFAULT NULL,
  `CustomerSortCode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Ms. Sue Fox','abc@yahoo.com','156 Tristy','Sunch','SH2TYU','0703456890','62890857','120345'),(2,'Mr. John H Ginn','ikt@hotmail.com','89 Mango','Hink','HT97UT','0979956890','24135609','670854'),(3,'Mrs. Lina G Hon','kv2@aol.com','12 Linnet','Anthy','NU2TBU','0408345689','42006791','300769'),(4,'Mr. Johnny M PLat','jbc@gmail.com','102 Trinity Lane','Newport','NU2TBU','123456890','16440723','400578'),(5,'Sir Tom Fox Hugh','pic@yahoo.com','177 Temple Lane','Temple','TT2THU','753456890','32409218','110078'),(6,'Miss Angela Shelina Lima','iuc@yahoo.com','102 Trinity Lane','Newport','NU2TBU','1234779990','24530037','291067'),(7,'Ms. Lisa Harriet Tug','anc@yahoo.com','79 Trinity Lane','Newport','NU2TBU','123886890','25779804','503894'),(8,'Mrs.Charlotte Kent','abx@yahoo.com','108 Shoe Lane','Newport','NU2TBU','190456890','33469412','560286'),(9,'Mr James Dart','hjc@nil.com','57 Sweet Lane','Dawning','DK7TRY','1234766890','99443407','740652'),(10,'Mr. Mark F Frost','abx@ink.com','42 Western','Thames','TH2TBU','123336890','29905713','500487');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `highsalesyear`
--

DROP TABLE IF EXISTS `highsalesyear`;
/*!50001 DROP VIEW IF EXISTS `highsalesyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highsalesyear` AS SELECT 
 1 AS `SalesTotal`,
 1 AS `Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Produce`
--

DROP TABLE IF EXISTS `Produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produce` (
  `ProduceID` int NOT NULL AUTO_INCREMENT,
  `ProduceName` varchar(255) DEFAULT NULL,
  `ProduceSeason` varchar(50) DEFAULT NULL,
  `ProduceQuantity` int DEFAULT NULL,
  PRIMARY KEY (`ProduceID`),
  UNIQUE KEY `ProduceID` (`ProduceID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produce`
--

LOCK TABLES `Produce` WRITE;
/*!40000 ALTER TABLE `Produce` DISABLE KEYS */;
INSERT INTO `Produce` VALUES (1,'Brussels sprouts','Winter',57),(2,'Spring green cabbage','Winter',87),(3,'Savoy cabbage','Winter',89),(4,'Carrots','Winter',97),(5,'Cauliflower','Winter',64),(6,'Kale','Winter',98),(7,'Parsnips','Winter',74),(8,'Swedes','Winter',99),(9,'Leeks','Winter',159),(10,'Rhubarb','Winter',153),(11,'Spring onions','Spring',184),(12,'Rhubarb','Spring',89),(13,'Asparagus','Spring',69),(14,'Cucumbers','Spring',96),(15,'Garlic','Spring',79),(16,'Lettuce','Spring',59),(17,'Spinach','Spring',116),(18,'Radishes','Spring',86),(19,'Broad beans','Spring',107),(20,'Courgettes and summer squash','Spring',206),(21,'Globe artichokese','Spring',119),(22,'Mint','Spring',112),(23,'Parsley','Spring',94),(24,'Rocket','Spring',110),(25,'New potatoes','Spring',90),(26,'Baby carrots','Spring',109),(27,'Raspberries','Spring',159),(28,'Strawberries','Spring',213),(29,'Currants','Spring',187),(30,'Gooseberries','Spring',119),(31,'Cherries','Spring',169),(32,'Chard','Spring',106),(33,'Beetroot','Summer',169),(34,'Courgettes and summer squash','Sumer',196),(35,'Fennel','Summer',179),(36,'French beans','Summer',159),(37,'Lettuce and other salad leaves','Summer',126),(38,'Peas and mangetout','Summer',816),(39,'Runner beans','Summer',127),(40,'Tomatoes','Summer',206),(41,'Shallots','Summer',139),(42,'Blackberries','Summer',122),(43,'Blueberries','Summer',110),(44,'Currants','Summer',113),(45,'Loganberries','Summer',142),(46,'Tayberries','Summer',158),(47,'Aubergines','Summmer',83),(48,'Broccoli','Summer',97),(49,'Carrots','Summer',149),(50,'Celery','Summer',116),(51,'Sweetcorn','Summer',116),(52,'Calabrese','Summer',153),(53,'Figs','Summer',62),(54,'Plums and damsons','Summer',87),(55,'Apples and pears','Summmer',115),(56,'Marrow','Autumn',57),(57,'Quince','Autumn',58),(58,'Winter squash and pumpkins','Autumn',105),(59,'Pak choi','Autumn',84),(60,'Sprouts','Autumn',54);
/*!40000 ALTER TABLE `Produce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `SaleID` int NOT NULL AUTO_INCREMENT,
  `ProduceID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `SuppliesID` int DEFAULT NULL,
  `SalesQuantity` int DEFAULT NULL,
  `SalesAmount` decimal(19,2) DEFAULT NULL,
  `SalesDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`SaleID`),
  UNIQUE KEY `SaleID` (`SaleID`),
  KEY `ProduceID` (`ProduceID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `SuppliesID` (`SuppliesID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`ProduceID`) REFERENCES `Produce` (`ProduceID`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `SuppliesID` FOREIGN KEY (`SuppliesID`) REFERENCES `Supplies` (`SuppliesID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (1,1,1,5,20,14.99,'2014-01-15 00:00:00'),(2,2,2,12,7,3.99,'2015-04-14 00:00:00'),(3,1,6,20,6,14.99,'2014-07-16 00:00:00'),(4,4,9,14,5,8.99,'2016-03-18 00:00:00'),(5,6,4,20,6,3.99,'2013-09-12 00:00:00'),(6,2,6,21,7,15.99,'2012-10-14 00:00:00'),(7,9,2,20,8,24.99,'2016-02-18 00:00:00'),(8,5,7,12,5,7.99,'2017-08-18 00:00:00'),(9,7,3,50,8,18.99,'2013-11-12 00:00:00'),(10,2,8,24,7,7.99,'2018-07-10 00:00:00'),(11,5,2,60,7,6.99,'2021-12-03 00:00:00'),(12,8,8,21,6,24.99,'2020-09-17 00:00:00'),(13,5,1,20,5,27.99,'2014-03-25 00:00:00'),(14,7,2,12,8,31.99,'2019-07-16 00:00:00'),(15,8,6,20,7,34.99,'2017-02-13 00:00:00'),(16,3,9,14,6,18.99,'2018-10-29 00:00:00'),(17,8,4,20,8,23.99,'2013-08-29 00:00:00'),(18,2,6,21,6,25.99,'2018-12-17 00:00:00'),(19,6,2,20,7,24.99,'2019-06-18 00:00:00'),(20,2,7,12,5,17.99,'2013-03-13 00:00:00'),(21,8,3,50,8,38.99,'2017-07-17 00:00:00'),(22,1,8,24,5,9.99,'2018-03-18 00:00:00'),(23,6,2,60,6,26.99,'2014-04-12 00:00:00'),(24,8,8,21,16,4.99,'2016-08-19 00:00:00'),(25,39,6,6,45,35.99,'2019-07-28 00:00:00');
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salesperyear`
--

DROP TABLE IF EXISTS `salesperyear`;
/*!50001 DROP VIEW IF EXISTS `salesperyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salesperyear` AS SELECT 
 1 AS `SalesTotal`,
 1 AS `Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(255) DEFAULT NULL,
  `SupplierEmail` varchar(255) DEFAULT NULL,
  `SupplierAddressLine1` varchar(255) DEFAULT NULL,
  `SupplierAddressLine2` varchar(255) DEFAULT NULL,
  `SupplierPostCode` varchar(8) DEFAULT NULL,
  `SupplierPhone` varchar(10) DEFAULT NULL,
  `SupplierAccountNumber` varchar(8) DEFAULT NULL,
  `SupplierSortCode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`),
  UNIQUE KEY `SupplierID` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'ABC Ltd','abc@yahoo.com','23B','Pit Lane','TLH7 2HF','1112226677','87909623','889936'),(2,'Hans Ltd','hans@yahoo.com','Hans House','Hans Street','KLH7 2IG','0207788928','22700728','273958'),(3,'New Venture','new.venture@gmail.com','Trust Towers','Kings Street','KTY9 3HF','0209988465','38082719','316703'),(4,'Mingles','mingles@hotmail.com','Faith House','Rills Street','LPN8 2TL','0203737300','44982087','110098'),(5,'MSN','msn@yahoo.com','23B','Top House','LPIU 2HF','0503597304','10045867','100678');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplies`
--

DROP TABLE IF EXISTS `Supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplies` (
  `SuppliesID` int NOT NULL AUTO_INCREMENT,
  `SupplierID` int DEFAULT NULL,
  `Supplies` varchar(255) DEFAULT NULL,
  `SuppliesQuantity` int DEFAULT NULL,
  `SuppliesAmount` decimal(19,2) DEFAULT NULL,
  `SuppliesDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`SuppliesID`),
  UNIQUE KEY `SuppliesID` (`SuppliesID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplies`
--

LOCK TABLES `Supplies` WRITE;
/*!40000 ALTER TABLE `Supplies` DISABLE KEYS */;
INSERT INTO `Supplies` VALUES (1,1,'Tracker',2,8500000.00,'2004-06-15 00:00:00'),(2,1,'Wagon',3,450.00,'2012-07-21 00:00:00'),(3,2,'Sprayers',5,30.00,'2018-08-25 00:00:00'),(4,2,'Manure Spreader',2,850.00,'2019-12-11 00:00:00'),(5,3,'Seed',500,3.50,'2004-06-15 00:00:00'),(6,4,'Seedling',300,4.50,'2012-07-21 00:00:00'),(7,5,'Stump',600,13.00,'2018-08-25 00:00:00'),(8,2,'Clove',2,6.50,'2019-12-11 00:00:00');
/*!40000 ALTER TABLE `Supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `highsalesyear`
--

/*!50001 DROP VIEW IF EXISTS `highsalesyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highsalesyear` AS select sum((`sales`.`SalesQuantity` * `sales`.`SalesAmount`)) AS `SalesTotal`,year(`sales`.`SalesDateTime`) AS `Year` from `sales` group by year(`sales`.`SalesDateTime`) having (sum((`sales`.`SalesQuantity` * `sales`.`SalesAmount`)) > 500) order by year(`sales`.`SalesDateTime`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salesperyear`
--

/*!50001 DROP VIEW IF EXISTS `salesperyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salesperyear` AS select sum((`sales`.`SalesQuantity` * `sales`.`SalesAmount`)) AS `SalesTotal`,year(`sales`.`SalesDateTime`) AS `Year` from `sales` group by year(`sales`.`SalesDateTime`) order by year(`sales`.`SalesDateTime`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08  2:35:57
