/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.4.22-MariaDB : Database - php-login-ci4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php-login-ci4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `php-login-ci4`;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `fullname` varchar(35) DEFAULT NULL,
  `user_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`id`,`username`,`password`,`fullname`,`user_created`) values (1,'egit','$2y$10$Ib22fM2/MbF8O40rZKbPVu908AVS6VNX5eRrdxD0u.1LVqDh.ZTcW','Egit Heri Wicaksono',NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
