-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 06:11 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rate` int(255) NOT NULL,
  `tax` int(10) NOT NULL,
  `qty` int(255) NOT NULL,
  `total` int(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `rate`, `tax`, `qty`, `total`, `status`, `created`) VALUES
(1, 4, 'Nokia', 15000, 0, 10, 150000, 'Active', '2018-12-23 14:34:29'),
(2, 1, 'SamsungTV', 42000, 0, 2, 84000, 'Active', '2018-12-23 14:34:29'),
(3, 5, 'Sand', 250, 0, 500, 125000, 'Active', '2018-12-23 14:34:29'),
(4, 6, 'Apple Phone', 15000, 0, 10, 150000, 'Active', '2018-12-23 14:34:29'),
(5, 2, 'Lenovo', 40000, 0, 2, 80000, 'Active', '2018-12-23 14:34:29'),
(6, 7, 'OnePlus6', 38000, 0, 2, 76000, 'Active', '2018-12-23 14:34:29'),
(7, 1, 'S9 Plus', 10000, 0, 5, 52500, 'Active', '2018-12-23 19:07:12'),
(8, 1, 'J7 Pro', 22000, 2200, 2, 46200, 'Active', '2018-12-23 19:27:35'),
(9, 2, 'Lenovo G50-80', 38000, 5700, 3, 119700, 'Active', '2018-12-23 19:31:27'),
(10, 3, 'MS Office Word', 12000, 6000, 10, 126000, 'Active', '2018-12-23 19:47:56'),
(11, 2, '1324', 0, 0, 0, 0, 'Active', '2019-02-21 03:56:16'),
(12, 3, 'MS Excel', 1500, 150, 2, 3150, 'Active', '2019-02-21 03:56:40'),
(13, 5, 'Gravel', 400, 3000, 150, 63000, 'Active', '2019-03-24 16:18:05'),
(14, 0, '', 0, 0, 0, 0, 'Active', '2019-05-24 04:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `pro_category`
--

CREATE TABLE `pro_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_details` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_category`
--

INSERT INTO `pro_category` (`cat_id`, `cat_name`, `cat_details`, `status`, `created`) VALUES
(1, 'Samsung Mobile', 'Latest Samsung Mobiles Phones', '', '2018-12-23 23:09:13'),
(2, 'Lenovo Laptop', 'Lenovo Laptop Range from 13,000 to 60,000.', '', '2018-12-23 23:10:06'),
(3, 'Microsoft Softwares', 'Various Microsoft Software for Windows', '', '2018-12-23 23:38:00'),
(4, 'Nokia', 'Nokia Phone Models', '', '2018-12-24 01:25:04'),
(5, 'Sand', 'Ordinary Sand and Gravel', '', '2018-12-24 01:25:32'),
(6, 'Apple Phone', 'iphone from Apple', '', '2018-12-24 01:25:58'),
(7, 'OnePlus', 'OnePlus Phone Range', '', '2018-12-24 01:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_details` varchar(250) NOT NULL,
  `ip_address` varchar(28) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_activity`
--

INSERT INTO `tbl_activity` (`activity_id`, `user_id`, `activity_details`, `ip_address`, `datetime`) VALUES
(1, 1, 'Wrong Password Inserted in Login', '::1', '2019-06-09 16:29:41'),
(2, 1, 'Correct Password Inserted in Login', '::1', '2019-06-09 16:30:09'),
(3, 999, 'Login Page Open', '::1', '2019-06-09 16:33:45'),
(4, 999, 'Login Page Open', '::1', '2019-06-09 16:33:48'),
(5, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:33:48'),
(6, 999, 'Login Page Open', '::1', '2019-06-09 16:33:53'),
(7, 999, 'Login Page Open', '::1', '2019-06-09 16:33:56'),
(8, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:33:56'),
(9, 4, 'OTP Send on Email', '', '2019-06-09 16:34:03'),
(10, 999, 'Login Page Open', '::1', '2019-06-09 16:34:32'),
(11, 999, 'Login Page Open', '::1', '2019-06-09 16:35:00'),
(12, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:35:00'),
(13, 4, 'OTP Send on Email', '', '2019-06-09 16:35:06'),
(14, 999, 'Login Page Open', '::1', '2019-06-09 16:35:57'),
(15, 999, 'Login Page Open', '::1', '2019-06-09 16:36:21'),
(16, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:36:22'),
(17, 4, 'OTP Send on Mobile', '', '2019-06-09 16:36:25'),
(18, 999, 'Login Page Open', '::1', '2019-06-09 16:36:44'),
(19, 999, 'Login Page Open', '::1', '2019-06-09 16:38:43'),
(20, 999, 'Login Page Open', '::1', '2019-06-09 16:38:47'),
(21, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:38:47'),
(22, 4, 'OTP Send on Email', '', '2019-06-09 16:38:53'),
(23, 4, 'Wrong OTP Inserted', '', '2019-06-09 16:39:02'),
(24, 4, 'Wrong OTP Inserted', '::1', '2019-06-09 16:39:25'),
(25, 4, 'Correct OTP Inserted', '::1', '2019-06-09 16:39:40'),
(26, 999, 'Login Page Open', '::1', '2019-06-09 16:39:57'),
(27, 999, 'Login Page Open', '::1', '2019-06-09 16:40:00'),
(28, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:40:00'),
(29, 1, 'Wrong Password Inserted in Login', '::1', '2019-06-09 16:40:04'),
(30, 999, 'Login Page Open', '::1', '2019-06-09 16:41:48'),
(31, 999, 'Login Page Open', '::1', '2019-06-09 16:42:40'),
(32, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:42:40'),
(33, 999, 'Login Page Open', '::1', '2019-06-09 16:42:42'),
(34, 999, 'Login Page Open', '::1', '2019-06-09 16:43:13'),
(35, 999, 'Login Page Open', '::1', '2019-06-09 16:43:16'),
(36, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:43:16'),
(37, 999, 'Login Page Open', '::1', '2019-06-09 16:43:19'),
(38, 999, 'Login Page Open', '::1', '2019-06-09 16:43:39'),
(39, 999, 'Login Page Open', '::1', '2019-06-09 16:43:50'),
(40, 999, 'Login Page Open', '::1', '2019-06-09 16:43:51'),
(41, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(42, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(43, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(44, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(45, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(46, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(47, 999, 'Login Page Open', '::1', '2019-06-09 16:43:52'),
(48, 999, 'Login Page Open', '::1', '2019-06-09 16:43:56'),
(49, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 16:43:57'),
(50, 999, 'Login Page Open', '::1', '2019-06-09 16:43:58'),
(51, 999, 'Login Page Open', '::1', '2019-06-09 16:44:09'),
(52, 999, 'Login Page Open', '::1', '2019-06-09 17:13:10'),
(53, 999, 'Login Page Open', '::1', '2019-06-09 17:13:18'),
(54, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 17:13:18'),
(55, 4, 'OTP Send on Mobile', '', '2019-06-09 17:13:21'),
(56, 4, 'OTP Send on Mobile', '', '2019-06-09 17:13:36'),
(57, 4, 'Correct OTP Inserted', '::1', '2019-06-09 17:14:00'),
(58, 999, 'Login Page Open', '::1', '2019-06-09 17:14:09'),
(59, 999, 'Login Page Open', '::1', '2019-06-09 17:18:02'),
(60, 999, 'Login Page Open', '::1', '2019-06-09 17:18:05'),
(61, 999, 'Login Page Open', '::1', '2019-06-09 17:18:09'),
(62, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 17:18:09'),
(63, 999, 'Login Page Open', '::1', '2019-06-09 17:18:12'),
(64, 999, 'Login Page Open', '::1', '2019-06-09 17:18:18'),
(65, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 17:18:18'),
(66, 4, 'OTP Send on Mobile', '', '2019-06-09 17:18:21'),
(67, 4, 'OTP Send on Mobile', '', '2019-06-09 17:18:25'),
(68, 4, 'OTP Send on Mobile', '', '2019-06-09 17:18:43'),
(69, 4, 'Correct OTP Inserted', '::1', '2019-06-09 17:19:44'),
(70, 999, 'Login Page Open', '::1', '2019-06-09 17:19:58'),
(71, 999, 'Login Page Open', '::1', '2019-06-09 17:25:00'),
(72, 999, 'Login Page Open', '::1', '2019-06-09 17:25:04'),
(73, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 17:25:04'),
(74, 4, 'OTP Send on Email', '', '2019-06-09 17:25:11'),
(75, 4, 'OTP Send on Email', '', '2019-06-09 17:25:23'),
(76, 4, 'Correct OTP Inserted', '::1', '2019-06-09 17:25:48'),
(77, 999, 'Login Page Open', '::1', '2019-06-09 17:25:52'),
(78, 999, 'Login Page Open', '::1', '2019-06-09 17:25:55'),
(79, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-09 17:25:55'),
(80, 1, 'OTP Send on Email', '', '2019-06-09 17:26:00'),
(81, 1, 'OTP Send on Email', '', '2019-06-09 17:26:17'),
(82, 1, 'Correct OTP Inserted', '::1', '2019-06-09 17:26:28'),
(83, 999, 'Login Page Open', '::1', '2019-06-09 17:26:33'),
(84, 999, 'Login Page Open', '::1', '2019-06-11 16:38:57'),
(85, 999, 'Login Page Open', '::1', '2019-06-11 16:39:04'),
(86, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-11 16:39:04'),
(87, 1, 'Correct Password Inserted in Login', '::1', '2019-06-11 16:39:08'),
(88, 999, 'Login Page Open', '::1', '2019-06-11 16:40:13'),
(89, 999, 'Login Page Open', '::1', '2019-06-17 06:01:36'),
(90, 999, 'Login Page Open', '::1', '2019-06-17 06:02:15'),
(91, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-17 06:02:15'),
(92, 4, 'Correct Password Inserted in Login', '::1', '2019-06-17 06:02:19'),
(93, 999, 'Login Page Open', '::1', '2019-06-17 06:09:09'),
(94, 1, 'Signup Done', '::1', '2019-06-17 06:13:51'),
(95, 999, 'Login Page Open', '::1', '2019-06-17 06:14:00'),
(96, 999, 'Login Page Open', '::1', '2019-06-17 06:14:43'),
(97, 4, 'User Enter Valid Email or Mobile no', '::1', '2019-06-17 06:14:44'),
(98, 4, 'OTP Send on Email', '', '2019-06-17 06:14:57'),
(99, 4, 'Correct OTP Inserted', '::1', '2019-06-17 06:15:21'),
(100, 999, 'Login Page Open', '::1', '2019-06-17 06:19:46'),
(101, 0, 'Wrong Password in Signup', '::1', '2019-06-17 06:20:15'),
(102, 1, 'Signup Done', '::1', '2019-06-17 06:21:54'),
(103, 999, 'Login Page Open', '::1', '2019-06-17 06:21:59'),
(104, 999, 'Login Page Open', '::1', '2019-06-17 06:23:10'),
(105, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-17 06:23:10'),
(106, 1, 'Correct Password Inserted in Login', '::1', '2019-06-17 06:23:16'),
(107, 999, 'Login Page Open', '::1', '2019-06-22 10:23:24'),
(108, 999, 'Login Page Open', '::1', '2019-06-22 10:23:31'),
(109, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 10:23:32'),
(110, 999, 'Login Page Open', '::1', '2019-06-22 10:24:12'),
(111, 999, 'Login Page Open', '::1', '2019-06-22 10:24:16'),
(112, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-22 10:24:16'),
(113, 1, 'Correct Password Inserted in Login', '::1', '2019-06-22 10:24:19'),
(114, 999, 'Login Page Open', '::1', '2019-06-22 10:59:27'),
(115, 999, 'Login Page Open', '::1', '2019-06-22 10:59:35'),
(116, 999, 'Login Page Open', '::1', '2019-06-22 10:59:38'),
(117, 999, 'Login Page Open', '::1', '2019-06-22 10:59:43'),
(118, 999, 'Login Page Open', '::1', '2019-06-22 11:02:05'),
(119, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:02:05'),
(120, 999, 'Login Page Open', '::1', '2019-06-22 11:02:05'),
(121, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:02:05'),
(122, 999, 'Login Page Open', '::1', '2019-06-22 11:02:09'),
(123, 999, 'Login Page Open', '::1', '2019-06-22 11:02:13'),
(124, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:02:13'),
(125, 999, 'Login Page Open', '::1', '2019-06-22 11:02:36'),
(126, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:02:36'),
(127, 999, 'Login Page Open', '::1', '2019-06-22 11:02:47'),
(128, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:02:47'),
(129, 999, 'Login Page Open', '::1', '2019-06-22 11:03:00'),
(130, 999, 'Login Page Open', '::1', '2019-06-22 11:03:21'),
(131, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-06-22 11:03:21'),
(132, 999, 'Login Page Open', '::1', '2019-06-22 11:04:30'),
(133, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-22 11:04:30'),
(134, 2, 'Correct Password Inserted in Login', '::1', '2019-06-22 11:04:38'),
(135, 999, 'Login Page Open', '::1', '2019-06-22 12:48:09'),
(136, 999, 'Login Page Open', '::1', '2019-06-22 12:49:25'),
(137, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-22 12:49:25'),
(138, 1, 'Correct Password Inserted in Login', '::1', '2019-06-22 12:49:33'),
(139, 999, 'Login Page Open', '::1', '2019-06-22 12:50:20'),
(140, 999, 'Login Page Open', '::1', '2019-06-22 12:50:22'),
(141, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-22 12:50:22'),
(142, 2, 'Correct Password Inserted in Login', '::1', '2019-06-22 12:50:28'),
(143, 999, 'Login Page Open', '::1', '2019-06-25 06:24:38'),
(144, 999, 'Login Page Open', '::1', '2019-06-25 06:25:00'),
(145, 999, 'Login Page Open', '::1', '2019-06-25 06:25:02'),
(146, 999, 'Login Page Open', '::1', '2019-06-25 06:25:07'),
(147, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:25:07'),
(148, 1, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:25:10'),
(149, 999, 'Login Page Open', '::1', '2019-06-25 06:26:39'),
(150, 1, 'Signup Done', '::1', '2019-06-25 06:26:51'),
(151, 999, 'Login Page Open', '::1', '2019-06-25 06:27:22'),
(152, 999, 'Login Page Open', '::1', '2019-06-25 06:27:33'),
(153, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:27:33'),
(154, 3, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:27:37'),
(155, 999, 'Login Page Open', '::1', '2019-06-25 06:33:42'),
(156, 999, 'Login Page Open', '::1', '2019-06-25 06:33:46'),
(157, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:33:46'),
(158, 3, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:33:48'),
(159, 999, 'Login Page Open', '::1', '2019-06-25 06:47:16'),
(160, 999, 'Login Page Open', '::1', '2019-06-25 06:47:19'),
(161, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:47:19'),
(162, 3, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:47:21'),
(163, 999, 'Login Page Open', '::1', '2019-06-25 06:48:10'),
(164, 999, 'Login Page Open', '::1', '2019-06-25 06:48:12'),
(165, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:48:12'),
(166, 3, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:48:15'),
(167, 999, 'Login Page Open', '::1', '2019-06-25 06:48:39'),
(168, 999, 'Login Page Open', '::1', '2019-06-25 06:48:41'),
(169, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 06:48:41'),
(170, 3, 'Correct Password Inserted in Login', '::1', '2019-06-25 06:48:44'),
(171, 999, 'Login Page Open', '::1', '2019-06-25 06:51:26'),
(172, 999, 'Login Page Open', '::1', '2019-06-25 10:25:58'),
(173, 999, 'Login Page Open', '::1', '2019-06-25 10:26:02'),
(174, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 10:26:02'),
(175, 1, 'Correct Password Inserted in Login', '::1', '2019-06-25 10:26:05'),
(176, 999, 'Login Page Open', '::1', '2019-06-25 13:55:10'),
(177, 999, 'Login Page Open', '::1', '2019-06-25 13:55:14'),
(178, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-25 13:55:14'),
(179, 1, 'Correct Password Inserted in Login', '::1', '2019-06-25 13:55:18'),
(180, 999, 'Login Page Open', '::1', '2019-06-26 05:07:36'),
(181, 999, 'Login Page Open', '::1', '2019-06-26 05:07:38'),
(182, 999, 'Login Page Open', '::1', '2019-06-26 05:07:47'),
(183, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 05:07:47'),
(184, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 05:07:51'),
(185, 999, 'Login Page Open', '::1', '2019-06-26 05:26:48'),
(186, 999, 'Login Page Open', '::1', '2019-06-26 05:28:14'),
(187, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 05:28:14'),
(188, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 05:28:21'),
(189, 999, 'Login Page Open', '::1', '2019-06-26 05:29:43'),
(190, 999, 'Login Page Open', '::1', '2019-06-26 05:29:58'),
(191, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 05:29:58'),
(192, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 05:30:02'),
(193, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 05:34:27'),
(194, 999, 'Login Page Open', '::1', '2019-06-26 06:22:23'),
(195, 999, 'Login Page Open', '::1', '2019-06-26 06:23:02'),
(196, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 06:23:03'),
(197, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 06:23:05'),
(198, 999, 'Login Page Open', '::1', '2019-06-26 10:29:40'),
(199, 999, 'Login Page Open', '::1', '2019-06-26 10:30:18'),
(200, 999, 'Login Page Open', '::1', '2019-06-26 10:30:18'),
(201, 999, 'Login Page Open', '::1', '2019-06-26 10:36:25'),
(202, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 10:36:25'),
(203, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 10:36:28'),
(204, 999, 'Login Page Open', '::1', '2019-06-26 10:39:32'),
(205, 999, 'Login Page Open', '::1', '2019-06-26 10:39:35'),
(206, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 10:39:35'),
(207, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 10:39:37'),
(208, 999, 'Login Page Open', '::1', '2019-06-26 10:39:54'),
(209, 999, 'Login Page Open', '::1', '2019-06-26 10:40:10'),
(210, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 10:40:10'),
(211, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 10:40:12'),
(212, 999, 'Login Page Open', '::1', '2019-06-26 10:55:20'),
(213, 999, 'Login Page Open', '::1', '2019-06-26 10:55:23'),
(214, 999, 'Login Page Open', '::1', '2019-06-26 10:55:27'),
(215, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 10:55:27'),
(216, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 10:55:32'),
(217, 999, 'Login Page Open', '::1', '2019-06-26 10:57:59'),
(218, 999, 'Login Page Open', '::1', '2019-06-26 10:58:09'),
(219, 999, 'Login Page Open', '::1', '2019-06-26 10:58:12'),
(220, 999, 'Login Page Open', '::1', '2019-06-26 10:58:16'),
(221, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 10:58:16'),
(222, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 10:58:19'),
(223, 999, 'Login Page Open', '::1', '2019-06-26 11:01:33'),
(224, 999, 'Login Page Open', '::1', '2019-06-26 11:01:33'),
(225, 999, 'Login Page Open', '::1', '2019-06-26 11:01:36'),
(226, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:01:36'),
(227, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:01:39'),
(228, 999, 'Login Page Open', '::1', '2019-06-26 11:04:39'),
(229, 999, 'Login Page Open', '::1', '2019-06-26 11:04:42'),
(230, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:04:42'),
(231, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:04:45'),
(232, 999, 'Login Page Open', '::1', '2019-06-26 11:11:51'),
(233, 999, 'Login Page Open', '::1', '2019-06-26 11:11:54'),
(234, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:11:54'),
(235, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:11:57'),
(236, 999, 'Login Page Open', '::1', '2019-06-26 11:24:27'),
(237, 999, 'Login Page Open', '::1', '2019-06-26 11:24:33'),
(238, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:24:33'),
(239, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:24:37'),
(240, 999, 'Login Page Open', '::1', '2019-06-26 11:25:09'),
(241, 999, 'Login Page Open', '::1', '2019-06-26 11:25:13'),
(242, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:25:13'),
(243, 2, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:25:16'),
(244, 999, 'Login Page Open', '::1', '2019-06-26 11:25:54'),
(245, 999, 'Login Page Open', '::1', '2019-06-26 11:25:58'),
(246, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:25:59'),
(247, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:26:02'),
(248, 999, 'Login Page Open', '::1', '2019-06-26 11:26:51'),
(249, 999, 'Login Page Open', '::1', '2019-06-26 11:26:55'),
(250, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:26:55'),
(251, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:26:58'),
(252, 999, 'Login Page Open', '::1', '2019-06-26 11:28:46'),
(253, 999, 'Login Page Open', '::1', '2019-06-26 11:28:49'),
(254, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:28:49'),
(255, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:28:52'),
(256, 999, 'Login Page Open', '::1', '2019-06-26 11:30:32'),
(257, 999, 'Login Page Open', '::1', '2019-06-26 11:30:35'),
(258, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:30:36'),
(259, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:30:38'),
(260, 999, 'Login Page Open', '::1', '2019-06-26 11:57:56'),
(261, 999, 'Login Page Open', '::1', '2019-06-26 11:58:00'),
(262, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:58:00'),
(263, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:58:04'),
(264, 999, 'Login Page Open', '::1', '2019-06-26 11:59:33'),
(265, 999, 'Login Page Open', '::1', '2019-06-26 11:59:33'),
(266, 999, 'Login Page Open', '::1', '2019-06-26 11:59:37'),
(267, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 11:59:37'),
(268, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 11:59:40'),
(269, 999, 'Login Page Open', '::1', '2019-06-26 12:06:01'),
(270, 999, 'Login Page Open', '::1', '2019-06-26 12:06:05'),
(271, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:06:05'),
(272, 999, 'Login Page Open', '::1', '2019-06-26 12:06:05'),
(273, 999, 'Login Page Open', '::1', '2019-06-26 12:06:11'),
(274, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:06:11'),
(275, 999, 'Login Page Open', '::1', '2019-06-26 12:06:11'),
(276, 999, 'Login Page Open', '::1', '2019-06-26 12:07:16'),
(277, 999, 'Login Page Open', '::1', '2019-06-26 12:07:20'),
(278, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:07:20'),
(279, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 12:07:24'),
(280, 999, 'Login Page Open', '::1', '2019-06-26 12:07:24'),
(281, 999, 'Login Page Open', '::1', '2019-06-26 12:07:32'),
(282, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:07:32'),
(283, 1, 'Correct Password Inserted in Login', '::1', '2019-06-26 12:07:36'),
(284, 999, 'Login Page Open', '::1', '2019-06-26 12:07:37'),
(285, 999, 'Login Page Open', '::1', '2019-06-26 12:09:02'),
(286, 999, 'Login Page Open', '::1', '2019-06-26 12:09:21'),
(287, 999, 'Login Page Open', '::1', '2019-06-26 12:09:24'),
(288, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:09:24'),
(289, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 12:09:27'),
(290, 999, 'Login Page Open', '::1', '2019-06-26 12:29:58'),
(291, 999, 'Login Page Open', '::1', '2019-06-26 12:30:02'),
(292, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:30:03'),
(293, 3, 'Wrong Password Inserted in Login', '::1', '2019-06-26 12:30:04'),
(294, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 12:30:08'),
(295, 999, 'Login Page Open', '::1', '2019-06-26 12:31:09'),
(296, 999, 'Login Page Open', '::1', '2019-06-26 12:31:12'),
(297, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-26 12:31:13'),
(298, 3, 'Correct Password Inserted in Login', '::1', '2019-06-26 12:31:15'),
(299, 999, 'Login Page Open', '::1', '2019-06-29 11:39:12'),
(300, 999, 'Login Page Open', '::1', '2019-06-29 11:40:19'),
(301, 999, 'Login Page Open', '::1', '2019-06-29 11:40:22'),
(302, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 11:40:22'),
(303, 1, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:40:26'),
(304, 999, 'Login Page Open', '::1', '2019-06-29 11:45:40'),
(305, 999, 'Login Page Open', '::1', '2019-06-29 11:45:44'),
(306, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 11:45:44'),
(307, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:45:48'),
(308, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:45:52'),
(309, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:45:57'),
(310, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:46:31'),
(311, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:47:05'),
(312, 999, 'Login Page Open', '::1', '2019-06-29 11:47:13'),
(313, 999, 'Login Page Open', '::1', '2019-06-29 11:47:15'),
(314, 999, 'Login Page Open', '::1', '2019-06-29 11:47:19'),
(315, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 11:47:19'),
(316, 1, 'Correct Password Inserted in Login', '::1', '2019-06-29 11:47:22'),
(317, 999, 'Login Page Open', '::1', '2019-06-29 12:05:52'),
(318, 999, 'Login Page Open', '::1', '2019-06-29 12:06:10'),
(319, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 12:06:10'),
(320, 2, 'Correct Password Inserted in Login', '::1', '2019-06-29 12:06:14'),
(321, 999, 'Login Page Open', '::1', '2019-06-29 12:06:44'),
(322, 999, 'Login Page Open', '::1', '2019-06-29 12:06:48'),
(323, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 12:06:48'),
(324, 1, 'Correct Password Inserted in Login', '::1', '2019-06-29 12:06:51'),
(325, 999, 'Login Page Open', '::1', '2019-06-29 12:12:37'),
(326, 999, 'Login Page Open', '::1', '2019-06-29 12:12:41'),
(327, 999, 'Login Page Open', '::1', '2019-06-29 12:12:44'),
(328, 999, 'Login Page Open', '::1', '2019-06-29 12:12:52'),
(329, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 12:12:52'),
(330, 2, 'Correct Password Inserted in Login', '::1', '2019-06-29 12:12:55'),
(331, 999, 'Login Page Open', '::1', '2019-06-29 12:14:16'),
(332, 999, 'Login Page Open', '::1', '2019-06-29 12:14:19'),
(333, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 12:14:20'),
(334, 2, 'Correct Password Inserted in Login', '::1', '2019-06-29 12:14:22'),
(335, 999, 'Login Page Open', '::1', '2019-06-29 13:48:16'),
(336, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 13:48:16'),
(337, 999, 'Login Page Open', '::1', '2019-06-29 13:48:21'),
(338, 999, 'Login Page Open', '::1', '2019-06-29 13:48:27'),
(339, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 13:48:27'),
(340, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 13:48:37'),
(341, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 13:48:59'),
(342, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 13:49:25'),
(343, 999, 'Login Page Open', '::1', '2019-06-29 13:49:38'),
(344, 999, 'Login Page Open', '::1', '2019-06-29 13:49:43'),
(345, 999, 'Login Page Open', '::1', '2019-06-29 13:49:45'),
(346, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 13:49:45'),
(347, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 13:49:49'),
(348, 999, 'Login Page Open', '::1', '2019-06-29 14:06:59'),
(349, 999, 'Login Page Open', '::1', '2019-06-29 14:09:24'),
(350, 999, 'Login Page Open', '::1', '2019-06-29 14:09:27'),
(351, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 14:09:27'),
(352, 3, 'Correct Password Inserted in Login', '::1', '2019-06-29 14:09:30'),
(353, 999, 'Login Page Open', '::1', '2019-06-29 14:17:11'),
(354, 999, 'Login Page Open', '::1', '2019-06-29 14:17:14'),
(355, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-29 14:17:14'),
(356, 1, 'Correct Password Inserted in Login', '::1', '2019-06-29 14:17:16'),
(357, 999, 'Login Page Open', '::1', '2019-06-30 07:27:21'),
(358, 999, 'Login Page Open', '::1', '2019-06-30 07:27:22'),
(359, 999, 'Login Page Open', '::1', '2019-06-30 07:37:31'),
(360, 1, 'Signup Done', '::1', '2019-06-30 07:37:57'),
(361, 999, 'Login Page Open', '::1', '2019-06-30 07:38:03'),
(362, 999, 'Login Page Open', '::1', '2019-06-30 07:38:25'),
(363, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 07:38:25'),
(364, 4, 'Correct Password Inserted in Login', '::1', '2019-06-30 07:38:29'),
(365, 999, 'Login Page Open', '::1', '2019-06-30 07:45:27'),
(366, 999, 'Login Page Open', '::1', '2019-06-30 07:45:57'),
(367, 1, 'Signup Done', '::1', '2019-06-30 07:46:54'),
(368, 999, 'Login Page Open', '::1', '2019-06-30 07:46:59'),
(369, 999, 'Login Page Open', '::1', '2019-06-30 07:47:17'),
(370, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 07:47:17'),
(371, 5, 'Correct Password Inserted in Login', '::1', '2019-06-30 07:47:21'),
(372, 999, 'Login Page Open', '::1', '2019-06-30 07:58:59'),
(373, 999, 'Login Page Open', '::1', '2019-06-30 07:59:03'),
(374, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 07:59:03'),
(375, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 07:59:05'),
(376, 999, 'Login Page Open', '::1', '2019-06-30 08:03:08'),
(377, 999, 'Login Page Open', '::1', '2019-06-30 08:03:12'),
(378, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:03:12'),
(379, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:03:16'),
(380, 999, 'Login Page Open', '::1', '2019-06-30 08:03:40'),
(381, 999, 'Login Page Open', '::1', '2019-06-30 08:04:02'),
(382, 999, 'Login Page Open', '::1', '2019-06-30 08:04:51'),
(383, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:04:51'),
(384, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:04:55'),
(385, 999, 'Login Page Open', '::1', '2019-06-30 08:07:05'),
(386, 999, 'Login Page Open', '::1', '2019-06-30 08:07:08'),
(387, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:07:08'),
(388, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:07:11'),
(389, 999, 'Login Page Open', '::1', '2019-06-30 08:07:35'),
(390, 999, 'Login Page Open', '::1', '2019-06-30 08:07:37'),
(391, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:07:38'),
(392, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:07:41'),
(393, 999, 'Login Page Open', '::1', '2019-06-30 08:09:48'),
(394, 999, 'Login Page Open', '::1', '2019-06-30 08:09:52'),
(395, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:09:52'),
(396, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:09:59'),
(397, 999, 'Login Page Open', '::1', '2019-06-30 08:17:48'),
(398, 999, 'Login Page Open', '::1', '2019-06-30 08:17:50'),
(399, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:17:50'),
(400, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:17:53'),
(401, 999, 'Login Page Open', '::1', '2019-06-30 08:18:11'),
(402, 999, 'Login Page Open', '::1', '2019-06-30 08:19:02'),
(403, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:19:02'),
(404, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:19:27'),
(405, 999, 'Login Page Open', '::1', '2019-06-30 08:20:50'),
(406, 999, 'Login Page Open', '::1', '2019-06-30 08:20:52'),
(407, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:20:52'),
(408, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:20:55'),
(409, 999, 'Login Page Open', '::1', '2019-06-30 08:21:42'),
(410, 999, 'Login Page Open', '::1', '2019-06-30 08:21:45'),
(411, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:21:45'),
(412, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:21:48'),
(413, 999, 'Login Page Open', '::1', '2019-06-30 08:22:00'),
(414, 999, 'Login Page Open', '::1', '2019-06-30 08:22:38'),
(415, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:22:38'),
(416, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:22:42'),
(417, 999, 'Login Page Open', '::1', '2019-06-30 08:22:51'),
(418, 999, 'Login Page Open', '::1', '2019-06-30 08:22:56'),
(419, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:22:56'),
(420, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:22:59'),
(421, 999, 'Login Page Open', '::1', '2019-06-30 08:23:09'),
(422, 999, 'Login Page Open', '::1', '2019-06-30 08:23:35'),
(423, 999, 'Login Page Open', '::1', '2019-06-30 08:23:36'),
(424, 999, 'Login Page Open', '::1', '2019-06-30 08:23:40'),
(425, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:23:40'),
(426, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:23:43'),
(427, 999, 'Login Page Open', '::1', '2019-06-30 08:23:51'),
(428, 999, 'Login Page Open', '::1', '2019-06-30 08:24:42'),
(429, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(430, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(431, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(432, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(433, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(434, 999, 'Login Page Open', '::1', '2019-06-30 08:25:12'),
(435, 999, 'Login Page Open', '::1', '2019-06-30 08:25:15'),
(436, 999, 'Login Page Open', '::1', '2019-06-30 08:25:17'),
(437, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:25:18'),
(438, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:25:23'),
(439, 999, 'Login Page Open', '::1', '2019-06-30 08:25:30'),
(440, 999, 'Login Page Open', '::1', '2019-06-30 08:26:47'),
(441, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:26:47'),
(442, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:26:50'),
(443, 999, 'Login Page Open', '::1', '2019-06-30 08:26:54'),
(444, 999, 'Login Page Open', '::1', '2019-06-30 08:27:03'),
(445, 999, 'Login Page Open', '::1', '2019-06-30 08:27:07'),
(446, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-06-30 08:27:07'),
(447, 3, 'Correct Password Inserted in Login', '::1', '2019-06-30 08:27:10'),
(448, 999, 'Login Page Open', '::1', '2019-07-07 01:41:54'),
(449, 999, 'Login Page Open', '::1', '2019-07-07 01:41:58'),
(450, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 01:41:58'),
(451, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 01:42:19'),
(452, 999, 'Login Page Open', '::1', '2019-07-07 03:49:41'),
(453, 999, 'Login Page Open', '::1', '2019-07-07 03:49:44'),
(454, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 03:49:44'),
(455, 3, 'Correct Password Inserted in Login', '::1', '2019-07-07 03:49:47'),
(456, 999, 'Login Page Open', '::1', '2019-07-07 03:49:56'),
(457, 999, 'Login Page Open', '::1', '2019-07-07 03:49:59'),
(458, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 03:49:59'),
(459, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 03:50:02'),
(460, 999, 'Login Page Open', '::1', '2019-07-07 04:04:28'),
(461, 999, 'Login Page Open', '::1', '2019-07-07 04:04:34'),
(462, 999, 'Login Page Open', '::1', '2019-07-07 04:04:35'),
(463, 999, 'Login Page Open', '::1', '2019-07-07 04:04:40'),
(464, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 04:04:40'),
(465, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 04:04:42'),
(466, 999, 'Login Page Open', '::1', '2019-07-07 04:04:53'),
(467, 999, 'Login Page Open', '::1', '2019-07-07 04:04:53'),
(468, 999, 'Login Page Open', '::1', '2019-07-07 04:05:28'),
(469, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 04:05:28'),
(470, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 04:05:32'),
(471, 999, 'Login Page Open', '::1', '2019-07-07 04:05:44'),
(472, 999, 'Login Page Open', '::1', '2019-07-07 04:06:01'),
(473, 999, 'Login Page Open', '::1', '2019-07-07 04:06:01'),
(474, 999, 'Login Page Open', '::1', '2019-07-07 04:06:01'),
(475, 999, 'Login Page Open', '::1', '2019-07-07 04:06:01'),
(476, 999, 'Login Page Open', '::1', '2019-07-07 04:06:04'),
(477, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 04:06:04'),
(478, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 04:06:07'),
(479, 999, 'Login Page Open', '::1', '2019-07-07 06:30:31'),
(480, 999, 'Login Page Open', '::1', '2019-07-07 06:30:32'),
(481, 999, 'Login Page Open', '::1', '2019-07-07 06:30:36'),
(482, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 06:30:36'),
(483, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 06:30:39'),
(484, 999, 'Login Page Open', '::1', '2019-07-07 06:43:37'),
(485, 999, 'Login Page Open', '::1', '2019-07-07 06:43:40'),
(486, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 06:43:40'),
(487, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 06:43:43'),
(488, 999, 'Login Page Open', '::1', '2019-07-07 07:16:01'),
(489, 999, 'Login Page Open', '::1', '2019-07-07 07:16:01'),
(490, 999, 'Login Page Open', '::1', '2019-07-07 07:16:06'),
(491, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 07:16:06'),
(492, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 07:16:09'),
(493, 999, 'Login Page Open', '::1', '2019-07-07 07:16:12'),
(494, 999, 'Login Page Open', '::1', '2019-07-07 07:16:25'),
(495, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 07:16:25'),
(496, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 07:16:27'),
(497, 999, 'Login Page Open', '::1', '2019-07-07 07:18:43'),
(498, 999, 'Login Page Open', '::1', '2019-07-07 07:18:46'),
(499, 999, 'Login Page Open', '::1', '2019-07-07 07:18:49'),
(500, 999, 'Login Page Open', '::1', '2019-07-07 07:18:52'),
(501, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 07:18:52'),
(502, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 07:18:54'),
(503, 999, 'Login Page Open', '::1', '2019-07-07 07:24:23'),
(504, 999, 'Login Page Open', '::1', '2019-07-07 07:24:29'),
(505, 999, 'Login Page Open', '::1', '2019-07-07 07:24:34'),
(506, 999, 'Login Page Open', '::1', '2019-07-07 07:24:37'),
(507, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 07:24:37'),
(508, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 07:24:39'),
(509, 999, 'Login Page Open', '::1', '2019-07-07 07:25:28'),
(510, 999, 'Login Page Open', '::1', '2019-07-07 07:44:22'),
(511, 999, 'Login Page Open', '::1', '2019-07-07 07:44:24'),
(512, 999, 'Login Page Open', '::1', '2019-07-07 07:44:28'),
(513, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 07:44:28'),
(514, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 07:44:31'),
(515, 999, 'Login Page Open', '::1', '2019-07-07 13:41:17'),
(516, 999, 'Login Page Open', '::1', '2019-07-07 13:41:20'),
(517, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 13:41:20'),
(518, 3, 'Correct Password Inserted in Login', '::1', '2019-07-07 13:41:23'),
(519, 999, 'Login Page Open', '::1', '2019-07-07 13:52:56'),
(520, 999, 'Login Page Open', '::1', '2019-07-07 13:52:59'),
(521, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 13:52:59'),
(522, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 13:53:02'),
(523, 999, 'Login Page Open', '::1', '2019-07-07 13:53:45'),
(524, 999, 'Login Page Open', '::1', '2019-07-07 13:53:45'),
(525, 999, 'Login Page Open', '::1', '2019-07-07 13:54:14'),
(526, 999, 'Login Page Open', '::1', '2019-07-07 13:54:19'),
(527, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 13:54:19'),
(528, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 13:54:22'),
(529, 999, 'Login Page Open', '::1', '2019-07-07 14:13:35'),
(530, 999, 'Login Page Open', '::1', '2019-07-07 16:17:10'),
(531, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:17:10'),
(532, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:17:20'),
(533, 999, 'Login Page Open', '::1', '2019-07-07 16:17:41'),
(534, 999, 'Login Page Open', '::1', '2019-07-07 16:20:28'),
(535, 999, 'Login Page Open', '::1', '2019-07-07 16:21:32'),
(536, 999, 'Login Page Open', '::1', '2019-07-07 16:21:34'),
(537, 999, 'Login Page Open', '::1', '2019-07-07 16:21:35'),
(538, 999, 'Login Page Open', '::1', '2019-07-07 16:21:35'),
(539, 999, 'Login Page Open', '::1', '2019-07-07 16:21:36'),
(540, 999, 'Login Page Open', '::1', '2019-07-07 16:29:29'),
(541, 999, 'Login Page Open', '::1', '2019-07-07 16:29:41'),
(542, 999, 'Login Page Open', '::1', '2019-07-07 16:29:47'),
(543, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:29:47'),
(544, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:29:51'),
(545, 999, 'Login Page Open', '::1', '2019-07-07 16:30:36'),
(546, 999, 'Login Page Open', '::1', '2019-07-07 16:31:15'),
(547, 999, 'Login Page Open', '::1', '2019-07-07 16:31:16'),
(548, 999, 'Login Page Open', '::1', '2019-07-07 16:31:16'),
(549, 999, 'Login Page Open', '::1', '2019-07-07 16:31:16'),
(550, 999, 'Login Page Open', '::1', '2019-07-07 16:31:41'),
(551, 999, 'Login Page Open', '::1', '2019-07-07 16:31:42'),
(552, 999, 'Login Page Open', '::1', '2019-07-07 16:33:04'),
(553, 999, 'Login Page Open', '::1', '2019-07-07 16:33:11'),
(554, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:33:11'),
(555, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:33:14'),
(556, 999, 'Login Page Open', '::1', '2019-07-07 16:33:28'),
(557, 999, 'Login Page Open', '::1', '2019-07-07 16:33:48'),
(558, 999, 'Login Page Open', '::1', '2019-07-07 16:33:50'),
(559, 999, 'Login Page Open', '::1', '2019-07-07 16:33:51'),
(560, 999, 'Login Page Open', '::1', '2019-07-07 16:33:51'),
(561, 999, 'Login Page Open', '::1', '2019-07-07 16:33:51'),
(562, 999, 'Login Page Open', '::1', '2019-07-07 16:33:51'),
(563, 999, 'Login Page Open', '::1', '2019-07-07 16:33:51'),
(564, 999, 'Login Page Open', '::1', '2019-07-07 16:33:52'),
(565, 999, 'Login Page Open', '::1', '2019-07-07 16:33:55'),
(566, 999, 'Login Page Open', '::1', '2019-07-07 16:34:13'),
(567, 999, 'Login Page Open', '::1', '2019-07-07 16:34:16'),
(568, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:34:16'),
(569, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:34:19'),
(570, 999, 'Login Page Open', '::1', '2019-07-07 16:36:10'),
(571, 999, 'Login Page Open', '::1', '2019-07-07 16:36:10'),
(572, 999, 'Login Page Open', '::1', '2019-07-07 16:37:05'),
(573, 999, 'Login Page Open', '::1', '2019-07-07 16:37:10'),
(574, 999, 'Login Page Open', '::1', '2019-07-07 16:39:20'),
(575, 999, 'Login Page Open', '::1', '2019-07-07 16:39:25'),
(576, 999, 'Login Page Open', '::1', '2019-07-07 16:39:28'),
(577, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:39:28'),
(578, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:39:54'),
(579, 999, 'Login Page Open', '::1', '2019-07-07 16:41:43'),
(580, 999, 'Login Page Open', '::1', '2019-07-07 16:42:11'),
(581, 999, 'Login Page Open', '::1', '2019-07-07 16:42:21'),
(582, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:42:21'),
(583, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:42:25'),
(584, 999, 'Login Page Open', '::1', '2019-07-07 16:44:39'),
(585, 999, 'Login Page Open', '::1', '2019-07-07 16:44:43'),
(586, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:44:44'),
(587, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:44:46'),
(588, 999, 'Login Page Open', '::1', '2019-07-07 16:45:15'),
(589, 999, 'Login Page Open', '::1', '2019-07-07 16:45:20'),
(590, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:45:20'),
(591, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:45:23'),
(592, 999, 'Login Page Open', '::1', '2019-07-07 16:48:28'),
(593, 999, 'Login Page Open', '::1', '2019-07-07 16:52:05'),
(594, 999, 'Login Page Open', '::1', '2019-07-07 16:52:11'),
(595, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 16:52:11'),
(596, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 16:52:14'),
(597, 999, 'Login Page Open', '::1', '2019-07-07 17:26:54'),
(598, 999, 'Login Page Open', '::1', '2019-07-07 17:26:57'),
(599, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-07 17:26:57'),
(600, 1, 'Correct Password Inserted in Login', '::1', '2019-07-07 17:27:00'),
(601, 999, 'Login Page Open', '::1', '2019-07-08 03:59:02'),
(602, 999, 'Login Page Open', '::1', '2019-07-08 03:59:05'),
(603, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 03:59:05'),
(604, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 03:59:08'),
(605, 999, 'Login Page Open', '::1', '2019-07-08 04:25:43'),
(606, 999, 'Login Page Open', '::1', '2019-07-08 04:25:47'),
(607, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:25:47'),
(608, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:25:50'),
(609, 999, 'Login Page Open', '::1', '2019-07-08 04:26:16'),
(610, 999, 'Login Page Open', '::1', '2019-07-08 04:26:18'),
(611, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:26:18'),
(612, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:26:23'),
(613, 999, 'Login Page Open', '::1', '2019-07-08 04:28:29'),
(614, 999, 'Login Page Open', '::1', '2019-07-08 04:30:02'),
(615, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:30:02'),
(616, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:30:05'),
(617, 999, 'Login Page Open', '::1', '2019-07-08 04:32:21'),
(618, 999, 'Login Page Open', '::1', '2019-07-08 04:32:23'),
(619, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:32:23'),
(620, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:32:26'),
(621, 999, 'Login Page Open', '::1', '2019-07-08 04:32:30'),
(622, 999, 'Login Page Open', '::1', '2019-07-08 04:33:03'),
(623, 999, 'Login Page Open', '::1', '2019-07-08 04:33:05'),
(624, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:33:05'),
(625, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:33:08'),
(626, 999, 'Login Page Open', '::1', '2019-07-08 04:33:14'),
(627, 999, 'Login Page Open', '::1', '2019-07-08 04:35:47'),
(628, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:35:47'),
(629, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:35:51'),
(630, 999, 'Login Page Open', '::1', '2019-07-08 04:35:57'),
(631, 999, 'Login Page Open', '::1', '2019-07-08 04:37:58'),
(632, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:37:58'),
(633, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:38:00'),
(634, 999, 'Login Page Open', '::1', '2019-07-08 04:38:05'),
(635, 999, 'Login Page Open', '::1', '2019-07-08 04:38:13'),
(636, 999, 'Login Page Open', '::1', '2019-07-08 04:38:13'),
(637, 999, 'Login Page Open', '::1', '2019-07-08 04:38:15'),
(638, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:38:15'),
(639, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:38:18'),
(640, 999, 'Login Page Open', '::1', '2019-07-08 04:38:33'),
(641, 999, 'Login Page Open', '::1', '2019-07-08 04:38:48'),
(642, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:38:48'),
(643, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:38:50'),
(644, 999, 'Login Page Open', '::1', '2019-07-08 04:39:01'),
(645, 999, 'Login Page Open', '::1', '2019-07-08 04:39:27'),
(646, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:39:27'),
(647, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:39:29'),
(648, 999, 'Login Page Open', '::1', '2019-07-08 04:39:35'),
(649, 999, 'Login Page Open', '::1', '2019-07-08 04:39:38'),
(650, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:39:38'),
(651, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:39:40'),
(652, 999, 'Login Page Open', '::1', '2019-07-08 04:39:42'),
(653, 999, 'Login Page Open', '::1', '2019-07-08 04:39:52'),
(654, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:39:52'),
(655, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:39:54'),
(656, 999, 'Login Page Open', '::1', '2019-07-08 04:40:00'),
(657, 999, 'Login Page Open', '::1', '2019-07-08 04:45:58'),
(658, 999, 'Login Page Open', '::1', '2019-07-08 04:46:02'),
(659, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:46:02'),
(660, 2, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:46:06'),
(661, 999, 'Login Page Open', '::1', '2019-07-08 04:46:32'),
(662, 999, 'Login Page Open', '::1', '2019-07-08 04:46:35'),
(663, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:46:36'),
(664, 2, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:46:39'),
(665, 999, 'Login Page Open', '::1', '2019-07-08 04:46:49'),
(666, 999, 'Login Page Open', '::1', '2019-07-08 04:47:09'),
(667, 999, 'Login Page Open', '::1', '2019-07-08 04:47:12'),
(668, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 04:47:12'),
(669, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 04:47:15'),
(670, 999, 'Login Page Open', '::1', '2019-07-08 04:50:42'),
(671, 999, 'Login Page Open', '::1', '2019-07-08 06:24:50'),
(672, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 06:24:50'),
(673, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 06:24:53'),
(674, 999, 'Login Page Open', '::1', '2019-07-08 06:25:30'),
(675, 999, 'Login Page Open', '::1', '2019-07-08 06:29:21'),
(676, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 06:29:21'),
(677, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 06:29:25'),
(678, 999, 'Login Page Open', '::1', '2019-07-08 09:28:26'),
(679, 999, 'Login Page Open', '::1', '2019-07-08 09:30:31'),
(680, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 09:30:31'),
(681, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 09:30:34'),
(682, 999, 'Login Page Open', '::1', '2019-07-08 09:32:42'),
(683, 999, 'Login Page Open', '::1', '2019-07-08 09:36:54'),
(684, 999, 'Login Page Open', '::1', '2019-07-08 09:36:57'),
(685, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 09:36:57'),
(686, 999, 'Login Page Open', '::1', '2019-07-08 09:37:02'),
(687, 999, 'Login Page Open', '::1', '2019-07-08 09:37:07'),
(688, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-07-08 09:37:07'),
(689, 999, 'Login Page Open', '::1', '2019-07-08 09:37:31'),
(690, 999, 'Login Page Open', '::1', '2019-07-08 09:37:36'),
(691, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 09:37:36'),
(692, 3, 'OTP Send on Mobile', '', '2019-07-08 09:37:39'),
(693, 999, 'Login Page Open', '::1', '2019-07-08 09:39:39'),
(694, 999, 'Login Page Open', '::1', '2019-07-08 09:39:45'),
(695, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 09:39:46'),
(696, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 09:39:49'),
(697, 999, 'Login Page Open', '::1', '2019-07-08 09:40:12'),
(698, 999, 'Login Page Open', '::1', '2019-07-08 09:40:25'),
(699, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 09:40:25'),
(700, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 09:40:28'),
(701, 999, 'Login Page Open', '::1', '2019-07-08 09:41:01'),
(702, 999, 'Login Page Open', '::1', '2019-07-08 16:29:40'),
(703, 999, 'Login Page Open', '::1', '2019-07-08 16:29:47'),
(704, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 16:29:48'),
(705, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 16:29:51'),
(706, 999, 'Login Page Open', '::1', '2019-07-08 16:30:03'),
(707, 999, 'Login Page Open', '::1', '2019-07-08 16:30:23'),
(708, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 16:30:23'),
(709, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 16:30:26'),
(710, 999, 'Login Page Open', '::1', '2019-07-08 16:48:14'),
(711, 999, 'Login Page Open', '::1', '2019-07-08 16:48:17'),
(712, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 16:48:17'),
(713, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 16:48:21'),
(714, 999, 'Login Page Open', '::1', '2019-07-08 16:55:26'),
(715, 999, 'Login Page Open', '::1', '2019-07-08 16:55:29'),
(716, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 16:55:29'),
(717, 3, 'Correct Password Inserted in Login', '::1', '2019-07-08 16:55:33'),
(718, 999, 'Login Page Open', '::1', '2019-07-08 16:59:32'),
(719, 999, 'Login Page Open', '::1', '2019-07-08 16:59:35'),
(720, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-08 16:59:35'),
(721, 1, 'Correct Password Inserted in Login', '::1', '2019-07-08 16:59:39'),
(722, 999, 'Login Page Open', '::1', '2019-07-09 10:10:27'),
(723, 999, 'Login Page Open', '::1', '2019-07-09 10:10:32'),
(724, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 10:10:32'),
(725, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 10:10:35'),
(726, 999, 'Login Page Open', '::1', '2019-07-09 10:23:17'),
(727, 999, 'Login Page Open', '::1', '2019-07-09 10:23:21'),
(728, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 10:23:21'),
(729, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 10:23:25'),
(730, 999, 'Login Page Open', '::1', '2019-07-09 10:26:21'),
(731, 999, 'Login Page Open', '::1', '2019-07-09 10:27:04'),
(732, 999, 'Login Page Open', '::1', '2019-07-09 10:27:08'),
(733, 999, 'Login Page Open', '::1', '2019-07-09 10:27:10'),
(734, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 10:27:10'),
(735, 1, 'Correct Password Inserted in Login', '::1', '2019-07-09 10:27:13'),
(736, 999, 'Login Page Open', '::1', '2019-07-09 12:03:50'),
(737, 999, 'Login Page Open', '::1', '2019-07-09 12:03:50'),
(738, 999, 'Login Page Open', '::1', '2019-07-09 12:04:16'),
(739, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:04:16'),
(740, 999, 'Login Page Open', '::1', '2019-07-09 12:04:17'),
(741, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:04:17'),
(742, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 12:04:21'),
(743, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 12:04:21'),
(744, 999, 'Login Page Open', '::1', '2019-07-09 12:06:17'),
(745, 999, 'Login Page Open', '::1', '2019-07-09 12:19:24'),
(746, 999, 'Login Page Open', '::1', '2019-07-09 12:19:24'),
(747, 999, 'Login Page Open', '::1', '2019-07-09 12:19:28'),
(748, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:19:28'),
(749, 999, 'Login Page Open', '::1', '2019-07-09 12:19:28'),
(750, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:19:28'),
(751, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 12:19:33'),
(752, 999, 'Login Page Open', '::1', '2019-07-09 12:48:43'),
(753, 999, 'Login Page Open', '::1', '2019-07-09 12:48:47'),
(754, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:48:47'),
(755, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 12:48:50'),
(756, 999, 'Login Page Open', '::1', '2019-07-09 12:50:35'),
(757, 999, 'Login Page Open', '::1', '2019-07-09 12:50:48'),
(758, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 12:50:48'),
(759, 2, 'Correct Password Inserted in Login', '::1', '2019-07-09 12:50:53');
INSERT INTO `tbl_activity` (`activity_id`, `user_id`, `activity_details`, `ip_address`, `datetime`) VALUES
(760, 999, 'Login Page Open', '::1', '2019-07-09 13:33:19'),
(761, 999, 'Login Page Open', '::1', '2019-07-09 13:33:25'),
(762, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-09 13:33:25'),
(763, 1, 'Correct Password Inserted in Login', '::1', '2019-07-09 13:33:29'),
(764, 999, 'Login Page Open', '::1', '2019-07-09 13:36:52'),
(765, 999, 'Login Page Open', '::1', '2019-07-09 15:09:27'),
(766, 999, 'Login Page Open', '::1', '2019-07-09 15:09:28'),
(767, 999, 'Login Page Open', '::1', '2019-07-10 02:51:09'),
(768, 999, 'Login Page Open', '::1', '2019-07-10 02:51:12'),
(769, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 02:51:12'),
(770, 1, 'Correct Password Inserted in Login', '::1', '2019-07-10 02:51:15'),
(771, 999, 'Login Page Open', '::1', '2019-07-10 02:52:11'),
(772, 999, 'Login Page Open', '::1', '2019-07-10 02:52:33'),
(773, 1, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 02:52:33'),
(774, 1, 'Correct Password Inserted in Login', '::1', '2019-07-10 02:52:36'),
(775, 999, 'Login Page Open', '::1', '2019-07-10 02:53:45'),
(776, 1, 'Signup Done', '::1', '2019-07-10 02:54:31'),
(777, 999, 'Login Page Open', '::1', '2019-07-10 02:54:37'),
(778, 999, 'Login Page Open', '::1', '2019-07-10 02:54:51'),
(779, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 02:54:52'),
(780, 6, 'Correct Password Inserted in Login', '::1', '2019-07-10 02:54:55'),
(781, 999, 'Login Page Open', '::1', '2019-07-10 02:55:58'),
(782, 999, 'Login Page Open', '::1', '2019-07-10 02:56:01'),
(783, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 02:56:01'),
(784, 6, 'Correct Password Inserted in Login', '::1', '2019-07-10 02:56:03'),
(785, 999, 'Login Page Open', '::1', '2019-07-10 02:59:28'),
(786, 999, 'Login Page Open', '::1', '2019-07-10 02:59:31'),
(787, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 02:59:32'),
(788, 2, 'Correct Password Inserted in Login', '::1', '2019-07-10 02:59:34'),
(789, 999, 'Login Page Open', '::1', '2019-07-10 03:00:13'),
(790, 999, 'Login Page Open', '::1', '2019-07-10 03:01:20'),
(791, 999, 'Login Page Open', '::1', '2019-07-10 03:01:22'),
(792, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:01:22'),
(793, 3, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:01:25'),
(794, 999, 'Login Page Open', '::1', '2019-07-10 03:03:20'),
(795, 1, 'Signup Done', '::1', '2019-07-10 03:04:18'),
(796, 999, 'Login Page Open', '::1', '2019-07-10 03:04:25'),
(797, 999, 'Login Page Open', '::1', '2019-07-10 03:04:31'),
(798, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:04:31'),
(799, 7, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:04:33'),
(800, 999, 'Login Page Open', '::1', '2019-07-10 03:05:04'),
(801, 999, 'Login Page Open', '::1', '2019-07-10 03:05:04'),
(802, 999, 'Login Page Open', '::1', '2019-07-10 03:05:08'),
(803, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:05:08'),
(804, 7, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:05:10'),
(805, 999, 'Login Page Open', '::1', '2019-07-10 03:05:23'),
(806, 999, 'Login Page Open', '::1', '2019-07-10 03:05:26'),
(807, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:05:26'),
(808, 2, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:05:28'),
(809, 999, 'Login Page Open', '::1', '2019-07-10 03:05:39'),
(810, 999, 'Login Page Open', '::1', '2019-07-10 03:05:42'),
(811, 0, 'User Enter Invalid Email or Mobile no', '::1', '2019-07-10 03:05:42'),
(812, 999, 'Login Page Open', '::1', '2019-07-10 03:05:45'),
(813, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:05:45'),
(814, 6, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:05:48'),
(815, 999, 'Login Page Open', '::1', '2019-07-10 03:06:06'),
(816, 999, 'Login Page Open', '::1', '2019-07-10 03:06:09'),
(817, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:06:09'),
(818, 6, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:06:12'),
(819, 999, 'Login Page Open', '::1', '2019-07-10 03:10:32'),
(820, 999, 'Login Page Open', '::1', '2019-07-10 03:13:45'),
(821, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 03:13:45'),
(822, 6, 'Correct Password Inserted in Login', '::1', '2019-07-10 03:13:48'),
(823, 999, 'Login Page Open', '::1', '2019-07-10 04:46:35'),
(824, 999, 'Login Page Open', '::1', '2019-07-10 04:46:38'),
(825, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 04:46:38'),
(826, 3, 'Correct Password Inserted in Login', '::1', '2019-07-10 04:46:41'),
(827, 999, 'Login Page Open', '::1', '2019-07-10 04:49:43'),
(828, 999, 'Login Page Open', '::1', '2019-07-10 04:49:53'),
(829, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-10 04:49:54'),
(830, 3, 'Correct Password Inserted in Login', '::1', '2019-07-10 04:49:57'),
(831, 999, 'Login Page Open', '::1', '2019-07-21 07:08:20'),
(832, 999, 'Login Page Open', '::1', '2019-07-21 07:08:36'),
(833, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:08:36'),
(834, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:08:39'),
(835, 999, 'Login Page Open', '::1', '2019-07-21 07:08:48'),
(836, 999, 'Login Page Open', '::1', '2019-07-21 07:08:51'),
(837, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:08:51'),
(838, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:08:54'),
(839, 999, 'Login Page Open', '::1', '2019-07-21 07:16:33'),
(840, 999, 'Login Page Open', '::1', '2019-07-21 07:16:38'),
(841, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:16:39'),
(842, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:16:42'),
(843, 999, 'Login Page Open', '::1', '2019-07-21 07:19:07'),
(844, 999, 'Login Page Open', '::1', '2019-07-21 07:19:31'),
(845, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:19:31'),
(846, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:19:35'),
(847, 999, 'Login Page Open', '::1', '2019-07-21 07:21:32'),
(848, 999, 'Login Page Open', '::1', '2019-07-21 07:21:36'),
(849, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:21:37'),
(850, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:21:40'),
(851, 999, 'Login Page Open', '::1', '2019-07-21 07:29:10'),
(852, 999, 'Login Page Open', '::1', '2019-07-21 07:29:27'),
(853, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:29:27'),
(854, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:29:30'),
(855, 999, 'Login Page Open', '::1', '2019-07-21 07:44:09'),
(856, 999, 'Login Page Open', '::1', '2019-07-21 07:44:17'),
(857, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:44:17'),
(858, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:44:21'),
(859, 999, 'Login Page Open', '::1', '2019-07-21 07:46:45'),
(860, 999, 'Login Page Open', '::1', '2019-07-21 07:46:49'),
(861, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:46:49'),
(862, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:46:53'),
(863, 999, 'Login Page Open', '::1', '2019-07-21 07:47:41'),
(864, 999, 'Login Page Open', '::1', '2019-07-21 07:47:45'),
(865, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:47:45'),
(866, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:47:48'),
(867, 999, 'Login Page Open', '::1', '2019-07-21 07:48:32'),
(868, 999, 'Login Page Open', '::1', '2019-07-21 07:48:36'),
(869, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:48:37'),
(870, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:48:40'),
(871, 999, 'Login Page Open', '::1', '2019-07-21 07:49:50'),
(872, 999, 'Login Page Open', '::1', '2019-07-21 07:49:54'),
(873, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:49:54'),
(874, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:49:57'),
(875, 999, 'Login Page Open', '::1', '2019-07-21 07:50:36'),
(876, 999, 'Login Page Open', '::1', '2019-07-21 07:50:39'),
(877, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:50:39'),
(878, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:50:43'),
(879, 999, 'Login Page Open', '::1', '2019-07-21 07:51:18'),
(880, 999, 'Login Page Open', '::1', '2019-07-21 07:54:17'),
(881, 999, 'Login Page Open', '::1', '2019-07-21 07:54:19'),
(882, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:54:19'),
(883, 999, 'Login Page Open', '::1', '2019-07-21 07:54:21'),
(884, 999, 'Login Page Open', '::1', '2019-07-21 07:54:24'),
(885, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 07:54:24'),
(886, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 07:54:27'),
(887, 999, 'Login Page Open', '::1', '2019-07-21 07:54:55'),
(888, 999, 'Login Page Open', '::1', '2019-07-21 08:02:19'),
(889, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:02:20'),
(890, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:02:32'),
(891, 999, 'Login Page Open', '::1', '2019-07-21 08:03:08'),
(892, 999, 'Login Page Open', '::1', '2019-07-21 08:03:11'),
(893, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:03:11'),
(894, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:03:14'),
(895, 999, 'Login Page Open', '::1', '2019-07-21 08:03:18'),
(896, 999, 'Login Page Open', '::1', '2019-07-21 08:03:46'),
(897, 999, 'Login Page Open', '::1', '2019-07-21 08:03:47'),
(898, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:03:47'),
(899, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:03:51'),
(900, 999, 'Login Page Open', '::1', '2019-07-21 08:10:32'),
(901, 999, 'Login Page Open', '::1', '2019-07-21 08:10:36'),
(902, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:10:36'),
(903, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:10:39'),
(904, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:11:07'),
(905, 999, 'Login Page Open', '::1', '2019-07-21 08:11:23'),
(906, 999, 'Login Page Open', '::1', '2019-07-21 08:11:27'),
(907, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:11:27'),
(908, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:11:30'),
(909, 999, 'Login Page Open', '::1', '2019-07-21 08:12:34'),
(910, 999, 'Login Page Open', '::1', '2019-07-21 08:12:37'),
(911, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:12:37'),
(912, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:12:41'),
(913, 999, 'Login Page Open', '::1', '2019-07-21 08:13:50'),
(914, 999, 'Login Page Open', '::1', '2019-07-21 08:13:53'),
(915, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:13:53'),
(916, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:13:56'),
(917, 999, 'Login Page Open', '::1', '2019-07-21 08:25:35'),
(918, 999, 'Login Page Open', '::1', '2019-07-21 08:25:44'),
(919, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:25:44'),
(920, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:25:47'),
(921, 999, 'Login Page Open', '::1', '2019-07-21 08:28:01'),
(922, 999, 'Login Page Open', '::1', '2019-07-21 08:28:05'),
(923, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:28:05'),
(924, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:28:09'),
(925, 999, 'Login Page Open', '::1', '2019-07-21 08:32:50'),
(926, 999, 'Login Page Open', '::1', '2019-07-21 08:32:53'),
(927, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:32:53'),
(928, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:32:57'),
(929, 999, 'Login Page Open', '::1', '2019-07-21 08:33:35'),
(930, 999, 'Login Page Open', '::1', '2019-07-21 08:33:40'),
(931, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:33:40'),
(932, 2, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:33:43'),
(933, 999, 'Login Page Open', '::1', '2019-07-21 08:35:57'),
(934, 999, 'Login Page Open', '::1', '2019-07-21 08:36:01'),
(935, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:36:01'),
(936, 2, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:36:04'),
(937, 999, 'Login Page Open', '::1', '2019-07-21 08:36:43'),
(938, 999, 'Login Page Open', '::1', '2019-07-21 08:36:48'),
(939, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:36:48'),
(940, 2, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:36:52'),
(941, 999, 'Login Page Open', '::1', '2019-07-21 08:37:21'),
(942, 999, 'Login Page Open', '::1', '2019-07-21 08:37:25'),
(943, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:37:25'),
(944, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:37:28'),
(945, 999, 'Login Page Open', '::1', '2019-07-21 08:38:54'),
(946, 999, 'Login Page Open', '::1', '2019-07-21 08:38:56'),
(947, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:38:56'),
(948, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:38:59'),
(949, 999, 'Login Page Open', '::1', '2019-07-21 08:40:30'),
(950, 999, 'Login Page Open', '::1', '2019-07-21 08:40:33'),
(951, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 08:40:33'),
(952, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 08:40:36'),
(953, 999, 'Login Page Open', '::1', '2019-07-21 08:40:44'),
(954, 999, 'Login Page Open', '::1', '2019-07-21 11:09:10'),
(955, 999, 'Login Page Open', '::1', '2019-07-21 11:10:32'),
(956, 999, 'Login Page Open', '::1', '2019-07-21 11:10:37'),
(957, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:10:37'),
(958, 7, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:10:40'),
(959, 999, 'Login Page Open', '::1', '2019-07-21 11:11:01'),
(960, 999, 'Login Page Open', '::1', '2019-07-21 11:11:11'),
(961, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:11:11'),
(962, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:11:14'),
(963, 999, 'Login Page Open', '::1', '2019-07-21 11:17:42'),
(964, 999, 'Login Page Open', '::1', '2019-07-21 11:17:45'),
(965, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:17:45'),
(966, 5, 'Wrong Password Inserted in Login', '::1', '2019-07-21 11:17:48'),
(967, 5, 'Wrong Password Inserted in Login', '::1', '2019-07-21 11:17:52'),
(968, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:18:00'),
(969, 999, 'Login Page Open', '::1', '2019-07-21 11:18:28'),
(970, 999, 'Login Page Open', '::1', '2019-07-21 11:19:34'),
(971, 999, 'Login Page Open', '::1', '2019-07-21 11:19:37'),
(972, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:19:37'),
(973, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:19:41'),
(974, 999, 'Login Page Open', '::1', '2019-07-21 11:20:42'),
(975, 999, 'Login Page Open', '::1', '2019-07-21 11:21:52'),
(976, 999, 'Login Page Open', '::1', '2019-07-21 11:21:55'),
(977, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:21:55'),
(978, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:21:59'),
(979, 999, 'Login Page Open', '::1', '2019-07-21 11:25:17'),
(980, 999, 'Login Page Open', '::1', '2019-07-21 11:25:53'),
(981, 999, 'Login Page Open', '::1', '2019-07-21 11:25:57'),
(982, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:25:57'),
(983, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:26:00'),
(984, 999, 'Login Page Open', '::1', '2019-07-21 11:27:05'),
(985, 999, 'Login Page Open', '::1', '2019-07-21 11:27:08'),
(986, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:27:08'),
(987, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:27:13'),
(988, 999, 'Login Page Open', '::1', '2019-07-21 11:39:04'),
(989, 999, 'Login Page Open', '::1', '2019-07-21 11:39:11'),
(990, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:39:11'),
(991, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:39:14'),
(992, 999, 'Login Page Open', '::1', '2019-07-21 11:42:37'),
(993, 999, 'Login Page Open', '::1', '2019-07-21 11:42:40'),
(994, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:42:40'),
(995, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:42:44'),
(996, 999, 'Login Page Open', '::1', '2019-07-21 11:51:14'),
(997, 999, 'Login Page Open', '::1', '2019-07-21 11:52:02'),
(998, 999, 'Login Page Open', '::1', '2019-07-21 11:52:05'),
(999, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:52:06'),
(1000, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:52:09'),
(1001, 999, 'Login Page Open', '::1', '2019-07-21 11:56:24'),
(1002, 999, 'Login Page Open', '::1', '2019-07-21 11:56:27'),
(1003, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 11:56:27'),
(1004, 5, 'Correct Password Inserted in Login', '::1', '2019-07-21 11:56:31'),
(1005, 999, 'Login Page Open', '::1', '2019-07-21 11:57:07'),
(1006, 999, 'Login Page Open', '::1', '2019-07-21 12:01:31'),
(1007, 999, 'Login Page Open', '::1', '2019-07-21 12:01:37'),
(1008, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 12:01:37'),
(1009, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 12:01:41'),
(1010, 999, 'Login Page Open', '::1', '2019-07-21 12:02:10'),
(1011, 999, 'Login Page Open', '::1', '2019-07-21 12:02:13'),
(1012, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 12:02:13'),
(1013, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 12:02:17'),
(1014, 999, 'Login Page Open', '::1', '2019-07-21 12:06:32'),
(1015, 999, 'Login Page Open', '::1', '2019-07-21 12:06:41'),
(1016, 999, 'Login Page Open', '::1', '2019-07-21 12:07:50'),
(1017, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 12:07:50'),
(1018, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 12:07:53'),
(1019, 999, 'Login Page Open', '::1', '2019-07-21 12:08:21'),
(1020, 999, 'Login Page Open', '::1', '2019-07-21 12:08:25'),
(1021, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 12:08:25'),
(1022, 3, 'Correct Password Inserted in Login', '::1', '2019-07-21 12:08:28'),
(1023, 999, 'Login Page Open', '::1', '2019-07-21 13:10:39'),
(1024, 999, 'Login Page Open', '::1', '2019-07-21 13:10:39'),
(1025, 999, 'Login Page Open', '::1', '2019-07-21 13:10:44'),
(1026, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-21 13:10:44'),
(1027, 6, 'Correct Password Inserted in Login', '::1', '2019-07-21 13:10:47'),
(1028, 999, 'Login Page Open', '::1', '2019-07-21 16:50:06'),
(1029, 999, 'Login Page Open', '::1', '2019-07-22 08:52:29'),
(1030, 999, 'Login Page Open', '::1', '2019-07-22 08:52:34'),
(1031, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 08:52:34'),
(1032, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 08:52:37'),
(1033, 999, 'Login Page Open', '::1', '2019-07-22 09:18:52'),
(1034, 999, 'Login Page Open', '::1', '2019-07-22 09:18:55'),
(1035, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 09:18:55'),
(1036, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 09:19:03'),
(1037, 999, 'Login Page Open', '::1', '2019-07-22 09:20:40'),
(1038, 999, 'Login Page Open', '::1', '2019-07-22 09:20:58'),
(1039, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 09:20:58'),
(1040, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 09:21:00'),
(1041, 999, 'Login Page Open', '::1', '2019-07-22 09:22:33'),
(1042, 999, 'Login Page Open', '::1', '2019-07-22 09:22:38'),
(1043, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 09:22:38'),
(1044, 5, 'Correct Password Inserted in Login', '::1', '2019-07-22 09:22:40'),
(1045, 999, 'Login Page Open', '::1', '2019-07-22 09:28:11'),
(1046, 999, 'Login Page Open', '::1', '2019-07-22 09:28:14'),
(1047, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 09:28:14'),
(1048, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 09:28:17'),
(1049, 999, 'Login Page Open', '::1', '2019-07-22 10:25:29'),
(1050, 999, 'Login Page Open', '::1', '2019-07-22 10:25:33'),
(1051, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:25:33'),
(1052, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:25:36'),
(1053, 999, 'Login Page Open', '::1', '2019-07-22 10:32:39'),
(1054, 999, 'Login Page Open', '::1', '2019-07-22 10:32:41'),
(1055, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:32:41'),
(1056, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:32:44'),
(1057, 999, 'Login Page Open', '::1', '2019-07-22 10:34:09'),
(1058, 999, 'Login Page Open', '::1', '2019-07-22 10:34:13'),
(1059, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:34:13'),
(1060, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:34:16'),
(1061, 999, 'Login Page Open', '::1', '2019-07-22 10:34:20'),
(1062, 999, 'Login Page Open', '::1', '2019-07-22 10:34:22'),
(1063, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:34:23'),
(1064, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:34:25'),
(1065, 999, 'Login Page Open', '::1', '2019-07-22 10:35:28'),
(1066, 999, 'Login Page Open', '::1', '2019-07-22 10:35:58'),
(1067, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:35:58'),
(1068, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:36:01'),
(1069, 999, 'Login Page Open', '::1', '2019-07-22 10:36:21'),
(1070, 999, 'Login Page Open', '::1', '2019-07-22 10:36:40'),
(1071, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:36:40'),
(1072, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:36:43'),
(1073, 999, 'Login Page Open', '::1', '2019-07-22 10:37:55'),
(1074, 999, 'Login Page Open', '::1', '2019-07-22 10:38:02'),
(1075, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:38:02'),
(1076, 5, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:38:06'),
(1077, 999, 'Login Page Open', '::1', '2019-07-22 10:38:11'),
(1078, 999, 'Login Page Open', '::1', '2019-07-22 10:38:18'),
(1079, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:38:18'),
(1080, 3, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:38:21'),
(1081, 999, 'Login Page Open', '::1', '2019-07-22 10:41:38'),
(1082, 999, 'Login Page Open', '::1', '2019-07-22 10:41:40'),
(1083, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 10:41:40'),
(1084, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 10:41:43'),
(1085, 999, 'Login Page Open', '::1', '2019-07-22 15:26:02'),
(1086, 999, 'Login Page Open', '::1', '2019-07-22 15:26:03'),
(1087, 999, 'Login Page Open', '::1', '2019-07-22 15:26:08'),
(1088, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 15:26:08'),
(1089, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 15:26:12'),
(1090, 999, 'Login Page Open', '::1', '2019-07-22 15:28:39'),
(1091, 999, 'Login Page Open', '::1', '2019-07-22 15:40:33'),
(1092, 999, 'Login Page Open', '::1', '2019-07-22 15:40:41'),
(1093, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 15:40:42'),
(1094, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 15:40:45'),
(1095, 999, 'Login Page Open', '::1', '2019-07-22 15:48:22'),
(1096, 999, 'Login Page Open', '::1', '2019-07-22 15:48:25'),
(1097, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 15:48:25'),
(1098, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 15:48:28'),
(1099, 999, 'Login Page Open', '::1', '2019-07-22 15:55:45'),
(1100, 999, 'Login Page Open', '::1', '2019-07-22 15:55:55'),
(1101, 999, 'Login Page Open', '::1', '2019-07-22 15:55:59'),
(1102, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 15:55:59'),
(1103, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 15:56:03'),
(1104, 999, 'Login Page Open', '::1', '2019-07-22 15:57:42'),
(1105, 999, 'Login Page Open', '::1', '2019-07-22 15:57:56'),
(1106, 999, 'Login Page Open', '::1', '2019-07-22 15:57:59'),
(1107, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 15:57:59'),
(1108, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 15:58:02'),
(1109, 999, 'Login Page Open', '::1', '2019-07-22 16:04:33'),
(1110, 999, 'Login Page Open', '::1', '2019-07-22 16:04:43'),
(1111, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 16:04:44'),
(1112, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 16:04:47'),
(1113, 999, 'Login Page Open', '::1', '2019-07-22 16:06:47'),
(1114, 999, 'Login Page Open', '::1', '2019-07-22 16:06:52'),
(1115, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 16:06:52'),
(1116, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 16:06:55'),
(1117, 999, 'Login Page Open', '::1', '2019-07-22 16:56:01'),
(1118, 999, 'Login Page Open', '::1', '2019-07-22 16:56:05'),
(1119, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 16:56:05'),
(1120, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 16:56:08'),
(1121, 999, 'Login Page Open', '::1', '2019-07-22 16:56:39'),
(1122, 999, 'Login Page Open', '::1', '2019-07-22 16:56:41'),
(1123, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 16:56:41'),
(1124, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 16:56:45'),
(1125, 999, 'Login Page Open', '::1', '2019-07-22 17:01:05'),
(1126, 999, 'Login Page Open', '::1', '2019-07-22 17:01:22'),
(1127, 999, 'Login Page Open', '::1', '2019-07-22 17:01:26'),
(1128, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:01:26'),
(1129, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:01:28'),
(1130, 999, 'Login Page Open', '::1', '2019-07-22 17:03:58'),
(1131, 999, 'Login Page Open', '::1', '2019-07-22 17:04:02'),
(1132, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:04:02'),
(1133, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:04:04'),
(1134, 999, 'Login Page Open', '::1', '2019-07-22 17:17:44'),
(1135, 999, 'Login Page Open', '::1', '2019-07-22 17:17:47'),
(1136, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:17:47'),
(1137, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:17:49'),
(1138, 999, 'Login Page Open', '::1', '2019-07-22 17:19:23'),
(1139, 999, 'Login Page Open', '::1', '2019-07-22 17:19:27'),
(1140, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:19:27'),
(1141, 7, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:19:30'),
(1142, 999, 'Login Page Open', '::1', '2019-07-22 17:19:44'),
(1143, 999, 'Login Page Open', '::1', '2019-07-22 17:19:44'),
(1144, 999, 'Login Page Open', '::1', '2019-07-22 17:19:49'),
(1145, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:19:49'),
(1146, 7, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:19:52'),
(1147, 999, 'Login Page Open', '::1', '2019-07-22 17:20:49'),
(1148, 999, 'Login Page Open', '::1', '2019-07-22 17:21:07'),
(1149, 999, 'Login Page Open', '::1', '2019-07-22 17:21:12'),
(1150, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:21:12'),
(1151, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:21:15'),
(1152, 999, 'Login Page Open', '::1', '2019-07-22 17:23:31'),
(1153, 999, 'Login Page Open', '::1', '2019-07-22 17:23:33'),
(1154, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:23:33'),
(1155, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:23:36'),
(1156, 999, 'Login Page Open', '::1', '2019-07-22 17:25:50'),
(1157, 999, 'Login Page Open', '::1', '2019-07-22 17:25:54'),
(1158, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:25:54'),
(1159, 7, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:25:57'),
(1160, 999, 'Login Page Open', '::1', '2019-07-22 17:27:33'),
(1161, 999, 'Login Page Open', '::1', '2019-07-22 17:27:42'),
(1162, 999, 'Login Page Open', '::1', '2019-07-22 17:27:42'),
(1163, 999, 'Login Page Open', '::1', '2019-07-22 17:27:47'),
(1164, 7, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:27:47'),
(1165, 7, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:27:50'),
(1166, 999, 'Login Page Open', '::1', '2019-07-22 17:29:04'),
(1167, 999, 'Login Page Open', '::1', '2019-07-22 17:29:11'),
(1168, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:29:12'),
(1169, 5, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:29:15'),
(1170, 999, 'Login Page Open', '::1', '2019-07-22 17:29:36'),
(1171, 999, 'Login Page Open', '::1', '2019-07-22 17:29:40'),
(1172, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:29:40'),
(1173, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:29:43'),
(1174, 999, 'Login Page Open', '::1', '2019-07-22 17:32:22'),
(1175, 999, 'Login Page Open', '::1', '2019-07-22 17:32:28'),
(1176, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:32:28'),
(1177, 5, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:32:32'),
(1178, 999, 'Login Page Open', '::1', '2019-07-22 17:32:54'),
(1179, 999, 'Login Page Open', '::1', '2019-07-22 17:33:20'),
(1180, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:33:20'),
(1181, 6, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:33:24'),
(1182, 999, 'Login Page Open', '::1', '2019-07-22 17:34:33'),
(1183, 999, 'Login Page Open', '::1', '2019-07-22 17:34:43'),
(1184, 999, 'Login Page Open', '::1', '2019-07-22 17:34:44'),
(1185, 999, 'Login Page Open', '::1', '2019-07-22 17:35:40'),
(1186, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-07-22 17:35:40'),
(1187, 5, 'Correct Password Inserted in Login', '::1', '2019-07-22 17:35:43'),
(1188, 999, 'Login Page Open', '::1', '2019-07-22 17:37:23'),
(1189, 999, 'Login Page Open', '::1', '2019-07-23 05:31:08'),
(1190, 999, 'Login Page Open', '::1', '2019-07-23 05:31:08'),
(1191, 999, 'Login Page Open', '::1', '2019-07-23 05:31:13'),
(1192, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-23 05:31:13'),
(1193, 6, 'Correct Password Inserted in Login', '::1', '2019-07-23 05:31:16'),
(1194, 999, 'Login Page Open', '::1', '2019-07-25 07:08:46'),
(1195, 999, 'Login Page Open', '::1', '2019-07-25 07:08:46'),
(1196, 999, 'Login Page Open', '::1', '2019-07-25 07:08:50'),
(1197, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-25 07:08:51'),
(1198, 6, 'Correct Password Inserted in Login', '::1', '2019-07-25 07:08:54'),
(1199, 999, 'Login Page Open', '::1', '2019-07-25 12:42:06'),
(1200, 999, 'Login Page Open', '::1', '2019-07-25 13:38:56'),
(1201, 999, 'Login Page Open', '::1', '2019-07-25 13:39:05'),
(1202, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-25 13:39:06'),
(1203, 6, 'Correct Password Inserted in Login', '::1', '2019-07-25 13:39:09'),
(1204, 999, 'Login Page Open', '::1', '2019-07-25 14:53:04'),
(1205, 999, 'Login Page Open', '::1', '2019-07-25 15:39:33'),
(1206, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-25 15:39:33'),
(1207, 6, 'Correct Password Inserted in Login', '::1', '2019-07-25 15:39:38'),
(1208, 999, 'Login Page Open', '::1', '2019-07-26 06:38:42'),
(1209, 999, 'Login Page Open', '::1', '2019-07-26 06:38:56'),
(1210, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 06:38:56'),
(1211, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 06:39:00'),
(1212, 999, 'Login Page Open', '::1', '2019-07-26 06:39:24'),
(1213, 999, 'Login Page Open', '::1', '2019-07-26 06:39:35'),
(1214, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 06:39:35'),
(1215, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 06:39:38'),
(1216, 999, 'Login Page Open', '::1', '2019-07-26 06:43:36'),
(1217, 999, 'Login Page Open', '::1', '2019-07-26 06:43:39'),
(1218, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 06:43:39'),
(1219, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 06:43:42'),
(1220, 999, 'Login Page Open', '::1', '2019-07-26 06:45:22'),
(1221, 999, 'Login Page Open', '::1', '2019-07-26 06:45:27'),
(1222, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 06:45:27'),
(1223, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 06:45:30'),
(1224, 999, 'Login Page Open', '::1', '2019-07-26 09:45:49'),
(1225, 999, 'Login Page Open', '::1', '2019-07-26 09:45:53'),
(1226, 999, 'Login Page Open', '::1', '2019-07-26 09:46:00'),
(1227, 999, 'Login Page Open', '::1', '2019-07-26 09:46:01'),
(1228, 999, 'Login Page Open', '::1', '2019-07-26 16:14:41'),
(1229, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:14:41'),
(1230, 999, 'Login Page Open', '::1', '2019-07-26 16:19:51'),
(1231, 1, 'Signup Done', '::1', '2019-07-26 16:20:46'),
(1232, 999, 'Login Page Open', '::1', '2019-07-26 16:20:51'),
(1233, 999, 'Login Page Open', '::1', '2019-07-26 16:21:03'),
(1234, 999, 'Login Page Open', '::1', '2019-07-26 16:21:14'),
(1235, 8, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:21:14'),
(1236, 8, 'Correct Password Inserted in Login', '::1', '2019-07-26 16:21:18'),
(1237, 999, 'Login Page Open', '::1', '2019-07-26 16:21:54'),
(1238, 999, 'Login Page Open', '::1', '2019-07-26 16:22:18'),
(1239, 8, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:22:18'),
(1240, 8, 'Correct Password Inserted in Login', '::1', '2019-07-26 16:22:22'),
(1241, 999, 'Login Page Open', '::1', '2019-07-26 16:24:41'),
(1242, 999, 'Login Page Open', '::1', '2019-07-26 16:24:51'),
(1243, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:24:52'),
(1244, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 16:24:56'),
(1245, 999, 'Login Page Open', '::1', '2019-07-26 16:25:08'),
(1246, 999, 'Login Page Open', '::1', '2019-07-26 16:40:09'),
(1247, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:40:09'),
(1248, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 16:40:14'),
(1249, 999, 'Login Page Open', '::1', '2019-07-26 16:45:50'),
(1250, 999, 'Login Page Open', '::1', '2019-07-26 16:45:50'),
(1251, 999, 'Login Page Open', '::1', '2019-07-26 16:45:57'),
(1252, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 16:45:57'),
(1253, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 16:46:00'),
(1254, 999, 'Login Page Open', '::1', '2019-07-26 16:47:17'),
(1255, 999, 'Login Page Open', '::1', '2019-07-26 17:00:04'),
(1256, 999, 'Login Page Open', '::1', '2019-07-26 17:00:09'),
(1257, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:00:09'),
(1258, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:00:12'),
(1259, 999, 'Login Page Open', '::1', '2019-07-26 17:03:42'),
(1260, 999, 'Login Page Open', '::1', '2019-07-26 17:03:52'),
(1261, 999, 'Login Page Open', '::1', '2019-07-26 17:03:55'),
(1262, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:03:56'),
(1263, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:04:00'),
(1264, 999, 'Login Page Open', '::1', '2019-07-26 17:08:26'),
(1265, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:08:26'),
(1266, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:08:29'),
(1267, 999, 'Login Page Open', '::1', '2019-07-26 17:10:38'),
(1268, 999, 'Login Page Open', '::1', '2019-07-26 17:11:48'),
(1269, 999, 'Login Page Open', '::1', '2019-07-26 17:42:24'),
(1270, 999, 'Login Page Open', '::1', '2019-07-26 17:42:24'),
(1271, 999, 'Login Page Open', '::1', '2019-07-26 17:42:54'),
(1272, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:42:54'),
(1273, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:42:58'),
(1274, 999, 'Login Page Open', '::1', '2019-07-26 17:43:10'),
(1275, 999, 'Login Page Open', '::1', '2019-07-26 17:43:11'),
(1276, 999, 'Login Page Open', '::1', '2019-07-26 17:43:14'),
(1277, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:43:14'),
(1278, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:43:17'),
(1279, 999, 'Login Page Open', '::1', '2019-07-26 17:44:19'),
(1280, 999, 'Login Page Open', '::1', '2019-07-26 17:44:23'),
(1281, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:44:24'),
(1282, 6, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:44:27'),
(1283, 999, 'Login Page Open', '::1', '2019-07-26 17:45:30'),
(1284, 999, 'Login Page Open', '::1', '2019-07-26 17:47:40'),
(1285, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-26 17:47:40'),
(1286, 3, 'Correct Password Inserted in Login', '::1', '2019-07-26 17:47:45'),
(1287, 999, 'Login Page Open', '::1', '2019-07-27 08:01:42'),
(1288, 999, 'Login Page Open', '::1', '2019-07-27 08:01:51'),
(1289, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-27 08:01:51'),
(1290, 6, 'Correct Password Inserted in Login', '::1', '2019-07-27 08:01:55'),
(1291, 999, 'Login Page Open', '::1', '2019-07-27 08:29:23'),
(1292, 999, 'Login Page Open', '::1', '2019-07-27 08:29:26'),
(1293, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-27 08:29:26'),
(1294, 3, 'Correct Password Inserted in Login', '::1', '2019-07-27 08:29:30'),
(1295, 999, 'Login Page Open', '::1', '2019-07-27 08:36:40'),
(1296, 999, 'Login Page Open', '::1', '2019-07-27 08:36:43'),
(1297, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-27 08:36:43'),
(1298, 3, 'Correct Password Inserted in Login', '::1', '2019-07-27 08:36:47'),
(1299, 999, 'Login Page Open', '::1', '2019-07-27 11:14:44'),
(1300, 999, 'Login Page Open', '::1', '2019-07-27 11:16:21'),
(1301, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-27 11:16:21'),
(1302, 6, 'Correct Password Inserted in Login', '::1', '2019-07-27 11:16:28'),
(1303, 999, 'Login Page Open', '::1', '2019-07-27 14:31:10'),
(1304, 999, 'Login Page Open', '::1', '2019-07-27 14:32:39'),
(1305, 999, 'Login Page Open', '::1', '2019-07-27 14:32:41'),
(1306, 999, 'Login Page Open', '::1', '2019-07-27 14:39:04'),
(1307, 999, 'Login Page Open', '::1', '2019-07-27 14:39:07'),
(1308, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-27 14:39:08'),
(1309, 6, 'Correct Password Inserted in Login', '::1', '2019-07-27 14:39:11'),
(1310, 999, 'Login Page Open', '::1', '2019-07-28 04:04:47'),
(1311, 999, 'Login Page Open', '::1', '2019-07-28 04:05:06'),
(1312, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:05:06'),
(1313, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:05:09'),
(1314, 999, 'Login Page Open', '::1', '2019-07-28 04:10:01'),
(1315, 999, 'Login Page Open', '::1', '2019-07-28 04:10:32'),
(1316, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:10:32'),
(1317, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:10:35'),
(1318, 999, 'Login Page Open', '::1', '2019-07-28 04:11:57'),
(1319, 999, 'Login Page Open', '::1', '2019-07-28 04:12:01'),
(1320, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:12:01'),
(1321, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:12:03'),
(1322, 999, 'Login Page Open', '::1', '2019-07-28 04:12:33'),
(1323, 999, 'Login Page Open', '::1', '2019-07-28 04:12:36'),
(1324, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:12:36'),
(1325, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:12:39'),
(1326, 999, 'Login Page Open', '::1', '2019-07-28 04:13:39'),
(1327, 999, 'Login Page Open', '::1', '2019-07-28 04:13:42'),
(1328, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:13:42'),
(1329, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:13:44'),
(1330, 999, 'Login Page Open', '::1', '2019-07-28 04:14:16'),
(1331, 999, 'Login Page Open', '::1', '2019-07-28 04:14:18'),
(1332, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:14:19'),
(1333, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:14:22'),
(1334, 999, 'Login Page Open', '::1', '2019-07-28 04:15:59'),
(1335, 999, 'Login Page Open', '::1', '2019-07-28 04:16:18'),
(1336, 999, 'Login Page Open', '::1', '2019-07-28 04:16:20'),
(1337, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:16:20'),
(1338, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:16:23'),
(1339, 999, 'Login Page Open', '::1', '2019-07-28 04:21:01'),
(1340, 999, 'Login Page Open', '::1', '2019-07-28 04:21:04'),
(1341, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:21:04'),
(1342, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:21:07'),
(1343, 999, 'Login Page Open', '::1', '2019-07-28 04:22:14'),
(1344, 999, 'Login Page Open', '::1', '2019-07-28 04:22:16'),
(1345, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:22:16'),
(1346, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:22:19'),
(1347, 999, 'Login Page Open', '::1', '2019-07-28 04:25:08'),
(1348, 999, 'Login Page Open', '::1', '2019-07-28 04:25:10'),
(1349, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:25:10'),
(1350, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:25:13'),
(1351, 999, 'Login Page Open', '::1', '2019-07-28 04:26:53'),
(1352, 999, 'Login Page Open', '::1', '2019-07-28 04:26:55'),
(1353, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:26:56'),
(1354, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:26:58'),
(1355, 999, 'Login Page Open', '::1', '2019-07-28 04:51:58'),
(1356, 999, 'Login Page Open', '::1', '2019-07-28 04:52:15'),
(1357, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 04:52:15'),
(1358, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 04:52:18'),
(1359, 999, 'Login Page Open', '::1', '2019-07-28 09:33:13'),
(1360, 999, 'Login Page Open', '::1', '2019-07-28 09:33:15'),
(1361, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 09:33:15'),
(1362, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 09:33:18'),
(1363, 999, 'Login Page Open', '::1', '2019-07-28 10:26:51'),
(1364, 999, 'Login Page Open', '::1', '2019-07-28 10:29:03'),
(1365, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 10:29:03'),
(1366, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 10:29:06'),
(1367, 999, 'Login Page Open', '::1', '2019-07-28 10:29:22'),
(1368, 999, 'Login Page Open', '::1', '2019-07-28 11:18:51'),
(1369, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:18:51'),
(1370, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:19:00'),
(1371, 999, 'Login Page Open', '::1', '2019-07-28 11:25:39'),
(1372, 999, 'Login Page Open', '::1', '2019-07-28 11:25:42'),
(1373, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:25:43'),
(1374, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:25:45'),
(1375, 999, 'Login Page Open', '::1', '2019-07-28 11:26:32'),
(1376, 999, 'Login Page Open', '::1', '2019-07-28 11:26:35'),
(1377, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:26:36'),
(1378, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:26:38'),
(1379, 999, 'Login Page Open', '::1', '2019-07-28 11:26:58'),
(1380, 999, 'Login Page Open', '::1', '2019-07-28 11:27:03'),
(1381, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:27:03'),
(1382, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:27:07'),
(1383, 999, 'Login Page Open', '::1', '2019-07-28 11:28:05'),
(1384, 999, 'Login Page Open', '::1', '2019-07-28 11:28:07'),
(1385, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:28:07'),
(1386, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:28:10'),
(1387, 999, 'Login Page Open', '::1', '2019-07-28 11:28:30'),
(1388, 999, 'Login Page Open', '::1', '2019-07-28 11:28:35'),
(1389, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:28:35'),
(1390, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:28:38'),
(1391, 999, 'Login Page Open', '::1', '2019-07-28 11:32:58'),
(1392, 999, 'Login Page Open', '::1', '2019-07-28 11:33:04'),
(1393, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:33:04'),
(1394, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:33:07'),
(1395, 999, 'Login Page Open', '::1', '2019-07-28 11:54:28'),
(1396, 999, 'Login Page Open', '::1', '2019-07-28 11:54:31'),
(1397, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:54:31'),
(1398, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:54:34'),
(1399, 999, 'Login Page Open', '::1', '2019-07-28 11:54:51'),
(1400, 999, 'Login Page Open', '::1', '2019-07-28 11:54:58'),
(1401, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:54:58'),
(1402, 999, 'Login Page Open', '::1', '2019-07-28 11:55:07'),
(1403, 999, 'Login Page Open', '::1', '2019-07-28 11:55:11'),
(1404, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:55:12'),
(1405, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:55:14'),
(1406, 999, 'Login Page Open', '::1', '2019-07-28 11:55:34'),
(1407, 999, 'Login Page Open', '::1', '2019-07-28 11:55:36'),
(1408, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:55:36'),
(1409, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:55:39'),
(1410, 999, 'Login Page Open', '::1', '2019-07-28 11:56:23'),
(1411, 999, 'Login Page Open', '::1', '2019-07-28 11:56:28'),
(1412, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:56:29'),
(1413, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:56:31'),
(1414, 999, 'Login Page Open', '::1', '2019-07-28 11:59:35'),
(1415, 999, 'Login Page Open', '::1', '2019-07-28 11:59:41'),
(1416, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 11:59:41'),
(1417, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 11:59:43'),
(1418, 999, 'Login Page Open', '::1', '2019-07-28 14:16:51'),
(1419, 999, 'Login Page Open', '::1', '2019-07-28 14:17:18'),
(1420, 999, 'Login Page Open', '::1', '2019-07-28 14:17:36'),
(1421, 999, 'Login Page Open', '::1', '2019-07-28 14:17:51'),
(1422, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 14:17:51'),
(1423, 3, 'Correct Password Inserted in Login', '::1', '2019-07-28 14:17:54'),
(1424, 999, 'Login Page Open', '::1', '2019-07-28 14:19:37'),
(1425, 999, 'Login Page Open', '::1', '2019-07-28 14:19:40'),
(1426, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-28 14:19:40'),
(1427, 6, 'Correct Password Inserted in Login', '::1', '2019-07-28 14:19:44'),
(1428, 999, 'Login Page Open', '::1', '2019-07-29 04:56:00'),
(1429, 999, 'Login Page Open', '::1', '2019-07-29 04:56:03'),
(1430, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-29 04:56:03'),
(1431, 6, 'Correct Password Inserted in Login', '::1', '2019-07-29 04:56:06'),
(1432, 999, 'Login Page Open', '::1', '2019-07-29 05:43:44'),
(1433, 999, 'Login Page Open', '::1', '2019-07-29 05:43:49'),
(1434, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-29 05:43:49'),
(1435, 6, 'Correct Password Inserted in Login', '::1', '2019-07-29 05:44:03'),
(1436, 999, 'Login Page Open', '::1', '2019-07-29 05:54:21'),
(1437, 999, 'Login Page Open', '::1', '2019-07-29 05:54:23'),
(1438, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-29 05:54:23'),
(1439, 6, 'Correct Password Inserted in Login', '::1', '2019-07-29 05:54:25'),
(1440, 999, 'Login Page Open', '::1', '2019-07-29 15:17:42'),
(1441, 999, 'Login Page Open', '::1', '2019-07-29 15:23:02'),
(1442, 999, 'Login Page Open', '::1', '2019-07-29 15:23:05'),
(1443, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-29 15:23:05'),
(1444, 6, 'Correct Password Inserted in Login', '::1', '2019-07-29 15:23:09'),
(1445, 999, 'Login Page Open', '::1', '2019-07-29 15:27:17'),
(1446, 999, 'Login Page Open', '::1', '2019-07-29 15:27:20'),
(1447, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-29 15:27:20'),
(1448, 6, 'Correct Password Inserted in Login', '::1', '2019-07-29 15:27:23'),
(1449, 999, 'Login Page Open', '::1', '2019-07-30 11:02:25'),
(1450, 999, 'Login Page Open', '::1', '2019-07-30 11:02:29'),
(1451, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:02:29'),
(1452, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:02:34'),
(1453, 999, 'Login Page Open', '::1', '2019-07-30 11:03:28'),
(1454, 999, 'Login Page Open', '::1', '2019-07-30 11:03:31'),
(1455, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:03:31'),
(1456, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:03:34'),
(1457, 999, 'Login Page Open', '::1', '2019-07-30 11:03:42'),
(1458, 999, 'Login Page Open', '::1', '2019-07-30 11:03:45'),
(1459, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:03:45'),
(1460, 999, 'Login Page Open', '::1', '2019-07-30 11:03:46'),
(1461, 999, 'Login Page Open', '::1', '2019-07-30 11:03:48'),
(1462, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:03:48'),
(1463, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:03:52'),
(1464, 999, 'Login Page Open', '::1', '2019-07-30 11:05:35'),
(1465, 999, 'Login Page Open', '::1', '2019-07-30 11:05:38'),
(1466, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:05:38'),
(1467, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:05:42'),
(1468, 999, 'Login Page Open', '::1', '2019-07-30 11:16:51'),
(1469, 999, 'Login Page Open', '::1', '2019-07-30 11:16:54'),
(1470, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:16:54'),
(1471, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:16:57'),
(1472, 999, 'Login Page Open', '::1', '2019-07-30 11:32:21'),
(1473, 999, 'Login Page Open', '::1', '2019-07-30 11:32:23'),
(1474, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:32:23'),
(1475, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:32:26'),
(1476, 999, 'Login Page Open', '::1', '2019-07-30 11:32:43'),
(1477, 999, 'Login Page Open', '::1', '2019-07-30 11:32:46'),
(1478, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:32:46'),
(1479, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:32:49'),
(1480, 999, 'Login Page Open', '::1', '2019-07-30 11:33:13'),
(1481, 999, 'Login Page Open', '::1', '2019-07-30 11:33:19'),
(1482, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:33:19'),
(1483, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:33:22'),
(1484, 999, 'Login Page Open', '::1', '2019-07-30 11:33:50'),
(1485, 999, 'Login Page Open', '::1', '2019-07-30 11:33:53'),
(1486, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:33:53'),
(1487, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:33:55'),
(1488, 999, 'Login Page Open', '::1', '2019-07-30 11:39:28'),
(1489, 999, 'Login Page Open', '::1', '2019-07-30 11:39:31'),
(1490, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:39:31'),
(1491, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:39:34'),
(1492, 999, 'Login Page Open', '::1', '2019-07-30 11:39:53'),
(1493, 999, 'Login Page Open', '::1', '2019-07-30 11:39:56'),
(1494, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:39:56'),
(1495, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:39:59');
INSERT INTO `tbl_activity` (`activity_id`, `user_id`, `activity_details`, `ip_address`, `datetime`) VALUES
(1496, 999, 'Login Page Open', '::1', '2019-07-30 11:49:55'),
(1497, 999, 'Login Page Open', '::1', '2019-07-30 11:49:58'),
(1498, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:49:58'),
(1499, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:50:01'),
(1500, 999, 'Login Page Open', '::1', '2019-07-30 11:50:38'),
(1501, 999, 'Login Page Open', '::1', '2019-07-30 11:50:41'),
(1502, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:50:41'),
(1503, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:50:44'),
(1504, 999, 'Login Page Open', '::1', '2019-07-30 11:53:15'),
(1505, 999, 'Login Page Open', '::1', '2019-07-30 11:53:19'),
(1506, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:53:20'),
(1507, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:53:23'),
(1508, 999, 'Login Page Open', '::1', '2019-07-30 11:56:01'),
(1509, 999, 'Login Page Open', '::1', '2019-07-30 11:56:03'),
(1510, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:56:04'),
(1511, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:56:06'),
(1512, 999, 'Login Page Open', '::1', '2019-07-30 11:58:37'),
(1513, 999, 'Login Page Open', '::1', '2019-07-30 11:58:39'),
(1514, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 11:58:39'),
(1515, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 11:58:41'),
(1516, 999, 'Login Page Open', '::1', '2019-07-30 12:00:32'),
(1517, 999, 'Login Page Open', '::1', '2019-07-30 12:00:36'),
(1518, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:00:36'),
(1519, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:00:39'),
(1520, 999, 'Login Page Open', '::1', '2019-07-30 12:01:57'),
(1521, 999, 'Login Page Open', '::1', '2019-07-30 12:02:00'),
(1522, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:02:00'),
(1523, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:02:03'),
(1524, 999, 'Login Page Open', '::1', '2019-07-30 12:03:18'),
(1525, 999, 'Login Page Open', '::1', '2019-07-30 12:03:24'),
(1526, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:03:24'),
(1527, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:03:27'),
(1528, 999, 'Login Page Open', '::1', '2019-07-30 12:03:31'),
(1529, 999, 'Login Page Open', '::1', '2019-07-30 12:03:31'),
(1530, 999, 'Login Page Open', '::1', '2019-07-30 12:03:34'),
(1531, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:03:34'),
(1532, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:03:37'),
(1533, 999, 'Login Page Open', '::1', '2019-07-30 12:07:43'),
(1534, 999, 'Login Page Open', '::1', '2019-07-30 12:09:19'),
(1535, 999, 'Login Page Open', '::1', '2019-07-30 12:09:23'),
(1536, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:09:23'),
(1537, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:09:25'),
(1538, 999, 'Login Page Open', '::1', '2019-07-30 12:10:25'),
(1539, 999, 'Login Page Open', '::1', '2019-07-30 12:10:28'),
(1540, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:10:28'),
(1541, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:10:31'),
(1542, 999, 'Login Page Open', '::1', '2019-07-30 12:12:13'),
(1543, 999, 'Login Page Open', '::1', '2019-07-30 12:12:21'),
(1544, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:12:21'),
(1545, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:12:24'),
(1546, 999, 'Login Page Open', '::1', '2019-07-30 12:19:53'),
(1547, 999, 'Login Page Open', '::1', '2019-07-30 12:20:12'),
(1548, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 12:20:12'),
(1549, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 12:20:15'),
(1550, 999, 'Login Page Open', '::1', '2019-07-30 12:24:59'),
(1551, 999, 'Login Page Open', '::1', '2019-07-30 15:43:50'),
(1552, 999, 'Login Page Open', '::1', '2019-07-30 16:12:36'),
(1553, 999, 'Login Page Open', '::1', '2019-07-30 16:12:37'),
(1554, 999, 'Login Page Open', '::1', '2019-07-30 16:12:41'),
(1555, 999, 'Login Page Open', '::1', '2019-07-30 16:12:42'),
(1556, 999, 'Login Page Open', '::1', '2019-07-30 16:12:47'),
(1557, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 16:12:48'),
(1558, 6, 'Correct Password Inserted in Login', '::1', '2019-07-30 16:12:50'),
(1559, 999, 'Login Page Open', '::1', '2019-07-30 16:13:18'),
(1560, 3, 'User Enter Valid Email or Mobile no', '::1', '2019-07-30 16:13:18'),
(1561, 3, 'Correct Password Inserted in Login', '::1', '2019-07-30 16:13:21'),
(1562, 999, 'Login Page Open', '::1', '2019-07-31 10:29:46'),
(1563, 1, 'Signup Done', '::1', '2019-07-31 10:38:04'),
(1564, 999, 'Login Page Open', '::1', '2019-07-31 10:38:10'),
(1565, 1, 'Signup Done', '::1', '2019-07-31 11:09:13'),
(1566, 999, 'Login Page Open', '::1', '2019-07-31 11:09:20'),
(1567, 999, 'Login Page Open', '::1', '2019-07-31 16:36:58'),
(1568, 999, 'Login Page Open', '::1', '2019-07-31 16:37:01'),
(1569, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-31 16:37:01'),
(1570, 6, 'Correct Password Inserted in Login', '::1', '2019-07-31 16:37:05'),
(1571, 999, 'Login Page Open', '::1', '2019-07-31 16:56:31'),
(1572, 999, 'Login Page Open', '::1', '2019-07-31 16:56:33'),
(1573, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-07-31 16:56:34'),
(1574, 6, 'Correct Password Inserted in Login', '::1', '2019-07-31 16:56:37'),
(1575, 999, 'Login Page Open', '::1', '2019-07-31 17:17:28'),
(1576, 999, 'Login Page Open', '::1', '2019-08-01 10:02:35'),
(1577, 999, 'Login Page Open', '::1', '2019-08-01 10:02:37'),
(1578, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-01 10:02:38'),
(1579, 6, 'Correct Password Inserted in Login', '::1', '2019-08-01 10:02:41'),
(1580, 999, 'Login Page Open', '::1', '2019-08-11 13:53:18'),
(1581, 999, 'Login Page Open', '::1', '2019-08-11 13:53:19'),
(1582, 999, 'Login Page Open', '::1', '2019-08-11 13:53:24'),
(1583, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 13:53:24'),
(1584, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 13:53:28'),
(1585, 999, 'Login Page Open', '::1', '2019-08-11 14:05:06'),
(1586, 1, 'Signup Done', '::1', '2019-08-11 14:07:30'),
(1587, 999, 'Login Page Open', '::1', '2019-08-11 14:07:35'),
(1588, 999, 'Login Page Open', '::1', '2019-08-11 14:08:44'),
(1589, 20, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 14:08:44'),
(1590, 20, 'OTP Send on Mobile', '', '2019-08-11 14:08:51'),
(1591, 20, 'Correct Password Inserted in Login', '::1', '2019-08-11 14:09:35'),
(1592, 999, 'Login Page Open', '::1', '2019-08-11 14:10:01'),
(1593, 999, 'Login Page Open', '::1', '2019-08-11 14:10:08'),
(1594, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 14:10:08'),
(1595, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 14:10:11'),
(1596, 999, 'Login Page Open', '::1', '2019-08-11 14:11:59'),
(1597, 999, 'Login Page Open', '::1', '2019-08-11 14:27:36'),
(1598, 999, 'Login Page Open', '::1', '2019-08-11 14:27:40'),
(1599, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 14:27:40'),
(1600, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 14:27:42'),
(1601, 999, 'Login Page Open', '::1', '2019-08-11 14:28:20'),
(1602, 999, 'Login Page Open', '::1', '2019-08-11 14:28:38'),
(1603, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 14:28:38'),
(1604, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 14:28:40'),
(1605, 999, 'Login Page Open', '::1', '2019-08-11 14:30:45'),
(1606, 999, 'Login Page Open', '::1', '2019-08-11 15:42:16'),
(1607, 999, 'Login Page Open', '::1', '2019-08-11 15:45:23'),
(1608, 999, 'Login Page Open', '::1', '2019-08-11 15:49:44'),
(1609, 999, 'Login Page Open', '::1', '2019-08-11 15:49:48'),
(1610, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:49:49'),
(1611, 999, 'Login Page Open', '::1', '2019-08-11 15:49:58'),
(1612, 999, 'Login Page Open', '::1', '2019-08-11 15:50:04'),
(1613, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:50:04'),
(1614, 6, 'OTP Send on Mobile', '', '2019-08-11 15:50:07'),
(1615, 6, 'Correct OTP Inserted', '::1', '2019-08-11 15:50:34'),
(1616, 999, 'Login Page Open', '::1', '2019-08-11 15:51:23'),
(1617, 999, 'Login Page Open', '::1', '2019-08-11 15:51:49'),
(1618, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:51:49'),
(1619, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 15:51:52'),
(1620, 999, 'Login Page Open', '::1', '2019-08-11 15:52:50'),
(1621, 999, 'Login Page Open', '::1', '2019-08-11 15:53:10'),
(1622, 999, 'Login Page Open', '::1', '2019-08-11 15:53:19'),
(1623, 999, 'Login Page Open', '::1', '2019-08-11 15:53:24'),
(1624, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:53:25'),
(1625, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 15:55:12'),
(1626, 999, 'Login Page Open', '::1', '2019-08-11 15:56:55'),
(1627, 999, 'Login Page Open', '::1', '2019-08-11 15:56:56'),
(1628, 999, 'Login Page Open', '::1', '2019-08-11 15:57:00'),
(1629, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:57:00'),
(1630, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 15:57:04'),
(1631, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 15:59:27'),
(1632, 999, 'Login Page Open', '::1', '2019-08-11 15:59:37'),
(1633, 999, 'Login Page Open', '::1', '2019-08-11 15:59:41'),
(1634, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 15:59:41'),
(1635, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 15:59:44'),
(1636, 999, 'Login Page Open', '::1', '2019-08-11 16:05:51'),
(1637, 999, 'Login Page Open', '::1', '2019-08-11 16:06:04'),
(1638, 999, 'Login Page Open', '::1', '2019-08-11 16:06:08'),
(1639, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-11 16:06:08'),
(1640, 6, 'Correct Password Inserted in Login', '::1', '2019-08-11 16:06:11'),
(1641, 999, 'Login Page Open', '::1', '2019-08-11 16:10:54'),
(1642, 999, 'Login Page Open', '::1', '2019-08-13 06:47:58'),
(1643, 999, 'Login Page Open', '::1', '2019-08-13 06:48:01'),
(1644, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 06:48:01'),
(1645, 5, 'Correct Password Inserted in Login', '::1', '2019-08-13 06:48:04'),
(1646, 999, 'Login Page Open', '::1', '2019-08-13 06:49:23'),
(1647, 999, 'Login Page Open', '::1', '2019-08-13 06:49:27'),
(1648, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 06:49:28'),
(1649, 5, 'Correct Password Inserted in Login', '::1', '2019-08-13 06:49:30'),
(1650, 999, 'Login Page Open', '::1', '2019-08-13 06:49:59'),
(1651, 999, 'Login Page Open', '::1', '2019-08-13 06:50:01'),
(1652, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 06:50:01'),
(1653, 6, 'Correct Password Inserted in Login', '::1', '2019-08-13 06:50:04'),
(1654, 999, 'Login Page Open', '::1', '2019-08-13 06:50:55'),
(1655, 999, 'Login Page Open', '::1', '2019-08-13 06:50:59'),
(1656, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 06:50:59'),
(1657, 5, 'Correct Password Inserted in Login', '::1', '2019-08-13 06:51:02'),
(1658, 999, 'Login Page Open', '::1', '2019-08-13 07:18:46'),
(1659, 999, 'Login Page Open', '::1', '2019-08-13 07:18:48'),
(1660, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 07:18:49'),
(1661, 6, 'Wrong Password Inserted in Login', '::1', '2019-08-13 07:18:51'),
(1662, 6, 'Correct Password Inserted in Login', '::1', '2019-08-13 07:18:55'),
(1663, 999, 'Login Page Open', '::1', '2019-08-13 07:20:33'),
(1664, 999, 'Login Page Open', '::1', '2019-08-13 07:20:37'),
(1665, 5, 'User Enter Valid Email or Mobile no', '::1', '2019-08-13 07:20:37'),
(1666, 5, 'Correct Password Inserted in Login', '::1', '2019-08-13 07:20:40'),
(1667, 999, 'Login Page Open', '::1', '2019-08-16 14:33:04'),
(1668, 1, 'Signup Done', '::1', '2019-08-16 14:34:53'),
(1669, 999, 'Login Page Open', '::1', '2019-08-16 14:35:01'),
(1670, 999, 'Login Page Open', '::1', '2019-08-16 14:35:18'),
(1671, 21, 'User Enter Valid Email or Mobile no', '::1', '2019-08-16 14:35:19'),
(1672, 21, 'Correct Password Inserted in Login', '::1', '2019-08-16 14:35:40'),
(1673, 999, 'Login Page Open', '::1', '2019-08-16 14:36:37'),
(1674, 999, 'Login Page Open', '::1', '2019-08-16 14:37:19'),
(1675, 999, 'Login Page Open', '::1', '2019-08-16 14:37:32'),
(1676, 21, 'User Enter Valid Email or Mobile no', '::1', '2019-08-16 14:37:32'),
(1677, 21, 'Correct Password Inserted in Login', '::1', '2019-08-16 14:38:12'),
(1678, 999, 'Login Page Open', '::1', '2019-08-16 14:38:23'),
(1679, 999, 'Login Page Open', '::1', '2019-08-16 14:38:27'),
(1680, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-16 14:38:27'),
(1681, 6, 'Correct Password Inserted in Login', '::1', '2019-08-16 14:38:33'),
(1682, 999, 'Login Page Open', '::1', '2019-08-16 14:39:20'),
(1683, 999, 'Login Page Open', '::1', '2019-08-19 03:57:17'),
(1684, 999, 'Login Page Open', '::1', '2019-08-19 04:28:59'),
(1685, 999, 'Login Page Open', '::1', '2019-08-19 04:29:03'),
(1686, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-19 04:29:03'),
(1687, 6, 'Correct Password Inserted in Login', '::1', '2019-08-19 04:29:07'),
(1688, 999, 'Login Page Open', '::1', '2019-08-20 10:45:03'),
(1689, 999, 'Login Page Open', '::1', '2019-08-20 10:45:08'),
(1690, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-08-20 10:45:08'),
(1691, 2, 'Correct Password Inserted in Login', '::1', '2019-08-20 10:45:11'),
(1692, 999, 'Login Page Open', '::1', '2019-08-20 10:46:42'),
(1693, 999, 'Login Page Open', '::1', '2019-08-20 10:46:52'),
(1694, 2, 'User Enter Valid Email or Mobile no', '::1', '2019-08-20 10:46:53'),
(1695, 2, 'Correct Password Inserted in Login', '::1', '2019-08-20 10:46:56'),
(1696, 999, 'Login Page Open', '::1', '2019-08-20 10:48:55'),
(1697, 999, 'Login Page Open', '::1', '2019-08-20 10:49:01'),
(1698, 999, 'Login Page Open', '::1', '2019-08-20 11:23:41'),
(1699, 999, 'Login Page Open', '::1', '2019-08-20 11:23:45'),
(1700, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-20 11:23:45'),
(1701, 6, 'Correct Password Inserted in Login', '::1', '2019-08-20 11:23:49'),
(1702, 999, 'Login Page Open', '::1', '2019-08-23 06:31:36'),
(1703, 999, 'Login Page Open', '::1', '2019-08-23 06:31:40'),
(1704, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-23 06:31:40'),
(1705, 6, 'Correct Password Inserted in Login', '::1', '2019-08-23 06:31:43'),
(1706, 999, 'Login Page Open', '::1', '2019-08-26 12:07:06'),
(1707, 999, 'Login Page Open', '::1', '2019-08-27 12:39:28'),
(1708, 999, 'Login Page Open', '::1', '2019-08-27 12:41:59'),
(1709, 999, 'Login Page Open', '::1', '2019-08-27 12:42:04'),
(1710, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-27 12:42:04'),
(1711, 6, 'Correct Password Inserted in Login', '::1', '2019-08-27 12:42:08'),
(1712, 999, 'Login Page Open', '::1', '2019-08-27 13:08:33'),
(1713, 999, 'Login Page Open', '::1', '2019-08-27 13:12:12'),
(1714, 999, 'Login Page Open', '::1', '2019-08-27 13:12:13'),
(1715, 999, 'Login Page Open', '::1', '2019-08-27 13:12:18'),
(1716, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-27 13:12:18'),
(1717, 999, 'Login Page Open', '::1', '2019-08-28 12:14:45'),
(1718, 999, 'Login Page Open', '::1', '2019-08-28 12:14:51'),
(1719, 6, 'User Enter Valid Email or Mobile no', '::1', '2019-08-28 12:14:51'),
(1720, 6, 'Correct Password Inserted in Login', '::1', '2019-08-28 12:14:55'),
(1721, 999, 'Login Page Open', '::1', '2019-08-29 04:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `bill_id` int(11) NOT NULL,
  `my_bill_id` varchar(20) NOT NULL,
  `bill_date` datetime NOT NULL,
  `cust_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `po_rate` varchar(255) NOT NULL,
  `godown_id` int(11) NOT NULL,
  `bill_royalty_no` varchar(50) NOT NULL,
  `bill_ssp_no` varchar(50) NOT NULL,
  `bill_qty` varchar(50) NOT NULL,
  `bill_amount` varchar(255) NOT NULL,
  `bill_tax_igst` float NOT NULL,
  `bill_tax_cgst` float NOT NULL,
  `bill_tax_sgst` float NOT NULL,
  `final_amount` decimal(18,2) NOT NULL,
  `bill_vehicle_no` varchar(20) NOT NULL,
  `is_active` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`bill_id`, `my_bill_id`, `bill_date`, `cust_id`, `po_id`, `trans_id`, `pro_id`, `po_rate`, `godown_id`, `bill_royalty_no`, `bill_ssp_no`, `bill_qty`, `bill_amount`, `bill_tax_igst`, `bill_tax_cgst`, `bill_tax_sgst`, `final_amount`, `bill_vehicle_no`, `is_active`, `year_id`, `datetime`, `user_id`) VALUES
(1, 'AM/2019/1', '2019-07-29 00:00:00', 2, 1, 1, 1, '700', 1, 'SDC5263', '56245h', '20', '14000', 700, 0, 0, '14700.00', 'RJ096523', 1, 2019, '2019-07-29 15:52:39', 6),
(2, 'AM/2019/2', '2019-07-25 00:00:00', 2, 1, 3, 1, '700', 2, '123654', '545584', '25', '17500', 875, 0, 0, '18375.00', 'test', 1, 2019, '2019-07-29 15:53:36', 6),
(3, 'AM/2019/3', '2019-08-04 00:00:00', 3, 2, 2, 3, '1200', 1, '123', '1234', '40', '48000', 2400, 0, 0, '50400.00', '12345', 1, 2019, '2019-08-04 11:49:10', 6),
(4, 'AM/2019/4', '2019-08-04 00:00:00', 3, 2, 4, 1, '1200', 2, 'SDC5263', '123456', '10', '12000', 600, 0, 0, '12600.00', 'test', 1, 2019, '2019-08-04 11:50:01', 6),
(5, 'AM/2019/5', '2019-08-04 00:00:00', 2, 1, 1, 1, '700', 2, '123654', '1', '20', '14000', 700, 0, 0, '14700.00', 'RJ096523', 1, 2019, '2019-08-04 11:50:26', 6),
(6, 'AM/2019/6', '2019-08-04 00:00:00', 2, 1, 3, 1, '700', 1, 'SNC24563', '545584', '25', '17500', 875, 0, 0, '18375.00', '12345', 1, 2019, '2019-08-04 11:51:03', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `state_id`, `dis_id`, `city_name`, `is_active`, `created_by`, `datetime`) VALUES
(2, 7, 4, 'SHAMBHUPURA', '1', '', '2019-06-17 06:26:45'),
(3, 7, 4, 'NIMBAHERA', '1', '', '2019-06-17 06:26:45'),
(4, 6, 3, 'BAYAD', '1', '', '2019-06-17 06:26:45'),
(5, 17, 8, 'THENI', '1', '', '2019-06-17 06:26:45'),
(7, 17, 8, 'CHENNAI', '1', '', '2019-06-17 06:26:45'),
(8, 6, 3, 'FVBFDBH', '0', '', '2019-07-07 08:11:29'),
(9, 6, 13, 'AHMEDABAD', '1', '', '2019-07-22 17:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `comp_id` int(11) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `comp_email` varchar(255) NOT NULL,
  `comp_owner` varchar(255) NOT NULL,
  `comp_mob1` varchar(20) NOT NULL,
  `comp_mob2` varchar(20) NOT NULL,
  `comp_gst_no` varchar(255) NOT NULL,
  `comp_state_code` varchar(3) NOT NULL,
  `comp_cst_no` varchar(20) NOT NULL,
  `comp_pan_no` varchar(20) NOT NULL,
  `comp_address` varchar(255) NOT NULL,
  `comp_city` varchar(255) NOT NULL,
  `comp_district` varchar(255) NOT NULL,
  `comp_state` varchar(255) NOT NULL,
  `comp_pincode` int(20) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`comp_id`, `comp_name`, `comp_email`, `comp_owner`, `comp_mob1`, `comp_mob2`, `comp_gst_no`, `comp_state_code`, `comp_cst_no`, `comp_pan_no`, `comp_address`, `comp_city`, `comp_district`, `comp_state`, `comp_pincode`, `is_active`, `datetime`) VALUES
(1, 'ANNAPURNA MINERAL', 'pandyakaushikkumar@gmail.com', 'PANDYA KAUSHIKKUMAR BHOGILAL', '+91-9428773891', '+91-9427389507', '24ACRPP4526B1ZO', '24', '123456', ' ACRPP4526B', 'TENPUR BAUXITE MINES MAJUM NADI PAT 2.05 HE,AMBALIYARA', 'Bayad', ' ARAVALLI', 'Gujarat', 383325, '1', '2019-06-17 06:27:26'),
(2, 'MEHTAJI ENTERPRISE', 'nidhimehta194@gmail.com', 'NIDHI MEHTA', '07043486525', '07043486525', 'ACHJI890KIL', '24', '236541', '123456', 'SHREEJI-9 BUNGLOWS', 'GANDHINAGAR', 'GANDHINAGAR', 'GUJARAT', 382007, '1', '2019-06-17 06:27:26'),
(3, 'MEHTAJI ENTERPRISE', 'nidhimehta194@gmail.com', 'NIDHI MEHTA', '07043486525', '07043486525', 'ACHJI890KIL', '24', '236541', '123456', 'SHREEJI-9 BUNGLOWS', 'GANDHINAGAR', 'GANDHINAGAR', 'GUJARAT', 382007, '1', '2019-06-17 06:27:26'),
(4, 'Nidhi enterprise', 'nidhimehta194@gmail.com', 'NIDHI MEHTA', '07043486525', '9428773891', 'ACHJI890KIL', '02', '145632', 'ACPPLK4562H', 'Mall road, shimla', 'shimla', 'shimla', 'himachal pradesh', 302561, '1', '2019-06-17 06:27:26'),
(5, 'SHIVAM ENTERPRISE', 'shivam@gmail.com', 'BHAVIN PANDYA', '9428773891', '7043486525', 'ACPPO45632PK', '24', '456963', '369852147', 'BAYAD', 'BAYAD', ' ARAVALLI', 'GUJARAT', 382421, '1', '2019-06-17 06:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_short_name` varchar(20) NOT NULL,
  `cust_mobile` varchar(20) NOT NULL,
  `state_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `cust_address` varchar(255) NOT NULL,
  `cust_pincode` int(20) NOT NULL,
  `contact_mobile_no1` varchar(20) NOT NULL,
  `whatsapp_mobile_no` varchar(20) NOT NULL,
  `cust_email` varchar(255) NOT NULL,
  `cust_contact_person_name` varchar(255) NOT NULL,
  `contact_designation` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `cust_pan_no` varchar(50) NOT NULL,
  `cust_gst_no` varchar(50) NOT NULL,
  `cust_cin_no` varchar(30) NOT NULL,
  `contact_dob` varchar(20) NOT NULL,
  `cust_photo` varchar(255) NOT NULL,
  `cust_remarks` varchar(1024) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_short_name`, `cust_mobile`, `state_id`, `dis_id`, `city_id`, `cust_address`, `cust_pincode`, `contact_mobile_no1`, `whatsapp_mobile_no`, `cust_email`, `cust_contact_person_name`, `contact_designation`, `contact_email`, `cust_pan_no`, `cust_gst_no`, `cust_cin_no`, `contact_dob`, `cust_photo`, `cust_remarks`, `is_active`, `created_by`, `datetime`) VALUES
(2, 'ADITYA CEMENT', 'ADITYA', '7043486525', 7, 4, 2, 'UNIT: ULTRATECH CEMENT WORKS, ADITYAPURAM,SHAMBHUPURA', 456320, '9887482012', '9887482012', 'adityabirla@gmail.com', 'HARI MANTRIJI', 'Manager', 'ravi.k@adityabirla.com', ' AAACL6442L', '08AAACL6442L1ZA', 'hgbhrtfh', '19-04-1995', './upload/customer.png', '1) Remarks', '1', '', '2019-06-17 06:28:00'),
(3, 'WONDER CEMENT', 'WONDER', '', 7, 4, 3, 'R. K. Nagar,NIMBAHERA', 312601, '8003094714', '8003094714', ' wonder@gmail.com', 'RADHESHYAMJI KABRA', 'HO Purchase', 'kabra@gmail.com', 'AAACW6009L', '565265fdrcfcf', 'bfvfgb', '21-07-1993', './upload/customer.png', '', '1', '', '2019-06-17 06:28:00'),
(4, 'NAVDURGA MINERAL', 'NAVDURGA', '', 6, 3, 4, '89,Vaniyavali Fali, Demai', 383330, '07043486525', '07043486525', 'nidhimehta194@gmail.com', 'NAVNEETRAY MEHTA', 'Owner', 'mehta123@gmail.com', '1215465', '242424', 'vrfgcvbgtrf', '', './upload/customer.png', '', '1', '', '2019-06-17 06:28:00'),
(5, 'DIVYA WELDING', 'DIVYA', '', 6, 3, 4, 'AMBALIYARA', 383325, '07043486525', '07043486525', 'nidhimehta194@gmail.com', 'NIDHI MEHTA', 'Owner', '', 'fnef21421', '242424', 'hbtgfvrgt', '', './upload/customer.png', '', '0', '', '2019-06-17 06:28:00'),
(6, 'MEHTAJI ENTERPRISE', 'NIDHI', '', 6, 3, 4, '89,VANIYAVALI FALI, DEMAI', 383330, '07043486525', '07043486525', 'nidhimehta194@gmail.com', 'NIDHI MEHTA', 'Owner', '', 'hbjdsnj5421', '32323cfedfr', '', '', './upload/customer.png', '', '0', '', '2019-07-25 15:44:21'),
(7, 'DEMO CUSTOMER ', 'CUST 1', '9428773891', 6, 13, 9, 'GANDHINAGAR', 382003, '07043486525', '07043486525', 'mine@gmail.com', 'BHAVINBHAI', 'manager', 'mineohms@gmail.com', 'rfgvbgbhL', 'gvgvgvgvgvf', '', '27-07-1990', './upload/customer.png', '', '1', '', '2019-07-27 13:03:54'),
(8, 'CUSTOMER2', 'CUST2', '7874135421', 6, 3, 4, 'BAYAD', 383325, '9724606727', '9428773891', 'annapurnamineral@yahoo.com', 'BHAVIN PANDYA', 'MANAGER', 'mineohms@gmail.com', 'BDIPP3469E', '24BDIPP3469E1ZG', '', '27-09-1990', './upload/customer.png', '', '0', '', '2019-07-27 13:26:20'),
(9, '1', '1', '1', 6, 3, 4, 'BNYJMMKU', 383325, '07043486525', '07043486525', 'fvgbvgb@gmail.com', 'RADHESHYAMJI KABRA', 'manager', 'nidhimehta194@gmail.com', ' AAACL6442L', '65464dcccd', '', './upload/customer.pn', '25-10-2015', 'hnjmky', '0', '6', '2019-07-29 05:01:21'),
(10, 'BHAVIN PANDYA', 'BHAVIN', '9428773891', 6, 3, 4, 'GANDHINAGAR', 382421, '9428773891', '9724606727', 'mineohms@gmail.com', 'BHAVIN', 'MANAGER', 'mineohms@gmail.com', 'BDIPP3469E', '24BDIPP3469E1ZG', '', './upload/customer.pn', '27-07-1990', 'REMARKS', '1', '6', '2019-07-29 05:44:57'),
(11, 'BALAJI ENTERPRISE', 'BALAJI', '9979125321', 6, 13, 9, 'AHMEDABAD', 382001, '9428773891', '9724606727', 'bhavinpandyaece@gmail.com', 'BIPIN MALKAN', 'MANAGER', 'bipin@gmail.com', 'ACRPP4526B', '24ACRPP4526B1ZO', '', './upload/customer.pn', '27-09-1990', 'remarks', '1', '6', '2019-07-29 05:49:02'),
(12, 'SHREE RAJSHAKTI ENTERPRISE', 'RAJSHAKTI', '9595959595', 6, 3, 8, 'BAYAD', 383325, '9428773891', '9724606727', 'RAJ@GMAIL.COM', 'NIDHI', 'MANAGER', 'MANAGER@GMAIL.COM', 'ACRPP4526B', '24AAKFN8947K1ZM', '', './upload/customer.pn', '27-09-1990', 'REMARKS', '1', '6', '2019-07-29 05:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diesel_operator`
--

CREATE TABLE `tbl_diesel_operator` (
  `diesel_op_id` int(11) NOT NULL,
  `diesel_op_date` date NOT NULL,
  `diesel_op_qty` varchar(20) NOT NULL,
  `diesel_op_time` time NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_diesel_operator`
--

INSERT INTO `tbl_diesel_operator` (`diesel_op_id`, `diesel_op_date`, `diesel_op_qty`, `diesel_op_time`, `created_by`, `datetime`) VALUES
(1, '2019-08-13', '20', '05:00:00', '5', '2019-08-13 12:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `dis_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `dis_name` varchar(255) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`dis_id`, `state_id`, `dis_name`, `is_active`, `created_by`, `datetime`) VALUES
(3, 6, 'ARAVALLI', '0', '', '2019-06-17 06:28:31'),
(4, 7, 'CHITTORGARH', '1', '', '2019-06-17 06:28:31'),
(5, 8, 'PUNE', '1', '', '2019-06-17 06:28:31'),
(7, 7, 'UDAIPUR', '1', '', '2019-06-17 06:28:31'),
(8, 17, 'VELLORE', '1', '', '2019-06-17 06:28:31'),
(9, 17, 'ERODE', '0', '', '2019-06-17 06:28:31'),
(10, 6, 'ANAND', '0', '', '2019-06-17 06:28:31'),
(11, 6, 'PALANPUR', '0', '', '2019-06-17 06:28:31'),
(12, 6, 'TYHTRH', '0', '', '2019-07-07 07:55:13'),
(13, 6, 'AHMEDABAD', '1', '', '2019-07-22 17:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_master`
--

CREATE TABLE `tbl_form_master` (
  `form_id` int(11) NOT NULL,
  `form_code` varchar(200) NOT NULL,
  `form_name` varchar(200) NOT NULL,
  `form_tag` varchar(200) NOT NULL,
  `device_type` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_form_master`
--

INSERT INTO `tbl_form_master` (`form_id`, `form_code`, `form_name`, `form_tag`, `device_type`) VALUES
(1, '', 'Admin dashboard', '', ''),
(2, '', 'Subadmin dashboard', '', ''),
(3, '', 'Manager dashboard', '', ''),
(4, '', 'Employee dashboard', '', ''),
(5, '', 'Worker dashboard', '', ''),
(6, '', 'Customer dashboard', '', ''),
(7, '', 'Transporter dashboard', '', ''),
(8, '', 'Supplier dashboard', '', ''),
(9, '', 'GST dashboard', '', ''),
(10, '', 'Government dashboard', '', ''),
(11, '', 'Income tax dashboard', '', ''),
(12, '', 'Manage User', '', ''),
(13, '', 'Manage Role', '', ''),
(14, '', 'Manage Company', '', ''),
(15, '', 'Manage State', '', ''),
(16, '', 'Manage District', '', ''),
(17, '', 'Manage City', '', ''),
(18, '', 'Manage Godown', '', ''),
(19, '', 'Manage Product', '', ''),
(20, '', 'Manage Customer', '', ''),
(21, '', 'Manage Transporter', '', ''),
(22, '', 'Manage Purchase Order', '', ''),
(23, '', 'Manage Bill / Sales Invoices', '', ''),
(24, '', 'View Customer Bill', '', ''),
(25, '', 'View Transporter Bill', '', ''),
(26, '', 'View Supplier Bill', '', ''),
(27, '', 'Manage Vehicle', '', ''),
(28, '', 'Vehicle Fera', '', ''),
(29, '', 'Visiting Card', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown`
--

CREATE TABLE `tbl_godown` (
  `godown_id` int(11) NOT NULL,
  `godown_name` varchar(255) NOT NULL,
  `godown_short_name` varchar(20) NOT NULL,
  `godown_opening_stock` varchar(255) NOT NULL,
  `godown_rate` int(11) NOT NULL,
  `godown_amount` int(11) NOT NULL,
  `trn_in` int(11) NOT NULL,
  `trn_out` int(11) NOT NULL,
  `godown_qty` int(11) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_godown`
--

INSERT INTO `tbl_godown` (`godown_id`, `godown_name`, `godown_short_name`, `godown_opening_stock`, `godown_rate`, `godown_amount`, `trn_in`, `trn_out`, `godown_qty`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'REGISTRATION PLOT', 'STOCKYA', '5000', 800, 4000000, 70, 285, 4785, '1', '6', '2019-07-29 15:49:12'),
(2, 'MINING LEASE', 'LEASE', '8000', 900, 7200000, 200, 125, 8075, '1', '6', '2019-07-29 15:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_expense`
--

CREATE TABLE `tbl_godown_expense` (
  `godown_expense_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `bill_qty` varchar(255) NOT NULL,
  `godown_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `opp_acc_id` int(11) NOT NULL,
  `trn_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_godown_expense`
--

INSERT INTO `tbl_godown_expense` (`godown_expense_id`, `bill_id`, `bill_qty`, `godown_id`, `user_id`, `opp_acc_id`, `trn_date`) VALUES
(1, 1, '20', 1, 6, 0, '2019-07-29 21:22:40'),
(2, 2, '25', 2, 6, 0, '2019-07-29 21:23:36'),
(3, 0, '20', 2, 0, 1, '2019-07-31 22:24:41'),
(4, 0, '50', 2, 0, 1, '2019-08-01 15:34:02'),
(5, 0, '', 1, 0, 2, '2019-08-01 15:56:34'),
(6, 0, '200', 1, 0, 2, '2019-08-01 15:57:09'),
(7, 3, '40', 1, 6, 0, '2019-08-04 17:19:10'),
(8, 4, '10', 2, 6, 0, '2019-08-04 17:20:01'),
(9, 5, '20', 2, 6, 0, '2019-08-04 17:20:26'),
(10, 6, '25', 1, 6, 0, '2019-08-04 17:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_godown_income`
--

CREATE TABLE `tbl_godown_income` (
  `godown_income_id` int(11) NOT NULL,
  `godown_id` int(11) NOT NULL,
  `godown_income_qty` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `opp_acc_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `trn_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_godown_income`
--

INSERT INTO `tbl_godown_income` (`godown_income_id`, `godown_id`, `godown_income_qty`, `user_id`, `opp_acc_id`, `bill_id`, `trn_date`) VALUES
(1, 0, '20', 6, 0, 0, '0000-00-00'),
(2, 0, '25', 6, 0, 0, '0000-00-00'),
(3, 1, '20', 0, 2, 0, '2019-07-31'),
(4, 1, '50', 0, 2, 0, '2019-08-01'),
(5, 2, '', 0, 1, 0, '2019-08-01'),
(6, 2, '200', 0, 1, 0, '2019-08-01'),
(7, 0, '40', 6, 0, 0, '0000-00-00'),
(8, 0, '10', 6, 0, 0, '0000-00-00'),
(9, 0, '20', 6, 0, 0, '0000-00-00'),
(10, 0, '25', 6, 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine_register`
--

CREATE TABLE `tbl_machine_register` (
  `machine_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `machine_name` varchar(200) NOT NULL,
  `machine_no` varchar(50) NOT NULL,
  `driver_name` varchar(200) DEFAULT NULL,
  `lic_no` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `insert_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_machine_register`
--

INSERT INTO `tbl_machine_register` (`machine_id`, `date`, `machine_name`, `machine_no`, `driver_name`, `lic_no`, `mobile_no`, `supp_id`, `user_id`, `is_active`, `insert_datetime`) VALUES
(1, '2019-08-27', 'Hitachi', '4562', 'Nidhi', '6352652', '85956', 1, 0, '1', '2019-08-27 11:10:57'),
(3, '2019-08-07', 'iuhk', 'kmujh', 'kmujh', 'kmyjuhn', 'kjm uj', 2, 0, '0', '2019-08-27 11:43:45'),
(4, '2019-08-15', 'Braker', '1230', 'Bhavin', '895623', '1259', 2, 0, '1', '2019-08-27 17:55:07'),
(5, '2019-08-01', 'MKKKNK,', 'dxscc', 'xscxxszc', 'xscc', 'xsc', 3, 0, '1', '2019-08-27 18:03:13'),
(6, '2019-08-01', 'CDC', 'CS6563', 'XSC XSSZX', 'CSC25236', 'cscc55632', 1, 0, '1', '2019-08-27 18:07:47'),
(7, '2019-08-02', 'BHHVBH', 'HGHGVH', 'HBVHVHB', 'VBHVH', 'fgfvgf', 2, 0, '1', '2019-08-27 18:08:37'),
(8, '2019-08-16', 'FDEFF', 'FDVF', 'FEDRF', 'FEDF', 'fefff', 2, 0, '1', '2019-08-27 19:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine_time`
--

CREATE TABLE `tbl_machine_time` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(200) DEFAULT NULL,
  `end_time` varchar(200) DEFAULT NULL,
  `diesel` varchar(50) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `insert_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `modify_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_machine_time`
--

INSERT INTO `tbl_machine_time` (`id`, `machine_id`, `date`, `start_time`, `end_time`, `diesel`, `amount`, `remarks`, `is_active`, `insert_datetime`, `modify_datetime`) VALUES
(1, 1, '2019-08-29', '08:45:00 am', '', '', '', '', '0', '2019-08-29 09:38:36', NULL),
(2, 1, '2019-08-29', '08:45:00 am', '12:30:00 pm', '200', '2000', '', '1', '2019-08-29 09:39:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_icon` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_name`, `menu_icon`, `menu_link`, `role_id`) VALUES
(1, 'Dashboard', '../images/dashboard.png', 'https://www.flaticon.com/search?word=dashboard%20icons', 1),
(2, 'Transaction', '../images/menu_icon.png', 'http:/www.menuhcjdhn.php', 2),
(3, 'Tools', '../images/menu_icon.png', 'http:/www.menuhcjdhn.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_po_pro`
--

CREATE TABLE `tbl_po_pro` (
  `po_pro_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_po_pro`
--

INSERT INTO `tbl_po_pro` (`po_pro_id`, `pro_id`, `po_id`, `datetime`) VALUES
(1, 1, 1, '2019-06-17 06:29:28'),
(2, 1, 2, '2019-06-17 06:29:28'),
(3, 3, 3, '2019-06-17 06:29:28'),
(4, 3, 4, '2019-06-17 06:29:28'),
(5, 1, 5, '2019-06-17 06:29:28'),
(6, 4, 6, '2019-06-17 06:29:28'),
(7, 1, 7, '2019-07-25 16:34:12'),
(8, 1, 1, '2019-07-29 15:52:12'),
(9, 3, 2, '2019-07-30 07:18:45'),
(10, 3, 3, '2019-07-30 07:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_po_transporter`
--

CREATE TABLE `tbl_po_transporter` (
  `po_trans_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_po_transporter`
--

INSERT INTO `tbl_po_transporter` (`po_trans_id`, `po_id`, `trans_id`, `datetime`) VALUES
(1, 1, 1, '2019-07-29 15:52:12'),
(2, 1, 3, '2019-07-29 15:52:12'),
(3, 2, 2, '2019-07-30 07:18:45'),
(4, 2, 4, '2019-07-30 07:18:45'),
(5, 2, 5, '2019-07-30 07:18:45'),
(6, 3, 1, '2019-07-30 07:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_code` varchar(50) NOT NULL,
  `pro_rate` int(11) NOT NULL,
  `pro_tax_igst` decimal(5,1) NOT NULL,
  `pro_tax_cgst` decimal(5,1) NOT NULL,
  `pro_tax_sgst` decimal(5,1) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `pro_code`, `pro_rate`, `pro_tax_igst`, `pro_tax_cgst`, `pro_tax_sgst`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'Loose Bauxite', '260600203', 900, '5.0', '2.5', '2.5', '1', '', '2019-06-17 06:30:14'),
(2, 'GRAVEL', 'DEG7895', 500, '5.0', '2.5', '2.5', '1', '', '2019-06-17 06:30:14'),
(3, 'LATRIET', 'SVC5623', 600, '5.0', '2.5', '2.5', '1', '', '2019-06-17 06:30:14'),
(4, 'FLY ASH', '89562fed', 1000, '5.0', '2.5', '2.5', '1', '', '2019-06-17 06:30:14'),
(5, 'CLAY', '2641541', 100, '5.0', '2.5', '2.5', '1', '', '2019-06-17 06:30:14'),
(6, 'HTGRHRT', 'jtytyu677', 1000, '5.0', '2.5', '2.5', '0', '', '2019-07-07 10:45:04'),
(7, 'LOADING SERVICE', '123456', 250, '18.0', '9.0', '9.0', '1', '', '2019-07-07 13:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_order`
--

CREATE TABLE `tbl_purchase_order` (
  `po_id` int(11) NOT NULL,
  `po_num` varchar(255) NOT NULL,
  `po_name` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `cust_id` int(11) NOT NULL,
  `po_rate` bigint(20) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_purchase_order`
--

INSERT INTO `tbl_purchase_order` (`po_id`, `po_num`, `po_name`, `from_date`, `to_date`, `cust_id`, `po_rate`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'AC/ACE/1610502092', 'PO-18-19', '2019-04-01', '2020-03-31', 2, 700, '1', '6', '2019-07-29 15:52:12'),
(2, 'AC/ACE/1610502123', 'Latriet18-19', '2019-04-01', '2020-04-01', 3, 1200, '1', '6', '2019-07-30 07:18:45'),
(3, '1', '1', '2019-07-30', '2019-07-31', 2, 1200, '0', '6', '2019-07-30 07:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_name`, `is_active`, `datetime`) VALUES
(1, 'ADMINISTRATOR', '1', '2019-06-17 06:30:58'),
(2, 'SUB ADMIN', '1', '2019-06-17 06:30:58'),
(3, 'MANAGER', '1', '2019-06-17 06:30:58'),
(4, 'EMPLOYEE', '1', '2019-06-17 06:30:58'),
(5, 'WORKER', '1', '2019-06-17 06:30:58'),
(6, 'CUSTOMER', '1', '2019-06-17 06:30:58'),
(7, 'TRANSPORTER', '1', '2019-06-17 06:30:58'),
(8, 'SUPPLIER', '1', '2019-06-17 06:30:58'),
(9, 'GST ACCOUNTANT', '1', '2019-06-17 06:30:58'),
(10, 'INCOME TAX', '1', '2019-06-17 06:30:58'),
(11, 'GOVERNMENT', '1', '2019-06-17 06:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_master`
--

CREATE TABLE `tbl_role_master` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `can_view` int(11) NOT NULL,
  `can_insert` int(11) NOT NULL,
  `can_delete` int(11) NOT NULL,
  `can_update` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_master`
--

INSERT INTO `tbl_role_master` (`role_id`, `user_id`, `form_id`, `can_view`, `can_insert`, `can_delete`, `can_update`, `is_admin`) VALUES
(156, 3, 26, 0, 0, 0, 0, 0),
(155, 3, 25, 0, 0, 0, 0, 0),
(154, 3, 24, 1, 0, 0, 0, 0),
(153, 3, 23, 0, 0, 0, 0, 0),
(152, 3, 22, 0, 0, 0, 0, 0),
(151, 3, 21, 0, 0, 0, 0, 0),
(150, 3, 20, 0, 0, 0, 0, 0),
(149, 3, 19, 0, 0, 0, 0, 0),
(148, 3, 18, 0, 0, 0, 0, 0),
(147, 3, 17, 0, 0, 0, 0, 0),
(146, 3, 16, 1, 0, 0, 1, 0),
(145, 3, 15, 1, 0, 0, 0, 0),
(144, 3, 14, 0, 0, 0, 0, 0),
(143, 3, 13, 0, 0, 0, 0, 0),
(142, 3, 12, 0, 0, 0, 0, 0),
(141, 3, 11, 0, 0, 0, 0, 0),
(140, 3, 10, 0, 0, 0, 0, 0),
(139, 3, 9, 0, 0, 0, 0, 0),
(138, 3, 8, 0, 0, 0, 0, 0),
(137, 3, 7, 0, 0, 0, 0, 0),
(136, 3, 6, 1, 0, 0, 0, 0),
(135, 3, 5, 0, 0, 0, 0, 0),
(134, 3, 4, 0, 0, 0, 0, 0),
(133, 3, 3, 0, 0, 0, 0, 0),
(132, 3, 2, 0, 0, 0, 0, 0),
(131, 3, 1, 0, 0, 0, 0, 0),
(157, 5, 1, 0, 0, 0, 0, 0),
(158, 5, 2, 0, 0, 0, 0, 0),
(159, 5, 3, 0, 0, 0, 0, 0),
(160, 5, 4, 0, 0, 0, 0, 0),
(161, 5, 5, 1, 1, 1, 1, 0),
(162, 5, 6, 0, 0, 0, 0, 0),
(163, 5, 7, 0, 0, 0, 0, 0),
(164, 5, 8, 0, 0, 0, 0, 0),
(165, 5, 9, 0, 0, 0, 0, 0),
(166, 5, 10, 0, 0, 0, 0, 0),
(167, 5, 11, 0, 0, 0, 0, 0),
(168, 5, 12, 0, 0, 0, 0, 0),
(169, 5, 13, 0, 0, 0, 0, 0),
(170, 5, 14, 0, 0, 0, 0, 0),
(171, 5, 15, 0, 0, 0, 0, 0),
(172, 5, 16, 0, 0, 0, 0, 0),
(173, 5, 17, 0, 0, 0, 0, 0),
(174, 5, 18, 0, 0, 0, 0, 0),
(175, 5, 19, 0, 0, 0, 0, 0),
(176, 5, 20, 0, 0, 0, 0, 0),
(177, 5, 21, 0, 0, 0, 0, 0),
(178, 5, 22, 0, 0, 0, 0, 0),
(179, 5, 23, 0, 0, 0, 0, 0),
(180, 5, 24, 0, 0, 0, 0, 0),
(181, 5, 25, 0, 0, 0, 0, 0),
(182, 5, 26, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_code` varchar(3) NOT NULL,
  `state_gst_id` varchar(255) NOT NULL,
  `state_photo` varchar(255) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `state_code`, `state_gst_id`, `state_photo`, `is_active`, `created_by`, `datetime`) VALUES
(6, 'GUJARAT', 'GJ', '24', './upload/gujarat.jpg', '1', '', '2019-06-17 06:31:15'),
(7, 'RAJASTHAN', 'RJ', '08', './upload/Rajasthan.jpg', '1', '', '2019-06-17 06:31:15'),
(8, 'MAHARASHTRA', 'MH', '27', './upload/Maharastra.jpg', '1', '', '2019-06-17 06:31:15'),
(9, 'HIMACHAL PRADESH', 'HP', '02', './upload/himachal.jpg', '1', '', '2019-06-17 06:31:15'),
(10, 'PUNJAB', 'PB', '03', '', '1', '', '2019-06-17 06:31:15'),
(16, 'JHARKHAND', 'JH', '20', '', '1', '', '2019-06-17 06:31:15'),
(17, 'TAMIL NADU', 'TN', '33', './upload/tamilnadu.jpg', '1', '', '2019-06-17 06:31:15'),
(18, 'TRIPURA', 'TR', '16', '', '1', '', '2019-06-17 06:31:15'),
(19, 'MADHYA PRADESH', 'MP', '23', './upload/madhyapradesh.jpg', '1', '', '2019-06-17 06:31:15'),
(20, 'ANDHRA PRADESH', 'AD', '37', '', '1', '6', '2019-08-01 11:19:19'),
(21, 'DELHI', 'DL', '07', './upload/delhi.jpg', '1', '6', '2019-08-01 11:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(255) NOT NULL,
  `supp_short_name` varchar(20) NOT NULL,
  `state_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `supp_address` varchar(255) NOT NULL,
  `supp_pincode` int(20) NOT NULL,
  `supp_mobile` varchar(20) NOT NULL,
  `contact_mobile_no` varchar(20) NOT NULL,
  `supp_email` varchar(255) NOT NULL,
  `supp_contact_person_name` varchar(255) NOT NULL,
  `supp_designation` varchar(255) NOT NULL,
  `supp_pan_no` varchar(50) NOT NULL,
  `supp_gst_no` varchar(50) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supp_id`, `supp_name`, `supp_short_name`, `state_id`, `dis_id`, `city_id`, `supp_address`, `supp_pincode`, `supp_mobile`, `contact_mobile_no`, `supp_email`, `supp_contact_person_name`, `supp_designation`, `supp_pan_no`, `supp_gst_no`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'ADINATH MOTORS', 'KKKKK', 6, 13, 9, 'NANA CHILODA, AHMEDABAD', 569832, '5265964185', '52652695296', 'mineohms@gmail.com', 'SAMYAK JAIN', 'manager', '445151dcv', 'hnjjhnikjmik', '1', '', '2019-07-22 17:08:39'),
(2, 'VEERZALA', '', 7, 4, 2, 'RFRTG5HBJU76IKMUI', 44552, '154856541', '458451521', 'nidhimehta194@gmail.com', 'NBJBBVUJHFUR', 'ffrgvr', 'gbrtfbh', 'bhdrtghj', '1', '', '2019-07-22 17:09:49'),
(3, '1', '', 6, 3, 4, 'VBDFN FCGBN', 382421, '7043486525', '7043486525', 'mineohms@gmail.com', 'GVFRBGRF', 'gbffrht', 'rfgcgvwe', 'gvrfgvrfgh', '0', '6', '2019-07-30 07:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_operator`
--

CREATE TABLE `tbl_time_operator` (
  `time_op_id` int(11) NOT NULL,
  `time_op_date` date NOT NULL,
  `time_op_start` time NOT NULL,
  `time_op_end` time NOT NULL,
  `time_op_total` time NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_time_operator`
--

INSERT INTO `tbl_time_operator` (`time_op_id`, `time_op_date`, `time_op_start`, `time_op_end`, `time_op_total`, `created_by`, `datetime`) VALUES
(1, '2019-08-13', '05:00:00', '10:00:00', '05:05:00', '5', '2019-08-13 13:50:08'),
(2, '2019-08-13', '05:00:00', '10:00:00', '00:00:00', '5', '2019-08-13 13:57:42'),
(3, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-13 13:59:06'),
(4, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-13 13:59:24'),
(5, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-13 13:59:52'),
(6, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-14 13:18:02'),
(7, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-14 13:18:21'),
(8, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-14 13:18:44'),
(9, '2019-08-13', '09:00:00', '12:01:00', '00:00:00', '5', '2019-08-14 13:21:22'),
(10, '2019-08-14', '09:00:00', '10:00:00', '00:00:00', '5', '2019-08-14 13:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transporter`
--

CREATE TABLE `tbl_transporter` (
  `trans_id` int(11) NOT NULL,
  `trans_name` varchar(255) NOT NULL,
  `trans_short_name` varchar(20) NOT NULL,
  `state_id` int(11) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `trans_address` varchar(255) NOT NULL,
  `trans_pincode` int(20) NOT NULL,
  `trans_mobile_no` varchar(20) NOT NULL,
  `trans_owner` varchar(255) NOT NULL,
  `trans_email` varchar(255) NOT NULL,
  `trans_pan_no` varchar(50) NOT NULL,
  `trans_gst_no` varchar(50) NOT NULL,
  `trans_contact_person` varchar(255) NOT NULL,
  `trans_contact_person_mobile1` varchar(20) NOT NULL,
  `trans_whatsapp_no` varchar(20) NOT NULL,
  `trans_dob` varchar(20) NOT NULL,
  `trans_photo` varchar(1024) NOT NULL,
  `trans_remarks` varchar(1024) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transporter`
--

INSERT INTO `tbl_transporter` (`trans_id`, `trans_name`, `trans_short_name`, `state_id`, `dis_id`, `city_id`, `trans_address`, `trans_pincode`, `trans_mobile_no`, `trans_owner`, `trans_email`, `trans_pan_no`, `trans_gst_no`, `trans_contact_person`, `trans_contact_person_mobile1`, `trans_whatsapp_no`, `trans_dob`, `trans_photo`, `trans_remarks`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'SHREE CHOUDHARY ', 'NARESH', 7, 4, 2, 'MAIN ROAD, SHAMBHUPURA', 312612, '9428773891', 'MR NARESH CHODHARY', 'shreecrl@gmail.com', '695STGTOCOR2004', '5652321', 'NANDLAL', '9427389507', '07043486525', '', './upload/transport.jpg', '', '1', '', '2019-06-17 06:31:39'),
(2, 'SPAM LOGISTICS', 'VINOD', 7, 4, 3, 'OFFICE NO. 76, GROUND FLOOR, KUTCH ARCADE, MITHIROHAR, GANDHIDHAM', 33652, '7043486525', 'MR. MANISH RAGHAV', 'spamlogistics75@gmail.com', 'AKVPC9146J SD001', '23232', 'MR. MANISH RAGHAV', '9898773541', '9825065675', '', '', '', '1', '', '2019-06-17 06:31:39'),
(3, 'POONIYA ROADLINES', 'KISHAN', 7, 4, 2, 'MAIN ROAD, SHAMBHUPUURA', 312612, '9428568713', 'Kishan Ramji', 'krishna@gmail.com', '695STGTOCOR2004', '123654', 'Rohitbhai', '8290684243', '9680719993', '', '', '', '1', '', '2019-06-17 06:31:39'),
(4, 'TRANSPORTER 2', 'FALANA', 6, 4, 2, '89,VANIYAVALI FALI', 383330, '5746566565', 'NIDHI MEHTA', 'nidhimehta194@gmail.com', 'rfgertdv', 'weqdgv', 'MEHTAJI', '07043486525', '07043486525', '', '', '', '1', '', '2019-06-17 06:31:39'),
(5, 'NIDHI MEHTA', 'DHIKNA', 7, 4, 2, '89,VANIYAVALI FALI, DEMAI', 383330, '25415241524', 'NIDHI MEHTA', 'nidhimehta194@gmail.com', 'erfgv', 'gfbvc', 'MEHTAJI', '07043486525', '07043486525', '', '', '', '1', '', '2019-06-17 06:31:39'),
(10, 'NILKANTH ROADLINES', 'BHAVIN', 6, 3, 4, 'BAYAD', 383325, '9428773891', 'BHAVIN PANDYA', 'mineohms@gmail.com', '45453', '5652321', 'MEHTAJI', '07043486525', '4584152152', '', '', '', '1', '', '2019-07-25 16:01:31'),
(11, 'BHAVIN PANDYA', 'HNN', 6, 3, 4, 'GANDHINAGAR', 382421, '7043486525', 'MR NARESH CHODHARY', 'mineohms@gmail.com', '695STGTOCOR2004', '24BDIPP3469E1ZG', 'NANDLAL', '7043486525', '7043486525', '27-09-1990', '', 'fcdvgfcbh', '0', '6', '2019-07-29 06:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transporterprice`
--

CREATE TABLE `tbl_transporterprice` (
  `price_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transporterprice`
--

INSERT INTO `tbl_transporterprice` (`price_id`, `trans_id`, `start_date`, `end_date`, `price`) VALUES
(1, 1, '2019-06-01', '2019-06-30', 80),
(2, 3, '2019-06-01', '2019-06-30', 70),
(3, 1, '2019-05-03', '2019-06-08', 20),
(4, 1, '2019-07-01', '2019-07-31', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_bill`
--

CREATE TABLE `tbl_trans_bill` (
  `trans_bill_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `bill_qty` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_bill`
--

INSERT INTO `tbl_trans_bill` (`trans_bill_id`, `trans_id`, `bill_id`, `bill_qty`, `price_id`, `user_id`, `total_price`) VALUES
(1, 1, 1, 20, 100, 6, 2000),
(2, 3, 2, 25, 0, 6, 0),
(3, 2, 3, 40, 0, 6, 0),
(4, 4, 4, 10, 0, 6, 0),
(5, 1, 5, 20, 0, 6, 0),
(6, 3, 6, 25, 0, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_mobile` bigint(10) NOT NULL,
  `user_password` int(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_otp` varchar(10) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_dob` date NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_pan_no` varchar(30) NOT NULL,
  `user_aadhar_no` varchar(20) NOT NULL,
  `user_remarks` varchar(1024) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `is_login` int(3) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_super` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_mobile`, `user_password`, `role_id`, `user_otp`, `user_address`, `user_dob`, `user_photo`, `user_gender`, `user_pan_no`, `user_aadhar_no`, `user_remarks`, `is_active`, `is_login`, `trans_id`, `cust_id`, `created_by`, `supp_id`, `datetime`, `is_super`) VALUES
(2, 'PARTH', 'AKASH TECHNOLABS', 'parthbt143@gmail.com', 8735055104, 1234, 7, '', 'uykmg7i8klill', '0000-00-00', './upload/dashboard.png', '2', '', '', '', '1', 1, 1, 0, '', 0, '2019-06-17 06:21:54', 0),
(3, 'BHAVIN', 'PANDYA', 'mineohms@gmail.com', 9724606727, 1234, 6, '317975', 'juygmyuhgku', '0000-00-00', './upload/20171017_103345.jpg', '1', '', '', '', '1', 1, 0, 2, '', 0, '2019-06-25 06:26:51', 0),
(5, 'DEEP', 'MEHTA', 'bhavinpandyaece@gmail.com', 9428773891, 123456, 8, '', '', '0000-00-00', './upload/20171018_153054.jpg', '1', '', '', '', '1', 1, 0, 0, '', 1, '2019-06-30 07:46:54', 0),
(6, 'NIDHI', 'MEHTA', 'nidhimehta194@gmail.com', 7043486525, 1234, 1, '478575', '89,Vaniyavali Fali, Demai', '2019-07-19', './upload/female.jpg', '2', '', '', '', '1', 1, 0, 0, '', 0, '2019-07-10 02:54:31', 1),
(8, 'MADREE', 'PANDYA', 'pandyakaushikkumar1@gmail.com', 7851516546, 1234, 0, '', '', '0000-00-00', './upload/female.jpg', '2', '', '', '', '', 0, 0, 0, '', 0, '2019-07-26 16:20:46', 0),
(9, 'KAUSHAL', 'MEHTA', 'kaushal@gmail.com', 1236547890, 1234, 0, '', '', '0000-00-00', '', '', '1234', 'hujvhnefdhn', 'hnjhnuhnc xd dcdw', '1', 0, 0, 0, '', 0, '2019-07-28 14:55:10', 0),
(10, 'KAUSHAL', 'MEHTA', 'kaushal@gmail.com', 1236547890, 1234, 0, '', '', '0000-00-00', '', '', '1234', 'hujvhnefdhn', 'hnjhnuhnc xd dcdw', '0', 0, 0, 0, '', 0, '2019-07-28 14:55:59', 0),
(18, 'Hello', 'World', '', 0, 0, 0, '', '', '0000-00-00', '', '', '', '', '', '', 0, 0, 0, '', 0, '2019-08-11 13:14:31', 0),
(19, 'Bhavin', 'Pandya', '', 0, 0, 0, '', '', '0000-00-00', '', '', '', '', '', '', 0, 0, 0, '', 0, '2019-08-11 13:40:41', 0),
(20, 'KAUSHIKKUMAR', 'PANDYA', 'pandyakaushikkumar@gmail.com', 9427389507, 1234, 0, '567994', '', '0000-00-00', './upload/male.jpg', '1', '', '', '', '', 0, 0, 0, '', 0, '2019-08-11 14:07:30', 0),
(21, 'MUKESHBHAI', 'MEHTA', 'nidhimehta194@gmail.com', 9426542315, 1234, 1, '', '', '0000-00-00', './upload/male.jpg', '1', '', '', '', '', 0, 0, 0, '', 0, '2019-08-16 14:34:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_fera`
--

CREATE TABLE `tbl_vehicle_fera` (
  `vehicle_fera_id` int(11) NOT NULL,
  `vehicle_date` varchar(20) NOT NULL,
  `vehicle_no` varchar(20) NOT NULL,
  `vehicle_weight` varchar(20) NOT NULL,
  `vehicle_rate` varchar(20) NOT NULL,
  `vehicle_amount` varchar(20) NOT NULL,
  `vehicle_remarks` varchar(255) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_registration`
--

CREATE TABLE `tbl_vehicle_registration` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_no` varchar(20) NOT NULL,
  `empty_weight` varchar(20) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `lic_no` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vehicle_registration`
--

INSERT INTO `tbl_vehicle_registration` (`vehicle_id`, `vehicle_no`, `empty_weight`, `driver_name`, `lic_no`, `mobile_no`, `is_active`, `created_by`, `datetime`) VALUES
(1, 'VEHICLE 1', '35.00', 'shahu bhai', '415415desdce', '7043486525', '0', '6', '2019-08-22 05:42:52'),
(2, 'VEHICLE 2', '40.00', 'falana', 'kjnkj5545mm', '9428773891', '0', '6', '2019-08-22 05:43:39'),
(3, 'VEHICLE 3', '20.00', 'bhavin', 'bhcdb89845pklo', '8565125', '1', '6', '2019-08-22 05:43:59'),
(4, 'VEHICLE 4', '25.00', 'dhikna', 'desdf52221', '7043486525', '0', '6', '2019-08-22 05:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_round`
--

CREATE TABLE `tbl_vehicle_round` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `empty_weight` varchar(10) NOT NULL,
  `gross_weight` varchar(20) NOT NULL,
  `net_weight` varchar(20) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `insert_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vehicle_round`
--

INSERT INTO `tbl_vehicle_round` (`id`, `date`, `vehicle_id`, `empty_weight`, `gross_weight`, `net_weight`, `is_active`, `insert_datetime`) VALUES
(1, '2019-08-28', 1, '10', '20', '10', '1', '2019-08-28 20:45:18'),
(2, '2019-08-02', 2, '20', '50', '30', '1', '2019-08-28 21:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visiting_card_group`
--

CREATE TABLE `tbl_visiting_card_group` (
  `visiting_card_group_id` int(11) NOT NULL,
  `visiting_card_group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year`
--

CREATE TABLE `tbl_year` (
  `year_id` int(11) NOT NULL,
  `year_name` varchar(10) NOT NULL,
  `year_start_date` date NOT NULL,
  `year_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_year`
--

INSERT INTO `tbl_year` (`year_id`, `year_name`, `year_start_date`, `year_end_date`) VALUES
(1, '2018', '0000-00-00', '0000-00-00'),
(2, '2019', '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_category`
--
ALTER TABLE `pro_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_diesel_operator`
--
ALTER TABLE `tbl_diesel_operator`
  ADD PRIMARY KEY (`diesel_op_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`dis_id`),
  ADD UNIQUE KEY `dis_name` (`dis_name`);

--
-- Indexes for table `tbl_form_master`
--
ALTER TABLE `tbl_form_master`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_godown`
--
ALTER TABLE `tbl_godown`
  ADD PRIMARY KEY (`godown_id`);

--
-- Indexes for table `tbl_godown_expense`
--
ALTER TABLE `tbl_godown_expense`
  ADD PRIMARY KEY (`godown_expense_id`);

--
-- Indexes for table `tbl_godown_income`
--
ALTER TABLE `tbl_godown_income`
  ADD PRIMARY KEY (`godown_income_id`);

--
-- Indexes for table `tbl_machine_register`
--
ALTER TABLE `tbl_machine_register`
  ADD PRIMARY KEY (`machine_id`);

--
-- Indexes for table `tbl_machine_time`
--
ALTER TABLE `tbl_machine_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_po_pro`
--
ALTER TABLE `tbl_po_pro`
  ADD PRIMARY KEY (`po_pro_id`);

--
-- Indexes for table `tbl_po_transporter`
--
ALTER TABLE `tbl_po_transporter`
  ADD PRIMARY KEY (`po_trans_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `pro_name` (`pro_name`),
  ADD UNIQUE KEY `pro_code` (`pro_code`);

--
-- Indexes for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_role_master`
--
ALTER TABLE `tbl_role_master`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`),
  ADD UNIQUE KEY `state_gst_id` (`state_gst_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `tbl_time_operator`
--
ALTER TABLE `tbl_time_operator`
  ADD PRIMARY KEY (`time_op_id`);

--
-- Indexes for table `tbl_transporter`
--
ALTER TABLE `tbl_transporter`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `tbl_transporterprice`
--
ALTER TABLE `tbl_transporterprice`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `tbl_trans_bill`
--
ALTER TABLE `tbl_trans_bill`
  ADD PRIMARY KEY (`trans_bill_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_vehicle_fera`
--
ALTER TABLE `tbl_vehicle_fera`
  ADD PRIMARY KEY (`vehicle_fera_id`);

--
-- Indexes for table `tbl_vehicle_registration`
--
ALTER TABLE `tbl_vehicle_registration`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `tbl_vehicle_round`
--
ALTER TABLE `tbl_vehicle_round`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visiting_card_group`
--
ALTER TABLE `tbl_visiting_card_group`
  ADD PRIMARY KEY (`visiting_card_group_id`);

--
-- Indexes for table `tbl_year`
--
ALTER TABLE `tbl_year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pro_category`
--
ALTER TABLE `pro_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1722;

--
-- AUTO_INCREMENT for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_diesel_operator`
--
ALTER TABLE `tbl_diesel_operator`
  MODIFY `diesel_op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_form_master`
--
ALTER TABLE `tbl_form_master`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_godown`
--
ALTER TABLE `tbl_godown`
  MODIFY `godown_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_godown_expense`
--
ALTER TABLE `tbl_godown_expense`
  MODIFY `godown_expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_godown_income`
--
ALTER TABLE `tbl_godown_income`
  MODIFY `godown_income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_machine_register`
--
ALTER TABLE `tbl_machine_register`
  MODIFY `machine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_machine_time`
--
ALTER TABLE `tbl_machine_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_po_pro`
--
ALTER TABLE `tbl_po_pro`
  MODIFY `po_pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_po_transporter`
--
ALTER TABLE `tbl_po_transporter`
  MODIFY `po_trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_role_master`
--
ALTER TABLE `tbl_role_master`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_time_operator`
--
ALTER TABLE `tbl_time_operator`
  MODIFY `time_op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_transporter`
--
ALTER TABLE `tbl_transporter`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_transporterprice`
--
ALTER TABLE `tbl_transporterprice`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_trans_bill`
--
ALTER TABLE `tbl_trans_bill`
  MODIFY `trans_bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_vehicle_fera`
--
ALTER TABLE `tbl_vehicle_fera`
  MODIFY `vehicle_fera_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vehicle_registration`
--
ALTER TABLE `tbl_vehicle_registration`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_vehicle_round`
--
ALTER TABLE `tbl_vehicle_round`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_visiting_card_group`
--
ALTER TABLE `tbl_visiting_card_group`
  MODIFY `visiting_card_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_year`
--
ALTER TABLE `tbl_year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
