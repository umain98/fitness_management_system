-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.33-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema fms_db
--

CREATE DATABASE IF NOT EXISTS fms_db;
USE fms_db;

--
-- Definition of table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_section` varchar(100) DEFAULT NULL,
  `gallery_path` varchar(450) DEFAULT NULL,
  `gallery_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`gallery_id`,`gallery_section`,`gallery_path`,`gallery_name`) VALUES 
 (1,'test section ','C:\\Users\\USER\\Documents\\GitHub\\fitness_management_system\\fms\\db_backup','gallery 1 '),
 (2,'test section 1','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 1'),
 (3,'test section 2','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 2'),
 (4,'test section 3','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 3'),
 (5,'test section 4','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 4'),
 (6,'test section 5','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 5'),
 (8,'','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 7'),
 (9,'test section 8','C:UsersUSERDocumentsGitHubfitness_management_systemfmsdb_backup','gallery 8');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;


--
-- Definition of table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(250) DEFAULT NULL,
  `item_category` varchar(200) DEFAULT NULL,
  `item_brand` varchar(200) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT '0.00',
  `item_status` varchar(1) DEFAULT NULL,
  `item_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `log_history`
--

DROP TABLE IF EXISTS `log_history`;
CREATE TABLE `log_history` (
  `log_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_history_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_history_user_id` int(10) unsigned DEFAULT NULL,
  `log_history_user_name` varchar(900) DEFAULT NULL,
  `log_history_detail` varchar(45) DEFAULT NULL,
  `log_history_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`log_history_id`),
  KEY `FK_log_history_1` (`log_history_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_history`
--

/*!40000 ALTER TABLE `log_history` DISABLE KEYS */;
INSERT INTO `log_history` (`log_history_id`,`log_history_date_time`,`log_history_user_id`,`log_history_user_name`,`log_history_detail`,`log_history_status`) VALUES 
 (1,'2021-05-23 10:11:44',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (2,'2021-05-22 10:13:41',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (3,'2021-05-23 10:15:47',1,'User : umi OS : Windows Browser : IE-11.0','umi123@gmail.com','A'),
 (4,'2021-05-22 11:39:59',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (5,'2021-05-22 11:41:16',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (6,'2021-05-21 11:44:44',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (7,'2021-05-20 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (8,'2021-05-20 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (9,'2021-05-20 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (10,'2021-05-20 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (11,'2021-05-19 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (12,'2021-05-23 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (13,'2021-05-18 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (14,'2021-05-28 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (15,'2021-05-23 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A'),
 (16,'2021-05-23 12:13:36',1,'User : umi OS : Windows Browser : Chrome-90.0.4430.212','umi123@gmail.com','A');
/*!40000 ALTER TABLE `log_history` ENABLE KEYS */;


--
-- Definition of table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
CREATE TABLE `memberships` (
  `membership_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_plan_name` varchar(45) DEFAULT NULL,
  `membership_plan_valid_period_month` int(11) DEFAULT NULL,
  `membership_plan_personal_trainer` int(11) DEFAULT NULL,
  `membership_plan_visit_count_month` int(11) DEFAULT NULL,
  `membership_plan_price` decimal(10,2) DEFAULT '0.00',
  `membership_plan_detail` varchar(450) DEFAULT NULL,
  `membership_plan_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`membership_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberships`
--

/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;


--
-- Definition of table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `order_details_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_details_order_id` int(11) unsigned NOT NULL,
  `order_details_item_id` int(10) unsigned DEFAULT NULL,
  `order_details_item_qty` decimal(10,2) DEFAULT NULL,
  `order_details_detail` varchar(450) DEFAULT NULL,
  `order_details_price` decimal(10,2) DEFAULT NULL,
  `order_details_discount_amount` decimal(10,2) DEFAULT NULL,
  `order_details_discounted_price` decimal(10,2) DEFAULT NULL,
  `order_details_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_details_id`),
  KEY `FK_order_details_1` (`order_details_order_id`),
  KEY `FK_order_details_2` (`order_details_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id_string` varchar(45) DEFAULT NULL,
  `order_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_item_qty` int(10) unsigned DEFAULT NULL,
  `order_total_price` decimal(10,2) DEFAULT NULL,
  `order_total_discount` decimal(10,2) DEFAULT NULL,
  `order_delivery_address` varchar(450) DEFAULT NULL,
  `order_user_id` int(10) unsigned DEFAULT NULL,
  `order_user_name` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `order_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_order_1` (`order_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`,`order_id_string`,`order_date_time`,`order_item_qty`,`order_total_price`,`order_total_discount`,`order_delivery_address`,`order_user_id`,`order_user_name`,`order_type`,`order_detail`) VALUES 
 (1,'','2021-05-23 06:23:04',1,'5000.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','P','Serious Mass'),
 (3,'','2021-05-23 08:41:09',1,'13000.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','S','Gold Package'),
 (5,'','2021-05-23 08:41:35',1,'25000.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','S','Platinum Package'),
 (6,'','2021-05-23 09:03:45',1,'15000.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','P','Nitrotech Gold'),
 (7,'','2021-05-23 09:03:56',1,'6500.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','P','Animal Cut'),
 (8,'','2021-05-23 09:04:04',1,'13000.00','0.00','270/17,Royal Garden,Horana',1,'umi123@gmail.com','S','Gold Package');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_type` varchar(450) DEFAULT NULL,
  `reservation_date` varchar(100) DEFAULT NULL,
  `reservation_time` varchar(100) DEFAULT NULL,
  `reservation_user_id` int(11) unsigned DEFAULT NULL,
  `reservation_user_name` varchar(450) DEFAULT NULL,
  `reservation_status` varchar(1) DEFAULT NULL,
  `reservation_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `FK_reservations_1` (`reservation_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` (`reservation_id`,`reservation_type`,`reservation_date`,`reservation_time`,`reservation_user_id`,`reservation_user_name`,`reservation_status`,`reservation_detail`) VALUES 
 (3,NULL,'2021-05-11','23:47',1,'umi123@gmail.com','A',NULL);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;


--
-- Definition of table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_created_by_id` int(11) unsigned DEFAULT NULL,
  `schedule_created_by_name` varchar(450) DEFAULT NULL,
  `schedule_start_date` varchar(100) DEFAULT NULL,
  `schedule_end_date` varchar(100) DEFAULT NULL,
  `schedule_days_per_week` int(11) DEFAULT NULL,
  `schedule_for` varchar(450) DEFAULT NULL,
  `schedule_special_note` varchar(450) DEFAULT NULL,
  `schedule_status` varchar(1) DEFAULT NULL,
  `schedule_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `FK_schedules_1` (`schedule_created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;


--
-- Definition of table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE `trainers` (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT,
  `trainer_name` varchar(450) DEFAULT NULL,
  `trainer_email` varchar(450) DEFAULT NULL,
  `trainer_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trainer_contract_period_months` int(11) DEFAULT NULL,
  `trainer_address` varchar(450) DEFAULT NULL,
  `trainer_contact` varchar(45) DEFAULT NULL,
  `trainer_detail` varchar(450) DEFAULT NULL,
  `trainer_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainers`
--

/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(450) DEFAULT NULL,
  `user_last_name` varchar(450) DEFAULT NULL,
  `user_contact` varchar(45) DEFAULT NULL,
  `user_email` varchar(450) DEFAULT NULL,
  `user_address` varchar(450) DEFAULT NULL,
  `user_reg_date` timestamp NULL DEFAULT NULL,
  `user_date_of_birth` date DEFAULT NULL,
  `user_height_cm` decimal(10,2) DEFAULT NULL,
  `user_weight_kg` decimal(10,2) DEFAULT NULL,
  `user_status` varchar(1) DEFAULT NULL,
  `user_detail` varchar(450) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`,`user_first_name`,`user_last_name`,`user_contact`,`user_email`,`user_address`,`user_reg_date`,`user_date_of_birth`,`user_height_cm`,`user_weight_kg`,`user_status`,`user_detail`,`user_password`) VALUES 
 (1,'umi','wilfred','773069546','umi123@gmail.com','270/17,Royal Garden,Horana',NULL,'2021-04-28','160.00','56.00','A','fgdfgdfgdf','umain123'),
 (2,'lakindu','liyanage','772065764','laki123@gmail.com','20/J,Graceland,Ingiriya',NULL,'2021-05-26','162.00','67.00','A','dgfdgdfgdfgdrfg','laki12345');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
