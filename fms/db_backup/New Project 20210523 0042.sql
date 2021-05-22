-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.32-log


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
  `log_history_user_name` varchar(450) DEFAULT NULL,
  `log_history_detail` varchar(45) DEFAULT NULL,
  `log_history_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`log_history_id`),
  KEY `FK_log_history_1` (`log_history_user_id`),
  CONSTRAINT `FK_log_history_1` FOREIGN KEY (`log_history_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_history`
--

/*!40000 ALTER TABLE `log_history` DISABLE KEYS */;
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
-- Definition of table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id_string` varchar(45) DEFAULT NULL,
  `order_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_item_qty` int(10) unsigned DEFAULT NULL,
  `order_total_price` decimal(10,2) DEFAULT NULL,
  `order_total_discount` decimal(10,2) DEFAULT NULL,
  `order_delivery_address` varchar(450) DEFAULT NULL,
  `order_user_id` int(10) unsigned DEFAULT NULL,
  `order_user_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_order_1` (`order_user_id`),
  CONSTRAINT `FK_order_1` FOREIGN KEY (`order_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


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
  KEY `FK_order_details_2` (`order_details_item_id`),
  CONSTRAINT `FK_order_details_1` FOREIGN KEY (`order_details_order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FK_order_details_2` FOREIGN KEY (`order_details_item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;


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
  KEY `FK_reservations_1` (`reservation_user_id`),
  CONSTRAINT `FK_reservations_1` FOREIGN KEY (`reservation_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
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
  KEY `FK_schedules_1` (`schedule_created_by_id`),
  CONSTRAINT `FK_schedules_1` FOREIGN KEY (`schedule_created_by_id`) REFERENCES `users` (`user_id`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
