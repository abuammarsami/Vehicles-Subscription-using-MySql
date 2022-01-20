CREATE DATABASE  IF NOT EXISTS `vehicle_subscription` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vehicle_subscription`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vehicle_subscription
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `emp_salary`
--

DROP TABLE IF EXISTS `emp_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_salary` (
  `job_id` varchar(10) NOT NULL,
  `Salary_Amount` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_salary`
--

LOCK TABLES `emp_salary` WRITE;
/*!40000 ALTER TABLE `emp_salary` DISABLE KEYS */;
INSERT INTO `emp_salary` VALUES ('ACC_SUPER',20000.00),('AD_ASSI',25000.00),('ASS_MANGER',30000.00),('CUS_AD',15000.00),('CUS_SUP',16000.00),('CUS_SUPPER',18000.00),('DAM_TRAINE',10000.00),('IT_DEVP',25000.00),('VEH_ASSO',27000.00);
/*!40000 ALTER TABLE `emp_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_salary_log`
--

DROP TABLE IF EXISTS `emp_salary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_salary_log` (
  `Outvoice_No` int NOT NULL AUTO_INCREMENT,
  `Salary_Id` int NOT NULL,
  `Salary_Amount` decimal(8,2) DEFAULT NULL,
  `Salary_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Outvoice_No`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_salary_log`
--

LOCK TABLES `emp_salary_log` WRITE;
/*!40000 ALTER TABLE `emp_salary_log` DISABLE KEYS */;
INSERT INTO `emp_salary_log` VALUES (1,881,27000.00,'2021-01-11 16:49:12'),(2,882,25000.00,'2021-01-11 16:57:50'),(3,883,30000.00,'2021-01-11 17:07:50'),(4,883,30000.00,'2021-01-11 17:16:30'),(5,884,20000.00,'2021-01-11 17:17:08'),(6,886,25000.00,'2021-01-14 05:43:34'),(7,887,27000.00,'2021-01-14 05:45:20');
/*!40000 ALTER TABLE `emp_salary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Employee_Id` int NOT NULL,
  `E_Name` varchar(20) NOT NULL,
  `Job_Id` varchar(10) NOT NULL,
  `Salary_ID` int NOT NULL,
  `Phone_Number` int DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `location_id` decimal(6,0) NOT NULL,
  KEY `Job_Id` (`Job_Id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Job_Id`) REFERENCES `emp_salary` (`job_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `warehouse_locations` (`Location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (551,'KALAM','VEH_ASSO',881,154298745,'klm@mail.com',1005),(552,'ASIF KARIM','AD_ASSI',882,14799648,'arif@yahoo.com',1001),(553,'ALI MAHIN','ASS_MANGER',883,1687495,'mahi@gmail.com',1002),(554,'ARNOB ROY','ACC_SUPER',884,178954661,NULL,1001),(555,'SIAM HOSSIAN','CUS_AD',885,14569875,'siam@gmail.com',1002),(556,'FAZLA RABY','AD_ASSI',886,169745899,'rabby@yahoo.com',1003),(557,'SAMIN YESAR','VEH_ASSO',887,165478895,'Yes@mail.com',1001),(558,'MEHEDI IVN','ACC_SUPER',888,198756478,'ivn@gmil.com',1004),(559,'ROHAN ISLAM','CUS_SUP',889,148796145,'roh@mail.com',1005),(560,'FARDIN','IT_DEVP',890,145878566,'nill@mail.com',1007),(561,'RAFIN SAMS','ASS_MANGER',891,16254977,'sam@mail.com',1007),(562,'HAMZA','DAM_TRAINE',892,12457855,'hzd@gamil.com',1008),(563,'AYON BISWAS','VEH_ASSO',893,14789654,'noyon@yahoo.com',1004),(564,'PALASH HQE','ASS_MANGER',894,17596455,'hqe@mail.comm',1005),(565,'KOWSHIK BOSH','ACC_SUPER',895,17854662,'bose@yahoo.com',1008),(566,'SUSMITA','CUS_SUPPER',896,NULL,NULL,1009),(567,'AMITAB BACH','ASS_MANGER',897,NULL,'abu@gnail.com',1009),(568,'SUFIA TAMANA','VEH_ASSO',898,15498762,NULL,1010),(579,'DEPIKA MIR','ASS_MANGER',899,NULL,NULL,1010),(580,'SIRAZ UDDIN','ACC_SUPER',900,178946654,NULL,1006);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exporters_info`
--

DROP TABLE IF EXISTS `exporters_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exporters_info` (
  `Exporters_Id` int NOT NULL,
  `Vehicle_Name` varchar(40) DEFAULT NULL,
  `Company_Name` varchar(30) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Exporting_Cost` int DEFAULT NULL,
  `Original_Cost` int DEFAULT NULL,
  `Vehicle_Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Exporters_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exporters_info`
--

LOCK TABLES `exporters_info` WRITE;
/*!40000 ALTER TABLE `exporters_info` DISABLE KEYS */;
INSERT INTO `exporters_info` VALUES (701,'BMW X1','BMW Company','Germany',60000,12000000,3),(702,'Audi Q2','Audi Company','Germany',53000,11250000,3),(703,'Audi RS 7','Audi Sport GmbH','Germany',65000,17000000,3),(704,'Chevrolet RX5','Chevrolet Company','China',50000,12000000,2),(705,'Toyota Corolla Xr','Toyota Corolla Company','China',35000,4000000,1),(706,'Toyota Allion R','Toyota Allion Company','Japan',35000,4000000,1),(707,'Toyota Premio Superior','Toyota Allion Company','Japan',37000,4500000,1),(708,'The New Royal Enfield Classic 350','Eicher Motors Limited','India',20000,270000,3),(709,'Honda CBR 250','Honda','Thailand',22000,300000,2),(710,'Yamaha Star VMAX','Yamaha Motor Company','Japan',17000,1700000,2);
/*!40000 ALTER TABLE `exporters_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `Insurance_No` int NOT NULL,
  `Renewal_Fee` int NOT NULL,
  `Ins_Company` varchar(35) NOT NULL,
  `Issue_Date` date NOT NULL,
  `Expiry_Date` date NOT NULL,
  PRIMARY KEY (`Insurance_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (111,40000,'ABC Insurance Ltd','2021-01-01','2022-01-01'),(112,35000,'Digital Insurance Company Ltd','2021-01-01','2023-01-01'),(113,60000,'A Insurance Company Ltd','2021-01-01','2024-01-01'),(114,35000,'B Insurance Company Ltd','2021-01-01','2025-01-01'),(115,40000,'C Insurance Company Ltd','2021-01-01','2026-01-01'),(116,30000,'D Insurance Company Ltd','2022-02-01','2027-07-01'),(117,30000,'E Insurance Company Ltd','2022-03-15','2022-06-15'),(118,25000,'F Insurance Company Ltd','2022-12-31','2025-12-12'),(119,22000,'G Insurance Company Ltd','2022-11-01','2026-12-11'),(120,22000,'C Insurance Company Ltd','2023-01-01','2026-02-03'),(121,22000,'C Insurance Company Ltd','2022-06-01','2026-08-15'),(122,20000,'C Insurance Company Ltd','2022-01-11','2026-01-31'),(123,20000,'C Insurance Company Ltd','2023-01-15','2026-02-01'),(124,15000,'C Insurance Company Ltd','2020-01-01','2026-03-01'),(125,15000,'C Insurance Company Ltd','2022-10-01','2026-10-17'),(126,15000,'Moto Insurance Company Ltd','2022-01-01','2024-11-22'),(127,10000,'Moto Insurance Company Ltd','2021-01-01','2023-12-31'),(128,10000,'Moto Insurance Company Ltd','2021-01-01','2023-12-31'),(129,10000,'Moto Insurance Company Ltd','2021-01-01','2023-12-31'),(130,10000,'Moto Insurance Company Ltd','2021-01-01','2023-12-31');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_log`
--

DROP TABLE IF EXISTS `payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_log` (
  `Invoice_No` int NOT NULL AUTO_INCREMENT,
  `payment_Id` int NOT NULL,
  `Paid_Amount` decimal(15,2) DEFAULT NULL,
  `Payment_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Invoice_No`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_log`
--

LOCK TABLES `payment_log` WRITE;
/*!40000 ALTER TABLE `payment_log` DISABLE KEYS */;
INSERT INTO `payment_log` VALUES (1,301,57000.00,'2021-01-14 12:26:28'),(2,302,52200.00,'2021-01-14 12:26:28'),(3,303,70000.00,'2021-01-14 12:26:28'),(4,304,46400.00,'2021-01-14 12:26:28'),(5,305,35000.00,'2021-01-14 12:26:28'),(6,306,49300.00,'2021-01-14 12:26:28'),(7,307,60000.00,'2021-01-14 12:26:28'),(8,308,45000.00,'2021-01-14 12:26:28'),(9,309,49000.00,'2021-01-14 12:26:28'),(10,310,58000.00,'2021-01-14 12:26:28'),(11,311,29750.00,'2021-01-14 12:26:28'),(12,312,150000.00,'2021-01-14 12:26:28'),(13,313,70000.00,'2021-01-14 12:26:28'),(14,314,135000.00,'2021-01-14 12:26:28'),(15,315,54000.00,'2021-01-14 12:26:28'),(16,315,54000.00,'2021-01-14 12:26:52'),(17,315,54000.00,'2021-01-14 12:26:57'),(18,315,54000.00,'2021-01-14 12:31:05'),(19,315,54000.00,'2021-01-14 12:31:09'),(20,315,54000.00,'2021-01-14 12:31:27'),(21,315,60000.00,'2021-01-14 12:31:29'),(22,315,60000.00,'2021-01-14 12:35:15'),(23,315,60000.00,'2021-01-14 12:35:17'),(24,315,60000.00,'2021-01-14 12:35:36'),(25,314,135000.00,'2021-01-14 12:36:23'),(26,314,112500.00,'2021-01-14 12:36:41'),(27,314,112500.00,'2021-01-14 12:38:54'),(28,315,60000.00,'2021-01-14 12:39:27'),(29,315,45000.00,'2021-01-14 12:39:34'),(30,314,112500.00,'2021-01-14 12:40:05'),(31,314,112500.00,'2021-01-14 12:40:19'),(32,314,112500.00,'2021-01-14 12:40:41'),(33,314,112500.00,'2021-01-14 12:40:43'),(34,314,112500.00,'2021-01-14 12:41:17'),(35,314,150000.00,'2021-01-14 12:41:18'),(36,314,150000.00,'2021-01-14 12:41:51'),(37,314,135000.00,'2021-01-14 12:41:52'),(38,314,135000.00,'2021-01-14 12:42:12'),(39,314,135000.00,'2021-01-14 12:42:18'),(40,314,135000.00,'2021-01-14 12:42:41'),(41,314,127500.00,'2021-01-14 12:42:44'),(42,314,127500.00,'2021-01-14 12:42:55'),(43,314,127500.00,'2021-01-14 12:42:57'),(44,314,127500.00,'2021-01-14 12:44:04'),(45,314,127500.00,'2021-01-14 12:44:28'),(46,314,127500.00,'2021-01-14 12:44:52'),(47,314,150000.00,'2021-01-14 12:44:54'),(48,314,150000.00,'2021-01-14 12:45:02'),(49,314,150000.00,'2021-01-14 12:45:04');
/*!40000 ALTER TABLE `payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `Client_Id` int NOT NULL,
  `ClientName` varchar(20) NOT NULL,
  `Phone_No` varchar(11) DEFAULT NULL,
  `Address` varchar(40) NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `National_Id` bigint DEFAULT NULL,
  `Vehicle_Id` int NOT NULL,
  `Package_Id` int DEFAULT NULL,
  `Payment_id` int DEFAULT NULL,
  `LicenseExpiry_date` date DEFAULT NULL,
  `Location_id` decimal(6,0) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `Wants_to_Extend` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Client_Id`),
  KEY `Vehicle_Id` (`Vehicle_Id`),
  KEY `Package_Id` (`Package_Id`),
  KEY `Location_id` (`Location_id`),
  CONSTRAINT `subscribers_ibfk_1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicles` (`Vehicle_Id`),
  CONSTRAINT `subscribers_ibfk_2` FOREIGN KEY (`Package_Id`) REFERENCES `subscription_package` (`Package_Id`),
  CONSTRAINT `subscribers_ibfk_3` FOREIGN KEY (`Location_id`) REFERENCES `warehouse_locations` (`Location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (201,'Mahbub','11111111111','Dhamrai','mahbub@gmail.com',95047100000,2,101,301,'2025-01-10',1006,'Male','2021-03-13','Yes'),(202,'Jamil','22222222222','Puthia','jamil42@gmail.com',35045600000,6,102,302,'2024-11-22',1002,'Male','2021-04-13','Yes'),(203,'Tonni','33333333333','Habiganj','kader01@gmail.com',56847100000,9,NULL,303,'2026-02-15',1001,'Female','2021-02-13','No'),(204,'Tanvir','44444444444','Paikgachha','tan506@gmail.com',95047105600,4,104,304,'2022-12-18',1004,'Male','2021-05-13','No'),(205,'Saif','55555555555','Kutubdia','saif@gmail.com',65047105600,12,NULL,305,'2025-04-27',1005,'Male','2021-02-13','No'),(206,'Manik','66666666666','Bandarban','manik10@gmail.com',23485105600,5,103,306,'2024-03-30',1006,'Male','2021-04-28','No'),(207,'Adit','77777777777','Narayanganj','adit@gmail.com',23485102564,3,NULL,307,'2023-05-17',1007,'Male','2021-02-13','Yes'),(208,'Mostak','88888888888','Fullbaria','mostak@gmail.com',23924602564,1,105,308,'2027-07-21',1001,'Male','2021-05-28','No'),(209,'Salmoon','9999999999','Banshkhali','sal65@gmail.com',4285102564,10,106,309,'2025-12-11',1008,'Male','2021-06-13','No'),(210,'Tama','10101010101','Savar','Tama101@gmail.com',4528617564,4,NULL,310,'2024-08-14',1009,'Female','2021-02-13','Yes'),(211,'Pabel','20202020202','Dinajpur','pabel@gmail.com',4525672314,11,103,311,'2022-10-26',1001,'Male','2021-04-28','No'),(212,'Samira','30303030303','Durgapur','sam11@gmail.com',4359672314,8,NULL,312,'2027-03-16',1006,'Female','2021-02-13','No'),(213,'Chung','40404040404','China','chung@gmail.com',4380497614,10,NULL,313,'2024-09-25',1001,'Male','2021-02-13','No'),(214,'Sam','50505050505','USA','jhatla@gmail.com',9460497614,7,NULL,314,'2024-09-25',1002,'Female','2021-02-13','Yes'),(215,'Tuba','60606060606','Godagari','tuba@gmail.com',9480195714,1,105,315,'2024-09-25',1010,'Female','2021-05-29','Yes');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `subscribers_AFTER_INSERT` AFTER INSERT ON `subscribers` FOR EACH ROW BEGIN
if new.package_Id is not null then
	insert into payment_log(payment_id,paid_amount)
    values (new.payment_Id,(select v.Subscription_Fee-v.Subscription_Fee*(p.Discount_in_percentage/100)
			from subscribers s
            join vehicles v
            on s.vehicle_id=v.vehicle_id
            join subscription_package p
            on s.Package_Id=p.Package_Id
            where s.client_id = new.client_id
            ));
else insert into payment_log(payment_id,paid_amount)
	 values (new.payment_Id,(select v.Subscription_Fee
							from subscribers s
							join vehicles v
							on s.vehicle_id=v.vehicle_id
                            where s.client_id = new.client_id)
            
            );
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `subscribers_AFTER_UPDATE` AFTER UPDATE ON `subscribers` FOR EACH ROW BEGIN
if new.package_Id is not null then
	insert into payment_log(payment_id,paid_amount)
    value(new.payment_Id,(select (v.Subscription_Fee-(v.Subscription_Fee*(p.Discount_in_percentage/100)))
			from subscribers s
            join vehicles v
            on s.vehicle_id=v.vehicle_id
            join subscription_package p
            on s.Package_Id=p.Package_Id
            where s.client_id = new.client_id
            ));
else 
	insert into payment_log(payment_id, paid_amount)
	 value(new.payment_Id,(select v.Subscription_Fee
							from subscribers s
							join vehicles v
							on s.vehicle_id=v.vehicle_id
                            where s.client_id = new.client_id)
            
            );
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subscription_package`
--

DROP TABLE IF EXISTS `subscription_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_package` (
  `Package_Id` int NOT NULL,
  `packageName` varchar(20) DEFAULT NULL,
  `Duration_In_Days` int DEFAULT NULL,
  `Discount_in_percentage` int DEFAULT NULL,
  PRIMARY KEY (`Package_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_package`
--

LOCK TABLES `subscription_package` WRITE;
/*!40000 ALTER TABLE `subscription_package` DISABLE KEYS */;
INSERT INTO `subscription_package` VALUES (101,'Championship',60,5),(102,'Tokkor',90,10),(103,'Race',105,15),(104,'Rider',120,20),(105,'vikings',135,25),(106,'SuperRider',150,30);
/*!40000 ALTER TABLE `subscription_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `Vehicle_Id` int NOT NULL AUTO_INCREMENT,
  `Vehicle_Name` varchar(40) NOT NULL,
  `Model` int DEFAULT NULL,
  `Vehicle_Type` varchar(30) NOT NULL,
  `Seating_Capacity` int NOT NULL,
  `Engine_in_CC` int DEFAULT NULL,
  `Top_Speed_Kmph` int DEFAULT NULL,
  `Registration_Number` varchar(45) DEFAULT NULL,
  `Local_Cost` int NOT NULL,
  `Subscription_Fee` int DEFAULT NULL,
  `Insurance_No` int DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Id`),
  KEY `Insurance_No` (`Insurance_No`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`Insurance_No`) REFERENCES `insurance` (`Insurance_No`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'BMW X1',2020,'SportX',5,3880,300,'Dhaka Metro-Mo-0001',8000000,60000,111),(2,'BMW X1',2020,'SportX',5,3880,300,'Dhaka Metro-Mo-0002',8000000,60000,112),(3,'BMW X1',2020,'SportX',5,3880,300,'Dhaka Metro-Mo-0003',8000000,60000,113),(4,'Audi Q2',2020,'SUV',5,3780,290,'Dhaka Metro-Mo-0005',7500000,58000,114),(5,'Audi Q2',2020,'SUV',5,3780,290,'Dhaka Metro-Mo-0006',7500000,58000,115),(6,'Audi Q2',2020,'SUV',5,3780,290,'Dhaka Metro-Mo-0007',7500000,58000,116),(7,'Audi RS 7',2020,'Sedan',4,3996,305,'Dhaka Metro-Mo-0009',17000000,150000,117),(8,'Audi RS 7',2020,'Sedan',4,3996,305,'Dhaka Metro-Mo-0010',17000000,150000,118),(9,'Chevrolet RX5',2019,'Sedan',5,2700,255,'Dhaka Metro-Mo-0015',12000000,70000,119),(10,'Chevrolet RX5',2019,'Sedan',5,2700,255,'Dhaka Metro-Mo-0016',12000000,70000,120),(11,'Toyota Corolla Xr',2018,'Sedan',4,1650,205,'Dhaka Metro-GHa-0020',4000000,35000,121),(12,'Toyota Allion R',2018,'Sedan',4,1650,205,'Dhaka Metro-GHa-0022',4000000,35000,122),(13,'Toyota Premio Superior',2019,'Sedan',4,1650,220,'Dhaka Metro-GHa-0024',4500000,40000,123),(14,'The New Royal Enfield Classic 350',2019,'Bike',2,200,150,'Dhaka Metro-La-0026',180000,8000,124),(15,'The New Royal Enfield Classic 350',2019,'Bike',2,200,150,'Dhaka Metro-La-0027',180000,8000,125),(16,'The New Royal Enfield Classic 350',2019,'Bike',2,200,150,'Dhaka Metro-La-0028',180000,8000,126),(17,'Honda CBR 250',2020,'Bike',2,250,200,'Dhaka Metro-La-0032',300000,12000,127),(18,'Honda CBR 250',2020,'Bike',2,250,200,'Dhaka Metro-La-0016',300000,12000,128),(19,'Yamaha Star VMAX',2020,'Bike',2,1679,250,'Dhaka Metro-La-0017',1700000,25000,129);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_locations`
--

DROP TABLE IF EXISTS `warehouse_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_locations` (
  `Location_id` decimal(6,0) NOT NULL,
  `Division` varchar(25) DEFAULT NULL,
  `City` varchar(30) NOT NULL,
  `Street_Address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_locations`
--

LOCK TABLES `warehouse_locations` WRITE;
/*!40000 ALTER TABLE `warehouse_locations` DISABLE KEYS */;
INSERT INTO `warehouse_locations` VALUES (1001,'DHAKA','GAZIPUR','Bipsot training Area'),(1002,'CHITTAGONG','RANGMATI','4A Kaptai Lake Road'),(1003,'KHULNA','LOCKPUR','M/S Lata Enterprise street'),(1004,'SYLHET','GOWAINGAT','Jaflong Station'),(1005,'SYLHET','MOULVIBAZAR','Lawachara National Park Road'),(1006,'CHITTAGONG','COX.S BAZAR','Laboni Ponit,Beach Road'),(1007,'DHAKA','NAWABGANJ','KOLATOLI SHAIKA Residential Area'),(1008,'DHAKA','DHAKA','CENTRAL Road Uttara'),(1009,'RANGPUR','RANGPUR','Police Line Road,569'),(1010,'BARISHAL','PATUAKHALI','PATUAKHALI sador Road , Risen Hotel');
/*!40000 ALTER TABLE `warehouse_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vehicle_subscription'
--

--
-- Dumping routines for database 'vehicle_subscription'
--
/*!50003 DROP FUNCTION IF EXISTS `Extend_Subscription_Period_or_return_vehicles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Extend_Subscription_Period_or_return_vehicles`(cid int, pid int, WTE varchar(3)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
if  WTE = "Yes" and pid is not null then 
update subscribers
 set Package_id=pid, expiry_date = DATE_ADD(CURDATE(), Interval (select duration_in_days 
																	  from subscription_package
																	  where Package_Id= pid) Day), Wants_to_Extend = wte
 where expiry_date = CURDATE() and client_id = cid;
 RETURN "extended_with_package";
 
elseif  WTE ="Yes" and pid is null then
update subscribers
 set Package_id= null, expiry_date = DATE_ADD(curdate(), Interval 30 Day), Wants_to_Extend = "Yes"
 where expiry_date = CURDATE()  and client_id = cid;
 RETURN "extended_without_package";
 
 elseif wte="No" then 
 delete from subscribers
 where client_id = cid;

RETURN "period_ends";
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Pay_Salary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Pay_Salary`(Salary_Id int, Salary_Amount decimal(8,2)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
insert into Emp_Salary_Log(Salary_Id, Salary_Amount)
values (Salary_Id, Salary_Amount);
RETURN "Salary Paid ;)" ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 19:30:12
