-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_site_db
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `amendments`
--

DROP TABLE IF EXISTS `amendments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amendments` (
  `amd_id` int(11) NOT NULL AUTO_INCREMENT,
  `amendment` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `editedAdminId` int(11) NOT NULL,
  `editedPostId` int(11) NOT NULL,
  PRIMARY KEY (`amd_id`),
  KEY `editedAdminId` (`editedAdminId`),
  KEY `editedPostId` (`editedPostId`),
  CONSTRAINT `amendments_ibfk_1` FOREIGN KEY (`editedAdminId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `amendments_ibfk_2` FOREIGN KEY (`editedPostId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amendments`
--

LOCK TABLES `amendments` WRITE;
/*!40000 ALTER TABLE `amendments` DISABLE KEYS */;
/*!40000 ALTER TABLE `amendments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(9) NOT NULL,
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `dateNTime` varchar(20) NOT NULL,
  `agreeCount` int(11) DEFAULT '0',
  `disagreeCount` int(11) DEFAULT '0',
  `postId` int(11) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `postId` (`postId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'comment comment','Question-wise','04/09/2020 14:20:30',0,0,1),(2,'comment commentcomment comment','Supportive','04/09/2020 14:20:30',0,0,1),(3,'comment comment','I have a another Opinion','04/09/2020 14:20:30',0,0,1),(4,'comment commentcomment comment','Supportive','04/09/2020 14:20:30',0,0,3),(5,'comment commentcomment comment','Question-wise','04/09/2020 14:20:30',1,0,2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commenttypes`
--

DROP TABLE IF EXISTS `commenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commenttypes` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `commentType` varchar(15) NOT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commenttypes`
--

LOCK TABLES `commenttypes` WRITE;
/*!40000 ALTER TABLE `commenttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complains`
--

DROP TABLE IF EXISTS `complains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complains` (
  `cmpln_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewed` tinyint(4) NOT NULL DEFAULT '0',
  `complainedPostId` int(11) NOT NULL,
  `complainedUserId` int(11) NOT NULL,
  PRIMARY KEY (`cmpln_id`),
  KEY `complainedPostId` (`complainedPostId`),
  KEY `complainedUserId` (`complainedUserId`),
  CONSTRAINT `complains_ibfk_1` FOREIGN KEY (`complainedPostId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `complains_ibfk_2` FOREIGN KEY (`complainedUserId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complains`
--

LOCK TABLES `complains` WRITE;
/*!40000 ALTER TABLE `complains` DISABLE KEYS */;
/*!40000 ALTER TABLE `complains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notifiedUserId` int(11) NOT NULL,
  PRIMARY KEY (`n_id`),
  KEY `notifiedUserId` (`notifiedUserId`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notifiedUserId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postcategories`
--

DROP TABLE IF EXISTS `postcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postcategories` (
  `pctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`pctg_id`),
  KEY `postId` (`postId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `postcategories_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `postcategories_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`ctg_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcategories`
--

LOCK TABLES `postcategories` WRITE;
/*!40000 ALTER TABLE `postcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `postcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `dateNTime` varchar(20) NOT NULL,
  `excelentCount` int(11) DEFAULT '0',
  `goodCount` int(11) DEFAULT '0',
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `userId` (`userId`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'first post','aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh','16/10/2020 23:07:32',0,0,1),(2,'second post','aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh','16/10/2020 23:07:32',0,0,2),(3,'third post','aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh','16/10/2020 23:07:32',0,0,1),(4,'forth post','aaawdfk jnw afubawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhawdfk jnw afubn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uhn fnn biuawfiuawb iau ba ioubhwd fiouw bnaouia wo uiawoa fubna wpofuinha fiopuawhopawhpa foui apiobwapo uh','16/10/2020 23:07:32',1,0,2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replies` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `dateNTime` varchar(20) NOT NULL,
  `agreeCount` int(11) DEFAULT '0',
  `disagreeCount` int(11) DEFAULT '0',
  `postId` int(11) NOT NULL,
  `commentId` int(11) NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `postId` (`postId`),
  KEY `commentId` (`commentId`),
  CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`commentId`) REFERENCES `comments` (`c_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,'reply reply','04/09/2020 14:20:30',0,0,1,1),(2,'reply reply','04/09/2020 14:20:30',0,0,1,3),(3,'reply reply','04/09/2020 14:20:30',0,1,2,5);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `thm_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(15) NOT NULL,
  PRIMARY KEY (`thm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercommentreactions`
--

DROP TABLE IF EXISTS `usercommentreactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercommentreactions` (
  `ucr_id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `commentId` int(11) NOT NULL,
  `reaction` varchar(9) NOT NULL,
  PRIMARY KEY (`ucr_id`),
  KEY `postId` (`postId`),
  KEY `userId` (`userId`),
  KEY `commentId` (`commentId`),
  CONSTRAINT `usercommentreactions_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `usercommentreactions_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `usercommentreactions_ibfk_3` FOREIGN KEY (`commentId`) REFERENCES `comments` (`c_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercommentreactions`
--

LOCK TABLES `usercommentreactions` WRITE;
/*!40000 ALTER TABLE `usercommentreactions` DISABLE KEYS */;
INSERT INTO `usercommentreactions` VALUES (1,2,1,5,'agree');
/*!40000 ALTER TABLE `usercommentreactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinterests`
--

DROP TABLE IF EXISTS `userinterests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinterests` (
  `uint_id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`uint_id`),
  KEY `postId` (`postId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `userinterests_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `userinterests_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`ctg_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinterests`
--

LOCK TABLES `userinterests` WRITE;
/*!40000 ALTER TABLE `userinterests` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinterests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpostreactions`
--

DROP TABLE IF EXISTS `userpostreactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpostreactions` (
  `upr_id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `reaction` varchar(9) NOT NULL,
  PRIMARY KEY (`upr_id`),
  KEY `postId` (`postId`),
  KEY `userId` (`userId`),
  CONSTRAINT `userpostreactions_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `userpostreactions_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpostreactions`
--

LOCK TABLES `userpostreactions` WRITE;
/*!40000 ALTER TABLE `userpostreactions` DISABLE KEYS */;
INSERT INTO `userpostreactions` VALUES (1,4,2,'excelent');
/*!40000 ALTER TABLE `userpostreactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userreplyreactions`
--

DROP TABLE IF EXISTS `userreplyreactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userreplyreactions` (
  `urr_id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `commentId` int(11) NOT NULL,
  `replyId` int(11) NOT NULL,
  `reaction` varchar(9) NOT NULL,
  PRIMARY KEY (`urr_id`),
  KEY `postId` (`postId`),
  KEY `userId` (`userId`),
  KEY `commentId` (`commentId`),
  KEY `replyId` (`replyId`),
  CONSTRAINT `userreplyreactions_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`p_id`) ON DELETE CASCADE,
  CONSTRAINT `userreplyreactions_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `userreplyreactions_ibfk_3` FOREIGN KEY (`commentId`) REFERENCES `comments` (`c_id`) ON DELETE CASCADE,
  CONSTRAINT `userreplyreactions_ibfk_4` FOREIGN KEY (`replyId`) REFERENCES `replies` (`r_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userreplyreactions`
--

LOCK TABLES `userreplyreactions` WRITE;
/*!40000 ALTER TABLE `userreplyreactions` DISABLE KEYS */;
INSERT INTO `userreplyreactions` VALUES (1,2,2,5,3,'disagree');
/*!40000 ALTER TABLE `userreplyreactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT '0',
  `isUser` tinyint(4) NOT NULL DEFAULT '1',
  `avatarImageUrl` varchar(100) DEFAULT NULL,
  `ranking` varchar(5) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','user','user1@gmail.com',0,1,NULL,NULL,'user111'),(2,'user2','user','user2@gmail.com',0,1,NULL,NULL,'user222');
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

-- Dump completed on 2020-10-25 15:33:18
