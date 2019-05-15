-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: fitnesscenter
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `geraet`
--

DROP TABLE IF EXISTS `geraet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `geraet` (
  `ID` tinyint(4) NOT NULL,
  `Preis` mediumint(9) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Hersteller` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geraet`
--

LOCK TABLES `geraet` WRITE;
/*!40000 ALTER TABLE `geraet` DISABLE KEYS */;
INSERT INTO `geraet` VALUES (0,400,'Hantel','Schwer-Gewicht'),(1,4034,'Schwimmbecken','DLRG e.v.'),(2,476,'Laufband','Kirgo'),(3,1000,'Golfplatz','Drei Bäume'),(4,516,'GolfSchläger','Drei Bäume'),(5,128,'Golfball','Drei Bäume'),(6,256,'Golfball','Drei Bäume'),(7,512,'Golfball','Drei Bäume'),(8,1024,'Golfball','Drei Bäume'),(9,2049,'Heimtrainer','ebay-kleinanzeigen'),(10,4096,'Laufband','Renn'),(11,121,'Fahrrad','Läufer'),(12,49,'Luftpumpe','Heiße-Luft GmbH & Co Kg AG'),(13,544,'Fernseher','LG');
/*!40000 ALTER TABLE `geraet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gerätnutzung`
--

DROP TABLE IF EXISTS `gerätnutzung`;
/*!50001 DROP VIEW IF EXISTS `gerätnutzung`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `gerätnutzung` AS SELECT 
 1 AS `Mitgliedsname`,
 1 AS `Mitgliedsvorname`,
 1 AS `Plan`,
 1 AS `zuständiger Mitarbeitername`,
 1 AS `zuständiger Mitarbeiternachname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kontaktdaten`
--

DROP TABLE IF EXISTS `kontaktdaten`;
/*!50001 DROP VIEW IF EXISTS `kontaktdaten`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `kontaktdaten` AS SELECT 
 1 AS `name`,
 1 AS `vorname`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mitarbeiter`
--

DROP TABLE IF EXISTS `mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mitarbeiter` (
  `Gehalt` smallint(6) DEFAULT NULL,
  `Personalnummer` tinyint(4) NOT NULL,
  `Vorname` varchar(20) DEFAULT NULL,
  `EMail` varchar(70) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Telefonnummer` mediumint(9) DEFAULT NULL,
  `Geschlecht` enum('m','w','d') DEFAULT NULL,
  `Postleitzahl` smallint(6) DEFAULT NULL,
  `Stadt` varchar(40) DEFAULT NULL,
  `Hausnummer` smallint(6) DEFAULT NULL,
  `Strasse` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Personalnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitarbeiter`
--

LOCK TABLES `mitarbeiter` WRITE;
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` VALUES (2754,0,'Hans','Hans-wurst@mail.com','Kleuser',6383438,'d',12367,'Berlin',456,'Bombenstraße'),(451,1,'Axel','Artikel-13@nogmail.com','Voss',32241,'m',32767,'Hamburg',3421,'Kohlstraße'),(2542,2,'Hillary','I-voted-4-Trump@America.us','Clinton',232324,'w',32323,'Washington DC',12,'Looser Alle'),(2543,3,'Angelina','angela.merkel@cdu.au','Jolie',12345,'w',32767,'Wermelskirchen',32,'Adolf-Flöhringstr.'),(2544,4,'Jolina','Jo@gmx.com','Freixenette',12346,'d',32767,'Wermelskirchen',33,'Berlinerstr.'),(2545,5,'Elias','fuck@Ju.Göhte','Mbarek',242422,'m',32767,'Wermelskirchen',56,'Marktstr.'),(2546,6,'Sören','savan@gal.br','Wicke Iurgel',12348,'m',32767,'Wermelskirchen',89,'Dornbusch'),(2547,7,'Chantall','chanti-Lippenstift@gmail.com','Harz',3232,'w',32767,'Wermelskirchen',1,'Hülsenbusch'),(2548,8,'Danger','Danger-Ihst.bohs@gmx.de','Four',3103,'m',32767,'Wermelskirchen',2,'Wirtsmühle'),(2549,9,'Dennis','ERD.ogan@gefängniss.tr','Yucel',2987,'m',32767,'Wermelskirchen',56,'Obere Bachstr.'),(2550,10,'Julius','Juju@web.de','Caesar',974174,'m',32767,'Wermelskirchen',99,'Untere Bachstr.'),(2551,11,'Janette','jcd.max@t-online.de','Susette',972688,'w',32767,'Wermelskirchen',2,'Wustbachstr.'),(2552,12,'Jaqcline','Grep@linux.us','Chantall',7069637,'w',32767,'Wermelskirchen',345,'Joseph-Haydnstr.'),(2553,13,'Johanna','CCD@dbl.de','Dubiel',1753385,'w',32767,'Wermelskirchen',38,'Max-Regerstr.'),(2554,14,'Kevin','ICH-BIN-G_U_H_T@sandra.com','Seinsche',31313,'d',32767,'Wermelskirchen',34,'B51 N'),(2555,15,'Jonas','Tsordo-van-de-don@gmail.com','Schruba',642325,'m',32767,'Wermelskirchen',72,'Hinterm Eickerberg'),(2556,16,'Marvin','mmd-maximus@gmx.us','Dubiel',12358,'m',32767,'Wermelskirchen',38,'Wustbachstr.'),(2557,17,'Linus','Hartz.of.iron-4@gmail.com','Conrad',5445,'m',32767,'Wermelskirchen',29,'Hülsenbusch'),(2558,18,'Lennart','mc@cubecraft.net','Conrad',12360,'m',32767,'Wermelskirchen',29,'Hülsenbusch'),(2559,19,'Tom','t@om.de','Boddenberg',434367,'m',32767,'Wermelskirchen',17,'Simonweg'),(2560,20,'Thomas','Deutsch-Lehrer@gmx.com','Berndhäuser',12135,'m',32767,'Wermelskirchen',433,'Lehrerstr.');
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mitarbeiter_adresse`
--

DROP TABLE IF EXISTS `mitarbeiter_adresse`;
/*!50001 DROP VIEW IF EXISTS `mitarbeiter_adresse`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `mitarbeiter_adresse` AS SELECT 
 1 AS `Vorname`,
 1 AS `Postleitzahl`,
 1 AS `Stadt`,
 1 AS `Strasse`,
 1 AS `Hausnummer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mitglied`
--

DROP TABLE IF EXISTS `mitglied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mitglied` (
  `Postleitzahl` smallint(6) DEFAULT NULL,
  `Stadt` varchar(40) DEFAULT NULL,
  `Hausnummer` smallint(6) DEFAULT NULL,
  `Straße` varchar(40) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `ID` smallint(6) NOT NULL,
  `Telefonnummer` mediumint(9) DEFAULT NULL,
  `EMail` varchar(70) DEFAULT NULL,
  `Vorname` varchar(20) DEFAULT NULL,
  `Geschlecht` enum('m','d','w') DEFAULT NULL,
  `fk_Trainingsplan` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `fk_Trainingsplan` (`fk_Trainingsplan`),
  CONSTRAINT `mitglied_ibfk_1` FOREIGN KEY (`fk_Trainingsplan`) REFERENCES `trainingsplan` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitglied`
--

LOCK TABLES `mitglied` WRITE;
/*!40000 ALTER TABLE `mitglied` DISABLE KEYS */;
INSERT INTO `mitglied` VALUES (32767,'Wermelskirchen',12,'Langenbusch','Nitsche',0,8388607,'severinnitsche@gmail.com','Severin','m',0),(11212,'Tente',12,'Obere Bachstr.','Müller',1,8388607,'mein-Gott@mail.com','Hans','m',19),(12312,'Hückeswagen',36,'Untere Bachstr.','Schickelgruber',2,75739,'angie-mertens@gmx.de','Adolf','m',18),(13132,'Remscheid',12,'Wustbachstr.','Bergmann',3,4439,'green-War@whales.com','Kathin','w',17),(13142,'Kiel',56,'Joseph-Haydnstr.','Wendt',4,84131,'blindi-behindi@mail.com','Sabine','w',16),(32767,'Ernsthagen',1,'Max-Regerstr.','Wagner',5,2928,'Rihnuq@gmx.com','Sabina','d',15),(32767,'Rosenheim',664,'B51 N','Schneider',6,4456,'svedlana@t-online.de','Sabrina','w',14),(32767,'Neustadt',75,'Hinterm Eickerberg','Ferdö',7,35434,'salvani@spain.pain','Susanne','w',13),(32767,'Altenberg',5,'Wustbachstr.','Klum',8,93465,'America-fuck-yeah@Us.mail','Heidi','d',12),(11212,'Odenthal',7,'Hülsenbusch','Hopkins',9,92345,'Fed-Ex@gmx.de','Marta','w',11),(12312,'Arnzhäuschen',9,'Hülsenbusch','Marshall',10,578670,'Rent-a-kid@gmx.de','Martina','w',10),(13132,'Köln',34,'Simonweg','Renntier',11,315659,'Nin@ten.do','Rudolph','m',9),(23242,'Duisburg',565,'Hasselbusch','Pan',12,91654,'ani@me.jp','Peter','m',8),(32767,'Düsseldorf',2,'A2','Dienst',13,904936,'Hat@sune.miko','Johann','m',7),(32767,'Frankfurt',11,'Media Park','Johann',14,2669,'ist@dreck.de','Timo','m',6),(32767,'Mainz',7,'Schillerstr.','Johann',15,3658,'Google@gmail.com','Luca','d',5),(32767,'Frankfurt a.M.',99,'Stockhauserstr.','Johann',16,43684,'mark-zuckerberg@fb.com','Axel','m',4),(11212,'Wesler',9,'Markusplatz','Granate',17,986245,'sad-song@ggong.com','Renate','m',3),(12312,'Reinshagen',4,'Genesis','Ofenbach',18,626,'salut@sava.fr','Bernhard','m',2),(13132,'Zabeltitz',1,'Exodus','Schröder',19,23246,'baguette-de@fromage.de','Jacob','m',1);
/*!40000 ALTER TABLE `mitglied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitglied_geraet_benutzen`
--

DROP TABLE IF EXISTS `mitglied_geraet_benutzen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mitglied_geraet_benutzen` (
  `fk_Mitglied` smallint(6) NOT NULL,
  `fk_Geraet` tinyint(4) NOT NULL,
  PRIMARY KEY (`fk_Mitglied`,`fk_Geraet`),
  KEY `fk_Geraet` (`fk_Geraet`),
  CONSTRAINT `mitglied_geraet_benutzen_ibfk_1` FOREIGN KEY (`fk_Mitglied`) REFERENCES `mitglied` (`ID`),
  CONSTRAINT `mitglied_geraet_benutzen_ibfk_2` FOREIGN KEY (`fk_Geraet`) REFERENCES `geraet` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitglied_geraet_benutzen`
--

LOCK TABLES `mitglied_geraet_benutzen` WRITE;
/*!40000 ALTER TABLE `mitglied_geraet_benutzen` DISABLE KEYS */;
INSERT INTO `mitglied_geraet_benutzen` VALUES (0,0),(13,0),(14,0),(15,0),(17,0),(18,0),(1,1),(1,2),(1,3),(1,4),(19,5),(10,6),(10,7),(12,7),(6,8),(11,8),(6,9),(11,9),(6,10),(11,10),(6,11),(11,11),(1,12),(2,12),(4,12),(6,12),(8,12),(10,12),(15,12),(17,12),(19,12),(1,13),(3,13),(5,13),(7,13),(9,13),(11,13),(13,13);
/*!40000 ALTER TABLE `mitglied_geraet_benutzen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitglied_geraet_zerstoeren`
--

DROP TABLE IF EXISTS `mitglied_geraet_zerstoeren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mitglied_geraet_zerstoeren` (
  `fk_Mitglied` smallint(6) NOT NULL,
  `fk_Geraet` tinyint(4) NOT NULL,
  `Schaden` tinytext,
  PRIMARY KEY (`fk_Mitglied`,`fk_Geraet`),
  KEY `fk_Geraet` (`fk_Geraet`),
  CONSTRAINT `mitglied_geraet_zerstoeren_ibfk_1` FOREIGN KEY (`fk_Mitglied`) REFERENCES `mitglied` (`ID`),
  CONSTRAINT `mitglied_geraet_zerstoeren_ibfk_2` FOREIGN KEY (`fk_Geraet`) REFERENCES `geraet` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitglied_geraet_zerstoeren`
--

LOCK TABLES `mitglied_geraet_zerstoeren` WRITE;
/*!40000 ALTER TABLE `mitglied_geraet_zerstoeren` DISABLE KEYS */;
INSERT INTO `mitglied_geraet_zerstoeren` VALUES (0,0,'Gewicht Heruntergefallen'),(1,2,'Vollgeblutet'),(1,3,'Zerschlagen'),(1,4,'Angesprayt'),(1,5,'Geklaut'),(1,6,'Aus dem Fenster geschmissen'),(1,7,'Als Mordwerkzeug verwendet'),(1,9,'An Greenpeace gespendet'),(1,10,'Angekotzt'),(13,13,'In der Pfanne gewendet');
/*!40000 ALTER TABLE `mitglied_geraet_zerstoeren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `schaden`
--

DROP TABLE IF EXISTS `schaden`;
/*!50001 DROP VIEW IF EXISTS `schaden`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schaden` AS SELECT 
 1 AS `Schaden`,
 1 AS `name`,
 1 AS `vorname`,
 1 AS `geraet`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `trainingsplan`
--

DROP TABLE IF EXISTS `trainingsplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainingsplan` (
  `Plan` tinytext,
  `ID` smallint(6) NOT NULL,
  `fk_Mitarbeiter` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Mitarbeiter` (`fk_Mitarbeiter`),
  CONSTRAINT `trainingsplan_ibfk_1` FOREIGN KEY (`fk_Mitarbeiter`) REFERENCES `mitarbeiter` (`Personalnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainingsplan`
--

LOCK TABLES `trainingsplan` WRITE;
/*!40000 ALTER TABLE `trainingsplan` DISABLE KEYS */;
INSERT INTO `trainingsplan` VALUES ('Proteinshake!!',0,0),('DEO Dringend!',1,0),('Aphetamine oder Ende',2,0),('1.Laufen 2.Proteinshake 3.Nulldiät',3,20),('Laufband',4,2),('Kardio',5,13),('Ausdauer',6,8),('Handstand',7,20),('Kopfstand',8,20),('Kerze',9,12),('Sprint',10,1),('Boxen',11,1),('Muskeltraining',12,1),('Hochsprung',13,2),('Tieftauchen',14,9),('Spazieren',15,5),('Weittauchen',16,17),('Quintathlon',17,13),('Septathlon',18,19),('Octathlon',19,4);
/*!40000 ALTER TABLE `trainingsplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `gerätnutzung`
--

/*!50001 DROP VIEW IF EXISTS `gerätnutzung`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gerätnutzung` AS select `mitglied`.`Name` AS `Mitgliedsname`,`mitglied`.`Vorname` AS `Mitgliedsvorname`,`trainingsplan`.`Plan` AS `Plan`,`mitarbeiter`.`Name` AS `zuständiger Mitarbeitername`,`mitarbeiter`.`Vorname` AS `zuständiger Mitarbeiternachname` from ((`mitglied` join `trainingsplan` on((`mitglied`.`fk_Trainingsplan` = `trainingsplan`.`ID`))) join `mitarbeiter` on((`trainingsplan`.`fk_Mitarbeiter` = `mitarbeiter`.`Personalnummer`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kontaktdaten`
--

/*!50001 DROP VIEW IF EXISTS `kontaktdaten`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kontaktdaten` AS select `mitglied`.`Name` AS `name`,`mitglied`.`Vorname` AS `vorname`,`mitglied`.`EMail` AS `email` from `mitglied` union select `mitarbeiter`.`Name` AS `name`,`mitarbeiter`.`Vorname` AS `vorname`,`mitarbeiter`.`EMail` AS `email` from `mitarbeiter` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mitarbeiter_adresse`
--

/*!50001 DROP VIEW IF EXISTS `mitarbeiter_adresse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mitarbeiter_adresse` AS select `mitarbeiter`.`Vorname` AS `Vorname`,`mitarbeiter`.`Postleitzahl` AS `Postleitzahl`,`mitarbeiter`.`Stadt` AS `Stadt`,`mitarbeiter`.`Strasse` AS `Strasse`,`mitarbeiter`.`Hausnummer` AS `Hausnummer` from `mitarbeiter` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schaden`
--

/*!50001 DROP VIEW IF EXISTS `schaden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schaden` AS select `mitglied_geraet_zerstoeren`.`Schaden` AS `Schaden`,`mitglied`.`Name` AS `name`,`mitglied`.`Vorname` AS `vorname`,`geraet`.`Name` AS `geraet` from ((`mitglied_geraet_zerstoeren` join `mitglied` on((`mitglied_geraet_zerstoeren`.`fk_Mitglied` = `mitglied`.`ID`))) join `geraet` on((`mitglied_geraet_zerstoeren`.`fk_Geraet` = `geraet`.`ID`))) */;
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

-- Dump completed on 2019-05-15 19:40:33
