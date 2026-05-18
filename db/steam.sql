-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: steam
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `game_id` int NOT NULL,
  `has_achievements` int DEFAULT NULL,
  `total_achievements` int DEFAULT NULL,
  `avg_completion_pct` double DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_achievements_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,1,167,34.2),(2,0,0,0),(3,1,37,12.5),(4,1,46,28.9),(5,1,152,19.4),(6,1,38,42.1),(7,1,92,11.3),(8,1,77,22.5),(9,1,520,15.6),(10,0,0,0),(11,1,48,25.4),(12,1,23,31.2),(13,1,189,14.5),(14,1,82,19.8),(15,1,119,8.2),(16,1,28,45.2),(17,0,0,0),(18,1,29,38.9),(19,1,46,25.4),(20,1,24,48.2),(21,1,40,32.1),(22,1,115,22.4),(23,1,75,28.5),(24,1,40,35.2),(25,1,215,12.4),(26,1,304,9.5),(27,1,250,11.2),(28,1,50,6.5),(29,1,69,28.4),(30,1,25,32.1),(31,1,55,14.5),(32,1,78,24.5),(33,1,56,22.1),(34,1,42,18.4),(35,1,100,15.2),(36,1,85,24.2),(37,1,51,19.5),(38,1,160,8.4),(39,1,45,28.5),(40,0,0,0),(41,1,43,15.2),(42,1,63,18.4),(43,1,72,12.5),(44,1,101,32.1),(45,1,1300,5.2),(46,1,84,21.5),(47,1,38,24.2),(48,0,0,0),(49,1,27,22.5),(50,1,89,15.4),(51,1,120,14.2),(52,1,17,35.2),(53,1,43,21.2),(54,1,75,12.4),(55,1,95,14.5),(56,0,0,0),(57,1,637,12.1),(58,1,70,24.2),(59,1,80,21.5),(60,1,100,11.2),(61,1,120,14.5),(62,0,0,0),(63,1,97,18.4),(64,1,150,9.2),(65,1,100,11.4),(66,1,25,24.5),(67,1,280,12.1),(68,1,88,21.2),(69,1,50,28.4),(70,1,120,14.2),(71,1,119,15.2),(72,1,21,25.4),(73,1,39,32.1),(74,1,93,21.5),(75,1,55,24.2),(76,1,55,18.4),(77,1,150,14.5),(78,1,95,22.1),(79,1,15,35.2),(80,1,99,42.1),(81,1,34,22.4),(82,1,43,19.5),(83,1,41,21.2),(84,0,0,0),(85,1,28,18.4),(86,1,50,45.2),(87,1,73,32.1),(88,0,0,0),(89,1,15,48.2),(90,1,33,35.2),(91,1,42,12.5),(92,1,18,45.2),(93,1,48,22.1),(94,1,48,15.4),(95,1,40,11.2),(96,1,13,24.5),(97,1,160,28.4),(98,1,20,45.2),(99,1,17,38.2),(100,1,46,21.5);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `company_name` text,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Valve'),(2,'Hidden Path Entertainment'),(3,'KRAFTON'),(4,'Respawn Entertainment'),(5,'Electronic Arts'),(6,'Smilegate RPG'),(7,'Amazon Games'),(8,'Gaggle Studios'),(9,'Facepunch Studios'),(10,'Rockstar North'),(11,'Rockstar Games'),(12,'IRONMACE'),(13,'Ubisoft'),(14,'Bungie'),(15,'Digital Extremes'),(16,'Warhorse Studios'),(17,'Studio Wildcard'),(18,'Endnight Games'),(19,'Battlestate Games'),(20,'Facepunch'),(21,'Smartly Driven'),(22,'Innersloth'),(23,'Coffee Stain Publishing'),(24,'Iron Gate AB'),(25,'Re-Logic'),(26,'Bethesda'),(27,'ConcernedApe'),(28,'Behaviour Interactive'),(29,'Firaxis Games'),(30,'2K Games'),(31,'Rare Ltd'),(32,'Bohemia Interactive'),(33,'Ghost Ship Games'),(34,'Kinetic Games'),(35,'Gaijin Entertainment'),(36,'CD PROJEKT RED'),(37,'FromSoftware'),(38,'Bandai Namco'),(39,'Capcom'),(40,'SCS Software'),(41,'Paradox Interactive'),(42,'The Indie Stone'),(43,'The Fun Pimps'),(44,'Team Cherry'),(45,'Ludeon Studios'),(46,'Overkill'),(47,'Starbreeze'),(48,'Wube Software'),(49,'Hello Games'),(50,'Blue Mammoth Games'),(51,'Colossal Order'),(52,'Unknown Worlds'),(53,'Mega Crit'),(54,'Humble Games'),(55,'Creative Assembly'),(56,'Motion Twin'),(57,'Offworld Industries'),(58,'Nicalis'),(59,'Gearbox Software'),(60,'Techland'),(61,'Warner Bros'),(62,'Pearl Abyss'),(63,'Grinding Gear Games'),(64,'Larian Studios'),(65,'TaleWorlds Entertainment'),(66,'Hi-Rez Studios'),(67,'Psyonix'),(68,'Epic Games'),(69,'Maxis'),(70,'343 Industries'),(71,'Xbox Game Studios'),(72,'DICE'),(73,'Ubisoft Quebec'),(74,'Forgotten Empires'),(75,'Klei Entertainment'),(76,'Berserk Games'),(77,'Activision'),(78,'Sony Interactive'),(79,'StudioMDHR'),(80,'New World Interactive'),(81,'Focus Entertainment'),(82,'Black Matter'),(83,'Team17'),(84,'Darkflow Software'),(85,'poncle'),(86,'Mobius Digital'),(87,'Annapurna Interactive'),(88,'Giants Software');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlc_expansions`
--

DROP TABLE IF EXISTS `dlc_expansions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlc_expansions` (
  `dlc_id` int NOT NULL,
  `game_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`dlc_id`),
  KEY `fk_dlc_game` (`game_id`),
  CONSTRAINT `fk_dlc_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlc_expansions`
--

LOCK TABLES `dlc_expansions` WRITE;
/*!40000 ALTER TABLE `dlc_expansions` DISABLE KEYS */;
INSERT INTO `dlc_expansions` VALUES (1,7,12.99),(2,8,19.99),(3,11,9.99),(4,15,4.99),(5,22,14.99),(6,30,9.99),(7,35,19.99),(8,42,4.99),(9,45,12.99),(10,50,9.99),(11,51,14.99),(12,54,19.99),(13,58,9.99),(14,64,19.99),(15,65,29.99),(16,69,39.99),(17,73,14.99),(18,74,24.99),(19,77,9.99),(20,100,19.99);
/*!40000 ALTER TABLE `dlc_expansions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engines`
--

DROP TABLE IF EXISTS `engines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engines` (
  `engine_id` int NOT NULL,
  `name` text,
  PRIMARY KEY (`engine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engines`
--

LOCK TABLES `engines` WRITE;
/*!40000 ALTER TABLE `engines` DISABLE KEYS */;
INSERT INTO `engines` VALUES (1,'Source 2'),(2,'Unreal Engine 4'),(3,'Source'),(4,'Unreal Engine 3'),(5,'Unity'),(6,'RAGE'),(7,'Unreal Engine 5'),(8,'AnvilNext'),(9,'Tiger'),(10,'Evolution'),(11,'CryEngine'),(12,'Custom'),(13,'Creation Engine'),(14,'XNA'),(15,'Enfusion'),(16,'Dagor Engine'),(17,'REDengine 3'),(18,'REDengine 4'),(19,'Proprietary'),(20,'MT Framework'),(21,'Prism3D'),(22,'Clausewitz'),(23,'Java'),(24,'Diesel'),(25,'Warscape'),(26,'Chrome Engine 6'),(27,'Pearl Abyss'),(28,'Azoth'),(29,'Slipspace'),(30,'Frostbite'),(31,'Anvil'),(32,'Genie'),(33,'Dagor'),(34,'UbiArt'),(35,'Giants Engine 9');
/*!40000 ALTER TABLE `engines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esports_tournaments`
--

DROP TABLE IF EXISTS `esports_tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esports_tournaments` (
  `tournament_id` int NOT NULL,
  `game_id` int DEFAULT NULL,
  `tournament_name` text,
  `year` int DEFAULT NULL,
  `prize_pool_usd` int DEFAULT NULL,
  PRIMARY KEY (`tournament_id`),
  KEY `fk_tournament_game` (`game_id`),
  CONSTRAINT `fk_tournament_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esports_tournaments`
--

LOCK TABLES `esports_tournaments` WRITE;
/*!40000 ALTER TABLE `esports_tournaments` DISABLE KEYS */;
INSERT INTO `esports_tournaments` VALUES (1,1,'PGL Major',2022,1000000),(2,2,'The International',2023,18000000),(3,4,'ALGS Championship',2022,2000000),(4,3,'PUBG Global Champ',2021,2000000),(5,1,'IEM Katowice',2023,1000000),(6,7,'Rust Twitch Rivals',2022,100000),(7,2,'Dota 2 Masters',2022,500000),(8,1,'ESL One',2020,250000),(9,8,'GTA Online Challenge',2021,50000),(10,4,'Apex Legends Invitational',2023,150000),(11,1,'DreamHack Masters',2019,250000),(12,2,'Major Championship',2021,1000000),(13,3,'Continental Series',2022,200000),(14,9,'TF2 Invitational',2018,10000),(15,6,'Goose Cup',2022,5000),(16,1,'Blast Premier',2023,425000),(17,4,'Pro League Finals',2022,500000),(18,3,'Global Invitational',2018,2000000),(19,2,'Epicenter',2019,1000000),(20,1,'StarSeries i-League',2019,500000),(21,5,'Lost Ark PvP Tourney',2022,25000),(22,2,'The Summit',2020,150000),(23,1,'Flashpoint',2021,1000000),(24,4,'Apex Winter Circuit',2021,100000),(25,1,'Road to Rio',2020,200000),(26,3,'Nations Cup',2019,500000),(27,2,'DreamLeague',2023,1000000),(28,1,'Cologne Major',2022,1000000),(29,4,'Championship Split 2',2023,1000000),(30,2,'Kiev Major',2017,3000000);
/*!40000 ALTER TABLE `esports_tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  `friendship_date` date DEFAULT NULL,
  `status` text,
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `fk_friend` (`friend_id`),
  CONSTRAINT `fk_friend` FOREIGN KEY (`friend_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,38,'2016-11-26','accepted'),(2,43,'2021-11-04','accepted'),(3,18,'2021-09-29','accepted'),(3,29,'2018-03-17','accepted'),(3,34,'2019-11-19','accepted'),(3,36,'2015-01-11','accepted'),(4,19,'2019-09-16','accepted'),(4,48,'2019-10-31','accepted'),(6,27,'2021-02-21','pending'),(6,33,'2020-11-13','pending'),(6,47,'2018-01-28','accepted'),(6,50,'2020-10-16','accepted'),(8,10,'2018-10-20','accepted'),(8,33,'2015-04-14','declined'),(9,36,'2021-04-22','pending'),(10,8,'2018-10-20','accepted'),(10,21,'2023-04-12','accepted'),(10,42,'2016-04-08','accepted'),(12,11,'2022-11-25','blocked'),(14,24,'2021-05-06','accepted'),(15,31,'2017-12-08','accepted'),(18,3,'2021-09-29','accepted'),(18,24,'2015-03-21','declined'),(19,4,'2019-09-16','accepted'),(19,39,'2021-09-14','accepted'),(19,46,'2016-04-06','accepted'),(20,30,'2023-03-14','accepted'),(20,41,'2021-01-22','accepted'),(21,10,'2023-04-12','accepted'),(21,25,'2018-03-05','accepted'),(22,48,'2019-06-14','accepted'),(23,43,'2017-11-07','accepted'),(24,14,'2021-05-06','accepted'),(24,37,'2017-06-20','accepted'),(24,40,'2016-04-05','accepted'),(25,21,'2018-03-05','accepted'),(25,30,'2020-02-12','accepted'),(26,44,'2019-09-23','declined'),(27,47,'2015-05-06','accepted'),(29,3,'2018-03-17','accepted'),(29,46,'2018-05-20','accepted'),(30,20,'2023-03-14','accepted'),(30,25,'2020-02-12','accepted'),(31,15,'2017-12-08','accepted'),(34,3,'2019-11-19','accepted'),(34,38,'2020-10-06','accepted'),(34,44,'2023-10-25','declined'),(35,44,'2017-01-25','accepted'),(36,3,'2015-01-11','accepted'),(37,21,'2015-08-15','pending'),(37,24,'2017-06-20','accepted'),(38,1,'2016-11-26','accepted'),(38,34,'2020-10-06','accepted'),(39,19,'2021-09-14','accepted'),(40,24,'2016-04-05','accepted'),(41,20,'2021-01-22','accepted'),(42,10,'2016-04-08','accepted'),(42,46,'2015-05-02','accepted'),(43,2,'2021-11-04','accepted'),(43,23,'2017-11-07','accepted'),(44,24,'2017-04-21','declined'),(44,35,'2017-01-25','accepted'),(46,19,'2016-04-06','accepted'),(46,29,'2018-05-20','accepted'),(46,42,'2015-05-02','accepted'),(47,6,'2018-01-28','accepted'),(47,27,'2015-05-06','accepted'),(48,4,'2019-10-31','accepted'),(48,22,'2019-06-14','accepted'),(50,6,'2020-10-16','accepted');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_genres`
--

DROP TABLE IF EXISTS `game_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_genres` (
  `game_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`game_id`,`genre_id`),
  KEY `fk_ggg_game` (`genre_id`),
  CONSTRAINT `fk_gg_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_ggg_game` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_genres`
--

LOCK TABLES `game_genres` WRITE;
/*!40000 ALTER TABLE `game_genres` DISABLE KEYS */;
INSERT INTO `game_genres` VALUES (1,1),(4,1),(9,1),(11,1),(12,1),(17,1),(29,1),(41,1),(44,1),(45,1),(56,1),(58,1),(62,1),(71,1),(72,1),(87,1),(88,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(1,2),(11,2),(71,2),(72,2),(92,2),(93,2),(94,2),(95,2),(96,2),(1,3),(2,3),(6,3),(7,3),(9,3),(18,3),(19,3),(20,3),(28,3),(29,3),(30,3),(50,3),(56,3),(76,3),(79,3),(88,3),(2,5),(67,5),(3,6),(7,6),(15,6),(16,6),(19,6),(21,6),(22,6),(28,6),(39,6),(40,6),(41,6),(49,6),(52,6),(78,6),(3,7),(4,7),(5,8),(60,8),(70,8),(6,9),(18,9),(20,9),(69,9),(79,9),(86,9),(89,9),(97,9),(8,10),(13,10),(25,10),(27,10),(31,10),(34,10),(35,10),(37,10),(42,10),(45,10),(50,10),(55,10),(57,10),(59,10),(61,10),(66,10),(67,10),(73,10),(74,10),(75,10),(76,10),(77,10),(80,10),(81,10),(82,10),(83,10),(84,10),(85,10),(90,10),(97,10),(98,10),(99,10),(8,11),(14,11),(15,11),(21,11),(22,11),(23,11),(27,11),(32,11),(33,11),(37,11),(42,11),(46,11),(48,11),(49,11),(52,11),(55,11),(73,11),(75,11),(78,11),(81,11),(85,11),(86,11),(89,11),(91,11),(98,11),(99,11),(5,12),(10,12),(12,12),(13,12),(14,12),(17,12),(23,12),(24,12),(32,12),(33,12),(34,12),(35,12),(46,12),(53,12),(54,12),(57,12),(58,12),(60,12),(61,12),(62,12),(63,12),(65,12),(66,12),(70,12),(74,12),(80,12),(82,12),(83,12),(84,12),(26,13),(38,13),(43,13),(47,13),(51,13),(53,13),(54,13),(63,13),(64,13),(65,13),(77,13),(24,14),(26,14),(31,14),(36,14),(38,14),(40,14),(43,14),(47,14),(48,14),(51,14),(64,14),(69,14),(100,14),(68,15),(100,15),(36,16),(68,16),(10,17),(16,17),(25,17),(30,17),(39,17),(44,17),(59,17),(87,17);
/*!40000 ALTER TABLE `game_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_id` int NOT NULL,
  `title` text,
  `release_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `engine_id` int DEFAULT NULL,
  `platform_id` int DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  KEY `fk_game_developer` (`developer_id`),
  KEY `fk_game_publisher` (`publisher_id`),
  KEY `fk_engine_game` (`engine_id`),
  KEY `fk_platform` (`platform_id`),
  CONSTRAINT `fk_engine_game` FOREIGN KEY (`engine_id`) REFERENCES `engines` (`engine_id`),
  CONSTRAINT `fk_game_developer` FOREIGN KEY (`developer_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `fk_game_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `fk_platform` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Counter-Strike: Global Offensive','2012-08-21',0.00,1,2,1,5),(2,'Dota 2','2013-07-09',0.00,1,1,1,7),(3,'PUBG: BATTLEGROUNDS','2017-12-21',0.00,3,3,2,4),(4,'Apex Legends','2020-11-04',0.00,4,5,3,4),(5,'Lost Ark','2022-02-11',0.00,6,7,4,4),(6,'Goose Goose Duck','2021-10-03',0.00,8,8,5,6),(7,'Rust','2018-02-08',39.99,9,9,5,7),(8,'Grand Theft Auto V','2015-04-14',29.98,10,11,6,4),(9,'Team Fortress 2','2007-10-10',0.00,1,1,3,7),(10,'Dark and Darker Demo',NULL,NULL,12,12,7,4),(11,'Rainbow Six Siege','2015-12-01',19.99,13,13,8,4),(12,'Destiny 2','2019-10-01',0.00,14,14,9,4),(13,'Warframe','2013-03-25',0.00,15,15,10,4),(14,'Kingdom Come: Deliverance','2018-02-13',29.99,16,16,11,4),(15,'ARK: Survival Evolved','2017-08-27',14.99,17,17,2,7),(16,'Sons of the Forest','2023-02-23',29.99,18,18,5,4),(17,'Escape from Tarkov','2017-07-27',44.99,19,19,5,4),(18,'Garry\'s Mod','2006-11-29',9.99,20,1,3,7),(19,'Unturned','2017-07-07',0.00,21,21,5,7),(20,'Among Us','2018-11-16',4.99,22,22,5,4),(21,'Valheim','2021-02-02',19.99,24,23,5,5),(22,'Terraria','2011-05-16',9.99,25,25,12,7),(23,'The Elder Scrolls V: Skyrim','2011-11-11',39.99,26,26,13,4),(24,'Stardew Valley','2016-02-26',14.99,27,27,14,7),(25,'Dead by Daylight','2016-06-14',19.99,28,28,2,4),(26,'Sid Meier\'s Civilization VI','2016-10-21',59.99,29,30,12,7),(27,'Sea of Thieves','2020-06-03',39.99,31,5,2,4),(28,'DayZ','2018-12-13',44.99,32,32,15,4),(29,'Deep Rock Galactic','2020-05-13',29.99,33,23,2,4),(30,'Phasmophobia','2020-09-18',13.99,34,34,5,4),(31,'War Thunder','2013-08-15',0.00,35,35,16,7),(32,'The Witcher 3: Wild Hunt','2015-05-18',39.99,36,36,17,4),(33,'Cyberpunk 2077','2020-12-10',59.99,36,36,18,4),(34,'ELDEN RING','2022-02-25',59.99,37,38,19,4),(35,'Monster Hunter: World','2018-08-09',29.99,39,39,20,4),(36,'Euro Truck Simulator 2','2012-10-12',19.99,40,40,21,7),(37,'Red Dead Redemption 2','2019-12-05',59.99,10,11,6,4),(38,'Hearts of Iron IV','2016-06-06',39.99,41,41,22,7),(39,'The Forest','2018-04-30',19.99,18,18,5,4),(40,'Project Zomboid','2013-11-08',19.99,42,42,23,7),(41,'7 Days to Die','2013-12-13',24.99,43,43,12,7),(42,'Hollow Knight','2017-02-24',14.99,44,44,5,7),(43,'RimWorld','2018-10-17',34.99,45,45,5,7),(44,'Left 4 Dead 2','2009-11-17',9.99,1,1,3,7),(45,'Payday 2','2013-08-13',9.99,46,47,24,5),(46,'Fallout 4','2015-11-10',19.99,26,26,13,4),(47,'Factorio','2020-08-14',35.00,48,48,12,7),(48,'Satisfactory','2020-06-08',29.99,23,23,2,4),(49,'No Man\'s Sky','2016-08-12',59.99,49,49,12,4),(50,'Brawlhalla','2017-10-17',0.00,50,13,12,6),(51,'Cities: Skylines','2015-03-10',29.99,51,41,5,7),(52,'Subnautica','2018-01-23',29.99,52,52,5,6),(53,'Slay the Spire','2019-01-23',24.99,53,54,5,7),(54,'Total War: WARHAMMER III','2022-02-17',59.99,55,38,25,6),(55,'Dead Cells','2018-08-06',24.99,56,56,12,7),(56,'Squad','2020-12-14',49.99,57,57,2,4),(57,'Binding of Isaac: Rebirth','2014-11-04',14.99,58,58,5,7),(58,'Borderlands 2','2012-09-18',29.99,59,30,4,7),(59,'Dying Light','2015-01-26',29.99,60,61,26,5),(60,'Black Desert','2017-05-24',9.99,62,62,27,4),(61,'Path of Exile','2013-10-23',0.00,63,63,12,4),(62,'Destiny',NULL,NULL,14,14,9,4),(63,'Divinity: Original Sin 2','2017-09-14',44.99,64,64,12,4),(64,'Stellaris','2016-05-09',39.99,41,41,22,7),(65,'Crusader Kings III','2020-09-01',49.99,41,41,22,6),(66,'Mount & Blade II: Bannerlord','2022-10-25',49.99,65,65,12,4),(67,'Smite','2014-03-25',0.00,66,66,4,4),(68,'Rocket League','2020-09-23',0.00,67,68,4,4),(69,'The Sims 4','2020-06-18',0.00,69,5,12,6),(70,'New World','2021-09-28',39.99,7,7,28,4),(71,'Halo Infinite','2021-11-15',0.00,70,71,29,4),(72,'Battlefield V','2018-11-09',49.99,72,5,30,4),(73,'Star Wars Jedi: Fallen Order','2019-11-15',39.99,4,5,31,4),(74,'Assassin\'s Creed Odyssey','2018-10-05',59.99,73,13,31,4),(75,'Watch Dogs 2','2016-11-28',49.99,13,13,31,4),(76,'For Honor','2017-02-14',14.99,13,13,31,4),(77,'Age of Empires II: Definitive Edition','2019-11-14',19.99,74,71,32,4),(78,'Don\'t Starve Together','2016-04-21',14.99,75,75,12,7),(79,'Tabletop Simulator','2015-06-05',19.99,76,76,5,7),(80,'The Binding of Isaac','2011-09-28',4.99,58,58,12,7),(81,'Sekiro: Shadows Die Twice','2019-03-21',59.99,37,77,20,4),(82,'Dark Souls III','2016-04-11',59.99,37,38,19,4),(83,'Dark Souls Remastered','2018-05-23',39.99,37,38,19,4),(84,'Bloodborne (PC Concept)',NULL,NULL,37,78,19,4),(85,'Cuphead','2017-09-29',19.99,79,79,5,6),(86,'Portal 2','2011-04-18',9.99,1,1,3,7),(87,'Left 4 Dead','2008-11-17',9.99,1,1,3,7),(88,'Team Fortress Classic','1999-04-01',4.99,1,1,3,7),(89,'Portal','2007-10-10',9.99,1,1,3,7),(90,'Half-Life 2','2004-11-16',9.99,1,1,3,7),(91,'Half-Life: Alyx','2020-03-23',59.99,1,1,3,4),(92,'Counter-Strike: Source','2004-11-01',9.99,1,1,3,7),(93,'Day of Infamy','2017-03-23',14.99,80,80,3,4),(94,'Insurgency: Sandstorm','2018-12-12',29.99,80,81,2,4),(95,'Hell Let Loose','2021-07-27',39.99,82,83,2,4),(96,'Enlisted','2021-04-08',0.00,84,35,33,4),(97,'Vampire Survivors','2022-10-20',4.99,85,85,12,6),(98,'Valiant Hearts','2014-06-25',14.99,13,13,34,4),(99,'Outer Wilds','2020-06-18',24.99,86,87,5,4),(100,'Farming Simulator 22','2021-11-22',39.99,88,88,35,6);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` text,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'FPS'),(2,'Shooter'),(3,'Multiplayer'),(4,'Free to Play'),(5,'MOBA'),(6,'Survival'),(7,'Battle Royale'),(8,'MMORPG'),(9,'Casual'),(10,'Action'),(11,'Adventure'),(12,'RPG'),(13,'Strategy'),(14,'Simulation'),(15,'Sports'),(16,'Racing'),(17,'Horror');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `playtime_hours` int DEFAULT NULL,
  `achievements_unlocked` int DEFAULT NULL,
  PRIMARY KEY (`user_id`,`game_id`),
  KEY `fk_librarygame_game` (`game_id`),
  CONSTRAINT `fk_librarygame_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_libraryuser_game` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,4,'2023-05-03',2079,38),(1,13,'2015-02-27',2895,17),(1,15,'2022-01-19',89,7),(1,16,'2023-08-20',192,6),(1,19,'2018-01-07',1480,22),(1,30,'2021-09-20',190,12),(1,33,'2022-06-01',570,9),(1,37,'2020-05-16',14,0),(1,72,'2022-04-21',741,18),(1,78,'2021-09-02',593,5),(1,91,'2023-11-30',776,5),(1,99,'2021-01-11',1117,13),(2,14,'2018-12-28',502,10),(2,22,'2016-07-12',436,41),(2,28,'2019-06-10',1196,25),(2,31,'2020-04-08',302,19),(2,36,'2022-08-29',225,4),(2,37,'2020-03-06',1141,14),(2,47,'2021-05-10',1150,34),(2,48,'2023-03-30',1162,0),(2,49,'2022-12-03',940,4),(2,50,'2018-03-09',1564,34),(2,60,'2022-06-15',115,3),(2,85,'2022-01-11',647,12),(2,90,'2014-07-21',1044,31),(2,92,'2019-09-07',959,16),(2,94,'2021-11-19',865,38),(3,2,'2016-04-17',1790,0),(3,16,'2023-05-29',408,4),(3,71,'2023-01-23',3133,20),(3,73,'2021-08-15',697,7),(3,92,'2023-09-12',540,16),(3,97,'2023-05-05',218,20),(4,1,'2021-03-17',2000,17),(4,3,'2021-06-21',2999,12),(4,16,'2023-11-25',765,14),(4,32,'2019-08-08',452,0),(4,41,'2016-10-16',44,4),(4,43,'2023-08-15',1126,21),(4,48,'2021-01-18',248,0),(4,65,'2021-08-26',434,34),(4,70,'2023-08-15',162,2),(4,79,'2018-12-22',258,4),(5,8,'2021-02-10',1170,73),(5,83,'2018-08-24',995,13),(5,95,'2022-08-23',677,4),(6,14,'2019-09-20',155,14),(6,26,'2018-01-12',288,13),(6,33,'2022-09-09',111,10),(6,47,'2022-07-09',485,10),(6,54,'2023-06-11',224,7),(6,56,'2022-07-03',438,0),(6,57,'2022-05-18',31,0),(6,63,'2020-03-31',202,1),(6,89,'2022-08-08',1128,3),(7,1,'2014-10-07',242,16),(7,8,'2019-07-01',1111,7),(7,23,'2013-08-23',103,9),(7,35,'2021-01-28',246,18),(7,38,'2019-05-05',1071,40),(7,50,'2018-05-07',2069,67),(7,51,'2016-01-19',140,10),(7,53,'2021-09-20',608,13),(7,56,'2023-06-21',644,0),(7,60,'2018-01-13',168,13),(7,74,'2019-04-26',205,2),(7,89,'2018-09-04',544,4),(7,94,'2020-09-12',615,29),(7,96,'2023-06-20',1439,1),(7,98,'2021-06-07',149,0),(8,22,'2023-07-13',276,8),(8,38,'2019-03-22',614,59),(8,49,'2019-11-11',1084,0),(8,58,'2021-04-29',1134,19),(8,72,'2019-07-31',703,6),(9,1,'2023-05-20',979,20),(9,6,'2023-12-03',2552,9),(9,7,'2018-08-12',632,46),(9,13,'2023-01-31',3270,10),(9,34,'2022-12-27',1132,9),(9,35,'2019-03-10',876,71),(9,37,'2022-01-06',1147,26),(9,44,'2022-02-03',363,26),(9,56,'2023-03-27',512,0),(9,65,'2020-10-01',306,17),(9,67,'2016-09-24',468,4),(9,85,'2020-02-23',537,5),(10,24,'2021-10-10',844,15),(10,99,'2021-03-20',784,1),(11,4,'2022-07-27',3313,34),(11,9,'2017-09-19',2733,194),(11,26,'2023-08-23',677,40),(11,27,'2022-11-03',79,1),(11,30,'2021-11-09',535,5),(11,31,'2020-12-13',1796,0),(11,37,'2020-01-04',261,6),(11,41,'2015-02-18',522,2),(11,44,'2017-07-31',669,51),(11,46,'2018-09-26',237,12),(11,53,'2020-02-14',616,32),(11,60,'2019-01-08',643,55),(11,63,'2020-08-15',1099,42),(11,86,'2023-02-15',357,19),(11,89,'2023-07-19',404,11),(12,1,'2020-07-30',885,65),(12,28,'2019-09-21',192,7),(12,38,'2017-03-12',1056,84),(12,40,'2023-02-09',348,0),(12,57,'2015-07-10',408,9),(12,73,'2022-01-13',905,28),(12,77,'2021-04-10',150,14),(12,80,'2020-01-24',1179,24),(13,1,'2018-06-08',2577,61),(13,15,'2021-01-01',586,15),(13,20,'2019-02-23',914,5),(13,24,'2018-05-23',850,26),(13,30,'2021-10-03',785,22),(13,33,'2023-01-02',1034,27),(13,51,'2023-04-16',249,14),(13,53,'2023-08-28',907,39),(13,56,'2023-01-06',1107,0),(13,66,'2023-07-08',1088,17),(13,87,'2018-04-29',922,33),(13,93,'2022-06-03',568,33),(13,94,'2020-10-21',1061,29),(14,8,'2019-02-15',452,31),(14,28,'2020-03-17',60,3),(14,51,'2020-08-13',829,21),(14,55,'2022-07-28',859,68),(14,61,'2018-05-08',34,2),(14,72,'2019-09-21',1180,12),(14,77,'2023-04-25',262,19),(15,4,'2020-12-28',215,8),(15,12,'2022-05-24',1443,7),(15,19,'2019-12-20',634,15),(15,52,'2018-09-23',932,10),(15,56,'2022-01-06',42,0),(15,61,'2014-06-02',1949,85),(15,75,'2022-05-01',864,16),(15,78,'2022-11-13',777,35),(15,86,'2021-10-05',83,0),(15,89,'2018-04-11',40,4),(16,29,'2023-10-23',235,5),(16,61,'2023-10-27',1284,13),(16,75,'2021-08-08',756,10),(17,4,'2022-04-26',2579,15),(17,11,'2023-10-30',554,39),(17,27,'2022-04-18',314,27),(17,41,'2022-07-15',248,18),(17,50,'2019-04-12',61,6),(17,52,'2018-07-01',217,13),(17,76,'2019-05-02',1092,27),(17,78,'2019-01-14',991,59),(17,91,'2021-10-17',1037,41),(17,93,'2021-03-14',550,20),(17,96,'2023-10-11',1493,10),(18,4,'2021-03-15',1039,14),(18,13,'2019-09-08',2882,70),(18,25,'2018-08-16',1075,76),(18,33,'2023-08-23',573,56),(18,37,'2021-06-06',392,5),(18,43,'2021-07-19',380,12),(18,45,'2020-11-18',930,34),(18,50,'2018-07-29',1752,70),(18,59,'2018-06-25',1138,30),(18,61,'2020-09-29',1960,82),(18,65,'2022-05-04',398,18),(18,66,'2023-06-10',245,23),(18,75,'2018-01-10',36,0),(18,81,'2020-10-04',499,19),(18,90,'2017-02-20',970,33),(19,2,'2014-02-25',60,0),(19,24,'2019-03-17',599,8),(19,40,'2021-06-11',1006,0),(19,48,'2020-08-01',94,0),(19,95,'2022-07-04',981,28),(20,7,'2023-08-24',623,5),(20,9,'2022-08-25',2420,109),(20,16,'2023-03-11',907,9),(20,25,'2019-06-22',110,2),(20,34,'2023-10-17',1143,26),(20,53,'2019-12-19',124,9),(20,64,'2021-11-13',463,33),(21,1,'2023-10-15',2771,147),(21,11,'2015-12-20',188,7),(21,12,'2021-11-21',1269,19),(21,14,'2020-09-24',963,37),(21,22,'2019-05-21',592,28),(21,24,'2018-07-16',897,5),(21,28,'2020-12-05',580,44),(21,29,'2022-08-16',406,27),(21,32,'2016-05-30',825,34),(21,35,'2020-04-06',306,29),(21,73,'2022-12-23',885,20),(21,83,'2020-12-29',479,16),(21,89,'2013-10-20',123,2),(22,3,'2020-04-02',2407,27),(22,6,'2022-03-12',1190,25),(22,24,'2019-03-04',76,7),(22,36,'2016-09-27',658,13),(22,37,'2020-08-19',547,35),(22,58,'2017-01-21',1021,56),(22,63,'2018-09-11',238,12),(22,69,'2022-09-13',2117,0),(22,76,'2019-08-31',844,44),(22,87,'2019-02-01',947,52),(22,91,'2020-07-25',187,15),(23,38,'2019-10-30',491,45),(23,58,'2013-02-26',1132,52),(23,65,'2022-05-12',598,32),(23,94,'2019-04-30',241,20),(24,20,'2020-07-26',1172,12),(24,26,'2022-02-06',781,49),(24,33,'2021-02-02',915,34),(24,36,'2022-09-10',143,4),(24,51,'2016-09-12',652,60),(24,55,'2022-08-01',850,43),(24,60,'2019-12-06',1131,97),(24,63,'2018-05-03',1188,84),(24,64,'2018-09-11',548,52),(24,68,'2023-10-27',161,4),(24,73,'2020-10-26',660,12),(24,79,'2021-11-20',312,15),(24,100,'2023-11-11',680,6),(25,2,'2021-05-17',380,0),(25,11,'2022-10-07',784,39),(25,14,'2022-08-21',1093,48),(25,20,'2023-02-18',60,0),(25,21,'2021-07-10',369,10),(25,35,'2019-11-02',942,32),(25,45,'2023-01-30',953,36),(25,54,'2022-08-12',601,22),(25,58,'2020-04-15',165,10),(25,60,'2020-01-18',589,14),(25,63,'2018-08-01',1195,18),(25,70,'2023-02-20',1000,69),(25,82,'2017-01-11',152,14),(25,87,'2014-08-20',501,33),(25,97,'2023-09-27',206,14),(26,34,'2022-05-05',587,14),(26,40,'2019-06-01',736,0),(26,56,'2022-01-13',811,0),(26,60,'2018-01-05',449,40),(26,78,'2018-08-04',788,61),(26,85,'2020-11-04',605,0),(26,93,'2022-09-14',101,9),(27,34,'2022-05-03',69,4),(27,82,'2017-04-03',199,1),(27,89,'2022-10-30',750,8),(27,91,'2021-07-17',185,9),(27,97,'2023-04-23',360,12),(28,11,'2016-08-09',200,7),(28,16,'2023-09-02',239,4),(28,20,'2019-07-21',796,14),(28,23,'2021-11-13',809,1),(28,30,'2023-08-25',1107,13),(28,34,'2022-03-07',755,16),(28,39,'2019-09-15',52,4),(28,45,'2020-02-16',951,89),(28,52,'2023-09-03',573,1),(28,61,'2013-12-28',162,9),(28,64,'2022-03-23',761,13),(28,74,'2021-05-30',909,56),(28,91,'2021-02-24',317,26),(28,97,'2022-10-20',1003,78),(28,100,'2023-01-18',672,39),(29,14,'2020-11-02',251,14),(29,48,'2021-05-19',735,0),(29,49,'2018-09-27',258,25),(29,72,'2019-06-22',1136,6),(29,92,'2020-03-13',44,0),(30,1,'2018-10-04',2441,27),(30,18,'2020-03-20',64,0),(30,20,'2020-02-15',1078,3),(30,24,'2016-08-12',304,2),(30,29,'2021-04-08',31,2),(30,31,'2021-11-10',3239,15),(30,34,'2023-03-13',909,4),(30,37,'2021-09-16',89,8),(30,44,'2013-03-06',357,16),(30,72,'2022-07-03',823,13),(30,79,'2018-05-05',919,11),(31,37,'2021-10-18',781,38),(31,77,'2021-08-16',1130,92),(31,82,'2018-02-02',1036,38),(31,85,'2021-11-23',235,20),(32,14,'2023-12-06',1141,3),(32,29,'2022-11-14',972,8),(32,31,'2013-09-03',2412,35),(32,34,'2022-10-11',821,4),(32,42,'2020-05-18',548,1),(32,45,'2020-06-18',867,6),(32,53,'2021-08-25',317,30),(32,54,'2022-10-16',251,13),(32,55,'2019-06-03',1140,47),(32,56,'2021-07-20',633,0),(32,57,'2015-09-18',885,12),(32,59,'2017-03-07',267,17),(32,60,'2019-09-26',640,45),(32,90,'2016-12-08',13,0),(32,98,'2019-06-10',464,13),(33,4,'2021-02-03',1338,36),(33,13,'2019-09-09',357,3),(33,85,'2018-03-31',758,9),(33,99,'2023-01-31',771,13),(34,7,'2018-04-04',707,55),(34,22,'2020-06-04',869,62),(34,82,'2017-08-24',560,13),(34,91,'2020-08-11',997,33),(35,1,'2019-06-07',1666,163),(35,6,'2023-12-04',539,24),(35,8,'2022-09-02',642,54),(35,19,'2017-11-24',3469,6),(35,28,'2018-12-14',830,1),(35,29,'2023-04-26',742,11),(35,30,'2021-06-12',1025,17),(35,34,'2023-06-15',1074,5),(35,40,'2014-12-05',943,0),(35,41,'2014-07-17',1019,27),(35,52,'2022-01-16',726,2),(35,79,'2021-04-28',87,6),(36,11,'2022-11-22',1157,41),(36,23,'2019-04-29',1187,57),(36,30,'2021-12-07',356,19),(36,41,'2018-12-14',1045,12),(36,44,'2013-11-05',363,31),(36,45,'2020-03-28',303,7),(36,68,'2023-05-09',2568,41),(36,100,'2022-03-15',720,46),(37,8,'2017-01-30',764,36),(37,9,'2019-10-15',1958,128),(37,11,'2019-04-05',792,18),(37,21,'2022-10-18',85,7),(37,37,'2020-10-07',508,45),(37,40,'2015-04-25',1034,0),(37,41,'2023-10-26',308,10),(37,42,'2019-11-25',1039,49),(37,47,'2021-09-08',693,38),(37,58,'2019-05-31',386,20),(37,61,'2013-11-30',2396,84),(37,63,'2018-01-20',212,10),(37,67,'2016-08-11',3242,171),(37,78,'2017-12-05',1074,66),(37,83,'2020-10-28',756,18),(38,41,'2020-03-20',673,8),(38,46,'2018-02-18',174,9),(38,87,'2022-04-19',1079,11),(38,94,'2020-09-12',1042,23),(39,41,'2014-09-27',159,9),(39,48,'2020-11-04',996,0),(40,5,'2023-06-05',2788,146),(40,14,'2021-08-25',340,28),(40,18,'2022-10-21',761,17),(40,21,'2022-02-22',896,5),(40,22,'2015-06-29',924,44),(40,25,'2017-08-27',110,6),(40,45,'2017-09-11',332,12),(40,50,'2018-12-20',353,10),(40,67,'2014-06-06',1692,93),(40,70,'2023-04-18',961,24),(40,72,'2018-11-14',910,19),(40,79,'2020-12-23',1057,3),(40,82,'2016-08-09',513,3),(40,89,'2018-03-07',578,12),(40,99,'2021-10-16',920,7),(41,4,'2023-04-19',3189,18),(41,12,'2020-11-08',1058,6),(41,14,'2019-12-27',937,8),(41,30,'2023-01-08',1081,13),(41,32,'2020-10-22',285,24),(41,42,'2018-12-05',489,26),(41,49,'2017-06-23',282,1),(41,51,'2018-01-12',11,0),(41,87,'2013-03-09',1056,73),(41,96,'2023-07-29',3437,7),(42,1,'2013-03-25',1609,120),(42,20,'2019-05-28',176,16),(42,39,'2020-07-14',1078,34),(42,56,'2022-04-05',1135,0),(42,96,'2021-11-21',1455,3),(43,51,'2016-11-13',494,46),(43,85,'2018-07-13',34,2),(44,6,'2021-12-13',159,6),(44,15,'2022-02-06',277,2),(44,19,'2022-02-22',2234,30),(44,24,'2021-02-26',870,5),(44,44,'2016-06-24',1056,50),(44,45,'2017-05-03',695,23),(44,47,'2022-09-17',680,17),(44,72,'2020-06-15',820,14),(44,77,'2023-08-02',938,4),(44,83,'2020-09-05',952,30),(44,86,'2018-07-31',753,33),(44,99,'2021-11-15',409,1),(45,12,'2020-02-16',3486,19),(45,15,'2020-08-14',328,1),(45,25,'2016-12-10',916,5),(45,39,'2019-05-11',118,1),(45,43,'2020-01-15',745,65),(45,72,'2023-03-23',723,19),(45,80,'2019-10-05',873,21),(45,89,'2017-11-30',72,2),(46,32,'2023-08-26',1162,4),(46,48,'2021-07-23',158,0),(46,86,'2020-08-13',922,23),(47,4,'2022-01-10',3254,8),(47,16,'2023-12-14',460,3),(47,19,'2018-12-14',2054,33),(47,33,'2022-07-20',323,11),(47,37,'2020-06-22',1111,18),(47,42,'2018-01-26',354,28),(47,48,'2020-11-23',914,0),(47,52,'2019-11-22',1006,6),(47,70,'2023-06-06',242,8),(47,87,'2022-02-02',655,44),(47,99,'2021-02-24',740,17),(48,9,'2018-08-22',236,3),(48,13,'2021-08-11',538,27),(48,18,'2018-10-21',706,4),(48,41,'2016-05-30',338,10),(48,49,'2017-08-10',839,26),(48,52,'2020-12-15',462,11),(48,61,'2019-06-13',312,8),(48,73,'2020-03-16',152,14),(48,81,'2021-10-01',1130,11),(48,96,'2023-08-17',2135,4),(48,97,'2023-02-20',403,40),(49,13,'2018-08-02',2578,139),(49,18,'2021-01-30',692,26),(49,23,'2020-09-21',123,2),(49,37,'2020-12-12',316,10),(49,40,'2021-08-25',1182,0),(49,67,'2016-04-01',2639,154),(49,71,'2022-09-15',2627,3),(49,81,'2021-08-08',1172,26),(49,83,'2018-12-05',59,0),(49,86,'2022-01-10',832,19),(50,20,'2021-02-01',641,6),(50,28,'2019-10-16',289,3),(50,42,'2018-08-03',1055,59),(50,45,'2022-09-10',857,31),(50,55,'2022-08-27',708,51),(50,61,'2016-07-31',1000,59),(50,64,'2018-10-11',1151,13),(50,80,'2023-02-13',328,20),(50,96,'2022-01-06',1273,7);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `platform_id` int NOT NULL,
  `windows` tinyint(1) DEFAULT NULL,
  `linux` tinyint(1) DEFAULT NULL,
  `mac` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`platform_id`),
  UNIQUE KEY `platform_id_UNIQUE` (`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,0,0,1),(2,0,1,0),(3,0,1,1),(4,1,0,0),(5,1,0,1),(6,1,1,0),(7,1,1,1);
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review_text` text,
  `hours_at_review` double DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `is_recommended` text,
  PRIMARY KEY (`user_id`,`game_id`),
  KEY `fk_reviewgame_game` (`game_id`),
  CONSTRAINT `fk_reviewgame_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_reviewuser_game` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,4,'The soundtrack is incredible.',608,'2016-01-01','0'),(1,9,7,'I encountered a few bugs but nothing game-breaking.',275.7,'2020-06-24','1'),(1,92,7,'Perfect for chilling after a long day.',86.8,'2019-10-29','1'),(2,2,6,'A bit too difficult for me but I can see the appeal.',386.9,'2022-05-24','1'),(2,9,1,'Requires a very high-end PC to run smoothly.',273.4,'2022-01-27','0'),(2,61,8,'Great for a quick session with friends.',316.6,'2021-05-07','1'),(2,67,6,'The soundtrack is incredible.',72.4,'2022-01-21','1'),(3,7,2,'Too much DLC but the core game is solid.',248.9,'2022-08-17','0'),(3,15,2,'Ive spent hundreds of hours and still find new things.',82.3,'2022-08-09','0'),(3,21,5,'Great for a quick session with friends.',307.4,'2023-03-27','0'),(3,28,9,'The story left me in tears. Highly recommend.',76.9,'2020-11-28','1'),(3,39,2,'Graphics are dated but the gameplay loop is addictive.',142.6,'2021-12-20','0'),(4,3,7,'Not worth the full price wait for a 50% discount.',732,'2022-12-21','1'),(4,4,2,'The story left me in tears. Highly recommend.',448,'2022-12-11','0'),(4,19,8,'Simple but elegant design.',100.6,'2022-05-17','1'),(4,25,7,'The developers really listen to the community.',128,'2023-12-28','1'),(5,1,3,'The multiplayer is where this game truly shines.',706.2,'2022-02-01','0'),(5,4,5,'Ive spent hundreds of hours and still find new things.',390.5,'2022-08-16','0'),(5,11,8,'The multiplayer is where this game truly shines.',308.4,'2023-07-14','1'),(5,50,9,'Very grindy dont buy if you have a full-time job.',78.4,'2023-12-15','1'),(5,95,4,'One of the best games Ive ever played.',122.3,'2023-07-08','0'),(6,33,8,'One of the best games Ive ever played.',302.3,'2022-10-08','1'),(6,81,5,'The story left me in tears. Highly recommend.',89.3,'2021-07-04','0'),(6,82,6,'The story left me in tears. Highly recommend.',329.3,'2022-04-02','1'),(7,22,2,'Very grindy dont buy if you have a full-time job.',473.6,'2018-12-25','0'),(7,42,5,'The multiplayer is where this game truly shines.',411.3,'2021-07-20','0'),(7,55,8,'Perfect for chilling after a long day.',298.3,'2023-11-04','1'),(8,16,7,'Requires a very high-end PC to run smoothly.',71.8,'2023-03-27','1'),(8,25,1,'Too much DLC but the core game is solid.',71.5,'2023-12-17','0'),(8,59,9,'One of the best games Ive ever played.',79.8,'2022-01-17','1'),(9,38,5,'One of the best games Ive ever played.',80.8,'2022-01-12','0'),(9,51,2,'Very grindy dont buy if you have a full-time job.',164.9,'2023-09-11','0'),(9,64,8,'The story left me in tears. Highly recommend.',643.3,'2023-11-01','1'),(9,65,1,'The learning curve is steep so watch some tutorials first.',131.4,'2021-11-04','0'),(10,1,2,'Simple but elegant design.',625.5,'2020-11-09','0'),(11,34,1,'The community is a bit toxic but the game is great.',217,'2023-01-30','0'),(11,66,7,'An absolute classic that everyone should try.',154.5,'2023-05-02','1'),(11,81,5,'Simple but elegant design.',314.5,'2020-06-28','0'),(11,83,1,'The community is a bit toxic but the game is great.',80,'2020-12-14','0'),(12,8,10,'Controls feel a bit clunky on controller.',461.2,'2022-05-17','1'),(12,32,5,'The developers really listen to the community.',549.5,'2021-02-18','0'),(12,46,2,'Perfect for chilling after a long day.',262.8,'2020-05-22','0'),(13,36,1,'Ive spent hundreds of hours and still find new things.',175.2,'2021-01-19','0'),(13,51,9,'One of the best games Ive ever played.',357.8,'2016-10-15','1'),(13,100,5,'Graphics are dated but the gameplay loop is addictive.',241,'2022-07-20','0'),(14,7,9,'One of the best games Ive ever played.',776.8,'2019-11-25','1'),(15,23,5,'The story left me in tears. Highly recommend.',349.2,'2022-11-17','0'),(15,46,5,'A bit too difficult for me but I can see the appeal.',227.1,'2022-02-11','0'),(15,63,3,'One of the best games Ive ever played.',352.5,'2023-04-22','0'),(15,65,4,'Great for a quick session with friends.',276.3,'2023-07-03','0'),(16,31,8,'Controls feel a bit clunky on controller.',202,'2023-08-23','1'),(16,36,2,'The soundtrack is incredible.',345.9,'2018-12-24','0'),(16,68,10,'The community is a bit toxic but the game is great.',616.3,'2023-12-18','1'),(17,55,9,'I encountered a few bugs but nothing game-breaking.',232.6,'2023-09-19','1'),(17,57,10,'The developers really listen to the community.',118.5,'2020-01-13','1'),(18,36,7,'Graphics are dated but the gameplay loop is addictive.',136.3,'2023-09-11','1'),(18,43,2,'Very grindy dont buy if you have a full-time job.',594.9,'2019-12-08','0'),(18,51,7,'The community is a bit toxic but the game is great.',189.9,'2020-05-03','1'),(19,16,4,'Perfect for chilling after a long day.',132.9,'2023-11-16','0'),(19,25,5,'An absolute classic that everyone should try.',303.6,'2021-08-24','0'),(19,30,3,'Great for a quick session with friends.',194,'2022-09-29','0'),(19,44,7,'I encountered a few bugs but nothing game-breaking.',48.5,'2023-09-07','1'),(20,43,10,'Very grindy dont buy if you have a full-time job.',1533,'2019-04-18','1'),(20,64,10,'The community is a bit toxic but the game is great.',631.6,'2023-06-25','1'),(21,34,4,'The developers really listen to the community.',184,'2023-05-25','0'),(21,42,9,'Simple but elegant design.',91.9,'2023-10-12','1'),(21,82,8,'Too much DLC but the core game is solid.',667.8,'2017-02-25','1'),(22,20,8,'A bit too difficult for me but I can see the appeal.',379.7,'2021-05-11','1'),(22,78,1,'Great for a quick session with friends.',404.7,'2019-08-26','0'),(23,27,6,'The soundtrack is incredible.',101.8,'2023-07-10','1'),(23,29,9,'One of the best games Ive ever played.',308.8,'2022-08-30','1'),(23,78,8,'Ive spent hundreds of hours and still find new things.',144.9,'2020-09-07','1'),(24,22,2,'I encountered a few bugs but nothing game-breaking.',1081.2,'2021-04-29','0'),(24,42,10,'An absolute classic that everyone should try.',171.2,'2019-03-12','1'),(24,57,8,'An absolute classic that everyone should try.',196.8,'2021-03-20','1'),(24,97,8,'The learning curve is steep so watch some tutorials first.',126.7,'2023-01-07','1'),(25,22,10,'An absolute classic that everyone should try.',769.5,'2020-07-18','1'),(25,24,7,'The story left me in tears. Highly recommend.',1141.8,'2022-12-28','1'),(25,78,3,'Graphics are dated but the gameplay loop is addictive.',497.2,'2022-08-18','0'),(25,97,1,'The community is a bit toxic but the game is great.',116.5,'2023-05-09','0');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `game_id` int NOT NULL,
  `current_players` int DEFAULT NULL,
  `peak_players` int DEFAULT NULL,
  `total_hours` int DEFAULT NULL,
  `positive_reviews` int DEFAULT NULL,
  `negative_reviews` int DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_statss_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,1075054,1320219,558998360,6123686,804911),(2,623139,676653,295245771,1595197,332805),(3,288743,452239,152986898,1219342,919837),(4,277684,441067,155374796,492111,97196),(5,221578,223820,101661911,166413,69325),(6,180000,200000,45000000,55000,12000),(7,150000,165000,98000000,750000,110000),(8,140000,250000,120000000,1200000,210000),(9,100000,120000,85000000,820000,55000),(10,65000,100000,12000000,45000,8000),(11,60000,180000,95000000,950000,140000),(12,75000,220000,88000000,550000,95000),(13,55000,150000,110000000,520000,35000),(14,5000,20000,15000000,85000,12000),(15,45000,140000,78000000,450000,85000),(16,80000,400000,25000000,110000,15000),(17,90000,200000,65000000,150000,45000),(18,35000,65000,92000000,850000,30000),(19,25000,55000,35000000,450000,45000),(20,15000,450000,25000000,580000,38000),(21,45000,500000,45000000,340000,15000),(22,40000,480000,85000000,950000,22000),(23,35000,280000,150000000,1200000,45000),(24,65000,95000,55000000,480000,10000),(25,48000,105000,75000000,480000,115000),(26,42000,160000,95000000,180000,45000),(27,38000,85000,55000000,220000,45000),(28,45000,65000,85000000,280000,110000),(29,25000,50000,25000000,150000,5000),(30,45000,110000,15000000,440000,12000),(31,65000,120000,95000000,350000,85000),(32,35000,100000,110000000,650000,15000),(33,55000,1000000,45000000,550000,145000),(34,85000,950000,65000000,540000,45000),(35,35000,330000,85000000,280000,55000),(36,45000,65000,95000000,450000,15000),(37,65000,75000,85000000,350000,55000),(38,35000,85000,75000000,150000,25000),(39,15000,75000,25000000,350000,25000),(40,25000,65000,35000000,150000,10000),(41,35000,105000,85000000,180000,45000),(42,15000,25000,15000000,240000,8000),(43,25000,45000,55000000,140000,5000),(44,15000,160000,85000000,580000,15000),(45,25000,245000,120000000,410000,65000),(46,25000,470000,95000000,180000,45000),(47,25000,35000,45000000,140000,3000),(48,25000,35000,35000000,120000,4000),(49,25000,210000,55000000,210000,110000),(50,15000,100000,25000000,320000,45000),(51,20000,175000,75000000,165000,18000),(52,10000,50000,25000000,215000,10000),(53,12000,35000,15000000,115000,5000),(54,25000,165000,25000000,65000,35000),(55,10000,35000,15000000,115000,5000),(56,15000,25000,15000000,85000,12000),(57,15000,75000,45000000,215000,5000),(58,5000,125000,65000000,185000,15000),(59,10000,45000,35000000,245000,25000),(60,15000,125000,85000000,55000,45000),(61,25000,150000,120000000,195000,25000),(62,0,0,0,0,0),(63,15000,95000,45000000,145000,8000),(64,20000,65000,85000000,105000,35000),(65,15000,145000,45000000,75000,15000),(66,25000,245000,35000000,165000,35000),(67,15000,75000,55000000,95000,45000),(68,35000,1000000,75000000,415000,65000),(69,35000,100000,45000000,105000,35000),(70,15000,913000,35000000,165000,85000),(71,10000,270000,15000000,145000,45000),(72,15000,90000,25000000,105000,115000),(73,5000,100000,15000000,95000,15000),(74,10000,65000,25000000,115000,25000),(75,5000,45000,15000000,55000,15000),(76,5000,215000,15000000,65000,45000),(77,20000,75000,45000000,105000,12000),(78,15000,70000,85000000,255000,10000),(79,5000,35000,15000000,35000,5000),(80,2000,65000,25000000,55000,2000),(81,10000,125000,25000000,165000,15000),(82,15000,135000,55000000,215000,25000),(83,5000,35000,15000000,55000,10000),(84,0,0,0,0,0),(85,5000,125000,15000000,115000,5000),(86,5000,100000,25000000,315000,5000),(87,2000,160000,35000000,215000,10000),(88,500,25000,5000000,15000,2000),(89,2000,100000,15000000,115000,2000),(90,5000,15000,15000000,145000,2000),(91,5000,45000,5000000,65000,2000),(92,5000,120000,85000000,95000,10000),(93,500,15000,5000000,25000,5000),(94,5000,30000,15000000,85000,15000),(95,10000,20000,15000000,55000,15000),(96,15000,30000,10000000,35000,10000),(97,35000,75000,15000000,185000,3000),(98,500,10000,2000000,15000,500),(99,5000,25000,10000000,45000,1000),(100,25000,105000,25000000,35000,5000);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_info`
--

DROP TABLE IF EXISTS `support_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_info` (
  `game_id` int NOT NULL,
  `website` text,
  `support_url` text,
  `support_email` text,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_stats_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_support_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_info`
--

LOCK TABLES `support_info` WRITE;
/*!40000 ALTER TABLE `support_info` DISABLE KEYS */;
INSERT INTO `support_info` VALUES (1,'https://blog.counter-strike.net','https://help.steampowered.com','contact@valvesoftware.com'),(2,'http://www.dota2.com','https://help.steampowered.com','contact@valvesoftware.com'),(3,'https://www.pubg.com','https://support.pubg.com','support@krafton.com'),(4,'https://www.ea.com/games/apex-legends','https://help.ea.com','support@respawn.com'),(5,'https://www.playlostark.com','https://www.amazongames.com/support','support@amazon.com'),(6,'http://gaggle.fun','http://gaggle.fun/support','support@gaggle.fun'),(7,'https://rust.facepunch.com','https://support.facepunch.com','support@facepunch.com'),(8,'https://www.rockstargames.com/V','https://support.rockstargames.com','support@rockstargames.com'),(9,'http://www.teamfortress.com','https://help.steampowered.com','contact@valvesoftware.com'),(10,'https://ironmace.com','https://ironmace.com/support','contact@ironmace.com'),(11,'http://rainbow6.com','https://support.ubisoft.com','support@ubisoft.com'),(12,'https://www.bungie.net','https://www.bungie.net/support','support@bungie.com'),(13,'https://www.warframe.com','https://digitalextremes.zendesk.com','support@warframe.com'),(14,'https://www.kingdomcomerpg.com','https://support.deepsilver.com','support@warhorse.com'),(15,'http://playark.com','https://survivetheark.com/support','support@studiowildcard.com'),(16,'https://endnightgames.com','https://endnightgames.com/support','support@endnightgames.com'),(17,'https://www.escapefromtarkov.com','https://www.escapefromtarkov.com/support','support@battlestate.com'),(18,'https://gmod.facepunch.com','https://support.facepunch.com','support@facepunch.com'),(19,'https://smartlydriven.com','https://smartlydriven.com/support','contact@smartlydriven.com'),(20,'http://innersloth.com','http://innersloth.com/support','support@innersloth.com'),(21,'https://valheimgame.com','https://valheimgame.com/support','support@irongate.com'),(22,'https://terraria.org','https://terraria.org/support','support@re-logic.com'),(23,'https://skyrim.com','https://help.bethesda.net','support@bethesda.net'),(24,'https://stardewvalley.net','https://stardewvalley.net/support','support@concernedape.com'),(25,'https://deadbydaylight.com','https://support.deadbydaylight.com','support@bhvr.com'),(26,'https://civilization.com','https://support.2k.com','support@2k.com'),(27,'https://www.seaofthieves.com','https://support.seaofthieves.com','support@rare.co.uk'),(28,'https://dayz.com','https://support.bohemia.net','support@bohemia.net'),(29,'https://www.deeprockgalactic.com','https://ghostship.dk/support','support@ghostship.dk'),(30,'https://kineticgames.co.uk','https://kineticgames.co.uk/support','support@kineticgames.co.uk'),(31,'https://warthunder.com','https://support.gaijin.net','support@gaijin.net'),(32,'https://thewitcher.com','https://support.cdprojektred.com','support@cdprojektred.com'),(33,'https://www.cyberpunk.net','https://support.cdprojektred.com','support@cdprojektred.com'),(34,'https://www.eldenring.com','https://support.bandainamcoent.com','support@bandainamco.com'),(35,'http://www.monsterhunterworld.com','https://www.capcom.com/support','support@capcom.com'),(36,'http://www.eurotrucksimulator2.com','https://scssoft.com/support','support@scssoft.com'),(37,'https://www.rockstargames.com/reddeadredemption2','https://support.rockstargames.com','support@rockstargames.com'),(38,'https://www.paradoxinteractive.com','https://support.paradoxplaza.com','support@paradoxplaza.com'),(39,'https://endnightgames.com','https://endnightgames.com/support','support@endnightgames.com'),(40,'https://projectzomboid.com','https://projectzomboid.com/support','support@theindiestone.com'),(41,'https://7daystodie.com','https://7daystodie.com/support','support@thefunpimps.com'),(42,'https://www.hollowknight.com','https://www.teamcherry.com.au/support','support@teamcherry.com.au'),(43,'https://rimworldgame.com','https://rimworldgame.com/support','support@ludeon.com'),(44,'http://www.l4d.com','https://help.steampowered.com','contact@valvesoftware.com'),(45,'https://www.paydaythegame.com','https://www.starbreeze.com/support','support@starbreeze.com'),(46,'https://fallout4.com','https://help.bethesda.net','support@bethesda.net'),(47,'https://www.factorio.com','https://www.factorio.com/support','support@factorio.com'),(48,'https://www.satisfactorygame.com','https://www.satisfactorygame.com/support','support@coffeestain.se'),(49,'https://www.nomanssky.com','https://hellogames.zendesk.com','support@hellogames.com'),(50,'https://www.brawlhalla.com','https://www.ubisoft.com/support','support@brawlhalla.com'),(51,'https://www.skylinesgame.com','https://support.paradoxplaza.com','support@paradoxplaza.com'),(52,'https://unknownworlds.com/subnautica','https://unknownworlds.com/support','support@unknownworlds.com'),(53,'https://www.megacrit.com','https://www.megacrit.com/support','support@megacrit.com'),(54,'https://www.totalwar.com','https://support.sega.com','support@sega.com'),(55,'https://dead-cells.com','https://dead-cells.com/support','support@motiontwin.com'),(56,'https://joinsquad.com','https://offworldindustries.zendesk.com','support@offworldindustries.com'),(57,'https://bindingofisaac.com','https://www.nicalis.com/support','support@nicalis.com'),(58,'https://borderlands.com','https://support.2k.com','support@2k.com'),(59,'https://dyinglightgame.com','https://techland.zendesk.com','support@techland.pl'),(60,'https://www.naeu.playblackdesert.com','https://www.naeu.playblackdesert.com/support','support@pearlabyss.com'),(61,'https://www.pathofexile.com','https://www.pathofexile.com/support','support@grindinggear.com'),(62,'https://www.bungie.net','https://www.bungie.net/support','support@bungie.com'),(63,'https://larian.com','https://larian.com/support','support@larian.com'),(64,'https://www.stellarisgame.com','https://support.paradoxplaza.com','support@paradoxplaza.com'),(65,'https://www.crusaderkings.com','https://support.paradoxplaza.com','support@paradoxplaza.com'),(66,'https://www.taleworlds.com','https://www.taleworlds.com/support','support@taleworlds.com'),(67,'https://www.smitegame.com','https://www.hirezstudios.com/support','support@hirezstudios.com'),(68,'https://www.rocketleague.com','https://support.rocketleague.com','support@psyonix.com'),(69,'https://www.ea.com/games/the-sims/the-sims-4','https://help.ea.com','support@maxis.com'),(70,'https://www.newworld.com','https://www.amazongames.com/support','support@amazon.com'),(71,'https://www.halowaypoint.com','https://support.halowaypoint.com','support@343industries.com'),(72,'https://www.ea.com/games/battlefield/battlefield-5','https://help.ea.com','support@dice.se'),(73,'https://www.ea.com/games/starwars/jedi-fallen-order','https://help.ea.com','support@respawn.com'),(74,'https://www.ubisoft.com/assassins-creed-odyssey','https://support.ubisoft.com','support@ubisoft.com'),(75,'https://www.ubisoft.com/watch-dogs-2','https://support.ubisoft.com','support@ubisoft.com'),(76,'https://www.ubisoft.com/for-honor','https://support.ubisoft.com','support@ubisoft.com'),(77,'https://www.ageofempires.com','https://support.ageofempires.com','support@forgottenempires.net'),(78,'https://www.klei.com','https://support.klei.com','support@klei.com'),(79,'https://www.berserkgames.com','https://www.berserkgames.com/support','support@berserkgames.com'),(80,'https://bindingofisaac.com','https://www.nicalis.com/support','support@nicalis.com'),(81,'https://sekirothegame.com','https://support.activision.com','support@fromsoftware.com'),(82,'https://darksouls3.com','https://support.bandainamcoent.com','support@fromsoftware.com'),(83,'https://darksouls.com','https://support.bandainamcoent.com','support@fromsoftware.com'),(84,'https://sonyinteractive.com','https://support.playstation.com','support@fromsoftware.com'),(85,'https://cupheadgame.com','https://studiomdhr.com/support','support@studiomdhr.com'),(86,'http://www.portal2.com','https://help.steampowered.com','contact@valvesoftware.com'),(87,'http://www.l4d.com','https://help.steampowered.com','contact@valvesoftware.com'),(88,'http://www.teamfortress.com','https://help.steampowered.com','contact@valvesoftware.com'),(89,'http://www.portal.com','https://help.steampowered.com','contact@valvesoftware.com'),(90,'http://www.half-life2.com','https://help.steampowered.com','contact@valvesoftware.com'),(91,'https://half-life.com/alyx','https://help.steampowered.com','contact@valvesoftware.com'),(92,'https://help.steampowered.com','https://help.steampowered.com','contact@valvesoftware.com'),(93,'https://newworldinteractive.com','https://support.newworldinteractive.com','support@nwi.com'),(94,'https://insurgency-sandstorm.com','https://support.focus-home.com','support@nwi.com'),(95,'https://hellletloose.com','https://team17.zendesk.com','support@blackmatter.com'),(96,'https://enlisted.net','https://support.gaijin.net','support@darkflow.net'),(97,'https://poncle.games','https://poncle.games/support','support@poncle.games'),(98,'https://www.ubisoft.com','https://support.ubisoft.com','support@ubisoft.com'),(99,'https://www.mobiusdigitalgames.com','https://www.mobiusdigitalgames.com/support','support@mobius.com'),(100,'https://www.farming-simulator.com','https://www.farming-simulator.com/support','support@giants-software.com');
/*!40000 ALTER TABLE `support_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_requirements`
--

DROP TABLE IF EXISTS `system_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_requirements` (
  `game_id` int NOT NULL,
  `cpu_min` text,
  `ram_gb_min` int DEFAULT NULL,
  `gpu_min` text,
  `storage_gb` double DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_review_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_system_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_requirements`
--

LOCK TABLES `system_requirements` WRITE;
/*!40000 ALTER TABLE `system_requirements` DISABLE KEYS */;
INSERT INTO `system_requirements` VALUES (1,'Intel Core i5-750 / AMD Phenom II X4 965',8,'1 GB Video Card (DX11)',85),(2,'Dual core Intel or AMD at 2.8 GHz',4,'NVIDIA GeForce 8600/9600GT',60),(3,'Intel Core i5-4430 / AMD FX-6300',8,'NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370 2GB',40),(4,'Intel Core i3-6300 / AMD FX-4350',6,'NVIDIA GeForce GT 640 / AMD Radeon HD 7730',75),(5,'Intel Core i3 / AMD Ryzen 3',8,'NVIDIA GeForce GTX 460 / AMD Radeon HD 6850',50),(6,'Intel Core 2 Duo 2.4 GHz',2,'Integrated Graphics',1),(7,'Intel Core i7-3770 / AMD FX-9590',10,'NVIDIA GeForce GTX 670 / AMD Radeon R9 280',25),(8,'Intel Core 2 Quad Q6600 / AMD Phenom 9850',4,'NVIDIA 9800 GT 1GB / AMD HD 4870 1GB',110),(9,'1.7 GHz Processor or better',1,'DirectX 8.1 level Graphics Card',15),(10,'Intel Core i5 3.0 GHz / AMD Ryzen 5',8,'NVIDIA GeForce GTX 1060 / AMD Radeon RX 580',15),(11,'Intel Core i3-560 / AMD Phenom II X4 945',6,'NVIDIA GeForce GTX 460 / AMD Radeon HD 5870',61),(12,'Intel Core i3-3250 / AMD FX-4350',6,'NVIDIA GeForce GTX 660 2GB / AMD Radeon HD 7850 2GB',105),(13,'Intel Core i7-860 / AMD FX-4170',4,'DirectX 11 Video Card',50),(14,'Intel Core i5-2500K / AMD Phenom II X4 940',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',70),(15,'Intel Core i5-2400 / AMD FX-8320',8,'NVIDIA GeForce GTX 670 2GB / AMD Radeon HD 7870 2GB',60),(16,'Intel Core i5-8400 / AMD Ryzen 3 3300X',12,'NVIDIA GeForce GTX 1060 3GB / AMD Radeon RX 570 4GB',20),(17,'Intel Core i5 / AMD FX-6300',8,'NVIDIA GeForce GTX 660 2GB / AMD Radeon HD 7850 2GB',19),(18,'2.0 GHz Processor or better',4,'512MB Dedicated Video RAM',5),(19,'2.0 GHz Processor or better',4,'DirectX 9 Compatible Graphics',4),(20,'Intel Core i3-4340 / AMD FX-6300',1,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7850',1),(21,'2.6 GHz Dual Core or similar',4,'NVIDIA GeForce GTX 950 / AMD Radeon HD 7970',1),(22,'2.0 GHz Processor',2,'128MB Video Memory',0.2),(23,'Dual Core 2.0 GHz or equivalent',2,'DirectX 9.0c compliant video card with 512 MB RAM',6),(24,'2.0 GHz Processor',2,'256MB Video Memory',0.5),(25,'Intel Core i3-4170 / AMD FX-8120',8,'NVIDIA GeForce GTX 460 1GB / AMD HD 6850 1GB',50),(26,'Intel Core i3 2.5 GHz / AMD Phenom II 2.6 GHz',4,'1 GB DirectX 11 Video Card',12),(27,'Intel Core i3-2100 / AMD Phenom II X6 1100T',4,'NVIDIA GeForce GTX 650 / AMD Radeon HD 7750',50),(28,'Intel Core i5-4430 / AMD FX-6300',8,'NVIDIA GeForce GTX 760 / AMD Radeon R9 270X',25),(29,'Intel Core i5-3570 / AMD FX-8350',6,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7850',3),(30,'Intel Core i5-3570 / AMD FX-8350',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7850',18),(31,'Dual-Core 2.2 GHz',4,'NVIDIA GeForce 8800 GT / AMD Radeon HD 3850',17),(32,'Intel Core i5-2500K / AMD Phenom II X4 940',6,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',35),(33,'Intel Core i7-6700 / AMD Ryzen 5 1600',12,'NVIDIA GeForce GTX 1060 6GB / AMD Radeon RX 580 8GB',70),(34,'Intel Core i5-8400 / AMD Ryzen 3 3300X',12,'NVIDIA GeForce GTX 1060 3GB / AMD Radeon RX 580 4GB',60),(35,'Intel Core i5-4460 / AMD FX-6300',8,'NVIDIA GeForce GTX 760 / AMD Radeon R7 260x',48),(36,'Dual core CPU 2.4 GHz',4,'NVIDIA GeForce GTS 450 / Intel HD 4000',12),(37,'Intel Core i5-2500K / AMD FX-6300',8,'NVIDIA GeForce GTX 770 2GB / AMD Radeon R9 280 3GB',150),(38,'Intel Core i3-2100 / AMD Phenom II X4 955',4,'NVIDIA GeForce GTX 470 / AMD Radeon HD 5850',2),(39,'Intel Core i3 / AMD Athlon II X4',4,'NVIDIA GeForce GTX 560',5),(40,'Intel Core 2 Quad 2.7 GHz / AMD Phenom II X4 3 GHz',8,'NVIDIA GeForce GTX 660 / AMD Radeon R9 270',5),(41,'2.4 GHz Dual Core CPU',8,'2 GB Dedicated Video RAM',15),(42,'Intel Core 2 Duo E8400 / AMD Athlon 64 X2 5600+',4,'NVIDIA GeForce 9800 GTX+ 1GB',9),(43,'Core 2 Duo',4,'Intel HD Graphics 4000',1),(44,'Pentium 4 3.0GHz',2,'NVIDIA 6600 / ATI X1600',13),(45,'2 GHz Dual Core Processor',4,'NVIDIA GeForce 8800/ATI Radeon HD 2600',83),(46,'Intel Core i5-2300 / AMD Phenom II X4 945',8,'NVIDIA GTX 550 Ti 2GB / AMD Radeon HD 7870 2GB',30),(47,'Dual core 3GHz+',4,'DirectX 10.1 capable GPU with 512 MB VRAM',3),(48,'Intel Core i5-3570 3.4 GHz',8,'NVIDIA GeForce GTX 770 2GB',15),(49,'Intel Core i3',8,'NVIDIA GeForce GTX 480 / AMD Radeon 7870',15),(50,'Intel Core 2 Duo / AMD Athlon 64 X2',2,'NVIDIA GeForce 8800 GT / AMD Radeon HD 3850',0.8),(51,'Intel Core 2 Duo 3.0 GHz / AMD Athlon 64 X2 6400+',4,'NVIDIA GeForce GTX 260 / AMD Radeon HD 4850',4),(52,'Intel Haswell 2 cores / 4 threads 2.5GHz+',4,'Intel HD 4600 or equivalent',20),(53,'1.0 GHz',2,'128MB Video Memory',1),(54,'Intel Core i5-4570 / AMD Ryzen 3 1200',8,'NVIDIA GeForce GTX 900 / AMD Radeon RX 400',120),(55,'Intel Core i5 / AMD Phenom II X4',2,'NVIDIA GeForce GTX 460 / AMD Radeon HD 5770',0.5),(56,'Intel Core i5-2500K / AMD FX-6300',8,'NVIDIA GeForce GTX 770 / AMD Radeon R9 270X',55),(57,'Intel Core i3 / AMD Phenom II X4',2,'NVIDIA GeForce GTX 460 / AMD Radeon HD 5770',0.5),(58,'2.4 GHz Dual Core Processor',2,'NVIDIA GeForce 8500 / ATI Radeon HD 2600',13),(59,'Intel Core i5-2500 / AMD FX-8320',4,'NVIDIA GeForce GTX 560 / AMD Radeon HD 6870',40),(60,'Intel Core i3-530 2.9 GHz',4,'NVIDIA GeForce GTS 250 / ATI Radeon HD 3870',39),(61,'x64-compatible quad core 2.6GHz or better',8,'NVIDIA GeForce GTX 650 Ti / AMD Radeon HD 7790',40),(62,'Intel Core i3-3250 / AMD FX-4350',6,'NVIDIA GeForce GTX 660 2GB / AMD Radeon HD 7850 2GB',40),(63,'Intel Core i5-2400 / AMD FX-8320',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',60),(64,'Intel Core i3-2100 / AMD Phenom II X4 945',4,'NVIDIA GeForce GTX 470 / AMD Radeon HD 5870',10),(65,'Intel Core i3-2120 / AMD FX-6350',6,'NVIDIA GeForce GTX 460 / AMD Radeon HD 7870',8),(66,'Intel Core i3-8100 / AMD Ryzen 3 1200',6,'NVIDIA GeForce GTX 660 2GB / AMD Radeon HD 7850 2GB',60),(67,'Core 2 Duo 2.4 GHz / Athlon X2 2.7 GHz',4,'NVIDIA GeForce 8800 GT / ATI Radeon 3870',30),(68,'2.5 GHz Dual core',4,'NVIDIA GeForce 760 / AMD Radeon R7 270',20),(69,'Intel Core i3-3220 / AMD Phenom II X4 965',4,'NVIDIA GeForce 6600 / ATI Radeon X1300',26),(70,'Intel Core i5-2400 / AMD Ryzen 3 1200',8,'NVIDIA GeForce GTX 670 2GB / AMD Radeon R9 280',50),(71,'Intel Core i5-4440 / AMD Ryzen 5 1600',8,'NVIDIA GeForce GTX 1050 Ti / AMD Radeon RX 570',50),(72,'Intel Core i5-6600K / AMD FX-8350',8,'NVIDIA GeForce GTX 1050 / AMD Radeon RX 560',50),(73,'Intel Core i3-3220 / AMD FX-6100',8,'NVIDIA GeForce GTX 650 / AMD Radeon HD 7750',55),(74,'Intel Core i5-2400 / AMD FX-8350',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',46),(75,'Intel Core i5-2400S / AMD FX-6120',6,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',50),(76,'Intel Core i3-550 / AMD Phenom II X4 955',4,'NVIDIA GeForce GTX 660 / AMD Radeon HD 6970',40),(77,'Intel Core 2 Duo / AMD Athlon 64x2 5600+',4,'NVIDIA GeForce GT 420 / ATI Radeon HD 6850',30),(78,'Intel Core i5-4460 / AMD FX-6300',8,'NVIDIA GeForce GTX 960 / AMD Radeon R9 280',150),(79,'Intel Core i5-2400 / AMD FX-8320',8,'NVIDIA GeForce GTX 760 / AMD Radeon R9 270X',60),(80,'Intel Core i3-3225 / AMD Phenom II X4 965',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',70),(81,'Intel Core i3-2100 / AMD FX-6300',4,'NVIDIA GeForce GTX 760 / AMD Radeon HD 7950',25),(82,'Intel Core i5-2500 / AMD FX-6300',4,'NVIDIA GeForce GTX 750 Ti / ATI Radeon HD 6870',25),(83,'Intel Core i3-2100 / AMD FX-6300',4,'NVIDIA GeForce GTX 465 / ATI Radeon HD 6870',12),(84,'Intel Core i5-2500K / AMD FX-8120',8,'NVIDIA GeForce GTX 970 / AMD Radeon R9 290X',40),(85,'Intel Core i3-2100 / AMD Phenom II X4 965',4,'NVIDIA GeForce GTX 960 / AMD Radeon R7 370',20),(86,'3.0 GHz Dual Core',2,'NVIDIA GeForce 7600 GT / ATI Radeon X1600',8),(87,'3.0 GHz Dual Core',2,'NVIDIA GeForce 6600 / ATI Radeon X800',8),(88,'500 MHz Processor',0,'16MB Video Card',0.4),(89,'3.0 GHz Dual Core',2,'NVIDIA GeForce 6600 / ATI Radeon X800',10),(90,'1.7 GHz Processor',1,'DirectX 8.1 level Graphics Card',6.5),(91,'Intel Core i5-7500 / AMD Ryzen 5 1600',12,'NVIDIA GeForce GTX 1060 / AMD Radeon RX 580',67),(92,'1.7 GHz Processor',1,'DirectX 8.1 level Graphics Card',4),(93,'Intel Core i3-2100 / AMD Phenom II X4 940',4,'NVIDIA GeForce GTX 460 / AMD Radeon HD 5850',12),(94,'Intel Core i5-4460 / AMD Ryzen 3 1200',8,'NVIDIA GeForce GTX 760 / AMD Radeon R9 270X',40),(95,'Intel Core i5-4460 / AMD Ryzen 3 1200',8,'NVIDIA GeForce GTX 960 / AMD Radeon R9 380',30),(96,'Intel Core i3 / AMD Ryzen 3',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7850',12),(97,'Intel Core i5-2300 / AMD FX-6300',4,'Integrated Graphics',0.5),(98,'Intel Core 2 Duo E4400 / AMD Athlon 64 X2 3800+',2,'NVIDIA GeForce 8800 GT / AMD Radeon HD 2900',2),(99,'Intel Core i5-2300 / AMD FX-4350',8,'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870',15),(100,'Intel Core i5-3330 / AMD FX-8320',8,'NVIDIA GeForce GTX 660 2GB / AMD Radeon HD 7850 2GB',35);
/*!40000 ALTER TABLE `system_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` text,
  `email` text,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cs_legend','alex.martin@gmail.com','2015-03-12'),(2,'dota_king','rania.ben@hotmail.com','2014-07-20'),(3,'rust_survivor','karim.tn@gmail.com','2018-09-05'),(4,'pubg_pro','sarah.jones@yahoo.com','2019-01-14'),(5,'apex_hunter','mehdi.ali@gmail.com','2020-11-22'),(6,'witcher_fan','laura.smith@gmail.com','2016-05-30'),(7,'indie_lover','youssef.k@hotmail.com','2017-08-18'),(8,'horror_addict','nina.wolf@gmail.com','2019-03-09'),(9,'strat_master','thomas.b@gmail.com','2016-12-01'),(10,'fps_goat','amir.r@gmail.com','2013-04-25'),(11,'elden_lord','clara.d@gmail.com','2022-03-01'),(12,'rdr_cowboy','james.t@hotmail.com','2019-12-10'),(13,'sim_builder','fatma.c@gmail.com','2015-07-07'),(14,'survival_king','lucas.v@gmail.com','2017-05-15'),(15,'rpg_queen','hana.m@gmail.com','2018-10-30'),(16,'rocket_ace','pierre.l@hotmail.com','2020-09-24'),(17,'hollow_ghost','ines.s@gmail.com','2017-03-02'),(18,'factorio_nerd','omar.b@gmail.com','2020-08-20'),(19,'phasmo_crew','lena.k@gmail.com','2020-10-05'),(20,'rimworld_god','adam.p@gmail.com','2018-11-12'),(21,'dark_souls_gg','maya.r@gmail.com','2016-04-11'),(22,'among_sus','kevin.c@gmail.com','2020-09-15'),(23,'sea_captain','julia.m@hotmail.com','2020-07-01'),(24,'terraria_dig','ben.s@gmail.com','2015-08-22'),(25,'stardew_farm','chloe.b@gmail.com','2018-02-14'),(26,'civ_emperor','rafael.t@gmail.com','2017-10-21'),(27,'deadlight_dbz','sonia.h@gmail.com','2019-06-14'),(28,'warframe_op','felix.n@gmail.com','2016-03-25'),(29,'path_of_exile','diana.l@gmail.com','2015-11-10'),(30,'graveyard_kid','hugo.m@hotmail.com','2020-05-18'),(31,'cyberpunk_v','amira.k@gmail.com','2021-01-01'),(32,'tarkov_rat','nicolas.d@gmail.com','2018-07-27'),(33,'valheim_viking','astrid.j@gmail.com','2021-03-10'),(34,'deep_rock_miner','marco.p@gmail.com','2020-06-01'),(35,'left4dead_pro','sara.w@gmail.com','2016-09-05'),(36,'borderlands_zer0','eli.f@gmail.com','2015-12-20'),(37,'stellaris_grand','yuki.t@gmail.com','2016-05-15'),(38,'hoi4_general','victor.l@gmail.com','2016-07-01'),(39,'subnautica_deep','luna.v@gmail.com','2018-02-01'),(40,'slay_the_spire','noah.g@gmail.com','2019-02-01'),(41,'dead_cells_run','priya.s@gmail.com','2019-09-15'),(42,'outer_wilds_fan','max.b@gmail.com','2020-07-10'),(43,'dying_light_pk','ryo.k@gmail.com','2015-02-28'),(44,'for_honor_warden','anna.c@hotmail.com','2017-03-01'),(45,'aoe_knight','david.r@gmail.com','2019-11-25'),(46,'dont_starve_wx','lisa.f@gmail.com','2016-05-01'),(47,'payday_crew','marc.d@gmail.com','2014-09-15'),(48,'no_mans_sky','elena.p@gmail.com','2016-09-20'),(49,'squad_lead','tom.h@gmail.com','2021-01-20'),(50,'cuphead_boss','zara.m@gmail.com','2018-01-10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-18 13:29:49
