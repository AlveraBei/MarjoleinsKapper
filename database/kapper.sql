--
-- Current Database: `kapper`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kapper` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `kapper`;

--
-- Table structure for table `afspraakkt`
--

DROP TABLE IF EXISTS `afspraakkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afspraakkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `afspraak_id` (`afspraak_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afspraakkt`
--

LOCK TABLES `afspraakkt` WRITE;
/*!40000 ALTER TABLE `afspraakkt` DISABLE KEYS */;
/*!40000 ALTER TABLE `afspraakkt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `afspraken`
--

DROP TABLE IF EXISTS `afspraken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afspraken` (
  `afspraak_id` int(11) NOT NULL AUTO_INCREMENT,
  `klanten_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`afspraak_id`),
  UNIQUE KEY `klanten_id` (`klanten_id`),
  CONSTRAINT `afspraken_ibfk_1` FOREIGN KEY (`klanten_id`) REFERENCES `klanten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afspraken`
--

LOCK TABLES `afspraken` WRITE;
/*!40000 ALTER TABLE `afspraken` DISABLE KEYS */;
INSERT INTO `afspraken` VALUES (87,110,'2022-12-10 16:45:00'),(89,112,'2022-12-10 16:48:00'),(90,113,'2022-12-10 19:20:00'),(91,114,'2022-12-10 19:20:00'),(92,115,'2022-12-10 19:39:00'),(93,116,'2022-12-10 19:42:00'),(94,117,'2022-12-10 19:42:00');
/*!40000 ALTER TABLE `afspraken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klanten`
--

DROP TABLE IF EXISTS `klanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klanten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefoon` varchar(13) NOT NULL,
  `geslacht` varchar(10) NOT NULL,
  `notities` varchar(255) NOT NULL,
  `praat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klanten`
--

LOCK TABLES `klanten` WRITE;
/*!40000 ALTER TABLE `klanten` DISABLE KEYS */;
INSERT INTO `klanten` VALUES (110,'a@gmail.com','muhamedshamsaddin@gmail.com','+313333333','Man','321312312312','Niet stil zijn'),(111,'a@gmail.com','muhamedshamsaddin@gmail.com','+313333333','Man','321312312312','Niet stil zijn'),(112,'nadawdwadawdaw','muhamedshamsaddin@gmail.com','+313123123123','Man','dajwdhjawjdawjdjawjdaj','Niet stil zijn'),(113,'a@gmail.com','muhamedshamsaddin@gmail.com','+313123123123','Man','321312312312','Niet stil zijn'),(114,'a@gmail.com','muhamedshamsaddin@gmail.com','+313123123123','Man','dajwdhjawjdawjdjawjdaj','Niet stil zijn'),(115,'a@gmail.com','muhamedshamsaddin@gmail.com','+313123123123','Man','dajwdhjawjdawjdjawjdaj','Niet stil zijn'),(116,'nadawdwadawdaw','muhamedshamsaddin@gmail.com','+313123123123','Man','dajwdhjawjdawjdjawjdaj','Niet stil zijn'),(117,'nadawdwadawdaw','muhamedshamsaddin@gmail.com','+313123123123','Man','dajwdhjawjdawjdjawjdaj','Niet stil zijn');
/*!40000 ALTER TABLE `klanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicekt`
--

DROP TABLE IF EXISTS `servicekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicekt` (
  `medewerker_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  KEY `service_id` (`service_id`),
  KEY `medewerker_id` (`medewerker_id`),
  CONSTRAINT `servicekt_ibfk_1` FOREIGN KEY (`medewerker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicekt_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicekt`
--

LOCK TABLES `servicekt` WRITE;
/*!40000 ALTER TABLE `servicekt` DISABLE KEYS */;
INSERT INTO `servicekt` VALUES (1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28);
/*!40000 ALTER TABLE `servicekt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceduur` int(11) NOT NULL,
  `serviceprijs` decimal(50,0) NOT NULL,
  `servicenaam` varchar(50) NOT NULL,
  `servicescategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicescategorie` (`servicescategorie`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`servicescategorie`) REFERENCES `servicescategorie` (`servicescategorie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (21,30,10,'puntjes bijwerken - dames',7),(22,30,15,'kort haar - dames',7),(23,30,20,'middenlang haar (tot schouders) - dames',7),(24,30,25,'lang haar - dames',7),(25,30,10,'kort haar - heren',7),(26,30,20,'lang haar - heren',7),(27,30,20,'kort haar & baard trimmen - heren',7),(28,30,30,'lang haar & baard trimmen - heren',7),(29,30,10,'wassen',7),(30,30,10,'wassen & föhnen',7);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicescategorie`
--

DROP TABLE IF EXISTS `servicescategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicescategorie` (
  `servicescategorie_id` int(11) NOT NULL AUTO_INCREMENT,
  `categorienaam` varchar(255) NOT NULL,
  `categorieprijs` decimal(50,0) NOT NULL,
  `categorieduur` int(11) NOT NULL,
  PRIMARY KEY (`servicescategorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicescategorie`
--

LOCK TABLES `servicescategorie` WRITE;
/*!40000 ALTER TABLE `servicescategorie` DISABLE KEYS */;
INSERT INTO `servicescategorie` VALUES (7,'wassen',10,15),(8,'föhnen',10,15),(9,'wassen & föhnen',20,30);
/*!40000 ALTER TABLE `servicescategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userkt`
--

DROP TABLE IF EXISTS `userkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userkt` (
  `afspraak_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  UNIQUE KEY `afspraak_id` (`afspraak_id`),
  KEY `service_id` (`service_id`),
  KEY `userkt_ibfk_2` (`user_id`),
  CONSTRAINT `userkt_ibfk_1` FOREIGN KEY (`afspraak_id`) REFERENCES `afspraken` (`afspraak_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userkt_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userkt_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userkt`
--

LOCK TABLES `userkt` WRITE;
/*!40000 ALTER TABLE `userkt` DISABLE KEYS */;
INSERT INTO `userkt` VALUES (94,1,21);
/*!40000 ALTER TABLE `userkt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','mo','a@gmail.om','123'),(2,'admin','thijmen','thij@men.com','123'),(8,'admin','mo','a@gmail.com','$2y$10$p8CsRTCFzz9BxkJpAX.KwuttYIQGXXbb/LrRqnrUTZdB2aR/8owcm');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;