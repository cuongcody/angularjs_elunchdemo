-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2015 at 03:24 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elunch_portal_lastest`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_point`
--

CREATE TABLE IF NOT EXISTS `access_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssid` varchar(255) NOT NULL,
  `bssid` varchar(255) NOT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `selected` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `access_point`
--

INSERT INTO `access_point` (`id`, `ssid`, `bssid`, `floor_id`, `selected`, `created_at`, `updated_at`) VALUES
(1, 'EnclaveODC1', 'B8:A3:86:62:CF:7C', 1, 0, '0000-00-00 00:00:00', '2015-10-13 03:30:01'),
(2, 'EnclaveODC2', 'C8:D3:A3:5D:A9:83', 2, 1, '0000-00-00 00:00:00', '2015-11-10 12:48:55'),
(3, 'EnclaveODC3', 'C8:D3:A3:5D:A9:83', 3, 1, '0000-00-00 00:00:00', '2015-11-06 08:42:15'),
(4, 'EnclaveODC4', 'C8:D3:A3:5D:A9:83', 4, 1, '0000-00-00 00:00:00', '2015-11-06 08:42:30'),
(5, 'EnclaveODC5', 'E8:CC:18:41:38:BB', 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_messages`
--

CREATE TABLE IF NOT EXISTS `admin_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `meal_date` date NOT NULL,
  `table` int(11) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rau', 'Rau', '2015-11-10 11:20:20', '2015-11-10 11:20:20'),
(2, 'Cá', 'Cá', '2015-11-10 11:21:07', '2015-11-10 11:21:07'),
(3, 'Thịt', 'Thịt', '2015-11-10 11:21:18', '2015-11-10 11:21:18'),
(4, 'Súp', 'Súp', '2015-11-10 11:21:27', '0000-00-00 00:00:00'),
(5, 'Tráng miệng', 'Tráng miệng', '2015-11-10 11:21:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dish_id` int(11) DEFAULT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meal_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đậu bắp luộc', 'Đậu bắp luộc', 1, '2015-11-10 12:19:09', '0000-00-00 00:00:00'),
(2, 'Thịt vịt luộc', 'Thịt vịt luộc', 3, '2015-11-10 12:19:34', '0000-00-00 00:00:00'),
(3, 'Nhãn', 'Nhãn', 5, '2015-11-10 12:19:59', '0000-00-00 00:00:00'),
(4, 'Cá trích nướng', 'Cá trích nướng', 2, '2015-11-10 12:20:30', '0000-00-00 00:00:00'),
(5, 'Rau khoai luộc', 'Rau khoai luộc', 1, '2015-11-10 12:20:59', '0000-00-00 00:00:00'),
(6, 'Mực xào hành ngò', 'Mực xào hành ngò', 3, '2015-11-10 12:21:46', '0000-00-00 00:00:00'),
(7, 'Canh tôm nấu với su hào', 'Canh tôm nấu với su hào', 4, '2015-11-10 12:22:49', '0000-00-00 00:00:00'),
(8, 'Trứng rán', 'Trứng rán', 3, '2015-11-10 12:23:42', '0000-00-00 00:00:00'),
(9, 'Đậu cove xào', 'Đậu cove xào', 1, '2015-11-10 12:25:06', '0000-00-00 00:00:00'),
(10, 'Thịt xào', 'Thịt xào', 3, '2015-11-10 12:25:40', '0000-00-00 00:00:00'),
(11, 'Canh chua', 'Canh chua', 4, '2015-11-10 12:26:30', '0000-00-00 00:00:00'),
(12, 'Cá kho', 'Cá kho', 2, '2015-11-10 12:27:05', '0000-00-00 00:00:00'),
(13, 'Chuối lùn', 'Chuối lùn', 5, '2015-11-10 12:27:30', '0000-00-00 00:00:00'),
(14, 'Đậu sốt cà chua', 'Đậu sốt cà chua', 1, '2015-11-10 12:28:18', '0000-00-00 00:00:00'),
(15, 'Canh hến', 'Canh hến', 4, '2015-11-10 12:29:40', '0000-00-00 00:00:00'),
(16, 'Dưa chua', 'Dưa chua', 1, '2015-11-10 12:30:20', '0000-00-00 00:00:00'),
(17, 'Thịt gà xào', 'Thịt gà xào', 3, '2015-11-10 12:31:17', '0000-00-00 00:00:00'),
(18, 'Cá kho', 'Cá kho', 2, '2015-11-10 12:31:48', '0000-00-00 00:00:00'),
(19, 'Su luộc', 'Su luộc', 1, '2015-11-10 12:32:09', '0000-00-00 00:00:00'),
(20, 'Canh rau ngót', 'Canh rau ngót', 4, '2015-11-10 12:32:49', '0000-00-00 00:00:00'),
(21, 'Canh cải', 'Canh cải', 4, '2015-11-10 12:33:23', '0000-00-00 00:00:00'),
(22, 'Cá kho dứa', 'Cá kho dứa', 2, '2015-11-10 12:33:53', '0000-00-00 00:00:00'),
(23, 'Tôm xào', 'Tôm xào', 3, '2015-11-10 12:34:25', '0000-00-00 00:00:00'),
(24, 'Cá ngừ kho dứa', 'Cá ngừ kho dứa', 2, '2015-11-10 12:35:09', '0000-00-00 00:00:00'),
(25, 'Đậu cove xào miến', 'Đậu cove xào miến', 1, '2015-11-10 12:35:46', '0000-00-00 00:00:00'),
(26, 'Cá rán', 'Cá rán', 2, '2015-11-10 12:36:18', '0000-00-00 00:00:00'),
(27, 'Canh bầu', 'Canh bầu', 4, '2015-11-10 12:37:11', '0000-00-00 00:00:00'),
(28, 'Khổ qua xào trứng', 'Khổ qua xào trứng', 1, '2015-11-10 12:37:57', '0000-00-00 00:00:00'),
(29, 'Thịt xào mè', 'Thịt xào mè', 3, '2015-11-10 12:38:26', '0000-00-00 00:00:00'),
(30, 'Rau muống luộc', 'Rau muống luộc', 1, '2015-11-10 12:38:58', '0000-00-00 00:00:00'),
(31, 'Cá kho', 'Cá kho', 2, '2015-11-10 12:39:17', '0000-00-00 00:00:00'),
(32, 'Ram', 'Ram', 3, '2015-11-10 12:39:45', '0000-00-00 00:00:00'),
(33, 'Súp lơ xào', 'Súp lơ xào', 1, '2015-11-10 12:40:16', '0000-00-00 00:00:00'),
(34, 'Rau cải luộc', 'Rau cải luộc', 1, '2015-11-10 12:40:42', '0000-00-00 00:00:00'),
(35, 'Cá ngừ sốt cà chua', 'Cá ngừ sốt cà chua', 2, '2015-11-10 12:41:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dishes_menus`
--

CREATE TABLE IF NOT EXISTS `dishes_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `dishes_menus`
--

INSERT INTO `dishes_menus` (`id`, `dish_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 12, 1),
(3, 2, 1),
(4, 7, 1),
(5, 3, 1),
(6, 5, 2),
(7, 22, 2),
(8, 6, 2),
(9, 11, 2),
(10, 13, 2),
(11, 14, 3),
(12, 26, 3),
(13, 17, 3),
(14, 27, 3),
(15, 3, 3),
(16, 33, 4),
(17, 35, 4),
(18, 23, 4),
(19, 15, 4),
(20, 3, 4),
(21, 33, 5),
(22, 4, 5),
(23, 32, 5),
(24, 20, 5),
(25, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE IF NOT EXISTS `floors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Floor 1', 'Floor 1', '2015-08-20 10:12:16', '0000-00-00 00:00:00'),
(2, 'Floor 2', 'Floor 2', '2015-08-25 03:10:51', '0000-00-00 00:00:00'),
(3, 'Floor 3', 'Floor 3', '2015-08-25 03:10:51', '0000-00-00 00:00:00'),
(4, 'Floor 4', 'Floor 4', '2015-08-25 03:10:51', '0000-00-00 00:00:00'),
(5, 'Floor 5', 'Floor 5', '2015-10-22 08:40:28', '2015-10-22 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE IF NOT EXISTS `meals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meal_date` date NOT NULL,
  `for_vegans` tinyint(4) NOT NULL,
  `preordered_meals` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `meals_log`
--

CREATE TABLE IF NOT EXISTS `meals_log` (
  `meal_date` date NOT NULL,
  `tracking_log` text NOT NULL,
  `actual_meals` int(11) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Menu 1', 'Menu 1', '2015-11-10 12:42:10', '0000-00-00 00:00:00'),
(2, 'Menu 2', 'Menu 2', '2015-11-10 12:42:36', '0000-00-00 00:00:00'),
(3, 'Menu 3', 'Menu 3', '2015-11-10 12:43:02', '0000-00-00 00:00:00'),
(4, 'Menu 4', 'Menu 4', '2015-11-10 12:43:27', '0000-00-00 00:00:00'),
(5, 'Menu 5', 'Menu 5', '2015-11-10 12:44:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `dish_id` int(11) DEFAULT NULL,
  `image_file_name` text CHARACTER SET utf8 NOT NULL,
  `image_content_type` text CHARACTER SET utf8 NOT NULL,
  `image_file_size` int(11) NOT NULL,
  `image_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `image`, `description`, `dish_id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `created_at`, `updated_at`) VALUES
(1, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1073.JPG', 'DSC_1073.JPG', 1, 'DSC_1073.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1076.JPG', 'DSC_1076.JPG', 2, 'DSC_1076.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1065.JPG', 'DSC_1065.JPG', 3, 'DSC_1065.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1063.JPG', 'DSC_1063.JPG', 4, 'DSC_1063.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1059.JPG', 'DSC_1059.JPG', 5, 'DSC_1059.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1057.JPG', 'DSC_1057.JPG', 6, 'DSC_1057.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1043.JPG', 'DSC_1043.JPG', 7, 'DSC_1043.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1028.JPG', 'DSC_1028.JPG', 8, 'DSC_1028.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1026.JPG', 'DSC_1026.JPG', 9, 'DSC_1026.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1023.JPG', 'DSC_1023.JPG', 10, 'DSC_1023.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1018.JPG', 'DSC_1018.JPG', 11, 'DSC_1018.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1012.JPG', 'DSC_1012.JPG', 12, 'DSC_1012.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1011.JPG', 'DSC_1011.JPG', 13, 'DSC_1011.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1008.JPG', 'DSC_1008.JPG', 14, 'DSC_1008.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_1002.JPG', 'DSC_1002.JPG', 15, 'DSC_1002.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0995.JPG', 'DSC_0995.JPG', 16, 'DSC_0995.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0986.JPG', 'DSC_0986.JPG', 17, 'DSC_0986.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0977.JPG', 'DSC_0977.JPG', 18, 'DSC_0977.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0972.JPG', 'DSC_0972.JPG', 19, 'DSC_0972.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0966.JPG', 'DSC_0966.JPG', 20, 'DSC_0966.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0957.JPG', 'DSC_0957.JPG', 21, 'DSC_0957.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0955.JPG', 'DSC_0955.JPG', 22, 'DSC_0955.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0950.JPG', 'DSC_0950.JPG', 23, 'DSC_0950.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0921.JPG', 'DSC_0921.JPG', 24, 'DSC_0921.JPG', '', 0, '2015-11-11 02:58:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0883.JPG', 'DSC_0883.JPG', 25, 'DSC_0883.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0898.JPG', 'DSC_0898.JPG', 26, 'DSC_0898.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0875.JPG', 'DSC_0875.JPG', 27, 'DSC_0875.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0832.JPG', 'DSC_0832.JPG', 28, 'DSC_0832.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0761.JPG', 'DSC_0761.JPG', 29, 'DSC_0761.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0007.JPG', 'DSC_0007.JPG', 30, 'DSC_0007.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0013.JPG', 'DSC_0013.JPG', 31, 'DSC_0013.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0021.JPG', 'DSC_0021.JPG', 32, 'DSC_0021.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0042.JPG', 'DSC_0042.JPG', 33, 'DSC_0042.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0056.JPG', 'DSC_0056.JPG', 34, 'DSC_0056.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'http://113.160.225.76:8989/elunch/assets/images/dishes/DSC_0089.JPG', 'DSC_0089.JPG', 35, 'DSC_0089.JPG', '', 0, '2015-11-11 02:58:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reply_messages`
--

CREATE TABLE IF NOT EXISTS `reply_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `message_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type_messages` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2581 ;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE IF NOT EXISTS `shifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `description`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, '1', 'Shift 1', '11:00:00', '11:30:00', '2015-11-11 08:26:40', '2015-11-11 08:26:40'),
(2, '2', 'Shift 2', '11:31:00', '12:00:00', '2015-11-11 08:26:56', '2015-11-11 08:26:56'),
(3, '3', 'Shift 3', '12:01:00', '12:30:00', '2015-11-11 08:28:17', '2015-11-11 08:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `status_user`
--

CREATE TABLE IF NOT EXISTS `status_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `status_user`
--

INSERT INTO `status_user` (`id`, `status`) VALUES
(1, 'attend'),
(2, 'absent'),
(3, 'late');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `for_vegans` tinyint(1) NOT NULL DEFAULT '0',
  `seats` int(11) NOT NULL,
  `available_seats` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `description`, `for_vegans`, `seats`, `available_seats`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, '1.1', 'Table 1.1', 0, 7, 0, 1, '2015-11-11 06:45:14', '0000-00-00 00:00:00'),
(2, '1.2', 'Table 1.2', 0, 7, 0, 1, '2015-11-11 06:45:55', '0000-00-00 00:00:00'),
(3, '1.3', 'Table 1.3', 0, 7, 0, 1, '2015-11-11 06:46:06', '0000-00-00 00:00:00'),
(4, '2.1', 'Table 2.1', 0, 7, 0, 2, '2015-11-11 06:46:16', '0000-00-00 00:00:00'),
(5, '2.2', 'Table 2.2', 0, 7, 0, 2, '2015-11-11 06:46:35', '0000-00-00 00:00:00'),
(6, '2.3', 'Table 2.3', 0, 7, 0, 2, '2015-11-11 06:47:02', '0000-00-00 00:00:00'),
(7, '2.4', 'Table 2.4', 0, 7, 0, 2, '2015-11-11 06:47:31', '0000-00-00 00:00:00'),
(8, '2.5', 'Table 2.5', 0, 7, 0, 2, '2015-11-11 06:47:42', '0000-00-00 00:00:00'),
(9, '2.6', 'Table 2.6', 0, 7, 0, 2, '2015-11-11 06:48:09', '0000-00-00 00:00:00'),
(10, '2.7', 'Table 2.7', 1, 7, 0, 2, '2015-11-11 06:48:18', '0000-00-00 00:00:00'),
(11, '2.8', 'Table 2.8', 1, 7, 0, 2, '2015-11-11 06:48:53', '0000-00-00 00:00:00'),
(12, '2.9', 'Table 2.9', 1, 7, 0, 2, '2015-11-11 06:49:29', '0000-00-00 00:00:00'),
(13, '3.1', 'Table 3.1', 0, 7, 0, 3, '2015-11-11 06:49:50', '0000-00-00 00:00:00'),
(14, '3.2', 'Table 3.2', 0, 7, 0, 3, '2015-11-11 06:50:23', '0000-00-00 00:00:00'),
(15, '3.3', 'Table 3.3', 0, 7, 0, 3, '2015-11-11 06:50:40', '0000-00-00 00:00:00'),
(16, '3.4', 'Table 3.4', 0, 7, 0, 3, '2015-11-11 06:50:58', '0000-00-00 00:00:00'),
(17, '3.5', 'Table 3.5', 0, 7, 0, 3, '2015-11-11 06:51:18', '0000-00-00 00:00:00'),
(18, '3.6', 'Table 3.6', 0, 7, 0, 3, '2015-11-11 06:51:35', '0000-00-00 00:00:00'),
(19, '3.7', 'Table 3.7', 0, 7, 0, 3, '2015-11-11 06:51:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tables_users`
--

CREATE TABLE IF NOT EXISTS `tables_users` (
  `table_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vegan_day` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_users`
--

CREATE TABLE IF NOT EXISTS `tracking_users` (
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `manually_set` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracking_users`
--

INSERT INTO `tracking_users` (`user_id`, `status_id`, `manually_set`, `created_at`, `updated_at`) VALUES
(85, 2, 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02'),
(86, 2, 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02'),
(87, 2, 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02'),
(88, 2, 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56'),
(89, 2, 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56'),
(90, 2, 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56'),
(91, 2, 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41'),
(92, 2, 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41'),
(93, 2, 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41'),
(94, 2, 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41'),
(95, 2, 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42'),
(96, 2, 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42'),
(97, 2, 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42'),
(98, 2, 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42'),
(99, 2, 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42'),
(100, 2, 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12'),
(101, 2, 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12'),
(102, 2, 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12'),
(103, 2, 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12'),
(104, 2, 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12'),
(105, 2, 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13'),
(106, 2, 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13'),
(107, 2, 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13'),
(108, 2, 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13'),
(109, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(110, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(111, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(112, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(113, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(114, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(115, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(116, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(117, 2, 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09'),
(118, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(119, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(120, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(121, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(122, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(123, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(124, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(125, 2, 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05'),
(126, 2, 0, '2015-11-09 08:56:06', '2015-11-11 07:12:55'),
(127, 2, 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06'),
(128, 2, 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06'),
(129, 2, 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06'),
(130, 2, 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06'),
(131, 2, 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06'),
(132, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(133, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(134, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(135, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(136, 2, 1, '2015-11-09 09:03:19', '2015-11-11 06:59:42'),
(137, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(138, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(139, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(140, 2, 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19'),
(141, 2, 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20'),
(142, 2, 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20'),
(143, 2, 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20'),
(144, 2, 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20'),
(145, 2, 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20'),
(146, 2, 0, '2015-11-09 09:08:56', '2015-11-09 09:08:56'),
(147, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(148, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(149, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(150, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(151, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(152, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(153, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(154, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(155, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(156, 2, 0, '2015-11-09 09:08:57', '2015-11-11 06:59:09'),
(157, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(158, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(159, 2, 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57'),
(160, 2, 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36'),
(161, 2, 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36'),
(162, 2, 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36'),
(163, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(164, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(165, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(166, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(167, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(168, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(169, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(170, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(171, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(172, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(173, 2, 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37'),
(174, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(175, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(176, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(177, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(178, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(179, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(180, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(181, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(182, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(183, 2, 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10'),
(184, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(185, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(186, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(187, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(188, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(189, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(190, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(191, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(192, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(193, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(194, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(195, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(196, 2, 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11'),
(197, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(198, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(199, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(200, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(201, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(202, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(203, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(204, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(205, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(206, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(207, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(208, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(209, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(210, 2, 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12'),
(211, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(212, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(213, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(214, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(215, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(216, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(217, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(218, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(219, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(220, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(221, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(222, 2, 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13'),
(223, 2, 0, '2015-11-09 09:41:14', '2015-11-09 09:41:14'),
(224, 2, 0, '2015-11-09 09:41:14', '2015-11-09 09:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `email` varchar(255) NOT NULL,
  `encrypted_password` text NOT NULL,
  `reset_password_token` text,
  `reset_password_sent_at` timestamp NULL DEFAULT NULL,
  `remember_created_at` timestamp NULL DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` timestamp NULL DEFAULT NULL,
  `last_sign_in_at` timestamp NULL DEFAULT NULL,
  `confirmation_token` text,
  `confirmation_sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_file_name` text,
  `avatar_content_file` text,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` timestamp NULL DEFAULT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `shift_id` tinyint(4) NOT NULL,
  `what_taste` text,
  `want_vegan_meal` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `authentication_token` text NOT NULL,
  `read_announcements` text NOT NULL,
  `read_comments` text NOT NULL,
  `read_replies_announcements` text NOT NULL,
  `read_replies_comments` text NOT NULL,
  `gcm_regid` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `confirmation_token`, `confirmation_sent_at`, `created_at`, `updated_at`, `avatar_file_name`, `avatar_content_file`, `avatar_file_size`, `avatar_updated_at`, `first_name`, `last_name`, `floor_id`, `shift_id`, `what_taste`, `want_vegan_meal`, `admin`, `authentication_token`, `read_announcements`, `read_comments`, `read_replies_announcements`, `read_replies_comments`, `gcm_regid`) VALUES
(1, 'admin@enclave.vn', '$2a$08$GJg2CqggwuVyHxZqRXw.0.W2TM/g0KZCRnImMy2s.V3rZ65R4EgrW', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'admin.png', 'http://113.160.225.76:8989/elunch/assets/images/users/admin.png', NULL, NULL, 'Admin', 'Enclave', 1, 1, NULL, 0, 1, '8ed6759152821ea2612828dbe278d18ebd5ecd5418588abb6198823fca996aa699257fca4bf6cf039e8392cd0020e5d67e91830aa44799bc1e127fb4c49a1c9eLJoG5CTkWmi5ftQZApvHB+7PY5DFY7k18e6fdHA3ZfA=', '', '', '', '', ''),
(85, 'cody@enclave.vn', '$2a$08$2NKHbWX6t9f.sWphEAklXuA42PnEb.ppolx0MMrYcnhI7xjLeeU12', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', '2015-11-11 07:10:31', 'Cody.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Cody.JPG', NULL, NULL, 'Cody', 'Nguyen', 1, 1, '', 0, 0, '5870eaa327eee7e06333abfdd85e4c7181b0446279444e874d5adc56ed30091b2dfb2d7d91e0933f8ebdf441e9120aa8d6f0d40f05e81a7170ab4c04b57b43fewKd4zjZeIvp2VyvvgOJ9MXPlKtO3NyFwhrpbzAwzrZs=', '', '', '', '', ''),
(86, 'harold@enclave.vn', '$2a$08$EKcB9vMNAzVv4yS3tDl16.HANP2eoAhu12/tbFdsJtmPCGvyRdiZm', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', '2015-11-11 07:11:46', 'Harold.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Harold.JPG', NULL, NULL, 'Harold', 'Bui', 1, 1, '', 0, 0, 'deb94075ed8eb0e3bd40f98f06af0e9121ff07754c45313cafc0c6610863891435ef4fb0025e2b2cc5a982b38b2070bf9f3d328a1e225d41c7cc4cd070c24fc5dhPtIzW41Nq19U8fVECMIbC4iwZTLawyCLZAqr/TMw0=', '', '', '', '', ''),
(87, 'huck@enclave.vn', '$2a$08$o67Sksf3r7ep6riMSOtdv.n1jvn3uJxoqhEis.q3KqXy/OPbmv6SS', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', 0, '2015-11-09 08:22:02', '2015-11-09 08:22:02', NULL, '2015-11-09 08:22:02', '2015-11-09 08:22:02', '2015-11-11 07:14:08', 'Huck.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Huck.JPG', NULL, NULL, 'Huck', 'Nguyen', 1, 1, '', 0, 0, '718d405b8cc4791befc97811125d1a2a2ec3470af05fa5aa6dcc957fc36dfd1bc547c8ac923cf741bdc499361bc04784a9a29c3b1422aafa5dfcc28f0d547d28X6IDmPZmGifq/+YQTDVKvKhfALFyqyyxKuqeCU3Sh1Q=', '', '', '', '', ''),
(88, 'ace@enclave.vn', '$2a$08$0ljW4UBAKLto5lsLGfULQexYSHSYgjBdaCvZ8AYkwkBkleCA3Ycbq', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', '2015-11-11 07:14:41', 'Ace.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Ace.JPG', NULL, NULL, 'Ace', 'Doan', 1, 1, '', 0, 0, '9f95debf8e1c72426862dc203d48a1a921c41da6a705b75ebfc9ef973eb20d10dc95d098c4303091f014348963850733e138b0d1541195da2493c7f9ed44550fDTY2+XRmYIhYXKrazqnGsgFbKPo2absjzgwOx9JCLp8=', '', '', '', '', ''),
(89, 'ethan@enclave.vn', '$2a$08$uRWX23GMxCNHH6g7yQ6NzORyWiTvP2Fk2KFeK3taIdYAN6HGP9TVa', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', '2015-11-11 07:15:15', 'Ethan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Ethan.JPG', NULL, NULL, 'Ethan', 'Nguyen', 1, 1, '', 0, 0, '3cccde9e979487ff0170eaa8f912ad9cfdffdb9caaae16be87fe8638a3a542f89bc493fd5c4f53900ff7643f78d96009159c99baf01d3ecf514dc2d458ea9c6eIa9MCaItIfTK+vGixDgtEf1H5dIFTwoeNf+a93XcH+g=', '', '', '', '', ''),
(90, 'diane@enclave.vn', '$2a$08$MRtkHccKMI7TeQ7Kuw7WdOjbgDxTLESiKxaBN4N4ls8tjokcp4GWC', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', 0, '2015-11-09 08:26:56', '2015-11-09 08:26:56', NULL, '2015-11-09 08:26:56', '2015-11-09 08:26:56', '2015-11-11 07:15:47', 'Diane.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Diane.JPG', NULL, NULL, 'Diane', 'Nguyen', 1, 1, '', 0, 0, '350e3612f2ad1f137ff32485041bd08e39b6c9e5eb7ae34af5b5c1bcfb8c39a004387f2499766b1c611f269711570efc15ff5240f3032363ac464e065b2c9f6049BNArIkVHtFfCFsy1synWf6JkAI2ezIvhFu9VFRaWI=', '', '', '', '', ''),
(91, 'dash@enclave.vn', '$2a$08$YUo1rnE55ZvTJ2L/WaDxZ.aOCUA1Cq2EqHM2AtvkUmDIMbxxdI/Hm', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', '2015-11-11 07:16:12', 'Dash.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dash.JPG', NULL, NULL, 'Dash', 'Pham', 1, 1, '', 0, 0, '2661a367beb7660579fa068f92dec766fe3fe8c5c26b5a14045ce9c54fff44bd8d5a383908342973bfc11981b5c35ab8089c1f059e06ce384b108106e6f88c5d6Z1iMoIQIBz/YcL/FcqW4X1Ua5CFrFn18M0fYchBFTw=', '', '', '', '', ''),
(92, 'don@enclave.vn', '$2a$08$b7gp3wCEUfC2PfrLKvJKXur9ufR0EFw0ukwexTIcdFJOTws8HBOhK', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', '2015-11-11 07:16:40', 'Don.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Don.JPG', NULL, NULL, 'Don', 'Le', 1, 1, '', 0, 0, '2a27eb8f59ad9fc04f6430256aeb24c1d9f2577fda855eb2638e39be2f910ad513a7ea7557403ebf17a1173ccaf6df4b6089225800a52215bd76e7c748616325PtwAyy+mIztVQC0ONTQAR/nWauUQWHyMpoYWf+D+guY=', '', '', '', '', ''),
(93, 'dustin@enclave.vn', '$2a$08$CHrS1e3ps3XzlFkz1.z9DutsP6gcIt4dKwShLQY3Duhk4q/BLRuc6', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', '2015-11-11 07:17:40', 'Dustin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dustin.JPG', NULL, NULL, 'Dustin', 'Nguyen', 1, 1, '', 0, 0, 'aa6a8699d325e5e6500eb803cc85da2230c4aeedbf36dcd10e40ad9da28feb51689a061f4278b284bab5e7ae6ad0cb9e7005881ea1d447324a06d11d27e545c2qCLOCbL5skh8RO2HINX05FHDSPZX4v0S5HkCe8eyN1g=', '', '', '', '', ''),
(94, 'haven@enclave.vn', '$2a$08$NvqS0VORZU6/HUpj4sKwBeE5V6SS2VDjG5eIoPt9.zOVELB/a2/Xq', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', 0, '2015-11-09 08:32:41', '2015-11-09 08:32:41', NULL, '2015-11-09 08:32:41', '2015-11-09 08:32:41', '2015-11-11 07:18:23', 'Haven.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Haven.JPG', NULL, NULL, 'Haven', 'Vo', 1, 1, '', 0, 0, '93f0305c0d55f8654c1576d9799ba395e005378f0cb4b7ec21260bc6b7df8fef3f06902daa1eafffc53b84079785b9b4a29b2ad4c4fbc993881911979c14bd27F3bz7nZT334xQiL6mdMJBltVF2AC8uzWyw9mRttLpuA=', '', '', '', '', ''),
(95, 'huey@enclave.vn', '$2a$08$VChQXqNutA2SN48VR.jc/eU/eOYbXz7yrXFz685JW6Gqumz33czj.', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', '2015-11-11 07:19:00', 'Huey.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Huey.JPG', NULL, NULL, 'Huey', 'Nguyen', 1, 1, '', 0, 0, 'f0706afca1e01c84e4d54b3edaab29e0f72b1c638f59f9db3b700c8997429fbd85d78890be2cdfa84fcd4c0240dc9ea029ce6ea892f39e0665e7029a4b46dc01A9CtEVQTrHUciu5VQt4gDar9Et+vAuzxrT4zq58hXxo=', '', '', '', '', ''),
(96, 'king@enclave.vn', '$2a$08$gBPZJamoSWqU781oxlpUz.FxTqILBLynqR6xBi8DE1PCoLmY/ja4W', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', '2015-11-11 07:19:26', 'King.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/King.JPG', NULL, NULL, 'King', 'Tran', 1, 1, '', 0, 0, 'b52b301c0f7b72360a0b8afe2b665afb7f6ed2b87dc701e5042d03ae0fbffb44d5c9ebf4f7ef5e4d72571a76d34c953b07ac5ffe4519514fe5494c3c325308be5Z+syM8p/8IAxbRbv2FvKS0ESHSmp0JiCn1MxJMUVWs=', '', '', '', '', ''),
(97, 'leo@enclave.vn', '$2a$08$15Mf2c0kxl.lG/KFHFIC3eLFbRbWRZtSFqqXCUmtZrfLQVkxeuoEe', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', '2015-11-11 07:19:57', 'Leo.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Leo.JPG', NULL, NULL, 'Leo', 'Nguyen', 1, 1, '', 0, 0, 'ac1137d5afa80968d3f3704bab7a448f6aac4acc0b5f0536007169ee0419e21cad4958a47f74ee8fe627f7b63e8170517fa03201572f560f2c626bc1e1c42f30F1b/V8EHAUnRoQ4y/ngxNNuiSfqLMiMEatB0fqKykoY=', '', '', '', '', ''),
(98, 'lucas@enclave.vn', '$2a$08$VvNcidI.G/ZOtrz2el3kvOdypj8LM/OWS8UCQ9PdEjHh2dpDMSpp2', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', '2015-11-11 07:20:25', 'Lucas.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Lucas.JPG', NULL, NULL, 'Lucas', 'Tran', 1, 1, '', 0, 0, 'af5414da19fe338f3a73ad87ecff5ccb61192c6da65eabc37637b12e10339fc3dbe2a7b51d227caa19895ef78b73fc2965abac274708eea92fa6255a9c7f3b286v998IOIoTrTfVwpDzuz1TiSpL9T/gto6sHeY5XoI/8=', '', '', '', '', ''),
(99, 'william@enclave.vn', '$2a$08$MAlfrm/4X9u15itx./gUb.m7YwYScurYBxbSZTxGhXU5dnSxH4CY6', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', 0, '2015-11-09 08:32:42', '2015-11-09 08:32:42', NULL, '2015-11-09 08:32:42', '2015-11-09 08:32:42', '2015-11-11 07:20:50', 'William.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/William.JPG', NULL, NULL, 'William', 'Vo', 1, 1, '', 0, 0, '8b2b7d2281169fd1ba3712b7daecf2a403e675bb0a0279a0525dfadeed627bafa9691298bb9f6ca3a6c7ea1100a617b128f38d9bd71579c9380dbb3afde4a98a8TtFhwSDGFVDBMyMF/+Bf2w9LRQkBREalePHqgM80u4=', '', '', '', '', ''),
(100, 'jamie@enclave.vn', '$2a$08$3D7f51iIo/MBiY7uUhCoXOCpqKIGjfW/4xOBp9EWUPMG.MytPjEgG', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', '2015-11-11 07:21:48', 'Jamie.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Jamie.JPG', NULL, NULL, 'Jamie', 'Dao', 1, 1, '', 0, 0, '84e9400909e3f88eac7676b03d7de64ae17a77f39435f4c73e9711f7b28a0e5e4e3eb968ef3d8ec3b70ceab5b2e8be6a7796393d10cfcbc449c1195143a77a52rtXdVe9L+EzHpnDnMwKzPhg80S+xPFiDtseXv8aELR4=', '', '', '', '', ''),
(101, 'tharin@enclave.vn', '$2a$08$4VuckoR9PPXR6tKbFakj1uPkUBAz43NxoKJrlUNSUB9H7x3WhE6ke', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', '2015-11-11 07:22:13', 'Tharin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tharin.JPG', NULL, NULL, 'Tharin', 'Nguyen', 1, 1, '', 0, 0, 'eba2b83c36afc803eb711f41655aab0a0b664d7c7f8600a8fc8236ba30c7c179c9a2e95be787e0633379cd0dc2d6513005eef4639cac7c612d000f0f61027df4QJiQ2TSBxUyxEp03kVfkhfwcaJWR/e7SkKfJ167L1Qo=', '', '', '', '', ''),
(102, 'toni@enclave.vn', '$2a$08$DuX9t.QvOmjJ/4PqsIb1j.dWiuf4DAxYbqm3a0k0HkuxPl35DSNf2', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', '2015-11-11 07:22:32', 'Toni.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Toni.JPG', NULL, NULL, 'Toni', 'Vo', 1, 1, '', 0, 0, 'b80753a3371904e3155dda1ed3a0aa7a1b7776580c17896ff5a9c70c7df7f1e1a9163641b55af3c65addf13529dc862f45d82c5d61286aefe9f4e308b679c81dIx8jyn7P8JOCXXdPv1hK901g5v4cBUB5Snw80USrWR4=', '', '', '', '', ''),
(103, 'tony@enclave.vn', '$2a$08$Bx91/giYF2Xy3MFzdaivnOYtEkp/hYS2lTbf2wmQXDTmauk9S6bsO', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', '2015-11-11 07:24:22', 'Tony.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tony.JPG', NULL, NULL, 'Tony', 'Tran', 1, 1, '', 0, 0, '308d72f5c0229845f455fd5f46408d8ee5b4b25a78a8207e73761e9a36d6e7d17ee8527e04492806046539b95c61f82e63ac606060b83d3a568d74a58eaac3e0OzgiSWO0N8gyKwZi9pPJFItVl2kiMipMo7zPqs3Kroc=', '', '', '', '', ''),
(104, 'topher@enclave.vn', '$2a$08$s9O5y7YtzClupls8XGIme./lDdxVxwcM8yhsk9uSHxnV92yiyPJEO', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', 0, '2015-11-09 08:41:12', '2015-11-09 08:41:12', NULL, '2015-11-09 08:41:12', '2015-11-09 08:41:12', '2015-11-11 07:24:40', 'Topher.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Topher.JPG', NULL, NULL, 'Topher', 'Nguyen', 1, 1, '', 0, 0, '60669ac7d5907c420342c546154314c936f6395e36c1de3218e9bf938dbb9821b573625417c7ea6ba1aedc37aaf5ed6dbafa147235aef893f0fb588af14c7684jRyOdDUoA8cTlPBH4q4ghF6sujRiPreXIZh79tRbcsE=', '', '', '', '', ''),
(105, 'violet@enclave.vn', '$2a$08$23q3k1QWyKROE7ZFxAT/.ere5hgfgYSGdWbKAGNHtQyiQRStE8ZyO', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', '2015-11-11 07:25:02', 'Violet.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Violet.JPG', NULL, NULL, 'Violet', 'Dao', 1, 1, '', 0, 0, 'd8046ebf041b78e580b73492c060770096ce3025ae5fc2da8bb350852ae9b3999e5e8f1c5b1b95ddbaa738f14e6fa11d206c711befdf89a23d59039ec83a03502phx/6G3P9y2mLDoSf00MFwRRyZ6GpS3WpvphF5NcBs=', '', '', '', '', ''),
(106, 'varick@enclave.vn', '$2a$08$ZR71JKpR8w44MG.KCVY5XudAtEtxv2xHb708ByEhv9ClYmrDN972W', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', '2015-11-11 07:25:17', 'Varick.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Varick.JPG', NULL, NULL, 'Varick', 'Tran', 1, 1, '', 0, 0, '0308d58a3d9240213c9682c140846dee4358f0f031a2dd82a9bae3607eb6cce5ee09a3bf6499a2fb2ec82787cce0deb20071a8c40fc163d2f6c6057d849df9fajErxEJfmkUNBbDeA83CcrjqqJk6u2nQmH0p8UswhekQ=', '', '', '', '', ''),
(107, 'david@enclave.vn', '$2a$08$BUPtQQi/agCHc5trhHCh9uoekvuG0jOsExGShwzAJP7c6Y9WoihOO', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', '2015-11-11 07:25:43', 'David.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/David.JPG', NULL, NULL, 'David', 'Tran', 1, 1, '', 0, 0, 'fa1c3ecec1195d00a409a3bdcff055eaab26bfbf45b1fbf22c6196f17f38d0d9d4e39d8e458aee3b9e710a46ccb5c25698d81e475705cba0116ca916dbe594deMJ5fYXKzD2efCEBkAVl6TfdhqeKhjAYKlc+8Ng36C0c=', '', '', '', '', ''),
(108, 'calvin@enclave.vn', '$2a$08$y0ktRFOuuiLTqiE2BrfuJ.LWKcZBx36yVS1.1xnDP3388QnqiR.WC', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', 0, '2015-11-09 08:41:13', '2015-11-09 08:41:13', NULL, '2015-11-09 08:41:13', '2015-11-09 08:41:13', '2015-11-11 07:26:06', 'Calvin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Calvin.JPG', NULL, NULL, 'Calvin', 'Nguyen', 1, 1, '', 0, 0, 'db5bb65d16e5da4c85612503764ec7e0bdb23dc5b53f5a47469f8ae1743603680aa9ffe17ca5f1aa297d243c945c8a5b416c406b5a4c3dd8b84f8d0c830f9f86VSqnKUBdQzzNfw2+B2LQb27CBCntDJ1XFV0ioAovXe4=', '', '', '', '', ''),
(109, 'clark@enclave.vn', '$2a$08$l3L8mYTg.jx5K8YYgx045OSNVNCEbkI9GguJFIn4gbmEr3lvYxQz.', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:26:24', 'Clark.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Clark.JPG', NULL, NULL, 'Clark', 'Pham', 1, 1, '', 0, 0, '12793771ad76935043682d13a2f331e0f12f70b6854c808be2f4a6218534e228a9b7161a9be890a8959f8b0294dcf1a132a9c8c378b7a5f4ca7e8d95d13cba6bkXPnDfsTwzm0kTSZxHwVl8YM9ZEiupUp7/lW32I7XLM=', '', '', '', '', ''),
(110, 'dennis@enclave.vn', '$2a$08$YREWGOBr4u0V1riArz/zfuweEwOJ/iyoMhRNtpd2hve4CqOnzcy02', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:26:46', 'Dennis.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dennis.JPG', NULL, NULL, 'Dennis', 'Tran', 1, 1, '', 0, 0, 'ffe9727bc0e98f6fe83d8a94233af20f08fc473eac61d25ce2875e476a1e9bb57dcc0fa5ed489f8eee21da9a9c6defab97c09e8a0a882847bd2e8920da66a538CESPnfW2OBHfLzlJtgqSQ/k8Q3rW9lBREn7KyC032Zo=', '', '', '', '', ''),
(111, 'vincent@enclave.vn', '$2a$08$tdrQV7vmF9byfmO4cUmYQeC.XO2zIYbRsiN/JdU/SNGTodmG5FaAu', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:27:12', 'Vincent.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vincent.JPG', NULL, NULL, 'Vincent', 'Dao', 1, 1, '', 0, 0, '3cc6802518537e765b7a54cde7eb159a23e85b045d4bec67add5ca62bb5350bf420ec9d7edbeb6db286b838d1bfefed52b19c8ebbc1b7f136d4e54df409d9c23a/9NC9Vo1gzPxPOsQUzuk/wgmjBnszdV3m4SX0NJ/gQ=', '', '', '', '', ''),
(112, 'permelia@enclave.vn', '$2a$08$HZgM5H6W8ja1Y84Qd0kEiuUD/xvX8UTxSEGl.awi97vUatiKZupN6', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:27:37', 'Permelia.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Permelia.JPG', NULL, NULL, 'Permelia', 'Dao', 1, 1, '', 0, 0, '55a9235528aa8c89d5048fd27771a23f4fdbef8c23ab78e7e164293684ec8e57241a711a9dad65e10b7cdfcd65acba990adaff435e7808b71668d60f6eae04abYpvlh3FyuHKAY+45Kov6aEwXRC03jbwJi5RpVxFpT6k=', '', '', '', '', ''),
(113, 'dino@enclave.vn', '$2a$08$dGeIxzIyhusGnwiEGKsOdO9zC.lxjr5eRmRnx18Lsr5U1AyvtjV9m', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:27:56', 'Dino.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dino.JPG', NULL, NULL, 'Dino', 'Nguyen', 1, 1, '', 0, 0, '10ef19df8d27bdbe65b934baa969fa534e049499b7e872046062d544e0ef5dc433df5661ee832adb2c34230386413ae501232b26986403bcd2e60d1408662e31df05TX39DjWC9U3myt/EnjcTEdbHCed9T6MDzeJxYMA=', '', '', '', '', ''),
(114, 'clara@enclave.vn', '$2a$08$RhepM3.f5Ku3C1AJgtVSZ.tufTyhxD4E5K4cIyKOUTSV2EMe/.dEC', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:28:21', 'Clara.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Clara.JPG', NULL, NULL, 'Clara', 'Dinh', 1, 1, '', 0, 0, '3145d4e9357f9c506e168ff31ec49f632573bf32e1a6965c942fbbc39dd6be96d866423e376dbfaf9c243810f8cc42e0f83157de7d5d5741d63f280163339acagyGAOjnVtPEbbC9oITMj9WKyy2wYIaM5yWZiNu5Dio8=', '', '', '', '', ''),
(115, 'anna@enclave.vn', '$2a$08$JvUMLv7oUPBeidVJrAsMrOl2jCZ9dBfABhQTRVa7w9kSnHuImwmhW', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:28:49', 'Anna.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Anna.JPG', NULL, NULL, 'Anna', 'Doan', 1, 1, '', 0, 0, 'e4a85f7ed09343ab1519f6072223bb59a319bf8d492efaa93966a0d7c40d295a3e476d8b198516f08016e0ee6feb4cff725bd10c0f2d31b89383cf5764b71b86AFuNRPoafSmZ6305hykHXmO+eLvaafMPaRNJyWO351w=', '', '', '', '', ''),
(116, 'river@enclave.vn', '$2a$08$hJBGnEEGYpdR6MxV7tm71uZH0KepBQcimFpAxNcwDT8gxtjA/52MO', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:29:26', 'River.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/River.JPG', NULL, NULL, 'River', 'Do', 1, 1, '', 0, 0, '7a8a486a6fb79a65d2c3e2be06dc6b924eb58f179c8f9c876da53d35b6b328162b048e464e3dc82b0712dd8a05e52f80011e94b0b91017bca0e34eedf1df7b69EZty52RbItuwAOaZshsyvocYlsfP3Knla+Gjrx3syNQ=', '', '', '', '', ''),
(117, 'daryl@enclave.vn', '$2a$08$O/EPscRQvzrm0jaPWDQRYuH0Dyb0vwtaIxot0QSiaG.cefVxsJLhi', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', 0, '2015-11-09 08:49:09', '2015-11-09 08:49:09', NULL, '2015-11-09 08:49:09', '2015-11-09 08:49:09', '2015-11-11 07:29:51', 'Daryl.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Daryl.JPG', NULL, NULL, 'Daryl', 'Dang', 1, 1, '', 0, 0, '2cdd84374036fc10bb08cfd5093d199b1c8bf9af59c559f7afa9589291f28ab7c536b2cf6c07573f306e99dd673ae9971fbc58759173647dd7c5a3371c0f49a52ofk/WH4M2vbWHPCP5E35pGdhQ398cwjZrTHF/P1TgM=', '', '', '', '', ''),
(118, 'hans@enclave.vn', '$2a$08$WzkI2ce8ojkwqcxvl8Vu7ODme4AM.wD7o1geHeC/4cCak79t9bz66', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:30:29', 'Hans.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hans.JPG', NULL, NULL, 'Hans', 'Tran', 1, 1, '', 0, 0, '84b6dd065a47a30f177bfbd4ab195e3b971931a4908171aa75fcbe19fff1b5e8db0d8a31d1e0fadeb8de3ae157c497e5e3761d9ee11c48866e6607a7709b8336t5OXendAbhCbNBRGbS2BpQ3Id0WGnk6Qwiy8b4NdnQg=', '', '', '', '', ''),
(119, 'hayward@enclave.vn', '$2a$08$/w2rbHeD92GjoeEHsYbN3ONU8tIfYbfy4eWl/NR4Tmb9iGJ/07d5.', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:30:52', 'Hayward.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hayward.JPG', NULL, NULL, 'Hayward', 'Le', 1, 1, '', 0, 0, 'a86cda790b5ccbd8049248b3837dd34e57ed7c691ccd3d7511eacd230b4b02c25fc295c8915186027967b77a0523f99beb919dd3fc238bb3e27a306345592afaVgZ1N8QtXjOQuqEQx5jhS2yT33rTnctXK00AagA2Lc0=', '', '', '', '', ''),
(120, 'hugh@enclave.vn', '$2a$08$516/pKjKkhuGevqF1aCGUuvWfWWoydGxyg7mxIeWg5PUGUUzZG1sy', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:31:24', 'Hugh.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hugh.JPG', NULL, NULL, 'Hugh', 'Nguyen', 1, 1, '', 0, 0, 'dd749dc7b615f740dc8fae195ec15de52e8f634bbe492d787ef19822ff8fce0aaeff5375371813bc65913827e4cdabcfb126ebf66e24d2a8fe27ff76bfd21e39daw/G55cCdQFjEd3d3QXnmRJUDt8FaNtUNTkLHEWpKY=', '', '', '', '', ''),
(121, 'hanie@enclave.vn', '$2a$08$lNp9M4pqPJJ/kInJQ4MuXemYfVgCXE/QPsI9o5qkQ8nTrfp6O7QR2', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:32:10', 'Hanie.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hanie.JPG', NULL, NULL, 'Hanie', 'Pham', 1, 1, '', 0, 0, '05b4499931421c2be2933a687a831d811d7442ea91ed21948e38ead721b6bee6619283b919e4e840cbbb61ec8f795c46ab69bf538d837793c019fdda21b6e4c6aKNezpzg0yLohe0XEeAPVQVW3xk+CYehhWrYMkquJBg=', '', '', '', '', ''),
(122, 'datherine@enclave.vn', '$2a$08$ugF.LnaGgvnwTvBFNqt83eDhVsqo9P/VW.0U7uro2Pt.NC.Y2MfLe', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:32:43', 'Datherine.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Datherine.JPG', NULL, NULL, 'Datherine', 'Hoang', 1, 1, '', 0, 0, '7e404a73273029d8190d0d3adeada38a6b18038ca20d6b85e0bf6eec2880119551b05af2cfaa7b75b5c868b9e3978f72b127966c5933938c57cc09b96741f9b8Pc/Q4eZo8wrb8x9f6OxVNDiLFSE4GemN1Jrds3ZuJqE=', '', '', '', '', ''),
(123, 'alvin@enclave.vn', '$2a$08$pRE3AItBd3JY0WI0/K9WCedsMA2TKm6G.IACKeNFZqagvpfMgKqZO', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:33:06', 'Alvin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Alvin.JPG', NULL, NULL, 'Alvin', 'Ho', 1, 1, '', 0, 0, 'b707633de7669bed1cec5e3c2798f53e8882700a123440c96bf60a4b02fad118f464a7d71036b729fc7358a1ec5918ca27483157109dfd50859d1ba1e531c128sEE49teb+38Mfc11jWDOVsmc0OqAX8tWKniOadZaulk=', '', '', '', '', ''),
(124, 'helen@enclave.vn', '$2a$08$eN9/LgS3rSRLfHHkOkSwSujm9CEhNiOGKmXV1tM0OcaYGMur43zfq', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:33:24', 'Helen.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Helen.JPG', NULL, NULL, 'Helen', 'Le', 1, 1, '', 0, 0, '3967fa2d165205d9ee845c71c60f04d3123ac7186e12ecc4214c3046af4146e430e162cc284694bb0756970c800e7ec0de39301dcbd8fcec2d99f1a00338e5b5fMGe64oCvA94ihhpiUTbuJclyDP/Lny9kIbifJl11Qk=', '', '', '', '', ''),
(125, 'henri@enclave.vn', '$2a$08$xOgA.NiaLEmoehO95PdnveygzRpft.xS8LFdIU8uHiHIlq0XR9NQy', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', 0, '2015-11-09 08:56:05', '2015-11-09 08:56:05', NULL, '2015-11-09 08:56:05', '2015-11-09 08:56:05', '2015-11-11 07:33:40', 'Henri.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Henri.JPG', NULL, NULL, 'Henri', 'Nguyen', 1, 1, '', 0, 0, '20757e9e6d80e3e3a5c3305ef31a63d3ab068ad834c237c592f6e39a92cb9c3c06355580bf1d358aa821aee6ca4edb14bbcfcc6aeb022fceb1e36cc4230009f0vSlipg50tO1WG6by7kvUwUZ4Z0B1GuNlzli6r4XhOsE=', '', '', '', '', ''),
(126, 'nick@enclave.vn', '$2a$08$6U7e7W3Zv65xuClVrtXuuuOhrqhfeywj5AzzKIhCsXsFVf1du53q.', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:34:00', 'Nick.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nick.JPG', NULL, NULL, 'Nick', 'Huynh', 1, 1, '', 0, 0, '', '', '', '', '', ''),
(127, 'dan@enclave.vn', '$2a$08$PwFVktYUEA6dcCTSurxR0uWOkVTTBCC7YZbJq/0/WpyYjLzZgcvlC', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:34:44', 'Dan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dan.JPG', NULL, NULL, 'Dan', 'Huynh', 1, 1, '', 0, 0, '240b5eeff4e738bfe92115ce864d710a53d86258316bb75515c0545f764b7a463ded31e2dcc49b4ce8db7567cb23eb796ba00bce3d5c18271e300868fad0d811Kn9moE1C/pC1fj7eMSfRbJ9jl3CCUpS2foQN1eazTVg=', '', '', '', '', ''),
(128, 'kare@enclave.vn', '$2a$08$jhsjtcCh.fnGSVAFIRn5mOpg4rd0hLxLckh4BwnXCqCO9tQPWrJf6', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:35:14', 'Kare.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Kare.JPG', NULL, NULL, 'Kare', 'Tran', 1, 1, '', 0, 0, '31eec1dab7a0eca33d8208f3a458ca59b0a520d6252d5de84edaf48c1d079b9851ed89fcbcd7bbf57e30b0238d486efffd6200076e2ce06ba46a74321c7d2d7dVzXKotBJx+3rvr9KqPb14itFiZY5SehWQ1/CFpDL9mY=', '', '', '', '', ''),
(129, 'kayo@enclave.vn', '$2a$08$gNhyM2pSZvbD8Ah.oPsK..wltOv95seTHysXIJ97CrhlPpLfKrk0W', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:36:15', 'Kayo.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Kayo.JPG', NULL, NULL, 'Kayo', 'Tran', 1, 1, '', 0, 0, '19f974370eabeaff3294a3636850d5269f681754d29d05dd6181932ea945575062c5946c53b98a6c00814dd4f103db45fcc4d6fbf871c1bb80bf6c09ce8d9bd3dyGJ3+PA+FmxBbfAxJwkkz1ar+fugwDL73cDn6/e+zo=', '', '', '', '', ''),
(130, 'nicholas@enclave.vn', '$2a$08$BVAUDP1L0gW3cfEtVCB2eeazIGHAi.vd8vErx81aXqkSqbjx1y4pe', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:36:45', 'Nicholas.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nicholas.JPG', NULL, NULL, 'Nicholas', 'Khuong', 1, 1, '', 0, 0, '4387e114db352ffa558783ab225b96aba18c18171f760d07d0fd15885c424a13bca7f0228f81eecc97cbe2670e06e14617f631f666a1fd95c820b023901e1eb2MlyRdiCB0+aN4n6ZH96gju2vzYXk9SLeCUsidjfISJM=', '', '', '', '', ''),
(131, 'laine@enclave.vn', '$2a$08$4Qj7ayvCEcrCB7eoojAy0ePF4MNjepmvfyPtOGBMLxpEvzzJFVrqq', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', 0, '2015-11-09 08:56:06', '2015-11-09 08:56:06', NULL, '2015-11-09 08:56:06', '2015-11-09 08:56:06', '2015-11-11 07:37:20', 'Laine.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Laine.JPG', NULL, NULL, 'Laine', 'Truong', 1, 1, '', 0, 0, '808eb6c074914f7133bbb3f59f6a1405528dd902c6df4e3a1f34fb4066836c64548df31216b8ec3e5cb698719b7564d81a718f4e117d6d97eab9ca34712a7907a+WOOz0SmOG3EU25Ixs0NLjTbk55y0JgKDfjberLA5Y=', '', '', '', '', ''),
(132, 'lily@enclave.vn', '$2a$08$pSL1P3DM4TLq7mIuD45QReRqPpVw2vlEfpmlCBW75GJjd9bYqXd4y', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:38:31', 'Lily.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Lily.JPG', NULL, NULL, 'Lily', 'La', 1, 1, '', 0, 0, '8c549dc046ad3b03953b4034c3e2b401b8bdb1662574f5449cbc5e54f0f07a8b573a3fda937ffa8bc13c44cac6cab430239ab6ba798b31bee38c289b1e3859ecKC90IvNRSvugFycpjJw3VmnVDTEGzJeZWICQSbHxaWE=', '', '', '', '', ''),
(133, 'thomas@enclave.vn', '$2a$08$tlvILT.054Ol/VjJxpDvdeN1KkYi./ovl328/4CD9wKwSIeK9wyp.', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:38:57', 'Thomas.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Thomas.JPG', NULL, NULL, 'Thomas', 'Le', 1, 1, '', 0, 0, 'd464e93912d52c7892a5487703118f0a3fbdbe1255e2d2d2791fb8c4ddf29f1a5c2dff36beea7c6b3d4a0c89b7441e689764d9bb441d9776500964246cb5689cPmb3XNq/FY9tkmWkcXYiIV9ICc2lbWEj+Jics7Sk0O0=', '', '', '', '', ''),
(134, 'victor@enclave.vn', '$2a$08$lymn5UFy7VMv6XM9PboYx.IUqFaZZfFZi.g59s3OaYqmlKwxqvdCO', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:39:31', 'Victor.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Victor.JPG', NULL, NULL, 'Victor', 'Le', 1, 1, '', 0, 0, '5c9bc18a4739d5f1d490cb2868d7d6a0749f38c613d6c8def94a2244793db58371377f30d74ee57f0f165cb501e698385a9707a83cf04d8774b91f0232696667hBYB6lsN3JX9oRy1lXwTfDkVbVrg9g99xQ5/2i/VE6I=', '', '', '', '', ''),
(135, 'juriaan@enclave.vn', '$2a$08$wyfk1tkVy3rrKU1Ymtk/EOIT88IcVo5cn9xoIOszwcJXpz6hAZjVi', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:39:55', 'Juriaan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Juriaan.JPG', NULL, NULL, 'Juriaan', 'Le', 1, 1, '', 0, 0, '9d63996bbe67e4d70a9c9571dfef23b4c37c7c7397941c72230e07f56d921ee0ab8eb3c23b8f9110d539da4f8546cb385d724df039ea9bd441d1d9a34d334cf3s8JC9rPnsSkfli18TMFQVyMDlwx9+qv4mVJfDcC+rgo=', '', '', '', '', ''),
(136, 'brian@enclave.vn', '$2a$08$Jgp2Zl.ROWiH6tijPiugN.ITm3vGezfQnF9o12xMJ/WXztUfZZGrW', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:40:40', 'Brian.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Brian.JPG', NULL, NULL, 'Brian', 'Le', 1, 1, '', 0, 0, 'f9feb6cb052b19e13526d1845e701a5bfa884707357b86a3ca03133430c4a95942a8df20011d3e58f2dcd8ca2c55777f369e9b1204131654af7c25518bb13318Btmk5RcpUZLJDlau9zwJuFbZdd1bB1Yr9JjIfrONqnA=', '', '', '', '', ''),
(137, 'dalton@enclave.vn', '$2a$08$JUSht0hUc5bHWCtMT.RaH.sKc.LXcKVFj8rroIrN2rkXVRjcCSv.2', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:41:04', 'Dalton.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dalton.JPG', NULL, NULL, 'Dalton', 'Le', 1, 1, '', 0, 0, '285918cd4cb2f8b1855732b1d4dc9a5409bcc895dc86d85697ea13017babe310847085fee86a104af051616ad27692d2bf9253dc35eb944e5e7d917997ba5608UlSgFKc7QojRHx8a911dYs4IZJO8fcPOjN/7v7DmNww=', '', '', '', '', ''),
(138, 'tiffany@enclave.vn', '$2a$08$zWTvE7GGCz9aDDvq9wOWMeiQtsBdLtmJ84Gkb5iGOzm1psDcByBw2', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:41:30', 'Tiffany.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tiffany.JPG', NULL, NULL, 'Tiffany', 'Le', 1, 1, '', 0, 0, '9413f1617a8e67c999e4a7e3299e40d797ec1f950157683ae068779274112842ac596597257ecca1ec2ac243fe6b422c0ffd7875c836077e75fa9a1ef698b42cQmt1RraYELs8ebBXfORqMSUv/KdxQCe6eVMIXBoAWN8=', '', '', '', '', ''),
(139, 'vidal@enclave.vn', '$2a$08$Xc1nhFlIjbWTx532jauj4eJDHuR9iMPV7ku2FyF2IijTYgScgt.kO', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:41:59', 'Vidal.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vidal.JPG', NULL, NULL, 'Vidal', 'Le', 1, 1, '', 0, 0, '51c118d57a7b4b0b1ada9567aa76e2eb04d876440bd04e476c1b67b5f18840c5a7810cc07b66dfc4a580fb8e95204ea3624ec5fba9fede5161ba68c9c8ef3807xxSX/j74X3/0dnWqDIzhanWwEUwqnFQunYi1WZp7A7Y=', '', '', '', '', ''),
(140, 'lambert@enclave.vn', '$2a$08$sLeQCma9pWuteD.jhiVk/.qzSzcLiGN69Sc7Yqw/SV.WMDoviXDD.', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', 0, '2015-11-09 09:03:19', '2015-11-09 09:03:19', NULL, '2015-11-09 09:03:19', '2015-11-09 09:03:19', '2015-11-11 07:42:23', 'Lambert.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Lambert.JPG', NULL, NULL, 'Lambert', 'Tran', 1, 1, '', 0, 0, '24e95842b11009871b64c22b69cec9cb8e3b90570531adf5a892e3f063c8f9178c28e90e745cc3b61d3ca807f65810bc093c005365ffb2d98c34367903edb2a2OsQBsd8ymalM0HXG0dFz18aXrC6C9+R+eyyh9VSlzh0=', '', '', '', '', ''),
(141, 'mica@enclave.vn', '$2a$08$mohyTtr6XJLlbSrCvYyM4eq1ZLKwqlWx0WSswesO4XmoLFd6Q7o1m', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', '2015-11-11 07:42:59', 'Mica.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Mica.JPG', NULL, NULL, 'Mica', 'Doan', 1, 1, '', 0, 0, '56493a588b6c429e1838ea62d63cb12452cfc3101300dc2ceaa1864b8b72188beffcba80d6828d35e707aede0e74bdca43305f523c1bc0f0add83ade845b1bf1q15FluPPPQE2A6Nt8bsUzReNcIdQf2IEupxk4F8/YrI=', '', '', '', '', ''),
(142, 'connor@enclave.vn', '$2a$08$IuqggFrALekQ2PNSJZQfAOAwtMnjRqohaLdFQ2NKcYs1ji2w2EV9u', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', '2015-11-11 07:43:29', 'Connor.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Connor.JPG', NULL, NULL, 'Connor', 'Tran', 1, 1, '', 0, 0, 'a358f08a0faa963b52f6d7d79eac4d8c4cffe08710415867132e848f105dba5353ae8da34d2aae8f864d50c69775146b4725d51a22e0393031a636a435bb552eTne/o/95u/oBWzxqpH8HkQlWIYoxchQWcSxtjtfj8R4=', '', '', '', '', ''),
(143, 'anne@enclave.vn', '$2a$08$K0ln4jOYj0i.iD9yA/2SSuEtRhFRYORia50Up/IVpNkzp6EAiTnR6', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', '2015-11-11 07:44:20', 'Anne.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Anne.JPG', NULL, NULL, 'Anne', 'Nguyen', 1, 1, '', 0, 0, 'a580639fd01622878a23ebf11848803159997c687503a52c0ca1f7c76a1fc6a6c3289825df30e81e51a33574976a37348ae731f9d459987bad64e7ac37617155iyZ7kKX9F0RsoMJrUqwq1Di6xzPb2c9aIiuo+FQ5smg=', '', '', '', '', ''),
(144, 'nelson@enclave.vn', '$2a$08$UDPuZs1qq6fntRHm/1QER.tZ5mDrodm09RpkiRwA084g/1Q.kpXqO', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', '2015-11-11 07:44:44', 'Nelson.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nelson.JPG', NULL, NULL, 'Nelson', 'Ngo', 1, 1, '', 0, 0, '3f6f5a0008c2b5fded73eb2311a2c3653ab02546184395a7eed0329a208a8c85f0d871a4f87365d76167d8da14e6a43874d44f79176cb09875216cc90cadf7ee7ZmnL9g7WVrly1rm4K3Z/uoeHlwPGsnDcEMkTuLm2VI=', '', '', '', '', ''),
(145, 'tommy@enclave.vn', '$2a$08$fdiZgiZfqki.2nbQgnOBWezOm2PnWiFpgDx7yij5GTMPDIV9oiyT6', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', 0, '2015-11-09 09:03:20', '2015-11-09 09:03:20', NULL, '2015-11-09 09:03:20', '2015-11-09 09:03:20', '2015-11-11 07:10:22', 'Tommy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tommy.JPG', NULL, NULL, 'Tommy', 'Ngo', 1, 1, '', 0, 1, '040d8f169d37f2adae412267a39def101f48166bbcbcd4f4341371a6d0821b1a401e79c1a942f508ba3fde5857f445f4767407fd2226c2fd66be77de9903dbbdObFb0R9mxCVG/a1mA3vV/hACFKCIlXDofNW/vqKbUc0=', '', '', '', '', ''),
(146, 'akos@enclave.vn', '$2a$08$mORegkaR7MwXgZmCZBcgQukNv6EXi0szIWIJODs45IPaxsvus0ISe', NULL, '2015-11-09 09:08:56', '2015-11-09 09:08:56', 0, '2015-11-09 09:08:56', '2015-11-09 09:08:56', NULL, '2015-11-09 09:08:56', '2015-11-09 09:08:56', '2015-11-11 07:44:58', 'Akos.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Akos.JPG', NULL, NULL, 'Akos', 'Ngo', 1, 1, '', 0, 0, 'b95c3df929cd024bd22310222cbda91f99db6ba5c76d26306606ea249d5b029ece8300d2e238d1fff18adff1af32ad0b4a6a231235ba4374983d58499c72cd90yA6idQE9lKVUZOQl16VbWCHmxI+i65HkSa1I6gsv7Us=', '', '', '', '', ''),
(147, 'nicky@enclave.vn', '$2a$08$ZFf1dxvkfZY1U7pjwVQ4NOD0AjkK90xLTrZjJFtJOxHAW6Ko3ANXG', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:45:23', 'Nicky.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nicky.JPG', NULL, NULL, 'Nicky', 'Ngo', 1, 1, '', 0, 0, 'f51aedcfce378988814f663ea087bfbda6346b6bc2f873430c070036ad9e55f5f8f3f7f67c20daf460a85d842f02276aac575d4cb36997bc07acd0933c86ed69zX4qsO5bAov9BWMnaNvcFXaSCrUt1wa792rg0m91oXI=', '', '', '', '', ''),
(148, 'trudy@enclave.vn', '$2a$08$O2jozZqziDLWe/wNPJ7HeebxJ7DqorrE4BtrWuUGBPvAxxDKbu8f.', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:45:54', 'Trudy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Trudy.JPG', NULL, NULL, 'Trudy', 'Nguyen', 1, 1, '', 0, 0, '50dc81334f059b39f8a20f6993ecb6749ec3f3f51cf9a6ab611e15dc1e8a589853f84c1af441f6de108e95317bd1cce80ef888bccd98b339365c223bdd250245wRIpK0hVzcSYqxl7DUF0wyr310cOMWAMFFtEv9Pe0Xc=', '', '', '', '', ''),
(149, 'carter@enclave.vn', '$2a$08$CNpuLhLs9mnUweWeKZZH/OTPEEML0N8GQSyA0oGv6oIR/fGpstW3S', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:46:16', 'Carter.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Carter.JPG', NULL, NULL, 'Carter', 'Nguyen', 1, 1, '', 0, 0, '5f1d27fae7d624239dbe6acf722e7b27ff79d4171711ba3fc5936326e5c5862fc94b690d55414fc62544bebf0c61dfd73e47ca19dc1ec3158147e4fb44aa4094JLgf3ckVRAjl6XyBKNaah9dtMZZ1nXkqTo6BnkDFG6M=', '', '', '', '', ''),
(150, 'van@enclave.vn', '$2a$08$N42ytum1qzKpr01V86Nu5ulA1qw0INpb9mWyGZ0jf/stevdMyDKOa', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:46:36', 'Van.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Van.JPG', NULL, NULL, 'Van', 'Thai', 1, 1, '', 0, 0, 'a95a129ce086db82825223379ec51f0328577c1165b0d8303e2ea48aeeb369899b7ef0582442e8b66e640257b732d5a4e56ce97d066bb4dd966ede9be7a65c97FKQe0h7t+S8ZZ8PdcVfYNBMbWA6a3QvjVc2QW+Y3CN8=', '', '', '', '', ''),
(151, 'jack@enclave.vn', '$2a$08$erbC45SnWuMpK.T88DE7rO3N7jFdb12sqLJcWO/RIRj0SLlQYiJTC', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:47:04', 'Jack.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Jack.JPG', NULL, NULL, 'Jack', 'Nguyen', 1, 1, '', 0, 0, '07eb1666e688f201d978934eef27d213df97edc51241742c59bf24a39526caa107b210fd43ab45fa44ee14164e2d7c7dfd582a44034d261b5f09c1e5f7b88911YB55TZhD9SpAQImA9fcAeO5+zHMExUN6smO5N2PGyUM=', '', '', '', '', ''),
(152, 'fairly@enclave.vn', '$2a$08$MPzN3xJX/2i53v/7kUo.RO74EneLr8fB0S2lSh/Ls33m7tSHKJqx6', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:47:24', 'Fairly.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Fairly.JPG', NULL, NULL, 'Fairly', 'Nguyen', 1, 1, '', 0, 0, 'f00bb1e31d50c7a9bc9b32dd0b443430bad87ffd23b4d48ff921c454fb3fb15c8bbc46fc20a0c61f3f64d8b68684b06595cc9b76ea84e587726026a4600691fe+TmUT4mDQ8PWEKh9v3PPwJD6AbHfz1BhfTThp0N6t54=', '', '', '', '', ''),
(153, 'tom@enclave.vn', '$2a$08$fBDVwN.wVo0sNvNJtcSkeeFiPEBr0IpMUUodJaWp86gGgTqoGR3zy', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:48:01', 'Tom.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tom.JPG', NULL, NULL, 'Tom', 'Nguyen', 1, 1, '', 0, 0, 'a52973b0c1fe79bfbb491043fb63e242d697166e5ed692e38198e21ff2296536f6a08e514bc2e935430ab18682bcdd5bd6a57509cbe1064316eff04dfcc7122fPhIlJQUdF/wse1tzPc6sx2un2smQoJXKjc364fmC/UU=', '', '', '', '', ''),
(154, 'thatcher@enclave.vn', '$2a$08$J1EvNanstVblFOeQaDRZFe6ZXK8SjbpWI/OOo.u4ucL6E.hBqCK6q', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:48:26', 'Thatcher.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Thatcher.JPG', NULL, NULL, 'Thatcher', 'Nguyen', 1, 1, '', 0, 0, 'c6e5e2fa343d943b96544e4be7af97d69f1d7d2a2a3fd72482e4a2f28da85816f898013bcf5ea5b8626369ab2dcac1585bf136fa9f95e167c07ed638727a5511MsLa0xie+EMWgplPXp18Zun0RWiX/Qps5kLGxk8sFMc=', '', '', '', '', ''),
(155, 'castiel@enclave.vn', '$2a$08$/EkSoWo3X6AE7Rq4SKsvROaPuofqQUSXobRBh81QWQUiNsgzwuSc.', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:48:50', 'Castiel.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Castiel.JPG', NULL, NULL, 'Castiel', 'Nguyen', 1, 1, '', 0, 0, '1942adf67563f601184cce1835320e56a4fdc07adc3a7794c20308a40a53f58ff9aacb1a844c16c0a4a4383aa79601b390880134ddcef4f03ea8af67e8d78ce1oe65KDRcZSONRYZvTgJpKo0xnk6besC/1C7BX+f8afY=', '', '', '', '', ''),
(156, 'pax@enclave.vn', '$2a$08$ibYhpiIXR3uTJAOkx5ORWOM/YD.392OxL7CUYGZvZ/yV6M0OAOVYy', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 08:09:15', 'Pax.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Pax.JPG', NULL, NULL, 'Pax', 'Nguyen', 1, 2, 'Little spicy and salty', 1, 0, '489809bbefb0b6c5351983ea44e9074366af411e5da943707bae71c05b38d399e15557c9d65339d3a2022f7307d83c5f71e1c9a8d3e0912fa1790762db1e9b586fYFsMgG9lZd6GLJUoGYH4j/eofwP6GgCkS/PCAGAKk=', '', '', '', '', 'fb00BPS-kAY:APA91bFnebKKShDORO-puZ_flyFCfc9zfIrRHTt7xu2Riz5142_mj2eGq60OUP3ForaikGId6ZJvsaUcWCr9VjIaG_-EcLPBhGZnHZ_2-7PEsIIr5fIQQMzmXM3rG9tx9s1BxoLg_s3C'),
(157, 'sherry@enclave.vn', '$2a$08$YNIPoplBL8txwhfYcvuXJexOEQJ0hGdMAbTEEYnjYeGxmX3C297K.', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:49:43', 'Sherry.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Sherry.JPG', NULL, NULL, 'Sherry', 'Nguyen', 1, 1, '', 0, 0, 'a75625a8a3a3388a28187226ea98220296e3666d551928873c24f8b03a82d6ba46556f253de5762366fb5b40275edab4584949a5ab6895d47b3b4a3e426773f07zpi8WA4s5qKVZVLmUv2gGv9r9nY66ry24J5pKV41Ak=', '', '', '', '', ''),
(158, 'nigel@enclave.vn', '$2a$08$0QiBHXaiNSJMekQJ4tzii.z39Gt6ADAL5hACTslDfFrnDO6O4KTAq', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:50:09', 'Nigel.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nigel.JPG', NULL, NULL, 'Nigel', 'Bui', 1, 1, '', 0, 0, '758ffc11fbea6714e0d87de4596343e61e10756526e82d278442149bd8043e212d6a17a3cc6b3cfa942c63c5b3820f6f931feeea83d128590e110f0e0d949fe1+BJEL9wo/sEcN/NJ92U75nAO50/j+LeQnT+6Vnnd8X4=', '', '', '', '', ''),
(159, 'theodore@enclave.vn', '$2a$08$HqIULM/iiBL8mziryqg3YeSsbUYzQjjdu1mLcHJfCHdxz9mPcXkpK', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', 0, '2015-11-09 09:08:57', '2015-11-09 09:08:57', NULL, '2015-11-09 09:08:57', '2015-11-09 09:08:57', '2015-11-11 07:50:29', 'Theodore.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Theodore.JPG', NULL, NULL, 'Theodore', 'Nguyen', 1, 1, '', 0, 0, 'b0648d546b14e123943a9c6893662ed0eaefc64935d2ba983580f53dd8e61a5b7a166ee10de72758654f38c59ff5707bf0cba84190e69dfb74c2e3d422709c72JC/NxDruVGMDRmZNvw/5E1R7+0wuLbeX97TIY5c/xAw=', '', '', '', '', ''),
(160, 'julia@enclave.vn', '$2a$08$gLL06D18D483FPJ29ZRzYuPZFfWKFD32cIRtAQJCiXiUDaATQvPqu', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', '2015-11-11 07:50:45', 'Julia.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Julia.JPG', NULL, NULL, 'Julia', 'Nguyen', 1, 1, '', 0, 0, '43aedacd46542398679564420c7e1bd21008e5efee0fe60ecdc2cd6f50e784bf61f6a7da00a9683e28d6ba766fc23475b3087165f6bb7cbe51a73b201fb6c946XvE3plIJhHl3uh/G1LIiGJT2GoPtSIwEPf0sj4cV3Jg=', '', '', '', '', ''),
(161, 'kimberly@enclave.vn', '$2a$08$6ZQIVH2fth30WRBZ20X3lO.oUaThPSZju.yq0Qp36nvT5uUuuumhO', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', '2015-11-11 07:51:02', 'Kimberly.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Kimberly.JPG', NULL, NULL, 'Kimberly', 'Nguyen', 1, 1, '', 0, 0, 'b9eaf2252a4610f4e4b8cd67596f9d653cc2adfc574ab1e2264b6b531cc92077fc003c24346c9ff565de70fec4a6068992cce0251de82b961cb5180bd5debce3giB1ttI7hZHyxpu9ibRB68pF3OJ5Nu9xdyH95Pk0ba8=', '', '', '', '', ''),
(162, 'tanya@enclave.vn', '$2a$08$NYUv5BvGXJ8Cc1YUpe66c.zBQH.sJst.EucK88DVC.RdT/pabjkn.', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', 0, '2015-11-09 09:16:36', '2015-11-09 09:16:36', NULL, '2015-11-09 09:16:36', '2015-11-09 09:16:36', '2015-11-11 07:51:42', 'Tanya.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tanya.JPG', NULL, NULL, 'Tanya', 'Nguyen', 1, 1, '', 0, 0, '6c7ee271129b79a52d1dd117491d0069c75e5cc6fc8df5d323f501671005b239f3991e385f3ffd68ccb2017a9850ba3d5348ca9fc10d2ab85e271fc016e8ad114nZ1SRee6PGamvBhzNwpjo1QZ4EbhqDlnPWyF/3x0q8=', '', '', '', '', ''),
(163, 'vanessa@enclave.vn', '$2a$08$EGFL/1N3mU09yt8PGTxh8OgIVLIkWQ0FgL57hkE3PTue/msRZQ4By', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:52:02', 'Vanessa.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vanessa.JPG', NULL, NULL, 'Vanessa', 'Nguyen', 1, 1, '', 0, 0, '80b0da8a52f8870b90afdf212a735c7bf36b04276ac29265855993e8e1be8c59ca11ea3d52fc5d25cb6c432bad9196958968c019f3acee0851bde1c954a134b0YO4zj2sh7bUE8gboAwqt5/vaEe3l+XgGrKtI3DGlNvQ=', '', '', '', '', ''),
(164, 'anson@enclave.vn', '$2a$08$Ju26Qy9hAwUN8Sow0R7bWuM63o3DwpF6vEdBvZJnhLoLwmax3qsTm', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:52:16', 'Anson.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Anson.JPG', NULL, NULL, 'Anson', 'Nguyen', 1, 1, '', 0, 0, 'fde6b75347fc43917549e8025f4b8a62ca096c7754ccd07e71a272c863c97a70b72f255238f9f6d3f18fc88e77d920a762797588a3dba9953f1b8a09aa3976fbkokK7DrbEqnUj84NBd3hLabA4TxPMokt/8nBlLEH6ZA=', '', '', '', '', ''),
(165, 'dee@enclave.vn', '$2a$08$1kuvIore3V62p0bq/HToOObLBpaEyJzAdV4YOUNcfjE6eUS3rS4H2', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:52:55', 'Dee.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Dee.JPG', NULL, NULL, 'Dee', 'Nguyen', 1, 1, '', 0, 0, 'f71a6b6b1ee5d8b30b0854514751c2f54fa23b42542302b8887085fe7fb56bd6a5e1b22d5c43037b0b2183f170424edf9650773985077ddbdbd4279cc98e3cc0p0xbHIfa86i+OYS/4xymdjLcTtPeDxmWpgxp4lmEsFc=', '', '', '', '', ''),
(166, 'eric@enclave.vn', '$2a$08$M41tc5ZB0xKlEkIJ4jPENOW37fHAtn.KgYMOinRCNBRoy7U71PMpm', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:53:20', 'Eric.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Eric.JPG', NULL, NULL, 'Eric', 'Nguyen', 1, 1, '', 0, 0, 'dba38c726dee82a8294bee353c8a968b0b27fcf59b24922b8f3f442a295429756fc6a3033ded10b836ed1fb3376be5869ca4d4f2bd755759926fc92469156739BOpVWyabgntNqWIueullLFRzC/zkfeFQ7ZVvr7oiVl8=', '', '', '', '', ''),
(167, 'sunny@enclave.vn', '$2a$08$G5YcEzwqyrvf0j/s8dqa3ONqM.h3Jw4tYkAFshVCvRLh82deaWr4m', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:53:39', 'Sunny.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Sunny.JPG', NULL, NULL, 'Sunny', 'Nguyen', 1, 1, '', 0, 0, '8b376d247c0aa37d4ded665e82ceee3b080a8ae83e3692a0e304bb1e3e50681d4a7357c84e0fcfd1f5091bc01f1e1ab8ea29b4b98cef80030e94d6a023cce1b972cMB9bC1oN5sf+S3b5IFEk0L79ZhfhidUAbKkN20/M=', '', '', '', '', '');
INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `confirmation_token`, `confirmation_sent_at`, `created_at`, `updated_at`, `avatar_file_name`, `avatar_content_file`, `avatar_file_size`, `avatar_updated_at`, `first_name`, `last_name`, `floor_id`, `shift_id`, `what_taste`, `want_vegan_meal`, `admin`, `authentication_token`, `read_announcements`, `read_comments`, `read_replies_announcements`, `read_replies_comments`, `gcm_regid`) VALUES
(168, 'ballard@enclave.vn', '$2a$08$DX3eWp6DmP/Cq7g8/gtRX.9Rnwno35a2SL3yWRHpR7ueu7.RelWVS', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:53:57', 'Ballard.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Ballard.JPG', NULL, NULL, 'Ballard', 'Nguyen', 1, 1, '', 0, 0, '473f018ebd2ed76ff0a4a85cda10925fb17b815306791ef24e7db8129c75b7b5f593bff3897f115cc6d5c1384eacaa92a6939210a114d13e15b955e38231ef3e4o0CVrgkbqXLIMLtYke+VgY6BDxomZRCjEFCXfBhbpg=', '', '', '', '', ''),
(169, 'baker@enclave.vn', '$2a$08$HGJHTSaTnIy2ZWjPMcJzzOtr7pvVeVZfOCGC7DeEr25/r/59SGluK', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:54:12', 'Baker.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Baker.JPG', NULL, NULL, 'Baker', 'Nguyen', 1, 1, '', 0, 0, '152fd3d17b59ffb8de0ece3f4cebf9a58c893b324db9c0588d1a3eeb112a6993f2a22be348173941c314cc925ee0faf44c651700796f1dfafb43ce4a66bc723fG6w8MHZKax4HfKZOkt313kmZuLXciFVHw++DU3W3tQQ=', '', '', '', '', ''),
(170, 'jimmy@enclave.vn', '$2a$08$nSVkvdWDwjPdRr8Hsy/L7eYFN0mNXusUdwi.GkgWYCNvWmSNOtsaW', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:54:27', 'Jimmy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Jimmy.JPG', NULL, NULL, 'Jimmy', 'Nguyen', 1, 1, '', 0, 0, '9319441e25b3d77e1ae43ae73514a9524fd50a59fec5d3d4449737f10300b47d6ecb7f2a82844a0f16d9c8a4db356ddfe8cbd53a3e54172531a9e5e6b0c56445WhQ0eA+kwa9GxKeONH3u+F+/U5U49covuQK4rkt5X8s=', '', '', '', '', ''),
(171, 'kurt@enclave.vn', '$2a$08$sERK7hMUnp4lBZDMo3upjOpLoD0Jr.fNok7DIbHT8H8q/pmwLLD7e', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:54:40', 'Kurt.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Kurt.JPG', NULL, NULL, 'Kurt', 'Nguyen', 1, 1, '', 0, 0, '496e15177f7e48453b977c4a8ca8d93ae128f56ad7e852fcc55636c12994212ec7b6b9a3fc7738147b8818aee52b3b4559ef6578c75c2bef9ad2acebc72f012a8EfsEX+vF4asEQQ8pERjEcnzYPbN97qscstnwj6he2w=', '', '', '', '', ''),
(172, 'enzo@enclave.vn', '$2a$08$9QnelsyhSKK8dpTxzBLauenEuLU9yb5AMMmOt5p3amTGHw3tisTOC', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:54:58', 'Enzo.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Enzo.JPG', NULL, NULL, 'Enzo', 'Truong', 1, 1, '', 0, 0, 'c0b70d0cb3ff1cef1261c6125c32f661c558df5c75ca0068fd15a0d9834850bb8a511a8af16b22f46eccbab6d43b1e84f804e6149a8e4908e944022da29d4980zGHyX80OzqeN9+zJBUgS8r7ahUyAefThDfbydyZWJPE=', '', '', '', '', ''),
(173, 'keane@enclave.vn', '$2a$08$pQryqnQqUwDanBaXdp0T1u0iXQPTmEdclY9NaEG2ZCEWgcNuIITPK', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', 0, '2015-11-09 09:16:37', '2015-11-09 09:16:37', NULL, '2015-11-09 09:16:37', '2015-11-09 09:16:37', '2015-11-11 07:55:20', 'Keane.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Keane.JPG', NULL, NULL, 'Keane', 'Pham', 1, 1, '', 0, 0, '94160a0e3cfb9d1f100d732b76c980879c2faf238f40f39c50c91da131fe8eee030e8d0f8af22af946e14137283f3514af6afe763c05fbb505f5c9d630987be3YMvmCJ4KLRcMzzdBqBWM/aSDYTm9b7i20723U4cb6qk=', '', '', '', '', ''),
(174, 'theresa@enclave.vn', '$2a$08$BjVrwyB/vzr/EXmYvm7.E.X.HL627SVz.ZeKP8UI.a1ox8I9IG8Ma', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:55:38', 'Theresa.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Theresa.JPG', NULL, NULL, 'Theresa', 'Pham', 1, 1, '', 0, 0, '674e450d70fe894881654b75964ef468c3f76952b34b7efcb2e7c57f47fc747baa82f50a51d5742dc27375840a825ba7c60df8f7beb74a398d42bfbbdd11d8f978XG4IjHuHKusC8rzlcw4g3+PzcOeOZijFC69pAofe8=', '', '', '', '', ''),
(175, 'sarah@enclave.vn', '$2a$08$dC7rSr70bbASxqpFGSy0i.r.RmiCAQVu4J2k.vjfjfbWB/SWHhy3e', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:57:15', 'Sarah.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Sarah.JPG', NULL, NULL, 'Sarah', 'Pham', 1, 1, '', 0, 0, 'c6098984ba9edbd2591d426cd03337f277bd09c2545722dd6fd654258fa19bba06239c653fabb28202749d061c6a5005dcd76a4704d225cbfaed50b057ccd8240ZvTrnO/Xd1TDIz5+2w88/O/pnopvVa6iqI6D1M033k=', '', '', '', '', ''),
(176, 'charles@enclave.vn', '$2a$08$2h.bjqzeQtloYco1JyOKKugcGSmQzz6N9MOaAafIdjwW9LEbi/hmq', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:57:37', 'Charles.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Charles.JPG', NULL, NULL, 'Charles', 'Pham', 1, 1, '', 0, 0, '1ae5b681e933fde6ceccfb302032c00046d99bc23a7ecb30c2fe483e8d19f17e4d295519e05aebfccb603cd77f63e89bbd094d2d415d0c366e3e21c2a2da86bdy9MQJ5g/pSJmGLORH2TpxsZ0HZnrwe/MaKgL0bQ4TIg=', '', '', '', '', ''),
(177, 'tracy@enclave.vn', '$2a$08$tgl/SYHVyYdnY7QcURgUk.gTDQ8KBlM1Hp4sSqDfCojEI2uOYXP6i', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:58:09', 'Tracy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tracy.JPG', NULL, NULL, 'Tracy', 'Phan', 1, 1, '', 0, 0, 'e4a5ee9b80caa63d930bcd33348068cbc6b43b3576d31edb7d8062aeb2ba5e79915e049f68cfa4c5014040e4f0c4c1954b694659740b45b80d3eb418c563b3e3+umbd8YoORcBS4ljgaACmI5ibYplxnPAxD+/ujmlZMk=', '', '', '', '', ''),
(178, 'harris@enclave.vn', '$2a$08$h/vp0l4qaVcuwhk4X2Cy/uVJqbi5oCOIznplgSKI0mM0fuS9VprX.', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:58:45', 'Harris.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Harris.JPG', NULL, NULL, 'Harris', 'Phan', 1, 1, '', 0, 0, '3894d044c7d6cae93d9a3c972fb063f5cfabd647a5476e9226197e2dfaa6eba8b1500360e524e5b0381babc60f387c4c471e4c0d90ccc31ef90b6911a85e6f000Fs4LFBRkzUkQB4R3+rkiEd2VN8Qr8r72eCG3K9YsPQ=', '', '', '', '', ''),
(179, 'peter@enclave.vn', '$2a$08$.oYwSLNG96UoVvHsIrjZ.u0rt2ZT3sxxPVWe.CXYsW0RljN1ko3Lq', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 07:59:05', 'Peter.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Peter.JPG', NULL, NULL, 'Peter', 'Huynh', 1, 1, '', 0, 0, '4f4e04c876453268c0aa59d34787ec6bfd1aafdb19110fbd16a62a786c0456cd7a7cc7ffd671e9bafc28104633cccc2e87f4e308f6ba33c54c567ebfb34ea1a1/EkuSKCiHokjoIv6//QxZXyxwRE2l4ymMJCkI3MOTgY=', '', '', '', '', ''),
(180, 'perla@enclave.vn', '$2a$08$Fgc.HHiG3JCosxlx9nPceOJBkm.PLkDziQnGArA4YD3e68nYjVtV2', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 08:01:06', 'Perla.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Perla.JPG', NULL, NULL, 'Perla', 'Trinh', 1, 1, '', 0, 0, 'faa854fb9b8c08efbfcb043f7f6c7ba8deb72e71810eca3606fe0e5d278ddb2df0a2e3ca35d09677f3799f38c146daac94d0179a6d9e3169213482f2686bfc13BrXELnUa7j76YuhSRSIupesHBeB+ZqPLQJX/TG81uaU=', '', '', '', '', ''),
(181, 'prescott@enclave.vn', '$2a$08$dGfzh.V/YCtLe.oO2chlYeWj45tW3EQBeDRZhH.tx66HAy39XR85G', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 08:01:54', 'Prescott.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Prescott.JPG', NULL, NULL, 'Prescott', 'Nguyen', 1, 1, '', 0, 0, '8af5172e9b0c82877b6b47ee6783c755dde1f2a6d20996b1003700165a3acaaa26058fd8d622669410f5a793562d6ad9e0e4724f51a00aa0a23daa96a252365cGuNAHoi+TPz6ocQoN1Jt4fQjt/aU3Ri/L99Pu7jEC44=', '', '', '', '', ''),
(182, 'quinn@enclave.vn', '$2a$08$M3RhSTxJTTvW9IZy7j/aLeqayd7CT1ptq5djDyjm3Trmav6P644g2', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 08:02:23', 'Quinn.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Quinn.JPG', NULL, NULL, 'Quinn', 'Nguyen', 1, 1, '', 0, 0, 'd9ccebcf6a3c1add6d0d4ba71cf22b99dd9820b4f733ecf5bc6d6a657e2733cd6cdd904b5e781aaad53fca72f5365887e0136b08879b6902ddea117090578fa6gcJ+XiM2zYJ5yE6f2T5am1pECxP6zTJJciV78IUFI8U=', '', '', '', '', ''),
(183, 'smith@enclave.vn', '$2a$08$fhWsVvlWD02zKS1.nJHJfenol6fO6LZLxNlTPBXFVPrwfuWIgGNwa', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', 0, '2015-11-09 09:41:10', '2015-11-09 09:41:10', NULL, '2015-11-09 09:41:10', '2015-11-09 09:41:10', '2015-11-11 08:02:52', 'Smith.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Smith.JPG', NULL, NULL, 'Smith', 'Vo', 1, 1, '', 0, 0, 'af14bb8934eb993dc6ca4b3475ef55e8683235718deb99a3964551cd117b648f3ac1e7a5f3c7686ab694ca458885b67a2340c82cb7828c1e5e3066c81e61944b33htEZxJGhO4TyMBWfhB3/6r0G4g2O9fFMbTcH2KZ7Y=', '', '', '', '', ''),
(184, 'tywin@enclave.vn', '$2a$08$ZuIcUanAVgljLTcK8agQlOB4SXZsvRbUn1t/OO2yGfXhUTubpHiGG', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:03:21', 'Tywin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tywin.JPG', NULL, NULL, 'Tywin', 'Do', 1, 1, '', 0, 0, '249458a2e2304a9322c86db3ce549b33ae4564ea666890a7dc430f1d1b8f8f5a12141ea789f81af6f2ca3ec60f0fbce387e6354cd46010a0176cb422b74688d8jr9Vstl+3NrQnAqWUX22JcfbSBM2udpT1aRl448bwmk=', '', '', '', '', ''),
(185, 'vania@enclave.vn', '$2a$08$OVHaEzESpO1.7tNfTlndPu9rk/NrcKNYeycm0K3VHXVLQ6DdkYu5a', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:03:47', 'Vania.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vania.JPG', NULL, NULL, 'Vania', 'Thai', 1, 1, '', 0, 0, '2d2630541125089eba01d963b3eacaaa0fb2a2330ea39bec2a3f71ad41de896ad52cb90fb602ff6a94e32e830eaa7354974286f08f830ee07f1d75fc821145fcxYeoF8B7roRZfIIAYgGoiY8QuVKXob5tccmGH0M6y1o=', '', '', '', '', ''),
(186, 'nadie@enclave.vn', '$2a$08$Jy9Tj0c29KxHM5ZiEofzxOvhjJeLKwwl3SyLQW8fx5H7mx176RVqy', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:04:08', 'Nadie.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nadie.JPG', NULL, NULL, 'Nadie', 'Thai', 1, 1, '', 0, 0, 'cfd58c57c876e8503c42cae6ca81a106320a54d099beab685f85710abed48ef41b7dc27e80125a79a14b2cce9a921a8d49f21cb06bd28923057bb809c4ae254a0BN7bhau6iyDYAl/zcfJbzI6vVQv6i1vlbtX6R5q2QU=', '', '', '', '', ''),
(187, 'thurstan@enclave.vn', '$2a$08$e7x8L1evXDrc3jaCWdWAHeuStdwjcWuhl4ENHbaumdZEtvYEaJR8m', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:04:49', 'Thurstan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Thurstan.JPG', NULL, NULL, 'Thurstan', 'Ngo', 1, 1, '', 0, 0, '8acdc4691edb523ad7c31f4ced19ca5fe6b1d08d31d7ba7b1ba6a8797bb3a17dca90099dd80b8b838a0ee6d6e4e2325b6123aa0976d9e7baa36b397252590239k2Uq5/KKyl0Ayoy0395xcL1/59FYvPDi9fGaZwnUpfY=', '', '', '', '', ''),
(188, 'tobin@enclave.vn', '$2a$08$RxMhbBSYD5Y1.RZyHp.mSOJuZ4Af8lsMZnrNz12L3cCF1vRAf4ePW', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:05:12', 'Tobin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tobin.JPG', NULL, NULL, 'Tobin', 'Le', 1, 1, '', 0, 0, 'fab12574befbff97705872bc8e33fee0650bffa8ee603c4c243f7ec33c04577206d24860727bb216069eee957bf24378c75d9d0580fa631c1257a036a3c7c498YNITCsNUdIR7qAJT1laiBBOTAjZAqOnFW0S24aFGK3s=', '', '', '', '', ''),
(189, 'tammy@enclave.vn', '$2a$08$FqTKSdVlvVU6cMXhtnbrDuwncIcLycC9JGw2l/DuVaN5NhujzE0z.', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:05:48', 'Tammy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tammy.JPG', NULL, NULL, 'Tammy', 'Than', 1, 1, '', 0, 0, '06201fdc89a083605c46beca302c603707a7a6d1a6dcfb8d87888dd510b9c32b7e82b4271ba76f2bd5d95bdb69ccad465514e260e1cef45dbfce6075738612e6oASfE4tbpkiwK/ig3MraCOCiSNvhY3Lstos7kP7yWlM=', '', '', '', '', ''),
(190, 'harva@enclave.vn', '$2a$08$Eep7TINj8AIFMvTz3nBr.ucC4PStYyo9.cnPM4y5PkNLPOkJQO7EG', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:06:20', 'Harva.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Harva.JPG', NULL, NULL, 'Harva', 'Than', 1, 1, '', 0, 0, '714aa403ddb6c89029993001e3b56926e92d39458529a14373da1092237fa90668780e2a1af70a71660f01368aefecd23539ee04cb3d41fdb0372631571ebb26s6rG+cr3uWZYwACHse+kifHoPErCrjTGXNSf/6cRb7Y=', '', '', '', '', ''),
(191, 'timon@enclave.vn', '$2a$08$yKGkpJ5jtvVjiTn8JMhxV.m7mTL8EpaG4gVLbQe/O0r3OaJ2U1sZC', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:06:49', 'Timon.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Timon.JPG', NULL, NULL, 'Timon', 'Dinh', 1, 1, '', 0, 0, '829a952cfef59d854046a85d0d3414cbcb8d387fa0147faacb958ea8a1b73d8d06f71233e8e71124264bebf3cccbfecb8066754086ff97fb7b9ea965f74f73b1wtTGZczB09aBtuE3cXTNfENFgKIQXmawuC5B0xkmcIg=', '', '', '', '', ''),
(192, 'tansy@enclave.vn', '$2a$08$B9BcLlqL2CNwXBVmHtj2Y.ICJuRUcBRqeyfVfyMDZwD78jPtEm3BO', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:07:16', 'Tansy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tansy.JPG', NULL, NULL, 'Tansy', 'Ho', 1, 1, '', 0, 0, '5436a63a1197938ae4750fe0d8a5486292c2525506a6eb4a8be4eff917fcbc74dd12120b414ae905abd1caa63b9e328ca7873cbecf7523b353b110814cdcefc4V67j66NBSSipdOdNtWGdKWD4DVHT5qMLhRyADQOjHwg=', '', '', '', '', ''),
(193, 'tory@enclave.vn', '$2a$08$rBNJoyEfztG/6Gbrb/fXcuVSiFlbEgko3g.lHJw3uUyap8d3c01mm', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:07:51', 'Tory.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tory.JPG', NULL, NULL, 'Tory', 'Tran', 1, 1, '', 0, 0, 'aaeb96474069a01a484b4eb35bb30654ed1a50e87f8db9694a271c099eab9b887f8413fe70f00eec0061972d85ce3ea418fa22c9827818b25e7dc23c5daf999d7iVDKkXAaGvBiDw43XLPjw1Qan7uNjGZjOz6xay7q6c=', '', '', '', '', ''),
(194, 'timothy@enclave.vn', '$2a$08$Fi3nWomwQ3MVHXTRzHla.ubDbx3iTT37ZpRetZYqsF4qb2BDv5Nqy', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:08:19', 'Timothy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Timothy.JPG', NULL, NULL, 'Timothy', 'Phan', 1, 1, '', 0, 0, '20a3591ce2c323af4cd410375f5b379db7b915719467e3545674e497d6a76d64b00c87930a342da8e52e1c1e668326afb65980247238aa1f1ab27554ac83befdM8rD6agIvBADbMVROBuSYvksCSw9TJVBhas5MuZE96o=', '', '', '', '', ''),
(195, 'kathy@enclave.vn', '$2a$08$VEKVOYOY.C9hOBOh5Zt64eUD7/BtNSfVWk3b4WrWg2my//2ZoAN5S', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:08:52', 'Kathy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Kathy.JPG', NULL, NULL, 'Kathy', 'Tong', 1, 1, '', 0, 0, '81cb64394096a34342497b8153ccffe44d146e630f7220f515f634c3cbeaa19baa67098837074dfd27609c7e301fbe79aef3a781a6bf2cc0d56d8266e856ed744jFz4+VD3SGD2vdJdvJDHBAj6XcQR8KvVYbf3YxLRpA=', '', '', '', '', ''),
(196, 'turner@enclave.vn', '$2a$08$WJ0ylnphhLKueoKPIj5XqOtO4pPTwvPQDEtssVyA2ZMkbGorE.SKC', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', 0, '2015-11-09 09:41:11', '2015-11-09 09:41:11', NULL, '2015-11-09 09:41:11', '2015-11-09 09:41:11', '2015-11-11 08:11:08', 'Turner.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Turner.JPG', NULL, NULL, 'Turner', 'Tran', 1, 1, '', 0, 0, '7cc0b0211798eae3dfa343e8b1efb550b5fe8849607e52426567c89663f452cb8929fd510a05d58ad4c8a1941dce7479bb5c5ac7e0a66472a6ab441c53505c3103dQ2kUxoVR+EGk4XXfjKh4BVTUj2dDtuFxx8QotJFE=', '', '', '', '', ''),
(197, 'terry@enclave.vn', '$2a$08$7W3bKa9RdvHoShNrgCyq0ewjJXxvrVML4g931pR3lxfSeWHJRCWe6', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:11:56', 'Terry.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Terry.JPG', NULL, NULL, 'Terry', 'Tran', 1, 1, '', 0, 0, '6b2f05c3ebafd489339d64e39317275d2b68fe44ed4a92d240ced54527a007584b12eefb1b360dce24ce0240e201bf15f44a0452982bf93d9875da7b236cf887q/ONA6bH7u/azqh5r+ujNV2JmJAFzvSUN48FcTraWaw=', '', '', '', '', ''),
(198, 'hank@enclave.vn', '$2a$08$ce43OYtV1.NECY5.ZG5PAecxu3SHt/qohbTaqNvk8bx9BUk6eplq6', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:12:22', 'Hank.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hank.JPG', NULL, NULL, 'Hank', 'Tran', 1, 1, '', 0, 0, 'd1cc566c3a37feaac0b6869eff94628d3eeddc36e5b20637f79a80ddd4e7e7eef2a99d10e058cdd52b5c69f6ad919131fd1bc0529dbc12d806b5018d255019c8opsOwvbGHeaMo2yt/VgfxJeO6iJd/lXJKfoKDVRhlm4=', '', '', '', '', ''),
(199, 'talon@enclave.vn', '$2a$08$OabfOmNI4iTJijqwd0R7WeYDwABdz3ilZ5poJ1oGfGJhXe5J.Fk5a', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:12:50', 'Talon.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Talon.JPG', NULL, NULL, 'Talon', 'Tran', 1, 1, '', 0, 0, '511013e8d723c3e1b2edc8f1f54a2216df18aaf7795cf9cc82dc00b08eb6ef9ebf58805b4afd82c37048a3dbd7c578feb0c62956af5aa1a615cc3d33fed4f21eYCk5gtgG793XAg5yup5NDLdIeNNOlxpaQiUgr/kXIjc=', '', '', '', '', ''),
(200, 'duke@enclave.vn', '$2a$08$3zo5sO3nVP1YyclFX.7AvupgvlZDB4kizeJGZy1yC5muD4Iul1DAu', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:13:13', 'Duke.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Duke.JPG', NULL, NULL, 'Duke', 'Tran', 1, 1, '', 0, 0, '280df04cf4b4014717ba7169ad35a1e62d4d0a33b4f4470866e983cd0720d52d038998dc59e918dc446a4d9ec467897beb4244fe460168eaa40cb413bc2f7fa21YLFJk83m+bp8quppfWR8XAmfU/fBFTzW/3S+hsRIKM=', '', '', '', '', ''),
(201, 'chloe@enclave.vn', '$2a$08$yd/HPimd3fmwCFv6.xUfBuUNztVs65udbOhhe3VvIMnpPpwpmPMMG', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:13:39', 'Chloe.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Chloe.JPG', NULL, NULL, 'Chloe', 'Tran', 1, 1, '', 0, 0, '9744e9afcd3437383499d161ff0f3c84d74652d0a92f353706426380d00e7c0bc5b5ca2a63ec10603f9c5da9075117444c9f2b2e8d56a166cbb981dae27a4839T7UKvdwTIRpQMV8ieqkZ6oKZBYVRa7c9yBRAyB5c0Gg=', '', '', '', '', ''),
(202, 'lyn@enclave.vn', '$2a$08$xQq9SBuu1XSfFx3lOemTAOJ0D.Pxhya7p/OzNFSr8oeTIVArMvUqi', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:14:06', 'Lyn.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Lyn.JPG', NULL, NULL, 'Lyn', 'Tran', 1, 1, '', 0, 0, '75070748ba706f79a2f250bdc131df1d050f5225a65e18e810daf93187c21f2343c42bd76a4bf3c0bf3127a808f3c73a3097a3643aafede3768076931ae794b9seYNFcAgAj7G4YHnPPVcUuQXqZrd9kMcxPbelLVACu0=', '', '', '', '', ''),
(203, 'hawk@enclave.vn', '$2a$08$A6CaFkTvxWNU/bAkgeKlSuJdz5.txvcH5SQmacWH0RehGbPOSAkz6', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:14:34', 'Hawk.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hawk.JPG', NULL, NULL, 'Hawk', 'Tran', 1, 1, '', 0, 0, '83e0729fe65a37a0bbedf85a1f1e036c7c8a4d86ab3cd181a5e55014ca9157ebf86a8e33532c9a562d392eb18838f9a60dcaa61db13216f903ca866845492781jSw2vXR54zu5+C1fo/MM1GlI2NB/d0KQB1WYKPbRnxc=', '', '', '', '', ''),
(204, 'audrey@enclave.vn', '$2a$08$x6jxfe4Mx8pZbe79VcbTMeWI7AM/Ee8hQfbo3/YY9z/0bNCr6I3lC', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:15:26', 'Audrey.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Audrey.JPG', NULL, NULL, 'Audrey', 'Tran', 1, 1, '', 0, 0, 'b5cf9da05f5771c40e9892fb0d2d2ad1d3521872400ebe6aedbd950fad2f5ab5f4f92b2a643ee9ba4c41f1a95429de9f393b38a64315bca1598900f41929800f0VL2wn8aYpN+E1bk7RGKLfrW+rgH3LVp0EtkMTSc/nk=', '', '', '', '', ''),
(205, 'perry@enclave.vn', '$2a$08$/3S.9ecJ.Rlx.k7/7YwBKuMSI3cHx5eQ/6nNyGjoC5gOfusInc6eK', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:16:02', 'Perry.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Perry.JPG', NULL, NULL, 'Perry', 'Tran', 1, 1, '', 0, 0, '4d8b1497d10b14e6f22a7b3ee79106a5a320948fe2841d2fb92831de8b9c6573c216e141be65178adf63b8b7b55934219c663f3b8854b62a0e58a590d8089c659T/cyIQPmAQjawNYodg6n/5mp1yMH3uc7zEjsA0s2GA=', '', '', '', '', ''),
(206, 'nolan@enclave.vn', '$2a$08$oitZRcuwmSkP2VnQ45fvMOunEWXueUVi.luIr334cCREG3VNNfJGC', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:16:30', 'Nolan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nolan.JPG', NULL, NULL, 'Nolan', 'Tran', 1, 1, '', 0, 0, '1ac251208cf0d282fc08db57e0bfb19694853785420ffd2ae96852c790d7032c4f8e32f3650133897049cb1cbc7654bfdab139292a4306709e49a46f2d24dc34Br7Vt7l4D9LTCl/No+LQLDsjZ9IvEfeAHULa1RvVpEk=', '', '', '', '', ''),
(207, 'jane@enclave.vn', '$2a$08$fJZbut.H5.qDdofoB.TUoO9KW4E66Q8NnPDP1Qxi.MO94cwX1joK2', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:17:05', 'Jane.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Jane.JPG', NULL, NULL, 'Jane', 'Pham', 1, 1, '', 0, 0, '21050195b969b2a28ebb89b51627ac019c4756b9f4e1638854c703cc3df602fda9c5e3072f76c259a8ebd99998405ed9c2081c92827ce769b869a0fcaa595249wkAi+2VjehaKytXMxOC6zQtZ09bZhkDNCro0Oq3k9Sw=', '', '', '', '', ''),
(208, 'tiana@enclave.vn', '$2a$08$Pd2uZ5HSPzE4NYzoEc6GceBMroa1uUgh5z5hWqqFWe5bSPADtThBy', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:17:32', 'Tiana.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tiana.JPG', NULL, NULL, 'Tiana', 'Tran', 1, 1, '', 0, 0, 'f7706a0bc8e76d44528c9c77908c23ea4dba1df439d923883479b3ca491951dda9d69f551d23cf55cfeb4f5bf8aa4be731412f85a522f65d19f19ff3c26c1935OGvhAHaD0rIL2/dtVITV2NytWDzQfa9gXuyEHTeTJnQ=', '', '', '', '', ''),
(209, 'karl@enclave.vn', '$2a$08$xt.7SQ.SX5wttK9dgLlQluD4drKUkrv8ceszqym8t60/dZ9HL62TK', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:17:59', 'Karl.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Karl.JPG', NULL, NULL, 'Karl', 'Trinh', 1, 1, '', 0, 0, '8d3a917f1303dd730e68388aa380f387504ad24fac21b3f2e30e18eaa8fe28d172c5cea1efff2835dab6abd5139d46f118829d82408a7be7d96c4e4252f83a3dHS+sRzFHjYIZqapKuGNrof8AQxKvneeeJkYPCGHJiFg=', '', '', '', '', ''),
(210, 'justin@enclave.vn', '$2a$08$3Y.8BrXTfnpfUQ6wy1Xm/.ufA5ZEUHnvKBmKctP6MUjhpIKqyR5OG', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', 0, '2015-11-09 09:41:12', '2015-11-09 09:41:12', NULL, '2015-11-09 09:41:12', '2015-11-09 09:41:12', '2015-11-11 08:18:28', 'Justin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Justin.JPG', NULL, NULL, 'Justin', 'Truong', 1, 1, '', 0, 0, '7b504ef0ca5f8d6dd3f58c36d053550bea91e162a2a92c254ae1328500822c686fca993513f0e6126f928c51fd531d48f1cbdbf40e3d17dc61e3d9351e8408e4gddM/AiRyAh1k5VEQUt3hguSpISjbKwjBR0Nonjo7sc=', '', '', '', '', ''),
(211, 'teddy@enclave.vn', '$2a$08$rCBuHKEZ/iQQ00KYY9d3TO7CdzLJl1RqWVJaBGVVVFnSHNaQH44rS', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:19:00', 'Teddy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Teddy.JPG', NULL, NULL, 'Teddy', 'Truong', 1, 1, '', 0, 0, '4684d0219f9ce6b9eb0b88a26a3f6c9f166f777b6c8823eaf09322089d7798176df971b79279e073f9a84e326abf451be1357f86fc71fa4189f069eba7126832O6dcxHCF6KO0MQNbt5zl2isvt884GpR6DNtMOdBt2/k=', '', '', '', '', ''),
(212, 'hendrix@enclave.vn', '$2a$08$0YfsW/mbWALtVhgvtCKQTOUfEUhbC1uxMfSOqVacAMhyYIHedLwDS', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:19:30', 'Hendrix.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hendrix.JPG', NULL, NULL, 'Hendrix', 'Truong', 1, 1, '', 0, 0, 'ff3dbf4e4f1fe8758199c7e66e6aa920f7cb6f20ce9a8c9f614b4d321765d67fc23c52c103774313d289ab662678a8be1fd44f0d2f91c6d229180a444b4bc3aeEdT4g+Wv0Onf2D8O0aG9xxDbah4U2jp+/eOV7MdipPs=', '', '', '', '', ''),
(213, 'thierry@enclave.vn', '$2a$08$qb9XlJIwefnV6fHTo.qNj.yqToaIg18yZzskgUgLkk3nnrPtxPSF6', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:19:52', 'Thierry.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Thierry.JPG', NULL, NULL, 'Thierry', 'Truong', 1, 1, '', 0, 0, '9305883e7fb31a406c0c676488a9ac2aea7893f3bede236d5c6228c0efd2dca2ab680ec7b2829b58a458dfbb0fed68d454b82108c124157f05e74f3643e5fcc8JpHukuxtVLhOg+hKw3wKMyzKR3na7M9QPkjb0uKTlmM=', '', '', '', '', ''),
(214, 'darian@enclave.vn', '$2a$08$R7PwifdqO.ik74VhfQrJn.0tTOvx99RY.xAYSNtBoyTB4I6uiWYyG', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:20:37', 'Darian.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Darian.JPG', NULL, NULL, 'Darian', 'Ung', 1, 1, '', 0, 0, '054a12c965e918f0f55a182acd6133faf63c73ae277707aa73943e2beb8a7a67e7402b156e32fa533d9118f74976206bba02e7bfd895fdfd2d5433cbf5772c0fUKfDrXSICpSKurr44W8OAFjGbZ4wBLajBmb4MoBDg3Q=', '', '', '', '', ''),
(215, 'hilary@enclave.vn', '$2a$08$t.5TqYKttahgiLgkWf087OMBk4foSlh2czXZ8ddNeKjUJ8EyKGucy', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:21:11', 'Hilary.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Hilary.JPG', NULL, NULL, 'Hilary', 'Van', 1, 1, '', 0, 0, '451348adef56a17d4a8148792c14df4869f45e5cea92f0c463f540ed33d01ce8f02e1c548b1fade7d25bda97022d14d16e3b751e39a8cdeee3c45244702dedc2M6yPqY0quwuQbLhgXLRlOSCSOMOL7a6v+4Rd33Ehw0I=', '', '', '', '', ''),
(216, 'vinson@enclave.vn', '$2a$08$Jd.kPfuwWLWAJwtUgsh5sOLV7Cr3M37g9V2w300Po2YzNjOxXdfcG', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:21:59', 'Vinson.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vinson.JPG', NULL, NULL, 'Vinson', 'Hoang', 1, 1, '', 0, 0, 'bba91ff46b5e61c1b40fc5edcd5d97aa2a7d78ab6ae60b404c7fd4737213497a6d99588ac81bb9b4ded75f79dca8ebc54fa8a0646fe1ccf38a3cca92e186850cIZU1BVfn3QrmARLwNpwVJOZKDNrwV4WMoIfz/aK95W4=', '', '', '', '', ''),
(217, 'chuck@enclave.vn', '$2a$08$C5haO91FQestAlE0dbwD1.aADU6o4/OxjOoJF/fueXhkMXoUlgLma', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:22:18', 'Chuck.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Chuck.JPG', NULL, NULL, 'Chuck', 'Vo', 1, 1, '', 0, 0, '4f7158cbd10508d6fd2fa304cdadb8e0df535e23e75559a64bdea43a5b32336d54904a7b3e400dec590e742c131e2ad8b6a2920192eeb18cb7c49d869d3b63e96JL/uYbJIm5qnosFxPOZr2DB93tc4+Bp8vcH4ALN03k=', '', '', '', '', ''),
(218, 'luke@enclave.vn', '$2a$08$cVpypeIW4h.f9ZzqUEr5h.tvugOLSI5DlC4xL6FnwCUG/tVbOTKQm', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:22:41', 'Luke.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Luke.JPG', NULL, NULL, 'Luke', 'Vo', 1, 1, '', 0, 0, 'a9658fc473485559e5c3a0752a9e7f5d208b9874747dce8082c507f12ee4ebdd2a41fbf3e0d47c8ce8a2ba69f925ec71bd771291bea27807edd1b63b9abcaaa84+LuW0aa+0TSc8eu+jyojmisCTgTJdasM8aUjnnm8VY=', '', '', '', '', ''),
(219, 'natalie@enclave.vn', '$2a$08$pbRVU3zpzy.trNKXb60QUeTE.e/dBv2atHDgKqnpFFamdUKEfKchK', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:23:21', 'Natalie.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Natalie.JPG', NULL, NULL, 'Natalie', 'Vo', 1, 1, '', 0, 0, '257262a887162ee48a71ea5321b8ee57e7280079387f622a93746bf546b543466e8a72b14ecd2b07b3c252a741f7e9e56ba98a759e8d49a595df05fe793752f3EyKzYNvzJMjHWBZHbklumbkteD8ju7WvNj0SwDTjMTg=', '', '', '', '', ''),
(220, 'jolie@enclave.vn', '$2a$08$sYCUQgZGl3m/VkU1nMHUG..U8VNfxxDlvFPH9eplzsM10lURjJmEy', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:23:51', 'Jolie.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Jolie.JPG', NULL, NULL, 'Jolie', 'Vo', 1, 1, '', 0, 0, '3a829bda9a04572b13b5aa8d51f7e5a50144375b18ecac0c14822638024283fe8dc0f2e68539805fe6fe312a1a8ef645f9a1a20f7fa5c74cf6504841fd46926fepaaRii8o+RtnocnU2lgjFVQG1oKci/7FGHvAy+B5v0=', '', '', '', '', ''),
(221, 'tristan@enclave.vn', '$2a$08$aYBanbr3gQX4JpSgvmzlkOAKp7bngRc31qYQJfNyPkJ.rv6.6X1uG', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:24:12', 'Tristan.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Tristan.JPG', NULL, NULL, 'Tristan', 'Vu', 1, 1, '', 0, 0, '2d02748f550bfc8d7304a763b5686bc900f57ded2bbc52e88022a68cfae63216ad86fa091df3293784140c621a6d5fb4bf35dfb374207aff014a6c5c54b4ba35R5zWOecuO9WcFY9Yp0WK4vChJ7hhlxeg5XD8ot0bUOU=', '', '', '', '', ''),
(222, 'timmy@enclave.vn', '$2a$08$UB37L91/CVTP.9VyZj7wruy7YVOdx3SkAG9it4mqIDNANyu6GytWy', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', 0, '2015-11-09 09:41:13', '2015-11-09 09:41:13', NULL, '2015-11-09 09:41:13', '2015-11-09 09:41:13', '2015-11-11 08:24:41', 'Timmy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Timmy.JPG', NULL, NULL, 'Timmy', 'Vu', 1, 1, '', 0, 0, 'b69037cadc08aa5978b022a313b1b6987419d6da7a61ea7a86ce6d29ff3a4e7a8a78479ebb5ca447da2ccf3e9668dae3b7dc04056b3134e4c60f7eb3fa56cdf88QxGYMHrQjV1yNq2Sq0WCu0YhAPw4yuVCw7DR/WBMWc=', '', '', '', '', ''),
(223, 'nancy@enclave.vn', '$2a$08$Cgb5QuIPtAVgJkRUA2Dd6eGlgMx4H3yzj7HqFBVJS2x0aGDcZqcpW', NULL, '2015-11-09 09:41:14', '2015-11-09 09:41:14', 0, '2015-11-09 09:41:14', '2015-11-09 09:41:14', NULL, '2015-11-09 09:41:14', '2015-11-09 09:41:14', '2015-11-11 08:24:57', 'Nancy.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Nancy.JPG', NULL, NULL, 'Nancy', 'Vu', 1, 1, '', 0, 0, '54836d677fa5144fbe3b96d16c404aca803588cc88b5c7f531910871c648e712a19ab8ba72049c03bfa58f8e166003cd6f8143332f062c70e8028aacb82b1452NNII0jpwkXH3JadJmAq9NNTZMZwJ5G3XkU9nODGCCAM=', '', '', '', '', ''),
(224, 'vin@enclave.vn', '$2a$08$F/E1FFiqjzzgxuAqHPhqHe587LxmFpwwIL0NGzEWoARfMMxBfk/8S', NULL, '2015-11-09 09:41:14', '2015-11-09 09:41:14', 0, '2015-11-09 09:41:14', '2015-11-09 09:41:14', NULL, '2015-11-09 09:41:14', '2015-11-09 09:41:14', '2015-11-11 08:25:17', 'Vin.JPG', 'http://113.160.225.76:8989/elunch/assets/images/users/Vin.JPG', NULL, NULL, 'Vin', 'Nguyen', 1, 1, '', 0, 0, 'b15964c39b0b50f571b5165a3bbf6617aba196617709daec81f4dbefa0cbc2a2ec7b738fabd154dea83905e367aff5c45754bfff28c421ad5667473dfccb34e4sFq6IBU9z8wimy1sE2Ne9QGR5F0zMl9KmFR+732rWvk=', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vote_logs`
--

CREATE TABLE IF NOT EXISTS `vote_logs` (
  `user_id` int(11) NOT NULL,
  `first_day_of_week` date NOT NULL,
  `votes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
