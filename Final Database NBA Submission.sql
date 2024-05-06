CREATE DATABASE  IF NOT EXISTS `nba2021_database` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nba2021_database`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: nba2021_database
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Temporary view structure for view `age_against_minutes`
--

DROP TABLE IF EXISTS `age_against_minutes`;
/*!50001 DROP VIEW IF EXISTS `age_against_minutes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `age_against_minutes` AS SELECT 
 1 AS `Player_age`,
 1 AS `Minutes Played`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `Award_ID` int NOT NULL AUTO_INCREMENT,
  `Award_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Award_ID`),
  UNIQUE KEY `Award_ID_UNIQUE` (`Award_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'All Star Game MVP'),(2,'Defensive Player of the Year'),(3,'Sportsmanship Award'),(4,'Twyman Stokes Teammate of the Year'),(5,'Kareem Abdul Jabbar Social Justice Champion'),(6,'Most Improved Player'),(7,'Most Valuable Player'),(8,'Rookie of the Year'),(9,'Sixth Man of the Year'),(10,'Finals MVP'),(11,'Hustle Award');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `center_position_games_started`
--

DROP TABLE IF EXISTS `center_position_games_started`;
/*!50001 DROP VIEW IF EXISTS `center_position_games_started`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `center_position_games_started` AS SELECT 
 1 AS `Player_name`,
 1 AS `Player_position`,
 1 AS `Player_games_started`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `coach_team_avg`
--

DROP TABLE IF EXISTS `coach_team_avg`;
/*!50001 DROP VIEW IF EXISTS `coach_team_avg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coach_team_avg` AS SELECT 
 1 AS `Coach_name`,
 1 AS `Career_Record`,
 1 AS `Team_name`,
 1 AS `Team_average`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `Coach_ID` int NOT NULL AUTO_INCREMENT,
  `Coach_name` varchar(50) DEFAULT NULL,
  `Career_Record` float NOT NULL,
  `Team_ID` int NOT NULL,
  `Award_ID` int NOT NULL,
  PRIMARY KEY (`Coach_ID`),
  KEY `fk_Coaches_Teams1_idx` (`Team_ID`),
  KEY `fk_Coaches_Awards1_idx` (`Award_ID`),
  CONSTRAINT `fk_Coaches_Awards1` FOREIGN KEY (`Award_ID`) REFERENCES `awards` (`Award_ID`),
  CONSTRAINT `fk_Coaches_Teams1` FOREIGN KEY (`Team_ID`) REFERENCES `teams` (`Team_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Nate McMilan',0.534,14,7),(2,'Ime Udoka',0.622,23,3),(3,'Steve Nash',0.597,2,1),(4,'Billy Donovan',0.578,30,7),(5,'James Borrego',0.447,6,3),(6,'J.B. Bickerstaff',0.409,29,6),(7,'Jason Kidd',0.516,16,3),(8,'Micahel Malone',0.534,20,5),(9,'Dwane Casey',0.486,27,11),(10,'Steve Kerr',0.682,17,3),(11,'Stephen Silas',0.24,5,6),(12,'Rick Carlisle',0.536,1,7),(13,'Tyronn Lue',0.595,13,4),(14,'Frank Vogel',0.526,7,11),(15,'Taylor Jenkins',0.564,11,6),(16,'Erik Spoelstra',0.593,5,11),(17,'Mike Budenholzer',0.592,12,10),(18,'Chris Finch',0.504,5,11),(19,'Willie Green',0.439,4,2),(20,'Tom Thibodeau',0.572,2,3),(21,'Mark Daigneault',0.299,22,9),(22,'Jamahl Mosley',0.268,15,8),(23,'Doc Rivers',0.587,11,8),(24,'Monty Williams',0.519,27,2),(25,'Chauncey Billups',0.329,24,8),(26,'Luke Walton',0.408,7,5),(27,'Alvin Gentry',0.456,21,6),(28,'Gregg Popovich',0.657,23,11),(29,'Nick Nurse',0.604,28,5),(30,'Quin Snyder',0.585,19,7),(31,'Wes Unseld',0.427,12,9);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management` (
  `Manager_ID` int NOT NULL AUTO_INCREMENT,
  `Manager` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Manager_ID`),
  UNIQUE KEY `Management_ID_UNIQUE` (`Manager_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management`
--

LOCK TABLES `management` WRITE;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
INSERT INTO `management` VALUES (1,'Calvin Booth'),(2,'Elton Brand'),(3,'Chad Buchanan'),(4,'Joe Cronin'),(5,'Andy Elisburg'),(6,'Marc Eversley'),(7,'Landry Fields'),(8,'Mike Gansey'),(9,'John Hammond'),(10,'Nico Harrison'),(11,'Jon Horst'),(12,'Zachary Kleiman'),(13,'Mitch Kupchak'),(14,'Trajan Langdon'),(15,'Sean Marks'),(16,'Monte McNair'),(17,'Bob Myers'),(18,'Rob Pelinka'),(19,'Scott Perry'),(20,'Sam Presti'),(21,'Travis Schlenk'),(22,'Tommy Sheppard'),(23,'Rafael Stone'),(24,'Troy Weaver'),(25,'Bobby Webster'),(26,'Michael Winger'),(27,'Brian Wright'),(28,'Justin Zanik'),(29,'James Jones'),(30,'Brad Stevens');
/*!40000 ALTER TABLE `management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `manager_current_teams`
--

DROP TABLE IF EXISTS `manager_current_teams`;
/*!50001 DROP VIEW IF EXISTS `manager_current_teams`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `manager_current_teams` AS SELECT 
 1 AS `Manager`,
 1 AS `Team_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mangement_teams`
--

DROP TABLE IF EXISTS `mangement_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mangement_teams` (
  `Manager_ID` int NOT NULL,
  `Team_ID` int NOT NULL,
  PRIMARY KEY (`Manager_ID`,`Team_ID`),
  KEY `fk_Mangement_Teams_Management1_idx` (`Manager_ID`),
  KEY `fk_Mangement_Teams_Teams1_idx` (`Team_ID`),
  CONSTRAINT `fk_Mangement_Teams_Management1` FOREIGN KEY (`Manager_ID`) REFERENCES `management` (`Manager_ID`),
  CONSTRAINT `fk_Mangement_Teams_Teams1` FOREIGN KEY (`Team_ID`) REFERENCES `teams` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangement_teams`
--

LOCK TABLES `mangement_teams` WRITE;
/*!40000 ALTER TABLE `mangement_teams` DISABLE KEYS */;
INSERT INTO `mangement_teams` VALUES (1,28),(2,24),(3,7),(4,19),(5,11),(6,2),(7,15),(8,29),(9,14),(10,26),(11,1),(12,27),(13,18),(14,20),(15,13),(16,16),(17,25),(18,12),(19,30),(20,17),(21,3),(22,21),(23,5),(24,29),(25,6),(26,10),(27,9),(28,22),(29,4),(30,23);
/*!40000 ALTER TABLE `mangement_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_team`
--

DROP TABLE IF EXISTS `player_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_team` (
  `Player_ID` int NOT NULL,
  `Team_ID` int NOT NULL,
  KEY `fk_Player_Team_Teams1_idx` (`Team_ID`),
  KEY `fk_Player_Team_Players1_idx` (`Player_ID`),
  CONSTRAINT `fk_Player_Team_Players1` FOREIGN KEY (`Player_ID`) REFERENCES `players` (`Player_ID`),
  CONSTRAINT `fk_Player_Team_Teams1` FOREIGN KEY (`Team_ID`) REFERENCES `teams` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_team`
--

LOCK TABLES `player_team` WRITE;
/*!40000 ALTER TABLE `player_team` DISABLE KEYS */;
INSERT INTO `player_team` VALUES (12,30),(274,17),(25,3),(27,21),(33,5),(41,29),(576,6),(126,10),(76,9),(165,22),(162,14),(154,26),(141,1),(134,27),(602,18),(605,20),(482,13),(156,16),(501,25),(265,12),(324,23),(266,4),(383,28),(377,24),(546,7),(87,19),(59,11),(332,2),(218,15),(189,29);
/*!40000 ALTER TABLE `player_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `Player_ID` int NOT NULL AUTO_INCREMENT,
  `Player_name` varchar(45) NOT NULL,
  `Player_age` int DEFAULT NULL,
  `Player_Position` varchar(45) DEFAULT NULL,
  `Player_minutes` int DEFAULT NULL,
  `Player_games_started` int DEFAULT NULL,
  `Awards_ID` int DEFAULT NULL,
  PRIMARY KEY (`Player_ID`),
  UNIQUE KEY `Player_ID_UNIQUE` (`Player_ID`),
  UNIQUE KEY `Player_name_UNIQUE` (`Player_name`),
  KEY `fk_Players_Awards1_idx` (`Awards_ID`),
  CONSTRAINT `fk_Players_Awards1` FOREIGN KEY (`Awards_ID`) REFERENCES `awards` (`Award_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Precious Achiuwa',22,'C',1725,28,9),(2,'Steven Adams',28,'C',1999,75,4),(3,'Bam Adebayo',24,'C',1825,56,3),(4,'Santi Aldama',21,'PF',360,0,7),(5,'LaMarcus Aldridge',36,'C',1050,12,8),(6,'Nickeil Alexander-Walker',23,'SG',1466,21,10),(7,'Grayson Allen',26,'SG',1805,61,9),(8,'Jarrett Allen',23,'C',1809,56,2),(9,'Jose Alvarado',23,'PG',834,1,6),(10,'Justin Anderson',28,'SF',316,6,1),(11,'Kyle Anderson',28,'PF',1484,11,5),(12,'Giannis Antetokounmpo',27,'PF',2204,67,11),(13,'Thanasis Antetokounmpo',29,'SF',473,6,1),(14,'Carmelo Anthony',37,'PF',1793,3,7),(15,'Cole Anthony',21,'PG',2059,65,1),(16,'OG Anunoby',24,'SF',1728,48,10),(17,'Ryan Arcidiacono',27,'PG',76,0,5),(18,'Trevor Ariza',36,'SF',462,11,3),(19,'D.J. Augustin',34,'PG',883,2,7),(20,'Deni Avdija',21,'SF',1984,8,5),(21,'Joel Ayayi',21,'SG',20,0,2),(22,'Deandre Ayton',23,'C',1713,58,9),(23,'Udoka Azubuike',22,'C',195,6,2),(24,'Marvin Bagley III',22,'PF',1146,25,1),(25,'LaMelo Ball',20,'PG',2422,75,8),(26,'Lonzo Ball',24,'PG',1212,35,2),(27,'Mo Bamba',23,'C',1824,69,4),(28,'Desmond Bane',23,'SG',2266,76,9),(29,'Dalano Banton',22,'PG',696,1,6),(30,'Cat Barber',27,'PG',13,0,6),(31,'Harrison Barnes',29,'PF',2587,77,5),(32,'Scottie Barnes',20,'PF',2617,74,6),(33,'RJ Barrett',21,'SF',2417,70,8),(34,'Will Barton',31,'SG',2277,71,3),(35,'Paris Bass',26,'SF',7,0,8),(36,'Charles Bassey',21,'C',168,0,3),(37,'Keita Bates-Diop',26,'SF',956,14,5),(38,'Nicolas Batum',33,'PF',1462,54,7),(39,'Kent Bazemore',32,'SF',545,14,6),(40,'Darius Bazley',21,'PF',1924,53,6),(41,'Bradley Beal',28,'SG',1439,40,8),(42,'Malik Beasley',25,'SG',1976,18,10),(43,'Jordan Bell',27,'C',2,0,10),(44,'DeAndre\' Bembry',27,'SF',1026,20,3),(45,'Dāvis Bertāns',29,'PF',807,0,11),(46,'Patrick Beverley',33,'PG',1476,54,11),(47,'Saddiq Bey',22,'SF',2704,82,8),(48,'Khem Birch',29,'C',991,28,4),(49,'Goga Bitadze',22,'C',729,16,9),(50,'Bismack Biyombo',29,'C',506,3,3),(51,'Nemanja Bjelica',33,'C',1142,0,8),(52,'Eric Bledsoe',32,'PG',1361,29,3),(53,'Keljin Blevins',26,'SF',349,1,9),(54,'Bogdan Bogdanović',29,'SG',1848,27,8),(55,'Bojan Bogdanović',32,'PF',2131,69,5),(56,'Bol Bol',22,'PF',81,0,2),(57,'Leandro Bolmaro',21,'SF',241,2,3),(58,'Isaac Bonga',22,'SF',69,0,3),(59,'Devin Booker',25,'SG',2345,68,1),(60,'Brandon Boston Jr.',20,'SG',760,0,1),(61,'Chris Boucher',29,'SF',1690,9,1),(62,'James Bouknight',21,'SG',304,0,1),(63,'Avery Bradley',31,'SG',1406,45,3),(64,'Tony Bradley',24,'C',549,7,2),(65,'Ignas Brazdeikis',23,'SF',536,1,8),(66,'Mikal Bridges',25,'SF',2854,82,11),(67,'Miles Bridges',23,'PF',2837,80,7),(68,'Oshae Brissett',23,'SF',1564,25,2),(69,'Malcolm Brogdon',29,'PG',1206,36,2),(70,'Armoni Brooks',23,'SG-PG',844,11,2),(71,'Dillon Brooks',26,'SF',885,31,4),(72,'Bruce Brown',25,'SF',1774,45,1),(73,'Charlie Brown Jr.',24,'SG',177,2,9),(74,'Chaundee Brown Jr.',23,'SG-SF',104,2,4),(75,'Greg Brown III',20,'SF',640,6,7),(76,'Jaylen Brown',25,'SF',2220,66,2),(77,'Moses Brown',22,'C',345,6,9),(78,'Sterling Brown',26,'SG',628,3,8),(79,'Troy Brown Jr.',22,'SF',1055,7,4),(80,'Jalen Brunson',25,'SG',2524,61,2),(81,'Thomas Bryant',24,'C',439,9,8),(82,'Shaq Buchanan',25,'SG',10,0,6),(83,'Reggie Bullock',30,'SF',1902,37,3),(84,'Trey Burke',29,'PG',441,0,5),(85,'Alec Burks',30,'SG',2318,44,8),(86,'Jared Butler',21,'SG',360,1,2),(87,'Jimmy Butler',32,'SF',1931,57,9),(88,'Devontae Cacok',25,'PF',121,0,10),(89,'Kentavious Caldwell-Pope',28,'SG',2329,77,11),(90,'Facundo Campazzo',30,'PG',1184,4,9),(91,'Vlatko Čančar',24,'PF',176,1,4),(92,'Devin Cannady',25,'PG',145,0,11),(93,'Clint Capela',27,'C',2042,73,6),(94,'Vernon Carey Jr.',20,'C',44,1,11),(95,'Jevon Carter',26,'PG',905,3,2),(96,'Wendell Carter Jr.',22,'PF',1852,61,7),(97,'Alex Caruso',27,'SG',1147,18,10),(98,'Willie Cauley-Stein',28,'C',183,2,2),(99,'Ahmad Caver',25,'SG',1,0,4),(100,'Justin Champagnie',20,'SF',281,0,4),(101,'Zylan Cheatham',26,'SF',5,0,5),(102,'Chris Chiozza',26,'PG',372,1,1),(103,'Marquese Chriss',24,'PF',346,0,8),(104,'Josh Christopher',20,'SG',1334,2,4),(105,'Gary Clark',27,'PF',378,1,5),(106,'Brandon Clarke',25,'PF',1246,1,5),(107,'Jordan Clarkson',29,'SG',2141,1,1),(108,'Nic Claxton',22,'C',974,19,8),(109,'Amir Coffey',24,'SG',1567,30,5),(110,'John Collins',24,'PF',1663,53,1),(111,'Zach Collins',24,'C',502,4,6),(112,'Darren Collison',34,'PG',37,0,10),(113,'Mike Conley',34,'PG',2058,72,4),(114,'Pat Connaughton',29,'SF',1691,19,9),(115,'Tyler Cook',24,'PF',200,2,2),(116,'Sharife Cooper',20,'PG',39,0,3),(117,'Petr Cornelie',26,'PF',38,0,2),(118,'DeMarcus Cousins',31,'C',718,7,10),(119,'Robert Covington',31,'PF',1940,42,11),(120,'Torrey Craig',31,'SF',1596,16,6),(121,'Jae Crowder',31,'PF',1886,67,6),(122,'Jarrett Culver',22,'SG',338,0,1),(123,'Jarron Cumberland',24,'SG',12,0,10),(124,'Cade Cunningham',20,'SG',2088,64,7),(125,'Seth Curry',31,'SG',2135,64,6),(126,'Stephen Curry',33,'PG',2211,64,2),(127,'Anthony Davis',28,'C',1404,40,7),(128,'Ed Davis',32,'C',201,3,7),(129,'Terence Davis',24,'SG',536,11,8),(130,'Gabriel Deck',26,'PF',56,0,4),(131,'Dewayne Dedmon',32,'C',1065,15,8),(132,'Sam Dekker',27,'PF',1,0,2),(133,'Javin DeLaurier',23,'C',3,0,5),(134,'DeMar DeRozan',32,'PF',2743,76,7),(135,'Mamadi Diakite',25,'PF',188,3,2),(136,'Cheick Diallo',25,'C',31,0,10),(137,'Hamidou Diallo',23,'SG',1269,29,11),(138,'Gorgui Dieng',32,'C',371,3,11),(139,'Spencer Dinwiddie',28,'PG-SG',1980,51,4),(140,'Donte DiVincenzo',25,'SG',1006,1,7),(141,'Luka Dončić',22,'PG',2301,65,3),(142,'Luguentz Dort',22,'SG',1665,51,10),(143,'Ayo Dosunmu',22,'SG',2110,40,10),(144,'Damyean Dotson',27,'SG',21,0,2),(145,'Devon Dotson',22,'PG',85,0,5),(146,'Sekou Doumbouya',21,'PF',16,0,2),(147,'Jeff Dowtin',24,'PG',108,0,5),(148,'PJ Dozier',25,'SG',340,0,1),(149,'Goran Dragić',35,'PG',498,8,1),(150,'Andre Drummond',28,'C',1437,36,11),(151,'Chris Duarte',24,'SG',1541,39,6),(152,'David Duke Jr.',22,'PG',341,7,2),(153,'Kris Dunn',27,'PG',336,3,10),(154,'Kevin Durant',33,'PF',2047,55,4),(155,'Jaime Echenique',24,'C',3,0,10),(156,'Anthony Edwards',20,'SG',2466,72,6),(157,'Carsen Edwards',23,'SG',79,0,4),(158,'Kessler Edwards',21,'SF',987,23,5),(159,'Rob Edwards',25,'SG',11,0,4),(160,'CJ Elleby',21,'SF',1174,28,11),(161,'Wayne Ellington',34,'SG',810,9,2),(162,'Joel Embiid',27,'C',2297,68,11),(163,'James Ennis III',31,'SF',56,0,11),(164,'Drew Eubanks',24,'C',1245,31,9),(165,'Tacko Fall',26,'C',59,1,10),(166,'Derrick Favors',30,'C',653,18,1),(167,'Bruno Fernando',23,'C',152,0,4),(168,'Dorian Finney-Smith',28,'PF',2644,80,11),(169,'Malik Fitts',24,'PF',63,0,2),(170,'Malachi Flynn',23,'PG',537,5,4),(171,'Bryn Forbes',28,'SG',1286,2,9),(172,'Aleem Ford',24,'SF',74,0,7),(173,'Trent Forrest',23,'PG',765,6,8),(174,'Evan Fournier',29,'SG',2358,80,7),(175,'De\'Aaron Fox',24,'PG',2083,59,3),(176,'Melvin Frazier',25,'SG',120,0,1),(177,'Tim Frazier',31,'PG',208,3,9),(178,'Enes Freedom',29,'C',411,1,9),(179,'Markelle Fultz',23,'PG',360,3,1),(180,'Wenyen Gabriel',24,'PF',358,5,6),(181,'Daniel Gafford',23,'C',1444,53,8),(182,'Danilo Gallinari',33,'PF',1672,18,9),(183,'Langston Galloway',30,'SG',107,0,8),(184,'Darius Garland',22,'PG',2430,68,6),(185,'Marcus Garrett',23,'SG',128,0,7),(186,'Usman Garuba',19,'PF',239,2,9),(187,'Luka Garza',23,'C',389,5,1),(188,'Rudy Gay',35,'PF',1038,1,5),(189,'Paul George',31,'PF',1077,31,3),(190,'Taj Gibson',36,'C',946,4,4),(191,'Josh Giddey',19,'SF',1700,54,8),(192,'Shai Gilgeous-Alexander',23,'PG',1942,56,10),(193,'Anthony Gill',29,'PF',463,0,4),(194,'Freddie Gillespie',24,'PF',119,2,6),(195,'Rudy Gobert',29,'C',2120,66,11),(196,'Brandon Goodwin',26,'PG',502,5,5),(197,'Jordan Goodwin',23,'SG',6,0,6),(198,'Aaron Gordon',26,'PF',2376,75,4),(199,'Eric Gordon',33,'SG',1669,46,8),(200,'Devonte\' Graham',26,'PG',2162,63,2),(201,'Jerami Grant',27,'PF',1500,47,1),(202,'Hassani Gravett',25,'PG',171,3,11),(203,'Danny Green',34,'SF',1353,28,6),(204,'Draymond Green',31,'PF',1329,44,6),(205,'Jalen Green',19,'SG',2138,67,8),(206,'JaMychal Green',31,'PF',1085,8,9),(207,'Javonte Green',28,'SF',1519,45,1),(208,'Jeff Green',35,'PF',1849,63,8),(209,'Josh Green',21,'SG',1039,3,4),(210,'Blake Griffin',32,'C',958,24,8),(211,'Quentin Grimes',21,'SG',786,6,7),(212,'Kyle Guy',24,'SG',186,0,1),(213,'Rui Hachimura',23,'PF',943,13,6),(214,'Tyrese Haliburton',21,'SG-PG',2695,77,8),(215,'Tyler Hall',24,'SG',2,0,9),(216,'R.J. Hampton',20,'SG',1402,14,5),(217,'Tim Hardaway Jr.',29,'SG',1245,20,11),(218,'James Harden',32,'PG',2419,65,6),(219,'Maurice Harkless',28,'SF',863,24,6),(220,'Jared Harper',24,'PG',43,0,6),(221,'Montrezl Harrell',28,'C',1641,3,10),(222,'Gary Harris',27,'SG',1730,30,4),(223,'Joe Harris',30,'SF',423,14,4),(224,'Tobias Harris',29,'PF',2543,73,9),(225,'Shaquille Harrison',28,'SG',23,0,10),(226,'Josh Hart',26,'SG',1791,53,11),(227,'Isaiah Hartenstein',23,'C',1216,0,4),(228,'Udonis Haslem',41,'C',83,0,6),(229,'Sam Hauser',24,'SF',158,0,3),(230,'Jaxson Hayes',21,'C',1398,28,7),(231,'Killian Hayes',20,'PG',1647,40,10),(232,'Gordon Hayward',31,'SF',1564,48,8),(233,'Aaron Henry',22,'SF',17,0,3),(234,'Juancho Hernangómez',26,'PF',445,9,1),(235,'Willy Hernangómez',27,'C',839,8,5),(236,'Tyler Herro',22,'SG',2151,10,5),(237,'Buddy Hield',29,'SG',2499,32,5),(238,'Haywood Highsmith',25,'SF',163,1,5),(239,'George Hill',35,'PG',1253,17,2),(240,'Malcolm Hill',26,'SF-SG',212,0,9),(241,'Solomon Hill',30,'SF',139,1,6),(242,'Nate Hinton',22,'SG',2,0,7),(243,'Jaylen Hoard',22,'SF',240,5,2),(244,'Aaron Holiday',25,'PG',1021,15,5),(245,'Jrue Holiday',31,'PG',2207,64,5),(246,'Justin Holiday',32,'SF-SG',2057,65,8),(247,'Richaun Holmes',28,'C',1074,37,6),(248,'Rodney Hood',29,'PF-SF',709,0,7),(249,'Scotty Hopson',32,'SG',18,0,1),(250,'Al Horford',35,'C',2005,69,1),(251,'Talen Horton-Tucker',21,'SG',1511,19,7),(252,'Danuel House Jr.',28,'SF',727,7,10),(253,'Dwight Howard',36,'C',971,27,8),(254,'Markus Howard',22,'SG',176,0,4),(255,'Kevin Huerter',23,'SF',2188,60,10),(256,'Jay Huff',23,'C',20,0,9),(257,'Elijah Hughes',23,'SG-SF',434,4,4),(258,'Feron Hunt',22,'SF',8,0,6),(259,'De\'Andre Hunter',24,'SF',1577,52,11),(260,'Chandler Hutchison',25,'SF',22,0,7),(261,'Bones Hyland',21,'SG',1310,4,4),(262,'Serge Ibaka',32,'C',877,12,7),(263,'Andre Iguodala',38,'SF',603,0,11),(264,'Joe Ingles',34,'SF',1122,15,9),(265,'Brandon Ingram',24,'SF',1869,55,3),(266,'Kyrie Irving',29,'PG',1091,29,9),(267,'Wes Iwundu',27,'SF',82,1,2),(268,'Frank Jackson',23,'PG',1164,7,2),(269,'Isaiah Jackson',20,'PF',541,15,7),(270,'Jaren Jackson Jr.',22,'PF',2126,78,3),(271,'Josh Jackson',24,'SF',830,3,6),(272,'Justin Jackson',26,'SF',37,0,3),(273,'Reggie Jackson',31,'SG',2337,75,8),(274,'LeBron James',37,'PF',2084,56,8),(275,'DeJon Jarreau',24,'SG',1,0,6),(276,'DaQuan Jeffries',24,'SG',9,0,6),(277,'Ty Jerome',24,'SG',801,4,10),(278,'Isaiah Joe',22,'SG',609,1,10),(279,'Alize Johnson',25,'PF',167,0,3),(280,'B.J. Johnson',26,'SF',65,0,10),(281,'Cameron Johnson',25,'PF',1730,16,9),(282,'David Johnson',20,'SG',2,0,1),(283,'Jalen Johnson',20,'PF',120,0,5),(284,'James Johnson',34,'PF',1191,10,9),(285,'Joe Johnson',40,'SG',2,0,11),(286,'Keldon Johnson',22,'SF',2392,74,8),(287,'Keon Johnson',19,'SG',697,12,2),(288,'Stanley Johnson',25,'PF',1094,27,10),(289,'Tyler Johnson',29,'PG',91,0,3),(290,'Nikola Jokić',26,'C',2476,74,6),(291,'Carlik Jones',24,'PG',23,0,9),(292,'Damian Jones',26,'C',1017,15,7),(293,'Derrick Jones Jr.',24,'PF',899,8,4),(294,'Herbert Jones',23,'PF',2335,69,2),(295,'Jemerrio Jones',26,'SF',15,0,2),(296,'Kai Jones',21,'C',63,0,9),(297,'Mason Jones',23,'SG',51,0,4),(298,'Tre Jones',22,'PG',1148,11,6),(299,'Tyus Jones',25,'PG',1549,23,8),(300,'DeAndre Jordan',33,'C',622,20,6),(301,'Cory Joseph',30,'PG',1600,39,11),(302,'Georgios Kalaitzakis',23,'SF',214,4,10),(303,'Frank Kaminsky',28,'C',181,0,4),(304,'Luke Kennard',25,'SG',1919,13,11),(305,'Braxton Key',24,'SF',197,0,3),(306,'George King',28,'SF',19,0,7),(307,'Louis King',22,'SF',104,0,10),(308,'Corey Kispert',22,'SF',1801,36,10),(309,'Maxi Kleber',30,'PF',1450,21,11),(310,'Brandon Knight',30,'PG',65,0,1),(311,'Nathan Knight',24,'PF',267,2,1),(312,'Kevin Knox',22,'SF',222,0,2),(313,'John Konchar',25,'SG',1292,7,1),(314,'Furkan Korkmaz',24,'SG',1414,19,10),(315,'Luke Kornet',26,'C',103,0,3),(316,'Vit Krejci',21,'SG',690,8,7),(317,'Arnoldas Kulboka',24,'SF',5,0,6),(318,'Jonathan Kuminga',19,'SF',1185,12,7),(319,'Kyle Kuzma',26,'PF',2204,66,6),(320,'Anthony Lamb',24,'SF',8,0,10),(321,'Jeremy Lamb',29,'SF-SG',935,0,8),(322,'Jock Landale',26,'C',589,1,11),(323,'Romeo Langford',22,'SG',771,5,1),(324,'Zach LaVine',26,'SG',2328,67,8),(325,'Jake Layman',27,'SF',231,1,3),(326,'Damion Lee',29,'SG',1256,5,10),(327,'Saben Lee',22,'PG',604,0,3),(328,'Alex Len',28,'C',620,10,9),(329,'Caris LeVert',27,'SG',1781,49,11),(330,'Kira Lewis Jr.',20,'PG',341,0,10),(331,'Scottie Lewis',21,'SG',7,0,7),(332,'Damian Lillard',31,'PG',1056,29,11),(333,'Nassir Little',21,'SF',1088,23,9),(334,'Isaiah Livers',23,'SF',383,5,9),(335,'Kevon Looney',25,'C',1732,80,2),(336,'Brook Lopez',33,'C',298,11,7),(337,'Robin Lopez',33,'C',612,9,3),(338,'Didi Louzada',22,'SG-SF',129,1,11),(339,'Kevin Love',33,'C',1665,4,10),(340,'Kyle Lowry',35,'PG',2133,63,9),(341,'Gabriel Lundberg',27,'SG',44,0,11),(342,'Timothé Luwawu-Cabarrot',26,'SF',685,18,1),(343,'Trey Lyles',26,'PF',1537,23,3),(344,'Théo Maledon',20,'PG',908,7,4),(345,'Sandro Mamukelashvili',22,'PF',407,3,1),(346,'Terance Mann',25,'SF',2317,33,1),(347,'Tre Mann',20,'PG',1367,26,10),(348,'Boban Marjanović',33,'C',128,0,10),(349,'Lauri Markkanen',24,'SF',1878,61,1),(350,'Naji Marshall',24,'SF',735,4,8),(351,'Caleb Martin',26,'SF',1372,12,11),(352,'Cody Martin',26,'SF',1866,11,7),(353,'Kelan Martin',26,'SF',450,1,8),(354,'Kenyon Martin Jr.',21,'SF',1656,2,4),(355,'Garrison Mathews',25,'SG',1712,33,4),(356,'Dakota Mathias',26,'SG',16,0,11),(357,'Wesley Matthews',35,'SG',1002,14,10),(358,'Tyrese Maxey',21,'PG',2650,74,5),(359,'Skylar Mays',24,'SG',220,5,8),(360,'Miles McBride',21,'PG',372,2,1),(361,'Mac McClung',23,'SG-PG',25,0,6),(362,'CJ McCollum',30,'SG',2145,62,3),(363,'T.J. McConnell',29,'PG',652,8,1),(364,'Jaden McDaniels',21,'PF',1803,31,10),(365,'Jalen McDaniels',24,'SF',895,2,6),(366,'Doug McDermott',30,'PF',1223,51,10),(367,'JaVale McGee',34,'C',1172,17,10),(368,'Cameron McGriff',24,'SF',46,0,6),(369,'Rodney McGruder',30,'SG',754,2,7),(370,'Alfonzo McKinnie',29,'SF',206,3,6),(371,'JaQuori McLaughlin',24,'PG',11,0,2),(372,'Jordan McLaughlin',25,'PG',902,3,9),(373,'Ben McLemore',28,'SG',1285,6,11),(374,'De\'Anthony Melton',23,'SG',1657,15,5),(375,'Sam Merrill',25,'SG',58,0,1),(376,'Chimezie Metu',24,'C',1279,20,8),(377,'Khris Middleton',30,'SF',2141,66,4),(378,'C.J. Miles',34,'SG',2,0,3),(379,'Patty Mills',33,'SG',2346,48,10),(380,'Paul Millsap',36,'C',376,1,7),(381,'Shake Milton',25,'SG',1179,6,10),(382,'Davion Mitchell',23,'PG',2076,19,5),(383,'Donovan Mitchell',25,'SG',2266,67,10),(384,'Evan Mobley',20,'PF',2331,69,9),(385,'Malik Monk',23,'SG',2139,37,11),(386,'Greg Monroe',31,'C',195,0,6),(387,'Moses Moody',19,'SG',607,11,9),(388,'Xavier Moon',27,'SG',137,0,6),(389,'Matt Mooney',24,'SG',2,0,11),(390,'Ja Morant',22,'PG',1889,57,10),(391,'Juwan Morgan',24,'PF',31,0,3),(392,'Jaylen Morris',26,'SG',16,0,10),(393,'Marcus Morris',32,'PF',1564,54,11),(394,'Markieff Morris',32,'PF',298,1,5),(395,'Monte Morris',26,'PG',2239,74,1),(396,'Emmanuel Mudiay',25,'PG',11,0,7),(397,'Mychal Mulder',27,'PG',239,3,2),(398,'Ade Murkey',24,'SG',1,0,10),(399,'Trey Murphy III',21,'SF',864,1,6),(400,'Dejounte Murray',25,'PG',2366,68,4),(401,'Mike Muscala',30,'C',592,0,1),(402,'Svi Mykhailiuk',24,'SF',716,5,10),(403,'Abdel Nader',28,'SF',145,0,10),(404,'Larry Nance Jr.',29,'C-PF',1040,11,4),(405,'RJ Nembhard Jr.',22,'SG',63,0,10),(406,'Aaron Nesmith',22,'SF',574,3,9),(407,'Raul Neto',29,'PG',1372,19,2),(408,'Malik Newman',24,'PG',8,0,4),(409,'Georges Niang',28,'PF',1736,7,3),(410,'Daishen Nix',19,'SG',261,0,2),(411,'Zeke Nnaji',21,'PF',698,1,1),(412,'Nerlens Noel',27,'C',562,11,10),(413,'Jaylen Nowell',22,'SG',975,1,8),(414,'Frank Ntilikina',23,'SG',685,5,5),(415,'Jusuf Nurkić',27,'C',1579,56,5),(416,'David Nwaba',29,'SF',609,4,5),(417,'Jordan Nwora',23,'SF',1185,13,7),(418,'Royce O\'Neale',28,'SF',2406,77,4),(419,'Semi Ojeleye',27,'PF',406,0,6),(420,'Chuma Okeke',23,'PF',1749,20,11),(421,'Josh Okogie',23,'SG',516,6,4),(422,'Onyeka Okongwu',21,'C',992,6,6),(423,'Isaac Okoro',21,'SF',1981,61,8),(424,'KZ Okpala',22,'PF',244,0,1),(425,'Victor Oladipo',29,'SG',173,1,7),(426,'Cameron Oliver',25,'SF',43,0,7),(427,'Kelly Olynyk',30,'C',764,1,6),(428,'Eugene Omoruyi',24,'SF',18,0,7),(429,'Miye Oni',24,'SG',44,0,8),(430,'Cedi Osman',26,'SF',1462,3,10),(431,'Daniel Oturu',22,'C',27,0,10),(432,'Kelly Oubre Jr.',26,'SF',1999,13,10),(433,'Jaysean Paige',27,'PG',7,0,10),(434,'Trayvon Palmer',27,'SG',17,0,11),(435,'Kevin Pangos',29,'PG',166,3,10),(436,'Jabari Parker',26,'PF',112,0,8),(437,'Eric Paschall',25,'PF',736,3,11),(438,'Chris Paul',36,'PG',2139,65,1),(439,'Cameron Payne',27,'PG',1278,12,7),(440,'Elfrid Payton',27,'PG',549,1,5),(441,'Gary Payton II',29,'SG',1247,16,4),(442,'Norvel Pelle',28,'C',19,0,8),(443,'Reggie Perry',21,'PF',187,1,8),(444,'Jamorko Pickett',24,'PF',176,0,10),(445,'Theo Pinson',26,'SF',148,0,11),(446,'Mason Plumlee',31,'C',1793,73,11),(447,'Jakob Poeltl',26,'C',1970,67,1),(448,'Aleksej Pokusevski',20,'PF',1233,12,7),(449,'Yves Pons',22,'SF',71,0,3),(450,'Jordan Poole',22,'SG',2283,51,11),(451,'Kevin Porter Jr.',21,'PG',1907,61,9),(452,'Michael Porter Jr.',23,'SF',265,9,1),(453,'Otto Porter Jr.',28,'PF',1396,15,9),(454,'Bobby Portis',26,'C',2028,59,6),(455,'Kristaps Porziņģis',26,'PF',1481,51,2),(456,'Micah Potter',23,'C',31,0,4),(457,'Dwight Powell',30,'C',1798,71,6),(458,'Myles Powell',24,'PG',52,0,11),(459,'Norman Powell',28,'SF-SG',1458,41,7),(460,'Joshua Primo',19,'SF',965,16,4),(461,'Taurean Prince',27,'PF',1177,8,8),(462,'Payton Pritchard',24,'PG',1001,2,6),(463,'Trevelin Queen',24,'SG',74,0,9),(464,'Neemias Queta',22,'C',120,0,5),(465,'Immanuel Quickley',22,'PG',1802,3,5),(466,'Jahmi\'us Ramsey',20,'SG',134,0,4),(467,'Julius Randle',27,'PF',2544,72,7),(468,'Austin Reaves',23,'SG',1418,19,3),(469,'Cam Reddish',22,'SF',1012,7,8),(470,'Davon Reed',26,'SG',668,5,6),(471,'Paul Reed',22,'C',302,2,10),(472,'Naz Reid',22,'C',1215,6,9),(473,'Nick Richards',24,'C',367,5,7),(474,'Josh Richardson',28,'SG',1600,7,3),(475,'Austin Rivers',29,'SG',1480,18,6),(476,'Duncan Robinson',27,'SG',2043,68,11),(477,'Justin Robinson',24,'PG',304,0,8),(478,'Mitchell Robinson',23,'C',1848,62,1),(479,'Jeremiah Robinson-Earl',21,'C',1087,36,4),(480,'Isaiah Roby',23,'PF',948,28,5),(481,'Rajon Rondo',35,'PG',697,1,9),(482,'Derrick Rose',33,'PG',636,4,1),(483,'Terrence Ross',30,'SG',1448,0,10),(484,'Terry Rozier',27,'SG',2458,73,9),(485,'Ricky Rubio',31,'PG',970,8,3),(486,'D\'Angelo Russell',25,'PG',2077,65,10),(487,'Matt Ryan',24,'SF',5,0,10),(488,'Domantas Sabonis',25,'PF-C',2136,61,3),(489,'Olivier Sarr',22,'C',421,2,8),(490,'Tomáš Satoranský',30,'SG-PG-SF',906,13,11),(491,'Jordan Schakel',23,'SG',30,0,11),(492,'Admiral Schofield',24,'SF',469,1,1),(493,'Dennis Schröder',28,'SG-PG',1837,29,11),(494,'Tre Scott',25,'SF',11,0,11),(495,'Jay Scrubb',21,'SG',121,0,1),(496,'Wayne Selden',27,'SG',19,0,11),(497,'Alperen Şengün',19,'C',1489,13,1),(498,'Collin Sexton',23,'SG',316,11,9),(499,'Landry Shamet',24,'SG',1437,14,6),(500,'Day\'Ron Sharpe',20,'PF',391,8,4),(501,'Pascal Siakam',27,'PF',2578,68,2),(502,'Chris Silva',25,'PF',91,0,7),(503,'Marko Simonovic',22,'C',35,0,1),(504,'Anfernee Simons',22,'SG',1681,30,4),(505,'Zavier Simpson',24,'PG',174,4,10),(506,'Jericho Sims',23,'PF',555,5,4),(507,'Deividas Sirvydis',21,'SG',27,0,3),(508,'Javonte Smart',22,'PG',200,1,1),(509,'Marcus Smart',27,'PG',2296,71,3),(510,'Dennis Smith Jr.',24,'PG',638,4,10),(511,'Ish Smith',33,'PG',1126,1,1),(512,'Jalen Smith',21,'PF',925,8,6),(513,'Xavier Sneed',24,'SF',39,0,11),(514,'Tony Snell',30,'SG',823,12,9),(515,'Jaden Springer',19,'SG',6,0,8),(516,'Cassius Stanley',22,'SG',155,1,3),(517,'Nik Stauskas',28,'SG',39,0,11),(518,'Lance Stephenson',31,'PG-SG',814,1,4),(519,'Lamar Stevens',24,'PF',1015,13,2),(520,'Isaiah Stewart',20,'C',1816,71,5),(521,'Max Strus',25,'SF',1587,16,3),(522,'Jalen Suggs',20,'PG',1307,45,2),(523,'Craig Sword',28,'SG',19,0,9),(524,'Keifer Sykes',28,'PG',566,11,4),(525,'Jae\'Sean Tate',26,'PF',2056,77,4),(526,'Jayson Tatum',23,'SF',2731,76,2),(527,'Terry Taylor',22,'SG',714,7,3),(528,'Garrett Temple',35,'SG',1098,16,7),(529,'Emanuel Terry',25,'PF',18,0,10),(530,'Tyrell Terry',21,'PG',3,0,11),(531,'Jon Teske',24,'C',8,0,4),(532,'Daniel Theis',29,'C',977,27,8),(533,'Brodric Thomas',25,'SG',60,0,3),(534,'Cam Thomas',20,'SG',1176,2,9),(535,'Isaiah Thomas',32,'PG',333,1,8),(536,'Matt Thomas',27,'SG',459,0,6),(537,'Klay Thompson',31,'SG',941,32,1),(538,'Tristan Thompson',30,'PF',897,6,10),(539,'JT Thor',19,'PF',262,0,9),(540,'Matisse Thybulle',24,'SG',1685,50,11),(541,'Killian Tillie',23,'C',461,3,1),(542,'Xavier Tillman Sr.',23,'PF',701,2,3),(543,'Isaiah Todd',20,'PF',74,0,1),(544,'Obi Toppin',23,'PF',1230,10,7),(545,'Juan Toscano-Anderson',28,'SF',994,6,6),(546,'Karl-Anthony Towns',26,'C',2476,74,11),(547,'Gary Trent Jr.',23,'SG',2448,69,10),(548,'P.J. Tucker',36,'PF',1981,70,2),(549,'Rayjon Tucker',24,'SG',71,0,5),(550,'Myles Turner',25,'C',1235,42,1),(551,'Jonas Valančiūnas',29,'C',2240,74,7),(552,'Denzel Valentine',28,'SG',222,0,1),(553,'Jarred Vanderbilt',22,'PF',1880,67,9),(554,'Fred VanVleet',27,'PG',2462,65,7),(555,'Devin Vassell',21,'SF',1937,32,1),(556,'Gabe Vincent',25,'PG',1589,27,10),(557,'Nikola Vučević',31,'C',2418,73,10),(558,'Dean Wade',25,'PF',980,28,11),(559,'Franz Wagner',20,'SF',2429,79,8),(560,'Moritz Wagner',24,'C',960,3,9),(561,'Ish Wainright',27,'PF',359,0,9),(562,'Kemba Walker',31,'PG',948,37,10),(563,'Lonnie Walker IV',23,'SG',1612,6,7),(564,'M.J. Walker',23,'SG',8,0,11),(565,'Tyrone Wallace',27,'SG',75,0,10),(566,'Derrick Walton',26,'PG',108,3,4),(567,'Brad Wanamaker',32,'PG',320,2,2),(568,'Duane Washington Jr.',21,'PG',968,7,6),(569,'P.J. Washington',23,'C',1768,28,1),(570,'Yuta Watanabe',27,'SF',445,4,4),(571,'Lindy Waters III',24,'SG',465,1,9),(572,'Tremont Waters',24,'PG',50,0,11),(573,'Trendon Watford',21,'SF',869,10,8),(574,'Paul Watson',27,'SF',156,3,6),(575,'Quinndary Weatherspoon',25,'SG',73,0,11),(576,'Russell Westbrook',33,'PG',2678,78,2),(577,'Coby White',21,'PG',1675,17,5),(578,'Derrick White',27,'SG',2199,52,1),(579,'Hassan Whiteside',32,'C',1162,8,5),(580,'Joe Wieskamp',22,'SG',205,0,11),(581,'Aaron Wiggins',23,'SG',1209,35,4),(582,'Andrew Wiggins',26,'SF',2329,73,3),(583,'Lindell Wigginton',23,'PG',199,0,8),(584,'Brandon Williams',22,'PG',640,16,8),(585,'Grant Williams',23,'PF',1875,21,4),(586,'Kenrich Williams',27,'SF',1072,0,2),(587,'Lou Williams',35,'PG',799,0,3),(588,'Patrick Williams',20,'PF',422,9,9),(589,'Robert Williams',24,'C',1804,61,3),(590,'Ziaire Williams',20,'SF',1346,31,9),(591,'D.J. Wilson',25,'PF',54,1,6),(592,'Dylan Windler',25,'SF',459,0,10),(593,'Justise Winslow',25,'PF',774,11,7),(594,'Cassius Winston',23,'PG',39,0,5),(595,'Christian Wood',26,'C',2094,67,5),(596,'Robert Woodard II',22,'SF',42,0,2),(597,'Delon Wright',29,'SG',1452,8,11),(598,'McKinley Wright IV',23,'PG',19,0,3),(599,'Moses Wright',23,'PF',14,0,10),(600,'Gabe York',28,'SG',21,0,8),(601,'Thaddeus Young',33,'PF',845,1,4),(602,'Trae Young',23,'PG',2652,76,10),(603,'Omer Yurtseven',23,'C',706,12,2),(604,'Cody Zeller',29,'C',355,0,7),(605,'Ivica Zubac',24,'C',1852,76,5);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `superstar_yearly_minutes_and_wins`
--

DROP TABLE IF EXISTS `superstar_yearly_minutes_and_wins`;
/*!50001 DROP VIEW IF EXISTS `superstar_yearly_minutes_and_wins`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `superstar_yearly_minutes_and_wins` AS SELECT 
 1 AS `Player_name`,
 1 AS `Player_minutes`,
 1 AS `Team_wins`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `Team_ID` int NOT NULL AUTO_INCREMENT,
  `Team_name` varchar(45) NOT NULL,
  `Team_wins` int NOT NULL,
  `Team_losses` int NOT NULL,
  `Team_Colors` varchar(45) NOT NULL,
  PRIMARY KEY (`Team_ID`),
  UNIQUE KEY `Team_ID_UNIQUE` (`Team_ID`),
  UNIQUE KEY `Team_name_UNIQUE` (`Team_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Atlanta Hawks',43,39,'Torch Red'),(2,'Boston Celtics',51,31,'Green'),(3,'Brooklyn Nets',44,38,'Black'),(4,'Charlotte Hornets',43,39,'Teal'),(5,'Chicago Bulls',46,36,'Red'),(6,'Cleveland Cavaliers',44,38,'Maroon'),(7,'Dallas Mavericks',52,30,'Royal Blue'),(8,'Denver Nuggets',48,34,'Midnight Blue '),(9,'Detroit pistons ',23,59,'Royal Blue '),(10,'Golden State Warriors',53,29,'California Golden Yellow '),(11,'Houston Rockets',20,62,'Red'),(12,'Indiana Pacers',25,57,'Navy Blue '),(13,'Los Angeles Clippers',42,40,'Red'),(14,'Los Angeles Lakers',33,49,'Gold '),(15,'Memphis Grizzlies ',56,26,'Grizzlies Blue '),(16,'Miami Heat ',53,29,'Black'),(17,'Milwaukee Bucks',51,31,'Good Land Green'),(18,'Minnesota Timberwolves',46,36,'Midnight Blue '),(19,'New Orleans Pelicans',36,46,'Navy Blue '),(20,'New York Knicks ',37,45,'Blue '),(21,'Oklahoma City Thunder ',24,58,'Thunder Blue '),(22,'Orlando Magic',22,60,'Blue '),(23,'Philadelphia 76ers',51,31,'Blue '),(24,'Phoenix Suns ',64,18,'Purple'),(25,'Portland Trail Blazers',27,55,'Red'),(26,'Sacremento Kings',30,52,'Purple'),(27,'San Antonio Spurs',34,48,'Grey'),(28,'Toronto Raptors ',48,34,'Red'),(29,'Utah Jazz ',49,33,'Navy Blue '),(30,'Washington Wizards',35,47,'Navy Blue ');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `age_against_minutes`
--

/*!50001 DROP VIEW IF EXISTS `age_against_minutes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `age_against_minutes` AS select `players`.`Player_age` AS `Player_age`,sum(`players`.`Player_minutes`) AS `Minutes Played` from `players` where (`players`.`Player_age` > 26) group by `players`.`Player_age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `center_position_games_started`
--

/*!50001 DROP VIEW IF EXISTS `center_position_games_started`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `center_position_games_started` AS select `t1`.`Player_name` AS `Player_name`,`t1`.`Player_position` AS `Player_position`,`t2`.`Player_games_started` AS `Player_games_started` from ((select `players`.`Player_name` AS `Player_name`,`players`.`Player_Position` AS `Player_position` from `players` having (`players`.`Player_Position` = 'C')) `t1` join (select `p`.`Player_name` AS `Player_name`,`p`.`Player_games_started` AS `Player_games_started` from `players` `p`) `t2` on((`t1`.`Player_name` = `t2`.`Player_name`))) order by `t1`.`Player_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `coach_team_avg`
--

/*!50001 DROP VIEW IF EXISTS `coach_team_avg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coach_team_avg` AS select `coaches`.`Coach_name` AS `Coach_name`,`coaches`.`Career_Record` AS `Career_Record`,`teams`.`Team_name` AS `Team_name`,avg((`teams`.`Team_wins` / (`teams`.`Team_wins` + `teams`.`Team_losses`))) AS `Team_average` from (`coaches` left join `teams` on((`coaches`.`Team_ID` = `teams`.`Team_ID`))) group by `coaches`.`Coach_name` with rollup having (`coaches`.`Career_Record` > 0.5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `manager_current_teams`
--

/*!50001 DROP VIEW IF EXISTS `manager_current_teams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manager_current_teams` AS select `management`.`Manager` AS `Manager`,`teams`.`Team_name` AS `Team_name` from ((`management` join `mangement_teams` on((`management`.`Manager_ID` = `mangement_teams`.`Manager_ID`))) join `teams` on((`mangement_teams`.`Team_ID` = `teams`.`Team_ID`))) order by `management`.`Manager` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `superstar_yearly_minutes_and_wins`
--

/*!50001 DROP VIEW IF EXISTS `superstar_yearly_minutes_and_wins`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `superstar_yearly_minutes_and_wins` AS select `p`.`Player_name` AS `Player_name`,`p`.`Player_minutes` AS `Player_minutes`,`t`.`Team_wins` AS `Team_wins` from ((`players` `p` join `player_team` `pt` on((`p`.`Player_ID` = `pt`.`Player_ID`))) join `teams` `t` on((`pt`.`Team_ID` = `t`.`Team_ID`))) where (`p`.`Player_minutes` > 2000) */;
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

-- Dump completed on 2022-12-12 23:29:36
