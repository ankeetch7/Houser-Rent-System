-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: houserent_db
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `ur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `ur_id` (`ur_id`),
  CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`ur_id`) REFERENCES `user_roles` (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@gmail.com','admin','admin',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `c_uid` int(11) DEFAULT NULL,
  `c_fullname` varchar(50) NOT NULL,
  `c_phone` varchar(10) NOT NULL,
  `h_id` int(11) DEFAULT NULL,
  `w_id` int(11) NOT NULL,
  `h_location` varchar(30) NOT NULL,
  `h_phone` varchar(10) NOT NULL,
  `h_book` int(11) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `uid` (`c_uid`),
  KEY `h_id` (`h_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`c_uid`) REFERENCES `users` (`uid`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `houseinfo` (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (69,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(70,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(71,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(72,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(73,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(74,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(75,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(76,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(77,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(78,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(79,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(80,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(81,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(82,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(83,19,'John Doe','4545454554',27,3,'Laborum Voluptatem ','2222222222',0),(84,19,'John Doe','4545454554',28,19,'Nesciunt qui sit es','1212121212',0),(85,19,'John Doe','4545454554',28,19,'Nesciunt qui sit es','1212121212',0),(86,23,'Raja','9812345670',30,19,'Nesciunt qui sit es','1212121212',0),(87,23,'Raja','9812345670',30,19,'Nesciunt qui sit es','1212121212',0),(88,23,'Raja','9812345670',33,24,'Est quam consequatur','9898989898',1),(89,23,'Raja','9812345670',33,24,'Est quam consequatur','9898989898',1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('raja','ram','raja@gmail.com','9876543210','not working properly.'),('Jillian','Hood','nugy@mailinator.com','+1 (691) 8','Nulla incididunt exe');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houseinfo`
--

DROP TABLE IF EXISTS `houseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houseinfo` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `room_type` varchar(11) NOT NULL,
  `facility` varchar(40) NOT NULL,
  `price` varchar(11) NOT NULL,
  `description` varchar(110) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `date_submission` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `image` varchar(110) NOT NULL,
  `status` int(11) NOT NULL,
  `book` int(5) NOT NULL,
  PRIMARY KEY (`h_id`),
  KEY `houseinfo_ibfk_1` (`uid`),
  CONSTRAINT `houseinfo_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houseinfo`
--

LOCK TABLES `houseinfo` WRITE;
/*!40000 ALTER TABLE `houseinfo` DISABLE KEYS */;
INSERT INTO `houseinfo` VALUES (2,14,'Modi nisi earum quas','Flat','Water,Electicity,','241','Quam facilis laboris','1234567890','2021-04-19 12:53:01.297433','',1,1),(3,3,'Itaque sed irure qui','Room','Water,Electicity,','744','Exercitationem eveni','9898989898','2021-04-19 12:54:33.132323','',1,1),(4,3,'Impedit quasi ipsam','Room','Wifi,Parking,Water,Electicity,','720','Atque qui ex perfere','9865225221','2021-07-10 06:50:15.670518','',1,1),(5,3,'Qui cupidatat nostru','House','Electicity,','309','Ea expedita quia tot','9865225221','2021-04-19 12:56:36.661012','',1,1),(6,3,'Commodo officia ad n','Room','Parking,','923','Corrupti aut consec','9865225221','2021-04-18 08:13:21.234300','',1,1),(7,3,'Debitis ipsam quaera','House','Parking,Water,Electicity,','17','Officia eveniet del','9865225221','2021-04-18 07:32:16.769735','',1,1),(9,NULL,'Fugiat sunt qui mol','Flat','Parking,Water,','534','Illo quibusdam ea ad','2323232323','2021-08-31 07:24:27.728743','11aside.jpg',1,1),(10,18,'Voluptas in dignissi','House','Water,','188','Consequatur voluptas','1212121212','2021-04-18 09:57:56.116563','11aside.jpg',1,1),(12,18,'Ex perferendis conse','House','Parking,Water,','441','Cupidatat quia inven','9999999999','2021-04-19 12:50:14.738000','',1,1),(13,21,'Sequi velit fuga Q','Flat','Parking,Water,Electicity,','932','Cumque est amet neq','6666666666','2021-04-19 16:21:43.582053','',1,1),(14,21,'Aut pariatur Volupt','House','Parking,Electicity,','953','Non enim et velit of','8888888888','2021-04-19 16:48:30.588865','',1,1),(15,22,'Dolor harum cupidata','Flat','Water,','444','Libero aute error en','2222222222','2021-04-19 17:11:12.630933','',1,1),(16,21,'Quos labore perspici','Room','Parking,','595','Quisquam excepteur u','5555555555','2021-04-21 11:03:37.029201','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,1),(17,3,'Et vel magnam eius i','House','Water,','200','Nisi harum soluta mi','1111111111','2021-09-11 10:25:14.561650','photo-1588880331179-bc9b93a8cb5e.jpg',1,1),(18,21,'Alias sequi laborum ','Flat','Wifi,Water,','117','Eveniet voluptatum ','2222222222','2021-09-11 10:58:50.018737','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,1),(19,3,'Baneshwor','Flat','Parking,Water,Electicity,','25000','Consequat Eum exerc  is a free online platform for buying and selling Houses, Lands and everything Real Estate','9865225221','2021-09-11 14:15:55.317130','output-onlinepngtools.png',1,1),(20,21,'old baneshwor','House','Wifi,Electicity,','100000',' is a free online platform for buying and selling Houses, Lands and everything Real Estate. We at dalaydai.com','9855031900','2021-09-11 14:15:28.529079','—Pngtree—house quote lettering typography home_5317521.png',1,1),(21,21,'bhaktapur','Room','Wifi,Parking,Water,Electicity,','4000','Dolore aut ipsum do','9867452312','2021-09-11 14:58:55.846516','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,1),(22,21,'Error asperiores rep','House','Water,Electicity,','739','Ipsa ipsum omnis qu','1212121212','2021-09-11 14:29:48.812068','11aside.jpg',1,1),(23,21,'Dolore vitae aperiam','Room','Wifi,Water,','839','Dolorum esse cumque','2323232323','2021-09-11 15:30:45.325312','valley.jpg',1,1),(24,21,'Repellendus Ex moll','Room','Electicity,','669','Consequatur eos ali','5555555555','2021-09-11 15:21:30.677807','d1651a17ce00ef495e0fa38d6271c724.jpg',1,1),(25,21,'Tempor culpa dolor ','Flat','Wifi,Parking,Water,Electicity,','825','Harum ea labore sunt','3333333333','2021-09-11 15:24:41.430977','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,1),(27,3,'Voluptate aute commo','Flat','Parking,Electicity,','279','Commodo sint provide','1111111111','2021-09-11 15:37:51.324796','bg-01.jpg',1,1),(28,3,'Laborum Voluptatem ','Flat','Wifi,Water,Electicity,','247','Delectus reprehende','2222222222','2021-09-21 10:49:33.632034','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,1),(29,19,'Corporis sed et temp','Flat','Wifi,Parking,','385','Excepturi unde in ve','5555555555','2021-09-11 15:58:19.886553','1200px-Hong_Kong_Harbour_Night_2019-06-11.jpg',1,0),(30,19,'Ut minus eligendi te','Flat','Wifi,Parking,Electicity,','782','Est proident offici','7777777777','2021-09-22 03:11:10.221254','room1.jpg',1,1),(31,19,'Qui eos autem labori','Flat','Parking,Electicity,','167','Sint labore lorem t','9999999999','2021-09-11 15:58:26.056387','registration.jpg',1,0),(32,19,'Nesciunt qui sit es','Room','Parking,','557','Porro quia ullam lor','1212121212','2021-09-11 15:58:28.677012','photo-1588880331179-bc9b93a8cb5e.jpg',1,0),(33,24,'Est quam consequatur','Flat','Wifi,Parking,Water,','67','Eveniet debitis ani','9898989898','2021-09-22 03:17:12.888356','d1651a17ce00ef495e0fa38d6271c724.jpg',1,1);
/*!40000 ALTER TABLE `houseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) NOT NULL,
  `role_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'admin','All authority'),(2,'owner','Limited authority'),(3,'customer','Limited authority');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(45) NOT NULL,
  `ur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `ur_id` (`ur_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ur_id`) REFERENCES `user_roles` (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Customer','Rajaram Lamichhane','male','9862354120','raja@gmail.com','raja','laude',3),(3,'Owner','owner','male','9856124514','owner@gmail.com','owner','owner',2),(14,'Owner','sandip chudali','male','9834971666','chudali@gmail.com','sandip','sandip',2),(16,'Customer','Biplav Dahal','male','2345234567','biplav@gmail.com','biplav','biplav',3),(17,'Customer','rajesh lamichhane','male','9869222101','rajesh@gmail.com','rajesh','rajesh',3),(18,'Owner','dinesh','male','7878342312','dinesh@gmail.com','dinesh','dinesh',2),(19,'Customer','John Doe','male','4545454554','customer@gmail.com','customer','customer',3),(21,'Owner','Garrison Ware','female','6666666666','liruw@mailinator.com','raja','raja',2),(22,'Owner','Lewis Cunningham','male','2222222222','meposajo@mailinator.com','bikash','bikash',2),(23,'Customer','Raja','male','9812345670','raja@gmail.com','raja','raja',3),(24,'Owner','Declan Howard','female','9876321234','xowe@mailinator.com','manish','manish',2);
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

-- Dump completed on 2022-01-16 16:33:31
