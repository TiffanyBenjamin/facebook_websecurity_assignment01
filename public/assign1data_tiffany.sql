-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: globitek
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;--
-- Table structure for table `salespeople`
--

DROP TABLE IF EXISTS `salespeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salespeople` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespeople`
--

LOCK TABLES `salespeople` WRITE;
/*!40000 ALTER TABLE `salespeople` DISABLE KEYS */;
INSERT INTO `salespeople` VALUES (1,'Daron','Burke','555-925-3685','dburke@salesperson.com'),(2,'Sherry','Trevino','555-435-1036','strevino@salesperson.com'),(3,'Irene','Boling','555-736-2301','iboling@salesperson.com'),(4,'Robert','Hamilton','555-866-6131','rhamilton@salesperson.com'),(5,'Ken','Barker','555-352-9654','kbarker@salesperson.com'),(6,'Elizabeth','Olson','555-532-3209','eolson@salesperson.com'),(7,'Samuel','Hunter','555-682-7543','shunter@salesperson.com'),(8,'Kim','Stanley','555-302-7805','kstanley@salesperson.com'),(9,'Barbara','Hinckley','555-437-1355','bhinckley@salesperson.com'),(10,'Zark','Muckerberg','555-123-4567','webmaster@fb.com'),(11,'Jane','Doe','555-919-5555','info@fake.com');
/*!40000 ALTER TABLE `salespeople` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salespeople_territories`
--

DROP TABLE IF EXISTS `salespeople_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salespeople_territories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `territory_id` int(11) DEFAULT NULL,
  `salespeople_ids` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespeople_territories`
--

LOCK TABLES `salespeople_territories` WRITE;
/*!40000 ALTER TABLE `salespeople_territories` DISABLE KEYS */;
INSERT INTO `salespeople_territories` VALUES (1,1,1),(2,2,4),(3,3,3),(4,4,6),(5,5,4),(6,6,2),(7,7,3),(8,8,9),(9,9,9),(10,10,1),(11,11,1),(12,12,3),(13,13,3),(14,14,2),(15,15,5),(16,16,7),(17,17,5),(18,18,8),(19,19,7),(20,20,6),(21,21,9),(22,22,9),(23,23,9),(24,24,7),(25,25,5),(26,26,1),(27,27,1),(28,28,5),(29,29,3),(30,30,8),(31,31,2),(32,32,3),(33,33,9),(34,34,9),(35,35,2),(36,36,3),(37,37,2),(38,37,9),(39,38,9),(40,39,1),(41,40,8),(42,41,7),(43,42,6),(44,43,4),(45,44,7),(46,45,2),(47,46,9),(48,47,1),(49,48,8),(50,49,1),(51,50,6),(52,51,3),(53,52,9),(54,53,2),(55,54,1),(56,55,4),(57,56,7),(58,57,5),(59,58,3),(60,59,10),(61,60,10),(62,61,11),(63,62,11),(64,63,11),(65,64,11);
/*!40000 ALTER TABLE `salespeople_territories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `territories`
--

DROP TABLE IF EXISTS `territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `territories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `territories`
--

LOCK TABLES `territories` WRITE;
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
INSERT INTO `territories` VALUES (1,'Alabama',1,1),(2,'Alaska',2,1),(3,'Arizona',3,1),(4,'Arkansas',4,1),(5,'Northern California',5,1),(6,'Southern California',5,2),(7,'Colorado',6,1),(8,'Connecticut',7,1),(9,'Delaware',8,1),(10,'Florida',9,1),(11,'Georgia',10,1),(12,'Hawaii',11,1),(13,'Idaho',12,1),(14,'Chicago Metro',13,1),(15,'Outside Chicago',13,2),(16,'Indiana',14,1),(17,'Iowa',15,1),(18,'Kansas',16,1),(19,'Kentucky',17,1),(20,'Louisiana',18,1),(21,'Maine',19,1),(22,'Maryland',20,1),(23,'Massachusetts',21,1),(24,'Michigan',22,1),(25,'Minnesota',23,1),(26,'Mississippi',24,1),(27,'St. Louis Area',25,2),(28,'Kansas City Area',25,1),(29,'Montana',26,1),(30,'Nebraska',27,1),(31,'Las Vegas',28,1),(32,'Outside Las Vegas',28,2),(33,'New Hampshire',29,1),(34,'Northern New Jersey',30,1),(35,'Southern New Jersey',30,2),(36,'New Mexico',31,1),(37,'New York City',32,1),(38,'Outside New York City',32,2),(39,'North Carolina',33,1),(40,'North Dakota',34,1),(41,'Ohio',35,1),(42,'Oklahoma',36,1),(43,'Oregon',37,1),(44,'Western Pennsylvania',38,1),(45,'Eastern Pennsylvania',38,2),(46,'Rhode Island',39,1),(47,'South Carolina',40,1),(48,'South Dakota',41,1),(49,'Tennessee',42,1),(50,'Texas',43,1),(51,'Utah',44,1),(52,'Vermont',45,1),(53,'Northern Virginia',46,1),(54,'Southern Virginia',46,2),(55,'Washington',47,1),(56,'West Virginia',48,1),(57,'Wisconsin',49,1),(58,'Wyoming',50,1),(59,'Toronto',51,1),(60,'Outside Toronto',51,2),(61,'Quebec',52,1),(62,'British Columbia',53,1),(63,'Alberta',54,1),(64,'Manitoba',55,1);
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-10 21:44:12
