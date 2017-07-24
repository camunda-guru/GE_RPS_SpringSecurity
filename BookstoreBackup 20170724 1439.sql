-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bookstore
--

CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;

--
-- Definition of table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Bookid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BookName` varchar(45) NOT NULL,
  `Cost` varchar(45) NOT NULL,
  `BookType` varchar(45) NOT NULL,
  PRIMARY KEY (`Bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`Bookid`,`BookName`,`Cost`,`BookType`) VALUES 
 (1,'Mastering Spring MVC','450','Computer'),
 (2,'Java J2EE','350','Computer'),
 (3,'Spiderman','200','Comics'),
 (4,'Ambuli Mama','20','Comics'),
 (5,'Rani','10','Comics'),
 (6,'Python Programming','325','Computer'),
 (7,'C# Programming','225','Computer'),
 (8,'Civil Service Exam','330','Computer'),
 (9,'jumbles','100','Comics'),
 (10,'General','120','Comics'),
 (11,'dsfsd','10','Comics'),
 (12,'Hearing Law','345','Comics'),
 (13,'Geno','134','Comics'),
 (14,'Mastring Perl Script','450','Computer'),
 (15,'Sencha Framework 4','550','Computer'),
 (16,'General Strories','-120','Comics'),
 (17,'Jokes','0','Comics'),
 (18,'Galaxy','100','Comics'),
 (19,'Galaxy WAR','11','Comics'),
 (20,'General Stories','11','Comics'),
 (21,'Mastering Angular','6789','Computer'),
 (22,'Javascript','456','Computer'),
 (23,'AngularSpring','3456','Computer'),
 (24,'Jython','2000','Computer'),
 (25,'Spring Security','35654','Computer');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`,`firstname`,`lastname`,`telephone`,`email`,`created`) VALUES 
 (2,'Parameswari','BalaSubramaniam','9952032862','eswaribala@rediffmail.com','2013-11-16 00:00:59'),
 (3,'Balasubramaniam','Manickmuthu','9952032862','Balamanick@yahoo.com','2013-11-16 00:09:07');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `USER_ROLE_ID` int(10) unsigned NOT NULL,
  `USER_ID` int(10) unsigned NOT NULL,
  `AUTHORITY` varchar(45) NOT NULL,
  PRIMARY KEY (`USER_ROLE_ID`),
  KEY `FK_user_roles` (`USER_ID`),
  CONSTRAINT `FK_user_roles` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`USER_ROLE_ID`,`USER_ID`,`AUTHORITY`) VALUES 
 (1,100,'ROLE_USER'),
 (2,200,'ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Definition of table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
CREATE TABLE `useraccount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccount`
--

/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` (`id`,`firstname`,`lastname`,`password`,`mail`,`telephone`) VALUES 
 (1,'Parameswari','Bala','Vignesh','eswaribala@rediffmail.com','9952032862'),
 (2,'Balasubramaniam','Manickmuthu','vignesh','eswaribala@rediffmail.com','9952032862'),
 (3,'Vignesh Manickam','Bala','eswari','vignesh@gmail.com','9952032862'),
 (5,'Samuvel','Joseph','sam','sam@accenture.com','82437407047'),
 (6,'Rajini','SSN','^76525bvHGq','rajini@rediff.com','1234567890'),
 (7,'tamilarasan','vedha','^76525bvHGq','tamil@red.com','0123456789'),
 (8,'Sachin','Tendulkar','^76525bvHGq','sachin@cricket.com','0123456789'),
 (9,'Murali','Vijay','^76525bvHGq','murali@email.com','012345676'),
 (10,'Vivek','Kumar','^76525bvHGq','vivek@email.com','0123456789'),
 (11,'Dilip','Kumar','Dilip','dilip@suntv.com','0123456789'),
 (12,'eswari','bala','vignesh','eswa@gmail.com','0123456789'),
 (13,'Ramesh','Gupta','ramesh','ramesh@gmail.com','0123456789'),
 (14,'VigneshM','Bala','viki','viki@gmail.com','0123456789'),
 (15,'Sowmya','Jain','^76525bvHGq','sow@gmail.com','1234567889'),
 (16,'Jaya','J','jaya123','jaya@tn.com','1234567890');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USER_ID` int(10) unsigned NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`USER_ID`,`USERNAME`,`PASSWORD`,`ENABLED`) VALUES 
 (100,'mkyong','123456',1),
 (200,'eswari','vignesh',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
