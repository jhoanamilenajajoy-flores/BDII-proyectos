/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - primer-parcial
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`primer-parcial` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `primer-parcial`;

/*Table structure for table `academicperiodgroups` */

DROP TABLE IF EXISTS `academicperiodgroups`;

CREATE TABLE `academicperiodgroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `degreeId` int(10) DEFAULT NULL,
  `groupId` int(10) DEFAULT NULL,
  `quota` int(10) DEFAULT NULL,
  `journeyId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `degreeId` (`degreeId`),
  KEY `groupId` (`groupId`),
  KEY `journeyId` (`journeyId`),
  CONSTRAINT `academicperiodgroups_ibfk_1` FOREIGN KEY (`degreeId`) REFERENCES `degrees` (`id`),
  CONSTRAINT `academicperiodgroups_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`),
  CONSTRAINT `academicperiodgroups_ibfk_3` FOREIGN KEY (`journeyId`) REFERENCES `journeys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `academicperiodgroups` */

/*Table structure for table `degrees` */

DROP TABLE IF EXISTS `degrees`;

CREATE TABLE `degrees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `levelId` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `levelId` (`levelId`),
  CONSTRAINT `degrees_ibfk_1` FOREIGN KEY (`levelId`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `degrees` */

insert  into `degrees`(`id`,`createdAt`,`updatedAt`,`levelId`,`name`,`abbreviation`) values 
(1,NULL,NULL,NULL,'Kínder',NULL),
(2,NULL,NULL,NULL,'Preparatoria',NULL),
(3,NULL,NULL,NULL,'Primero Primaria',NULL),
(4,NULL,NULL,NULL,'Segundo Primaria',NULL),
(5,NULL,NULL,NULL,'Tercero Primaria',NULL),
(6,NULL,NULL,NULL,'Cuarto Primaria',NULL),
(7,NULL,NULL,NULL,'Quinto Primaria',NULL),
(8,NULL,NULL,NULL,'Sexto Primaria',NULL),
(9,NULL,NULL,NULL,'Primero Básico',NULL),
(10,NULL,NULL,NULL,'Segundo Básico',NULL),
(11,NULL,NULL,NULL,NULL,NULL),
(12,NULL,NULL,NULL,NULL,NULL),
(13,NULL,NULL,NULL,NULL,NULL),
(14,NULL,NULL,NULL,NULL,NULL),
(15,NULL,NULL,NULL,NULL,NULL),
(16,NULL,NULL,NULL,NULL,NULL),
(17,NULL,NULL,NULL,NULL,NULL),
(18,NULL,NULL,NULL,NULL,NULL),
(19,NULL,NULL,NULL,NULL,NULL),
(20,NULL,NULL,NULL,NULL,NULL),
(21,NULL,NULL,NULL,NULL,NULL),
(22,NULL,NULL,NULL,NULL,NULL),
(23,NULL,NULL,NULL,NULL,NULL),
(24,NULL,NULL,NULL,NULL,NULL),
(25,NULL,NULL,NULL,NULL,NULL),
(26,NULL,NULL,NULL,NULL,NULL),
(27,NULL,NULL,NULL,NULL,NULL),
(28,NULL,NULL,NULL,NULL,NULL),
(29,NULL,NULL,NULL,NULL,NULL),
(30,NULL,NULL,NULL,NULL,NULL),
(31,NULL,NULL,NULL,NULL,NULL),
(32,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createdAt` time DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

/*Table structure for table `hoja2$` */

DROP TABLE IF EXISTS `hoja2$`;

CREATE TABLE `hoja2$` (
  `id` double DEFAULT NULL,
  `degreeId` double DEFAULT NULL,
  `groupId` double DEFAULT NULL,
  `quota` double DEFAULT NULL,
  `journeyId` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hoja2$` */

insert  into `hoja2$`(`id`,`degreeId`,`groupId`,`quota`,`journeyId`) values 
(1,1,1,1,1),
(2,2,2,2,2),
(3,3,3,3,3),
(4,4,4,4,4),
(5,5,5,5,5),
(6,6,6,6,6),
(7,7,7,7,7),
(8,8,8,8,8),
(9,9,9,9,9),
(10,10,10,10,10),
(11,11,11,11,11),
(12,12,12,12,12),
(13,13,13,13,13),
(14,14,14,14,14),
(15,15,15,15,15),
(16,16,16,16,16),
(17,17,17,17,17),
(18,18,18,18,18),
(19,19,19,19,19),
(20,20,20,20,20),
(21,21,21,21,21),
(22,22,22,22,22),
(23,23,23,23,23),
(24,24,24,24,24),
(25,25,25,25,25),
(26,26,26,26,26),
(27,27,27,27,27),
(28,28,28,28,28),
(29,29,29,29,29),
(30,30,30,30,30),
(31,31,31,31,31),
(32,32,32,32,32),
(33,33,33,33,33),
(34,34,34,34,34),
(35,35,35,35,35),
(36,36,36,36,36),
(37,37,37,37,37),
(38,38,38,38,38),
(39,39,39,39,39),
(40,40,40,40,40),
(41,41,41,41,41),
(42,42,42,42,42),
(43,43,43,43,43),
(44,44,44,44,44),
(45,45,45,45,45),
(46,46,46,46,46),
(47,47,47,47,47),
(48,48,48,48,48),
(49,49,49,49,49),
(50,50,50,50,50),
(51,51,51,51,51),
(52,52,52,52,52),
(53,53,53,53,53),
(54,54,54,54,54),
(55,55,55,55,55),
(56,56,56,56,56),
(57,57,57,57,57),
(58,58,58,58,58),
(59,59,59,59,59),
(60,60,60,60,60),
(61,61,61,61,61),
(62,62,62,62,62),
(63,63,63,63,63),
(64,64,64,64,64),
(65,65,65,65,65),
(66,66,66,66,66),
(67,67,67,67,67),
(68,68,68,68,68),
(69,69,69,69,69),
(70,70,70,70,70),
(71,71,71,71,71),
(72,72,72,72,72);

/*Table structure for table `journeys` */

DROP TABLE IF EXISTS `journeys`;

CREATE TABLE `journeys` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createdAt` time DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

/*Data for the table `journeys` */

insert  into `journeys`(`id`,`createdAt`,`updatedAt`,`name`,`abbreviation`) values 
(1,NULL,NULL,'MATUTINA',NULL);

/*Table structure for table `levels` */

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `levels` */

/*Table structure for table `matriculates` */

DROP TABLE IF EXISTS `matriculates`;

CREATE TABLE `matriculates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `academicPeriodGroupId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academicPeriodGroupId` (`academicPeriodGroupId`),
  CONSTRAINT `matriculates_ibfk_1` FOREIGN KEY (`academicPeriodGroupId`) REFERENCES `academicperiodgroups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `matriculates` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
