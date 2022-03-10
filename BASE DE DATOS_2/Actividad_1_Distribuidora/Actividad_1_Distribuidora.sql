/*
SQLyog Ultimate v13.1.1 (32 bit)
MySQL - 10.4.21-MariaDB : Database - multinacional-gestion
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`multinacional-gestion` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `multinacional-gestion`;

/*Table structure for table `ciudades` */

DROP TABLE IF EXISTS `ciudades`;

CREATE TABLE `ciudades` (
  `id_ciudades` int(11) NOT NULL,
  `id_departamentos` int(11) NOT NULL,
  `detalle_ciudades` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ciudades`),
  KEY `id_departamentos` (`id_departamentos`),
  CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`id_departamentos`) REFERENCES `departamentos` (`id_departamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ciudades` */

/*Table structure for table `clientes_distribuidora` */

DROP TABLE IF EXISTS `clientes_distribuidora`;

CREATE TABLE `clientes_distribuidora` (
  `id_clientes_distribuidora` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_clientes_distribuidora` varchar(255) NOT NULL,
  `nit_clientes_distribuidora` varchar(255) NOT NULL,
  `nombre_representante` varchar(255) NOT NULL,
  `telefono_principal` varchar(255) NOT NULL,
  PRIMARY KEY (`id_clientes_distribuidora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `clientes_distribuidora` */

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id_departamentos` int(11) NOT NULL AUTO_INCREMENT,
  `id_paises` int(11) NOT NULL,
  `id_encargados_sucursales_clientes_distribuidora` int(11) NOT NULL,
  `detalle_departamentos` varchar(255) NOT NULL,
  PRIMARY KEY (`id_departamentos`),
  KEY `id_paises` (`id_paises`),
  KEY `id_encargados_sucursales_clientes_distribuidora` (`id_encargados_sucursales_clientes_distribuidora`),
  CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`id_paises`) REFERENCES `paises` (`id_paises`),
  CONSTRAINT `departamentos_ibfk_2` FOREIGN KEY (`id_encargados_sucursales_clientes_distribuidora`) REFERENCES `encargados_sucursales_clientes_distribuidora` (`id_encargados_sucursales_clientes_distribuidora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `departamentos` */

/*Table structure for table `encargados_departamento` */

DROP TABLE IF EXISTS `encargados_departamento`;

CREATE TABLE `encargados_departamento` (
  `id_encargados_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamentos` int(11) NOT NULL,
  PRIMARY KEY (`id_encargados_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `encargados_departamento` */

/*Table structure for table `encargados_sucursales_clientes_distribuidora` */

DROP TABLE IF EXISTS `encargados_sucursales_clientes_distribuidora`;

CREATE TABLE `encargados_sucursales_clientes_distribuidora` (
  `id_encargados_sucursales_clientes_distribuidora` int(11) NOT NULL AUTO_INCREMENT,
  `nombres_encargados_sucursales_clientes_distribuidora` varchar(255) NOT NULL,
  PRIMARY KEY (`id_encargados_sucursales_clientes_distribuidora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `encargados_sucursales_clientes_distribuidora` */

/*Table structure for table `paises` */

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id_paises` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_paises` varchar(255) NOT NULL,
  PRIMARY KEY (`id_paises`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `paises` */

/*Table structure for table `sucursales_clientes_distribuidora` */

DROP TABLE IF EXISTS `sucursales_clientes_distribuidora`;

CREATE TABLE `sucursales_clientes_distribuidora` (
  `id_sucursales_clientes_distribuidora` int(11) NOT NULL AUTO_INCREMENT,
  `id_clientes_distribuidora` int(11) NOT NULL,
  `id_ciudades` int(11) NOT NULL,
  `numero_contacto` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_sucursales_clientes_distribuidora`),
  KEY `id_ciudades` (`id_ciudades`),
  KEY `id_clientes_distribuidora` (`id_clientes_distribuidora`),
  CONSTRAINT `sucursales_clientes_distribuidora_ibfk_1` FOREIGN KEY (`id_ciudades`) REFERENCES `ciudades` (`id_ciudades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sucursales_clientes_distribuidora` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
