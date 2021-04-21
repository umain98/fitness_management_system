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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;


--
-- Definition of table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
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
-- Definition of table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_type` varchar(450) DEFAULT NULL,
  `reservation_date` timestamp NULL DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `reservation_user_id` int(11) DEFAULT NULL,
  `reservation_user_name` varchar(450) DEFAULT NULL,
  `reservation_status` varchar(1) DEFAULT NULL,
  `reservation_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
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
  `schedule_created_by_id` int(11) DEFAULT NULL,
  `schedule_created_by_name` varchar(450) DEFAULT NULL,
  `schedule_start_date` timestamp NULL DEFAULT NULL,
  `schedule_end_date` timestamp NULL DEFAULT NULL,
  `schedule_days_per_week` int(11) DEFAULT NULL,
  `schedule_for` varchar(450) DEFAULT NULL,
  `schedule_special_note` varchar(450) DEFAULT NULL,
  `schedule_status` varchar(1) DEFAULT NULL,
  `schedule_detail` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
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
  `trainer_reg_date` timestamp NULL DEFAULT NULL,
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
  `user_id` int(10) NOT NULL,
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
