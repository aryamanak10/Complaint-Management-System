-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: complaints_management_service
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `ASSIGNED`
--

DROP TABLE IF EXISTS `ASSIGNED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSIGNED` (
  `SupID` int NOT NULL,
  `NCR#` int NOT NULL,
  KEY `SupplierID_idx` (`SupID`),
  KEY `NCR#_idx` (`NCR#`),
  CONSTRAINT `NCR#` FOREIGN KEY (`NCR#`) REFERENCES `NON CONFORMANCE REPORT` (`NCR#`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SupID` FOREIGN KEY (`SupID`) REFERENCES `SUPPLIER` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSIGNED`
--

LOCK TABLES `ASSIGNED` WRITE;
/*!40000 ALTER TABLE `ASSIGNED` DISABLE KEYS */;
INSERT INTO `ASSIGNED` VALUES (2,13099),(30,16569),(19,12411),(29,14648),(3,18786),(3,11858),(18,11858),(6,18500),(30,18500),(13,18500),(19,18500),(2,18500),(12,18500),(25,19627),(30,19627),(8,19627),(10,12800),(7,12800),(18,12800),(28,12800),(12,14672),(8,14672),(3,14672),(7,17006),(18,17006),(15,17006),(9,17006),(29,17006),(22,12411),(13,12411),(11,12411),(4,14648),(6,14648),(14,14648),(17,11858),(21,11858),(23,12558),(11,12572),(28,12572),(6,12572),(8,12800),(14,12800),(29,12800),(4,11086),(30,11086),(28,11086),(4,11086),(16,19490),(10,19490),(23,19490),(22,19490),(15,12800),(7,12800),(22,12800),(16,12800),(2,13253),(11,13253),(11,12800),(28,13253),(4,11567),(25,11567),(3,11567),(11,18904),(13,18904),(23,18904),(26,12838),(18,12838),(21,12838),(4,11867),(18,11867),(17,15367),(26,14672),(5,14672),(26,14672),(22,14672),(15,14672),(23,17292),(5,17292),(27,17292),(30,17292),(12,17404),(5,17404),(28,17404),(9,17404),(22,13253),(13,13253),(25,13253),(24,13253),(23,12332),(14,12332),(28,12332),(15,12332),(29,16569),(24,16569),(26,16569),(12,12788),(5,18992),(2,17987),(11,19298),(28,15085);
/*!40000 ALTER TABLE `ASSIGNED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPLAINT`
--

DROP TABLE IF EXISTS `COMPLAINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPLAINT` (
  `ComplaintID` int NOT NULL,
  `ComplaintDescription` varchar(500) NOT NULL,
  `Customer#` int NOT NULL,
  PRIMARY KEY (`ComplaintID`),
  KEY `Customer#_idx` (`Customer#`),
  CONSTRAINT `Customer#` FOREIGN KEY (`Customer#`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPLAINT`
--

LOCK TABLES `COMPLAINT` WRITE;
/*!40000 ALTER TABLE `COMPLAINT` DISABLE KEYS */;
INSERT INTO `COMPLAINT` VALUES (1262,'Illo error quia maiores. Repellat officiis molestias consequatur delectus et. Iusto iusto quae iure aperiam ab rerum quibusdam. Vel laboriosam ratione a rerum ipsum voluptas in. Omnis et culpa ipsam quia placeat nihil aut.',200768),(1297,'Ipsa id sit illum voluptas odio repellat qui accusamus. Dolores animi quo autem eligendi ut. Exercitationem quia ex similique recusandae repellendus molestiae.',201494),(1412,'Facilis ad corporis consequatur tempore vel temporibus aliquam. Quia a voluptatibus earum eius dolorum autem repudiandae. Iusto eveniet veritatis vel aut a.',201689),(1436,'Porro numquam aliquid ipsa assumenda et quia. Sit corrupti totam rerum voluptatem ut illum. Velit voluptatem cupiditate soluta vero qui voluptatum aspernatur.',202186),(1609,'Magnam nisi illum quis ab. Optio quos inventore quod in accusamus. Omnis fugit quod et. Beatae et alias qui ut minima voluptatem.',201729),(1649,'Itaque dolore suscipit quis nam. Blanditiis animi voluptatem sed quo. Qui molestiae asperiores est praesentium aut veritatis libero.',201228),(2046,'Ut quia asperiores voluptatem nihil beatae sed labore aliquam. Qui ipsam corporis dolorem perferendis ducimus dolorum. Quaerat placeat id nisi. Qui nemo est beatae.',200984),(2147,'Amet ducimus cupiditate deserunt aut aut. Rerum reprehenderit occaecati id eum quasi amet praesentium. Autem accusamus velit hic quia et aut illo unde. Itaque quidem repudiandae quia quia eligendi rerum consectetur temporibus.',201740),(2292,'Cupiditate et nihil voluptate amet. Pariatur fugit inventore accusamus et. Consequuntur rem et nulla modi voluptates. Commodi quasi quisquam earum exercitationem corporis magni.',200810),(2475,'Repellendus ut suscipit sint. Eos omnis sunt numquam eveniet hic. Perferendis beatae veniam quas neque odio.',201075),(2641,'Eos in veniam aliquam dolorum autem rerum. Voluptas soluta sunt minus rerum et quo dolores. Qui assumenda et et alias.',200624),(2753,'Sed iusto sed sed. Deserunt non sit sapiente qui dignissimos illum eius. Earum ad sint beatae atque eos occaecati. Veniam rem commodi non nam nemo voluptatum aperiam quia.',201952),(2944,'Aperiam laboriosam quas et fugit sint. Eos est illo sit consequatur et et. Modi praesentium eum iusto et vitae et rerum. Nesciunt veritatis reprehenderit voluptas atque ad aspernatur.',200042),(3805,'Error labore vero aut ut assumenda molestiae. Et nulla ad aut alias itaque. Dolor ut consectetur minus et. Incidunt beatae quia placeat nulla repudiandae perferendis fugit.',200234),(4075,'Quidem quae non ut est reiciendis dolores occaecati voluptatem. Vel debitis aut sed aut corporis sint. Nostrum tenetur vel eveniet laudantium.',201338),(4229,'Perspiciatis et et enim consectetur vel saepe doloremque. Quis quia occaecati ab qui quis. Totam incidunt amet enim ut rerum id.',200196),(4516,'Laboriosam consequatur ipsum in et harum ea. Possimus nostrum assumenda enim inventore in voluptas voluptatem. Optio laudantium iste sint consequatur non fugit id.',200045),(4550,'Vel mollitia consectetur natus. Amet consequatur officia laudantium quo enim. Aut quas aut quia omnis.',200554),(4702,'Nihil eos voluptatibus et quia alias. Temporibus quo qui veritatis et voluptas. Rem tenetur commodi laudantium blanditiis.',201366),(5128,'Iste et sed nobis perspiciatis eum a laboriosam. Optio maxime quas non voluptatem omnis. Ducimus eum et ea quasi. Magnam voluptatem aperiam nisi et.',201149),(5325,'Dolorem ea architecto et illo. Laboriosam libero consequatur quia eveniet tempore. Explicabo ipsum harum nostrum perferendis quisquam exercitationem.',201056),(5341,'Odio facilis ut eum eum quaerat autem. Possimus illum hic reiciendis laudantium consequatur et. Consequatur et sequi corporis.',200652),(5691,'Ut similique similique amet quos. Ducimus quaerat est dolore et suscipit ex. Reiciendis nihil quia aperiam qui maiores dolore excepturi. Officiis ratione dignissimos quo eligendi reprehenderit tenetur.',200905),(5718,'Ab placeat et ut fugit laboriosam ut perferendis. Architecto nam est qui quo nobis. Voluptatem sed corporis ut voluptates sed. Optio ut repellendus illo repellendus possimus.',201919),(6099,'Tempora consequatur voluptatem quam architecto iusto sit est. Quis qui tempore vel eum fugiat. Harum aspernatur facilis sunt. Possimus quia beatae nihil id ad fuga. Adipisci cumque illum a molestias cum.',200624),(6198,'Corrupti repudiandae et beatae. Deleniti modi est deleniti est necessitatibus laboriosam. Quas et eum qui rerum et earum.',201706),(6301,'Aspernatur quo maiores consequuntur sunt dolorum nam consequatur. Pariatur voluptas voluptate nostrum quos impedit tenetur eum soluta. Aperiam odio aut sapiente ut. Impedit quibusdam facere est.',201442),(6483,'Qui odio molestiae neque doloribus dicta minima. Maiores ab architecto quas fugiat. Rerum optio alias enim est. Autem totam et provident ut.',201125),(6570,'Quaerat ut ducimus vel at aut quaerat id ipsum. Quia repellendus nulla omnis placeat possimus. Consectetur qui voluptatem voluptatem suscipit sit quasi. Omnis ea dolor iste voluptatem ex. Amet sapiente et sit eaque magnam molestias consequatur.',201125),(7007,'Facilis rerum et qui et. Autem incidunt sequi voluptas sunt. Voluptatem ipsa minus sit tenetur. Quis qui voluptatem dolorum id culpa consequatur.',201565),(7054,'Sit porro rerum corrupti nulla dolores. Aut perspiciatis odio optio. Earum hic et numquam consectetur. Facilis et quae deserunt et ullam consequuntur sint et.',200728),(7059,'Quia dolores possimus et numquam aut magni. Et sed repellat fuga in perferendis tempore. Ex accusamus sapiente quia et rerum.',201301),(7101,'Saepe eum minima quaerat atque. Culpa consequatur aut iure laborum. Non aperiam quidem nisi quia dolores numquam praesentium. Culpa in placeat perferendis praesentium.',202194),(7393,'Iste ut libero aspernatur. Sit laborum ad distinctio amet porro ipsum. Pariatur soluta rem dolorem dolor officia impedit.',201188),(7445,'Rerum recusandae eligendi aliquam aut. Quo at sapiente non et. Quas expedita illum vel soluta.',200984),(7637,'Molestiae iure rerum vel et soluta omnis nulla. Velit praesentium et possimus et explicabo vitae autem perspiciatis. Ipsa alias ut aut magni quis distinctio autem aut. Et rerum ut dolorum quod minima. Possimus autem facilis neque ex.',202272),(7791,'Nihil atque consectetur dolores. Corrupti neque omnis doloremque quia non laudantium. Voluptatibus quam nostrum quaerat temporibus. Itaque fugiat nemo veritatis. Asperiores culpa voluptatem sed omnis cum velit.',201628),(7866,'Accusamus ut perspiciatis et harum debitis qui. Sed modi nemo sed earum. Tempora adipisci dolorum facere est et.',201078),(7874,'Minus aut voluptatem neque nesciunt voluptatem. Cum voluptatem omnis error ut inventore aut est. Tempora et nam assumenda temporibus. Dolores nihil eligendi inventore maiores.',200685),(8038,'Modi et dolorem velit et. Velit aspernatur eum nostrum amet vitae. Nulla repellendus qui praesentium qui enim.',202028),(8066,'Eaque enim voluptatem blanditiis sed corrupti autem. Et rem qui est necessitatibus repudiandae. Eum quam qui unde necessitatibus consequatur in voluptate. Expedita esse ut enim soluta. Libero dolorem doloremque labore illum officia cum placeat.',201804),(8126,'Provident voluptates voluptas sit non id porro eum. Autem a debitis sunt magni sed. Id dolorum itaque porro nulla et qui nemo exercitationem. Excepturi placeat vitae soluta eligendi.',201028),(8354,'Quia quam dignissimos est ea aut. Ratione saepe aliquid ut voluptatem. Adipisci commodi consequuntur aliquam.',200922),(8426,'Non impedit molestiae fuga ipsum. Vel vero dolorem qui repudiandae quasi quo reiciendis. Officia magnam delectus repellendus culpa expedita culpa qui. Laudantium quod enim illum quo voluptatem est.',202265),(8679,'Non adipisci ut qui porro doloribus. Et dolorem nam sed ea itaque. Explicabo accusantium exercitationem harum atque excepturi perferendis sunt. Cum eos consequatur enim ut laboriosam.',200196),(8850,'Est deleniti possimus impedit dolorem optio sit inventore. Sint autem rerum eum dicta. Et molestiae cum temporibus atque.',201729),(9278,'Rerum ad rerum eveniet. Aut sed voluptatem aperiam ratione in sit voluptatem. At commodi voluptas aliquid dolor id. Vitae et rerum quod voluptatum illo qui est ad.',201336),(9293,'Ut autem nam pariatur in. Sit eveniet omnis neque perferendis voluptate perferendis.',201706),(9526,'Ab adipisci omnis repellat quasi voluptas asperiores. Aspernatur ut totam et rerum. Ipsa dicta aut aut qui quidem magni magnam. Et id voluptas sint iste soluta doloremque.',201188),(9933,'Quia cumque in eaque quas. Quia provident velit sint. Totam libero id accusantium sed nostrum et est ad. Aliquam provident velit facere et.',200045);
/*!40000 ALTER TABLE `COMPLAINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CustomerID` int NOT NULL,
  `CustomerAccountCreationDate` datetime NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (200014,'2022-02-18 19:48:03'),(200042,'1976-02-27 18:53:54'),(200045,'1981-11-13 00:00:20'),(200133,'2001-07-08 13:57:46'),(200142,'1998-02-20 12:24:46'),(200147,'2016-04-02 08:20:37'),(200196,'2012-03-09 19:59:18'),(200234,'1993-11-10 17:35:42'),(200443,'1989-08-09 03:46:47'),(200506,'2009-02-18 20:56:04'),(200554,'2008-06-15 11:53:14'),(200624,'2012-06-17 21:44:31'),(200652,'1995-05-25 15:17:20'),(200685,'1998-07-23 19:43:12'),(200690,'2014-01-31 03:33:11'),(200697,'2008-07-04 18:45:18'),(200722,'1974-05-22 12:19:32'),(200728,'1997-11-07 22:05:34'),(200768,'2020-02-05 19:47:08'),(200810,'2003-04-07 03:52:04'),(200864,'1975-08-10 18:22:45'),(200905,'2014-02-15 00:56:19'),(200922,'1993-05-18 11:17:20'),(200935,'1973-04-27 02:00:24'),(200939,'2014-10-20 12:36:53'),(200984,'2005-12-11 17:07:58'),(201028,'2021-04-01 04:19:21'),(201056,'2018-01-24 07:49:55'),(201075,'1973-03-10 15:56:18'),(201078,'2004-08-12 19:20:22'),(201108,'2002-08-31 17:18:57'),(201118,'2018-10-21 03:58:59'),(201125,'1990-02-08 17:01:53'),(201149,'2016-12-25 04:39:33'),(201176,'1993-12-14 14:35:29'),(201188,'2018-04-09 17:49:38'),(201228,'1987-01-19 05:07:47'),(201250,'1996-06-27 16:50:31'),(201301,'1996-08-26 00:14:52'),(201336,'1982-04-25 01:57:39'),(201338,'1978-09-25 07:51:22'),(201366,'2020-10-16 18:51:54'),(201442,'2005-01-24 09:09:55'),(201494,'1981-06-28 10:55:40'),(201506,'2000-04-07 04:10:04'),(201527,'2000-02-01 18:30:10'),(201555,'1980-08-18 16:03:36'),(201565,'2014-09-02 11:57:56'),(201566,'1987-11-01 09:36:28'),(201590,'1993-12-17 01:06:51'),(201628,'1979-09-24 05:29:49'),(201689,'1991-11-18 22:29:17'),(201706,'2010-07-05 13:21:14'),(201729,'2013-02-19 23:45:14'),(201740,'2006-02-19 03:20:35'),(201804,'1992-11-20 11:46:25'),(201914,'1983-06-11 09:19:24'),(201919,'2006-09-01 06:33:36'),(201928,'2008-01-22 21:25:53'),(201952,'1971-01-29 15:51:10'),(202028,'1985-09-05 12:15:11'),(202119,'1982-03-30 15:47:29'),(202149,'1994-06-12 11:15:38'),(202153,'2003-10-11 09:13:41'),(202169,'1996-11-24 18:24:18'),(202186,'1981-08-12 10:22:57'),(202194,'2000-07-01 04:41:22'),(202198,'2002-12-04 17:13:00'),(202265,'2012-09-07 01:57:29'),(202272,'1982-04-12 23:53:55');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMORDER`
--

DROP TABLE IF EXISTS `CUSTOMORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMORDER` (
  `CO_ID` int NOT NULL,
  `CO_Ordered` varchar(255) NOT NULL,
  `CO_Specs` varchar(255) NOT NULL,
  `CO_DeliveredDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `EndUserID` int NOT NULL,
  `MFGSiteIDNumber` int NOT NULL,
  PRIMARY KEY (`CO_ID`),
  KEY `EndUserID_idx` (`EndUserID`),
  KEY `MFGSiteIDNumber_idx` (`MFGSiteIDNumber`),
  CONSTRAINT `EndUserID` FOREIGN KEY (`EndUserID`) REFERENCES `ENDUSER` (`EndUserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MFGSiteIDNumber` FOREIGN KEY (`MFGSiteIDNumber`) REFERENCES `MANUFACTURING SITE` (`MFGSiteNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMORDER`
--

LOCK TABLES `CUSTOMORDER` WRITE;
/*!40000 ALTER TABLE `CUSTOMORDER` DISABLE KEYS */;
INSERT INTO `CUSTOMORDER` VALUES (1,'5','Omnis soluta ad eos et omnis totam iusto.','1986-07-25 00:00:00',1996,103),(2,'1','Veritatis debitis dicta ducimus quae quia ut.','2009-07-28 00:00:00',1750,101),(3,'3','Dignissimos perferendis nam repudiandae beatae dolores iusto ipsa.','1996-10-05 00:00:00',1270,101),(4,'4','Accusantium eius et possimus.','2016-09-08 00:00:00',1562,101),(5,'2','Quod excepturi ullam id sint.','2005-09-23 00:00:00',1046,103),(6,'3','Ducimus esse earum id in libero.','2007-09-05 00:00:00',1167,101),(7,'5','Consequuntur cum minus fugit enim nostrum doloribus nihil vel.','1998-10-17 00:00:00',1869,102),(8,'4','Deserunt facere assumenda sed et dolor.','1988-12-26 00:00:00',1110,102),(9,'1','Quos consequatur officiis deleniti culpa repellat veniam velit ducimus.','2017-05-23 00:00:00',1101,101),(10,'5','Consequatur ut similique temporibus et reiciendis ea.','1979-09-29 00:00:00',1338,101);
/*!40000 ALTER TABLE `CUSTOMORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISTRIBUTES`
--

DROP TABLE IF EXISTS `DISTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DISTRIBUTES` (
  `MFGSite#` int NOT NULL,
  `DistributorID` int NOT NULL,
  KEY `MFGSite#_idx` (`MFGSite#`),
  KEY `DistributorID_idx` (`DistributorID`),
  CONSTRAINT `DistributorID` FOREIGN KEY (`DistributorID`) REFERENCES `DISTRIBUTOR` (`DistributorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MFGSite#` FOREIGN KEY (`MFGSite#`) REFERENCES `MANUFACTURING SITE` (`MFGSiteNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISTRIBUTES`
--

LOCK TABLES `DISTRIBUTES` WRITE;
/*!40000 ALTER TABLE `DISTRIBUTES` DISABLE KEYS */;
INSERT INTO `DISTRIBUTES` VALUES (101,26),(101,26),(101,39),(101,6),(102,38),(102,40),(102,10),(103,30),(103,5),(101,20),(102,5),(103,5),(103,40),(101,34),(102,10),(102,6),(103,29),(102,39),(103,17),(102,37),(103,21),(103,15),(101,4),(102,9),(101,38),(103,2),(102,11),(101,33),(101,23),(102,19),(103,4),(101,33),(101,32),(103,39),(102,37),(103,38),(103,8),(103,26),(102,26),(101,24),(103,37),(102,37),(102,18),(101,22),(102,28),(103,14),(101,12),(101,35),(102,39),(102,20);
/*!40000 ALTER TABLE `DISTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISTRIBUTOR`
--

DROP TABLE IF EXISTS `DISTRIBUTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DISTRIBUTOR` (
  `DistributorID` int NOT NULL,
  `DistributorFname` varchar(45) NOT NULL,
  `DistributorLname` varchar(45) NOT NULL,
  `DistributorAddress` varchar(255) NOT NULL,
  `DateReceived` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISTRIBUTOR`
--

LOCK TABLES `DISTRIBUTOR` WRITE;
/*!40000 ALTER TABLE `DISTRIBUTOR` DISABLE KEYS */;
INSERT INTO `DISTRIBUTOR` VALUES (1,'Zemlak, Weber and Hilpert','Group','1951 Miguel Courts Suite 454\nLake Fannie, IL 21426','1971-02-10 22:10:44'),(2,'Ryan, Shields and Greenfelder','and Sons','262 Justina Springs Suite 767\nEast Isabel, NC 88321','1991-03-08 03:56:18'),(3,'Kilback and Sons','Group','1236 Herzog Plaza Apt. 985\nLelaville, SC 02428','2000-09-17 12:07:00'),(4,'Hirthe Group','Inc','0598 Karlie Cove Suite 561\nNorth Diamondtown, HI 68149','1982-12-28 23:51:07'),(5,'Tremblay and Sons','PLC','6701 Lamont Route Suite 422\nWest Loristad, CO 09664-0996','2017-07-24 02:35:53'),(6,'Nolan, Bogan and Ullrich','LLC','484 Muller Valleys Suite 632\nDemondview, NV 55395-7116','1998-01-17 14:19:39'),(7,'Lowe Inc','Inc','232 Dagmar Way Suite 799\nNew Dorris, WY 08333-3334','1978-08-04 21:17:28'),(8,'Heaney-Blanda','Inc','786 Durward Glen Apt. 682\nHahnland, AZ 75350-2164','2013-02-03 12:08:02'),(9,'Wolff PLC','PLC','858 Rau Brooks Suite 290\nBrielleberg, TX 12195-1384','1994-08-04 08:55:29'),(10,'Kovacek-Brakus','PLC','602 Melyssa Square Suite 371\nYundtton, SC 24076','1974-07-26 11:49:12'),(11,'Gusikowski-Jast','and Sons','93322 Tina Brook\nSouth Lyric, MT 41421-5282','1972-12-26 19:25:54'),(12,'Gaylord-Hammes','LLC','4548 Bayer Plains\nWest Alf, MD 18480','1973-03-14 19:15:46'),(13,'Beier, Kling and Johnson','Group','7662 Curt Drives\nLake Kurtis, VA 68157','1983-07-08 10:55:28'),(14,'Roberts Group','LLC','23812 Valentine Rapid Apt. 936\nSatterfieldhaven, MT 26587','2006-09-13 04:49:16'),(15,'Kertzmann-Kessler','Inc','8168 Burdette Isle\nDonnellymouth, SC 30613','2009-06-23 14:38:59'),(16,'Kris-Hahn','PLC','98691 Maggie Course\nWest Beth, AL 92438','1978-07-06 10:38:30'),(17,'Witting Group','PLC','806 Zieme Falls\nPort Daneshire, OR 28468','1982-02-28 11:37:14'),(18,'Dibbert, Schulist and Boyle','PLC','0979 Linwood Squares Apt. 180\nChristhaven, MD 81813','1975-04-22 09:50:07'),(19,'Hoeger-Maggio','and Sons','705 Maci Loaf Suite 870\nBrennonview, WY 44630','1984-06-24 14:35:52'),(20,'Hand, Bins and Schoen','PLC','91243 Bayer Expressway Apt. 540\nAshlyland, DC 48048','2015-06-13 06:34:38'),(21,'Howell, Medhurst and Emard','Inc','670 Rickey Key\nEast Logan, AL 60791','2019-02-15 21:08:36'),(22,'Pfeffer-Schumm','Inc','01493 Berenice Parkways\nKrajcikhaven, NC 61494-1757','2020-09-18 19:43:13'),(23,'Hagenes, Sawayn and Tillman','Group','7403 Willis Port\nWest Kaydenville, AZ 35279-8545','2006-04-16 02:37:19'),(24,'Mosciski, Zemlak and Lynch','Group','9565 Lubowitz Turnpike Suite 693\nNew Walton, MT 22466-2431','1970-06-21 18:09:47'),(25,'Mueller-Schimmel','Ltd','40070 Mueller Spring\nWest Dillan, SC 96050-7942','2003-06-26 06:56:51'),(26,'Rosenbaum-Kirlin','Group','790 Theresa Views Apt. 286\nDanielleview, WY 27466-2416','1980-05-05 09:08:40'),(27,'Robel Group','PLC','91187 Warren Courts Apt. 879\nSouth Leonie, MT 49484','1999-10-07 01:13:28'),(28,'Lueilwitz, Borer and Runte','LLC','5510 Bruen Summit Apt. 140\nTianaview, DC 51054-9523','2010-12-22 16:13:11'),(29,'Zboncak, Feeney and Jast','LLC','94452 Graciela Falls\nLake Carrollstad, CA 25657','1972-12-20 17:02:59'),(30,'Leffler, Hagenes and Hudson','Group','542 Kari Skyway Apt. 526\nRogahnport, OH 55067-8702','2015-06-08 08:38:49'),(31,'Haag-Gaylord','Ltd','61186 Jast Stravenue Apt. 113\nNorth Jeniferview, HI 61536','2020-07-23 05:12:02'),(32,'Leffler, Hahn and Mohr','and Sons','57602 Jett Forge Apt. 012\nMullerfurt, RI 73879','1981-11-01 22:14:25'),(33,'Grady LLC','Group','346 Manuel Plains\nCorneliuston, DC 08226','2013-01-22 08:31:05'),(34,'Hauck PLC','Inc','56403 Swaniawski Inlet\nLake Juliamouth, NV 02469','1982-05-22 01:49:25'),(35,'Keebler, Dare and Rempel','Group','7737 Reinger Stream Apt. 457\nGerardchester, RI 56549','2019-12-12 23:19:19'),(36,'Upton LLC','Ltd','398 Augustine Junctions\nWest Hollie, PA 77286-2774','2016-07-10 03:58:16'),(37,'Weissnat, Klocko and Wiza','Inc','27483 Kihn Roads\nEast Pink, SC 27009','2009-02-20 05:28:38'),(38,'McLaughlin, Hilll and Willms','and Sons','597 Strosin Terrace\nDibberthaven, GA 78745-6173','2011-07-27 14:49:54'),(39,'Klocko-Kihn','Group','5026 Lilliana Prairie Apt. 477\nBartellbury, MO 44950','1990-12-06 20:44:26'),(40,'Abshire PLC','Group','22778 Rowland Flats Suite 505\nEast Pascalebury, SC 80219','1971-08-24 12:40:35');
/*!40000 ALTER TABLE `DISTRIBUTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENDUSER`
--

DROP TABLE IF EXISTS `ENDUSER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ENDUSER` (
  `EndUserID` int NOT NULL,
  `EndUserFname` varchar(50) NOT NULL,
  `EndUserLname` varchar(50) NOT NULL,
  `EndUserAddress` varchar(255) NOT NULL,
  `CustomerIDNumber` int NOT NULL,
  PRIMARY KEY (`EndUserID`),
  KEY `CustomerIDNumber_idx` (`CustomerIDNumber`),
  CONSTRAINT `CustomerIDNumber` FOREIGN KEY (`CustomerIDNumber`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENDUSER`
--

LOCK TABLES `ENDUSER` WRITE;
/*!40000 ALTER TABLE `ENDUSER` DISABLE KEYS */;
INSERT INTO `ENDUSER` VALUES (1027,'Deja','Doyle','9857 Boyle Forest Suite 340\nMyrtisbury, HI 57472-4963',200147),(1028,'Abe','Jacobson','9220 Matilde Shoal Apt. 741\nRoobmouth, MS 32122',201494),(1029,'Aletha','Hilll','224 Reichert Hills\nGwendolynview, LA 57542',200042),(1038,'Deion','Daugherty','9559 Lacey Ridges\nNew Andreaneborough, ID 45491-5325',200922),(1046,'Flossie','McClure','562 Ruben Ports\nNew Billy, ID 99329',200768),(1059,'Al','Bednar','1994 Alysa Ports Suite 256\nWinfieldmouth, TN 68779-9177',200690),(1065,'Halle','Fadel','525 Crist Orchard\nNew Linnea, VT 33765-8985',200443),(1083,'Barry','Swift','937 Bernardo Alley\nNew Estellestad, UT 90699',201108),(1101,'Cindy','Hirthe','186 Davis Green Suite 892\nKristianshire, UT 69283-5858',200234),(1110,'Petra','Rosenbaum','397 Rau Gardens\nZelmachester, GA 64710-1051',201689),(1113,'Amelia','Simonis','2053 Gene Tunnel Suite 857\nPort Orvillemouth, VT 40058-2020',201028),(1119,'Earl','Bechtelar','03373 Rutherford Bypass Apt. 507\nJanishaven, AK 60598-5278',201590),(1129,'Shayna','Waelchi','13800 Eula Mountain\nNorth Alessandra, MD 04666',201075),(1160,'Kevon','Cartwright','52319 Bruen River\nJeraldburgh, CA 55400',201336),(1167,'Rylee','Wehner','4870 Jacobi Neck\nNew Wilfridport, CA 61979-2642',201555),(1169,'Tatum','Ullrich','887 Cristobal Square\nReichelton, ME 74733',200624),(1189,'Jonatan','Marks','513 Schowalter Corner Suite 930\nLake Trevorberg, HI 65642-7969',200984),(1199,'Thomas','Spencer','0113 Giovani Motorway\nNew Carolanne, MO 89939',202149),(1201,'Kristoffer','Simonis','1089 Ethan Ridge Apt. 664\nFayechester, NV 96931',200685),(1204,'Ismael','Becker','49206 Sven Lock\nNorth Adaline, MT 13116',200443),(1232,'Landen','Turner','0678 Erick Route Suite 677\nLake Ricardofurt, WI 58791-6913',202169),(1266,'Shaina','Haag','2651 Zulauf Alley\nOllieberg, KY 49964',201442),(1270,'Baron','Breitenberg','2868 Stracke Summit\nWalterfort, MT 50417-9482',201952),(1287,'Lily','Harvey','49439 Conn Hills Apt. 188\nNorth Stella, IN 04607',200133),(1288,'Jamal','Willms','71270 Price Drive\nPort Einoland, KS 77612-0132',200196),(1295,'Marianna','Kiehn','36907 Pfannerstill Street\nGutkowskiport, AL 25654',200133),(1317,'Ari','Grady','17825 Jast Highway Apt. 121\nAniyashire, NC 84848',200728),(1328,'Jairo','Collier','0277 Denesik Streets\nWest Alfton, KY 09042',200768),(1332,'Rosa','Bergstrom','221 Feeney Ramp Suite 747\nSouth Sabina, DE 02816-6661',201028),(1338,'Garth','Durgan','28519 Shaylee Circles Apt. 962\nLake Lamont, NH 54234',200864),(1339,'Ramon','Bernhard','6007 Schuppe Field\nRitaberg, IL 06047',201078),(1358,'Wilhelmine','Cremin','52505 Cordelia Cove Suite 296\nConroystad, OK 69598-0807',200984),(1361,'Antonette','Davis','8347 Wyman Station\nDachchester, NV 51501',201366),(1370,'Fredy','Schmeler','9437 Sauer Alley Suite 377\nPort Major, MA 11986',201118),(1371,'Esther','Predovic','342 Nicolas Mountain Suite 951\nPort Sanfordmouth, VA 81407-7465',201565),(1379,'Eric','Ledner','620 Considine Parks Apt. 325\nNorth Zoieview, MD 50923-0299',200045),(1380,'Ardith','Jacobi','1130 Nikolaus Lights Suite 719\nMortimerton, SC 05247-6324',201078),(1388,'Art','Rice','8897 Trent Rue\nPollichton, DC 49453',202272),(1392,'Edmond','Schaefer','35331 Alexandrea Club Suite 149\nEast Godfreyberg, IA 36170',201740),(1400,'Richard','Bayer','97928 Torp Inlet\nPaigeburgh, NY 53034-8787',200905),(1407,'Althea','Haag','540 Jazmin Fields Suite 818\nPort Aida, VA 06788-7539',201338),(1431,'Cathrine','Corkery','655 Bednar Club\nLibbieborough, CT 81616-6847',200864),(1454,'Sage','Heller','158 Pat Turnpike\nWest Lilliana, WV 98177-2238',201125),(1489,'Carlie','Rath','41206 Upton Freeway\nToybury, DE 43436-5278',201928),(1495,'Bradly','Krajcik','481 Alivia Orchard Apt. 219\nMilanmouth, LA 70919',200697),(1496,'Woodrow','Wiegand','77100 Treutel Trail\nAlexandrechester, MA 96685-1970',201301),(1506,'Andreanne','Hettinger','01820 Lang Fort Suite 058\nNorth Jakaylashire, NC 13917',200939),(1510,'Damon','Hahn','456 Mitchell Isle Apt. 527\nNicolaschester, OK 29316',200506),(1534,'Germaine','Ortiz','06061 Heathcote Radial\nIsaacmouth, PA 07016-0536',201075),(1559,'Eddie','Jast','34381 Leannon Prairie\nNorth Ardith, WA 03634-7979',200905),(1562,'Vance','Ward','67737 Connelly Gateway\nLake Maiya, DE 73331',201176),(1580,'Luz','Legros','4474 Kulas Trace\nCasperberg, MD 42543-0203',200014),(1585,'August','Muller','49713 Wilkinson Curve Apt. 828\nPredovicfurt, SC 06709',201188),(1589,'Matilde','Haag','89889 Marc Union Apt. 099\nHeathcoteville, LA 34808',200935),(1594,'Joe','Denesik','0385 Cristal Street\nNorth Derrickview, ME 13720-1039',200685),(1595,'Felton','Hansen','78719 Kovacek Loaf Apt. 161\nNew Mayahaven, UT 80685-9108',200697),(1601,'Raleigh','Kub','9968 Jorge Knoll Apt. 674\nBashirianside, MD 90509',201056),(1621,'Sierra','Nienow','261 Lubowitz Underpass Apt. 890\nPort Paul, TX 96691-8975',200624),(1631,'Henry','Cremin','312 Wilma Lodge Suite 728\nMaynardfort, OK 92987',202265),(1640,'Autumn','Beier','084 Mueller Square Suite 608\nPort Leonelburgh, TX 29852-2284',201566),(1650,'Yolanda','Franecki','46616 Mertz Flats\nSouth Itzelport, MI 25135-7515',200506),(1651,'Kathryne','Champlin','306 Bergstrom Run\nLake Emilia, NY 37458',201914),(1652,'Nora','Jakubowski','01014 Bailey Course Apt. 441\nMacieview, PA 41291',200722),(1683,'Berry','Lebsack','279 Bud Crescent\nMaddisonfurt, IN 00756',201149),(1686,'Kade','Miller','08079 Malachi Loaf Suite 033\nNorth Bradley, CT 41146',200922),(1694,'Janice','Corkery','08478 Barton Islands Apt. 465\nSouth Santosborough, MI 20568-3869',200652),(1705,'Emilio','Altenwerth','256 Beer Trail\nEast Chelsie, UT 90389-8600',201919),(1712,'Josiah','Mills','18711 Melvin Garden\nWest Elmo, TX 30909-9063',202198),(1717,'Jazmin','Bartoletti','872 Hyatt Loaf Suite 053\nNorth Miller, KS 68188-4765',200810),(1726,'Shyann','Kunze','552 Jacobson Valleys\nSouth Kari, CT 93432-0145',200045),(1739,'Hermann','Blick','7706 Doyle Rapids\nNew Wardfurt, IL 12448',200147),(1742,'Brady','Dare','387 Considine Land Apt. 434\nNorth Myron, ND 01806',202194),(1750,'Jonathan','Orn','79150 Osborne Ramp Suite 299\nSchultzport, MA 29434',200652),(1757,'Greta','Robel','1301 Kirlin Estate Suite 855\nElianberg, WY 80228',200142),(1759,'Bo','Gulgowski','44886 Cordelia Trace\nRempelborough, GA 09976-9329',201250),(1769,'Nella','Gerhold','549 Marlene Groves\nHanehaven, CA 59562-5401',200722),(1773,'Randal','Lang','07858 Jules Neck Apt. 670\nPort Ed, MO 87747',201056),(1808,'Barry','Ullrich','4836 Caden Pike\nJordanton, NM 98285',202028),(1817,'Sasha','Lubowitz','8659 Kuphal Wells\nMitchellland, CO 42062',200142),(1823,'Karlee','Kling','93655 Deondre Lakes Suite 153\nPort Sincerebury, LA 06783-9873',201706),(1837,'Abigail','Bartoletti','75675 Pagac Stravenue Apt. 272\nLake Lyda, AL 61749',202119),(1849,'Nova','Hills','626 Torphy Mountains\nSkilesbury, MS 20825-0154',200810),(1853,'Jeanie','Rath','185 Harvey Extensions Suite 109\nHymanfort, CO 09502-9476',200042),(1864,'Alexa','Ferry','4475 Alena Key\nSouth Katherine, SC 69843',201506),(1869,'Mekhi','Larkin','460 Reilly Trace\nAlvinaborough, TX 13927-1682',201228),(1874,'Dewitt','Connelly','2827 Russel Knolls\nKeeblerfort, GA 76266',202153),(1882,'Jena','Hartmann','330 Jakubowski Court Suite 745\nEast Cathrine, CA 99673',201628),(1906,'Jaylan','Krajcik','81810 Ezekiel Underpass Suite 133\nSouth Aylin, VA 97237',201804),(1917,'Meghan','Rutherford','3590 Koby Bridge\nSouth Jaylen, WA 99176',200554),(1923,'Brannon','Collier','409 Lulu Key Apt. 153\nNew Ozellamouth, RI 48130',200234),(1929,'Jeanette','Moore','118 Marquardt Route Apt. 129\nLenoraburgh, KS 56849-6345',201729),(1944,'Winfield','Pfannerstill','01034 Alessia Locks\nBauchmouth, NV 69797',200939),(1946,'Shanel','Bayer','9924 Huel Ville Apt. 239\nNorth Carmelo, PA 47983-5309',200935),(1965,'Chelsey','Reichel','9255 Boyer Landing Apt. 960\nPort Camylle, MI 45608-2944',200014),(1970,'Carleton','Rolfson','1092 Margaretta Cliffs Apt. 100\nNew Alizabury, DC 37621-8789',200196),(1979,'Rae','Schowalter','024 Kutch Gardens\nNorth Freedaport, IL 82770-5938',200554),(1983,'Zion','Schowalter','96917 Lindgren Path\nLemuelburgh, FL 51955',200728),(1987,'Felton','Hodkiewicz','74439 Wade Row\nNew Sheilaside, MO 37134-0114',202186),(1994,'Emie','Jast','842 Shany Court\nDuBuqueshire, AR 12270',200690),(1996,'Derick','Cremin','2946 Fay Square\nPort Claudiafort, KY 86735',201527);
/*!40000 ALTER TABLE `ENDUSER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOSPITAL`
--

DROP TABLE IF EXISTS `HOSPITAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOSPITAL` (
  `HospitalID` int NOT NULL,
  `HospitalFname` varchar(50) NOT NULL,
  `HospitalLname` varchar(50) NOT NULL,
  `HospitalAddress` varchar(255) NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`HospitalID`),
  KEY `CustomerID_idx` (`CustomerID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOSPITAL`
--

LOCK TABLES `HOSPITAL` WRITE;
/*!40000 ALTER TABLE `HOSPITAL` DISABLE KEYS */;
INSERT INTO `HOSPITAL` VALUES (1027,'Morar LLC','gray','514 Ryan Ridge\nMyabury, OR 44803',201056),(1291,'Becker and Sons','navy','506 Urban Terrace Suite 784\nO\'Keefetown, AL 83230-2359',200147),(1439,'Pagac-Parisian','yellow','3884 Queen Square Suite 123\nSouth Vivianne, MD 04291-1113',200935),(1590,'Feil Inc','aqua','14706 Bernardo Throughway Suite 641\nWest Lorenzo, OK 96137-3047',201176),(1744,'Mosciski, Beatty and Hessel','purple','366 Alicia Hill Apt. 543\nGerlachmouth, PA 02095',201028),(1917,'Erdman, Grimes and Kerluke','navy','195 Bogisich Via\nEast Matt, IL 56853',201565),(1986,'Quigley Inc','lime','91258 Green Station Apt. 559\nPort Winstonland, DE 67204-1578',201149),(2258,'Haag, O\'Kon and Lockman','green','72066 Gulgowski Squares\nFredrickfort, MA 51532-7902',201494),(2265,'Legros PLC','gray','09249 Elyssa Underpass Suite 259\nKennaport, GA 80575-8854',200939),(2383,'Simonis PLC','white','38410 Alba Port Apt. 997\nAndersonchester, AL 66644-2984',200196),(2612,'Marvin PLC','lime','451 Margarita River Suite 634\nLemkeview, MT 35824',201228),(2801,'Steuber Inc','blue','6247 McLaughlin Prairie Apt. 674\nAniyatown, KS 22048',200728),(3177,'Pacocha Inc','fuchsia','833 Wyman Trail\nSouth Niko, NC 73507-6469',201078),(3376,'Reichert Ltd','lime','6253 Layla Path Suite 637\nFeesthaven, TX 20468-4343',201566),(3409,'Halvorson-Orn','maroon','948 Deon Shores Suite 079\nKianafurt, CT 74525',200624),(3633,'Harris-D\'Amore','purple','51029 Collier Light\nHermanburgh, IA 33748-9618',201075),(4054,'Rau and Sons','olive','03601 Eugenia Island Apt. 551\nTremblayberg, AL 20395',200922),(4358,'Douglas Group','lime','448 Powlowski Estates\nHaagchester, NV 52084-1607',201366),(4660,'Kulas, Dare and Schinner','yellow','388 Vivianne Well Apt. 182\nPort Chanelle, MS 04833',200014),(5140,'Murphy and Sons','gray','660 Roselyn Wells\nWest Beryl, IN 97925-0204',201336),(5340,'Krajcik, Herman and McCullough','aqua','8063 Hoppe Hills Suite 045\nLake Woodrow, NM 53152',201125),(5402,'Steuber, Vandervort and McDermott','maroon','01228 Dare Valley\nAmirburgh, OH 92011',200652),(5602,'Turner PLC','navy','717 Erdman Trafficway Suite 155\nWest Lowellfurt, MD 63496-0854',200554),(5604,'Gorczany PLC','teal','3974 Nicola Lakes\nNorth Augustus, NV 36926',201442),(5628,'Spinka-Lockman','fuchsia','788 Brenda Heights Suite 151\nRolandofort, KS 63863-4362',200810),(6351,'Ortiz PLC','maroon','727 Cruickshank Common\nLangoshview, HI 47960-8361',201188),(6390,'Ernser-Sawayn','blue','44319 Anibal Mount Apt. 409\nBreitenbergshire, MI 27046',200722),(6708,'Roob-Doyle','fuchsia','92640 Coleman Cliffs Apt. 453\nSouth Duncanview, HI 17924-1118',200142),(6770,'Beahan-Daniel','navy','79446 Brad Falls\nOvachester, MO 56612-8223',200042),(6971,'Prohaska, Upton and Wolf','olive','95475 Everett Burg Suite 424\nIsabelltown, CA 53610-1773',200984),(7061,'Ritchie Group','aqua','5976 Mills Run Suite 640\nBinsland, ME 42830-4006',201118),(7315,'Bahringer Inc','black','1686 Brakus Roads\nSouth Irma, ME 18476',201301),(7358,'Ritchie Ltd','olive','010 Taya Corners\nMckennafurt, DE 28670',200864),(7365,'Walter-Bednar','silver','111 Boehm Path\nNorth Luiston, DC 60901',201527),(7624,'Barrows-O\'Hara','aqua','803 Rhea Light Suite 843\nEast Shanaville, VT 56303',201506),(7637,'Rosenbaum-Bartell','silver','68244 Carlos Stravenue\nSouth Alexandra, SD 65765',200443),(7803,'Bergnaum PLC','purple','9334 Leonel Highway\nEast Shawn, WV 31280-9493',200690),(7837,'Reilly and Sons','white','07953 Davis Springs Apt. 343\nNorth Jadynchester, ND 58310-6356',200234),(8035,'Bahringer-Labadie','yellow','727 Nicholaus Drives\nPort Ora, DC 98223',200685),(8493,'Rosenbaum LLC','teal','85726 Luettgen Village\nTrentontown, WY 04717',201108),(8878,'Parker, Sporer and Turcotte','fuchsia','7304 Delphine Trafficway Apt. 296\nMcClureberg, SC 95481',201555),(9290,'Goldner Inc','yellow','374 Christa Hills Suite 252\nNorth Raheem, MI 31970',201590),(9363,'Dietrich, Greenfelder and Schmitt','blue','6075 Schuyler Motorway Suite 275\nHomenickton, LA 59346-8539',200133),(9402,'Pouros LLC','green','14544 Hilpert Fords\nLandenberg, TN 35006',200506),(9558,'Dietrich, Senger and Emard','olive','244 Howell Dam Suite 138\nWest Raina, RI 22802-8568',201338),(9577,'Cartwright and Sons','white','354 Smitham Gateway Apt. 843\nO\'Connerbury, WY 61300-7197',200768),(9688,'Haag-Mante','navy','13076 Raleigh Drive Suite 206\nWest Flavio, OR 62153',200697),(9935,'Hoeger-Skiles','yellow','9814 Alysa Garden\nBernierfort, NH 97407-5903',200905),(9968,'Reinger, Powlowski and Schinner','aqua','1727 Estelle Streets Apt. 180\nMayertmouth, KS 66222',200045),(9988,'Baumbach Inc','black','014 Cruz Dam Suite 854\nCarmeloview, OK 39376-6627',201250);
/*!40000 ALTER TABLE `HOSPITAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MANUFACTURING SITE`
--

DROP TABLE IF EXISTS `MANUFACTURING SITE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANUFACTURING SITE` (
  `MFGSiteNo` int NOT NULL,
  `MFGSite_FName` varchar(45) NOT NULL,
  `MFGSite_LName` varchar(45) NOT NULL,
  `MFGSite_Address` varchar(255) NOT NULL,
  PRIMARY KEY (`MFGSiteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MANUFACTURING SITE`
--

LOCK TABLES `MANUFACTURING SITE` WRITE;
/*!40000 ALTER TABLE `MANUFACTURING SITE` DISABLE KEYS */;
INSERT INTO `MANUFACTURING SITE` VALUES (101,'Friedrich','2','85412 Shields Drives\nRaheemmouth, AK 71936'),(102,'Hubert','3','222 Ervin Port\nLake Masonfurt, NY 96642'),(103,'Loyal','1','23086 Charlene Road\nNorth Alda, TX 35852-9713');
/*!40000 ALTER TABLE `MANUFACTURING SITE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NON CONFORMANCE REPORT`
--

DROP TABLE IF EXISTS `NON CONFORMANCE REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NON CONFORMANCE REPORT` (
  `NCR#` int NOT NULL,
  `NCR_Date_Created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Field_Action` varchar(255) NOT NULL,
  PRIMARY KEY (`NCR#`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NON CONFORMANCE REPORT`
--

LOCK TABLES `NON CONFORMANCE REPORT` WRITE;
/*!40000 ALTER TABLE `NON CONFORMANCE REPORT` DISABLE KEYS */;
INSERT INTO `NON CONFORMANCE REPORT` VALUES (11086,'2004-02-26 00:00:00','Est sit consectetur ea id et. Aut rem inventore sit. Optio perspiciatis ab dicta qui veritatis voluptas enim. Quo et veritatis eos qui eum fuga accusamus minima. Eaque dolore voluptates vero quos ipsum vero.'),(11268,'2006-12-27 00:00:00','Error accusamus itaque veniam. Et tenetur molestiae repellat iure numquam optio aut.'),(11567,'2002-07-05 00:00:00','Aut placeat sapiente consequatur velit. Blanditiis voluptatem veritatis aut doloribus impedit dolorum possimus aperiam. Dolorum vero aspernatur quisquam in fugiat.'),(11752,'1989-10-28 00:00:00','Ut sunt voluptate non rerum. Debitis magnam aut magni id eum est ipsam. Vitae qui possimus ipsa assumenda. Fugit nesciunt adipisci velit repellat perspiciatis.'),(11858,'1985-01-25 00:00:00','Quas odio sint deserunt architecto sint magni earum. Officiis harum quidem minima et. Voluptas debitis autem quia exercitationem id rerum et.'),(11867,'2016-12-31 00:00:00','Veritatis quis molestiae voluptatem ipsam velit tempora accusamus. Quia repudiandae doloribus ratione aut. Hic a et commodi animi voluptas repudiandae.'),(12332,'1976-08-08 00:00:00','Voluptate aspernatur unde autem amet. Sapiente et qui sit consequatur.'),(12411,'1970-01-02 00:00:00','Molestiae ipsa ut enim officia aut expedita eveniet. Aut a ea qui. Deleniti numquam sapiente tempore.'),(12461,'1997-12-22 00:00:00','Non et ipsa dicta. Quia voluptas ea sit voluptatem aut doloremque. Dolorem et molestias ut illum esse et.'),(12558,'2009-07-22 00:00:00','Suscipit voluptatem pariatur libero nostrum odit minus ex. In officia dolorem sit pariatur deserunt. Voluptates autem dolorum cumque similique error.'),(12572,'2015-11-30 00:00:00','Fuga est voluptates magnam eum. Quo voluptatem aut rem doloribus ut. Et sed doloremque temporibus commodi mollitia non. Deserunt asperiores fugit incidunt sit nemo ut a.'),(12788,'2017-07-10 00:00:00','Voluptas culpa incidunt libero et minima voluptas. Quaerat veniam occaecati repellat tenetur. Mollitia iste eius iure quos. Velit nobis veritatis facere culpa saepe consectetur voluptatem.'),(12800,'1985-06-29 00:00:00','Natus qui aut eaque. Aut modi quibusdam nisi minima qui. Et dignissimos minus cum. Nobis nulla distinctio nostrum labore libero qui.'),(12838,'1972-11-02 00:00:00','Hic exercitationem nihil itaque porro earum blanditiis. Odio asperiores maxime eaque rem nihil suscipit fugit.'),(13099,'2013-07-07 00:00:00','Voluptates possimus voluptatem et numquam molestiae et consequatur. Rerum ea magnam dolor aut eos.'),(13253,'1985-03-04 00:00:00','Nihil necessitatibus ut aut. Officia est in modi. Corrupti totam voluptas ipsam cupiditate quo ad.'),(13791,'1999-01-22 00:00:00','Eligendi molestiae qui fugiat. Qui in mollitia sed. Quo porro enim eos in autem et aspernatur.'),(13902,'1979-05-18 00:00:00','Dolor soluta ipsam animi velit. Voluptatem qui cupiditate qui. Similique consequatur nobis minus tenetur nesciunt autem voluptate.'),(14285,'2016-07-13 00:00:00','Tempore quas reprehenderit aut. At ipsam rerum quo. Sequi velit error perspiciatis magnam corrupti quas.'),(14648,'1990-11-19 00:00:00','Illum accusamus autem quia cupiditate atque debitis sunt praesentium. Voluptas alias non pariatur velit. Unde aut qui omnis perspiciatis adipisci nihil magnam. Ad esse aliquid eligendi qui nihil nisi non eaque.'),(14672,'1980-08-13 00:00:00','Ut ut esse dolorem atque nisi qui qui. Tempore voluptas earum non sequi iusto. Mollitia natus tenetur harum similique quae. Error quae non id assumenda unde quos labore. Blanditiis voluptatibus voluptatem molestias explicabo.'),(14793,'1976-04-02 00:00:00','Quo laborum sint sint aut hic saepe dolor velit. Facilis itaque nulla saepe vitae dolorum non aut. Vel magni beatae natus sit excepturi.'),(15085,'1996-10-05 00:00:00','Placeat nostrum quod ab ad. Et nesciunt sapiente est voluptas. Eum vero illum labore eligendi. Excepturi totam necessitatibus minima consequatur saepe quia nulla. Totam nulla repudiandae et voluptatem at consequatur qui.'),(15367,'1975-08-16 00:00:00','Animi nulla est voluptatem dolore suscipit blanditiis labore. Culpa et impedit quaerat iste consectetur eum consequatur. Illum iure libero esse architecto et qui tenetur. Voluptatem totam non possimus.'),(15474,'1999-07-27 00:00:00','Vel culpa eaque id. Molestiae debitis provident eos officiis optio est maxime deleniti. Laudantium molestiae saepe odit placeat nesciunt qui id. Suscipit qui dolore quia. Eos quisquam dolorem dolor libero qui.'),(15578,'1981-02-10 00:00:00','Est quis explicabo molestiae voluptatibus. Est consequatur ullam iste et. Possimus quis eaque aut ullam.'),(16262,'2020-03-25 00:00:00','In qui fugiat incidunt labore ipsum. Et itaque sed quia placeat et a quia. Harum nisi dolores quam. Non facilis hic qui voluptatem nemo autem debitis totam.'),(16569,'2015-04-19 00:00:00','Non et possimus delectus vero illum consectetur consequatur ut. Harum enim fuga aut id quis illum. Nisi voluptatibus eos aspernatur nostrum in eaque alias. Saepe est debitis corporis dolor mollitia.'),(16659,'1995-11-22 00:00:00','Ducimus consequuntur voluptatem dolores recusandae porro. Vitae quis deserunt quam dolores eos quia quam. Suscipit omnis aperiam dolorem nihil. Dolorem sequi laborum non dolore aut recusandae nesciunt. Fuga ut eveniet voluptas.'),(16964,'1989-04-06 00:00:00','Fugit repellendus consectetur earum cumque ut aliquam. Facilis similique aut consequatur officiis quisquam laborum et voluptatibus. Vel dignissimos tempora sed a sit voluptates. Assumenda aut ratione qui aut unde voluptate blanditiis.'),(17006,'2010-04-23 00:00:00','Rerum dignissimos consequatur illum non. Corrupti repellendus repellendus aut nobis. Sint ab temporibus sint aliquam tempore repudiandae reiciendis.'),(17076,'1976-12-03 00:00:00','Ipsa quis molestiae exercitationem quis rem aut incidunt. Tenetur qui eligendi tempora quae sed officiis corporis. Sit adipisci facere sit autem.'),(17171,'1995-09-02 00:00:00','Placeat exercitationem nesciunt nobis culpa. Consectetur illo alias delectus mollitia iusto. Et et beatae maxime consequatur quae.'),(17292,'1989-08-10 00:00:00','Quae perspiciatis consequuntur molestias iusto dolores. Eos occaecati maiores magnam officia dolorem et.'),(17361,'2005-12-09 00:00:00','Culpa explicabo mollitia expedita ea iste sequi repellat. Est quia totam aut explicabo.'),(17404,'1971-06-14 00:00:00','Et ipsa dolorum optio molestiae expedita quia. Qui repudiandae architecto omnis dolores reiciendis. Soluta in repellat quasi iure est. Dignissimos magni sapiente possimus optio in minima delectus totam.'),(17892,'1992-05-04 00:00:00','Fugit ut impedit fugit dolorem. Doloremque veniam corrupti facere esse accusantium porro et. A quasi qui est.'),(17987,'1970-12-02 00:00:00','Fugit provident ea omnis quae. Numquam ullam magnam sint doloribus quos necessitatibus. Et magnam et nulla autem. Ut eos architecto debitis nemo.'),(18500,'2013-11-21 00:00:00','Dicta itaque et ea eum. Temporibus cupiditate dolores sit at. Accusantium nemo architecto aspernatur. Vel placeat occaecati consequatur aut cum.'),(18707,'2022-10-21 00:00:00','Consequatur in natus occaecati quod voluptas nisi eos. Consequuntur harum porro quaerat quas alias quo. Sed enim voluptatem placeat vitae consequatur.'),(18786,'1985-10-29 00:00:00','Ullam doloribus sapiente voluptatem aliquam. Nihil architecto repudiandae quasi corrupti ratione maiores quam consequuntur. Temporibus quia quis sed blanditiis. Possimus totam sit aut unde.'),(18904,'1986-05-30 00:00:00','Accusamus et et provident qui esse id dolores. Repudiandae molestias officiis suscipit in reiciendis. Cum quod consequatur fugiat esse iusto blanditiis qui dolorum. Et neque illo impedit hic vero voluptatibus dolores.'),(18992,'1998-07-23 00:00:00','Aut omnis quasi earum unde repellat voluptatum. Qui eos nesciunt rerum qui et eaque consequuntur vel. Quia amet temporibus eius voluptatem aspernatur. Fugiat voluptatem ab corporis excepturi rerum deleniti reiciendis.'),(19245,'2015-05-07 00:00:00','Dicta sed et facilis cupiditate minus nesciunt. Pariatur iusto totam est molestiae. Aut qui iure labore nobis delectus. Inventore voluptate soluta qui quaerat consequatur.'),(19298,'2014-02-21 00:00:00','Amet possimus atque inventore. Architecto saepe neque dolore dolores. Enim quasi voluptates nihil aliquid laborum voluptatibus aspernatur. Debitis sapiente unde ut non sit laborum repudiandae.'),(19443,'1976-08-26 00:00:00','Ducimus sapiente autem qui cum repellat sit molestiae quam. Ratione voluptatem consequatur aliquam est laboriosam quod dolores. Possimus numquam temporibus consequuntur aliquid. Est et ipsum eius maiores quo.'),(19490,'2022-11-01 00:00:00','Ad dicta rerum est quidem consequatur velit. Voluptas cupiditate doloremque accusamus officiis eveniet placeat qui. Possimus ipsam sunt porro ut consequatur neque est.'),(19535,'2007-08-19 00:00:00','Architecto suscipit necessitatibus quos eius debitis. Aliquam cumque quibusdam quam sit mollitia. Minus quidem impedit eos esse ab. Natus laudantium atque hic aut sunt iste voluptates. Aut ut quis dolor hic quis sapiente deserunt.'),(19627,'2003-12-20 00:00:00','Et ratione pariatur culpa illo eum quis quae. Vel voluptatem voluptatem vel optio soluta. Nulla atque amet aut quos nam quia modi. Vel placeat occaecati deserunt placeat quae ut et fugit.'),(19711,'2015-07-28 00:00:00','Dolor ut laudantium reprehenderit totam ad. Dolore neque rem quia ea vel. Quis modi fugiat saepe quia omnis tenetur cum. Libero nobis omnis placeat qui quam et dolorem quos.');
/*!40000 ALTER TABLE `NON CONFORMANCE REPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(150) NOT NULL,
  `ProductMFGDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ProductLotNumber` int NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (0,'LightGray','1976-08-18 02:20:03',90327803),(1,'GhostWhite','2015-08-23 11:11:07',36834877),(2,'LightGoldenRodYellow','2016-10-20 09:46:16',69004216),(3,'Orange','2022-10-09 06:50:59',94459074),(4,'SteelBlue','1980-09-04 14:58:49',27492284),(5,'Chocolate','2022-03-08 06:46:24',15978752),(6,'GhostWhite','1994-01-28 03:24:27',63285451),(7,'Crimson','2013-06-07 07:59:50',69067600),(8,'SteelBlue','2006-05-15 23:58:21',3035450),(9,'HoneyDew','1973-04-24 05:43:59',30152380);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REPORTS`
--

DROP TABLE IF EXISTS `REPORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REPORTS` (
  `MFGSiteNumber` int NOT NULL,
  `NCRReportNumber` int NOT NULL,
  KEY `MFGSiteNumber_idx` (`MFGSiteNumber`),
  KEY `NCRReportNumber_idx` (`NCRReportNumber`),
  CONSTRAINT `MFGSiteNumber` FOREIGN KEY (`MFGSiteNumber`) REFERENCES `MANUFACTURING SITE` (`MFGSiteNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `NCRReportNumber` FOREIGN KEY (`NCRReportNumber`) REFERENCES `NON CONFORMANCE REPORT` (`NCR#`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REPORTS`
--

LOCK TABLES `REPORTS` WRITE;
/*!40000 ALTER TABLE `REPORTS` DISABLE KEYS */;
INSERT INTO `REPORTS` VALUES (102,11086),(102,11567),(101,11858),(103,12332),(102,12461),(103,12572),(103,12800),(102,13099),(102,13791),(102,14285),(103,14672),(101,15085),(103,15474),(103,16262),(101,16659),(102,17006),(102,17171),(103,17361),(103,17892),(101,18500),(103,18786),(103,18992),(101,19298),(101,19490),(103,19627),(103,19711),(103,19535),(102,19443),(101,19245),(102,18904),(103,18707),(101,17987),(101,17404),(102,17292),(103,17076),(102,16964),(102,16569),(101,15578),(103,15367),(103,14793),(101,14648),(101,13902),(103,13253),(102,12838),(102,12788),(101,12558),(101,12411),(102,11867),(103,11752),(102,11268);
/*!40000 ALTER TABLE `REPORTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SELLS`
--

DROP TABLE IF EXISTS `SELLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SELLS` (
  `DistributorNumber` int NOT NULL,
  `CustomerNumber` int NOT NULL,
  KEY `DistributorNumber_idx` (`DistributorNumber`),
  KEY `CustomerNumber_idx` (`CustomerNumber`),
  CONSTRAINT `CustomerNumber` FOREIGN KEY (`CustomerNumber`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `DistributorNumber` FOREIGN KEY (`DistributorNumber`) REFERENCES `DISTRIBUTOR` (`DistributorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SELLS`
--

LOCK TABLES `SELLS` WRITE;
/*!40000 ALTER TABLE `SELLS` DISABLE KEYS */;
INSERT INTO `SELLS` VALUES (1,200014),(2,200042),(3,200045),(4,200133),(5,200142),(6,200147),(7,200196),(8,200234),(9,200443),(10,200506),(11,200554),(12,200624),(13,200652),(14,200685),(15,200690),(16,200697),(17,200722),(18,200728),(19,200768),(20,200810),(21,200864),(22,200905),(23,200922),(24,200935),(25,200939),(26,200984),(27,201028),(28,201056),(29,201075),(30,201078),(31,201108),(32,201118),(33,201125),(34,201149),(35,201176),(36,201188),(37,201228),(38,201250),(39,201301),(40,201336),(1,201338),(2,201366),(3,201442),(4,201494),(5,201506),(6,201527),(7,201555),(8,201565),(9,201566),(10,201590);
/*!40000 ALTER TABLE `SELLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORES`
--

DROP TABLE IF EXISTS `STORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STORES` (
  `DistributorIDNumber` int NOT NULL,
  `ProductID` int NOT NULL,
  KEY `DistributorIDNumber_idx` (`DistributorIDNumber`),
  KEY `ProductID_idx` (`ProductID`),
  CONSTRAINT `DistributorIDNumber` FOREIGN KEY (`DistributorIDNumber`) REFERENCES `DISTRIBUTOR` (`DistributorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORES`
--

LOCK TABLES `STORES` WRITE;
/*!40000 ALTER TABLE `STORES` DISABLE KEYS */;
INSERT INTO `STORES` VALUES (1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,0),(12,1),(13,2),(14,3),(15,4),(16,5),(17,6),(18,7),(19,8),(20,9),(21,0),(22,1),(23,2),(24,3),(25,4),(26,5),(27,6),(28,7),(29,8),(30,9),(31,0),(32,1),(33,2),(34,3),(35,4),(36,5),(37,6),(38,7),(39,8),(40,9),(1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9);
/*!40000 ALTER TABLE `STORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER`
--

DROP TABLE IF EXISTS `SUPPLIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIER` (
  `SupplierID` int NOT NULL,
  `SupplierFname` varchar(45) NOT NULL,
  `SupplierLname` varchar(45) NOT NULL,
  `SupplierAddress` varchar(255) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER`
--

LOCK TABLES `SUPPLIER` WRITE;
/*!40000 ALTER TABLE `SUPPLIER` DISABLE KEYS */;
INSERT INTO `SUPPLIER` VALUES (0,'Walter LLC','Inc','94368 Beatty Crossroad\nAdamshaven, CT 97485'),(1,'Cummings-Kozey','LLC','91921 Eudora Forks Suite 795\nHilperthaven, IL 58839'),(2,'Beer PLC','Inc','935 Ferry Spurs\nLake Verna, WA 46734'),(3,'McKenzie-Ritchie','and Sons','0785 Duane Radial\nSouth Meredith, KS 29971-7012'),(4,'Lind, Tremblay and Ziemann','Ltd','2422 Cremin Stravenue\nNew Alphonsoville, OR 23664'),(5,'Raynor-Hermann','LLC','525 Lowe Drive Apt. 092\nJammieton, NY 03158'),(6,'Davis-Mills','LLC','503 Macey Mews Suite 678\nDavonfurt, MN 92723'),(7,'VonRueden Inc','Inc','796 Citlalli Drive\nLake Rubyview, NV 21884-1101'),(8,'Stanton-Simonis','Ltd','076 Alan Street\nNorth Emery, CO 96004-3619'),(9,'Pacocha LLC','PLC','2609 Mosciski Port Suite 134\nWaldoton, NV 92548'),(10,'O\'Reilly-Kutch','Inc','07586 Bertha Course\nBalistrerifort, VA 93524-1202'),(11,'Denesik-Cartwright','LLC','143 Julie Shoal\nLake Edwardo, AK 15442-9099'),(12,'Gottlieb LLC','Ltd','98172 Bogisich Flat\nNew Lance, OH 25971'),(13,'Okuneva Inc','Group','5839 Madeline Tunnel Apt. 496\nSouth Maximo, MN 46617'),(14,'Schamberger LLC','LLC','857 Lemke Estates Suite 262\nZemlakburgh, MD 38775'),(15,'Becker Inc','Inc','50963 Berge Causeway\nWehnerton, MN 01455'),(16,'Goldner-Luettgen','PLC','88260 Weldon Stream\nAlexzanderchester, WV 62671'),(17,'Cummings Inc','PLC','2391 Lynch Ranch\nNew Sydnie, ME 34522'),(18,'Dicki PLC','Group','93874 Toy Drives\nHowetown, KY 07692'),(19,'Doyle Group','Inc','3302 Franecki Causeway Apt. 633\nNorth Calista, WY 12078-7363'),(21,'Zieme-Zemlak','PLC','715 Bogan Wells Suite 392\nHammesville, ID 10016'),(22,'Funk-O\'Keefe','Group','6383 Allie Track Apt. 731\nHauckville, MS 71624-9939'),(23,'Bergstrom-Stroman','LLC','4356 Legros Gardens Apt. 469\nZboncaktown, NJ 88577'),(24,'McClure-Cummings','Inc','265 Rempel Manors\nQuinnfurt, NH 97140-5791'),(25,'Cronin-Durgan','Group','159 Rhea Summit\nPort Theodora, WY 27136-7513'),(26,'Casper Group','Inc','115 Karine Passage Apt. 567\nAustinstad, OK 38214'),(27,'Frami, Sipes and Satterfield','Group','1655 Mac Via\nKassulketown, MN 01988'),(28,'Runolfsdottir Ltd','LLC','89555 Pearl Green Apt. 035\nNew Kiarraville, MT 42518-6876'),(29,'Kassulke-Cartwright','Inc','6191 Toy Crest\nWittingland, NH 75050-1805'),(30,'Gulgowski PLC','Group','243 Hailee Rue Apt. 544\nSouth Lloydview, NJ 36038');
/*!40000 ALTER TABLE `SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIES`
--

DROP TABLE IF EXISTS `SUPPLIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIES` (
  `SupplierID` int NOT NULL,
  `MFGSiteNo` int NOT NULL,
  KEY `SupplierID_idx` (`SupplierID`),
  KEY `MFGSiteNo_idx` (`MFGSiteNo`),
  CONSTRAINT `MFGSiteNo` FOREIGN KEY (`MFGSiteNo`) REFERENCES `MANUFACTURING SITE` (`MFGSiteNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SupplierID` FOREIGN KEY (`SupplierID`) REFERENCES `SUPPLIER` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIES`
--

LOCK TABLES `SUPPLIES` WRITE;
/*!40000 ALTER TABLE `SUPPLIES` DISABLE KEYS */;
INSERT INTO `SUPPLIES` VALUES (6,102),(17,101),(2,101),(9,101),(29,102),(30,101),(8,101),(3,102),(22,103),(12,102),(24,103),(26,102),(11,103),(23,101),(19,103),(27,102),(13,103),(28,103),(16,101),(15,102),(10,103),(1,103),(25,103),(21,102),(14,103),(22,101),(7,103),(18,101),(5,103),(4,102);
/*!40000 ALTER TABLE `SUPPLIES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 11:31:49
