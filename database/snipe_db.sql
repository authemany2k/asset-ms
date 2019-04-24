-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2017 at 05:28 PM
-- Server version: 10.2.3-MariaDB-log
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snipe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `category_id`, `user_id`, `qty`, `requestable`, `created_at`, `updated_at`, `deleted_at`, `location_id`, `purchase_date`, `purchase_cost`, `order_number`, `company_id`, `min_amt`, `manufacturer_id`, `model_number`, `image`, `supplier_id`) VALUES
(1, 'USB Keyboard', 8, 1, 15, 0, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, 4, NULL, NULL, NULL, NULL, 2, 1, '15516786', NULL, 2),
(2, 'Bluetooth Keyboard', 8, 1, 10, 0, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, 1, NULL, NULL, NULL, NULL, 2, 1, '5858807', NULL, 1),
(3, 'Magic Mouse', 9, 1, 13, 0, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, 4, NULL, NULL, NULL, NULL, 2, 1, '48345812', NULL, 3),
(4, 'Sculpt Comfort Mouse', 9, 1, 13, 0, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, 4, NULL, NULL, NULL, NULL, 2, 2, '9012943', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accessories_users`
--

CREATE TABLE `accessories_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `expected_checkin` date DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `accept_signature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`id`, `user_id`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`) VALUES
(1, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Accessory', 1, NULL, NULL, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, NULL, NULL, NULL),
(2, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Accessory', 2, NULL, NULL, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, NULL, NULL, NULL),
(3, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Accessory', 3, NULL, NULL, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, NULL, NULL, NULL),
(4, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Accessory', 4, NULL, NULL, '2017-11-06 16:06:23', '2017-11-06 16:06:23', NULL, NULL, NULL, NULL),
(5, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2017-11-06 16:06:24', '2017-11-06 16:06:24', NULL, NULL, NULL, NULL),
(6, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 2, NULL, NULL, '2017-11-06 16:06:24', '2017-11-06 16:06:24', NULL, NULL, NULL, NULL),
(7, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 3, NULL, NULL, '2017-11-06 16:06:25', '2017-11-06 16:06:25', NULL, NULL, NULL, NULL),
(8, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 4, NULL, NULL, '2017-11-06 16:06:25', '2017-11-06 16:06:25', NULL, NULL, NULL, NULL),
(9, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 5, NULL, NULL, '2017-11-06 16:06:25', '2017-11-06 16:06:25', NULL, NULL, NULL, NULL),
(10, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 6, NULL, NULL, '2017-11-06 16:06:25', '2017-11-06 16:06:25', NULL, NULL, NULL, NULL),
(11, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 7, NULL, NULL, '2017-11-06 16:06:25', '2017-11-06 16:06:25', NULL, NULL, NULL, NULL),
(12, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 8, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(13, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 9, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(14, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 10, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(15, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 11, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(16, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 12, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(17, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 13, NULL, NULL, '2017-11-06 16:06:26', '2017-11-06 16:06:26', NULL, NULL, NULL, NULL),
(18, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 14, NULL, NULL, '2017-11-06 16:06:27', '2017-11-06 16:06:27', NULL, NULL, NULL, NULL),
(19, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 15, NULL, NULL, '2017-11-06 16:06:27', '2017-11-06 16:06:27', NULL, NULL, NULL, NULL),
(20, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 16, NULL, NULL, '2017-11-06 16:06:27', '2017-11-06 16:06:27', NULL, NULL, NULL, NULL),
(21, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 17, NULL, NULL, '2017-11-06 16:06:27', '2017-11-06 16:06:27', NULL, NULL, NULL, NULL),
(22, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 18, NULL, NULL, '2017-11-06 16:06:27', '2017-11-06 16:06:27', NULL, NULL, NULL, NULL),
(23, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 19, NULL, NULL, '2017-11-06 16:06:28', '2017-11-06 16:06:28', NULL, NULL, NULL, NULL),
(24, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 20, NULL, NULL, '2017-11-06 16:06:28', '2017-11-06 16:06:28', NULL, NULL, NULL, NULL),
(25, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 21, NULL, NULL, '2017-11-06 16:06:28', '2017-11-06 16:06:28', NULL, NULL, NULL, NULL),
(26, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 22, NULL, NULL, '2017-11-06 16:06:28', '2017-11-06 16:06:28', NULL, NULL, NULL, NULL),
(27, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 23, NULL, NULL, '2017-11-06 16:06:28', '2017-11-06 16:06:28', NULL, NULL, NULL, NULL),
(28, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 24, NULL, NULL, '2017-11-06 16:06:29', '2017-11-06 16:06:29', NULL, NULL, NULL, NULL),
(29, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 25, NULL, NULL, '2017-11-06 16:06:29', '2017-11-06 16:06:29', NULL, NULL, NULL, NULL),
(30, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 26, NULL, NULL, '2017-11-06 16:06:29', '2017-11-06 16:06:29', NULL, NULL, NULL, NULL),
(31, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 27, NULL, NULL, '2017-11-06 16:06:29', '2017-11-06 16:06:29', NULL, NULL, NULL, NULL),
(32, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 28, NULL, NULL, '2017-11-06 16:06:29', '2017-11-06 16:06:29', NULL, NULL, NULL, NULL),
(33, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 29, NULL, NULL, '2017-11-06 16:06:30', '2017-11-06 16:06:30', NULL, NULL, NULL, NULL),
(34, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 30, NULL, NULL, '2017-11-06 16:06:30', '2017-11-06 16:06:30', NULL, NULL, NULL, NULL),
(35, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 31, NULL, NULL, '2017-11-06 16:06:30', '2017-11-06 16:06:30', NULL, NULL, NULL, NULL),
(36, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 32, NULL, NULL, '2017-11-06 16:06:30', '2017-11-06 16:06:30', NULL, NULL, NULL, NULL),
(37, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 33, NULL, NULL, '2017-11-06 16:06:31', '2017-11-06 16:06:31', NULL, NULL, NULL, NULL),
(38, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 34, NULL, NULL, '2017-11-06 16:06:31', '2017-11-06 16:06:31', NULL, NULL, NULL, NULL),
(39, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 35, NULL, NULL, '2017-11-06 16:06:31', '2017-11-06 16:06:31', NULL, NULL, NULL, NULL),
(40, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 36, NULL, NULL, '2017-11-06 16:06:31', '2017-11-06 16:06:31', NULL, NULL, NULL, NULL),
(41, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 37, NULL, NULL, '2017-11-06 16:06:31', '2017-11-06 16:06:31', NULL, NULL, NULL, NULL),
(42, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 38, NULL, NULL, '2017-11-06 16:06:32', '2017-11-06 16:06:32', NULL, NULL, NULL, NULL),
(43, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 39, NULL, NULL, '2017-11-06 16:06:32', '2017-11-06 16:06:32', NULL, NULL, NULL, NULL),
(44, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 40, NULL, NULL, '2017-11-06 16:06:32', '2017-11-06 16:06:32', NULL, NULL, NULL, NULL),
(45, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 41, NULL, NULL, '2017-11-06 16:06:32', '2017-11-06 16:06:32', NULL, NULL, NULL, NULL),
(46, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 42, NULL, NULL, '2017-11-06 16:06:32', '2017-11-06 16:06:32', NULL, NULL, NULL, NULL),
(47, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 43, NULL, NULL, '2017-11-06 16:06:33', '2017-11-06 16:06:33', NULL, NULL, NULL, NULL),
(48, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 44, NULL, NULL, '2017-11-06 16:06:33', '2017-11-06 16:06:33', NULL, NULL, NULL, NULL),
(49, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 45, NULL, NULL, '2017-11-06 16:06:33', '2017-11-06 16:06:33', NULL, NULL, NULL, NULL),
(50, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 46, NULL, NULL, '2017-11-06 16:06:33', '2017-11-06 16:06:33', NULL, NULL, NULL, NULL),
(51, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 47, NULL, NULL, '2017-11-06 16:06:33', '2017-11-06 16:06:33', NULL, NULL, NULL, NULL),
(52, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 48, NULL, NULL, '2017-11-06 16:06:34', '2017-11-06 16:06:34', NULL, NULL, NULL, NULL),
(53, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 49, NULL, NULL, '2017-11-06 16:06:34', '2017-11-06 16:06:34', NULL, NULL, NULL, NULL),
(54, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 50, NULL, NULL, '2017-11-06 16:06:35', '2017-11-06 16:06:35', NULL, NULL, NULL, NULL),
(55, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 51, NULL, NULL, '2017-11-06 16:06:35', '2017-11-06 16:06:35', NULL, NULL, NULL, NULL),
(56, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 52, NULL, NULL, '2017-11-06 16:06:35', '2017-11-06 16:06:35', NULL, NULL, NULL, NULL),
(57, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 53, NULL, NULL, '2017-11-06 16:06:35', '2017-11-06 16:06:35', NULL, NULL, NULL, NULL),
(58, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 54, NULL, NULL, '2017-11-06 16:06:35', '2017-11-06 16:06:35', NULL, NULL, NULL, NULL),
(59, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 55, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(60, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 56, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(61, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 57, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(62, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 58, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(63, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 59, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(64, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 60, NULL, NULL, '2017-11-06 16:06:36', '2017-11-06 16:06:36', NULL, NULL, NULL, NULL),
(65, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 61, NULL, NULL, '2017-11-06 16:06:37', '2017-11-06 16:06:37', NULL, NULL, NULL, NULL),
(66, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 62, NULL, NULL, '2017-11-06 16:06:37', '2017-11-06 16:06:37', NULL, NULL, NULL, NULL),
(67, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 63, NULL, NULL, '2017-11-06 16:06:37', '2017-11-06 16:06:37', NULL, NULL, NULL, NULL),
(68, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 64, NULL, NULL, '2017-11-06 16:06:37', '2017-11-06 16:06:37', NULL, NULL, NULL, NULL),
(69, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 65, NULL, NULL, '2017-11-06 16:06:37', '2017-11-06 16:06:37', NULL, NULL, NULL, NULL),
(70, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 66, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(71, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 67, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(72, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 68, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(73, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 69, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(74, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 70, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(75, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 71, NULL, NULL, '2017-11-06 16:06:38', '2017-11-06 16:06:38', NULL, NULL, NULL, NULL),
(76, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 72, NULL, NULL, '2017-11-06 16:06:39', '2017-11-06 16:06:39', NULL, NULL, NULL, NULL),
(77, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 73, NULL, NULL, '2017-11-06 16:06:39', '2017-11-06 16:06:39', NULL, NULL, NULL, NULL),
(78, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 74, NULL, NULL, '2017-11-06 16:06:39', '2017-11-06 16:06:39', NULL, NULL, NULL, NULL),
(79, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 75, NULL, NULL, '2017-11-06 16:06:39', '2017-11-06 16:06:39', NULL, NULL, NULL, NULL),
(80, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 76, NULL, NULL, '2017-11-06 16:06:40', '2017-11-06 16:06:40', NULL, NULL, NULL, NULL),
(81, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 77, NULL, NULL, '2017-11-06 16:06:40', '2017-11-06 16:06:40', NULL, NULL, NULL, NULL),
(82, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 78, NULL, NULL, '2017-11-06 16:06:40', '2017-11-06 16:06:40', NULL, NULL, NULL, NULL),
(83, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 79, NULL, NULL, '2017-11-06 16:06:40', '2017-11-06 16:06:40', NULL, NULL, NULL, NULL),
(84, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 80, NULL, NULL, '2017-11-06 16:06:40', '2017-11-06 16:06:40', NULL, NULL, NULL, NULL),
(85, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 81, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(86, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 82, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(87, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 83, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(88, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 84, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(89, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 85, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(90, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 86, NULL, NULL, '2017-11-06 16:06:41', '2017-11-06 16:06:41', NULL, NULL, NULL, NULL),
(91, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 87, NULL, NULL, '2017-11-06 16:06:42', '2017-11-06 16:06:42', NULL, NULL, NULL, NULL),
(92, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 88, NULL, NULL, '2017-11-06 16:06:42', '2017-11-06 16:06:42', NULL, NULL, NULL, NULL),
(93, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 89, NULL, NULL, '2017-11-06 16:06:42', '2017-11-06 16:06:42', NULL, NULL, NULL, NULL),
(94, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 90, NULL, NULL, '2017-11-06 16:06:42', '2017-11-06 16:06:42', NULL, NULL, NULL, NULL),
(95, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 91, NULL, NULL, '2017-11-06 16:06:42', '2017-11-06 16:06:42', NULL, NULL, NULL, NULL),
(96, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 92, NULL, NULL, '2017-11-06 16:06:43', '2017-11-06 16:06:43', NULL, NULL, NULL, NULL),
(97, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 93, NULL, NULL, '2017-11-06 16:06:43', '2017-11-06 16:06:43', NULL, NULL, NULL, NULL),
(98, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 94, NULL, NULL, '2017-11-06 16:06:43', '2017-11-06 16:06:43', NULL, NULL, NULL, NULL),
(99, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 95, NULL, NULL, '2017-11-06 16:06:43', '2017-11-06 16:06:43', NULL, NULL, NULL, NULL),
(100, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 96, NULL, NULL, '2017-11-06 16:06:43', '2017-11-06 16:06:43', NULL, NULL, NULL, NULL),
(101, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 97, NULL, NULL, '2017-11-06 16:06:44', '2017-11-06 16:06:44', NULL, NULL, NULL, NULL),
(102, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 98, NULL, NULL, '2017-11-06 16:06:44', '2017-11-06 16:06:44', NULL, NULL, NULL, NULL),
(103, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 99, NULL, NULL, '2017-11-06 16:06:44', '2017-11-06 16:06:44', NULL, NULL, NULL, NULL),
(104, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 100, NULL, NULL, '2017-11-06 16:06:44', '2017-11-06 16:06:44', NULL, NULL, NULL, NULL),
(105, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 101, NULL, NULL, '2017-11-06 16:06:45', '2017-11-06 16:06:45', NULL, NULL, NULL, NULL),
(106, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 102, NULL, NULL, '2017-11-06 16:06:45', '2017-11-06 16:06:45', NULL, NULL, NULL, NULL),
(107, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 103, NULL, NULL, '2017-11-06 16:06:45', '2017-11-06 16:06:45', NULL, NULL, NULL, NULL),
(108, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 104, NULL, NULL, '2017-11-06 16:06:45', '2017-11-06 16:06:45', NULL, NULL, NULL, NULL),
(109, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 105, NULL, NULL, '2017-11-06 16:06:46', '2017-11-06 16:06:46', NULL, NULL, NULL, NULL),
(110, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 106, NULL, NULL, '2017-11-06 16:06:46', '2017-11-06 16:06:46', NULL, NULL, NULL, NULL),
(111, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 107, NULL, NULL, '2017-11-06 16:06:46', '2017-11-06 16:06:46', NULL, NULL, NULL, NULL),
(112, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 108, NULL, NULL, '2017-11-06 16:06:46', '2017-11-06 16:06:46', NULL, NULL, NULL, NULL),
(113, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 109, NULL, NULL, '2017-11-06 16:06:46', '2017-11-06 16:06:46', NULL, NULL, NULL, NULL),
(114, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 110, NULL, NULL, '2017-11-06 16:06:47', '2017-11-06 16:06:47', NULL, NULL, NULL, NULL),
(115, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 111, NULL, NULL, '2017-11-06 16:06:47', '2017-11-06 16:06:47', NULL, NULL, NULL, NULL),
(116, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 112, NULL, NULL, '2017-11-06 16:06:47', '2017-11-06 16:06:47', NULL, NULL, NULL, NULL),
(117, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 113, NULL, NULL, '2017-11-06 16:06:47', '2017-11-06 16:06:47', NULL, NULL, NULL, NULL),
(118, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 114, NULL, NULL, '2017-11-06 16:06:47', '2017-11-06 16:06:47', NULL, NULL, NULL, NULL),
(119, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 115, NULL, NULL, '2017-11-06 16:06:48', '2017-11-06 16:06:48', NULL, NULL, NULL, NULL),
(120, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 116, NULL, NULL, '2017-11-06 16:06:48', '2017-11-06 16:06:48', NULL, NULL, NULL, NULL),
(121, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 117, NULL, NULL, '2017-11-06 16:06:48', '2017-11-06 16:06:48', NULL, NULL, NULL, NULL),
(122, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 118, NULL, NULL, '2017-11-06 16:06:48', '2017-11-06 16:06:48', NULL, NULL, NULL, NULL),
(123, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 119, NULL, NULL, '2017-11-06 16:06:48', '2017-11-06 16:06:48', NULL, NULL, NULL, NULL),
(124, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 120, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(125, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 121, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(126, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 122, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(127, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 123, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(128, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 124, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(129, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 125, NULL, NULL, '2017-11-06 16:06:49', '2017-11-06 16:06:49', NULL, NULL, NULL, NULL),
(130, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 126, NULL, NULL, '2017-11-06 16:06:50', '2017-11-06 16:06:50', NULL, NULL, NULL, NULL),
(131, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 127, NULL, NULL, '2017-11-06 16:06:50', '2017-11-06 16:06:50', NULL, NULL, NULL, NULL),
(132, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 128, NULL, NULL, '2017-11-06 16:06:50', '2017-11-06 16:06:50', NULL, NULL, NULL, NULL),
(133, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 129, NULL, NULL, '2017-11-06 16:06:50', '2017-11-06 16:06:50', NULL, NULL, NULL, NULL),
(134, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 130, NULL, NULL, '2017-11-06 16:06:50', '2017-11-06 16:06:50', NULL, NULL, NULL, NULL),
(135, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 131, NULL, NULL, '2017-11-06 16:06:51', '2017-11-06 16:06:51', NULL, NULL, NULL, NULL),
(136, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 132, NULL, NULL, '2017-11-06 16:06:51', '2017-11-06 16:06:51', NULL, NULL, NULL, NULL),
(137, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 133, NULL, NULL, '2017-11-06 16:06:51', '2017-11-06 16:06:51', NULL, NULL, NULL, NULL),
(138, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 134, NULL, NULL, '2017-11-06 16:06:51', '2017-11-06 16:06:51', NULL, NULL, NULL, NULL),
(139, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 135, NULL, NULL, '2017-11-06 16:06:51', '2017-11-06 16:06:51', NULL, NULL, NULL, NULL),
(140, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 136, NULL, NULL, '2017-11-06 16:06:52', '2017-11-06 16:06:52', NULL, NULL, NULL, NULL),
(141, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 137, NULL, NULL, '2017-11-06 16:06:52', '2017-11-06 16:06:52', NULL, NULL, NULL, NULL),
(142, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 138, NULL, NULL, '2017-11-06 16:06:52', '2017-11-06 16:06:52', NULL, NULL, NULL, NULL),
(143, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 139, NULL, NULL, '2017-11-06 16:06:52', '2017-11-06 16:06:52', NULL, NULL, NULL, NULL),
(144, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 140, NULL, NULL, '2017-11-06 16:06:52', '2017-11-06 16:06:52', NULL, NULL, NULL, NULL),
(145, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 141, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(146, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 142, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(147, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 143, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(148, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 144, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(149, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 145, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(150, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 146, NULL, NULL, '2017-11-06 16:06:53', '2017-11-06 16:06:53', NULL, NULL, NULL, NULL),
(151, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 147, NULL, NULL, '2017-11-06 16:06:54', '2017-11-06 16:06:54', NULL, NULL, NULL, NULL),
(152, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 148, NULL, NULL, '2017-11-06 16:06:54', '2017-11-06 16:06:54', NULL, NULL, NULL, NULL),
(153, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 149, NULL, NULL, '2017-11-06 16:06:54', '2017-11-06 16:06:54', NULL, NULL, NULL, NULL),
(154, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 150, NULL, NULL, '2017-11-06 16:06:54', '2017-11-06 16:06:54', NULL, NULL, NULL, NULL),
(155, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 151, NULL, NULL, '2017-11-06 16:06:55', '2017-11-06 16:06:55', NULL, NULL, NULL, NULL),
(156, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 152, NULL, NULL, '2017-11-06 16:06:55', '2017-11-06 16:06:55', NULL, NULL, NULL, NULL),
(157, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 153, NULL, NULL, '2017-11-06 16:06:55', '2017-11-06 16:06:55', NULL, NULL, NULL, NULL),
(158, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 154, NULL, NULL, '2017-11-06 16:06:55', '2017-11-06 16:06:55', NULL, NULL, NULL, NULL),
(159, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 155, NULL, NULL, '2017-11-06 16:06:55', '2017-11-06 16:06:55', NULL, NULL, NULL, NULL),
(160, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 156, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(161, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 157, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(162, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 158, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(163, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 159, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(164, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 160, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(165, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 161, NULL, NULL, '2017-11-06 16:06:56', '2017-11-06 16:06:56', NULL, NULL, NULL, NULL),
(166, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 162, NULL, NULL, '2017-11-06 16:06:57', '2017-11-06 16:06:57', NULL, NULL, NULL, NULL),
(167, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 163, NULL, NULL, '2017-11-06 16:06:57', '2017-11-06 16:06:57', NULL, NULL, NULL, NULL),
(168, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 164, NULL, NULL, '2017-11-06 16:06:57', '2017-11-06 16:06:57', NULL, NULL, NULL, NULL),
(169, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 165, NULL, NULL, '2017-11-06 16:06:57', '2017-11-06 16:06:57', NULL, NULL, NULL, NULL),
(170, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 166, NULL, NULL, '2017-11-06 16:06:57', '2017-11-06 16:06:57', NULL, NULL, NULL, NULL),
(171, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 167, NULL, NULL, '2017-11-06 16:06:58', '2017-11-06 16:06:58', NULL, NULL, NULL, NULL),
(172, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 168, NULL, NULL, '2017-11-06 16:06:58', '2017-11-06 16:06:58', NULL, NULL, NULL, NULL),
(173, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 169, NULL, NULL, '2017-11-06 16:06:58', '2017-11-06 16:06:58', NULL, NULL, NULL, NULL),
(174, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 170, NULL, NULL, '2017-11-06 16:06:58', '2017-11-06 16:06:58', NULL, NULL, NULL, NULL),
(175, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 171, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(176, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 172, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(177, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 173, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(178, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 174, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(179, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 175, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(180, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 176, NULL, NULL, '2017-11-06 16:06:59', '2017-11-06 16:06:59', NULL, NULL, NULL, NULL),
(181, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 177, NULL, NULL, '2017-11-06 16:07:00', '2017-11-06 16:07:00', NULL, NULL, NULL, NULL),
(182, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 178, NULL, NULL, '2017-11-06 16:07:00', '2017-11-06 16:07:00', NULL, NULL, NULL, NULL),
(183, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 179, NULL, NULL, '2017-11-06 16:07:00', '2017-11-06 16:07:00', NULL, NULL, NULL, NULL),
(184, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 180, NULL, NULL, '2017-11-06 16:07:00', '2017-11-06 16:07:00', NULL, NULL, NULL, NULL),
(185, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 181, NULL, NULL, '2017-11-06 16:07:00', '2017-11-06 16:07:00', NULL, NULL, NULL, NULL),
(186, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 182, NULL, NULL, '2017-11-06 16:07:01', '2017-11-06 16:07:01', NULL, NULL, NULL, NULL),
(187, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 183, NULL, NULL, '2017-11-06 16:07:01', '2017-11-06 16:07:01', NULL, NULL, NULL, NULL),
(188, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 184, NULL, NULL, '2017-11-06 16:07:01', '2017-11-06 16:07:01', NULL, NULL, NULL, NULL),
(189, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 185, NULL, NULL, '2017-11-06 16:07:01', '2017-11-06 16:07:01', NULL, NULL, NULL, NULL),
(190, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 186, NULL, NULL, '2017-11-06 16:07:01', '2017-11-06 16:07:01', NULL, NULL, NULL, NULL),
(191, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 187, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(192, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 188, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(193, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 189, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(194, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 190, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(195, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 191, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(196, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 192, NULL, NULL, '2017-11-06 16:07:02', '2017-11-06 16:07:02', NULL, NULL, NULL, NULL),
(197, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 193, NULL, NULL, '2017-11-06 16:07:03', '2017-11-06 16:07:03', NULL, NULL, NULL, NULL),
(198, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 194, NULL, NULL, '2017-11-06 16:07:03', '2017-11-06 16:07:03', NULL, NULL, NULL, NULL),
(199, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 195, NULL, NULL, '2017-11-06 16:07:03', '2017-11-06 16:07:03', NULL, NULL, NULL, NULL),
(200, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 196, NULL, NULL, '2017-11-06 16:07:03', '2017-11-06 16:07:03', NULL, NULL, NULL, NULL),
(201, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 197, NULL, NULL, '2017-11-06 16:07:03', '2017-11-06 16:07:03', NULL, NULL, NULL, NULL),
(202, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 198, NULL, NULL, '2017-11-06 16:07:04', '2017-11-06 16:07:04', NULL, NULL, NULL, NULL),
(203, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 199, NULL, NULL, '2017-11-06 16:07:04', '2017-11-06 16:07:04', NULL, NULL, NULL, NULL),
(204, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 200, NULL, NULL, '2017-11-06 16:07:04', '2017-11-06 16:07:04', NULL, NULL, NULL, NULL),
(205, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 201, NULL, NULL, '2017-11-06 16:07:05', '2017-11-06 16:07:05', NULL, NULL, NULL, NULL),
(206, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 202, NULL, NULL, '2017-11-06 16:07:05', '2017-11-06 16:07:05', NULL, NULL, NULL, NULL),
(207, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 203, NULL, NULL, '2017-11-06 16:07:05', '2017-11-06 16:07:05', NULL, NULL, NULL, NULL),
(208, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 204, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(209, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 205, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(210, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 206, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(211, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 207, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(212, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 208, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(213, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 209, NULL, NULL, '2017-11-06 16:07:06', '2017-11-06 16:07:06', NULL, NULL, NULL, NULL),
(214, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 210, NULL, NULL, '2017-11-06 16:07:07', '2017-11-06 16:07:07', NULL, NULL, NULL, NULL),
(215, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 211, NULL, NULL, '2017-11-06 16:07:07', '2017-11-06 16:07:07', NULL, NULL, NULL, NULL),
(216, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 212, NULL, NULL, '2017-11-06 16:07:07', '2017-11-06 16:07:07', NULL, NULL, NULL, NULL),
(217, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 213, NULL, NULL, '2017-11-06 16:07:07', '2017-11-06 16:07:07', NULL, NULL, NULL, NULL),
(218, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 214, NULL, NULL, '2017-11-06 16:07:07', '2017-11-06 16:07:07', NULL, NULL, NULL, NULL),
(219, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 215, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(220, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 216, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(221, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 217, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(222, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 218, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(223, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 219, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(224, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 220, NULL, NULL, '2017-11-06 16:07:08', '2017-11-06 16:07:08', NULL, NULL, NULL, NULL),
(225, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 221, NULL, NULL, '2017-11-06 16:07:09', '2017-11-06 16:07:09', NULL, NULL, NULL, NULL),
(226, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 222, NULL, NULL, '2017-11-06 16:07:09', '2017-11-06 16:07:09', NULL, NULL, NULL, NULL),
(227, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 223, NULL, NULL, '2017-11-06 16:07:09', '2017-11-06 16:07:09', NULL, NULL, NULL, NULL),
(228, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 224, NULL, NULL, '2017-11-06 16:07:09', '2017-11-06 16:07:09', NULL, NULL, NULL, NULL),
(229, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 225, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(230, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 226, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(231, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 227, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(232, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 228, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(233, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 229, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(234, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 230, NULL, NULL, '2017-11-06 16:07:10', '2017-11-06 16:07:10', NULL, NULL, NULL, NULL),
(235, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 231, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(236, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 232, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(237, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 233, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(238, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 234, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(239, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 235, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(240, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 236, NULL, NULL, '2017-11-06 16:07:11', '2017-11-06 16:07:11', NULL, NULL, NULL, NULL),
(241, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 237, NULL, NULL, '2017-11-06 16:07:12', '2017-11-06 16:07:12', NULL, NULL, NULL, NULL),
(242, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 238, NULL, NULL, '2017-11-06 16:07:12', '2017-11-06 16:07:12', NULL, NULL, NULL, NULL),
(243, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 239, NULL, NULL, '2017-11-06 16:07:12', '2017-11-06 16:07:12', NULL, NULL, NULL, NULL),
(244, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 240, NULL, NULL, '2017-11-06 16:07:12', '2017-11-06 16:07:12', NULL, NULL, NULL, NULL),
(245, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 241, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(246, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 242, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(247, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 243, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(248, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 244, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(249, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 245, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(250, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 246, NULL, NULL, '2017-11-06 16:07:13', '2017-11-06 16:07:13', NULL, NULL, NULL, NULL),
(251, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 247, NULL, NULL, '2017-11-06 16:07:14', '2017-11-06 16:07:14', NULL, NULL, NULL, NULL),
(252, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 248, NULL, NULL, '2017-11-06 16:07:14', '2017-11-06 16:07:14', NULL, NULL, NULL, NULL),
(253, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 249, NULL, NULL, '2017-11-06 16:07:14', '2017-11-06 16:07:14', NULL, NULL, NULL, NULL),
(254, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 250, NULL, NULL, '2017-11-06 16:07:14', '2017-11-06 16:07:14', NULL, NULL, NULL, NULL),
(255, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 251, NULL, NULL, '2017-11-06 16:07:14', '2017-11-06 16:07:14', NULL, NULL, NULL, NULL),
(256, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 252, NULL, NULL, '2017-11-06 16:07:15', '2017-11-06 16:07:15', NULL, NULL, NULL, NULL),
(257, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 253, NULL, NULL, '2017-11-06 16:07:15', '2017-11-06 16:07:15', NULL, NULL, NULL, NULL),
(258, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 254, NULL, NULL, '2017-11-06 16:07:15', '2017-11-06 16:07:15', NULL, NULL, NULL, NULL),
(259, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 255, NULL, NULL, '2017-11-06 16:07:15', '2017-11-06 16:07:15', NULL, NULL, NULL, NULL),
(260, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 256, NULL, NULL, '2017-11-06 16:07:15', '2017-11-06 16:07:15', NULL, NULL, NULL, NULL),
(261, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 257, NULL, NULL, '2017-11-06 16:07:16', '2017-11-06 16:07:16', NULL, NULL, NULL, NULL),
(262, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 258, NULL, NULL, '2017-11-06 16:07:16', '2017-11-06 16:07:16', NULL, NULL, NULL, NULL),
(263, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 259, NULL, NULL, '2017-11-06 16:07:16', '2017-11-06 16:07:16', NULL, NULL, NULL, NULL),
(264, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 260, NULL, NULL, '2017-11-06 16:07:16', '2017-11-06 16:07:16', NULL, NULL, NULL, NULL),
(265, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 261, NULL, NULL, '2017-11-06 16:07:17', '2017-11-06 16:07:17', NULL, NULL, NULL, NULL),
(266, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 262, NULL, NULL, '2017-11-06 16:07:17', '2017-11-06 16:07:17', NULL, NULL, NULL, NULL),
(267, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 263, NULL, NULL, '2017-11-06 16:07:17', '2017-11-06 16:07:17', NULL, NULL, NULL, NULL),
(268, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 264, NULL, NULL, '2017-11-06 16:07:17', '2017-11-06 16:07:17', NULL, NULL, NULL, NULL),
(269, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 265, NULL, NULL, '2017-11-06 16:07:17', '2017-11-06 16:07:17', NULL, NULL, NULL, NULL),
(270, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 266, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(271, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 267, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(272, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 268, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(273, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 269, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(274, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 270, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(275, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 271, NULL, NULL, '2017-11-06 16:07:18', '2017-11-06 16:07:18', NULL, NULL, NULL, NULL),
(276, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 272, NULL, NULL, '2017-11-06 16:07:19', '2017-11-06 16:07:19', NULL, NULL, NULL, NULL),
(277, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 273, NULL, NULL, '2017-11-06 16:07:19', '2017-11-06 16:07:19', NULL, NULL, NULL, NULL),
(278, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 274, NULL, NULL, '2017-11-06 16:07:19', '2017-11-06 16:07:19', NULL, NULL, NULL, NULL),
(279, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 275, NULL, NULL, '2017-11-06 16:07:19', '2017-11-06 16:07:19', NULL, NULL, NULL, NULL),
(280, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 276, NULL, NULL, '2017-11-06 16:07:19', '2017-11-06 16:07:19', NULL, NULL, NULL, NULL),
(281, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 277, NULL, NULL, '2017-11-06 16:07:20', '2017-11-06 16:07:20', NULL, NULL, NULL, NULL),
(282, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 278, NULL, NULL, '2017-11-06 16:07:20', '2017-11-06 16:07:20', NULL, NULL, NULL, NULL),
(283, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 279, NULL, NULL, '2017-11-06 16:07:20', '2017-11-06 16:07:20', NULL, NULL, NULL, NULL),
(284, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 280, NULL, NULL, '2017-11-06 16:07:20', '2017-11-06 16:07:20', NULL, NULL, NULL, NULL),
(285, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 281, NULL, NULL, '2017-11-06 16:07:21', '2017-11-06 16:07:21', NULL, NULL, NULL, NULL),
(286, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 282, NULL, NULL, '2017-11-06 16:07:21', '2017-11-06 16:07:21', NULL, NULL, NULL, NULL),
(287, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 283, NULL, NULL, '2017-11-06 16:07:21', '2017-11-06 16:07:21', NULL, NULL, NULL, NULL),
(288, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 284, NULL, NULL, '2017-11-06 16:07:21', '2017-11-06 16:07:21', NULL, NULL, NULL, NULL),
(289, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 285, NULL, NULL, '2017-11-06 16:07:21', '2017-11-06 16:07:21', NULL, NULL, NULL, NULL),
(290, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 286, NULL, NULL, '2017-11-06 16:07:22', '2017-11-06 16:07:22', NULL, NULL, NULL, NULL),
(291, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 287, NULL, NULL, '2017-11-06 16:07:22', '2017-11-06 16:07:22', NULL, NULL, NULL, NULL),
(292, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 288, NULL, NULL, '2017-11-06 16:07:22', '2017-11-06 16:07:22', NULL, NULL, NULL, NULL),
(293, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 289, NULL, NULL, '2017-11-06 16:07:22', '2017-11-06 16:07:22', NULL, NULL, NULL, NULL),
(294, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 290, NULL, NULL, '2017-11-06 16:07:22', '2017-11-06 16:07:22', NULL, NULL, NULL, NULL),
(295, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 291, NULL, NULL, '2017-11-06 16:07:23', '2017-11-06 16:07:23', NULL, NULL, NULL, NULL),
(296, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 292, NULL, NULL, '2017-11-06 16:07:23', '2017-11-06 16:07:23', NULL, NULL, NULL, NULL),
(297, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 293, NULL, NULL, '2017-11-06 16:07:23', '2017-11-06 16:07:23', NULL, NULL, NULL, NULL),
(298, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 294, NULL, NULL, '2017-11-06 16:07:23', '2017-11-06 16:07:23', NULL, NULL, NULL, NULL),
(299, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 295, NULL, NULL, '2017-11-06 16:07:23', '2017-11-06 16:07:23', NULL, NULL, NULL, NULL),
(300, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 296, NULL, NULL, '2017-11-06 16:07:24', '2017-11-06 16:07:24', NULL, NULL, NULL, NULL),
(301, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 297, NULL, NULL, '2017-11-06 16:07:24', '2017-11-06 16:07:24', NULL, NULL, NULL, NULL),
(302, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 298, NULL, NULL, '2017-11-06 16:07:24', '2017-11-06 16:07:24', NULL, NULL, NULL, NULL),
(303, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 299, NULL, NULL, '2017-11-06 16:07:24', '2017-11-06 16:07:24', NULL, NULL, NULL, NULL),
(304, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 300, NULL, NULL, '2017-11-06 16:07:25', '2017-11-06 16:07:25', NULL, NULL, NULL, NULL),
(305, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 301, NULL, NULL, '2017-11-06 16:07:25', '2017-11-06 16:07:25', NULL, NULL, NULL, NULL),
(306, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 302, NULL, NULL, '2017-11-06 16:07:25', '2017-11-06 16:07:25', NULL, NULL, NULL, NULL),
(307, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 303, NULL, NULL, '2017-11-06 16:07:25', '2017-11-06 16:07:25', NULL, NULL, NULL, NULL),
(308, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 304, NULL, NULL, '2017-11-06 16:07:26', '2017-11-06 16:07:26', NULL, NULL, NULL, NULL),
(309, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 305, NULL, NULL, '2017-11-06 16:07:26', '2017-11-06 16:07:26', NULL, NULL, NULL, NULL),
(310, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 306, NULL, NULL, '2017-11-06 16:07:26', '2017-11-06 16:07:26', NULL, NULL, NULL, NULL),
(311, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 307, NULL, NULL, '2017-11-06 16:07:26', '2017-11-06 16:07:26', NULL, NULL, NULL, NULL),
(312, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 308, NULL, NULL, '2017-11-06 16:07:26', '2017-11-06 16:07:26', NULL, NULL, NULL, NULL);
INSERT INTO `action_logs` (`id`, `user_id`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`) VALUES
(313, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 309, NULL, NULL, '2017-11-06 16:07:27', '2017-11-06 16:07:27', NULL, NULL, NULL, NULL),
(314, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 310, NULL, NULL, '2017-11-06 16:07:27', '2017-11-06 16:07:27', NULL, NULL, NULL, NULL),
(315, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 311, NULL, NULL, '2017-11-06 16:07:27', '2017-11-06 16:07:27', NULL, NULL, NULL, NULL),
(316, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 312, NULL, NULL, '2017-11-06 16:07:27', '2017-11-06 16:07:27', NULL, NULL, NULL, NULL),
(317, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 313, NULL, NULL, '2017-11-06 16:07:27', '2017-11-06 16:07:27', NULL, NULL, NULL, NULL),
(318, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 314, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(319, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 315, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(320, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 316, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(321, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 317, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(322, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 318, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(323, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 319, NULL, NULL, '2017-11-06 16:07:28', '2017-11-06 16:07:28', NULL, NULL, NULL, NULL),
(324, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 320, NULL, NULL, '2017-11-06 16:07:29', '2017-11-06 16:07:29', NULL, NULL, NULL, NULL),
(325, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 321, NULL, NULL, '2017-11-06 16:07:29', '2017-11-06 16:07:29', NULL, NULL, NULL, NULL),
(326, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 322, NULL, NULL, '2017-11-06 16:07:29', '2017-11-06 16:07:29', NULL, NULL, NULL, NULL),
(327, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 323, NULL, NULL, '2017-11-06 16:07:29', '2017-11-06 16:07:29', NULL, NULL, NULL, NULL),
(328, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 324, NULL, NULL, '2017-11-06 16:07:29', '2017-11-06 16:07:29', NULL, NULL, NULL, NULL),
(329, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 325, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(330, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 326, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(331, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 327, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(332, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 328, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(333, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 329, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(334, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 330, NULL, NULL, '2017-11-06 16:07:30', '2017-11-06 16:07:30', NULL, NULL, NULL, NULL),
(335, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 331, NULL, NULL, '2017-11-06 16:07:31', '2017-11-06 16:07:31', NULL, NULL, NULL, NULL),
(336, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 332, NULL, NULL, '2017-11-06 16:07:31', '2017-11-06 16:07:31', NULL, NULL, NULL, NULL),
(337, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 333, NULL, NULL, '2017-11-06 16:07:31', '2017-11-06 16:07:31', NULL, NULL, NULL, NULL),
(338, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 334, NULL, NULL, '2017-11-06 16:07:31', '2017-11-06 16:07:31', NULL, NULL, NULL, NULL),
(339, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 335, NULL, NULL, '2017-11-06 16:07:31', '2017-11-06 16:07:31', NULL, NULL, NULL, NULL),
(340, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 336, NULL, NULL, '2017-11-06 16:07:32', '2017-11-06 16:07:32', NULL, NULL, NULL, NULL),
(341, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 337, NULL, NULL, '2017-11-06 16:07:32', '2017-11-06 16:07:32', NULL, NULL, NULL, NULL),
(342, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 338, NULL, NULL, '2017-11-06 16:07:32', '2017-11-06 16:07:32', NULL, NULL, NULL, NULL),
(343, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 339, NULL, NULL, '2017-11-06 16:07:32', '2017-11-06 16:07:32', NULL, NULL, NULL, NULL),
(344, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 340, NULL, NULL, '2017-11-06 16:07:32', '2017-11-06 16:07:32', NULL, NULL, NULL, NULL),
(345, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 341, NULL, NULL, '2017-11-06 16:07:33', '2017-11-06 16:07:33', NULL, NULL, NULL, NULL),
(346, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 342, NULL, NULL, '2017-11-06 16:07:33', '2017-11-06 16:07:33', NULL, NULL, NULL, NULL),
(347, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 343, NULL, NULL, '2017-11-06 16:07:33', '2017-11-06 16:07:33', NULL, NULL, NULL, NULL),
(348, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 344, NULL, NULL, '2017-11-06 16:07:33', '2017-11-06 16:07:33', NULL, NULL, NULL, NULL),
(349, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 345, NULL, NULL, '2017-11-06 16:07:33', '2017-11-06 16:07:33', NULL, NULL, NULL, NULL),
(350, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 346, NULL, NULL, '2017-11-06 16:07:34', '2017-11-06 16:07:34', NULL, NULL, NULL, NULL),
(351, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 347, NULL, NULL, '2017-11-06 16:07:34', '2017-11-06 16:07:34', NULL, NULL, NULL, NULL),
(352, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 348, NULL, NULL, '2017-11-06 16:07:34', '2017-11-06 16:07:34', NULL, NULL, NULL, NULL),
(353, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 349, NULL, NULL, '2017-11-06 16:07:34', '2017-11-06 16:07:34', NULL, NULL, NULL, NULL),
(354, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 350, NULL, NULL, '2017-11-06 16:07:34', '2017-11-06 16:07:34', NULL, NULL, NULL, NULL),
(355, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 351, NULL, NULL, '2017-11-06 16:07:35', '2017-11-06 16:07:35', NULL, NULL, NULL, NULL),
(356, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 352, NULL, NULL, '2017-11-06 16:07:35', '2017-11-06 16:07:35', NULL, NULL, NULL, NULL),
(357, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 353, NULL, NULL, '2017-11-06 16:07:35', '2017-11-06 16:07:35', NULL, NULL, NULL, NULL),
(358, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 354, NULL, NULL, '2017-11-06 16:07:35', '2017-11-06 16:07:35', NULL, NULL, NULL, NULL),
(359, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 355, NULL, NULL, '2017-11-06 16:07:35', '2017-11-06 16:07:35', NULL, NULL, NULL, NULL),
(360, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 356, NULL, NULL, '2017-11-06 16:07:36', '2017-11-06 16:07:36', NULL, NULL, NULL, NULL),
(361, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 357, NULL, NULL, '2017-11-06 16:07:36', '2017-11-06 16:07:36', NULL, NULL, NULL, NULL),
(362, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 358, NULL, NULL, '2017-11-06 16:07:36', '2017-11-06 16:07:36', NULL, NULL, NULL, NULL),
(363, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 359, NULL, NULL, '2017-11-06 16:07:36', '2017-11-06 16:07:36', NULL, NULL, NULL, NULL),
(364, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 360, NULL, NULL, '2017-11-06 16:07:36', '2017-11-06 16:07:36', NULL, NULL, NULL, NULL),
(365, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 361, NULL, NULL, '2017-11-06 16:07:37', '2017-11-06 16:07:37', NULL, NULL, NULL, NULL),
(366, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 362, NULL, NULL, '2017-11-06 16:07:37', '2017-11-06 16:07:37', NULL, NULL, NULL, NULL),
(367, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 363, NULL, NULL, '2017-11-06 16:07:37', '2017-11-06 16:07:37', NULL, NULL, NULL, NULL),
(368, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 364, NULL, NULL, '2017-11-06 16:07:37', '2017-11-06 16:07:37', NULL, NULL, NULL, NULL),
(369, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 365, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(370, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 366, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(371, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 367, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(372, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 368, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(373, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 369, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(374, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 370, NULL, NULL, '2017-11-06 16:07:38', '2017-11-06 16:07:38', NULL, NULL, NULL, NULL),
(375, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 371, NULL, NULL, '2017-11-06 16:07:39', '2017-11-06 16:07:39', NULL, NULL, NULL, NULL),
(376, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 372, NULL, NULL, '2017-11-06 16:07:39', '2017-11-06 16:07:39', NULL, NULL, NULL, NULL),
(377, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 373, NULL, NULL, '2017-11-06 16:07:39', '2017-11-06 16:07:39', NULL, NULL, NULL, NULL),
(378, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 374, NULL, NULL, '2017-11-06 16:07:39', '2017-11-06 16:07:39', NULL, NULL, NULL, NULL),
(379, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 375, NULL, NULL, '2017-11-06 16:07:39', '2017-11-06 16:07:39', NULL, NULL, NULL, NULL),
(380, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 376, NULL, NULL, '2017-11-06 16:07:40', '2017-11-06 16:07:40', NULL, NULL, NULL, NULL),
(381, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 377, NULL, NULL, '2017-11-06 16:07:40', '2017-11-06 16:07:40', NULL, NULL, NULL, NULL),
(382, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 378, NULL, NULL, '2017-11-06 16:07:40', '2017-11-06 16:07:40', NULL, NULL, NULL, NULL),
(383, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 379, NULL, NULL, '2017-11-06 16:07:40', '2017-11-06 16:07:40', NULL, NULL, NULL, NULL),
(384, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 380, NULL, NULL, '2017-11-06 16:07:40', '2017-11-06 16:07:40', NULL, NULL, NULL, NULL),
(385, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 381, NULL, NULL, '2017-11-06 16:07:41', '2017-11-06 16:07:41', NULL, NULL, NULL, NULL),
(386, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 382, NULL, NULL, '2017-11-06 16:07:41', '2017-11-06 16:07:41', NULL, NULL, NULL, NULL),
(387, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 383, NULL, NULL, '2017-11-06 16:07:41', '2017-11-06 16:07:41', NULL, NULL, NULL, NULL),
(388, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 384, NULL, NULL, '2017-11-06 16:07:41', '2017-11-06 16:07:41', NULL, NULL, NULL, NULL),
(389, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 385, NULL, NULL, '2017-11-06 16:07:41', '2017-11-06 16:07:41', NULL, NULL, NULL, NULL),
(390, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 386, NULL, NULL, '2017-11-06 16:07:42', '2017-11-06 16:07:42', NULL, NULL, NULL, NULL),
(391, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 387, NULL, NULL, '2017-11-06 16:07:42', '2017-11-06 16:07:42', NULL, NULL, NULL, NULL),
(392, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 388, NULL, NULL, '2017-11-06 16:07:42', '2017-11-06 16:07:42', NULL, NULL, NULL, NULL),
(393, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 389, NULL, NULL, '2017-11-06 16:07:42', '2017-11-06 16:07:42', NULL, NULL, NULL, NULL),
(394, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 390, NULL, NULL, '2017-11-06 16:07:43', '2017-11-06 16:07:43', NULL, NULL, NULL, NULL),
(395, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 391, NULL, NULL, '2017-11-06 16:07:43', '2017-11-06 16:07:43', NULL, NULL, NULL, NULL),
(396, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 392, NULL, NULL, '2017-11-06 16:07:43', '2017-11-06 16:07:43', NULL, NULL, NULL, NULL),
(397, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 393, NULL, NULL, '2017-11-06 16:07:43', '2017-11-06 16:07:43', NULL, NULL, NULL, NULL),
(398, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 394, NULL, NULL, '2017-11-06 16:07:44', '2017-11-06 16:07:44', NULL, NULL, NULL, NULL),
(399, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 395, NULL, NULL, '2017-11-06 16:07:44', '2017-11-06 16:07:44', NULL, NULL, NULL, NULL),
(400, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 396, NULL, NULL, '2017-11-06 16:07:44', '2017-11-06 16:07:44', NULL, NULL, NULL, NULL),
(401, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 397, NULL, NULL, '2017-11-06 16:07:44', '2017-11-06 16:07:44', NULL, NULL, NULL, NULL),
(402, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 398, NULL, NULL, '2017-11-06 16:07:45', '2017-11-06 16:07:45', NULL, NULL, NULL, NULL),
(403, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 399, NULL, NULL, '2017-11-06 16:07:45', '2017-11-06 16:07:45', NULL, NULL, NULL, NULL),
(404, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 400, NULL, NULL, '2017-11-06 16:07:45', '2017-11-06 16:07:45', NULL, NULL, NULL, NULL),
(405, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 401, NULL, NULL, '2017-11-06 16:07:45', '2017-11-06 16:07:45', NULL, NULL, NULL, NULL),
(406, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 402, NULL, NULL, '2017-11-06 16:07:46', '2017-11-06 16:07:46', NULL, NULL, NULL, NULL),
(407, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 403, NULL, NULL, '2017-11-06 16:07:46', '2017-11-06 16:07:46', NULL, NULL, NULL, NULL),
(408, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 404, NULL, NULL, '2017-11-06 16:07:46', '2017-11-06 16:07:46', NULL, NULL, NULL, NULL),
(409, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 405, NULL, NULL, '2017-11-06 16:07:46', '2017-11-06 16:07:46', NULL, NULL, NULL, NULL),
(410, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 406, NULL, NULL, '2017-11-06 16:07:47', '2017-11-06 16:07:47', NULL, NULL, NULL, NULL),
(411, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 407, NULL, NULL, '2017-11-06 16:07:47', '2017-11-06 16:07:47', NULL, NULL, NULL, NULL),
(412, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 408, NULL, NULL, '2017-11-06 16:07:47', '2017-11-06 16:07:47', NULL, NULL, NULL, NULL),
(413, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 409, NULL, NULL, '2017-11-06 16:07:47', '2017-11-06 16:07:47', NULL, NULL, NULL, NULL),
(414, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 410, NULL, NULL, '2017-11-06 16:07:48', '2017-11-06 16:07:48', NULL, NULL, NULL, NULL),
(415, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 411, NULL, NULL, '2017-11-06 16:07:48', '2017-11-06 16:07:48', NULL, NULL, NULL, NULL),
(416, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 412, NULL, NULL, '2017-11-06 16:07:48', '2017-11-06 16:07:48', NULL, NULL, NULL, NULL),
(417, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 413, NULL, NULL, '2017-11-06 16:07:48', '2017-11-06 16:07:48', NULL, NULL, NULL, NULL),
(418, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 414, NULL, NULL, '2017-11-06 16:07:48', '2017-11-06 16:07:48', NULL, NULL, NULL, NULL),
(419, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 415, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(420, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 416, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(421, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 417, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(422, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 418, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(423, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 419, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(424, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 420, NULL, NULL, '2017-11-06 16:07:49', '2017-11-06 16:07:49', NULL, NULL, NULL, NULL),
(425, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 421, NULL, NULL, '2017-11-06 16:07:50', '2017-11-06 16:07:50', NULL, NULL, NULL, NULL),
(426, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 422, NULL, NULL, '2017-11-06 16:07:50', '2017-11-06 16:07:50', NULL, NULL, NULL, NULL),
(427, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 423, NULL, NULL, '2017-11-06 16:07:50', '2017-11-06 16:07:50', NULL, NULL, NULL, NULL),
(428, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 424, NULL, NULL, '2017-11-06 16:07:50', '2017-11-06 16:07:50', NULL, NULL, NULL, NULL),
(429, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 425, NULL, NULL, '2017-11-06 16:07:51', '2017-11-06 16:07:51', NULL, NULL, NULL, NULL),
(430, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 426, NULL, NULL, '2017-11-06 16:07:51', '2017-11-06 16:07:51', NULL, NULL, NULL, NULL),
(431, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 427, NULL, NULL, '2017-11-06 16:07:51', '2017-11-06 16:07:51', NULL, NULL, NULL, NULL),
(432, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 428, NULL, NULL, '2017-11-06 16:07:51', '2017-11-06 16:07:51', NULL, NULL, NULL, NULL),
(433, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 429, NULL, NULL, '2017-11-06 16:07:51', '2017-11-06 16:07:51', NULL, NULL, NULL, NULL),
(434, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 430, NULL, NULL, '2017-11-06 16:07:52', '2017-11-06 16:07:52', NULL, NULL, NULL, NULL),
(435, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 431, NULL, NULL, '2017-11-06 16:07:52', '2017-11-06 16:07:52', NULL, NULL, NULL, NULL),
(436, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 432, NULL, NULL, '2017-11-06 16:07:52', '2017-11-06 16:07:52', NULL, NULL, NULL, NULL),
(437, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 433, NULL, NULL, '2017-11-06 16:07:52', '2017-11-06 16:07:52', NULL, NULL, NULL, NULL),
(438, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 434, NULL, NULL, '2017-11-06 16:07:52', '2017-11-06 16:07:52', NULL, NULL, NULL, NULL),
(439, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 435, NULL, NULL, '2017-11-06 16:07:53', '2017-11-06 16:07:53', NULL, NULL, NULL, NULL),
(440, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 436, NULL, NULL, '2017-11-06 16:07:53', '2017-11-06 16:07:53', NULL, NULL, NULL, NULL),
(441, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 437, NULL, NULL, '2017-11-06 16:07:53', '2017-11-06 16:07:53', NULL, NULL, NULL, NULL),
(442, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 438, NULL, NULL, '2017-11-06 16:07:53', '2017-11-06 16:07:53', NULL, NULL, NULL, NULL),
(443, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 439, NULL, NULL, '2017-11-06 16:07:53', '2017-11-06 16:07:53', NULL, NULL, NULL, NULL),
(444, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 440, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(445, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 441, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(446, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 442, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(447, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 443, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(448, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 444, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(449, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 445, NULL, NULL, '2017-11-06 16:07:54', '2017-11-06 16:07:54', NULL, NULL, NULL, NULL),
(450, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 446, NULL, NULL, '2017-11-06 16:07:55', '2017-11-06 16:07:55', NULL, NULL, NULL, NULL),
(451, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 447, NULL, NULL, '2017-11-06 16:07:55', '2017-11-06 16:07:55', NULL, NULL, NULL, NULL),
(452, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 448, NULL, NULL, '2017-11-06 16:07:55', '2017-11-06 16:07:55', NULL, NULL, NULL, NULL),
(453, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 449, NULL, NULL, '2017-11-06 16:07:55', '2017-11-06 16:07:55', NULL, NULL, NULL, NULL),
(454, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 450, NULL, NULL, '2017-11-06 16:07:55', '2017-11-06 16:07:55', NULL, NULL, NULL, NULL),
(455, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 451, NULL, NULL, '2017-11-06 16:07:56', '2017-11-06 16:07:56', NULL, NULL, NULL, NULL),
(456, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 452, NULL, NULL, '2017-11-06 16:07:56', '2017-11-06 16:07:56', NULL, NULL, NULL, NULL),
(457, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 453, NULL, NULL, '2017-11-06 16:07:56', '2017-11-06 16:07:56', NULL, NULL, NULL, NULL),
(458, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 454, NULL, NULL, '2017-11-06 16:07:56', '2017-11-06 16:07:56', NULL, NULL, NULL, NULL),
(459, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 455, NULL, NULL, '2017-11-06 16:07:56', '2017-11-06 16:07:56', NULL, NULL, NULL, NULL),
(460, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 456, NULL, NULL, '2017-11-06 16:07:57', '2017-11-06 16:07:57', NULL, NULL, NULL, NULL),
(461, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 457, NULL, NULL, '2017-11-06 16:07:57', '2017-11-06 16:07:57', NULL, NULL, NULL, NULL),
(462, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 458, NULL, NULL, '2017-11-06 16:07:57', '2017-11-06 16:07:57', NULL, NULL, NULL, NULL),
(463, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 459, NULL, NULL, '2017-11-06 16:07:57', '2017-11-06 16:07:57', NULL, NULL, NULL, NULL),
(464, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 460, NULL, NULL, '2017-11-06 16:07:57', '2017-11-06 16:07:57', NULL, NULL, NULL, NULL),
(465, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 461, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(466, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 462, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(467, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 463, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(468, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 464, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(469, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 465, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(470, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 466, NULL, NULL, '2017-11-06 16:07:58', '2017-11-06 16:07:58', NULL, NULL, NULL, NULL),
(471, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 467, NULL, NULL, '2017-11-06 16:07:59', '2017-11-06 16:07:59', NULL, NULL, NULL, NULL),
(472, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 468, NULL, NULL, '2017-11-06 16:07:59', '2017-11-06 16:07:59', NULL, NULL, NULL, NULL),
(473, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 469, NULL, NULL, '2017-11-06 16:07:59', '2017-11-06 16:07:59', NULL, NULL, NULL, NULL),
(474, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 470, NULL, NULL, '2017-11-06 16:07:59', '2017-11-06 16:07:59', NULL, NULL, NULL, NULL),
(475, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 471, NULL, NULL, '2017-11-06 16:07:59', '2017-11-06 16:07:59', NULL, NULL, NULL, NULL),
(476, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 472, NULL, NULL, '2017-11-06 16:08:00', '2017-11-06 16:08:00', NULL, NULL, NULL, NULL),
(477, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 473, NULL, NULL, '2017-11-06 16:08:00', '2017-11-06 16:08:00', NULL, NULL, NULL, NULL),
(478, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 474, NULL, NULL, '2017-11-06 16:08:00', '2017-11-06 16:08:00', NULL, NULL, NULL, NULL),
(479, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 475, NULL, NULL, '2017-11-06 16:08:00', '2017-11-06 16:08:00', NULL, NULL, NULL, NULL),
(480, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 476, NULL, NULL, '2017-11-06 16:08:00', '2017-11-06 16:08:00', NULL, NULL, NULL, NULL),
(481, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 477, NULL, NULL, '2017-11-06 16:08:01', '2017-11-06 16:08:01', NULL, NULL, NULL, NULL),
(482, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 478, NULL, NULL, '2017-11-06 16:08:01', '2017-11-06 16:08:01', NULL, NULL, NULL, NULL),
(483, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 479, NULL, NULL, '2017-11-06 16:08:01', '2017-11-06 16:08:01', NULL, NULL, NULL, NULL),
(484, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 480, NULL, NULL, '2017-11-06 16:08:01', '2017-11-06 16:08:01', NULL, NULL, NULL, NULL),
(485, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 481, NULL, NULL, '2017-11-06 16:08:01', '2017-11-06 16:08:01', NULL, NULL, NULL, NULL),
(486, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 482, NULL, NULL, '2017-11-06 16:08:02', '2017-11-06 16:08:02', NULL, NULL, NULL, NULL),
(487, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 483, NULL, NULL, '2017-11-06 16:08:02', '2017-11-06 16:08:02', NULL, NULL, NULL, NULL),
(488, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 484, NULL, NULL, '2017-11-06 16:08:02', '2017-11-06 16:08:02', NULL, NULL, NULL, NULL),
(489, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 485, NULL, NULL, '2017-11-06 16:08:02', '2017-11-06 16:08:02', NULL, NULL, NULL, NULL),
(490, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 486, NULL, NULL, '2017-11-06 16:08:02', '2017-11-06 16:08:02', NULL, NULL, NULL, NULL),
(491, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 487, NULL, NULL, '2017-11-06 16:08:03', '2017-11-06 16:08:03', NULL, NULL, NULL, NULL),
(492, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 488, NULL, NULL, '2017-11-06 16:08:03', '2017-11-06 16:08:03', NULL, NULL, NULL, NULL),
(493, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 489, NULL, NULL, '2017-11-06 16:08:03', '2017-11-06 16:08:03', NULL, NULL, NULL, NULL),
(494, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 490, NULL, NULL, '2017-11-06 16:08:03', '2017-11-06 16:08:03', NULL, NULL, NULL, NULL),
(495, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 491, NULL, NULL, '2017-11-06 16:08:03', '2017-11-06 16:08:03', NULL, NULL, NULL, NULL),
(496, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 492, NULL, NULL, '2017-11-06 16:08:04', '2017-11-06 16:08:04', NULL, NULL, NULL, NULL),
(497, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 493, NULL, NULL, '2017-11-06 16:08:04', '2017-11-06 16:08:04', NULL, NULL, NULL, NULL),
(498, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 494, NULL, NULL, '2017-11-06 16:08:04', '2017-11-06 16:08:04', NULL, NULL, NULL, NULL),
(499, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 495, NULL, NULL, '2017-11-06 16:08:04', '2017-11-06 16:08:04', NULL, NULL, NULL, NULL),
(500, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 496, NULL, NULL, '2017-11-06 16:08:04', '2017-11-06 16:08:04', NULL, NULL, NULL, NULL),
(501, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 497, NULL, NULL, '2017-11-06 16:08:05', '2017-11-06 16:08:05', NULL, NULL, NULL, NULL),
(502, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 498, NULL, NULL, '2017-11-06 16:08:05', '2017-11-06 16:08:05', NULL, NULL, NULL, NULL),
(503, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 499, NULL, NULL, '2017-11-06 16:08:05', '2017-11-06 16:08:05', NULL, NULL, NULL, NULL),
(504, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 500, NULL, NULL, '2017-11-06 16:08:06', '2017-11-06 16:08:06', NULL, NULL, NULL, NULL),
(505, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 501, NULL, NULL, '2017-11-06 16:08:06', '2017-11-06 16:08:06', NULL, NULL, NULL, NULL),
(506, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 502, NULL, NULL, '2017-11-06 16:08:06', '2017-11-06 16:08:06', NULL, NULL, NULL, NULL),
(507, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 503, NULL, NULL, '2017-11-06 16:08:06', '2017-11-06 16:08:06', NULL, NULL, NULL, NULL),
(508, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 504, NULL, NULL, '2017-11-06 16:08:07', '2017-11-06 16:08:07', NULL, NULL, NULL, NULL),
(509, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 505, NULL, NULL, '2017-11-06 16:08:07', '2017-11-06 16:08:07', NULL, NULL, NULL, NULL),
(510, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 506, NULL, NULL, '2017-11-06 16:08:07', '2017-11-06 16:08:07', NULL, NULL, NULL, NULL),
(511, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 507, NULL, NULL, '2017-11-06 16:08:07', '2017-11-06 16:08:07', NULL, NULL, NULL, NULL),
(512, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 508, NULL, NULL, '2017-11-06 16:08:07', '2017-11-06 16:08:07', NULL, NULL, NULL, NULL),
(513, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 509, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(514, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 510, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(515, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 511, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(516, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 512, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(517, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 513, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(518, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 514, NULL, NULL, '2017-11-06 16:08:08', '2017-11-06 16:08:08', NULL, NULL, NULL, NULL),
(519, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 515, NULL, NULL, '2017-11-06 16:08:09', '2017-11-06 16:08:09', NULL, NULL, NULL, NULL),
(520, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 516, NULL, NULL, '2017-11-06 16:08:09', '2017-11-06 16:08:09', NULL, NULL, NULL, NULL),
(521, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 517, NULL, NULL, '2017-11-06 16:08:09', '2017-11-06 16:08:09', NULL, NULL, NULL, NULL),
(522, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 518, NULL, NULL, '2017-11-06 16:08:09', '2017-11-06 16:08:09', NULL, NULL, NULL, NULL),
(523, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 519, NULL, NULL, '2017-11-06 16:08:09', '2017-11-06 16:08:09', NULL, NULL, NULL, NULL),
(524, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 520, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(525, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 521, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(526, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 522, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(527, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 523, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(528, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 524, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(529, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 525, NULL, NULL, '2017-11-06 16:08:10', '2017-11-06 16:08:10', NULL, NULL, NULL, NULL),
(530, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 526, NULL, NULL, '2017-11-06 16:08:11', '2017-11-06 16:08:11', NULL, NULL, NULL, NULL),
(531, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 527, NULL, NULL, '2017-11-06 16:08:11', '2017-11-06 16:08:11', NULL, NULL, NULL, NULL),
(532, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 528, NULL, NULL, '2017-11-06 16:08:11', '2017-11-06 16:08:11', NULL, NULL, NULL, NULL),
(533, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 529, NULL, NULL, '2017-11-06 16:08:11', '2017-11-06 16:08:11', NULL, NULL, NULL, NULL),
(534, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 530, NULL, NULL, '2017-11-06 16:08:11', '2017-11-06 16:08:11', NULL, NULL, NULL, NULL),
(535, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 531, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(536, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 532, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(537, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 533, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(538, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 534, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(539, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 535, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(540, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 536, NULL, NULL, '2017-11-06 16:08:12', '2017-11-06 16:08:12', NULL, NULL, NULL, NULL),
(541, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 537, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(542, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 538, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(543, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 539, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(544, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 540, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(545, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 541, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(546, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 542, NULL, NULL, '2017-11-06 16:08:13', '2017-11-06 16:08:13', NULL, NULL, NULL, NULL),
(547, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 543, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(548, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 544, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(549, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 545, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(550, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 546, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(551, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 547, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(552, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 548, NULL, NULL, '2017-11-06 16:08:14', '2017-11-06 16:08:14', NULL, NULL, NULL, NULL),
(553, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 549, NULL, NULL, '2017-11-06 16:08:15', '2017-11-06 16:08:15', NULL, NULL, NULL, NULL),
(554, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 550, NULL, NULL, '2017-11-06 16:08:15', '2017-11-06 16:08:15', NULL, NULL, NULL, NULL),
(555, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 551, NULL, NULL, '2017-11-06 16:08:15', '2017-11-06 16:08:15', NULL, NULL, NULL, NULL),
(556, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 552, NULL, NULL, '2017-11-06 16:08:15', '2017-11-06 16:08:15', NULL, NULL, NULL, NULL),
(557, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 553, NULL, NULL, '2017-11-06 16:08:15', '2017-11-06 16:08:15', NULL, NULL, NULL, NULL),
(558, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 554, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(559, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 555, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(560, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 556, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(561, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 557, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(562, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 558, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(563, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 559, NULL, NULL, '2017-11-06 16:08:16', '2017-11-06 16:08:16', NULL, NULL, NULL, NULL),
(564, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 560, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(565, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 561, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(566, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 562, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(567, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 563, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(568, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 564, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(569, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 565, NULL, NULL, '2017-11-06 16:08:17', '2017-11-06 16:08:17', NULL, NULL, NULL, NULL),
(570, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 566, NULL, NULL, '2017-11-06 16:08:18', '2017-11-06 16:08:18', NULL, NULL, NULL, NULL),
(571, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 567, NULL, NULL, '2017-11-06 16:08:18', '2017-11-06 16:08:18', NULL, NULL, NULL, NULL),
(572, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 568, NULL, NULL, '2017-11-06 16:08:18', '2017-11-06 16:08:18', NULL, NULL, NULL, NULL),
(573, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 569, NULL, NULL, '2017-11-06 16:08:18', '2017-11-06 16:08:18', NULL, NULL, NULL, NULL),
(574, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 570, NULL, NULL, '2017-11-06 16:08:18', '2017-11-06 16:08:18', NULL, NULL, NULL, NULL),
(575, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 571, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(576, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 572, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(577, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 573, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(578, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 574, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(579, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 575, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(580, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 576, NULL, NULL, '2017-11-06 16:08:19', '2017-11-06 16:08:19', NULL, NULL, NULL, NULL),
(581, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 577, NULL, NULL, '2017-11-06 16:08:20', '2017-11-06 16:08:20', NULL, NULL, NULL, NULL),
(582, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 578, NULL, NULL, '2017-11-06 16:08:20', '2017-11-06 16:08:20', NULL, NULL, NULL, NULL),
(583, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 579, NULL, NULL, '2017-11-06 16:08:20', '2017-11-06 16:08:20', NULL, NULL, NULL, NULL),
(584, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 580, NULL, NULL, '2017-11-06 16:08:20', '2017-11-06 16:08:20', NULL, NULL, NULL, NULL),
(585, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 581, NULL, NULL, '2017-11-06 16:08:20', '2017-11-06 16:08:20', NULL, NULL, NULL, NULL),
(586, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 582, NULL, NULL, '2017-11-06 16:08:21', '2017-11-06 16:08:21', NULL, NULL, NULL, NULL),
(587, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 583, NULL, NULL, '2017-11-06 16:08:21', '2017-11-06 16:08:21', NULL, NULL, NULL, NULL),
(588, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 584, NULL, NULL, '2017-11-06 16:08:21', '2017-11-06 16:08:21', NULL, NULL, NULL, NULL),
(589, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 585, NULL, NULL, '2017-11-06 16:08:21', '2017-11-06 16:08:21', NULL, NULL, NULL, NULL),
(590, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 586, NULL, NULL, '2017-11-06 16:08:22', '2017-11-06 16:08:22', NULL, NULL, NULL, NULL),
(591, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 587, NULL, NULL, '2017-11-06 16:08:22', '2017-11-06 16:08:22', NULL, NULL, NULL, NULL),
(592, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 588, NULL, NULL, '2017-11-06 16:08:22', '2017-11-06 16:08:22', NULL, NULL, NULL, NULL),
(593, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 589, NULL, NULL, '2017-11-06 16:08:22', '2017-11-06 16:08:22', NULL, NULL, NULL, NULL),
(594, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 590, NULL, NULL, '2017-11-06 16:08:22', '2017-11-06 16:08:22', NULL, NULL, NULL, NULL),
(595, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 591, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(596, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 592, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(597, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 593, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(598, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 594, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(599, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 595, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(600, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 596, NULL, NULL, '2017-11-06 16:08:23', '2017-11-06 16:08:23', NULL, NULL, NULL, NULL),
(601, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 597, NULL, NULL, '2017-11-06 16:08:24', '2017-11-06 16:08:24', NULL, NULL, NULL, NULL),
(602, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 598, NULL, NULL, '2017-11-06 16:08:24', '2017-11-06 16:08:24', NULL, NULL, NULL, NULL),
(603, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 599, NULL, NULL, '2017-11-06 16:08:24', '2017-11-06 16:08:24', NULL, NULL, NULL, NULL),
(604, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 600, NULL, NULL, '2017-11-06 16:08:24', '2017-11-06 16:08:24', NULL, NULL, NULL, NULL),
(605, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 601, NULL, NULL, '2017-11-06 16:08:24', '2017-11-06 16:08:24', NULL, NULL, NULL, NULL),
(606, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 602, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(607, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 603, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(608, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 604, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(609, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 605, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(610, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 606, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(611, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 607, NULL, NULL, '2017-11-06 16:08:25', '2017-11-06 16:08:25', NULL, NULL, NULL, NULL),
(612, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 608, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(613, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 609, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(614, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 610, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(615, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 611, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(616, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 612, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(617, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 613, NULL, NULL, '2017-11-06 16:08:26', '2017-11-06 16:08:26', NULL, NULL, NULL, NULL),
(618, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 614, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL),
(619, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 615, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL),
(620, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 616, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL),
(621, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 617, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL),
(622, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 618, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL);
INSERT INTO `action_logs` (`id`, `user_id`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`) VALUES
(623, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 619, NULL, NULL, '2017-11-06 16:08:27', '2017-11-06 16:08:27', NULL, NULL, NULL, NULL),
(624, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 620, NULL, NULL, '2017-11-06 16:08:28', '2017-11-06 16:08:28', NULL, NULL, NULL, NULL),
(625, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 621, NULL, NULL, '2017-11-06 16:08:28', '2017-11-06 16:08:28', NULL, NULL, NULL, NULL),
(626, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 622, NULL, NULL, '2017-11-06 16:08:28', '2017-11-06 16:08:28', NULL, NULL, NULL, NULL),
(627, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 623, NULL, NULL, '2017-11-06 16:08:28', '2017-11-06 16:08:28', NULL, NULL, NULL, NULL),
(628, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 624, NULL, NULL, '2017-11-06 16:08:28', '2017-11-06 16:08:28', NULL, NULL, NULL, NULL),
(629, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 625, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(630, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 626, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(631, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 627, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(632, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 628, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(633, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 629, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(634, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 630, NULL, NULL, '2017-11-06 16:08:29', '2017-11-06 16:08:29', NULL, NULL, NULL, NULL),
(635, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 631, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(636, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 632, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(637, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 633, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(638, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 634, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(639, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 635, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(640, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 636, NULL, NULL, '2017-11-06 16:08:30', '2017-11-06 16:08:30', NULL, NULL, NULL, NULL),
(641, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 637, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(642, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 638, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(643, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 639, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(644, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 640, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(645, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 641, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(646, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 642, NULL, NULL, '2017-11-06 16:08:31', '2017-11-06 16:08:31', NULL, NULL, NULL, NULL),
(647, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 643, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(648, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 644, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(649, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 645, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(650, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 646, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(651, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 647, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(652, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 648, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(653, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 649, NULL, NULL, '2017-11-06 16:08:32', '2017-11-06 16:08:32', NULL, NULL, NULL, NULL),
(654, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 650, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(655, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 651, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(656, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 652, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(657, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 653, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(658, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 654, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(659, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 655, NULL, NULL, '2017-11-06 16:08:33', '2017-11-06 16:08:33', NULL, NULL, NULL, NULL),
(660, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 656, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(661, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 657, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(662, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 658, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(663, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 659, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(664, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 660, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(665, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 661, NULL, NULL, '2017-11-06 16:08:34', '2017-11-06 16:08:34', NULL, NULL, NULL, NULL),
(666, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 662, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(667, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 663, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(668, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 664, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(669, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 665, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(670, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 666, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(671, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 667, NULL, NULL, '2017-11-06 16:08:35', '2017-11-06 16:08:35', NULL, NULL, NULL, NULL),
(672, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 668, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(673, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 669, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(674, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 670, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(675, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 671, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(676, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 672, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(677, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 673, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(678, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 674, NULL, NULL, '2017-11-06 16:08:36', '2017-11-06 16:08:36', NULL, NULL, NULL, NULL),
(679, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 675, NULL, NULL, '2017-11-06 16:08:37', '2017-11-06 16:08:37', NULL, NULL, NULL, NULL),
(680, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 676, NULL, NULL, '2017-11-06 16:08:37', '2017-11-06 16:08:37', NULL, NULL, NULL, NULL),
(681, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 677, NULL, NULL, '2017-11-06 16:08:37', '2017-11-06 16:08:37', NULL, NULL, NULL, NULL),
(682, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 678, NULL, NULL, '2017-11-06 16:08:37', '2017-11-06 16:08:37', NULL, NULL, NULL, NULL),
(683, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 679, NULL, NULL, '2017-11-06 16:08:38', '2017-11-06 16:08:38', NULL, NULL, NULL, NULL),
(684, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 680, NULL, NULL, '2017-11-06 16:08:38', '2017-11-06 16:08:38', NULL, NULL, NULL, NULL),
(685, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 681, NULL, NULL, '2017-11-06 16:08:38', '2017-11-06 16:08:38', NULL, NULL, NULL, NULL),
(686, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 682, NULL, NULL, '2017-11-06 16:08:38', '2017-11-06 16:08:38', NULL, NULL, NULL, NULL),
(687, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 683, NULL, NULL, '2017-11-06 16:08:38', '2017-11-06 16:08:38', NULL, NULL, NULL, NULL),
(688, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 684, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(689, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 685, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(690, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 686, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(691, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 687, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(692, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 688, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(693, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 689, NULL, NULL, '2017-11-06 16:08:39', '2017-11-06 16:08:39', NULL, NULL, NULL, NULL),
(694, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 690, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(695, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 691, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(696, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 692, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(697, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 693, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(698, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 694, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(699, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 695, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(700, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 696, NULL, NULL, '2017-11-06 16:08:40', '2017-11-06 16:08:40', NULL, NULL, NULL, NULL),
(701, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 697, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(702, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 698, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(703, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 699, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(704, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 700, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(705, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 701, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(706, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 702, NULL, NULL, '2017-11-06 16:08:41', '2017-11-06 16:08:41', NULL, NULL, NULL, NULL),
(707, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 703, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(708, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 704, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(709, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 705, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(710, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 706, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(711, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 707, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(712, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 708, NULL, NULL, '2017-11-06 16:08:42', '2017-11-06 16:08:42', NULL, NULL, NULL, NULL),
(713, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 709, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(714, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 710, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(715, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 711, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(716, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 712, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(717, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 713, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(718, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 714, NULL, NULL, '2017-11-06 16:08:43', '2017-11-06 16:08:43', NULL, NULL, NULL, NULL),
(719, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 715, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(720, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 716, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(721, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 717, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(722, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 718, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(723, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 719, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(724, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 720, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(725, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 721, NULL, NULL, '2017-11-06 16:08:44', '2017-11-06 16:08:44', NULL, NULL, NULL, NULL),
(726, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 722, NULL, NULL, '2017-11-06 16:08:45', '2017-11-06 16:08:45', NULL, NULL, NULL, NULL),
(727, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 723, NULL, NULL, '2017-11-06 16:08:45', '2017-11-06 16:08:45', NULL, NULL, NULL, NULL),
(728, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 724, NULL, NULL, '2017-11-06 16:08:45', '2017-11-06 16:08:45', NULL, NULL, NULL, NULL),
(729, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 725, NULL, NULL, '2017-11-06 16:08:45', '2017-11-06 16:08:45', NULL, NULL, NULL, NULL),
(730, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 726, NULL, NULL, '2017-11-06 16:08:45', '2017-11-06 16:08:45', NULL, NULL, NULL, NULL),
(731, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 727, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(732, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 728, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(733, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 729, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(734, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 730, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(735, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 731, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(736, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 732, NULL, NULL, '2017-11-06 16:08:46', '2017-11-06 16:08:46', NULL, NULL, NULL, NULL),
(737, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 733, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(738, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 734, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(739, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 735, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(740, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 736, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(741, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 737, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(742, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 738, NULL, NULL, '2017-11-06 16:08:47', '2017-11-06 16:08:47', NULL, NULL, NULL, NULL),
(743, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 739, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(744, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 740, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(745, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 741, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(746, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 742, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(747, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 743, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(748, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 744, NULL, NULL, '2017-11-06 16:08:48', '2017-11-06 16:08:48', NULL, NULL, NULL, NULL),
(749, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 745, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(750, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 746, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(751, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 747, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(752, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 748, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(753, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 749, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(754, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 750, NULL, NULL, '2017-11-06 16:08:49', '2017-11-06 16:08:49', NULL, NULL, NULL, NULL),
(755, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 751, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(756, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 752, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(757, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 753, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(758, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 754, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(759, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 755, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(760, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 756, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(761, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 757, NULL, NULL, '2017-11-06 16:08:50', '2017-11-06 16:08:50', NULL, NULL, NULL, NULL),
(762, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 758, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(763, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 759, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(764, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 760, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(765, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 761, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(766, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 762, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(767, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 763, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(768, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 764, NULL, NULL, '2017-11-06 16:08:51', '2017-11-06 16:08:51', NULL, NULL, NULL, NULL),
(769, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 765, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(770, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 766, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(771, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 767, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(772, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 768, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(773, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 769, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(774, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 770, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(775, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 771, NULL, NULL, '2017-11-06 16:08:52', '2017-11-06 16:08:52', NULL, NULL, NULL, NULL),
(776, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 772, NULL, NULL, '2017-11-06 16:08:53', '2017-11-06 16:08:53', NULL, NULL, NULL, NULL),
(777, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 773, NULL, NULL, '2017-11-06 16:08:53', '2017-11-06 16:08:53', NULL, NULL, NULL, NULL),
(778, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 774, NULL, NULL, '2017-11-06 16:08:53', '2017-11-06 16:08:53', NULL, NULL, NULL, NULL),
(779, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 775, NULL, NULL, '2017-11-06 16:08:53', '2017-11-06 16:08:53', NULL, NULL, NULL, NULL),
(780, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 776, NULL, NULL, '2017-11-06 16:08:53', '2017-11-06 16:08:53', NULL, NULL, NULL, NULL),
(781, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 777, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(782, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 778, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(783, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 779, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(784, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 780, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(785, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 781, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(786, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 782, NULL, NULL, '2017-11-06 16:08:54', '2017-11-06 16:08:54', NULL, NULL, NULL, NULL),
(787, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 783, NULL, NULL, '2017-11-06 16:08:55', '2017-11-06 16:08:55', NULL, NULL, NULL, NULL),
(788, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 784, NULL, NULL, '2017-11-06 16:08:55', '2017-11-06 16:08:55', NULL, NULL, NULL, NULL),
(789, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 785, NULL, NULL, '2017-11-06 16:08:55', '2017-11-06 16:08:55', NULL, NULL, NULL, NULL),
(790, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 786, NULL, NULL, '2017-11-06 16:08:55', '2017-11-06 16:08:55', NULL, NULL, NULL, NULL),
(791, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 787, NULL, NULL, '2017-11-06 16:08:55', '2017-11-06 16:08:55', NULL, NULL, NULL, NULL),
(792, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 788, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(793, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 789, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(794, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 790, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(795, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 791, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(796, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 792, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(797, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 793, NULL, NULL, '2017-11-06 16:08:56', '2017-11-06 16:08:56', NULL, NULL, NULL, NULL),
(798, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 794, NULL, NULL, '2017-11-06 16:08:57', '2017-11-06 16:08:57', NULL, NULL, NULL, NULL),
(799, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 795, NULL, NULL, '2017-11-06 16:08:57', '2017-11-06 16:08:57', NULL, NULL, NULL, NULL),
(800, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 796, NULL, NULL, '2017-11-06 16:08:57', '2017-11-06 16:08:57', NULL, NULL, NULL, NULL),
(801, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 797, NULL, NULL, '2017-11-06 16:08:57', '2017-11-06 16:08:57', NULL, NULL, NULL, NULL),
(802, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 798, NULL, NULL, '2017-11-06 16:08:57', '2017-11-06 16:08:57', NULL, NULL, NULL, NULL),
(803, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 799, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(804, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 800, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(805, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 801, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(806, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 802, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(807, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 803, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(808, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 804, NULL, NULL, '2017-11-06 16:08:58', '2017-11-06 16:08:58', NULL, NULL, NULL, NULL),
(809, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 805, NULL, NULL, '2017-11-06 16:08:59', '2017-11-06 16:08:59', NULL, NULL, NULL, NULL),
(810, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 806, NULL, NULL, '2017-11-06 16:08:59', '2017-11-06 16:08:59', NULL, NULL, NULL, NULL),
(811, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 807, NULL, NULL, '2017-11-06 16:08:59', '2017-11-06 16:08:59', NULL, NULL, NULL, NULL),
(812, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 808, NULL, NULL, '2017-11-06 16:08:59', '2017-11-06 16:08:59', NULL, NULL, NULL, NULL),
(813, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 809, NULL, NULL, '2017-11-06 16:09:00', '2017-11-06 16:09:00', NULL, NULL, NULL, NULL),
(814, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 810, NULL, NULL, '2017-11-06 16:09:00', '2017-11-06 16:09:00', NULL, NULL, NULL, NULL),
(815, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 811, NULL, NULL, '2017-11-06 16:09:00', '2017-11-06 16:09:00', NULL, NULL, NULL, NULL),
(816, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 812, NULL, NULL, '2017-11-06 16:09:00', '2017-11-06 16:09:00', NULL, NULL, NULL, NULL),
(817, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 813, NULL, NULL, '2017-11-06 16:09:00', '2017-11-06 16:09:00', NULL, NULL, NULL, NULL),
(818, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 814, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(819, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 815, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(820, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 816, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(821, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 817, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(822, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 818, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(823, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 819, NULL, NULL, '2017-11-06 16:09:01', '2017-11-06 16:09:01', NULL, NULL, NULL, NULL),
(824, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 820, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(825, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 821, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(826, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 822, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(827, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 823, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(828, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 824, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(829, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 825, NULL, NULL, '2017-11-06 16:09:02', '2017-11-06 16:09:02', NULL, NULL, NULL, NULL),
(830, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 826, NULL, NULL, '2017-11-06 16:09:03', '2017-11-06 16:09:03', NULL, NULL, NULL, NULL),
(831, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 827, NULL, NULL, '2017-11-06 16:09:03', '2017-11-06 16:09:03', NULL, NULL, NULL, NULL),
(832, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 828, NULL, NULL, '2017-11-06 16:09:03', '2017-11-06 16:09:03', NULL, NULL, NULL, NULL),
(833, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 829, NULL, NULL, '2017-11-06 16:09:03', '2017-11-06 16:09:03', NULL, NULL, NULL, NULL),
(834, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 830, NULL, NULL, '2017-11-06 16:09:03', '2017-11-06 16:09:03', NULL, NULL, NULL, NULL),
(835, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 831, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(836, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 832, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(837, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 833, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(838, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 834, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(839, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 835, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(840, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 836, NULL, NULL, '2017-11-06 16:09:04', '2017-11-06 16:09:04', NULL, NULL, NULL, NULL),
(841, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 837, NULL, NULL, '2017-11-06 16:09:05', '2017-11-06 16:09:05', NULL, NULL, NULL, NULL),
(842, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 838, NULL, NULL, '2017-11-06 16:09:05', '2017-11-06 16:09:05', NULL, NULL, NULL, NULL),
(843, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 839, NULL, NULL, '2017-11-06 16:09:05', '2017-11-06 16:09:05', NULL, NULL, NULL, NULL),
(844, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 840, NULL, NULL, '2017-11-06 16:09:05', '2017-11-06 16:09:05', NULL, NULL, NULL, NULL),
(845, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 841, NULL, NULL, '2017-11-06 16:09:05', '2017-11-06 16:09:05', NULL, NULL, NULL, NULL),
(846, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 842, NULL, NULL, '2017-11-06 16:09:06', '2017-11-06 16:09:06', NULL, NULL, NULL, NULL),
(847, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 843, NULL, NULL, '2017-11-06 16:09:06', '2017-11-06 16:09:06', NULL, NULL, NULL, NULL),
(848, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 844, NULL, NULL, '2017-11-06 16:09:06', '2017-11-06 16:09:06', NULL, NULL, NULL, NULL),
(849, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 845, NULL, NULL, '2017-11-06 16:09:06', '2017-11-06 16:09:06', NULL, NULL, NULL, NULL),
(850, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 846, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(851, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 847, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(852, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 848, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(853, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 849, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(854, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 850, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(855, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 851, NULL, NULL, '2017-11-06 16:09:07', '2017-11-06 16:09:07', NULL, NULL, NULL, NULL),
(856, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 852, NULL, NULL, '2017-11-06 16:09:08', '2017-11-06 16:09:08', NULL, NULL, NULL, NULL),
(857, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 853, NULL, NULL, '2017-11-06 16:09:08', '2017-11-06 16:09:08', NULL, NULL, NULL, NULL),
(858, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 854, NULL, NULL, '2017-11-06 16:09:08', '2017-11-06 16:09:08', NULL, NULL, NULL, NULL),
(859, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 855, NULL, NULL, '2017-11-06 16:09:08', '2017-11-06 16:09:08', NULL, NULL, NULL, NULL),
(860, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 856, NULL, NULL, '2017-11-06 16:09:08', '2017-11-06 16:09:08', NULL, NULL, NULL, NULL),
(861, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 857, NULL, NULL, '2017-11-06 16:09:09', '2017-11-06 16:09:09', NULL, NULL, NULL, NULL),
(862, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 858, NULL, NULL, '2017-11-06 16:09:09', '2017-11-06 16:09:09', NULL, NULL, NULL, NULL),
(863, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 859, NULL, NULL, '2017-11-06 16:09:09', '2017-11-06 16:09:09', NULL, NULL, NULL, NULL),
(864, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 860, NULL, NULL, '2017-11-06 16:09:09', '2017-11-06 16:09:09', NULL, NULL, NULL, NULL),
(865, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 861, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(866, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 862, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(867, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 863, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(868, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 864, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(869, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 865, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(870, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 866, NULL, NULL, '2017-11-06 16:09:10', '2017-11-06 16:09:10', NULL, NULL, NULL, NULL),
(871, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 867, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(872, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 868, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(873, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 869, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(874, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 870, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(875, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 871, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(876, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 872, NULL, NULL, '2017-11-06 16:09:11', '2017-11-06 16:09:11', NULL, NULL, NULL, NULL),
(877, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 873, NULL, NULL, '2017-11-06 16:09:12', '2017-11-06 16:09:12', NULL, NULL, NULL, NULL),
(878, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 874, NULL, NULL, '2017-11-06 16:09:12', '2017-11-06 16:09:12', NULL, NULL, NULL, NULL),
(879, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 875, NULL, NULL, '2017-11-06 16:09:12', '2017-11-06 16:09:12', NULL, NULL, NULL, NULL),
(880, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 876, NULL, NULL, '2017-11-06 16:09:12', '2017-11-06 16:09:12', NULL, NULL, NULL, NULL),
(881, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 877, NULL, NULL, '2017-11-06 16:09:12', '2017-11-06 16:09:12', NULL, NULL, NULL, NULL),
(882, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 878, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(883, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 879, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(884, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 880, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(885, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 881, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(886, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 882, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(887, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 883, NULL, NULL, '2017-11-06 16:09:13', '2017-11-06 16:09:13', NULL, NULL, NULL, NULL),
(888, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 884, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(889, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 885, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(890, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 886, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(891, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 887, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(892, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 888, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(893, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 889, NULL, NULL, '2017-11-06 16:09:14', '2017-11-06 16:09:14', NULL, NULL, NULL, NULL),
(894, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 890, NULL, NULL, '2017-11-06 16:09:15', '2017-11-06 16:09:15', NULL, NULL, NULL, NULL),
(895, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 891, NULL, NULL, '2017-11-06 16:09:15', '2017-11-06 16:09:15', NULL, NULL, NULL, NULL),
(896, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 892, NULL, NULL, '2017-11-06 16:09:15', '2017-11-06 16:09:15', NULL, NULL, NULL, NULL),
(897, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 893, NULL, NULL, '2017-11-06 16:09:15', '2017-11-06 16:09:15', NULL, NULL, NULL, NULL),
(898, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 894, NULL, NULL, '2017-11-06 16:09:16', '2017-11-06 16:09:16', NULL, NULL, NULL, NULL),
(899, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 895, NULL, NULL, '2017-11-06 16:09:16', '2017-11-06 16:09:16', NULL, NULL, NULL, NULL),
(900, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 896, NULL, NULL, '2017-11-06 16:09:16', '2017-11-06 16:09:16', NULL, NULL, NULL, NULL),
(901, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 897, NULL, NULL, '2017-11-06 16:09:16', '2017-11-06 16:09:16', NULL, NULL, NULL, NULL),
(902, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 898, NULL, NULL, '2017-11-06 16:09:16', '2017-11-06 16:09:16', NULL, NULL, NULL, NULL),
(903, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 899, NULL, NULL, '2017-11-06 16:09:17', '2017-11-06 16:09:17', NULL, NULL, NULL, NULL),
(904, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 900, NULL, NULL, '2017-11-06 16:09:17', '2017-11-06 16:09:17', NULL, NULL, NULL, NULL),
(905, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 901, NULL, NULL, '2017-11-06 16:09:17', '2017-11-06 16:09:17', NULL, NULL, NULL, NULL),
(906, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 902, NULL, NULL, '2017-11-06 16:09:17', '2017-11-06 16:09:17', NULL, NULL, NULL, NULL),
(907, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 903, NULL, NULL, '2017-11-06 16:09:17', '2017-11-06 16:09:17', NULL, NULL, NULL, NULL),
(908, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 904, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(909, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 905, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(910, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 906, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(911, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 907, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(912, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 908, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(913, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 909, NULL, NULL, '2017-11-06 16:09:18', '2017-11-06 16:09:18', NULL, NULL, NULL, NULL),
(914, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 910, NULL, NULL, '2017-11-06 16:09:19', '2017-11-06 16:09:19', NULL, NULL, NULL, NULL),
(915, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 911, NULL, NULL, '2017-11-06 16:09:19', '2017-11-06 16:09:19', NULL, NULL, NULL, NULL),
(916, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 912, NULL, NULL, '2017-11-06 16:09:19', '2017-11-06 16:09:19', NULL, NULL, NULL, NULL),
(917, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 913, NULL, NULL, '2017-11-06 16:09:19', '2017-11-06 16:09:19', NULL, NULL, NULL, NULL),
(918, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 914, NULL, NULL, '2017-11-06 16:09:19', '2017-11-06 16:09:19', NULL, NULL, NULL, NULL),
(919, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 915, NULL, NULL, '2017-11-06 16:09:20', '2017-11-06 16:09:20', NULL, NULL, NULL, NULL),
(920, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 916, NULL, NULL, '2017-11-06 16:09:20', '2017-11-06 16:09:20', NULL, NULL, NULL, NULL),
(921, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 917, NULL, NULL, '2017-11-06 16:09:20', '2017-11-06 16:09:20', NULL, NULL, NULL, NULL),
(922, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 918, NULL, NULL, '2017-11-06 16:09:20', '2017-11-06 16:09:20', NULL, NULL, NULL, NULL),
(923, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 919, NULL, NULL, '2017-11-06 16:09:20', '2017-11-06 16:09:20', NULL, NULL, NULL, NULL),
(924, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 920, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(925, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 921, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(926, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 922, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(927, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 923, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(928, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 924, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(929, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 925, NULL, NULL, '2017-11-06 16:09:21', '2017-11-06 16:09:21', NULL, NULL, NULL, NULL),
(930, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 926, NULL, NULL, '2017-11-06 16:09:22', '2017-11-06 16:09:22', NULL, NULL, NULL, NULL),
(931, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 927, NULL, NULL, '2017-11-06 16:09:22', '2017-11-06 16:09:22', NULL, NULL, NULL, NULL),
(932, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 928, NULL, NULL, '2017-11-06 16:09:22', '2017-11-06 16:09:22', NULL, NULL, NULL, NULL);
INSERT INTO `action_logs` (`id`, `user_id`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`) VALUES
(933, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 929, NULL, NULL, '2017-11-06 16:09:22', '2017-11-06 16:09:22', NULL, NULL, NULL, NULL),
(934, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 930, NULL, NULL, '2017-11-06 16:09:22', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(935, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 931, NULL, NULL, '2017-11-06 16:09:23', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(936, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 932, NULL, NULL, '2017-11-06 16:09:23', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(937, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 933, NULL, NULL, '2017-11-06 16:09:23', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(938, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 934, NULL, NULL, '2017-11-06 16:09:23', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(939, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 935, NULL, NULL, '2017-11-06 16:09:23', '2017-11-06 16:09:23', NULL, NULL, NULL, NULL),
(940, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 936, NULL, NULL, '2017-11-06 16:09:24', '2017-11-06 16:09:24', NULL, NULL, NULL, NULL),
(941, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 937, NULL, NULL, '2017-11-06 16:09:24', '2017-11-06 16:09:24', NULL, NULL, NULL, NULL),
(942, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 938, NULL, NULL, '2017-11-06 16:09:24', '2017-11-06 16:09:24', NULL, NULL, NULL, NULL),
(943, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 939, NULL, NULL, '2017-11-06 16:09:24', '2017-11-06 16:09:24', NULL, NULL, NULL, NULL),
(944, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 940, NULL, NULL, '2017-11-06 16:09:24', '2017-11-06 16:09:24', NULL, NULL, NULL, NULL),
(945, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 941, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(946, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 942, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(947, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 943, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(948, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 944, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(949, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 945, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(950, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 946, NULL, NULL, '2017-11-06 16:09:25', '2017-11-06 16:09:25', NULL, NULL, NULL, NULL),
(951, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 947, NULL, NULL, '2017-11-06 16:09:26', '2017-11-06 16:09:26', NULL, NULL, NULL, NULL),
(952, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 948, NULL, NULL, '2017-11-06 16:09:26', '2017-11-06 16:09:26', NULL, NULL, NULL, NULL),
(953, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 949, NULL, NULL, '2017-11-06 16:09:26', '2017-11-06 16:09:26', NULL, NULL, NULL, NULL),
(954, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 950, NULL, NULL, '2017-11-06 16:09:26', '2017-11-06 16:09:26', NULL, NULL, NULL, NULL),
(955, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 951, NULL, NULL, '2017-11-06 16:09:26', '2017-11-06 16:09:26', NULL, NULL, NULL, NULL),
(956, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 952, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(957, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 953, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(958, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 954, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(959, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 955, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(960, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 956, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(961, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 957, NULL, NULL, '2017-11-06 16:09:27', '2017-11-06 16:09:27', NULL, NULL, NULL, NULL),
(962, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 958, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(963, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 959, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(964, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 960, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(965, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 961, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(966, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 962, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(967, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 963, NULL, NULL, '2017-11-06 16:09:28', '2017-11-06 16:09:28', NULL, NULL, NULL, NULL),
(968, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 964, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(969, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 965, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(970, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 966, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(971, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 967, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(972, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 968, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(973, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 969, NULL, NULL, '2017-11-06 16:09:29', '2017-11-06 16:09:29', NULL, NULL, NULL, NULL),
(974, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 970, NULL, NULL, '2017-11-06 16:09:30', '2017-11-06 16:09:30', NULL, NULL, NULL, NULL),
(975, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 971, NULL, NULL, '2017-11-06 16:09:30', '2017-11-06 16:09:30', NULL, NULL, NULL, NULL),
(976, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 972, NULL, NULL, '2017-11-06 16:09:30', '2017-11-06 16:09:30', NULL, NULL, NULL, NULL),
(977, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 973, NULL, NULL, '2017-11-06 16:09:30', '2017-11-06 16:09:30', NULL, NULL, NULL, NULL),
(978, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 974, NULL, NULL, '2017-11-06 16:09:30', '2017-11-06 16:09:30', NULL, NULL, NULL, NULL),
(979, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 975, NULL, NULL, '2017-11-06 16:09:31', '2017-11-06 16:09:31', NULL, NULL, NULL, NULL),
(980, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 976, NULL, NULL, '2017-11-06 16:09:31', '2017-11-06 16:09:31', NULL, NULL, NULL, NULL),
(981, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 977, NULL, NULL, '2017-11-06 16:09:31', '2017-11-06 16:09:31', NULL, NULL, NULL, NULL),
(982, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 978, NULL, NULL, '2017-11-06 16:09:31', '2017-11-06 16:09:31', NULL, NULL, NULL, NULL),
(983, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 979, NULL, NULL, '2017-11-06 16:09:31', '2017-11-06 16:09:31', NULL, NULL, NULL, NULL),
(984, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 980, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(985, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 981, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(986, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 982, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(987, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 983, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(988, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 984, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(989, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 985, NULL, NULL, '2017-11-06 16:09:32', '2017-11-06 16:09:32', NULL, NULL, NULL, NULL),
(990, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 986, NULL, NULL, '2017-11-06 16:09:33', '2017-11-06 16:09:33', NULL, NULL, NULL, NULL),
(991, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 987, NULL, NULL, '2017-11-06 16:09:33', '2017-11-06 16:09:33', NULL, NULL, NULL, NULL),
(992, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 988, NULL, NULL, '2017-11-06 16:09:33', '2017-11-06 16:09:33', NULL, NULL, NULL, NULL),
(993, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 989, NULL, NULL, '2017-11-06 16:09:33', '2017-11-06 16:09:33', NULL, NULL, NULL, NULL),
(994, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 990, NULL, NULL, '2017-11-06 16:09:33', '2017-11-06 16:09:33', NULL, NULL, NULL, NULL),
(995, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 991, NULL, NULL, '2017-11-06 16:09:34', '2017-11-06 16:09:34', NULL, NULL, NULL, NULL),
(996, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 992, NULL, NULL, '2017-11-06 16:09:34', '2017-11-06 16:09:34', NULL, NULL, NULL, NULL),
(997, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 993, NULL, NULL, '2017-11-06 16:09:34', '2017-11-06 16:09:34', NULL, NULL, NULL, NULL),
(998, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 994, NULL, NULL, '2017-11-06 16:09:34', '2017-11-06 16:09:34', NULL, NULL, NULL, NULL),
(999, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 995, NULL, NULL, '2017-11-06 16:09:34', '2017-11-06 16:09:34', NULL, NULL, NULL, NULL),
(1000, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 996, NULL, NULL, '2017-11-06 16:09:35', '2017-11-06 16:09:35', NULL, NULL, NULL, NULL),
(1001, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 997, NULL, NULL, '2017-11-06 16:09:35', '2017-11-06 16:09:35', NULL, NULL, NULL, NULL),
(1002, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 998, NULL, NULL, '2017-11-06 16:09:35', '2017-11-06 16:09:35', NULL, NULL, NULL, NULL),
(1003, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 999, NULL, NULL, '2017-11-06 16:09:35', '2017-11-06 16:09:35', NULL, NULL, NULL, NULL),
(1004, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1000, NULL, NULL, '2017-11-06 16:09:35', '2017-11-06 16:09:35', NULL, NULL, NULL, NULL),
(1005, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1001, NULL, NULL, '2017-11-06 16:09:36', '2017-11-06 16:09:36', NULL, NULL, NULL, NULL),
(1006, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1002, NULL, NULL, '2017-11-06 16:09:36', '2017-11-06 16:09:36', NULL, NULL, NULL, NULL),
(1007, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1003, NULL, NULL, '2017-11-06 16:09:36', '2017-11-06 16:09:36', NULL, NULL, NULL, NULL),
(1008, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1004, NULL, NULL, '2017-11-06 16:09:36', '2017-11-06 16:09:36', NULL, NULL, NULL, NULL),
(1009, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1005, NULL, NULL, '2017-11-06 16:09:36', '2017-11-06 16:09:36', NULL, NULL, NULL, NULL),
(1010, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1006, NULL, NULL, '2017-11-06 16:09:37', '2017-11-06 16:09:37', NULL, NULL, NULL, NULL),
(1011, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1007, NULL, NULL, '2017-11-06 16:09:37', '2017-11-06 16:09:37', NULL, NULL, NULL, NULL),
(1012, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1008, NULL, NULL, '2017-11-06 16:09:37', '2017-11-06 16:09:37', NULL, NULL, NULL, NULL),
(1013, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1009, NULL, NULL, '2017-11-06 16:09:37', '2017-11-06 16:09:37', NULL, NULL, NULL, NULL),
(1014, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1010, NULL, NULL, '2017-11-06 16:09:37', '2017-11-06 16:09:37', NULL, NULL, NULL, NULL),
(1015, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1011, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1016, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1012, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1017, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1013, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1018, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1014, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1019, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1015, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1020, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1016, NULL, NULL, '2017-11-06 16:09:38', '2017-11-06 16:09:38', NULL, NULL, NULL, NULL),
(1021, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1017, NULL, NULL, '2017-11-06 16:09:39', '2017-11-06 16:09:39', NULL, NULL, NULL, NULL),
(1022, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1018, NULL, NULL, '2017-11-06 16:09:39', '2017-11-06 16:09:39', NULL, NULL, NULL, NULL),
(1023, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1019, NULL, NULL, '2017-11-06 16:09:39', '2017-11-06 16:09:39', NULL, NULL, NULL, NULL),
(1024, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1020, NULL, NULL, '2017-11-06 16:09:39', '2017-11-06 16:09:39', NULL, NULL, NULL, NULL),
(1025, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1021, NULL, NULL, '2017-11-06 16:09:39', '2017-11-06 16:09:39', NULL, NULL, NULL, NULL),
(1026, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1022, NULL, NULL, '2017-11-06 16:09:40', '2017-11-06 16:09:40', NULL, NULL, NULL, NULL),
(1027, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1023, NULL, NULL, '2017-11-06 16:09:40', '2017-11-06 16:09:40', NULL, NULL, NULL, NULL),
(1028, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1024, NULL, NULL, '2017-11-06 16:09:40', '2017-11-06 16:09:40', NULL, NULL, NULL, NULL),
(1029, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1025, NULL, NULL, '2017-11-06 16:09:40', '2017-11-06 16:09:40', NULL, NULL, NULL, NULL),
(1030, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1026, NULL, NULL, '2017-11-06 16:09:40', '2017-11-06 16:09:40', NULL, NULL, NULL, NULL),
(1031, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1027, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1032, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1028, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1033, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1029, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1034, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1030, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1035, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1031, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1036, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1032, NULL, NULL, '2017-11-06 16:09:41', '2017-11-06 16:09:41', NULL, NULL, NULL, NULL),
(1037, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1033, NULL, NULL, '2017-11-06 16:09:42', '2017-11-06 16:09:42', NULL, NULL, NULL, NULL),
(1038, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1034, NULL, NULL, '2017-11-06 16:09:42', '2017-11-06 16:09:42', NULL, NULL, NULL, NULL),
(1039, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1035, NULL, NULL, '2017-11-06 16:09:42', '2017-11-06 16:09:42', NULL, NULL, NULL, NULL),
(1040, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1036, NULL, NULL, '2017-11-06 16:09:42', '2017-11-06 16:09:42', NULL, NULL, NULL, NULL),
(1041, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1037, NULL, NULL, '2017-11-06 16:09:43', '2017-11-06 16:09:43', NULL, NULL, NULL, NULL),
(1042, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1038, NULL, NULL, '2017-11-06 16:09:43', '2017-11-06 16:09:43', NULL, NULL, NULL, NULL),
(1043, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1039, NULL, NULL, '2017-11-06 16:09:43', '2017-11-06 16:09:43', NULL, NULL, NULL, NULL),
(1044, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1040, NULL, NULL, '2017-11-06 16:09:43', '2017-11-06 16:09:43', NULL, NULL, NULL, NULL),
(1045, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1041, NULL, NULL, '2017-11-06 16:09:43', '2017-11-06 16:09:43', NULL, NULL, NULL, NULL),
(1046, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1042, NULL, NULL, '2017-11-06 16:09:44', '2017-11-06 16:09:44', NULL, NULL, NULL, NULL),
(1047, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1043, NULL, NULL, '2017-11-06 16:09:44', '2017-11-06 16:09:44', NULL, NULL, NULL, NULL),
(1048, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1044, NULL, NULL, '2017-11-06 16:09:44', '2017-11-06 16:09:44', NULL, NULL, NULL, NULL),
(1049, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1045, NULL, NULL, '2017-11-06 16:09:44', '2017-11-06 16:09:44', NULL, NULL, NULL, NULL),
(1050, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1046, NULL, NULL, '2017-11-06 16:09:44', '2017-11-06 16:09:44', NULL, NULL, NULL, NULL),
(1051, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1047, NULL, NULL, '2017-11-06 16:09:45', '2017-11-06 16:09:45', NULL, NULL, NULL, NULL),
(1052, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1048, NULL, NULL, '2017-11-06 16:09:45', '2017-11-06 16:09:45', NULL, NULL, NULL, NULL),
(1053, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1049, NULL, NULL, '2017-11-06 16:09:45', '2017-11-06 16:09:45', NULL, NULL, NULL, NULL),
(1054, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1050, NULL, NULL, '2017-11-06 16:09:45', '2017-11-06 16:09:45', NULL, NULL, NULL, NULL),
(1055, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1051, NULL, NULL, '2017-11-06 16:09:45', '2017-11-06 16:09:45', NULL, NULL, NULL, NULL),
(1056, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1052, NULL, NULL, '2017-11-06 16:09:46', '2017-11-06 16:09:46', NULL, NULL, NULL, NULL),
(1057, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1053, NULL, NULL, '2017-11-06 16:09:46', '2017-11-06 16:09:46', NULL, NULL, NULL, NULL),
(1058, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1054, NULL, NULL, '2017-11-06 16:09:46', '2017-11-06 16:09:46', NULL, NULL, NULL, NULL),
(1059, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1055, NULL, NULL, '2017-11-06 16:09:46', '2017-11-06 16:09:46', NULL, NULL, NULL, NULL),
(1060, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1056, NULL, NULL, '2017-11-06 16:09:46', '2017-11-06 16:09:46', NULL, NULL, NULL, NULL),
(1061, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1057, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1062, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1058, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1063, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1059, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1064, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1060, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1065, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1061, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1066, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1062, NULL, NULL, '2017-11-06 16:09:47', '2017-11-06 16:09:47', NULL, NULL, NULL, NULL),
(1067, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1063, NULL, NULL, '2017-11-06 16:09:48', '2017-11-06 16:09:48', NULL, NULL, NULL, NULL),
(1068, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1064, NULL, NULL, '2017-11-06 16:09:48', '2017-11-06 16:09:48', NULL, NULL, NULL, NULL),
(1069, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1065, NULL, NULL, '2017-11-06 16:09:48', '2017-11-06 16:09:48', NULL, NULL, NULL, NULL),
(1070, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1066, NULL, NULL, '2017-11-06 16:09:48', '2017-11-06 16:09:48', NULL, NULL, NULL, NULL),
(1071, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1067, NULL, NULL, '2017-11-06 16:09:48', '2017-11-06 16:09:48', NULL, NULL, NULL, NULL),
(1072, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1068, NULL, NULL, '2017-11-06 16:09:49', '2017-11-06 16:09:49', NULL, NULL, NULL, NULL),
(1073, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1069, NULL, NULL, '2017-11-06 16:09:49', '2017-11-06 16:09:49', NULL, NULL, NULL, NULL),
(1074, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1070, NULL, NULL, '2017-11-06 16:09:49', '2017-11-06 16:09:49', NULL, NULL, NULL, NULL),
(1075, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1071, NULL, NULL, '2017-11-06 16:09:49', '2017-11-06 16:09:49', NULL, NULL, NULL, NULL),
(1076, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1072, NULL, NULL, '2017-11-06 16:09:49', '2017-11-06 16:09:49', NULL, NULL, NULL, NULL),
(1077, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1073, NULL, NULL, '2017-11-06 16:09:50', '2017-11-06 16:09:50', NULL, NULL, NULL, NULL),
(1078, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1074, NULL, NULL, '2017-11-06 16:09:50', '2017-11-06 16:09:50', NULL, NULL, NULL, NULL),
(1079, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1075, NULL, NULL, '2017-11-06 16:09:50', '2017-11-06 16:09:50', NULL, NULL, NULL, NULL),
(1080, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1076, NULL, NULL, '2017-11-06 16:09:50', '2017-11-06 16:09:50', NULL, NULL, NULL, NULL),
(1081, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1077, NULL, NULL, '2017-11-06 16:09:51', '2017-11-06 16:09:51', NULL, NULL, NULL, NULL),
(1082, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1078, NULL, NULL, '2017-11-06 16:09:51', '2017-11-06 16:09:51', NULL, NULL, NULL, NULL),
(1083, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1079, NULL, NULL, '2017-11-06 16:09:51', '2017-11-06 16:09:51', NULL, NULL, NULL, NULL),
(1084, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1080, NULL, NULL, '2017-11-06 16:09:52', '2017-11-06 16:09:52', NULL, NULL, NULL, NULL),
(1085, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1081, NULL, NULL, '2017-11-06 16:09:52', '2017-11-06 16:09:52', NULL, NULL, NULL, NULL),
(1086, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1082, NULL, NULL, '2017-11-06 16:09:52', '2017-11-06 16:09:52', NULL, NULL, NULL, NULL),
(1087, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1083, NULL, NULL, '2017-11-06 16:09:52', '2017-11-06 16:09:52', NULL, NULL, NULL, NULL),
(1088, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1084, NULL, NULL, '2017-11-06 16:09:52', '2017-11-06 16:09:52', NULL, NULL, NULL, NULL),
(1089, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1085, NULL, NULL, '2017-11-06 16:09:53', '2017-11-06 16:09:53', NULL, NULL, NULL, NULL),
(1090, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1086, NULL, NULL, '2017-11-06 16:09:53', '2017-11-06 16:09:53', NULL, NULL, NULL, NULL),
(1091, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1087, NULL, NULL, '2017-11-06 16:09:53', '2017-11-06 16:09:53', NULL, NULL, NULL, NULL),
(1092, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1088, NULL, NULL, '2017-11-06 16:09:53', '2017-11-06 16:09:53', NULL, NULL, NULL, NULL),
(1093, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1089, NULL, NULL, '2017-11-06 16:09:54', '2017-11-06 16:09:54', NULL, NULL, NULL, NULL),
(1094, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1090, NULL, NULL, '2017-11-06 16:09:54', '2017-11-06 16:09:54', NULL, NULL, NULL, NULL),
(1095, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1091, NULL, NULL, '2017-11-06 16:09:54', '2017-11-06 16:09:54', NULL, NULL, NULL, NULL),
(1096, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1092, NULL, NULL, '2017-11-06 16:09:54', '2017-11-06 16:09:54', NULL, NULL, NULL, NULL),
(1097, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1093, NULL, NULL, '2017-11-06 16:09:54', '2017-11-06 16:09:54', NULL, NULL, NULL, NULL),
(1098, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1094, NULL, NULL, '2017-11-06 16:09:55', '2017-11-06 16:09:55', NULL, NULL, NULL, NULL),
(1099, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1095, NULL, NULL, '2017-11-06 16:09:55', '2017-11-06 16:09:55', NULL, NULL, NULL, NULL),
(1100, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1096, NULL, NULL, '2017-11-06 16:09:55', '2017-11-06 16:09:55', NULL, NULL, NULL, NULL),
(1101, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1097, NULL, NULL, '2017-11-06 16:09:55', '2017-11-06 16:09:55', NULL, NULL, NULL, NULL),
(1102, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1098, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1103, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1099, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1104, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1100, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1105, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1101, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1106, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1102, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1107, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1103, NULL, NULL, '2017-11-06 16:09:56', '2017-11-06 16:09:56', NULL, NULL, NULL, NULL),
(1108, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1104, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1109, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1105, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1110, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1106, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1111, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1107, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1112, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1108, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1113, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1109, NULL, NULL, '2017-11-06 16:09:57', '2017-11-06 16:09:57', NULL, NULL, NULL, NULL),
(1114, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1110, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1115, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1111, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1116, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1112, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1117, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1113, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1118, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1114, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1119, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1115, NULL, NULL, '2017-11-06 16:09:58', '2017-11-06 16:09:58', NULL, NULL, NULL, NULL),
(1120, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1116, NULL, NULL, '2017-11-06 16:09:59', '2017-11-06 16:09:59', NULL, NULL, NULL, NULL),
(1121, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1117, NULL, NULL, '2017-11-06 16:09:59', '2017-11-06 16:09:59', NULL, NULL, NULL, NULL),
(1122, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1118, NULL, NULL, '2017-11-06 16:09:59', '2017-11-06 16:09:59', NULL, NULL, NULL, NULL),
(1123, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1119, NULL, NULL, '2017-11-06 16:09:59', '2017-11-06 16:09:59', NULL, NULL, NULL, NULL),
(1124, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1120, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1125, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1121, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1126, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1122, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1127, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1123, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1128, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1124, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1129, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1125, NULL, NULL, '2017-11-06 16:10:00', '2017-11-06 16:10:00', NULL, NULL, NULL, NULL),
(1130, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1126, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1131, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1127, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1132, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1128, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1133, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1129, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1134, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1130, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1135, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1131, NULL, NULL, '2017-11-06 16:10:01', '2017-11-06 16:10:01', NULL, NULL, NULL, NULL),
(1136, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1132, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1137, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1133, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1138, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1134, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1139, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1135, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1140, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1136, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1141, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1137, NULL, NULL, '2017-11-06 16:10:02', '2017-11-06 16:10:02', NULL, NULL, NULL, NULL),
(1142, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1138, NULL, NULL, '2017-11-06 16:10:03', '2017-11-06 16:10:03', NULL, NULL, NULL, NULL),
(1143, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1139, NULL, NULL, '2017-11-06 16:10:03', '2017-11-06 16:10:03', NULL, NULL, NULL, NULL),
(1144, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1140, NULL, NULL, '2017-11-06 16:10:03', '2017-11-06 16:10:03', NULL, NULL, NULL, NULL),
(1145, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1141, NULL, NULL, '2017-11-06 16:10:03', '2017-11-06 16:10:03', NULL, NULL, NULL, NULL),
(1146, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1142, NULL, NULL, '2017-11-06 16:10:03', '2017-11-06 16:10:03', NULL, NULL, NULL, NULL),
(1147, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1143, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1148, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1144, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1149, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1145, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1150, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1146, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1151, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1147, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1152, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1148, NULL, NULL, '2017-11-06 16:10:04', '2017-11-06 16:10:04', NULL, NULL, NULL, NULL),
(1153, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1149, NULL, NULL, '2017-11-06 16:10:05', '2017-11-06 16:10:05', NULL, NULL, NULL, NULL),
(1154, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1150, NULL, NULL, '2017-11-06 16:10:05', '2017-11-06 16:10:05', NULL, NULL, NULL, NULL),
(1155, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1151, NULL, NULL, '2017-11-06 16:10:05', '2017-11-06 16:10:05', NULL, NULL, NULL, NULL),
(1156, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1152, NULL, NULL, '2017-11-06 16:10:05', '2017-11-06 16:10:05', NULL, NULL, NULL, NULL),
(1157, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1153, NULL, NULL, '2017-11-06 16:10:05', '2017-11-06 16:10:05', NULL, NULL, NULL, NULL),
(1158, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1154, NULL, NULL, '2017-11-06 16:10:06', '2017-11-06 16:10:06', NULL, NULL, NULL, NULL),
(1159, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1155, NULL, NULL, '2017-11-06 16:10:06', '2017-11-06 16:10:06', NULL, NULL, NULL, NULL),
(1160, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1156, NULL, NULL, '2017-11-06 16:10:06', '2017-11-06 16:10:06', NULL, NULL, NULL, NULL),
(1161, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1157, NULL, NULL, '2017-11-06 16:10:06', '2017-11-06 16:10:06', NULL, NULL, NULL, NULL),
(1162, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1158, NULL, NULL, '2017-11-06 16:10:06', '2017-11-06 16:10:06', NULL, NULL, NULL, NULL),
(1163, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1159, NULL, NULL, '2017-11-06 16:10:07', '2017-11-06 16:10:07', NULL, NULL, NULL, NULL),
(1164, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1160, NULL, NULL, '2017-11-06 16:10:07', '2017-11-06 16:10:07', NULL, NULL, NULL, NULL),
(1165, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1161, NULL, NULL, '2017-11-06 16:10:07', '2017-11-06 16:10:07', NULL, NULL, NULL, NULL),
(1166, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1162, NULL, NULL, '2017-11-06 16:10:07', '2017-11-06 16:10:07', NULL, NULL, NULL, NULL),
(1167, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1163, NULL, NULL, '2017-11-06 16:10:07', '2017-11-06 16:10:07', NULL, NULL, NULL, NULL),
(1168, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1164, NULL, NULL, '2017-11-06 16:10:08', '2017-11-06 16:10:08', NULL, NULL, NULL, NULL),
(1169, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1165, NULL, NULL, '2017-11-06 16:10:08', '2017-11-06 16:10:08', NULL, NULL, NULL, NULL),
(1170, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1166, NULL, NULL, '2017-11-06 16:10:08', '2017-11-06 16:10:08', NULL, NULL, NULL, NULL),
(1171, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1167, NULL, NULL, '2017-11-06 16:10:08', '2017-11-06 16:10:08', NULL, NULL, NULL, NULL),
(1172, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1168, NULL, NULL, '2017-11-06 16:10:08', '2017-11-06 16:10:08', NULL, NULL, NULL, NULL),
(1173, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1169, NULL, NULL, '2017-11-06 16:10:09', '2017-11-06 16:10:09', NULL, NULL, NULL, NULL),
(1174, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1170, NULL, NULL, '2017-11-06 16:10:09', '2017-11-06 16:10:09', NULL, NULL, NULL, NULL),
(1175, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1171, NULL, NULL, '2017-11-06 16:10:09', '2017-11-06 16:10:09', NULL, NULL, NULL, NULL),
(1176, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1172, NULL, NULL, '2017-11-06 16:10:09', '2017-11-06 16:10:09', NULL, NULL, NULL, NULL),
(1177, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1173, NULL, NULL, '2017-11-06 16:10:10', '2017-11-06 16:10:10', NULL, NULL, NULL, NULL),
(1178, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1174, NULL, NULL, '2017-11-06 16:10:10', '2017-11-06 16:10:10', NULL, NULL, NULL, NULL),
(1179, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1175, NULL, NULL, '2017-11-06 16:10:10', '2017-11-06 16:10:10', NULL, NULL, NULL, NULL),
(1180, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1176, NULL, NULL, '2017-11-06 16:10:10', '2017-11-06 16:10:10', NULL, NULL, NULL, NULL),
(1181, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1177, NULL, NULL, '2017-11-06 16:10:10', '2017-11-06 16:10:10', NULL, NULL, NULL, NULL),
(1182, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1178, NULL, NULL, '2017-11-06 16:10:11', '2017-11-06 16:10:11', NULL, NULL, NULL, NULL),
(1183, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1179, NULL, NULL, '2017-11-06 16:10:11', '2017-11-06 16:10:11', NULL, NULL, NULL, NULL),
(1184, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1180, NULL, NULL, '2017-11-06 16:10:11', '2017-11-06 16:10:11', NULL, NULL, NULL, NULL),
(1185, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1181, NULL, NULL, '2017-11-06 16:10:11', '2017-11-06 16:10:11', NULL, NULL, NULL, NULL),
(1186, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1182, NULL, NULL, '2017-11-06 16:10:11', '2017-11-06 16:10:11', NULL, NULL, NULL, NULL),
(1187, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1183, NULL, NULL, '2017-11-06 16:10:12', '2017-11-06 16:10:12', NULL, NULL, NULL, NULL),
(1188, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1184, NULL, NULL, '2017-11-06 16:10:12', '2017-11-06 16:10:12', NULL, NULL, NULL, NULL),
(1189, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1185, NULL, NULL, '2017-11-06 16:10:12', '2017-11-06 16:10:12', NULL, NULL, NULL, NULL),
(1190, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1186, NULL, NULL, '2017-11-06 16:10:12', '2017-11-06 16:10:12', NULL, NULL, NULL, NULL),
(1191, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1187, NULL, NULL, '2017-11-06 16:10:12', '2017-11-06 16:10:12', NULL, NULL, NULL, NULL),
(1192, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1188, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1193, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1189, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1194, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1190, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1195, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1191, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1196, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1192, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1197, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1193, NULL, NULL, '2017-11-06 16:10:13', '2017-11-06 16:10:13', NULL, NULL, NULL, NULL),
(1198, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1194, NULL, NULL, '2017-11-06 16:10:14', '2017-11-06 16:10:14', NULL, NULL, NULL, NULL),
(1199, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1195, NULL, NULL, '2017-11-06 16:10:14', '2017-11-06 16:10:14', NULL, NULL, NULL, NULL),
(1200, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1196, NULL, NULL, '2017-11-06 16:10:14', '2017-11-06 16:10:14', NULL, NULL, NULL, NULL),
(1201, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1197, NULL, NULL, '2017-11-06 16:10:14', '2017-11-06 16:10:14', NULL, NULL, NULL, NULL),
(1202, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1198, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1203, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1199, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1204, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1200, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1205, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1201, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1206, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1202, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1207, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1203, NULL, NULL, '2017-11-06 16:10:15', '2017-11-06 16:10:15', NULL, NULL, NULL, NULL),
(1208, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1204, NULL, NULL, '2017-11-06 16:10:16', '2017-11-06 16:10:16', NULL, NULL, NULL, NULL),
(1209, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1205, NULL, NULL, '2017-11-06 16:10:16', '2017-11-06 16:10:16', NULL, NULL, NULL, NULL),
(1210, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1206, NULL, NULL, '2017-11-06 16:10:16', '2017-11-06 16:10:16', NULL, NULL, NULL, NULL),
(1211, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1207, NULL, NULL, '2017-11-06 16:10:16', '2017-11-06 16:10:16', NULL, NULL, NULL, NULL),
(1212, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1208, NULL, NULL, '2017-11-06 16:10:16', '2017-11-06 16:10:16', NULL, NULL, NULL, NULL),
(1213, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1209, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1214, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1210, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1215, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1211, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1216, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1212, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1217, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1213, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1218, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1214, NULL, NULL, '2017-11-06 16:10:17', '2017-11-06 16:10:17', NULL, NULL, NULL, NULL),
(1219, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1215, NULL, NULL, '2017-11-06 16:10:18', '2017-11-06 16:10:18', NULL, NULL, NULL, NULL),
(1220, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1216, NULL, NULL, '2017-11-06 16:10:18', '2017-11-06 16:10:18', NULL, NULL, NULL, NULL),
(1221, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1217, NULL, NULL, '2017-11-06 16:10:18', '2017-11-06 16:10:18', NULL, NULL, NULL, NULL),
(1222, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1218, NULL, NULL, '2017-11-06 16:10:18', '2017-11-06 16:10:18', NULL, NULL, NULL, NULL),
(1223, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1219, NULL, NULL, '2017-11-06 16:10:19', '2017-11-06 16:10:19', NULL, NULL, NULL, NULL),
(1224, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1220, NULL, NULL, '2017-11-06 16:10:19', '2017-11-06 16:10:19', NULL, NULL, NULL, NULL),
(1225, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1221, NULL, NULL, '2017-11-06 16:10:19', '2017-11-06 16:10:19', NULL, NULL, NULL, NULL),
(1226, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1222, NULL, NULL, '2017-11-06 16:10:19', '2017-11-06 16:10:19', NULL, NULL, NULL, NULL),
(1227, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1223, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1228, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1224, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1229, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1225, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1230, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1226, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1231, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1227, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1232, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1228, NULL, NULL, '2017-11-06 16:10:20', '2017-11-06 16:10:20', NULL, NULL, NULL, NULL),
(1233, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1229, NULL, NULL, '2017-11-06 16:10:21', '2017-11-06 16:10:21', NULL, NULL, NULL, NULL),
(1234, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1230, NULL, NULL, '2017-11-06 16:10:21', '2017-11-06 16:10:21', NULL, NULL, NULL, NULL),
(1235, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1231, NULL, NULL, '2017-11-06 16:10:21', '2017-11-06 16:10:21', NULL, NULL, NULL, NULL),
(1236, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1232, NULL, NULL, '2017-11-06 16:10:21', '2017-11-06 16:10:21', NULL, NULL, NULL, NULL),
(1237, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1233, NULL, NULL, '2017-11-06 16:10:21', '2017-11-06 16:10:21', NULL, NULL, NULL, NULL),
(1238, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1234, NULL, NULL, '2017-11-06 16:10:22', '2017-11-06 16:10:22', NULL, NULL, NULL, NULL),
(1239, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1235, NULL, NULL, '2017-11-06 16:10:22', '2017-11-06 16:10:22', NULL, NULL, NULL, NULL);
INSERT INTO `action_logs` (`id`, `user_id`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`) VALUES
(1240, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1236, NULL, NULL, '2017-11-06 16:10:22', '2017-11-06 16:10:22', NULL, NULL, NULL, NULL),
(1241, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1237, NULL, NULL, '2017-11-06 16:10:22', '2017-11-06 16:10:22', NULL, NULL, NULL, NULL),
(1242, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1238, NULL, NULL, '2017-11-06 16:10:22', '2017-11-06 16:10:22', NULL, NULL, NULL, NULL),
(1243, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1239, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1244, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1240, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1245, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1241, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1246, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1242, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1247, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1243, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1248, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1244, NULL, NULL, '2017-11-06 16:10:23', '2017-11-06 16:10:23', NULL, NULL, NULL, NULL),
(1249, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1245, NULL, NULL, '2017-11-06 16:10:24', '2017-11-06 16:10:24', NULL, NULL, NULL, NULL),
(1250, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1246, NULL, NULL, '2017-11-06 16:10:24', '2017-11-06 16:10:24', NULL, NULL, NULL, NULL),
(1251, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1247, NULL, NULL, '2017-11-06 16:10:24', '2017-11-06 16:10:24', NULL, NULL, NULL, NULL),
(1252, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1248, NULL, NULL, '2017-11-06 16:10:24', '2017-11-06 16:10:24', NULL, NULL, NULL, NULL),
(1253, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1249, NULL, NULL, '2017-11-06 16:10:24', '2017-11-06 16:10:24', NULL, NULL, NULL, NULL),
(1254, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1250, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1255, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1251, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1256, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1252, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1257, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1253, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1258, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1254, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1259, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1255, NULL, NULL, '2017-11-06 16:10:25', '2017-11-06 16:10:25', NULL, NULL, NULL, NULL),
(1260, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1256, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1261, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1257, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1262, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1258, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1263, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1259, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1264, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1260, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1265, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1261, NULL, NULL, '2017-11-06 16:10:26', '2017-11-06 16:10:26', NULL, NULL, NULL, NULL),
(1266, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1262, NULL, NULL, '2017-11-06 16:10:27', '2017-11-06 16:10:27', NULL, NULL, NULL, NULL),
(1267, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1263, NULL, NULL, '2017-11-06 16:10:27', '2017-11-06 16:10:27', NULL, NULL, NULL, NULL),
(1268, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1264, NULL, NULL, '2017-11-06 16:10:27', '2017-11-06 16:10:27', NULL, NULL, NULL, NULL),
(1269, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1265, NULL, NULL, '2017-11-06 16:10:27', '2017-11-06 16:10:27', NULL, NULL, NULL, NULL),
(1270, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1266, NULL, NULL, '2017-11-06 16:10:28', '2017-11-06 16:10:28', NULL, NULL, NULL, NULL),
(1271, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1267, NULL, NULL, '2017-11-06 16:10:28', '2017-11-06 16:10:28', NULL, NULL, NULL, NULL),
(1272, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1268, NULL, NULL, '2017-11-06 16:10:28', '2017-11-06 16:10:28', NULL, NULL, NULL, NULL),
(1273, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1269, NULL, NULL, '2017-11-06 16:10:28', '2017-11-06 16:10:28', NULL, NULL, NULL, NULL),
(1274, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1270, NULL, NULL, '2017-11-06 16:10:28', '2017-11-06 16:10:28', NULL, NULL, NULL, NULL),
(1275, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1271, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1276, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1272, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1277, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1273, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1278, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1274, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1279, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1275, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1280, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1276, NULL, NULL, '2017-11-06 16:10:29', '2017-11-06 16:10:29', NULL, NULL, NULL, NULL),
(1281, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1277, NULL, NULL, '2017-11-06 16:10:30', '2017-11-06 16:10:30', NULL, NULL, NULL, NULL),
(1282, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1278, NULL, NULL, '2017-11-06 16:10:30', '2017-11-06 16:10:30', NULL, NULL, NULL, NULL),
(1283, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1279, NULL, NULL, '2017-11-06 16:10:30', '2017-11-06 16:10:30', NULL, NULL, NULL, NULL),
(1284, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1280, NULL, NULL, '2017-11-06 16:10:30', '2017-11-06 16:10:30', NULL, NULL, NULL, NULL),
(1285, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1281, NULL, NULL, '2017-11-06 16:10:30', '2017-11-06 16:10:30', NULL, NULL, NULL, NULL),
(1286, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1282, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1287, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1283, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1288, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1284, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1289, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1285, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1290, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1286, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1291, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1287, NULL, NULL, '2017-11-06 16:10:31', '2017-11-06 16:10:31', NULL, NULL, NULL, NULL),
(1292, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1288, NULL, NULL, '2017-11-06 16:10:32', '2017-11-06 16:10:32', NULL, NULL, NULL, NULL),
(1293, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1289, NULL, NULL, '2017-11-06 16:10:32', '2017-11-06 16:10:32', NULL, NULL, NULL, NULL),
(1294, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1290, NULL, NULL, '2017-11-06 16:10:32', '2017-11-06 16:10:32', NULL, NULL, NULL, NULL),
(1295, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1291, NULL, NULL, '2017-11-06 16:10:32', '2017-11-06 16:10:32', NULL, NULL, NULL, NULL),
(1296, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1292, NULL, NULL, '2017-11-06 16:10:32', '2017-11-06 16:10:32', NULL, NULL, NULL, NULL),
(1297, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1293, NULL, NULL, '2017-11-06 16:10:33', '2017-11-06 16:10:33', NULL, NULL, NULL, NULL),
(1298, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1294, NULL, NULL, '2017-11-06 16:10:33', '2017-11-06 16:10:33', NULL, NULL, NULL, NULL),
(1299, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1295, NULL, NULL, '2017-11-06 16:10:33', '2017-11-06 16:10:33', NULL, NULL, NULL, NULL),
(1300, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1296, NULL, NULL, '2017-11-06 16:10:33', '2017-11-06 16:10:33', NULL, NULL, NULL, NULL),
(1301, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1297, NULL, NULL, '2017-11-06 16:10:33', '2017-11-06 16:10:33', NULL, NULL, NULL, NULL),
(1302, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1298, NULL, NULL, '2017-11-06 16:10:34', '2017-11-06 16:10:34', NULL, NULL, NULL, NULL),
(1303, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1299, NULL, NULL, '2017-11-06 16:10:34', '2017-11-06 16:10:34', NULL, NULL, NULL, NULL),
(1304, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1300, NULL, NULL, '2017-11-06 16:10:34', '2017-11-06 16:10:34', NULL, NULL, NULL, NULL),
(1305, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1301, NULL, NULL, '2017-11-06 16:10:34', '2017-11-06 16:10:34', NULL, NULL, NULL, NULL),
(1306, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1302, NULL, NULL, '2017-11-06 16:10:34', '2017-11-06 16:10:34', NULL, NULL, NULL, NULL),
(1307, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1303, NULL, NULL, '2017-11-06 16:10:35', '2017-11-06 16:10:35', NULL, NULL, NULL, NULL),
(1308, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1304, NULL, NULL, '2017-11-06 16:10:35', '2017-11-06 16:10:35', NULL, NULL, NULL, NULL),
(1309, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1305, NULL, NULL, '2017-11-06 16:10:35', '2017-11-06 16:10:35', NULL, NULL, NULL, NULL),
(1310, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1306, NULL, NULL, '2017-11-06 16:10:35', '2017-11-06 16:10:35', NULL, NULL, NULL, NULL),
(1311, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1307, NULL, NULL, '2017-11-06 16:10:35', '2017-11-06 16:10:35', NULL, NULL, NULL, NULL),
(1312, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1308, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1313, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1309, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1314, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1310, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1315, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1311, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1316, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1312, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1317, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1313, NULL, NULL, '2017-11-06 16:10:36', '2017-11-06 16:10:36', NULL, NULL, NULL, NULL),
(1318, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1314, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1319, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1315, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1320, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1316, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1321, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1317, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1322, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1318, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1323, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1319, NULL, NULL, '2017-11-06 16:10:37', '2017-11-06 16:10:37', NULL, NULL, NULL, NULL),
(1324, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1320, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1325, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1321, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1326, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1322, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1327, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1323, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1328, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1324, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1329, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1325, NULL, NULL, '2017-11-06 16:10:38', '2017-11-06 16:10:38', NULL, NULL, NULL, NULL),
(1330, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1326, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1331, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1327, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1332, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1328, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1333, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1329, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1334, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1330, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1335, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1331, NULL, NULL, '2017-11-06 16:10:39', '2017-11-06 16:10:39', NULL, NULL, NULL, NULL),
(1336, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1332, NULL, NULL, '2017-11-06 16:10:40', '2017-11-06 16:10:40', NULL, NULL, NULL, NULL),
(1337, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1333, NULL, NULL, '2017-11-06 16:10:40', '2017-11-06 16:10:40', NULL, NULL, NULL, NULL),
(1338, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1334, NULL, NULL, '2017-11-06 16:10:40', '2017-11-06 16:10:40', NULL, NULL, NULL, NULL),
(1339, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1335, NULL, NULL, '2017-11-06 16:10:40', '2017-11-06 16:10:40', NULL, NULL, NULL, NULL),
(1340, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1336, NULL, NULL, '2017-11-06 16:10:41', '2017-11-06 16:10:41', NULL, NULL, NULL, NULL),
(1341, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1337, NULL, NULL, '2017-11-06 16:10:41', '2017-11-06 16:10:41', NULL, NULL, NULL, NULL),
(1342, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1338, NULL, NULL, '2017-11-06 16:10:41', '2017-11-06 16:10:41', NULL, NULL, NULL, NULL),
(1343, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1339, NULL, NULL, '2017-11-06 16:10:41', '2017-11-06 16:10:41', NULL, NULL, NULL, NULL),
(1344, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1340, NULL, NULL, '2017-11-06 16:10:41', '2017-11-06 16:10:41', NULL, NULL, NULL, NULL),
(1345, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1341, NULL, NULL, '2017-11-06 16:10:42', '2017-11-06 16:10:42', NULL, NULL, NULL, NULL),
(1346, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1342, NULL, NULL, '2017-11-06 16:10:42', '2017-11-06 16:10:42', NULL, NULL, NULL, NULL),
(1347, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1343, NULL, NULL, '2017-11-06 16:10:42', '2017-11-06 16:10:42', NULL, NULL, NULL, NULL),
(1348, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1344, NULL, NULL, '2017-11-06 16:10:42', '2017-11-06 16:10:42', NULL, NULL, NULL, NULL),
(1349, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1345, NULL, NULL, '2017-11-06 16:10:42', '2017-11-06 16:10:42', NULL, NULL, NULL, NULL),
(1350, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1346, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1351, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1347, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1352, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1348, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1353, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1349, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1354, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1350, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1355, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1351, NULL, NULL, '2017-11-06 16:10:43', '2017-11-06 16:10:43', NULL, NULL, NULL, NULL),
(1356, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1352, NULL, NULL, '2017-11-06 16:10:44', '2017-11-06 16:10:44', NULL, NULL, NULL, NULL),
(1357, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1353, NULL, NULL, '2017-11-06 16:10:44', '2017-11-06 16:10:44', NULL, NULL, NULL, NULL),
(1358, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1354, NULL, NULL, '2017-11-06 16:10:44', '2017-11-06 16:10:44', NULL, NULL, NULL, NULL),
(1359, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1355, NULL, NULL, '2017-11-06 16:10:44', '2017-11-06 16:10:44', NULL, NULL, NULL, NULL),
(1360, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1356, NULL, NULL, '2017-11-06 16:10:45', '2017-11-06 16:10:45', NULL, NULL, NULL, NULL),
(1361, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1357, NULL, NULL, '2017-11-06 16:10:45', '2017-11-06 16:10:45', NULL, NULL, NULL, NULL),
(1362, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1358, NULL, NULL, '2017-11-06 16:10:45', '2017-11-06 16:10:45', NULL, NULL, NULL, NULL),
(1363, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1359, NULL, NULL, '2017-11-06 16:10:45', '2017-11-06 16:10:45', NULL, NULL, NULL, NULL),
(1364, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1360, NULL, NULL, '2017-11-06 16:10:45', '2017-11-06 16:10:45', NULL, NULL, NULL, NULL),
(1365, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1361, NULL, NULL, '2017-11-06 16:10:46', '2017-11-06 16:10:46', NULL, NULL, NULL, NULL),
(1366, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1362, NULL, NULL, '2017-11-06 16:10:46', '2017-11-06 16:10:46', NULL, NULL, NULL, NULL),
(1367, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1363, NULL, NULL, '2017-11-06 16:10:46', '2017-11-06 16:10:46', NULL, NULL, NULL, NULL),
(1368, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1364, NULL, NULL, '2017-11-06 16:10:46', '2017-11-06 16:10:46', NULL, NULL, NULL, NULL),
(1369, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1365, NULL, NULL, '2017-11-06 16:10:46', '2017-11-06 16:10:46', NULL, NULL, NULL, NULL),
(1370, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1366, NULL, NULL, '2017-11-06 16:10:47', '2017-11-06 16:10:47', NULL, NULL, NULL, NULL),
(1371, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1367, NULL, NULL, '2017-11-06 16:10:47', '2017-11-06 16:10:47', NULL, NULL, NULL, NULL),
(1372, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1368, NULL, NULL, '2017-11-06 16:10:47', '2017-11-06 16:10:47', NULL, NULL, NULL, NULL),
(1373, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1369, NULL, NULL, '2017-11-06 16:10:47', '2017-11-06 16:10:47', NULL, NULL, NULL, NULL),
(1374, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1370, NULL, NULL, '2017-11-06 16:10:47', '2017-11-06 16:10:47', NULL, NULL, NULL, NULL),
(1375, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1371, NULL, NULL, '2017-11-06 16:10:48', '2017-11-06 16:10:48', NULL, NULL, NULL, NULL),
(1376, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1372, NULL, NULL, '2017-11-06 16:10:48', '2017-11-06 16:10:48', NULL, NULL, NULL, NULL),
(1377, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1373, NULL, NULL, '2017-11-06 16:10:48', '2017-11-06 16:10:48', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physical` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `warranty_months` int(11) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  `rtd_location_id` int(11) DEFAULT NULL,
  `_snipeit_mac_address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_checkout` datetime DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(1, NULL, '381115147', 1, '4d712ccd-1695-35e9-818b-825d66db865f', '2017-04-06', '2710.02', '35393840', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:24', '2017-11-06 16:06:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '522683731', 1, 'a085c4d1-8a97-39e8-b508-e0ba50433ee1', '2017-08-27', '1451.60', '39228859', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:24', '2017-11-06 16:06:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '127670111', 1, '85a016a6-7028-3111-9429-3864a8ed3428', '2017-10-30', '1690.77', '4106778', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:25', '2017-11-06 16:06:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '350037288', 1, 'ce037489-a59f-3018-a668-2a97c764bab9', '2017-03-13', '1034.37', '47262235', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:25', '2017-11-06 16:06:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '895618055', 1, '487f9502-0a2d-35ff-901e-4895f19d269a', '2017-02-27', '456.76', '29573166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:25', '2017-11-06 16:06:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '415752297', 1, '3d6cc9e4-819e-3044-98d7-0646c1f6b937', '2017-05-04', '2093.23', '36655301', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:25', '2017-11-06 16:06:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '382861055', 1, '31274f6a-6bfe-3ab5-8460-72bdbbb9d7d2', '2017-04-11', '1648.21', '31025237', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:25', '2017-11-06 16:06:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '445320791', 1, 'fa8c92e9-aff3-3950-a429-0957692a7b14', '2017-06-02', '1883.01', '18654406', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, '1251188779', 1, '2cffe2e3-5a07-33d9-b1d8-363dfb61f2f7', '2017-10-18', '695.45', '12630849', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, '622087281', 1, 'a9b9c0a3-7a4a-3b9c-89bb-6a36972ea44b', '2017-03-29', '2359.53', '7582763', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, '1441122287', 1, 'd6bd51d9-cfbd-3f0b-83fe-e96aa4eb7927', '2017-06-30', '911.48', '25743042', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, '425063007', 1, '6af86eac-aac0-3a71-a5ad-f0dc6f0ecf6b', '2016-12-15', '1763.91', '6394649', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, '1459885380', 1, 'e7d88369-1aea-3adb-9f38-e2491dd660b7', '2017-01-14', '791.87', '26927078', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:26', '2017-11-06 16:06:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, '59835738', 1, '908eecc6-3122-3297-ac58-04d8e9d7f38a', '2017-04-04', '2556.64', '30919964', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, '689101416', 1, '7ef6c7a9-9c59-3395-8a9f-6588b8ad249c', '2017-10-13', '2305.26', '49289335', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, '999645634', 1, 'd93f4f9a-90dc-3033-af8e-740a7b470a90', '2017-04-23', '2427.64', '48663020', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, '519389711', 1, '929daab9-f3bc-3dbd-aaaa-e7a765f8a296', '2017-10-15', '1678.89', '42970866', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, '1474586509', 1, '7f64343a-5c66-38ae-a709-2ed8aec0e0b8', '2017-05-13', '1733.49', '34841347', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, '319575443', 1, 'fd32a6ab-9f6e-3390-8a5e-54aa542043cf', '2017-02-23', '2513.51', '8503896', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:27', '2017-11-06 16:06:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, '1449062390', 1, '58e1aa36-03c2-3ea6-8d2e-16c98d46d5f2', '2017-06-12', '900.09', '34787608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:28', '2017-11-06 16:06:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, '102710151', 1, '809bb665-641d-330b-aedf-e24546ae7cbc', '2017-10-21', '1374.83', '42592695', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:28', '2017-11-06 16:06:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, '1011958528', 1, 'fe89e708-8b9e-3ca4-be9d-07ef03438b63', '2017-08-18', '754.38', '48423781', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:28', '2017-11-06 16:06:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, '809010257', 1, '832cb8d0-1b21-3305-9989-077309481418', '2017-10-09', '1190.03', '46555722', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:28', '2017-11-06 16:06:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, '1474930680', 1, 'c1a9e3fc-2a50-33bd-8799-5d42c78768d5', '2017-02-26', '1093.64', '40177142', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:28', '2017-11-06 16:06:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, '279081975', 1, 'a47aa493-4fee-316e-8982-47e5d4e0890a', '2017-04-02', '673.51', '24900982', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:29', '2017-11-06 16:06:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, '1044383864', 1, 'fadc85c8-67f6-3d14-905c-d3bb83f67e81', '2017-02-05', '2350.00', '29985597', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:29', '2017-11-06 16:06:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, '845797903', 1, '1d11453e-4c1d-3b89-9442-f68660a5158a', '2017-03-09', '1746.03', '12241231', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:29', '2017-11-06 16:06:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, '284537190', 1, '5a6470be-29fc-3bf3-aeff-b9e2f38832d0', '2017-02-02', '699.63', '37468768', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:29', '2017-11-06 16:06:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, '736701506', 1, 'e2976431-0c35-364b-89c2-f32ae4ea7328', '2017-04-28', '670.59', '19216306', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:30', '2017-11-06 16:06:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, '126989850', 1, 'b1e0938c-a5a4-3a17-9f5d-8cb0b277dcc8', '2017-08-02', '2038.72', '24274307', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:30', '2017-11-06 16:06:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, '386101462', 1, '363e190c-1c16-3af1-baa3-60b7829a7f69', '2017-09-29', '1092.04', '38216823', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:30', '2017-11-06 16:06:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, '1436773572', 1, '104002a9-76a8-33d8-8b6f-69b7fda8f7cd', '2016-12-30', '843.05', '46020029', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:30', '2017-11-06 16:06:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, '980452358', 1, '897480ea-cdde-35a5-855c-70e53fd3219d', '2017-07-25', '2958.09', '41414879', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:30', '2017-11-06 16:06:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, '408465603', 1, '722ed64b-4faf-3de5-9d43-f0ab3fa78731', '2017-05-03', '619.25', '34299971', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:31', '2017-11-06 16:06:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, '937023018', 1, '879fc07f-2f54-3f7b-a17a-002d2ed7e2ef', '2017-09-24', '915.54', '37492859', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:31', '2017-11-06 16:06:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, '597077788', 1, '6c5eed1b-384e-3bdb-9f0e-3cf23461c147', '2016-12-10', '2569.45', '38377810', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:31', '2017-11-06 16:06:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, '1476804109', 1, '5c8dd890-8b4d-3b27-89d7-13e269e02554', '2017-03-11', '2002.12', '26481668', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:31', '2017-11-06 16:06:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, '1179524193', 1, '0fe50285-82a6-3ed0-acf0-12675c740fbf', '2017-08-29', '867.40', '1950203', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:31', '2017-11-06 16:06:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, '1426384857', 1, '8623bbd6-14ba-3a8d-9b3e-db35c897a57b', '2017-10-01', '2671.50', '15721218', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:32', '2017-11-06 16:06:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, '375328374', 1, 'eb92b89d-6e03-35ce-b04e-c9b69ae8cccb', '2017-10-31', '1854.96', '1114325', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:32', '2017-11-06 16:06:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, '999557120', 1, '068e5abe-7b84-346b-b603-5dcdf61841a9', '2017-03-04', '1997.89', '36341700', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:32', '2017-11-06 16:06:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, '801551301', 1, '6447ff9f-6d5b-3938-8f70-43bbc9c8bce3', '2017-10-28', '1092.31', '25270015', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:32', '2017-11-06 16:06:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, '1436977070', 1, 'c3126c0f-1176-331f-a842-37a0b7d9ea84', '2016-12-27', '1703.99', '14155733', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:33', '2017-11-06 16:06:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, '1359198109', 1, '45d1a80b-41ed-3d8f-a327-8031f518ffb2', '2017-04-11', '905.76', '32926282', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:33', '2017-11-06 16:06:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, '991700960', 1, 'd4ab4058-f62f-36a1-9370-f659937628f7', '2017-02-06', '2236.16', '39530146', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:33', '2017-11-06 16:06:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, '335215726', 1, 'c03a12fe-1503-3c9f-bb74-99d78d2d017c', '2017-01-03', '2778.00', '38877384', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:33', '2017-11-06 16:06:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, '810673210', 1, '6381b76d-1969-3a12-ba9c-043d83c86548', '2017-02-01', '1973.36', '43976210', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:33', '2017-11-06 16:06:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, '1200868865', 1, 'bafeb818-f244-3e5a-afd6-093d7417a520', '2017-07-28', '2254.93', '26302232', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:34', '2017-11-06 16:06:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, '614628781', 1, '17f6070d-e699-3590-b773-d8c3160ef30d', '2017-08-31', '2095.70', '30308770', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:34', '2017-11-06 16:06:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, '1010729588', 1, 'fabe487c-3c3a-3f63-baaf-2a4c59ca1187', '2017-04-26', '1452.87', '18672652', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:34', '2017-11-06 16:06:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, '1259739512', 1, 'e8c7204e-1ee9-341c-aa26-90ebc51c0782', '2017-10-31', '1208.05', '19012194', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:35', '2017-11-06 16:06:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, '653417505', 1, '7cc821da-d1cc-3935-9bb6-569c7194055f', '2017-03-20', '1171.26', '31689276', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:35', '2017-11-06 16:06:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, '758715637', 1, '61c95e8f-6cb2-3a2c-9168-9d35f734e53b', '2017-01-17', '1397.10', '8706269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:35', '2017-11-06 16:06:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, '635661661', 1, 'e1f6f6cd-9fac-3a0e-b2f7-6c34132e7f76', '2016-11-19', '2468.84', '12426554', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:35', '2017-11-06 16:06:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, '269988726', 1, '3349a006-1cde-386f-a282-4539ac669962', '2017-09-01', '2539.94', '35618895', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, '1508024115', 1, '922e46a8-cc21-377f-8669-d98d1d6bd6a9', '2017-09-11', '1944.37', '47505016', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, '1419716791', 1, '89a13794-16c3-37f4-8824-6d148bcb2370', '2017-01-30', '1773.89', '8359912', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, '131960467', 1, '31afc0a9-21d2-30b7-83e9-b15db44cb181', '2017-02-16', '973.52', '12144176', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, '630312197', 1, '2b66d97b-53a0-3543-8f9f-60cd08cef48b', '2017-04-16', '1984.36', '7930716', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, '733800850', 1, 'a0ea8e4e-64af-3d52-9e53-faf2af24a956', '2017-07-05', '1021.03', '48874990', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:36', '2017-11-06 16:06:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, '386194637', 1, '767240e2-0d85-35ae-ac43-133772def600', '2017-08-16', '870.86', '31358256', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, '1040740061', 1, '18ada4de-4ce0-3970-b97d-b18069399681', '2017-07-19', '1017.91', '43464773', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, '780354461', 1, '8aff3fb3-9015-3e48-b0a2-0fa4284faeea', '2017-02-28', '2959.01', '22566119', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, '1408115807', 1, '17f71425-fe41-36f3-8893-5d181bbdc127', '2016-12-13', '1655.67', '12231951', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, '974478945', 1, '4b6bfa1d-690d-3885-b977-d0152d948c57', '2017-07-27', '388.63', '26999011', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, '1292891549', 1, '0335fa19-7741-3700-b895-d5550286e76a', '2016-11-22', '521.96', '5079613', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:37', '2017-11-06 16:06:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, '1191757505', 1, 'd558c850-c6e7-389a-9127-4d88ebe045e0', '2017-04-18', '1045.58', '22475944', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:38', '2017-11-06 16:06:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, '1352191662', 1, 'b82e5742-1065-375c-b354-faeb191b28ed', '2017-08-19', '2359.86', '17315482', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:38', '2017-11-06 16:06:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, '1201020545', 1, 'eb8a0d94-ec28-312a-91e1-1df1a366e122', '2016-12-29', '1124.08', '38482740', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:38', '2017-11-06 16:06:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, '859526229', 1, '8190a1be-4ede-334f-b567-dd8f6ce64817', '2016-12-22', '914.76', '37442410', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:38', '2017-11-06 16:06:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, '1219292631', 1, 'ef80ce1b-6540-358a-acfd-c74d6ee638d4', '2017-07-09', '2388.80', '32262288', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:38', '2017-11-06 16:06:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, '934185072', 1, '3e7f9aff-9784-39f3-b757-b8be06a9569f', '2016-11-26', '2486.32', '21062299', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:39', '2017-11-06 16:06:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, '152127286', 1, '3e6cab84-0dae-3255-8061-808b9c887e95', '2017-02-10', '2034.47', '48194038', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:39', '2017-11-06 16:06:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, '827987897', 1, '49311e26-115b-3168-9856-f44dce2bb555', '2016-12-23', '883.68', '45556187', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:39', '2017-11-06 16:06:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, '578111545', 1, '8cad0849-80b6-3374-9a46-8f9dd7f4f2bb', '2016-12-01', '1628.20', '30153508', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:39', '2017-11-06 16:06:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, '291134302', 1, 'db130e0e-e2c5-3d8f-9d55-e22292f1d7e8', '2017-08-08', '992.31', '28996166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:39', '2017-11-06 16:06:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, '601272133', 1, 'ad54fc7d-4a53-327f-8e0b-d22c1928e35a', '2017-03-31', '672.47', '3059001', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:40', '2017-11-06 16:06:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, '709033469', 1, '17649cd2-030b-3546-aaad-22cfdf735a01', '2017-10-23', '1090.33', '18204365', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:40', '2017-11-06 16:06:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, '279321075', 1, 'e37f46b2-63ca-3f14-b6ba-9636bea65bf8', '2017-10-30', '716.24', '37203096', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:40', '2017-11-06 16:06:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, '626431772', 1, 'a760c3f6-b218-343f-b52f-344594e8f417', '2016-11-12', '741.55', '29240062', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:40', '2017-11-06 16:06:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, '795117201', 1, 'fc170547-5beb-34b9-bed0-51fd840cb1f9', '2017-09-24', '1286.30', '20868902', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:40', '2017-11-06 16:06:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, '192607206', 1, '7f174d20-1c45-3a10-a315-b325b63763ee', '2017-03-21', '997.06', '28819356', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:41', '2017-11-06 16:06:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, '126506464', 1, 'c67ee7f7-e787-30cd-898d-fb4329e303d0', '2017-06-09', '726.20', '4774115', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:41', '2017-11-06 16:06:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, '663293625', 1, '349d5aea-eedd-358f-9998-33a8d4034f3d', '2017-06-04', '2153.00', '39281650', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:41', '2017-11-06 16:06:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, '1436676543', 1, '150d0ec9-735f-3d89-b6d3-2acb8a7573e2', '2017-08-10', '942.64', '21307028', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:41', '2017-11-06 16:06:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, '583167079', 1, 'caad91d2-e89c-30ce-9655-2011efa4cfc3', '2017-11-01', '1645.40', '8274599', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:41', '2017-11-06 16:06:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, '199993974', 1, '04f70a04-04ec-3104-a743-89622b8187be', '2016-11-14', '1435.43', '21166167', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:42', '2017-11-06 16:06:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, '1257268388', 1, '466c99d4-d8a6-3475-9b23-d5d0d2aaffc1', '2017-01-23', '2157.34', '1532970', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:42', '2017-11-06 16:06:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, '1063563803', 1, 'baadc404-d797-3fb1-b313-b8d8c6b22bab', '2017-01-25', '2290.03', '2001385', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:42', '2017-11-06 16:06:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, '679255488', 1, 'dfb4a483-9f69-3e77-b92b-c6be78829154', '2017-10-18', '1856.72', '14017614', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:42', '2017-11-06 16:06:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, '1180885332', 1, '8b705aa0-12d9-3815-8e46-37af11560b06', '2017-04-03', '2332.49', '19269162', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:42', '2017-11-06 16:06:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, '732359784', 1, 'c565a9a2-45a0-3759-937c-107d0a18ab4f', '2017-07-21', '2517.74', '42209364', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:43', '2017-11-06 16:06:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, '1012066881', 1, 'e0cc8b10-f5e0-32fe-847a-850b0161cc76', '2017-05-28', '2083.69', '26754417', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:43', '2017-11-06 16:06:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, '1306813266', 1, '15248f5c-055d-3b02-a085-35072b6e8bc4', '2016-12-09', '2717.19', '13411375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:43', '2017-11-06 16:06:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, '820864883', 1, 'e031035c-b25e-3cb0-b20c-75fcdd29cffe', '2017-02-07', '2048.89', '34677785', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:43', '2017-11-06 16:06:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, '374811113', 1, 'e65a5b09-4730-3105-b776-2bfcb4a4eeb3', '2017-06-23', '1074.61', '23302841', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:43', '2017-11-06 16:06:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, '1465116776', 1, '9e5477b6-4f23-37f1-8bba-158f0819c10b', '2016-12-25', '1704.88', '41746845', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:44', '2017-11-06 16:06:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, '357494856', 1, '7912a93b-b936-37b5-ba03-70af0136ca4f', '2017-04-21', '2681.26', '25861379', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:44', '2017-11-06 16:06:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, '1061538270', 1, 'fed58318-d979-30a4-9ad1-17ecf9581a42', '2017-08-01', '821.21', '44790606', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:44', '2017-11-06 16:06:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, '857973570', 1, 'd00d2f49-60a0-3c81-a2d6-a04ad2c7e7c2', '2017-06-20', '757.08', '36452254', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:44', '2017-11-06 16:06:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, '273059975', 1, '02de505c-e325-3451-808b-7bd32b06717b', '2017-05-31', '668.97', '7876511', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:44', '2017-11-06 16:06:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, '1083160894', 1, '3658768b-f8d3-3aa5-bdc9-c6826414aeb7', '2016-11-11', '2467.66', '48152388', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:45', '2017-11-06 16:06:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, '84693040', 1, 'dbd5e890-31bb-3f76-9073-31ae81c910c0', '2017-08-10', '1500.12', '8344478', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:45', '2017-11-06 16:06:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, '484710923', 1, 'fa7d89ea-1f43-3535-8077-63d7f5cb23f3', '2017-07-09', '2696.16', '17763761', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:45', '2017-11-06 16:06:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, '1320481411', 1, 'd587f6b8-6039-398a-8f59-126f4542a58f', '2016-12-18', '1173.71', '49567340', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:45', '2017-11-06 16:06:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, '312323941', 1, 'b5c5885b-e61f-3cee-9947-3056d8cd0c09', '2017-05-18', '1561.23', '18068156', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:46', '2017-11-06 16:06:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, '1507832536', 1, '6e96d001-d7db-3e04-820b-4626fa2c706a', '2017-02-02', '2809.95', '2757508', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:46', '2017-11-06 16:06:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, '1266729891', 1, '17d6742a-d1a7-307c-a76a-64e3c9cd6990', '2017-01-03', '1964.28', '27494371', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:46', '2017-11-06 16:06:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, '1046286897', 1, 'd62887ef-5eeb-3716-90da-aed0e30395b6', '2016-12-02', '2107.76', '44546354', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:46', '2017-11-06 16:06:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, '179049602', 1, 'd49c89c0-b928-3b9e-965a-dd7f4f00e47d', '2017-01-24', '2870.34', '2485837', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:47', '2017-11-06 16:06:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, '696530314', 1, '0e7b8885-f52c-3754-bda9-bbf1c8057cc1', '2017-03-06', '1951.60', '26412467', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:47', '2017-11-06 16:06:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, '197397398', 1, '79bf68d3-2cfa-374c-987c-9b1327056d6c', '2017-08-22', '1779.31', '24225902', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:47', '2017-11-06 16:06:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, '208995187', 1, '34f5516d-caf5-3b67-8dba-c62262795067', '2016-11-13', '1336.28', '36903488', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:47', '2017-11-06 16:06:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, '353288376', 1, '59046979-b5e3-3089-a587-5c2440f595c1', '2017-04-06', '2336.78', '44058043', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:47', '2017-11-06 16:06:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, '205090078', 1, '574ec99d-de28-3d6b-bf57-1a0d32bf3a95', '2016-11-11', '1670.51', '10553039', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, '382884126', 1, '33d15c27-25b6-359a-8006-f75dd5328e8c', '2017-01-23', '1928.52', '2463249', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, '876565362', 1, '9f9dcde3-8940-3d88-9d04-987b5d4effcc', '2017-01-11', '365.62', '24075131', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, '1146028119', 1, '59b8f06b-f0e7-3bae-ac82-5d8ed2ea2166', '2017-07-18', '337.53', '27073953', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, '610658603', 1, '2dc8b3bd-11b1-3c4f-9f3b-e508ee9d44ad', '2017-07-28', '2241.88', '16755465', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, '1484863759', 1, 'a9606670-75f6-3c18-b95e-292823edbaa9', '2017-07-06', '2754.02', '7920986', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:48', '2017-11-06 16:06:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, '559687189', 1, '31a6526c-b22f-3825-b894-d28520e7dadd', '2017-03-04', '2229.81', '34395856', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:49', '2017-11-06 16:06:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, '426779375', 1, '7db1d834-0d16-352e-bc01-4ea3671fddc3', '2017-10-07', '858.56', '47276390', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:49', '2017-11-06 16:06:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, '947199480', 1, '1b200e51-6545-39de-b5f9-535be7f8f252', '2017-03-31', '790.94', '13095475', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:49', '2017-11-06 16:06:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, '228671260', 1, 'd26b0f06-89d8-371b-85aa-aa09c0c49750', '2017-05-30', '2006.13', '12412699', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:49', '2017-11-06 16:06:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, '339245562', 1, '5fbdec69-7d77-3515-ae58-5c3fce18f36f', '2017-05-07', '1634.76', '45353855', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:49', '2017-11-06 16:06:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, '1309360847', 1, 'ff9ede11-11ea-3aad-853e-7b957174eb06', '2017-01-03', '2965.33', '21440286', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, '34168524', 1, '9fdf18aa-b4b0-3a42-90eb-010ff2e9054a', '2017-02-07', '1341.06', '17736183', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, '1202714812', 1, '9340ca44-0be5-322a-a988-4679a0a79480', '2017-02-06', '1708.81', '8657870', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, '381047529', 1, '819366bb-de00-35ba-af44-af6383e9e221', '2017-06-06', '2998.31', '42630975', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, '1334985319', 1, 'fbe14c48-ec7e-34b7-8a00-a01dbb53dd28', '2017-01-07', '1707.17', '8910649', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, '305865389', 1, '6fd9dd06-7715-3016-ba67-c11b6402f314', '2017-10-01', '1977.39', '46596169', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:50', '2017-11-06 16:06:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, NULL, '743927486', 1, 'f9021a60-935a-390e-9226-cb4905fccfd3', '2016-11-20', '870.52', '27673608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:51', '2017-11-06 16:06:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, NULL, '306660964', 1, '27c949fb-768b-3ba0-ad49-55ec5f0c6e29', '2017-05-02', '1603.45', '8072939', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:51', '2017-11-06 16:06:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, NULL, '955147835', 1, 'f31f55a1-9acc-3ac2-90f8-f0a725be6cc8', '2017-04-19', '1539.76', '7527243', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:51', '2017-11-06 16:06:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, '1131618187', 1, 'f102dde9-a757-31d6-8f87-a114eefed43e', '2017-06-20', '484.17', '37270794', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:51', '2017-11-06 16:06:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, '324419271', 1, 'ac114472-accc-3e76-a458-e9baf7c2d1ca', '2017-03-13', '2734.66', '6534723', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:51', '2017-11-06 16:06:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, NULL, '1423628140', 1, 'c9928222-a12b-35f7-82c5-e2365c942708', '2017-08-29', '1166.46', '16974856', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:52', '2017-11-06 16:06:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, NULL, '125751591', 1, 'c16a1b79-df1b-331c-a175-5dba7b301a6c', '2017-04-15', '536.88', '18718534', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:52', '2017-11-06 16:06:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, NULL, '327099183', 1, '47c3c1fe-fa5e-38da-94dc-f5acc464acb1', '2017-09-15', '466.26', '43409224', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:52', '2017-11-06 16:06:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, NULL, '833418626', 1, 'cc86f1f6-ef4b-3016-bd89-f013494510b4', '2016-12-22', '2307.94', '32534817', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:52', '2017-11-06 16:06:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, NULL, '600733071', 1, 'fbcdd994-cb37-34a7-9f2c-84cc62ea509c', '2017-05-01', '1895.33', '33887298', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:52', '2017-11-06 16:06:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, NULL, '130341638', 1, '32b52db9-25cc-3bb2-80ba-2eb44ae2995f', '2017-10-01', '1804.97', '47520416', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:53', '2017-11-06 16:06:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, NULL, '1444493490', 1, '9992f2ed-dba8-3137-a512-123f05e013e5', '2017-09-26', '2850.82', '16629640', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:53', '2017-11-06 16:06:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, NULL, '1263614028', 1, '801b0c21-36ea-33cc-9e31-20d61396c594', '2017-02-05', '1556.07', '47496780', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:53', '2017-11-06 16:06:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, NULL, '373155658', 1, 'd588f7e8-4a96-39af-bb19-daa74a174f34', '2017-09-11', '447.09', '15457177', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:53', '2017-11-06 16:06:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, NULL, '1045402263', 1, '290e57a7-e131-3619-9ff7-e796396763a9', '2016-12-17', '1644.03', '23303354', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:53', '2017-11-06 16:06:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, NULL, '334684735', 1, 'd0db261c-138f-31f8-8dfc-516211b951e7', '2017-07-21', '1565.25', '43728337', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:54', '2017-11-06 16:06:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, NULL, '512553719', 1, '493aaad5-0090-3db8-aef4-84fac04f8f8f', '2017-03-24', '1477.13', '45473443', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:54', '2017-11-06 16:06:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, NULL, '559587959', 1, '5bd4ce86-b66f-398d-8723-7fdf944b64ee', '2017-02-12', '505.75', '13660230', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:54', '2017-11-06 16:06:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, NULL, '1067976089', 1, 'b9a3d2dc-e77d-3458-bdd3-590c294c0518', '2017-08-11', '1001.17', '19057737', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:54', '2017-11-06 16:06:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, '215042738', 1, '96d61e18-053f-3012-a463-fcb8dcb5952a', '2017-09-01', '1784.52', '13811553', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, NULL, '849983715', 1, '707e0e5a-b8c4-3e4b-81df-c65085cff36c', '2017-02-11', '601.23', '1553795', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, '1189669610', 1, '6a3a469f-28da-329e-87a1-911adc7cc187', '2017-01-21', '2759.37', '22676080', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, NULL, '172710649', 1, 'd3ad780c-0c1e-3737-9e45-54cde851357c', '2017-05-16', '1023.52', '1718951', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, '602332220', 1, '08af798b-31b3-31c6-b21a-9199d7909ec3', '2017-05-18', '961.29', '25165104', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, '1232136505', 1, 'd177641e-b829-38de-a003-118514192472', '2017-09-24', '999.13', '44655848', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:55', '2017-11-06 16:06:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, '248630284', 1, '542d0450-1ae1-3eca-90f2-d8eada3e49ce', '2017-03-15', '1530.68', '14988633', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, '147944544', 1, '00b03a8e-9e43-3dcb-b0bb-8240a96ae9ff', '2017-07-27', '1129.76', '40415262', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, '151755408', 1, '49c0c7b3-db53-32fc-bf6a-3e18d3c56903', '2016-12-02', '2547.57', '24784039', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, NULL, '1441778710', 1, '36c5b536-c708-310d-9a76-cd8264ea6db1', '2017-08-07', '370.01', '31308677', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, '1453206723', 1, '665b8b20-d37f-326d-8100-d5a72a0ea4e9', '2017-08-17', '505.03', '46209836', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, NULL, '571849798', 1, '2a6f64c3-fdef-377c-8536-e95927db350c', '2017-03-19', '1671.91', '40170505', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:56', '2017-11-06 16:06:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, NULL, '227534225', 1, '7dd16c6b-de42-3022-9bfd-c0e210dc5a4e', '2017-03-21', '2037.91', '25424552', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:57', '2017-11-06 16:06:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, NULL, '317680240', 1, 'ba9a8fac-75ed-3cb9-a5b1-e21b8fd8bb45', '2017-01-20', '2598.36', '20523063', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:57', '2017-11-06 16:06:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, NULL, '1165007335', 1, 'ff82ac00-6910-3fad-8348-85ef697b4550', '2017-01-05', '1737.60', '25183842', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:57', '2017-11-06 16:06:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, NULL, '1410361781', 1, '6c9dac32-e763-39ae-86b1-032cce81bbe7', '2016-12-14', '981.62', '40485136', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:57', '2017-11-06 16:06:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, NULL, '1199705112', 1, '400dc748-f049-3734-8443-056ccf9c36f8', '2016-11-11', '1893.51', '43742471', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:57', '2017-11-06 16:06:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, NULL, '1368522440', 1, 'eef20f47-5905-3057-b483-67448e605c62', '2017-04-03', '2305.91', '49456179', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:58', '2017-11-06 16:06:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, NULL, '216683607', 1, 'd9e29f64-8670-3654-817e-06447200d907', '2017-01-17', '2451.73', '7478905', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:58', '2017-11-06 16:06:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, NULL, '64457832', 1, '21320217-4cc1-3da8-b46b-92d2a00e6577', '2016-12-24', '1406.40', '37511048', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:58', '2017-11-06 16:06:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, NULL, '723171300', 1, 'd47f45da-848d-3a03-924a-46d2e6f8400e', '2017-05-29', '2098.52', '18849471', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:58', '2017-11-06 16:06:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, NULL, '394016808', 1, '41910744-b9cf-34e2-bd3f-e9aac0d6c750', '2017-01-18', '2196.61', '24579152', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:59', '2017-11-06 16:06:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, NULL, '1033776940', 1, '1b6daea4-a1b5-32de-bae4-48d2f5646ca6', '2017-05-03', '2283.05', '31877169', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:59', '2017-11-06 16:06:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, NULL, '408177044', 1, '4994591b-ac55-3f25-b10f-6966a43792eb', '2017-04-25', '2229.65', '45957031', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:59', '2017-11-06 16:06:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, NULL, '1115395460', 1, '15e1dde3-6939-386a-bc5e-0dbe7ab55af7', '2016-12-28', '342.95', '22408119', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:59', '2017-11-06 16:06:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, NULL, '1348231545', 1, '25a6fd4b-ffd3-343b-88f9-782fa6820dbd', '2017-03-16', '2107.45', '20849217', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:06:59', '2017-11-06 16:06:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, NULL, '1226787949', 1, '9a73ee32-43a0-30b5-8874-052c8207e5fb', '2017-07-19', '2589.19', '11316044', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:00', '2017-11-06 16:07:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, NULL, '996237892', 1, '0f0b6e1f-8caf-3411-af1b-d5e62c1db114', '2017-08-30', '2919.19', '6809405', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:00', '2017-11-06 16:07:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, NULL, '419383251', 1, 'd981cf69-f0fe-3545-a52c-29d25eaf5eda', '2017-08-05', '2072.61', '33391596', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:00', '2017-11-06 16:07:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, NULL, '464777603', 1, 'b413efad-1e79-34ab-a802-13b15303c8ec', '2017-03-13', '558.51', '40691665', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:00', '2017-11-06 16:07:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, NULL, '26363131', 1, '5352e82b-fd4b-3da5-9432-a6feca457307', '2017-05-30', '1924.88', '20542131', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:00', '2017-11-06 16:07:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(182, NULL, '374423025', 1, '370ab40c-cfdb-3e35-ac47-ea3d96179da4', '2017-11-01', '1460.28', '39917767', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, NULL, '84609636', 1, '6ec48c9b-7b38-3d35-82af-1038ee39eb5e', '2016-11-24', '622.64', '9020018', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, NULL, '342576881', 1, 'c15abcfc-eea6-3e52-9a80-5af3c3fe7d31', '2017-08-22', '1197.08', '28593330', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, NULL, '978516235', 1, '42e80d5c-4955-3ac3-9003-df84efafa7b2', '2017-08-03', '716.11', '13878631', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, NULL, '244899707', 1, '7da4bd70-4ad5-3e3f-82e8-a97360cd9357', '2017-01-19', '497.00', '25092167', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, NULL, '447449041', 1, 'c07c11e1-bc98-3d05-b978-8339b2ceaf39', '2017-01-07', '1521.69', '40647112', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:01', '2017-11-06 16:07:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, NULL, '1323714444', 1, 'a292e15b-5967-32f5-b4bc-ecdbdbaf5503', '2017-10-11', '2911.70', '21369157', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:02', '2017-11-06 16:07:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, NULL, '1086104929', 1, '53ec6e44-e4f4-3f6f-b404-1077f446e331', '2017-05-13', '1268.39', '20762983', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:02', '2017-11-06 16:07:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, NULL, '262367711', 1, '768a1ce7-db22-3ef9-8182-254cb62c3247', '2017-03-21', '431.90', '22996587', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:02', '2017-11-06 16:07:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, NULL, '483031398', 1, 'a14e9012-4b26-3788-8539-a401a305890b', '2016-12-23', '1810.51', '42317806', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:02', '2017-11-06 16:07:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, NULL, '640219360', 1, '71775b45-2e3d-381f-b3fd-9d73f3bae616', '2016-11-25', '2691.12', '27040958', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:02', '2017-11-06 16:07:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, NULL, '940277908', 1, 'ade76711-54f6-3286-be49-d65484e19264', '2017-08-27', '2965.54', '47048371', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, NULL, '882872203', 1, '35b8610c-8d85-342d-91ae-cbb66b894da2', '2017-02-17', '2310.53', '48868732', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, NULL, '324310462', 1, '8a28319a-56e2-3f04-9aca-53af81195580', '2017-08-08', '776.99', '21652918', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, NULL, '697656955', 1, 'd9ad0288-1e6e-3597-a0d0-dbaf37b77e4f', '2017-06-26', '446.08', '6723355', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, NULL, '1156127311', 1, '917b5c69-f106-39a2-a090-3f6ca24a017f', '2017-07-14', '763.87', '23181555', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, NULL, '1399496196', 1, '27e157ce-1ccf-3366-8d36-6566f617aa9b', '2017-08-29', '1455.74', '8535164', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:03', '2017-11-06 16:07:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, NULL, '771083729', 1, '718bb479-babc-308c-9c9b-f251910a4250', '2017-01-08', '2953.45', '17606851', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:04', '2017-11-06 16:07:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, NULL, '1435748441', 1, '8614821e-6015-3fa2-97f5-199a4bfd8954', '2017-08-05', '1947.13', '2113126', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:04', '2017-11-06 16:07:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, NULL, '97482716', 1, '7144f74a-2688-349d-908d-13e622c3be95', '2017-10-16', '2458.31', '39203160', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:05', '2017-11-06 16:07:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, NULL, '153202931', 1, 'e2e596e4-307c-349e-936f-bb620be5ca6e', '2017-03-09', '1304.75', '10766006', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:05', '2017-11-06 16:07:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, NULL, '568416844', 1, '2ed7ed25-fa7d-3a58-8c4d-8bc272411a58', '2017-10-21', '2922.22', '3029717', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:05', '2017-11-06 16:07:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, NULL, '930577474', 1, '4bf590bc-8ffb-3b39-af97-28a217360ff0', '2017-11-05', '1733.07', '43038413', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:05', '2017-11-06 16:07:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, NULL, '881697', 1, '7d2590fd-85af-33c4-b20c-21fe898f540f', '2017-10-29', '867.27', '47633627', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:06', '2017-11-06 16:07:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, NULL, '135036521', 1, '0b3457ed-8138-34f9-8c6a-c5381c604895', '2017-04-08', '2555.12', '8917302', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:06', '2017-11-06 16:07:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, NULL, '1325757192', 1, '39c729ae-0193-302e-8c56-f844488d7b01', '2017-10-11', '319.36', '32105933', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:06', '2017-11-06 16:07:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, NULL, '1000768100', 1, 'f0a5fc7a-034b-3a2c-8fd5-7662b01663c3', '2017-07-06', '2425.25', '6054478', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:06', '2017-11-06 16:07:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, NULL, '323247680', 1, 'e171246c-2c2a-3878-9feb-0a81000b057d', '2017-02-10', '627.77', '33211641', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:06', '2017-11-06 16:07:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, NULL, '1412284919', 1, '0bf41940-ebd2-3705-8e4d-3f8d35dba560', '2017-09-08', '2161.71', '20873013', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, NULL, '756601399', 1, '293ea6a2-bd9e-3e53-92e6-b681068e2312', '2017-06-13', '2057.13', '9890540', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, NULL, '1023203254', 1, '9038f0a9-2b4c-3358-b27e-a697d9b676e6', '2017-08-28', '582.94', '37267731', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, NULL, '671690625', 1, '9c0ca64e-372f-3461-9571-bf4632f8f1e1', '2017-01-01', '2727.08', '7792629', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, NULL, '100532934', 1, '6a7b708f-c22b-3679-a38e-1c1a333d7910', '2017-02-19', '2404.22', '31959242', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, NULL, '885373032', 1, '0d0d29e5-a834-3519-bd8a-8ffc24f7319c', '2017-06-29', '2705.47', '31569939', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:07', '2017-11-06 16:07:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, NULL, '1097941126', 1, '96305e0f-6766-3a55-bcf0-63593b4dfb4e', '2017-07-19', '1742.45', '23854032', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:08', '2017-11-06 16:07:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, NULL, '24643129', 1, '1cb9ed25-c91e-3b12-8ac6-f058e6826fee', '2017-01-08', '1350.59', '5177190', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:08', '2017-11-06 16:07:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, NULL, '1261789609', 1, 'ee2c8882-1854-39f8-a6c6-94addc1a26b1', '2017-05-15', '2284.40', '49126941', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:08', '2017-11-06 16:07:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, NULL, '111300615', 1, '94f92862-de10-3a24-93a1-2be77a685881', '2016-12-07', '1008.76', '31521237', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:08', '2017-11-06 16:07:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, NULL, '72873481', 1, '0248aac3-c5f0-35e6-81bd-9512c41932fe', '2017-08-08', '615.71', '6625023', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:08', '2017-11-06 16:07:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, NULL, '990550237', 1, '528857ca-7eb7-37bf-b6f3-3538c8c1ebfb', '2017-06-02', '2200.80', '11813183', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:09', '2017-11-06 16:07:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, NULL, '60755719', 1, '116117f1-873d-3974-ab45-5064467b34f4', '2017-05-08', '2113.03', '48662709', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:09', '2017-11-06 16:07:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, NULL, '433220829', 1, 'f4a04556-e948-369f-b107-65c680077b4b', '2017-09-09', '2402.83', '16352947', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:09', '2017-11-06 16:07:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, NULL, '858154267', 1, '462cee33-9e71-3263-9840-007668859121', '2017-10-22', '1028.04', '3112844', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:09', '2017-11-06 16:07:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, NULL, '1334903374', 1, '64d8de2e-af56-330b-8262-8e012bdb371f', '2017-11-02', '1788.30', '6579455', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:09', '2017-11-06 16:07:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, NULL, '1205593471', 1, 'd53d74d1-70d3-39af-9932-86d6de7fee24', '2016-12-20', '2866.63', '6402405', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, NULL, '1197556159', 1, '3fd41d1c-de88-3dce-8594-427e00919979', '2017-06-23', '2866.13', '47579434', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, NULL, '993529971', 1, '9393447f-9a56-339d-bbe9-18bc7ebdee92', '2017-02-28', '1274.80', '12339439', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, NULL, '1241896337', 1, '7f5c766f-4dec-36df-9f59-9a9c57fe10f0', '2017-06-12', '1407.79', '12120127', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, NULL, '350309173', 1, 'd35deb4b-2c44-3e7a-82d7-80730f94b105', '2017-05-03', '1134.36', '10259438', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, NULL, '1022140250', 1, 'ce3c4e11-cefd-396f-807e-2b2339149f8b', '2017-01-28', '1397.63', '44067953', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:10', '2017-11-06 16:07:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, NULL, '1214474022', 1, '96928203-f3ef-3f1c-9679-2a3bdc38b084', '2017-04-21', '1601.50', '42103716', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:11', '2017-11-06 16:07:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, NULL, '248461063', 1, '18c6bd7c-8520-3134-942e-f16b808eca72', '2017-02-28', '1336.15', '49568455', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:11', '2017-11-06 16:07:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, NULL, '1245496654', 1, '54847761-152e-3352-aa60-63cc11bf6e42', '2017-02-06', '1778.52', '43880422', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:11', '2017-11-06 16:07:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, NULL, '1072770537', 1, 'a6e164c1-c26c-3317-a595-64e7243f3a17', '2017-08-17', '2502.40', '3096609', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:11', '2017-11-06 16:07:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, NULL, '157361918', 1, 'ea3268e0-5572-3870-8e23-de30837bad89', '2017-02-18', '2039.19', '42181912', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:11', '2017-11-06 16:07:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, NULL, '878389606', 1, '727bd845-22f6-306b-b06b-781663ce9bf2', '2017-02-19', '1213.65', '22900767', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:12', '2017-11-06 16:07:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, NULL, '992926948', 1, 'efde9aea-3150-3114-8bfe-15dace875c56', '2017-02-16', '2245.22', '5756640', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:12', '2017-11-06 16:07:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, NULL, '854679754', 1, '571fbff7-20df-3a6e-836f-6c2013dd8d7f', '2017-02-14', '1815.94', '32556695', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:12', '2017-11-06 16:07:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, NULL, '334001225', 1, '7d4a1f7e-80bf-3ecd-bb05-dabc521aef61', '2016-12-30', '1545.12', '7779106', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:12', '2017-11-06 16:07:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, NULL, '1391086891', 1, '835eabdc-bbe8-3c4d-bb67-9006ae401027', '2017-01-16', '1840.27', '16627493', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:12', '2017-11-06 16:07:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, NULL, '482121772', 1, '62c99825-46c4-3b4c-8c50-ba30f65a0e7b', '2016-12-04', '1305.31', '32270499', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:13', '2017-11-06 16:07:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, NULL, '595554453', 1, 'd9516af2-4f18-3659-9380-335a7cb57190', '2017-01-05', '1119.45', '32325062', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:13', '2017-11-06 16:07:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, NULL, '936810145', 1, '5c68f469-da5e-3f48-8fd9-f474511b64dd', '2017-03-07', '1171.75', '47795747', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:13', '2017-11-06 16:07:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, NULL, '1306756713', 1, '5cf4add6-5321-3838-9707-4cfc7a9232c9', '2017-07-26', '1727.93', '24285147', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:13', '2017-11-06 16:07:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, NULL, '195925139', 1, '8f416b40-110b-346a-9187-812192a52133', '2017-03-18', '479.15', '49356905', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:13', '2017-11-06 16:07:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, NULL, '1028762988', 1, 'e0b95d0e-91ec-3e22-8e05-a1511209504f', '2017-04-02', '2995.92', '44538534', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:14', '2017-11-06 16:07:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, NULL, '107681881', 1, 'beb537a2-b239-386c-bc57-3ab0f54a47b0', '2017-08-08', '1683.30', '25968750', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:14', '2017-11-06 16:07:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, NULL, '113917274', 1, 'cee37895-a49b-3921-a3ee-e837eaab5525', '2017-04-17', '2347.89', '15396586', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:14', '2017-11-06 16:07:14', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, NULL, '1501083780', 1, '3d542014-2e9d-3255-88eb-b3e694025652', '2016-12-15', '640.47', '11531516', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:14', '2017-11-06 16:07:14', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, NULL, '961098351', 1, 'b503ea2c-1ad6-3aea-b78b-efb303529d48', '2016-11-16', '1831.92', '2998522', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:14', '2017-11-06 16:07:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, NULL, '966152227', 1, '2d1c1115-c0e8-3ddf-a843-834953b05b71', '2017-06-18', '1667.14', '21188375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:15', '2017-11-06 16:07:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, NULL, '351907533', 1, '14bba5f5-8c6a-3cf8-add0-1485361f2426', '2017-10-27', '1534.24', '48360207', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:15', '2017-11-06 16:07:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, NULL, '755957327', 1, 'c8bfe35e-3b5d-3db7-92a6-70e3d2a38fae', '2017-01-02', '1514.78', '32419260', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:15', '2017-11-06 16:07:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, NULL, '918325541', 1, '447d165a-834f-3424-bd58-eb62f021a7d9', '2017-07-25', '1841.12', '21168815', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:15', '2017-11-06 16:07:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, NULL, '856321576', 1, 'a7b695c3-7505-303c-b86d-7ef9c54ea5b9', '2016-11-20', '1975.71', '28471900', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:15', '2017-11-06 16:07:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, NULL, '1235613945', 1, 'bb34c198-7067-35a6-baa2-3b4e639faae1', '2017-01-01', '2359.76', '3968654', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:16', '2017-11-06 16:07:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, NULL, '270107517', 1, '5bad881d-83df-35fe-907a-c485bdc75a28', '2017-04-20', '1001.49', '26262168', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:16', '2017-11-06 16:07:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, NULL, '270741556', 1, 'd8b9206a-540e-3ac1-a27a-0e7518ed5b14', '2017-08-17', '858.99', '10273295', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:16', '2017-11-06 16:07:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, NULL, '996672209', 1, 'd00e9364-301b-346e-ba28-3952cc34b6d3', '2016-11-20', '1558.82', '20268486', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:16', '2017-11-06 16:07:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, NULL, '122314660', 1, '8164b52a-5a58-36d7-8351-cfab6df37aa8', '2017-05-31', '2969.04', '34743926', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:16', '2017-11-06 16:07:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, NULL, '888673196', 1, 'b70086af-72c4-31f2-a94f-eb746ba113b7', '2017-08-06', '478.69', '25919040', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:17', '2017-11-06 16:07:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, NULL, '336273582', 1, 'caaad426-963f-318e-a07e-e738007521f1', '2017-03-25', '1022.69', '1525852', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:17', '2017-11-06 16:07:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, NULL, '1249905022', 1, '390f32fb-bb42-35c1-b960-fc47df83ea32', '2017-05-26', '2401.08', '9197397', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:17', '2017-11-06 16:07:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, NULL, '524709915', 1, '07c8b534-2657-3870-b5e2-b9a7b3c93ab2', '2017-06-29', '2029.99', '14135837', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:17', '2017-11-06 16:07:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, NULL, '560244234', 1, '77397c89-4b33-311a-8497-27e7d9a6b532', '2017-08-26', '1930.44', '47649637', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:17', '2017-11-06 16:07:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, NULL, '711575041', 1, '367577bf-ff6c-3d76-a7cd-aa62a0ce8b28', '2017-05-17', '318.32', '44909363', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:18', '2017-11-06 16:07:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, NULL, '399468556', 1, '6c490247-3c49-394e-a0e5-0934385cee16', '2017-04-20', '1497.52', '35911818', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:18', '2017-11-06 16:07:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, NULL, '1503829288', 1, '9b3e7faf-2b0e-3f97-a892-587b371fe5c5', '2016-12-17', '801.62', '17372660', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:18', '2017-11-06 16:07:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, NULL, '1064098142', 1, '160928eb-ae26-36c8-bf15-1b952e2b00ef', '2017-01-16', '2833.09', '12155746', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:18', '2017-11-06 16:07:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, NULL, '240905380', 1, '109b81a7-f64a-32b4-aa0e-9f892d08e312', '2017-08-04', '878.63', '45779451', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:18', '2017-11-06 16:07:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, NULL, '740475757', 1, '426cc4fe-c337-38cc-8cd9-8bf3f63aa14f', '2017-08-07', '1309.10', '1302911', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:19', '2017-11-06 16:07:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, NULL, '805683038', 1, 'd5a446b3-6650-3977-b26e-76ab1b4c65bf', '2016-11-09', '2695.89', '18158926', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:19', '2017-11-06 16:07:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, NULL, '603568026', 1, '742a199a-7a1f-31ec-a1b3-a254c88f71ba', '2017-03-24', '1899.02', '31680110', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:19', '2017-11-06 16:07:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, NULL, '515544064', 1, '2ae92835-e7f4-38a5-9338-a12bac9fde9d', '2017-04-27', '1726.38', '13393055', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:19', '2017-11-06 16:07:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, NULL, '205340636', 1, '469564d0-4dfd-300b-a076-50b69300bc7e', '2017-01-25', '2252.94', '34502034', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:19', '2017-11-06 16:07:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, NULL, '448621275', 1, '40ced6d9-60a9-31f5-8eda-4bdb6689b417', '2016-11-14', '1221.52', '43336319', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:20', '2017-11-06 16:07:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, NULL, '1456568050', 1, '8a07366c-dfb5-3b37-99a5-84dd0a0a4bbf', '2017-10-17', '1398.02', '16404296', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:20', '2017-11-06 16:07:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, NULL, '1056966334', 1, '8c22051d-5edd-3fb0-8ad7-e27f96ac38cc', '2017-09-18', '375.39', '20252583', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:20', '2017-11-06 16:07:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, NULL, '436257467', 1, '9a03995d-9b8c-302e-a0e4-7030c4a2c89a', '2016-11-11', '2037.85', '34582608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:20', '2017-11-06 16:07:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, NULL, '1416124771', 1, 'e07964e7-33f0-3860-b838-23ddcada3e6a', '2017-07-02', '1355.75', '38357423', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:21', '2017-11-06 16:07:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, NULL, '18634625', 1, '6f18a703-128e-3270-9ca6-0b875a6b5f4d', '2017-02-15', '823.64', '14378384', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:21', '2017-11-06 16:07:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, NULL, '1108153429', 1, 'd3ec0f2b-e528-3343-b752-58d66eef3770', '2017-04-20', '1469.07', '21860183', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:21', '2017-11-06 16:07:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, NULL, '225911665', 1, '6f3f1133-17d9-33b5-89f6-64dc9f7e3d02', '2016-12-03', '2011.12', '13056861', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:21', '2017-11-06 16:07:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, NULL, '521679413', 1, '6d1c592e-f7ec-3e27-b5cc-27b393428aec', '2017-04-04', '1991.60', '43497392', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:21', '2017-11-06 16:07:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, NULL, '441216921', 1, 'f5d9f660-3be6-39ef-8041-f6ef125e6a1e', '2017-07-07', '933.61', '21934673', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, NULL, '973374089', 1, '6f7edb16-3c1a-34ab-b1d0-7cb52efc74d7', '2017-06-05', '2186.70', '49120761', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, NULL, '1264902002', 1, '1df1f88c-3d4f-3de2-b63b-2e50da95bbbe', '2016-11-16', '468.92', '45364596', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, NULL, '1337227925', 1, '27a84fa3-58a3-3eb0-a5aa-da3535d3b16a', '2017-08-21', '1688.08', '24932523', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, NULL, '919378584', 1, '574fd9d8-bbb0-383c-b926-40bafdb3f4c9', '2016-11-26', '2175.36', '45527845', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, NULL, '242740711', 1, '8197a25e-76d6-364d-9496-532128b6002a', '2017-08-20', '456.17', '31494322', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:22', '2017-11-06 16:07:22', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, NULL, '1327324530', 1, 'e9fa3f0c-770a-32e4-a7d3-e36843032e50', '2017-09-01', '1877.51', '9987856', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:23', '2017-11-06 16:07:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, NULL, '1024784124', 1, '89985948-91db-363a-8187-2d1a30bc06dd', '2017-04-30', '617.14', '39685345', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:23', '2017-11-06 16:07:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, NULL, '1028423355', 1, '7642eb67-656f-35c2-89ff-b0d92d5705b7', '2017-08-29', '2448.56', '15615455', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:23', '2017-11-06 16:07:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, NULL, '1262651384', 1, '014e5082-8782-35f7-a99a-4837765224c3', '2017-01-12', '1991.60', '28464363', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:23', '2017-11-06 16:07:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, NULL, '266190889', 1, '84a73660-4329-3af0-ad58-6eb940dcb00a', '2017-05-24', '1943.44', '22131723', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:24', '2017-11-06 16:07:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, NULL, '1018118577', 1, '4bad9e4d-3a14-3916-821e-f0b69e2daecf', '2017-03-18', '2916.48', '21450716', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:24', '2017-11-06 16:07:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, NULL, '1413026247', 1, '0a34ae82-6523-3892-b849-c74fc95d1c43', '2016-11-27', '2563.27', '7161489', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:24', '2017-11-06 16:07:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, NULL, '316725156', 1, '806d05f5-d50e-32cf-ae50-82641a1ae06e', '2017-09-14', '1015.51', '6358247', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:24', '2017-11-06 16:07:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, NULL, '313662086', 1, '96775b49-086c-3843-976d-093fcd19f761', '2017-07-06', '2526.13', '11626152', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:24', '2017-11-06 16:07:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, NULL, '1015987090', 1, '786bbd51-9098-3fe8-9d50-256a3763de83', '2016-11-12', '2789.25', '8861386', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:25', '2017-11-06 16:07:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, NULL, '1297845264', 1, 'cb14c8c1-f46e-38b0-bb41-f84aefc3ed08', '2017-03-11', '2598.45', '46195251', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:25', '2017-11-06 16:07:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, NULL, '757864631', 1, '663a9daa-b36a-3c43-91ba-e4a7628e707e', '2017-08-12', '824.39', '35114065', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:25', '2017-11-06 16:07:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, NULL, '578028125', 1, 'df7ffe81-5fcc-3bdb-8000-29c60eac72f9', '2017-05-13', '657.47', '42791009', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, NULL, '93417421', 1, 'd2395dea-6121-39c8-9a45-7b0d13a5231f', '2017-10-09', '2098.51', '35058153', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, NULL, '64880463', 1, '3db17606-fbc7-32cf-883a-262cd44386d2', '2017-10-11', '2925.94', '28911168', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, NULL, '1133033542', 1, '52476945-b123-36db-9f5c-bcf06a30daa1', '2017-10-02', '1507.67', '6719798', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, NULL, '411473853', 1, 'c8689842-b159-3310-acce-b238cfa201a1', '2017-06-22', '320.33', '23704183', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, NULL, '1185889628', 1, 'd9341bc8-c700-3fbf-81ca-c29dbcc6c005', '2017-11-01', '1216.97', '33246725', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:26', '2017-11-06 16:07:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, NULL, '918033798', 1, '96df496f-2898-368a-8d17-baf45b43ad32', '2017-08-16', '2150.38', '24851667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:27', '2017-11-06 16:07:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, NULL, '46869798', 1, '2db908c1-2316-36ae-b0bb-50b5722637e1', '2016-12-26', '2349.31', '28658980', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:27', '2017-11-06 16:07:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, NULL, '762265028', 1, 'f56655e2-30c3-38fc-be40-351b4a8dfc3f', '2017-06-01', '782.13', '37864129', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:27', '2017-11-06 16:07:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, NULL, '675731030', 1, 'd980c91d-a5b5-37b7-acec-ff85a62a859a', '2017-10-18', '1262.51', '28724541', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:27', '2017-11-06 16:07:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, NULL, '457086451', 1, 'a5cc089b-51ad-3a76-9b89-829edfde54ad', '2017-04-20', '837.58', '14788691', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:27', '2017-11-06 16:07:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, NULL, '1012018589', 1, '65fd51e7-af30-3f38-b91e-93ca926be802', '2017-07-27', '1404.58', '36157064', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:28', '2017-11-06 16:07:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, NULL, '644394839', 1, '28ac4cba-e764-34a7-b6d0-2cf0f3c179fd', '2017-03-06', '2756.82', '37876540', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:28', '2017-11-06 16:07:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, NULL, '590522250', 1, 'e5394af1-7837-3e24-87c4-69f0714e8ba4', '2016-11-30', '855.43', '40342459', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:28', '2017-11-06 16:07:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, NULL, '370797941', 1, '14883579-c209-3912-9822-da54b989a89a', '2017-04-20', '2017.41', '12756649', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:28', '2017-11-06 16:07:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, NULL, '1052768407', 1, '572dd44d-93d6-32a6-8c41-07a5abc0a9e3', '2017-06-27', '2913.13', '48525753', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:28', '2017-11-06 16:07:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, NULL, '1111714196', 1, '3c17e4eb-cf28-342c-aec8-975e5049b17c', '2017-07-04', '1886.14', '35254556', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:29', '2017-11-06 16:07:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, NULL, '1489139511', 1, 'e159d63b-c0ff-3c32-b620-1229f2aedda9', '2017-01-12', '2779.81', '7163798', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:29', '2017-11-06 16:07:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, NULL, '260215977', 1, 'ed1f2577-1b44-3fe5-919b-722391388a29', '2017-05-28', '780.94', '44683435', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:29', '2017-11-06 16:07:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, NULL, '524561011', 1, 'fd3fc9fe-09d9-385f-90d7-22ea1a1812c6', '2017-04-03', '2732.20', '23485061', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:29', '2017-11-06 16:07:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, NULL, '1052665485', 1, '2ed88614-6d7e-3dbc-8da7-de3c8ff04967', '2017-08-07', '328.25', '49517036', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:29', '2017-11-06 16:07:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, NULL, '30073729', 1, 'b0f0742e-1347-3ce2-acf3-7e4675f4d51b', '2017-05-06', '636.55', '48294749', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, NULL, '836724374', 1, 'ffb841e3-b5fe-34da-8c33-f96129aa206a', '2017-07-05', '1873.95', '34825025', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, NULL, '1498855103', 1, '47353855-c664-39d7-8e79-0c6e9917cd0f', '2017-03-12', '2987.20', '9185697', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, NULL, '485819075', 1, 'd8c12b0e-6e9a-3e39-a844-36c4efb4c257', '2017-10-17', '582.41', '43975943', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, NULL, '327362140', 1, '2f843d68-a0fc-3e79-a51a-746428967fbf', '2017-03-31', '396.04', '1576138', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, NULL, '1073994406', 1, 'c6236c05-a23b-3009-87b5-1650d3621514', '2017-01-25', '597.37', '14755639', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:30', '2017-11-06 16:07:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, NULL, '1163759117', 1, '78dd021b-286e-31f5-a704-ee2fa1c896c2', '2017-08-24', '2739.56', '25326771', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:31', '2017-11-06 16:07:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, NULL, '678450035', 1, '7ecd4dcb-7a9e-3aa1-9f08-b54905e06d52', '2017-02-13', '1281.65', '33005965', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:31', '2017-11-06 16:07:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, NULL, '5621676', 1, 'acef91ca-6c39-3e71-a42d-fbd2cf510786', '2017-04-08', '2805.04', '29642377', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:31', '2017-11-06 16:07:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, NULL, '218029506', 1, '1f101289-f63a-32ba-a9d5-e6ddd81d1d92', '2017-08-23', '2512.41', '32134694', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:31', '2017-11-06 16:07:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, NULL, '743180404', 1, 'e89a1581-7ad9-3f9a-a5b3-4eef88b21626', '2017-08-11', '940.31', '5423760', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:31', '2017-11-06 16:07:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, NULL, '402941711', 1, 'aa309db2-9e15-3aa7-bd28-805d2f3d45b4', '2017-06-05', '1660.80', '7897425', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:32', '2017-11-06 16:07:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, NULL, '104526615', 1, 'f37b9cb6-0602-306d-8917-0585312edaac', '2016-11-06', '2377.35', '4528444', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:32', '2017-11-06 16:07:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, NULL, '157529517', 1, 'b41068e7-071a-370d-9197-51bc99f4f57f', '2017-02-03', '2496.28', '43758714', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:32', '2017-11-06 16:07:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, NULL, '94264608', 1, '23af5390-bb90-3845-bdab-e8006b0e1351', '2017-09-15', '358.64', '47884112', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:32', '2017-11-06 16:07:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, NULL, '1121394400', 1, '25a6ce64-c9c5-307a-904d-2d56c75a2547', '2017-05-07', '1249.54', '41180269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:32', '2017-11-06 16:07:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, NULL, '1394590751', 1, '78b3bb7b-aa93-3585-9006-74035265dd33', '2017-06-26', '2616.13', '19415043', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:33', '2017-11-06 16:07:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, NULL, '866663122', 1, 'c4902803-9044-3979-aa36-dc941ad57a95', '2017-04-21', '878.65', '26904608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:33', '2017-11-06 16:07:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, NULL, '1170705503', 1, '2a1af8e8-e2c8-31fc-ae14-280e50ebfdfb', '2017-06-20', '2466.19', '43823104', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:33', '2017-11-06 16:07:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, NULL, '1113445176', 1, 'a41fc5a3-7381-3f39-9882-4807e5965825', '2017-05-15', '2130.12', '4753244', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:33', '2017-11-06 16:07:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, NULL, '173577214', 1, '7fe714da-8ed3-387a-abd1-55ff26a45b84', '2017-01-17', '1150.86', '13260814', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:33', '2017-11-06 16:07:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, NULL, '1046356206', 1, 'f2cf9427-87dd-31ae-9383-7e83ad207fd3', '2017-10-15', '854.68', '41850501', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:34', '2017-11-06 16:07:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, NULL, '450627065', 1, '63af7d23-ba1e-3c73-98bc-63945670284b', '2017-09-11', '2921.71', '38333311', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:34', '2017-11-06 16:07:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, NULL, '79949362', 1, '5f2f67f6-4f34-3d65-8038-8ee94ccb0004', '2017-10-26', '1236.44', '7912393', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:34', '2017-11-06 16:07:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, NULL, '401832907', 1, '7f87644a-9ad1-326b-87b4-017bb63c8a9a', '2017-03-16', '2098.64', '12794875', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:34', '2017-11-06 16:07:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, NULL, '83118546', 1, '142999cd-d3e6-3414-88eb-26679291f370', '2017-05-12', '365.15', '18229445', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:34', '2017-11-06 16:07:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, NULL, '823893392', 1, '11baeee9-c77a-3bcb-a861-372677bd44c1', '2017-09-06', '1040.52', '11338025', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:35', '2017-11-06 16:07:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, NULL, '114860859', 1, 'a94c8a40-ef9f-30a4-a9c8-23e4d18c39d1', '2017-10-20', '2473.53', '16309203', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:35', '2017-11-06 16:07:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, NULL, '1078688214', 1, 'bfa578e0-c540-383d-91ff-756bf4fb2f38', '2017-09-24', '2171.00', '6770656', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:35', '2017-11-06 16:07:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, NULL, '796706712', 1, 'd37b6a8c-2495-38c3-81ce-54e59d3a6ab5', '2017-06-25', '1454.75', '35422827', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:35', '2017-11-06 16:07:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, NULL, '1486085643', 1, 'e3e602f4-cfd3-3fe6-93ee-f48d7a94427d', '2017-03-25', '651.55', '21924414', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:35', '2017-11-06 16:07:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, NULL, '1222403551', 1, '917c3b9a-3aa4-3d74-a3b0-950a9c71338e', '2017-05-07', '2140.91', '42957457', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:36', '2017-11-06 16:07:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, NULL, '229826159', 1, '4cc9b58d-f73c-3019-b165-0c01abebae22', '2017-02-01', '1936.65', '25346536', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:36', '2017-11-06 16:07:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, NULL, '447620753', 1, '7d42253d-eec5-3361-b9b0-63ebe757d375', '2017-09-05', '1432.39', '32133033', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:36', '2017-11-06 16:07:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, NULL, '1029249489', 1, 'e089adec-8b4b-3752-934b-c7c290c24508', '2017-10-27', '1420.39', '16278874', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:36', '2017-11-06 16:07:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, NULL, '1480329416', 1, '8804bc06-7aa2-377d-9a1c-6e3a211ebb43', '2017-06-19', '486.84', '30566003', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:36', '2017-11-06 16:07:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, NULL, '291114132', 1, '46651d43-f4e0-375c-ae20-3f19e399fd72', '2017-06-30', '458.27', '36290177', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:37', '2017-11-06 16:07:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, NULL, '1382769665', 1, '707ddf59-5b16-331b-aa6f-5bf1982fee9a', '2017-04-28', '1072.08', '17289943', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:37', '2017-11-06 16:07:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(363, NULL, '410505845', 1, 'f9ecea7b-9874-353f-8992-d721acd0d5ff', '2017-07-28', '2234.55', '18371074', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:37', '2017-11-06 16:07:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, NULL, '1507582446', 1, '441d00ff-2177-3a39-b3a8-bb0a4290ffb5', '2017-10-11', '328.25', '18790515', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:37', '2017-11-06 16:07:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, NULL, '1155466513', 1, '17674cf9-c072-3e8d-aa75-a52cba275451', '2017-04-25', '459.52', '2066338', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:37', '2017-11-06 16:07:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, NULL, '197949328', 1, '09404614-fc78-379f-9d11-429c22a07b36', '2017-10-23', '2195.72', '18791935', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:38', '2017-11-06 16:07:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, NULL, '541206592', 1, '1f35d5ae-f952-31d8-b072-222cb75053f2', '2016-12-16', '2786.22', '18692441', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:38', '2017-11-06 16:07:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, NULL, '998348924', 1, '147f675e-dfaf-3065-904e-cd415c62bf8c', '2017-07-01', '916.99', '28317516', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:38', '2017-11-06 16:07:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, NULL, '421617704', 1, 'cc94658d-43cc-392d-ae4d-2cabddc4379e', '2017-11-02', '2978.71', '42531735', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:38', '2017-11-06 16:07:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, NULL, '640314118', 1, 'b9483fd2-5279-3e0c-a9cc-ccf39556e4b0', '2017-09-10', '881.16', '7358418', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:38', '2017-11-06 16:07:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, NULL, '433276083', 1, '3e3c3506-2e11-30f5-87bb-f2ed18e27c20', '2017-10-26', '934.80', '7430149', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:39', '2017-11-06 16:07:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, NULL, '447371274', 1, '02a04c99-b0bf-34d0-a401-5b97f9e0363d', '2017-03-08', '2093.74', '34687763', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:39', '2017-11-06 16:07:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, NULL, '203500509', 1, 'a152f833-3094-36df-a115-91b86a08a251', '2017-05-01', '349.12', '2415406', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:39', '2017-11-06 16:07:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, NULL, '632443397', 1, 'c4478c0e-4e3a-3e51-af63-72da521b39fb', '2017-08-04', '453.85', '19933078', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:39', '2017-11-06 16:07:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, NULL, '1309398196', 1, 'e02abddd-b58d-3c39-a46b-e63c49bcd12c', '2016-11-08', '2598.01', '28820639', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:39', '2017-11-06 16:07:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, NULL, '834682234', 1, 'd18e4747-af04-3e3a-9cca-c28e61a620d1', '2017-10-09', '2132.69', '8671260', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:40', '2017-11-06 16:07:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, NULL, '1404121975', 1, '6e7207ae-44bd-3996-95dc-8e29e408791f', '2016-11-11', '1607.43', '33061845', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:40', '2017-11-06 16:07:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, NULL, '272979171', 1, '048678d5-f64d-367e-9a26-9a931813ffe0', '2017-08-23', '1261.08', '9740738', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:40', '2017-11-06 16:07:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, NULL, '1254917293', 1, '80218a1b-d6f9-301b-acfb-c80421a9ade1', '2017-10-15', '732.72', '31460739', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:40', '2017-11-06 16:07:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, NULL, '1034117198', 1, '96250047-ab15-38e3-a9f2-920f0f2baa3d', '2017-01-23', '369.16', '39422375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:40', '2017-11-06 16:07:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, NULL, '185109293', 1, '54eb98cd-5621-3cab-a2da-ebc693d6ba74', '2017-07-15', '2660.34', '14036145', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:41', '2017-11-06 16:07:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, NULL, '1268231823', 1, '8042824a-c5cb-3e0e-9d18-1fa4a5ad79b2', '2017-06-28', '2739.97', '28334166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:41', '2017-11-06 16:07:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, NULL, '82487298', 1, '978737b8-4643-361f-ae98-7beabbb0d3ba', '2017-06-08', '1978.99', '27391975', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:41', '2017-11-06 16:07:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, NULL, '1120306277', 1, '503112d8-d5cd-3df7-9b54-6d3441108752', '2017-04-09', '1593.84', '17505787', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:41', '2017-11-06 16:07:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, NULL, '984855880', 1, '22bf24f4-e263-3347-a216-f15ccf4340f1', '2017-08-10', '2552.83', '21126130', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:41', '2017-11-06 16:07:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, NULL, '674380111', 1, '0fae475c-54ec-338d-b3b3-c7f0be59a0a0', '2017-08-24', '1477.58', '7848571', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:42', '2017-11-06 16:07:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, NULL, '1273318453', 1, '81f44f32-9b1f-3a18-8b30-7a1ffc991bcc', '2017-03-18', '2967.62', '16108181', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:42', '2017-11-06 16:07:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, NULL, '771948193', 1, 'ad324ea8-4be4-38f2-a523-9cac5184bedc', '2017-03-11', '2783.39', '22429007', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:42', '2017-11-06 16:07:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, NULL, '912409168', 1, '6acd51a0-2ad4-3557-928a-6a5ee133f0ca', '2017-06-21', '1600.48', '45267823', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:42', '2017-11-06 16:07:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, NULL, '697135480', 1, 'caed4e19-715a-3735-a14b-fa600a180781', '2017-10-31', '951.68', '43726854', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:42', '2017-11-06 16:07:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, NULL, '749690210', 1, '8361ab11-d182-3b26-9d06-7baf93ce28bc', '2016-12-22', '2872.12', '46226807', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:43', '2017-11-06 16:07:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, NULL, '424913671', 1, '4c7915ac-d62c-3f2c-bab3-61d78b02bc3f', '2017-05-12', '2772.20', '16064609', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:43', '2017-11-06 16:07:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, NULL, '491367189', 1, '2cddd9f9-7d86-3cf0-ab71-c9cbaec74a0b', '2017-05-01', '520.12', '30141098', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:43', '2017-11-06 16:07:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, NULL, '1364771589', 1, '0de7db42-558e-3ebf-8600-6fcc5ca1214e', '2017-02-19', '2711.72', '1343726', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:43', '2017-11-06 16:07:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, NULL, '786855821', 1, '2085de41-a88e-3823-8ad0-fb9ee29efce8', '2017-05-10', '2502.99', '9940006', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:44', '2017-11-06 16:07:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, NULL, '1028779377', 1, '12990abc-3642-335d-91cf-91b732329481', '2016-11-21', '1036.82', '40380252', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:44', '2017-11-06 16:07:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, NULL, '1165531065', 1, '436cd33e-2132-316d-a73f-f8c25dda2ea8', '2017-05-20', '2955.67', '13160075', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:44', '2017-11-06 16:07:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, NULL, '102651200', 1, 'ba35c955-c8eb-3798-9f6c-1ed07c9e14e5', '2017-04-28', '2044.29', '20920815', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:45', '2017-11-06 16:07:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, NULL, '196800044', 1, 'a5070f52-a098-3ab2-a967-b17918e0dca2', '2017-07-16', '512.93', '22353083', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:45', '2017-11-06 16:07:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, NULL, '463661938', 1, '74eb0628-ed68-3c14-b8f4-5504679351bd', '2017-08-31', '314.53', '45587953', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:45', '2017-11-06 16:07:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, NULL, '925003201', 1, '841323e1-4989-3733-b720-c607cc2f731f', '2017-10-08', '1306.83', '13151026', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:45', '2017-11-06 16:07:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, NULL, '1046642103', 1, '42663910-44ec-306f-8710-440a3bd74950', '2017-06-05', '755.94', '19954720', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:46', '2017-11-06 16:07:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, NULL, '1047541805', 1, '0b08c7c5-2be4-3275-afc4-42147a11a597', '2017-04-15', '1132.43', '48031911', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:46', '2017-11-06 16:07:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, NULL, '1417630281', 1, '6aca3d35-8390-3891-8bec-f7407f6284bb', '2017-09-15', '1272.94', '5679760', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:46', '2017-11-06 16:07:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, NULL, '863984246', 1, 'a41d17a0-6656-39a7-97df-cfda300c2712', '2017-02-15', '1576.81', '24355336', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:46', '2017-11-06 16:07:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, NULL, '869594467', 1, 'a2dd529e-4d64-33cd-aa2f-89ec8615c6a1', '2017-09-17', '1796.65', '39722064', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:47', '2017-11-06 16:07:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, NULL, '747461279', 1, '54583096-e9d6-3ee4-8fe2-daff2b3f5707', '2017-01-14', '2914.90', '17980340', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:47', '2017-11-06 16:07:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, NULL, '797037155', 1, '1c1f739d-2ed9-33ed-9b0f-ab43cbbe6166', '2017-03-17', '1445.35', '36674960', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:47', '2017-11-06 16:07:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, NULL, '937432929', 1, '9bae0a62-8994-3fde-a8a8-4849292a35b1', '2017-08-06', '2492.30', '28107535', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:47', '2017-11-06 16:07:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, NULL, '41462735', 1, 'b970a417-5ab1-3b04-8f2a-2a6b2645c308', '2017-09-09', '2122.21', '16927776', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:47', '2017-11-06 16:07:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, NULL, '724972782', 1, '9371e0ed-a98a-3411-b7e0-383f08cc8478', '2016-11-10', '489.46', '4143967', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:48', '2017-11-06 16:07:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, NULL, '97951515', 1, 'f5ed2952-613d-325a-b09c-984f7ac61cbd', '2017-07-18', '2493.79', '14209608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:48', '2017-11-06 16:07:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, NULL, '422747308', 1, 'f185a9c3-231a-3c8d-a81b-73a45a147c57', '2017-10-05', '714.72', '47115259', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:48', '2017-11-06 16:07:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, NULL, '1349786374', 1, '6281786d-112a-3766-8d2b-16fba8e40743', '2017-02-24', '315.80', '43662667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:48', '2017-11-06 16:07:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, NULL, '1447285951', 1, '24b3c068-29e8-3c31-9460-b3b9f3383ea2', '2016-11-28', '1922.96', '15146479', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:48', '2017-11-06 16:07:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, NULL, '1505354398', 1, 'c4654ca9-0521-3f32-a357-e6c31039e125', '2017-11-03', '2955.41', '38342106', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:49', '2017-11-06 16:07:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, NULL, '1075362993', 1, '06c9bb8e-61c1-3ced-bd58-c130a359d1f8', '2017-09-14', '1592.88', '5739781', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:49', '2017-11-06 16:07:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, NULL, '373570968', 1, 'e0d1ccb0-c1fa-3b1f-90b7-d80bd16e8af1', '2017-10-24', '1212.80', '39108610', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:49', '2017-11-06 16:07:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, NULL, '628579850', 1, '50698955-0128-3873-817b-83f5d38cdf41', '2017-05-08', '866.28', '28091462', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:49', '2017-11-06 16:07:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, NULL, '59480008', 1, 'a21426cb-63fa-3177-a495-b5ba502059bc', '2016-12-06', '2351.98', '28849640', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:49', '2017-11-06 16:07:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, NULL, '1350086457', 1, '52974978-3f7e-3d02-ab0b-144668abf49e', '2017-01-25', '1114.44', '17607098', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:50', '2017-11-06 16:07:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, NULL, '368321997', 1, '8860c8c4-c2f4-34b0-aa98-ad06dbfe47b1', '2017-06-07', '2589.42', '7021826', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:50', '2017-11-06 16:07:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, NULL, '1367800284', 1, '9bbb42e9-493c-3a0c-98ab-cab6f1f4713a', '2017-01-29', '2580.26', '30299638', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:50', '2017-11-06 16:07:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, NULL, '322765561', 1, 'cbdf117c-6afe-3c3c-8c41-7591929565f1', '2017-07-14', '2603.86', '45914506', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:50', '2017-11-06 16:07:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, NULL, '176020076', 1, '51183538-6724-3589-8b1e-2252298ff992', '2017-02-07', '2610.16', '4544065', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:50', '2017-11-06 16:07:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, NULL, '1463531273', 1, 'b52a22f6-7e6d-33a2-b2ce-5292cc960401', '2017-02-18', '1219.19', '43845520', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:51', '2017-11-06 16:07:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, NULL, '70589625', 1, '8e4eedec-d5d9-34aa-9c70-33c6b845c3e8', '2017-10-05', '340.74', '1289750', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:51', '2017-11-06 16:07:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, NULL, '48709103', 1, '9c3fe10f-7caf-358b-95b3-868bafd356f3', '2017-04-27', '2030.15', '16909251', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:51', '2017-11-06 16:07:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, NULL, '439764617', 1, '8b927c93-8e4d-3395-b75a-26b753cff3ac', '2017-04-20', '1042.38', '1291095', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:51', '2017-11-06 16:07:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, NULL, '1188724677', 1, '0c241314-1db8-377f-86dd-21f085430819', '2017-06-30', '2424.12', '15491616', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:51', '2017-11-06 16:07:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, NULL, '381003070', 1, '7075bac2-4f55-3589-a378-feebc19b114d', '2016-12-30', '611.68', '32736514', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:52', '2017-11-06 16:07:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, NULL, '730689553', 1, '9dbdd2b8-b173-35ce-93bb-4248c792e4ad', '2017-01-30', '1421.43', '2743762', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:52', '2017-11-06 16:07:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, NULL, '720595511', 1, 'a4da97b7-9619-3be6-985a-e5882562685e', '2017-07-14', '1890.55', '29165816', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:52', '2017-11-06 16:07:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, NULL, '334343255', 1, 'b00cb32f-33f5-3466-894d-99960a9863fb', '2017-03-03', '1155.61', '7764095', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:52', '2017-11-06 16:07:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, NULL, '1077174441', 1, '6155dd51-a700-36b4-84f8-355687ae059f', '2016-11-10', '2402.55', '45199118', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:52', '2017-11-06 16:07:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, NULL, '752073029', 1, '394d8e4b-6715-3e94-a2e8-69122a3754af', '2017-04-13', '1394.10', '4682390', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:53', '2017-11-06 16:07:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, NULL, '1033880087', 1, '8bd860c3-49de-354d-838b-7e502bccf1f0', '2017-04-25', '2744.20', '27074460', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:53', '2017-11-06 16:07:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, NULL, '208606095', 1, '57ac9567-5e57-3fbd-a33b-c6757abef8ca', '2017-01-04', '990.42', '22066030', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:53', '2017-11-06 16:07:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, NULL, '1135494700', 1, '814044dc-3979-3502-a94f-46a13d512e4d', '2017-06-28', '2356.17', '35234828', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:53', '2017-11-06 16:07:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, NULL, '1223231885', 1, '38d21a73-1c42-3619-87a2-8189eab06f30', '2017-03-12', '1877.45', '43114067', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:53', '2017-11-06 16:07:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, NULL, '626038756', 1, '6ba3e798-df7c-392d-b307-039a67bcf5d8', '2017-01-02', '2288.98', '26908719', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:54', '2017-11-06 16:07:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, NULL, '364562961', 1, '7e8ef2e2-6307-3e24-9f4e-affc66eea0c1', '2017-09-08', '2600.16', '22831748', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:54', '2017-11-06 16:07:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, NULL, '1190433015', 1, 'e616ae11-14a9-3d35-b984-6e5e756264b5', '2017-02-23', '2982.37', '38973414', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:54', '2017-11-06 16:07:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, NULL, '1349317891', 1, '28ac8731-163a-3851-bcea-ed7faf52336b', '2017-02-17', '2721.34', '32211684', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:54', '2017-11-06 16:07:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, NULL, '119184389', 1, '5be0f7c1-c30b-3312-8c8b-ca9459575bc4', '2017-07-20', '2592.51', '19603517', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:54', '2017-11-06 16:07:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, NULL, '629230279', 1, '229287e9-8122-3eb3-997a-9bd24794484b', '2017-08-23', '418.24', '28092692', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:55', '2017-11-06 16:07:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, NULL, '112937771', 1, 'c02d6de0-acb4-3aed-aca5-6108d5dcc3d2', '2017-04-08', '1978.98', '16778216', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:55', '2017-11-06 16:07:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, NULL, '1354297746', 1, '321fa40f-695e-355b-a115-eabd13c7b308', '2017-03-25', '2821.35', '33403076', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:55', '2017-11-06 16:07:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, NULL, '1034170188', 1, 'f397aa50-2c38-345b-8fbc-7527be80ebf2', '2017-08-06', '1743.36', '24987803', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:55', '2017-11-06 16:07:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, NULL, '870939639', 1, 'a12e3e5f-2b65-31b8-a2ec-5c3c18bb511c', '2017-06-17', '2428.06', '14530806', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:55', '2017-11-06 16:07:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, NULL, '733734170', 1, 'b0cbb977-995e-3f5e-b17c-a79d64683ceb', '2017-04-27', '1452.43', '31019972', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, NULL, '1366676635', 1, '746c8d61-a27d-38eb-abf2-a6b8e207c5e3', '2017-11-05', '1195.94', '12994738', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, NULL, '602189464', 1, 'f6961efa-af88-39e8-ba58-5a1a18b4db74', '2016-12-13', '2552.22', '3622577', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, NULL, '597694090', 1, '8cc327be-9e1a-3fab-805f-a50588e85c04', '2017-04-04', '2839.91', '20584577', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, NULL, '1390003730', 1, '0a41a741-292b-3360-915f-571461553a44', '2017-01-22', '2464.30', '8328913', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, NULL, '779062108', 1, '652e1618-dbc3-3a6b-858b-8245d2646b1e', '2017-05-25', '2775.67', '14462164', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:56', '2017-11-06 16:07:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, NULL, '1184702454', 1, '56553071-373b-3107-9d0c-dcb060209a05', '2017-07-19', '844.96', '8307387', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:57', '2017-11-06 16:07:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, NULL, '736967832', 1, '7dcabe06-c08c-3eba-95fe-f5dcfbb7b6fc', '2017-02-03', '1253.22', '36610416', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:57', '2017-11-06 16:07:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, NULL, '1024502908', 1, 'da247ae0-c27c-3cd1-aa9f-d8b386ff2814', '2017-03-04', '2853.33', '35933440', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:57', '2017-11-06 16:07:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, NULL, '1336645355', 1, '1f1105e1-93a6-351b-8282-44a89be7ecc0', '2016-12-04', '2024.27', '3999728', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:57', '2017-11-06 16:07:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, NULL, '1480629525', 1, '454d3a88-d00c-3d5f-a9a8-1394983dc269', '2017-04-03', '960.86', '40268247', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:57', '2017-11-06 16:07:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, NULL, '167503067', 1, '71539484-ca89-33c5-9dcb-18a5744a2383', '2017-07-19', '2419.72', '32560274', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:58', '2017-11-06 16:07:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, NULL, '698165028', 1, '1b0b43da-d2a3-3050-a28a-ca5ac6e57b37', '2017-07-05', '846.45', '5824985', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:58', '2017-11-06 16:07:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, NULL, '1435547313', 1, '0506b7e7-ae3f-34c6-bb8e-8d2553cb635f', '2017-09-23', '843.42', '9314602', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:58', '2017-11-06 16:07:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, NULL, '667097889', 1, '0dbfc659-bb17-35e5-b460-0381e978066f', '2017-10-08', '2501.06', '13910547', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:58', '2017-11-06 16:07:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, NULL, '350626624', 1, '3f8186e8-849f-3f87-96b6-48d8e5d75b0b', '2017-10-05', '1744.47', '2351490', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:58', '2017-11-06 16:07:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, NULL, '1438941746', 1, '066ff547-ce63-3e2e-81fb-8c9eb1355c2a', '2017-10-06', '956.47', '7576984', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:59', '2017-11-06 16:07:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, NULL, '229479369', 1, 'a33c852a-430b-3c48-8c2a-85e161bd797f', '2017-10-02', '986.89', '34238581', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:59', '2017-11-06 16:07:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, NULL, '823695155', 1, 'ad6ee90e-60dd-37f4-ad36-794308d7904e', '2017-03-17', '934.96', '46294912', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:59', '2017-11-06 16:07:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, NULL, '356349018', 1, '5d0d7322-ac23-3906-8319-7e18688ffef5', '2016-12-09', '2066.24', '48703955', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:59', '2017-11-06 16:07:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, NULL, '1431576946', 1, '07ac4020-2ab3-3746-a06a-118d75efe014', '2017-05-17', '1162.15', '7599984', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:07:59', '2017-11-06 16:07:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, NULL, '805126700', 1, '51be7992-4971-3d1c-b947-58cd2a681564', '2017-10-22', '1373.71', '29625560', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:00', '2017-11-06 16:08:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, NULL, '305486338', 1, '55d1a3bf-a156-35c0-a60f-cf1affe40b5a', '2017-01-01', '984.79', '4913638', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:00', '2017-11-06 16:08:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, NULL, '1031072913', 1, '9bd6799a-e7cd-357c-b51d-5252c826a214', '2017-03-20', '1153.02', '32494529', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:00', '2017-11-06 16:08:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, NULL, '421944668', 1, '02ad19c3-580b-3417-86cf-b0f695e8d2c2', '2017-09-17', '1301.67', '6829348', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:00', '2017-11-06 16:08:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, NULL, '1438605114', 1, '58de1617-b6bb-33fb-bbae-06afa86c1a44', '2017-07-26', '2557.49', '24550961', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:00', '2017-11-06 16:08:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, NULL, '1234042866', 1, '2461680d-181e-3e1a-b326-896f47eecd15', '2017-06-01', '532.04', '2174887', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, NULL, '179645630', 1, 'e7c6f90e-93b4-3680-8dce-2b04200d8be5', '2017-01-09', '1153.58', '1549377', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, NULL, '1009252351', 1, '6aa82071-a88f-3188-b9d8-0eb98fe19f1c', '2017-06-11', '826.47', '7812417', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, NULL, '1218699627', 1, '61b748f5-641b-3daf-a83d-35f1ab6c6150', '2017-03-06', '618.33', '10710297', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, NULL, '615843621', 1, '3d553735-bf00-343b-96ca-0dd89b415c92', '2017-02-08', '2197.52', '6910592', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, NULL, '67426957', 1, 'b72cd8c3-059c-334c-843d-48341fe54e98', '2017-02-13', '1158.77', '35847760', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:01', '2017-11-06 16:08:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, NULL, '1477154587', 1, '6d6f9199-29e0-3c12-9820-83c81a34d9ba', '2017-10-09', '1671.61', '35584831', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:02', '2017-11-06 16:08:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, NULL, '13262368', 1, 'e72ddc44-3bf8-3151-a217-3ef76544c174', '2017-08-16', '2225.40', '42853728', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:02', '2017-11-06 16:08:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, NULL, '613692108', 1, '933575de-d3e3-3cda-a098-c325ea7f4fab', '2017-06-03', '2185.24', '35905622', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:02', '2017-11-06 16:08:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, NULL, '480014500', 1, '63aa9b63-dc30-3725-ba46-1fcdd77e47b4', '2017-10-27', '452.86', '32523470', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:02', '2017-11-06 16:08:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, NULL, '928516907', 1, 'f00ad6ac-7eef-33d0-93bc-1237c35b2238', '2017-03-15', '963.89', '32283405', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:03', '2017-11-06 16:08:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, NULL, '473317208', 1, '4b0951e2-b6c8-3058-bd2a-9af2b1604e08', '2016-12-08', '476.27', '24492556', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:03', '2017-11-06 16:08:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, NULL, '1460929402', 1, 'fba5b299-8349-3698-8922-006a22227dd8', '2016-11-14', '2471.44', '40876748', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:03', '2017-11-06 16:08:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, NULL, '1365826410', 1, 'b5388c7c-b157-3d8d-a6e9-5df22bf751d1', '2017-09-03', '764.47', '37913107', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:03', '2017-11-06 16:08:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, NULL, '282283003', 1, '3701b388-45bb-3c07-9807-468cc56724fe', '2017-02-05', '2270.43', '11880091', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:03', '2017-11-06 16:08:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, NULL, '1379761024', 1, '9f800c62-64f0-3cfb-9781-99038717e849', '2017-03-31', '1086.01', '24992723', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:04', '2017-11-06 16:08:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, NULL, '1388548195', 1, '6094003b-2353-32a3-8e75-c0919d4070c4', '2017-04-18', '2113.67', '35525544', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:04', '2017-11-06 16:08:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, NULL, '107301892', 1, '535d04d7-c333-301c-a307-2bc0fecc283b', '2017-11-02', '2902.42', '47264102', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:04', '2017-11-06 16:08:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, NULL, '1022619501', 1, '2e55942a-6277-3aa8-9096-c3bd2c7c2a3b', '2017-07-02', '2981.73', '1138308', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:04', '2017-11-06 16:08:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, NULL, '1450991092', 1, '69304b33-0b5f-38f1-a3a6-4d63cc744ab5', '2017-01-18', '1770.49', '2150537', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:04', '2017-11-06 16:08:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, NULL, '951963273', 1, '7ab37aca-a5ac-3ee7-8d1b-dc29be921b0a', '2017-09-21', '1303.32', '37738180', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:05', '2017-11-06 16:08:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, NULL, '130448962', 1, 'b4b8f3f9-4962-3999-aef9-e526d2768c3a', '2017-10-29', '1246.38', '16048373', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:05', '2017-11-06 16:08:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, NULL, '507967139', 1, '5bab98a3-105e-369c-b704-69f34357a7e7', '2017-07-02', '1518.69', '8235547', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:05', '2017-11-06 16:08:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, NULL, '146994919', 1, '9765deb7-c5d6-32fe-8887-083a2494a3b4', '2017-04-07', '566.62', '4177515', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:06', '2017-11-06 16:08:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, NULL, '227488435', 1, '772e8a22-6a7a-3866-950c-01792fa63803', '2017-10-22', '2030.05', '4433645', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:06', '2017-11-06 16:08:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, NULL, '629706963', 1, 'eceb8b08-223f-3ebc-b964-d48a4802ddc7', '2016-12-08', '562.03', '25816467', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:06', '2017-11-06 16:08:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, NULL, '743848643', 1, '42507ca2-d8cf-34cc-a8f1-da1182254f9a', '2017-09-21', '429.54', '18427937', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:06', '2017-11-06 16:08:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, NULL, '1200312500', 1, '54621a00-c4b0-35db-bbc4-3f4ced5f7756', '2016-12-31', '1205.21', '48665704', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:06', '2017-11-06 16:08:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, NULL, '701138228', 1, 'c46c96ee-3b5c-364f-9be6-e9725ddf0169', '2017-09-30', '987.31', '6651176', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:07', '2017-11-06 16:08:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, NULL, '395999911', 1, 'cad1482d-87f6-36e1-9a97-a393733bd7c9', '2017-09-29', '2938.07', '42467257', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:07', '2017-11-06 16:08:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, NULL, '513681766', 1, '4ad36315-2040-37e1-af5d-709cf9616d69', '2016-11-25', '2400.42', '49700650', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:07', '2017-11-06 16:08:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, NULL, '479099511', 1, 'dd5e7583-999a-3fc2-807b-ef3393c4fd3c', '2017-05-16', '1805.55', '29075064', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:07', '2017-11-06 16:08:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, NULL, '331827936', 1, 'f2937a6e-6839-3614-bed3-7a744621e798', '2017-01-13', '2072.72', '17201924', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:07', '2017-11-06 16:08:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, NULL, '921682351', 1, '4b081d82-8720-3a28-94d0-bf99e9a752fd', '2017-02-09', '311.38', '34733032', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:08', '2017-11-06 16:08:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, NULL, '437013298', 1, '7288dbaf-273c-3273-9c7f-2278c552bfd0', '2017-02-17', '1478.57', '38516667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:08', '2017-11-06 16:08:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, NULL, '717311235', 1, 'ac0f6024-6d16-36aa-a71e-9a2604efa967', '2017-06-15', '1060.32', '43081728', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:08', '2017-11-06 16:08:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, NULL, '1315987175', 1, 'c34238ff-aec0-309f-ab2e-da5a1cf6ad44', '2017-10-15', '2071.07', '12342875', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:08', '2017-11-06 16:08:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, NULL, '427472846', 1, '00f45646-23da-3a2c-ac66-931db80381a1', '2017-02-26', '304.21', '31776590', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:08', '2017-11-06 16:08:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, NULL, '1011668343', 1, '81451211-141a-3013-acb8-a1f73c32a4e7', '2017-09-11', '853.41', '11631858', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, NULL, '1072583996', 1, '599ba77e-5243-321b-8209-6281953d8920', '2016-12-11', '2588.60', '14417326', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, NULL, '548192607', 1, '58a747a6-2c0b-3f16-bec3-fe8013281f01', '2017-06-05', '2432.16', '15757336', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, NULL, '1407149325', 1, '5333ac16-802d-32ac-a733-a97190a18d1b', '2017-09-09', '1422.62', '34496969', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, NULL, '1224051929', 1, '3fc4242e-92b0-3dbf-864b-f1c745817f85', '2017-04-26', '327.59', '8203587', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, NULL, '1236863248', 1, '08274fa6-a320-3e7f-b3cf-45875c175be1', '2017-01-28', '895.92', '1431969', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:09', '2017-11-06 16:08:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, NULL, '284409652', 1, '9cc721cb-c884-3ccc-a0ed-5caafc29c912', '2017-09-08', '2589.05', '29624364', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:10', '2017-11-06 16:08:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, NULL, '405866995', 1, '936a0d13-75b0-34ec-982f-4a20429c0da1', '2017-09-09', '755.28', '15831463', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:10', '2017-11-06 16:08:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, NULL, '127357592', 1, '656cab0b-15e2-3d0c-a66c-6b180500bcc4', '2017-06-01', '2457.05', '12518237', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:10', '2017-11-06 16:08:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, NULL, '329708130', 1, '48693251-c6ab-3b59-8930-2f90d4546272', '2017-05-25', '2393.23', '14650099', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:10', '2017-11-06 16:08:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, NULL, '853172405', 1, '81f85120-3b38-383c-9c8c-46d895e1fbce', '2016-11-16', '1612.46', '47918661', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:10', '2017-11-06 16:08:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, NULL, '1079695289', 1, '4fde9dde-571f-3e8e-9d07-68dda38dec05', '2017-04-10', '2521.14', '4098249', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, NULL, '1081262690', 1, '918db701-918d-3f97-8489-8bb2de449c70', '2017-08-16', '526.44', '33594524', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, NULL, '835659717', 1, 'a4deee68-19b8-3929-a141-d93c03936a58', '2017-05-08', '1892.65', '14995576', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, NULL, '841675095', 1, '0867520a-948a-3b17-8832-6806daa2a9eb', '2017-07-28', '864.35', '1808589', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, NULL, '741424488', 1, '77fd774f-03ed-35f3-831d-291b45f6de53', '2017-03-22', '2174.38', '36703943', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, NULL, '733642550', 1, '822bf0c5-f8bd-3e0f-84e5-4f0441afc3a3', '2017-06-22', '708.36', '25002499', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:11', '2017-11-06 16:08:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, NULL, '765587708', 1, '64cd38ec-3fc2-3173-b58e-4882583e83bb', '2017-01-26', '2739.22', '4914235', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, NULL, '91385835', 1, '191ce6e8-c95e-37b3-aafd-454481f8ec7f', '2017-04-12', '1161.29', '28793746', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, NULL, '610818566', 1, '0c994ecb-d68d-3d1d-8eed-bcda0fe801ab', '2017-09-04', '1805.38', '3940269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, NULL, '727553615', 1, 'a7bac70b-7206-34c4-b44d-6db63cb1b8e6', '2017-08-28', '929.76', '12572281', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, NULL, '243122411', 1, 'c5c4bb27-d042-3a50-bdd4-38c36d48a211', '2017-05-15', '497.94', '40804765', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, NULL, '123723282', 1, '78b6571c-cd5f-3b4e-a2a6-c6d555c01f36', '2016-12-26', '476.26', '42908160', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:12', '2017-11-06 16:08:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, NULL, '53808405', 1, '45493a7b-bab3-3010-a2ac-cd1634f646d5', '2017-08-13', '1219.83', '17226685', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, NULL, '925444003', 1, '1e86334d-c763-3b93-b480-9de7fb1fce94', '2017-07-09', '2949.73', '25309525', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, NULL, '1464153086', 1, '7d676ec2-96be-329b-854d-bc182354837f', '2017-04-14', '444.36', '41507794', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, NULL, '516723034', 1, 'eb56eeb1-7baf-3154-bcd4-0f9838ca417f', '2017-04-11', '547.88', '46816505', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, NULL, '1230472489', 1, '528bd0ae-8958-355a-bc8a-6f8a827bc25c', '2017-10-18', '2504.85', '10274387', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, NULL, '772951299', 1, '5805d7a5-a233-3ce3-8dad-a7a1089cb88e', '2017-10-07', '1683.98', '38675673', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:13', '2017-11-06 16:08:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(544, NULL, '263695324', 1, '2618a2d4-3906-3e67-9fa5-56e50e19459f', '2016-12-19', '1452.94', '47816839', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:14', '2017-11-06 16:08:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, NULL, '947142665', 1, '58f632e6-279e-3f3d-b4f3-361187802131', '2017-03-09', '2314.04', '43965929', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:14', '2017-11-06 16:08:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, NULL, '276994366', 1, '492a6b47-a3ff-32f6-a77d-d027d5a22bbb', '2017-05-26', '1526.58', '47909375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:14', '2017-11-06 16:08:14', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, NULL, '1042736806', 1, '9650d2ca-92f8-3a93-b453-b1c068baebb7', '2017-07-31', '1480.29', '17863613', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:14', '2017-11-06 16:08:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, NULL, '917763525', 1, 'bbf98559-1318-365d-8091-38efedb21785', '2017-01-07', '2501.84', '35902454', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:14', '2017-11-06 16:08:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, NULL, '893202485', 1, '143a08fd-3fb2-318f-94ed-c8d4902d9c4a', '2017-08-03', '440.82', '28828951', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:15', '2017-11-06 16:08:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, NULL, '111192068', 1, '9ac1d210-d67e-3644-a719-74c386f28c09', '2017-05-28', '2929.93', '21414210', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:15', '2017-11-06 16:08:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, NULL, '604461004', 1, '0c937458-0c9f-3504-8da3-3b304415d323', '2017-03-28', '1074.46', '2681623', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:15', '2017-11-06 16:08:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, NULL, '1353282924', 1, '083fd36f-0e2b-3781-bf62-559465c65836', '2017-08-12', '827.31', '42868556', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:15', '2017-11-06 16:08:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, NULL, '34938647', 1, '24f12e4d-e5ec-38fe-9e20-546db14a555e', '2017-04-20', '711.76', '13003006', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:15', '2017-11-06 16:08:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, NULL, '1435893161', 1, 'b5a1ca0f-24f8-31fa-849e-67b4b94ff582', '2017-06-08', '1180.85', '38758006', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, NULL, '1665877', 1, '81eb0f6f-f2bd-378d-b38d-ad525da126c3', '2017-07-20', '2423.82', '5157318', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, NULL, '1237416960', 1, '2b90a5c6-46aa-3422-bdb8-9223e051dc7d', '2017-02-22', '2221.21', '30466084', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, NULL, '653799573', 1, '75bf5f84-fb80-3bea-8187-1dbcca55e87d', '2017-07-28', '2075.90', '17016667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, NULL, '1441564108', 1, '4a014601-7656-3cc6-84ef-c2d1e6962f3b', '2017-11-05', '1987.99', '24559970', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, NULL, '1162323232', 1, 'e20dafb1-a46f-31b8-96ac-93bb1980c7a1', '2017-04-07', '534.05', '27314612', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:16', '2017-11-06 16:08:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, NULL, '223141040', 1, 'a8639152-dea2-3fc5-89ab-3d6c293f6cc3', '2017-02-21', '2949.57', '29576164', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, NULL, '722238866', 1, '9b171197-3a63-38aa-9c84-f97f166155dc', '2017-03-29', '1168.83', '8044075', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, NULL, '555157077', 1, 'bd9b8598-4ba7-326e-b810-5817e7425414', '2017-04-20', '2582.25', '38045188', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, NULL, '328921827', 1, 'd575fdd3-c3c2-337e-822e-09b7fe58b381', '2016-12-25', '1975.58', '30964399', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, NULL, '1075830318', 1, '9d4ebd0f-9b80-3925-a724-a22090ef65c4', '2017-05-11', '454.32', '24631456', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, NULL, '415715049', 1, '50781443-1e94-349f-9996-fb30cafb1509', '2017-05-02', '2384.53', '33569796', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:17', '2017-11-06 16:08:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, NULL, '713633497', 1, '7b9f4e26-c809-39c9-9c36-bacda26c4ad5', '2017-03-02', '2998.18', '2557736', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, NULL, '1471368239', 1, 'fa4ae7f1-33d8-3d82-8889-d542ed152192', '2017-11-05', '2635.09', '24518482', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, NULL, '515758400', 1, '23afb6c3-6751-38a9-95f1-e7f4659e3624', '2017-10-12', '824.99', '35715081', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, NULL, '1106923678', 1, '41441ebf-3d10-3596-8a75-f0a6ea5f7c06', '2017-05-25', '2761.10', '20416634', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, NULL, '113948409', 1, 'c074beeb-dd67-33a9-989c-de98906b326f', '2017-09-02', '2146.76', '24633239', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, NULL, '252402942', 1, 'd5f19a05-24a3-32fe-bc6c-c8c68b269497', '2016-11-16', '1647.79', '17286770', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:18', '2017-11-06 16:08:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, NULL, '1491994021', 1, 'b6f999cc-cbc0-3959-824c-aa3713e38420', '2017-09-14', '2221.10', '31238042', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, NULL, '897313227', 1, '4a0f0631-9f92-3f69-9be0-b8126a1b1406', '2016-12-07', '1460.09', '29465909', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, NULL, '1157152530', 1, '6d2556cf-4dec-3f93-82b3-d1e0b3f22771', '2017-07-11', '605.21', '24982517', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, NULL, '240830752', 1, '0bcdb597-ed37-36dd-a770-28a39fab1b2a', '2017-06-25', '1943.72', '41813430', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, NULL, '1468061046', 1, 'd94272ed-e171-331d-af16-2f185fce005c', '2017-08-28', '2093.22', '41753328', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, NULL, '110380898', 1, '0776edd9-9251-3aee-bff7-1d3c12d48b8d', '2017-05-06', '1549.12', '46476695', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:19', '2017-11-06 16:08:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, NULL, '5512568', 1, 'bfd5a16d-b602-3d5c-bb26-31f5cee0a13d', '2017-06-24', '2655.08', '26284549', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:20', '2017-11-06 16:08:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, NULL, '951410957', 1, '6ed25a56-2697-3497-b37a-ccc948676fde', '2017-04-07', '2120.10', '45938137', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:20', '2017-11-06 16:08:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, NULL, '206726826', 1, '5a105c9e-240d-31ca-9fff-02651d07c655', '2017-05-29', '629.85', '13013962', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:20', '2017-11-06 16:08:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, NULL, '582861253', 1, 'cc50d115-af50-3eeb-8b5d-c49b69406988', '2017-03-14', '2641.95', '32484181', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:20', '2017-11-06 16:08:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, NULL, '332283601', 1, '09531c77-1bf6-3a56-b65c-3c34e6e1afde', '2017-05-11', '2975.87', '28686302', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:20', '2017-11-06 16:08:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, NULL, '50903933', 1, '87487523-b536-30a4-86db-b70ec5f692ca', '2017-04-02', '1124.96', '24285468', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:21', '2017-11-06 16:08:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, NULL, '1489239733', 1, '6670e3db-65b5-36a6-9b5b-393455ce5f25', '2017-07-05', '1530.06', '27268054', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:21', '2017-11-06 16:08:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, NULL, '897754743', 1, '7f9c1a1f-fa65-3cb2-a1a6-09afb2a07330', '2017-01-01', '967.21', '38736269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:21', '2017-11-06 16:08:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, NULL, '1105947774', 1, '4641710a-223c-38a3-8d45-17095915d667', '2016-11-19', '2568.58', '31584991', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:21', '2017-11-06 16:08:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, NULL, '137295410', 1, 'f52f979d-2cbb-3cd9-a57f-24144651cdd9', '2017-03-17', '1617.88', '1326303', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:22', '2017-11-06 16:08:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, NULL, '246209197', 1, '1540e484-4a5f-3fc7-ade1-eb429baa67bb', '2017-06-08', '497.99', '35083068', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:22', '2017-11-06 16:08:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, NULL, '1482824788', 1, '162fcd43-9672-3978-b4ca-a742cc59a268', '2017-03-28', '382.71', '37306041', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:22', '2017-11-06 16:08:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, NULL, '690725734', 1, 'f1718e5a-cd85-3c33-864b-1980204a4e34', '2017-08-29', '2716.55', '34368208', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:22', '2017-11-06 16:08:22', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, NULL, '1509861393', 1, '73ece28f-317e-30ea-9135-5bb9016c5995', '2017-01-19', '1962.79', '41708784', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, NULL, '38076797', 1, 'eb9a6772-3813-3478-a7e6-6e6b0cc95272', '2016-12-14', '489.83', '19316352', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, NULL, '1140694598', 1, 'f1bbffbe-a9f9-3dfd-a2b4-2ff81f285af7', '2017-10-10', '392.19', '4041052', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, NULL, '717392362', 1, 'c53936d4-178a-39f7-8b27-5f9bcb67572b', '2017-08-07', '1895.54', '20204136', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, NULL, '422937704', 1, '672010fb-7d42-308a-b49b-3e1fa9590906', '2017-07-01', '678.41', '42242663', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, NULL, '555062443', 1, '5e4b721f-eb76-3565-8fde-5a27600c5779', '2017-04-28', '414.69', '36386583', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:23', '2017-11-06 16:08:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, NULL, '982219137', 1, '90b56fd3-7f32-3056-bb76-cb03e4d8891a', '2016-11-08', '1215.29', '29063309', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, NULL, '1405643509', 1, '33f4918a-d901-3440-bcef-fe04c1547b87', '2017-11-01', '437.36', '27974835', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, NULL, '1347295298', 1, '77bae3ec-907f-355d-a4a2-a617822dafe6', '2017-07-20', '861.76', '27701168', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, NULL, '524227586', 1, '30ff0611-a6a7-3e63-a64c-3fa95750c3f1', '2017-04-29', '1084.36', '17701074', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, NULL, '366409742', 1, '8593f206-30e3-33c9-9966-7841bcc3dd8f', '2016-11-10', '1305.88', '41055815', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, NULL, '315904137', 1, '370930ac-2e93-33bd-ba7a-14be880dd01e', '2017-02-28', '1901.95', '6501746', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:24', '2017-11-06 16:08:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, NULL, '101147305', 1, '9d11ab63-9828-3eaf-a497-a19519d67f11', '2017-10-11', '729.40', '35375568', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, NULL, '1264633153', 1, '94c6a279-5f5c-3aae-8527-a71ea65528aa', '2017-02-14', '1047.23', '41480297', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, NULL, '1097236046', 1, '2dc86272-ea17-3cd1-8426-7dca2c0090cf', '2017-10-13', '1150.83', '47512779', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, NULL, '718926106', 1, 'd2b4ea57-05bb-393b-b17c-7aad90f544e0', '2017-04-15', '713.85', '33583454', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, NULL, '383230184', 1, '60646ec5-fe21-32ac-9c33-17234536ada5', '2017-01-04', '1317.19', '47195330', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, NULL, '463212103', 1, '8a88e52c-81d3-3fdc-a2a6-e28120b60469', '2016-12-10', '2130.40', '36549311', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:25', '2017-11-06 16:08:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, NULL, '281243819', 1, 'd61de50c-c6a0-3cc8-b51d-dd0d5e4ff600', '2016-12-14', '770.74', '25942502', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, NULL, '226709035', 1, 'ef272ce9-0441-3547-bb7d-89cf2bdc0b33', '2017-10-23', '586.90', '43946898', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, NULL, '194803388', 1, 'e9932c80-6130-30d7-933e-a3ae6354e29d', '2016-12-04', '1619.74', '34635752', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, NULL, '213939703', 1, '664dc71c-e097-349a-81b2-3d9519c032a3', '2017-03-09', '582.11', '2740248', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, NULL, '802034153', 1, '8241723b-9ee9-3633-939d-dbde4ce4311c', '2017-03-09', '1882.73', '3637732', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, NULL, '833764421', 1, '86795369-1da0-323a-942f-599be6819735', '2017-04-16', '498.51', '49898506', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:26', '2017-11-06 16:08:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, NULL, '1467599997', 1, '9087f1db-400e-32a8-b342-4b58e44ef8ee', '2017-10-04', '1782.85', '33698539', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:27', '2017-11-06 16:08:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, NULL, '777188606', 1, 'f5a9daaf-c824-3a7e-aa52-a0cf0e6534cc', '2017-04-04', '788.14', '38323567', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:27', '2017-11-06 16:08:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, NULL, '176994932', 1, 'af09dfac-737b-3c47-bbca-b07d38c29d53', '2017-01-06', '2403.04', '11704528', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:27', '2017-11-06 16:08:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, NULL, '470432661', 1, '64be6f43-be9a-3bfa-a1d0-2ecde4cab924', '2017-08-13', '968.36', '20435182', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:27', '2017-11-06 16:08:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, NULL, '460221704', 1, '202f9b67-357a-3dff-9670-c02564c4b312', '2017-08-21', '796.32', '27281498', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:27', '2017-11-06 16:08:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, NULL, '215321258', 1, 'bc175b7d-3611-3443-9329-12844ba0c843', '2017-03-08', '889.10', '45269798', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:28', '2017-11-06 16:08:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, NULL, '1252979058', 1, '7f96c11f-bd9b-35b9-bc86-579e8cf6da6d', '2017-01-04', '2578.13', '45375299', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:28', '2017-11-06 16:08:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, NULL, '165165343', 1, '7b938ef4-d96a-3948-bd00-de1c425e386a', '2017-08-29', '1249.73', '25575428', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:28', '2017-11-06 16:08:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, NULL, '81399472', 1, 'fe27f276-e227-3960-8a0e-0d84f53a5fb4', '2017-04-05', '1480.69', '34756876', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:28', '2017-11-06 16:08:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, NULL, '1378792175', 1, '9c602e4c-b89d-3714-999b-55fc6fe3524e', '2016-12-28', '775.45', '18178548', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:28', '2017-11-06 16:08:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, NULL, '1024043254', 1, '2b3e7b7f-3140-3c65-b4c5-9b9e5d6247d8', '2017-01-18', '2183.24', '14103121', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, NULL, '975780206', 1, 'c7297542-fbbc-38ab-a9ba-ba3547361755', '2017-07-01', '2490.15', '45422132', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, NULL, '1268131242', 1, 'b3004c58-4051-3da1-a401-6ac5eef4878f', '2017-07-14', '1303.98', '42888587', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, NULL, '560939914', 1, '95aa1cf7-dfb1-3763-a699-3ffd2d9d5b3f', '2017-03-25', '1098.04', '27320153', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, NULL, '1334247856', 1, '82b4a543-a70f-3b7e-92eb-29c197a38aac', '2017-03-01', '1291.93', '43797631', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, NULL, '1265570243', 1, '37eb78c8-586d-3321-a5dc-f384ec822f97', '2017-10-06', '881.17', '35896601', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:29', '2017-11-06 16:08:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, NULL, '961252405', 1, '3f57770e-7a83-3bc5-a01e-30924df1937b', '2017-05-10', '2176.73', '4540787', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, NULL, '1251737239', 1, 'bc356aa5-04dd-3036-ac6e-c89e27cb9206', '2017-02-20', '2287.06', '20398887', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, NULL, '993892677', 1, '1ee68599-cb7c-3cf1-a1e2-81a5d4a2dee6', '2017-10-28', '2187.36', '13574848', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, NULL, '424097076', 1, '3f5d9e46-c9f9-3d83-a92d-0a5ce9447de3', '2016-11-29', '2886.99', '39147201', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, NULL, '1205873755', 1, '31ca403c-ed1f-3dd2-bf93-e0393f188597', '2017-10-25', '1283.71', '29768713', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, NULL, '772385679', 1, 'fa369ff6-58a1-3e18-baa0-03b51ec1e909', '2017-06-30', '1062.55', '5697681', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:30', '2017-11-06 16:08:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, NULL, '172626451', 1, 'db3e78c9-f45c-30aa-a69b-881ee7c06ea7', '2017-08-13', '1258.60', '25261595', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, NULL, '564787247', 1, '12f164cf-4c33-396b-8b2a-b1dfdcc78a95', '2017-09-15', '1627.20', '19640207', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, NULL, '1160969235', 1, 'a271cc2e-f4b8-3d1c-96a6-c6c87703c688', '2017-03-23', '2781.10', '4691340', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, NULL, '1022681475', 1, 'bfc4c133-962c-3c8f-a831-8d427f9e42d8', '2017-11-01', '1148.81', '10972122', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, NULL, '599594149', 1, '2ed8508a-708f-3e75-8b20-77bf2cbb7bc2', '2017-09-22', '1154.98', '29948139', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, NULL, '1062469448', 1, '2ceaecf8-9c89-3b4b-a43a-c9230ff8ebea', '2016-11-17', '960.89', '34399930', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, NULL, '1334153095', 1, 'd2b430e0-e66c-3446-800d-fa9c64d7f5a8', '2017-02-19', '2075.92', '21759372', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:31', '2017-11-06 16:08:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, NULL, '271751909', 1, 'ee701a4d-c703-394d-a801-9cea356f4830', '2017-01-08', '616.76', '34785646', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, NULL, '205245365', 1, '754dde15-d0ac-33f7-8e62-859585f44edd', '2016-11-29', '1806.84', '35974651', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, NULL, '12891037', 1, 'e3a4848b-24a4-3348-9b71-dc87de66332c', '2017-06-11', '2265.91', '38613826', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, NULL, '527413389', 1, '51efdf18-b3b1-3e06-9f1b-a43c825ce7de', '2017-03-25', '552.85', '27223800', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, NULL, '97194196', 1, '373f073e-45c6-3801-a1c1-3bfa0b89c8c2', '2016-11-08', '1205.71', '9834587', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, NULL, '1100493195', 1, '2cc00405-ee7b-34d7-9e5e-05f751a4fc0d', '2017-03-03', '1898.22', '42445902', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:32', '2017-11-06 16:08:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, NULL, '734020939', 1, 'b0a12b3c-6f9d-38ee-997a-733f5f6a38ec', '2017-04-20', '1903.24', '41994972', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, NULL, '763142709', 1, 'd15ff55d-50e6-38f1-926f-12144ee9df98', '2017-02-19', '2124.82', '25227569', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, NULL, '942491768', 1, '38ac35a0-4a02-3e2f-acd1-6846d7a7024b', '2017-04-05', '2109.02', '38202107', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, NULL, '429197976', 1, '01903807-258c-3771-a92a-8ab47e04b052', '2017-06-01', '591.89', '20470308', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, NULL, '441577656', 1, 'b92882a1-4fba-3b55-bcd4-e785083e4318', '2017-03-18', '1388.90', '27860332', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, NULL, '330607530', 1, '366d0db5-3b6b-3bd8-99dd-f5f279c344dc', '2017-02-10', '358.11', '48206090', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:33', '2017-11-06 16:08:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, NULL, '80216693', 1, 'f5f76a6e-5a2e-3df4-b5b3-4e22910c174c', '2017-05-27', '1390.31', '25223882', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, NULL, '58660424', 1, '6dddfca4-56d2-3a6a-99f6-6ee316adad2c', '2017-09-05', '2984.23', '24108592', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, NULL, '472828879', 1, '97429528-10b8-3e60-b318-9c8803177699', '2017-09-21', '1059.80', '49493896', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, NULL, '925941116', 1, '4296c23a-26aa-34b2-b096-8a8b7474b53c', '2017-03-26', '599.02', '6205433', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, NULL, '621025693', 1, '256fdb91-8d42-38fa-b329-17e62dab1448', '2017-02-14', '2600.60', '22215833', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, NULL, '1007465546', 1, '08c3b897-6e19-3979-b2c0-6cd171bfa5bd', '2017-10-04', '2499.74', '22927268', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:34', '2017-11-06 16:08:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, NULL, '1341293599', 1, '527390af-9eca-3273-be77-65c2598c938d', '2017-10-31', '814.50', '8998354', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, NULL, '1248641335', 1, '92be1800-3a8d-32a4-b3c8-78fd87847efe', '2017-03-14', '1128.77', '13282577', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, NULL, '1224121438', 1, '84ba740c-05a3-32ee-b2e9-258b3a848a21', '2017-10-30', '2080.98', '1276994', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, NULL, '872312734', 1, '864011d1-78f8-3e3d-9aa9-c7fb73d82202', '2017-08-02', '585.36', '21434477', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, NULL, '42604614', 1, 'e61fa28d-d9e7-3900-8cc3-b6fb11f1987c', '2017-01-28', '894.48', '45209081', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, NULL, '769596330', 1, 'dd2fd5e3-032f-3a29-9e29-7f7b3c6b69d9', '2017-07-16', '2942.88', '31760712', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:35', '2017-11-06 16:08:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, NULL, '213973256', 1, '96c82a9c-e8f4-397b-8192-b4021a8d454e', '2017-01-08', '1502.70', '44932070', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, NULL, '571796942', 1, '385dd92e-8ed8-361e-bc21-cd5e6e058e89', '2017-09-20', '2226.55', '26373958', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, NULL, '1411881492', 1, '5df9acf0-ad7e-3067-84c3-1795a4e4239b', '2017-06-24', '813.25', '16377206', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, NULL, '575297431', 1, 'bf872cef-05a9-3699-b983-4deefccb78e4', '2017-10-08', '813.67', '40970241', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, NULL, '1201361179', 1, '5118bfeb-0216-3318-9a7f-75d00507cf62', '2017-05-24', '1428.00', '43948009', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, NULL, '461688360', 1, 'd291e834-e098-37cc-8bf8-78cf996c9e5d', '2017-09-26', '2054.34', '21267180', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, NULL, '1193529909', 1, '7e2f253c-53a5-3f2c-af76-11ca07a9e28b', '2017-08-27', '686.54', '20201221', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:36', '2017-11-06 16:08:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, NULL, '1114431291', 1, '41a57f61-f243-377c-aa3d-248403a657bb', '2017-06-05', '1184.67', '15158602', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:37', '2017-11-06 16:08:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, NULL, '1167077788', 1, '7d950fcd-7930-3c89-8111-7e867aa1808c', '2016-12-24', '1039.81', '1758190', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:37', '2017-11-06 16:08:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, NULL, '1283985457', 1, 'a49ac0b3-9cfa-384f-9b0d-f3ea13959772', '2017-05-25', '544.78', '12748174', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:37', '2017-11-06 16:08:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, NULL, '1438621697', 1, '610a3b76-b27a-3540-a623-bfc4a6d55565', '2017-04-09', '1638.43', '48774307', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:37', '2017-11-06 16:08:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, NULL, '1327472945', 1, 'aa4fa611-4c7c-3fb4-8b43-5de7dc565ca2', '2017-04-13', '2062.49', '44353175', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:38', '2017-11-06 16:08:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, NULL, '679867232', 1, 'ba5f8461-0f74-3025-a43c-d18b163182be', '2017-07-15', '2677.26', '34336592', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:38', '2017-11-06 16:08:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, NULL, '483365172', 1, 'd8b9b03e-08bb-3502-b966-746e97af2310', '2017-09-25', '1389.76', '14657080', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:38', '2017-11-06 16:08:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, NULL, '1130748234', 1, 'b623b707-0816-3a53-8719-94dad4f580a6', '2017-03-04', '1235.63', '9148714', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:38', '2017-11-06 16:08:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, NULL, '700163076', 1, '7b2f276b-cb18-3941-9925-ccc0786116e3', '2017-09-19', '306.84', '45234166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:38', '2017-11-06 16:08:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, NULL, '936415265', 1, 'e64c539f-ab1b-356c-9330-db7ea3857b4f', '2017-02-25', '1493.47', '41601049', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, NULL, '344283105', 1, 'fd74296b-2fff-3049-b4df-fc41067d8701', '2017-06-08', '2019.64', '44154017', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, NULL, '480332610', 1, 'cd4da601-82a4-3e7b-a65d-f8ed7462f9fb', '2017-02-25', '807.00', '17407094', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, NULL, '853917348', 1, '1b315c0a-a282-3cd8-bac8-dea52309fbc8', '2017-03-16', '2246.22', '24953788', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, NULL, '1479971060', 1, '9052cfb6-d193-3fb4-a4f7-869ff1765a0b', '2017-06-27', '1603.93', '26762322', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, NULL, '1183668988', 1, '79ff06b9-4e9f-3a43-88d8-fb825b2d8bbb', '2017-02-08', '1790.18', '7062690', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:39', '2017-11-06 16:08:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, NULL, '562243597', 1, '13ce09b8-294a-3abc-82cf-08223b3da162', '2017-04-28', '890.03', '33403391', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, NULL, '613619011', 1, 'f4fe041d-8e58-3eda-a7aa-9d91c586c9ce', '2017-04-08', '1731.32', '3403022', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, NULL, '1489815530', 1, '86096cf1-0a52-3de0-ab70-4b0846404777', '2017-10-07', '455.11', '9308334', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, NULL, '1207861934', 1, '3d7f95ca-b585-3835-a061-88df57e5ea05', '2017-07-01', '1574.36', '11634108', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, NULL, '343043994', 1, '140735dc-195e-3b93-ac96-adb2f5ccd866', '2017-11-03', '1577.21', '27347474', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, NULL, '1351847629', 1, '66ea8d7c-d6af-3389-88b4-2a718e408216', '2017-08-02', '2548.85', '21923702', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, NULL, '653599945', 1, '3ceb26e4-e675-3251-9833-2cd1c8d661a3', '2017-07-06', '2305.13', '8542313', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:40', '2017-11-06 16:08:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, NULL, '423399333', 1, '14d12253-c397-310d-b28a-e93219685fab', '2017-03-11', '2603.71', '32773093', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, NULL, '253847430', 1, '584fb6f8-eadd-31ca-8ecb-7b4e9a479a0a', '2017-04-17', '1701.95', '27429218', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, NULL, '581444445', 1, '2e724403-165d-3714-89d2-744f22479a15', '2017-03-31', '1000.52', '25453863', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, NULL, '1215405556', 1, 'd0ce0d05-c245-363e-abb8-dd20bc68964e', '2017-04-21', '2660.35', '33011712', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, NULL, '1375547929', 1, '5d589122-7636-39be-bff2-63ab7820e3b5', '2017-05-05', '2139.17', '26946341', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, NULL, '1154523606', 1, '04266c39-e3ba-3565-97e9-f603c33787d6', '2017-05-26', '2169.13', '46888464', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:41', '2017-11-06 16:08:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, NULL, '572155597', 1, 'd9a7b8d0-4bdd-35aa-8311-4df1d03e6bed', '2017-01-29', '2616.88', '2970067', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, NULL, '410787457', 1, '591560de-eb63-3a5d-a92c-fb2f1a38cad9', '2017-04-01', '2993.22', '23352579', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, NULL, '204572560', 1, 'bd68396c-27d6-3d9b-8f3e-7778bc69b1aa', '2017-01-24', '1998.79', '23189434', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, NULL, '1045734272', 1, '4219cf23-bef0-37c1-8f7b-107d7a524570', '2017-11-01', '2632.38', '2929630', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, NULL, '43395094', 1, '4e09dbca-7b2c-3729-a419-ebe0d4532931', '2017-11-01', '2431.86', '24592874', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, NULL, '892552217', 1, 'cf45cce0-b2b0-3c18-8965-c7da82699ca5', '2017-07-09', '1556.18', '25001033', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:42', '2017-11-06 16:08:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, NULL, '644117195', 1, 'c8da4702-2f81-3d2f-afd7-23cd43a64093', '2017-01-24', '1219.81', '16988602', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, NULL, '1066231760', 1, 'b9c0ddac-a256-33af-b671-2acace833a10', '2017-07-19', '346.40', '42166812', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, NULL, '172269024', 1, '1bf8059f-2ecd-350e-bbad-55758fcb348a', '2017-07-15', '830.53', '43148691', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, NULL, '712370296', 1, 'dc853d8d-0ec8-3dd5-accb-f6de151dbf2a', '2016-12-22', '1826.60', '17341524', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, NULL, '1218067448', 1, '70e8a04f-bea4-3719-8128-47648421b8df', '2016-11-24', '501.75', '42604666', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, NULL, '597827058', 1, '5e65bd6d-ee94-374f-a076-28d2e73ee5dd', '2017-06-26', '812.49', '8945388', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, NULL, '1238679917', 1, '1ffe8359-f609-3104-b1d0-04b9644fe04a', '2016-11-13', '2509.84', '25739275', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:43', '2017-11-06 16:08:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, NULL, '1409614300', 1, 'ea728568-dc10-3884-94d5-4c47678b55f1', '2016-12-22', '1191.34', '36807279', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, NULL, '917012896', 1, '0f423a21-f11c-3d20-adc2-204024206aec', '2017-02-22', '339.63', '20786211', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, NULL, '365274929', 1, 'acfbbc18-d2c8-379c-b10a-997f3ebeb7c9', '2017-07-01', '2162.35', '43005902', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, NULL, '1183956601', 1, 'c1545778-1d00-38de-a2a1-7aaa39d29265', '2017-07-08', '952.43', '18483976', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, NULL, '138174480', 1, '59afaeb3-84a9-39b8-916c-70ef077bfd00', '2017-09-23', '2562.72', '35956605', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, NULL, '619028926', 1, 'fdc0c7cc-9838-3670-81c3-84d853d2c350', '2017-02-27', '2739.96', '25094923', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:44', '2017-11-06 16:08:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, NULL, '1489911655', 1, '8e226c6d-508b-3f60-b7ec-7daa28791ca6', '2017-01-02', '1487.50', '32139241', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, NULL, '1284391561', 1, '7d05d250-e056-3a1e-864b-0887484a7ed3', '2017-02-16', '792.37', '15607298', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, NULL, '36513010', 1, '0e14602f-9289-3c86-b1f4-d499f7488950', '2017-02-24', '604.62', '22798608', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(725, NULL, '94949836', 1, '5f1bf2ea-94db-382c-bbf4-f7f88f4b142f', '2017-08-10', '2409.31', '21731525', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, NULL, '97326340', 1, '6e608e5b-6910-314a-a271-24b8a9808d17', '2016-11-16', '1607.43', '41889675', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, NULL, '552032463', 1, 'd0b27976-cb81-380f-b9b4-48e3c9fd7a57', '2017-07-14', '1589.63', '8626946', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:45', '2017-11-06 16:08:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, NULL, '422460884', 1, '278c55e5-1d90-3699-9939-ba7bcc327988', '2017-08-26', '445.17', '9031855', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, NULL, '1172594455', 1, '9ad0b355-22e8-3ebd-8bd8-8431b3d422be', '2017-03-09', '2826.01', '15190280', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, NULL, '1487494548', 1, '6dd14e96-5d39-32a4-9937-7eb53948486e', '2017-10-05', '2044.67', '6555427', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, NULL, '158223881', 1, 'cb4f8ab7-ae17-3280-b358-35e13c05a7bc', '2016-12-03', '2321.91', '23116792', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, NULL, '724346535', 1, '9549b1a2-d063-31ee-be7f-13809d838f90', '2017-05-02', '1287.45', '25717789', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, NULL, '1082500870', 1, '8453e0a5-68f3-39bd-8577-9c1af8d7205b', '2017-01-18', '2999.68', '46677038', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:46', '2017-11-06 16:08:46', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, NULL, '1088679735', 1, '978b51f9-bd80-375c-bccd-102e0323b26b', '2017-01-06', '1687.04', '22424702', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:47', '2017-11-06 16:08:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, NULL, '58855341', 1, 'b80677b5-9e7d-3bdd-a53e-12ee94368651', '2017-07-09', '1535.77', '44268877', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:47', '2017-11-06 16:08:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, NULL, '693594304', 1, '457b1a2f-f5f7-38fb-8aa7-d86c5edf81a0', '2017-02-04', '618.86', '4744111', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:47', '2017-11-06 16:08:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, NULL, '1454066945', 1, 'ec84149a-ff2b-3090-a358-c86dc0d70647', '2017-05-20', '2226.67', '11413818', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:47', '2017-11-06 16:08:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, NULL, '1019835102', 1, '3c42790a-a69f-3f66-bd00-4ee9b2c08daa', '2017-01-23', '1921.23', '31125411', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:47', '2017-11-06 16:08:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, NULL, '189959691', 1, '84aac787-72b8-3723-855c-a0dbe1d02306', '2017-08-28', '2466.63', '3133066', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, NULL, '202071238', 1, '716a9c6f-cc3c-3464-bc0e-7ef21fa570d7', '2017-05-19', '1404.28', '41029533', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, NULL, '221806353', 1, 'c692478b-ac46-3934-904a-4e561232dbf9', '2017-02-21', '816.57', '40761693', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, NULL, '1055411247', 1, 'aef0cc9e-7dfc-33bb-a3fe-5e5a1772f522', '2017-09-30', '1362.12', '33297195', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, NULL, '147301858', 1, 'c945bb35-2aec-3eca-804b-69d9ee558d3f', '2017-09-07', '1539.59', '41031239', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, NULL, '1369188552', 1, '5a361b8b-79ef-3782-8068-d82b1eedaadb', '2017-06-22', '1545.05', '40930200', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, NULL, '364998407', 1, '21048559-ff9f-3c2a-9563-33bed0cbfcce', '2017-06-30', '1044.81', '18374400', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:48', '2017-11-06 16:08:48', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, NULL, '523049251', 1, '1d9045bb-83a2-34a0-bb72-a6146329232b', '2017-04-15', '2376.89', '2336170', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, NULL, '1476711981', 1, 'd582ed10-5be3-315b-8a15-917da326fa78', '2017-08-11', '2327.49', '29300862', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, NULL, '1096553660', 1, '5f34b12a-6586-33e8-9ca1-cf0d1c0e9564', '2017-10-14', '1432.38', '17368930', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, NULL, '1316207897', 1, 'ab03b08c-be26-3bdd-9598-7e663bfacc8e', '2017-09-17', '2188.34', '20948641', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, NULL, '568570368', 1, '7f5e08b4-376d-3a3c-986e-891188e86539', '2017-08-02', '301.84', '24720098', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, NULL, '761514409', 1, '5ef7599b-d16f-3fc0-b2b5-df21dcaaa9fe', '2017-03-24', '929.62', '1101570', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:49', '2017-11-06 16:08:49', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, NULL, '199895694', 1, '0e9d719a-8176-33eb-92be-65bef15f10a9', '2017-09-08', '878.36', '22603360', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, NULL, '10057819', 1, 'fbbb18c0-0ed4-37b0-bf69-6f2325fe924c', '2017-07-13', '453.15', '12664436', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, NULL, '621827040', 1, 'd31824a3-9984-303f-9a00-36a18cbeb5e9', '2017-04-11', '2940.21', '13672904', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, NULL, '906857444', 1, 'c770c8d9-f0e1-33a3-8545-b40272fc6331', '2017-06-18', '2720.67', '10664703', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, NULL, '900197091', 1, 'cb20e79f-8f5e-3b71-96cd-3529259d2edf', '2017-08-24', '1916.31', '22804264', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, NULL, '843038839', 1, '9d14a49b-8516-3e01-a9e1-06233dbbf050', '2016-11-16', '2405.99', '6535278', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, NULL, '26803336', 1, 'b91e71ad-4bb9-3220-934c-e6d86b58a75b', '2017-05-17', '894.35', '22234914', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:50', '2017-11-06 16:08:50', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, NULL, '757395935', 1, '371ce87a-3224-3ede-99f0-a50602129eb2', '2017-09-28', '1865.74', '25674667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, NULL, '1037300039', 1, '7b8dc464-ea95-3f09-87db-03347bf4d3d4', '2016-12-13', '1984.08', '11681578', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, NULL, '133970818', 1, 'a17e1ceb-3027-30bf-a45d-0f0342c952f5', '2017-01-31', '612.19', '47722475', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, NULL, '1201988308', 1, 'a771a842-0195-386b-90b4-95eaecf7ce97', '2016-12-28', '570.10', '34764972', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, NULL, '1028352331', 1, '99575abb-c7dd-3bba-80cd-4e01a45531f4', '2017-09-29', '2631.05', '46652434', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, NULL, '1237103688', 1, 'c4b90c8f-cc75-3471-91b2-295dec325df3', '2017-05-17', '2666.39', '48572283', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:51', '2017-11-06 16:08:51', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, NULL, '452970886', 1, '62cffbca-c3f1-3a97-adb5-f007588ae516', '2017-01-28', '1907.81', '3489510', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, NULL, '827166969', 1, '0f08f1fc-6232-332a-8395-00bc96335f7f', '2017-04-01', '1324.88', '17919029', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, NULL, '1081019614', 1, 'd771a708-785e-345f-97b7-e2dc7efc165d', '2016-12-07', '1836.53', '3222743', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, NULL, '32890496', 1, '5a1f6f88-b70b-3d17-95ad-196e87a80e2b', '2017-03-27', '2696.10', '5762926', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, NULL, '539436335', 1, '38cf2505-48a0-3078-a1f3-6665efc16c1a', '2017-11-04', '953.39', '42717117', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, NULL, '399496880', 1, '49aef84e-d7e0-3be4-890f-4b2a82427486', '2017-06-23', '2036.75', '8566232', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, NULL, '71007836', 1, 'deaa7d86-d799-3c10-bc20-2622da3f2fe6', '2017-02-22', '1069.41', '9366389', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:52', '2017-11-06 16:08:52', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, NULL, '345386927', 1, 'c1c7f1ea-a792-317d-a109-f43f5898d143', '2017-08-15', '643.68', '27597918', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:53', '2017-11-06 16:08:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, NULL, '52572004', 1, '19ba7cf4-d56b-371c-9015-b6ec0bfafa28', '2017-05-24', '1013.36', '4027489', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:53', '2017-11-06 16:08:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, NULL, '1484319471', 1, 'b55204ed-5874-3ee2-a9c5-8f9c7ab48d6f', '2017-08-04', '1404.16', '24166397', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:53', '2017-11-06 16:08:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, NULL, '114458337', 1, '87916526-5605-3a8d-a046-402954784f8f', '2017-05-19', '2214.19', '41318399', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:53', '2017-11-06 16:08:53', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, NULL, '698148114', 1, 'b3afd7d6-0888-32d5-ba8c-44e07fb4347a', '2017-08-26', '1896.92', '36643048', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:53', '2017-11-06 16:08:53', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, NULL, '1451130256', 1, '43d8d677-eed7-315d-8001-fddd5501908b', '2017-09-23', '2873.03', '11097117', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, NULL, '1116182158', 1, '70d5f9d2-7614-3def-984a-d2b0a8a148da', '2017-09-18', '983.51', '33687550', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, NULL, '73188072', 1, 'bb1db0da-831e-3aa0-b15d-ec0f52ac92da', '2017-02-16', '1930.99', '5981669', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, NULL, '796678456', 1, 'c77ada3f-c7bf-30e9-af44-0e6caf552ae5', '2017-08-14', '2444.32', '14622950', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, NULL, '1224086056', 1, '79a15990-0165-3e19-9a9a-966a11d460b3', '2017-03-05', '654.24', '7753422', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, NULL, '1334090069', 1, '8d4d4db4-911d-3a98-a3a0-b457222a4bbd', '2017-10-13', '1812.50', '49123375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:54', '2017-11-06 16:08:54', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, NULL, '641561794', 1, '88664664-ad7c-3e05-85a6-ef6daab9fd7c', '2016-11-27', '1145.47', '10674597', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:55', '2017-11-06 16:08:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, NULL, '536997961', 1, '608cf06c-f5ed-3c6a-9651-079ec7590307', '2017-08-11', '2847.94', '13841210', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:55', '2017-11-06 16:08:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, NULL, '573379636', 1, '35636ea3-51d9-3882-8127-5dc65c6b675d', '2017-06-21', '678.16', '6066935', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:55', '2017-11-06 16:08:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, NULL, '54087927', 1, '209850ff-5edb-3268-b03d-98095f5f6c11', '2017-03-26', '2209.10', '23593912', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:55', '2017-11-06 16:08:55', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, NULL, '606312820', 1, '47aa082f-fa48-344f-bac1-25ed6eb2e3ae', '2017-02-19', '1131.05', '39331894', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:55', '2017-11-06 16:08:55', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, NULL, '227321993', 1, 'cb2b274e-a2a6-38a2-8d18-68b7c0b05930', '2017-03-19', '1818.23', '37023807', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, NULL, '212102369', 1, 'bcc23771-58c8-33b1-94ef-5ffbe3cf025f', '2017-03-25', '2976.75', '35690851', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, NULL, '789490946', 1, '190dae75-28ac-36c2-9be1-5fa92ab60ad1', '2016-11-29', '1501.95', '31393578', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, NULL, '177361243', 1, '05a43711-7481-32d0-9849-246b594e7caa', '2017-03-20', '2354.38', '41257695', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, NULL, '1417664562', 1, 'e88726f6-30e9-3649-bd6a-8c1d88e5a334', '2016-12-23', '2494.95', '35754044', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, NULL, '808343475', 1, '230005e2-5a88-3ee3-86a6-45c356c44e8b', '2017-07-31', '1688.52', '12157938', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:56', '2017-11-06 16:08:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, NULL, '1253969180', 1, '11125a72-16d8-3def-a2a8-343b8353a75a', '2017-10-18', '2149.61', '39459463', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, NULL, '925340561', 1, '2e43f6eb-cdcd-3acf-8044-266139d543f8', '2017-02-12', '802.87', '7092631', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, NULL, '691478449', 1, 'f340c767-1d6c-38c3-aa04-a2a6853937f8', '2017-10-21', '2820.86', '35892435', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, NULL, '1011493271', 1, '79265795-7db7-31c5-96f2-2ca612b232aa', '2017-09-26', '1435.25', '2861063', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, NULL, '479395324', 1, 'be1a7877-548a-3302-b034-1d159e69a562', '2017-10-06', '1626.98', '16523866', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, NULL, '795683649', 1, 'f8dde6fc-c769-3e0e-b4bc-feed8e172929', '2017-08-10', '1420.81', '11487987', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:57', '2017-11-06 16:08:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, NULL, '563586009', 1, '5b271596-64e7-38b3-897b-7f3e76b8e41c', '2017-01-04', '2650.61', '22193742', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, NULL, '471727827', 1, 'e30be559-035e-32f6-887a-0258a4d2882c', '2017-10-15', '1682.67', '42386024', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, NULL, '422501008', 1, 'ba4a26ca-f420-3eb8-bef6-c62664508d00', '2017-10-01', '1329.53', '17461607', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, NULL, '1356712699', 1, '7fd1aab4-fc10-30a9-a810-451dc9a842dd', '2017-04-12', '2300.97', '40061491', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, NULL, '608499757', 1, 'e5786984-e257-3f03-8b6b-49c9c8308301', '2017-07-01', '1687.93', '32343355', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, NULL, '685364004', 1, 'cc9119f6-b59c-3b8e-811e-f35390e53dab', '2017-06-03', '2239.85', '39930763', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:58', '2017-11-06 16:08:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, NULL, '944236771', 1, '5d95e4c2-0b04-3e89-b29a-903e16dc71cd', '2017-03-18', '2480.19', '40531728', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:59', '2017-11-06 16:08:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, NULL, '1135571838', 1, '735d7e53-1ff1-3233-a554-6265c1145acc', '2017-05-04', '355.71', '15307052', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:59', '2017-11-06 16:08:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, NULL, '1407954932', 1, '7dac12bf-b674-3cca-8e5e-a7a632231348', '2017-02-06', '506.62', '23633848', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:08:59', '2017-11-06 16:08:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, NULL, '863456790', 1, '4a0579d1-0c26-3c27-a2de-4766161bd5ae', '2017-07-01', '2832.58', '6144045', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:00', '2017-11-06 16:09:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, NULL, '874959184', 1, '1aac5463-e32e-3a30-9864-67919461e83f', '2017-05-31', '2283.92', '5586656', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:00', '2017-11-06 16:09:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, NULL, '765128884', 1, 'dd8d108d-abb8-3d2d-bfb3-314e38f0b9b0', '2016-11-12', '1271.27', '4567580', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:00', '2017-11-06 16:09:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, NULL, '894411715', 1, '70190323-80c3-3aab-be7f-59ce4ed9859f', '2017-10-15', '1499.81', '10186713', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:00', '2017-11-06 16:09:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, NULL, '1333325634', 1, '1889c75b-211a-3504-a870-2b990980e741', '2017-07-06', '868.20', '42963458', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:00', '2017-11-06 16:09:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, NULL, '32646564', 1, 'a8517525-c2ba-3dba-9c53-a4daec6f60d1', '2017-06-04', '1214.95', '49861309', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, NULL, '1412409448', 1, '9212e8c9-0e05-3133-96b4-fe09492620a4', '2017-10-12', '2397.27', '18166038', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, NULL, '948899602', 1, '0ffeb23f-1521-3f13-be8f-0b631436f7f4', '2017-04-06', '402.14', '7994235', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, NULL, '380629469', 1, 'a071e2af-5905-30b7-b9df-3644bfa3b66b', '2017-03-10', '1705.50', '23970793', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, NULL, '837054610', 1, 'f2069097-f0b3-3438-b6dc-7c64c2934fb4', '2017-04-30', '2197.63', '8642978', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, NULL, '747366752', 1, '5af3908d-3eee-3b0e-95a4-c8f001a2f8a9', '2017-09-26', '307.34', '33430936', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:01', '2017-11-06 16:09:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, NULL, '169622900', 1, 'f3325887-8e95-358f-b712-f6ed768327b7', '2016-12-04', '2508.62', '14981996', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, NULL, '1449336584', 1, '33cdc7f6-fc59-3f4c-aca3-8671687ef692', '2017-07-31', '302.33', '8510910', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, NULL, '3305615', 1, 'ad9c680c-7591-36b2-9583-5dfe8a68c949', '2017-02-18', '632.49', '13819024', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, NULL, '262013204', 1, '836b4917-f6dd-3826-9c0b-1661090b4e4f', '2017-06-26', '488.58', '18696836', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, NULL, '1371094435', 1, 'b9bccd97-1a6b-342e-afcd-e5284cd21830', '2016-11-21', '2819.73', '2873904', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, NULL, '1159768240', 1, '483f5650-3819-3d45-a190-1c8c0049f327', '2017-10-27', '1866.42', '36723641', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:02', '2017-11-06 16:09:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, NULL, '817677067', 1, 'aca00cf7-4800-3562-853d-88b8a11c8f95', '2017-05-11', '1013.90', '18783931', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, NULL, '251564922', 1, '4080c53e-c1e9-311f-b178-da218b3ebfc8', '2016-12-05', '2473.44', '32172919', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, NULL, '124867203', 1, 'f858b048-0742-3409-90fd-46b908a67f9f', '2017-09-20', '1963.01', '45290792', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, NULL, '270340554', 1, 'c3378999-a7bb-3131-89c5-ac4c8cea8f2d', '2017-03-14', '2580.64', '44968589', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, NULL, '1361647568', 1, 'cc06230d-9cd1-318d-a445-dc0b7d855e16', '2016-11-28', '2829.79', '49307052', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, NULL, '1251753329', 1, '18df6aeb-f4f9-345d-9358-bf7ead7c6692', '2017-07-19', '1939.21', '21874018', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:03', '2017-11-06 16:09:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, NULL, '595846681', 1, 'dab17a8f-37af-3b65-bc28-9251111fce2a', '2017-03-04', '1397.04', '2126023', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:04', '2017-11-06 16:09:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, NULL, '135124487', 1, '7eb9c7b0-ccb7-3dc2-888b-d5bcbbd23e9b', '2017-06-04', '2894.02', '43289733', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:04', '2017-11-06 16:09:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, NULL, '811217676', 1, 'ddb568fe-e4b9-3a19-87b7-6ef6d6f967f2', '2017-04-12', '2393.51', '33844780', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:04', '2017-11-06 16:09:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, NULL, '1228815402', 1, '955f7d73-6400-3bdb-b1cc-348f7820e7bc', '2017-01-02', '822.96', '35472315', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:04', '2017-11-06 16:09:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, NULL, '119043059', 1, '88320973-6d8d-3b77-9b58-7e95bc9af496', '2017-03-12', '440.83', '12066969', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:04', '2017-11-06 16:09:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, NULL, '1020638060', 1, 'cf4c10e8-2dc8-3e69-acf7-e0617e54e551', '2017-09-26', '1241.21', '44333547', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:05', '2017-11-06 16:09:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, NULL, '1111251195', 1, '3a3b3c4b-a692-392f-91f5-59786365377f', '2017-05-06', '2610.43', '16397835', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:05', '2017-11-06 16:09:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, NULL, '469973833', 1, 'e3d47cef-da19-347f-a741-cc05529a7082', '2017-01-26', '1318.74', '44364286', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:05', '2017-11-06 16:09:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, NULL, '234138765', 1, '964e0109-d40c-3ced-9ece-666ce9d38994', '2017-07-18', '2919.64', '43672897', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:05', '2017-11-06 16:09:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, NULL, '990596552', 1, '627b849f-d135-39a1-aac5-a9a2b89b60bf', '2017-10-13', '1839.97', '47073004', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:05', '2017-11-06 16:09:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, NULL, '1449786714', 1, 'e507784d-0fdb-34dd-a676-3c457293bcf3', '2017-06-30', '1363.73', '19750392', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:06', '2017-11-06 16:09:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, NULL, '602079234', 1, '76325713-ee7d-3419-9a84-f6b05f597be1', '2017-09-24', '724.96', '4955560', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:06', '2017-11-06 16:09:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, NULL, '685597180', 1, '048e62f6-a837-3f56-81a7-6ac59b4adcd4', '2017-10-08', '1671.36', '41456998', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:06', '2017-11-06 16:09:06', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, NULL, '1054675235', 1, '99a0a5d2-29c3-33b0-892c-822c38ffb82e', '2017-05-09', '1473.41', '43799795', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:06', '2017-11-06 16:09:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(846, NULL, '1236737922', 1, '0d1e1b64-257c-32f2-b3b5-d9b4f81deb2a', '2016-11-30', '324.71', '34611725', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:06', '2017-11-06 16:09:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, NULL, '1368502349', 1, '536b7bc9-f813-3637-ac31-fee828d5d375', '2017-06-30', '844.65', '26201889', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:07', '2017-11-06 16:09:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, NULL, '11544745', 1, 'abdb0787-37e3-38b6-be89-c224d131fa5e', '2017-09-18', '2004.37', '6834837', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:07', '2017-11-06 16:09:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, NULL, '326191022', 1, 'f6dbf03e-a29b-3023-9249-b8d9c02dbd1f', '2017-05-21', '2856.94', '15630126', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:07', '2017-11-06 16:09:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, NULL, '987099524', 1, '58101881-d26e-3897-be9d-b71122408546', '2017-01-24', '1548.42', '20047469', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:07', '2017-11-06 16:09:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, NULL, '612673311', 1, '69106aae-5c8d-373c-b0a6-db628b64895d', '2016-12-15', '2183.60', '36172141', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:07', '2017-11-06 16:09:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, NULL, '1038786930', 1, 'e5c46354-0712-3c7d-99bd-379ab27d5ae1', '2017-07-15', '1354.98', '46834122', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:08', '2017-11-06 16:09:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, NULL, '1160999492', 1, '3731f1e3-559c-3207-81e5-e6b507347cab', '2017-01-08', '2500.71', '36123339', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:08', '2017-11-06 16:09:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, NULL, '400136285', 1, '1bdccaf2-df94-3053-8ad9-7ed8e4bf50ff', '2017-01-09', '2557.86', '26725899', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:08', '2017-11-06 16:09:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, NULL, '180768029', 1, 'f1b48704-2af5-3b63-8af1-792eddd292d9', '2017-06-12', '2294.97', '37520072', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:08', '2017-11-06 16:09:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, NULL, '476842749', 1, 'c5ed0326-7fba-39d0-bd60-95ba5a3e3adb', '2017-02-17', '2887.12', '43330893', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:08', '2017-11-06 16:09:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, NULL, '597178860', 1, '93f5ee35-5c06-3dc0-bb07-de41e188147b', '2017-03-02', '1693.55', '46471807', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:09', '2017-11-06 16:09:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, NULL, '31610248', 1, 'e7dcdba1-593e-385e-83b3-5bf092748775', '2017-03-04', '342.61', '34015118', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:09', '2017-11-06 16:09:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, NULL, '605629411', 1, '787bcb3f-e4aa-348a-9b5a-b342a8642152', '2017-09-01', '2230.29', '19760199', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:09', '2017-11-06 16:09:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, NULL, '1273628708', 1, '6b931e7c-742c-33ca-a0e9-ce2078481807', '2017-09-14', '2634.65', '39641419', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:09', '2017-11-06 16:09:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, NULL, '268639264', 1, '9c7bfbe6-fbee-3afa-972a-72f2fb0b412b', '2017-07-15', '767.90', '45563934', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:09', '2017-11-06 16:09:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, NULL, '1405365214', 1, 'eec060f6-6868-320a-b0fe-2ce7c5345c27', '2017-10-06', '2400.07', '46167376', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, NULL, '421609216', 1, '4f2b91f3-89aa-333a-af36-c1b5567e202b', '2017-01-09', '1464.86', '4315899', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, NULL, '641493580', 1, 'd7dc2c44-3e86-338f-a833-d4faa66ead4e', '2016-12-20', '1206.53', '30083612', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, NULL, '670429040', 1, '973b935a-3008-328a-a6d1-981e2d2e2dba', '2016-11-24', '2463.86', '11630503', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, NULL, '822075890', 1, '00c5754e-d639-338f-8d70-be2fc7e083b7', '2017-06-03', '1830.59', '31718255', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, NULL, '553280003', 1, '1b1c14ce-8964-3242-9a86-82beb58a7e57', '2017-01-07', '359.48', '17615645', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:10', '2017-11-06 16:09:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, NULL, '457897323', 1, '39cce8a3-d3b8-3c60-b361-4d50b75ef736', '2017-04-21', '406.08', '21701098', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:11', '2017-11-06 16:09:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, NULL, '320522817', 1, 'e3656520-a077-3a2f-8cfd-7159bd409f6d', '2017-10-06', '712.77', '23045016', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:11', '2017-11-06 16:09:11', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, NULL, '1326407158', 1, '5aca97b7-7a3c-345b-b45c-935afad39620', '2016-12-23', '1192.22', '19453990', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:11', '2017-11-06 16:09:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, NULL, '725211913', 1, '59148c48-6ab5-330b-88c8-b9eae32e08a3', '2017-06-22', '614.63', '49958460', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:11', '2017-11-06 16:09:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, NULL, '175409998', 1, 'd7f759bc-e57d-3c14-b1aa-004f9507261c', '2017-01-19', '2123.77', '23414371', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:11', '2017-11-06 16:09:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, NULL, '56406928', 1, '7e91ddfc-e21d-3f95-ba3b-8dc87d475d53', '2017-05-13', '1853.10', '6047865', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, NULL, '764376823', 1, 'a98ade9f-436b-3a49-91f5-624798fb059e', '2017-02-04', '2576.02', '15475978', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, NULL, '304285293', 1, '6ac781e8-f184-3f7d-a9ed-04600e394fa9', '2017-02-10', '2442.53', '45701008', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, NULL, '689604678', 1, 'ad573b31-e1e8-3da3-ad27-e35d9fe64fdd', '2017-10-23', '2149.25', '13021677', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(877, NULL, '660364090', 1, '53e708c9-06bc-3faa-8d66-de1cd5f086f3', '2017-10-07', '1501.10', '5565032', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(878, NULL, '1338727876', 1, '4a256f77-26c0-3170-94a4-1622f1d31cbf', '2017-04-04', '2736.76', '44406893', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:12', '2017-11-06 16:09:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, NULL, '616788116', 1, '57160681-1ac9-3970-948a-f1bba0fdbc9c', '2017-07-22', '1051.67', '26975353', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, NULL, '239594592', 1, 'f51f751d-feaf-3554-9689-a42db43f6996', '2017-03-18', '2334.78', '41796269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, NULL, '369707952', 1, 'a1cb0a46-fcf7-3296-82c3-de53f97c1f3d', '2017-08-12', '1501.31', '46709929', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, NULL, '1297563891', 1, '44acafec-b8c1-38f9-bf6a-ddc761f7f42b', '2017-05-03', '2623.87', '3133606', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, NULL, '366535465', 1, 'e61bf496-3a13-3e7b-b76b-eb0ec1f3c508', '2017-03-21', '2164.12', '7284872', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(884, NULL, '792296220', 1, '2506a648-1494-31ba-bec3-b972e42ab54e', '2017-03-26', '2458.27', '10761274', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:13', '2017-11-06 16:09:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, NULL, '1200186303', 1, '0ada2074-21c9-3050-9104-06100c38bb6e', '2017-07-19', '2237.75', '47969237', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:14', '2017-11-06 16:09:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, NULL, '1412681947', 1, '34639696-482b-31e1-bdba-0d0f47df7f61', '2017-10-22', '835.30', '12135471', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:14', '2017-11-06 16:09:14', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, NULL, '1347063989', 1, 'f049305a-0bad-37e8-bd0f-5b713fdf902d', '2017-04-02', '751.33', '48392447', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:14', '2017-11-06 16:09:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, NULL, '1436185352', 1, '6959a1b9-2082-3b06-bfb6-2d4202f99619', '2017-04-30', '1315.77', '3444070', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:14', '2017-11-06 16:09:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, NULL, '1504203396', 1, 'f7d87304-9f34-32b5-8ecc-b2fb9d89d32d', '2017-07-09', '1372.42', '32513677', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:14', '2017-11-06 16:09:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(890, NULL, '1413545253', 1, '3ac016b9-c776-315c-b63c-41b062ae35b5', '2016-11-17', '850.94', '8701545', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:15', '2017-11-06 16:09:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, NULL, '236662718', 1, '82f7b31b-173d-3d67-aae6-09bb25f2d777', '2017-11-04', '1903.74', '37933214', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:15', '2017-11-06 16:09:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, NULL, '1213773985', 1, 'fefe86e5-dba7-3245-af66-9e910092fca0', '2017-03-03', '1946.02', '32110159', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:15', '2017-11-06 16:09:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, NULL, '1288660327', 1, 'a28df41d-3811-3a19-9d1b-59038f611343', '2017-06-01', '393.59', '35465241', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:15', '2017-11-06 16:09:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, NULL, '183987915', 1, 'aa051588-0f05-30b7-b10f-61e864aa5b9a', '2017-08-05', '1657.64', '48755534', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, NULL, '782805238', 1, 'a45d4478-a7cd-3cc7-a615-171944ff3bc4', '2017-04-23', '1117.39', '47027711', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, NULL, '701117715', 1, '31793edb-5c02-3c3d-8ef0-d312274592b4', '2017-10-23', '1192.80', '24641412', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, NULL, '1316702647', 1, '22d3fe56-399f-363d-a3cb-1b4e74821928', '2017-08-07', '930.26', '30740599', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, NULL, '1027443029', 1, '902550e7-41cc-33ca-ba89-abb7e66a23c6', '2017-06-22', '2021.79', '20837973', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, NULL, '1317867803', 1, '1916b87e-650c-3eb8-bc63-4c757e3f38ca', '2017-01-10', '1073.97', '7551153', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:16', '2017-11-06 16:09:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, NULL, '9286952', 1, 'd9e4ab09-822b-3852-9051-d46c1b8dc534', '2017-05-21', '2156.42', '7052392', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:17', '2017-11-06 16:09:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, NULL, '42105324', 1, 'b7351ba9-34e7-3b6f-905a-cba18673b0ef', '2017-03-24', '2568.56', '13640384', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:17', '2017-11-06 16:09:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, NULL, '1407987854', 1, '86f9156b-af76-368f-ba48-3d47e993a73d', '2017-06-04', '1480.61', '33804835', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:17', '2017-11-06 16:09:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, NULL, '1495216949', 1, 'a0433eac-584e-34c0-81f2-c201e593fd43', '2017-04-28', '2755.32', '48870231', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:17', '2017-11-06 16:09:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, NULL, '1457587407', 1, '4c09f9ac-76ea-3321-9fe0-b0673c0f700d', '2017-02-14', '327.25', '30481278', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:17', '2017-11-06 16:09:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, NULL, '1440257170', 1, 'a40016fd-7cd9-3aff-a6d3-b7975cfb9636', '2017-04-01', '1367.62', '44638850', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:18', '2017-11-06 16:09:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(906, NULL, '722249388', 1, '244eb8e3-14cf-3620-8f45-4f58a8364059', '2017-07-01', '2226.96', '48574102', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:18', '2017-11-06 16:09:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, NULL, '246205436', 1, '7c78ac9f-df48-3728-aad3-28a009935a29', '2017-06-06', '2865.93', '26163654', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:18', '2017-11-06 16:09:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, NULL, '312886245', 1, '608b88a0-fa1b-3d17-9335-0465a6cf94e1', '2017-08-19', '2571.19', '31444485', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:18', '2017-11-06 16:09:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, NULL, '8342341', 1, 'd4d5b566-e4eb-35a3-8e0e-3636ad86d424', '2017-04-30', '1696.50', '43337270', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:18', '2017-11-06 16:09:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, NULL, '88355331', 1, '95610927-5399-3437-88d4-527bf1ca9303', '2017-09-07', '2873.87', '4649129', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:19', '2017-11-06 16:09:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, NULL, '106151512', 1, '29c8e4d4-e422-3522-b620-ea8abd59dd38', '2017-09-15', '454.58', '13666922', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:19', '2017-11-06 16:09:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(912, NULL, '954209684', 1, 'dd481532-21f2-3c1c-ac92-10a70ce486ae', '2016-11-27', '2995.76', '41817439', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:19', '2017-11-06 16:09:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(913, NULL, '361549866', 1, 'd43e218d-4cfd-3b43-bfaf-aa932a1a9d2c', '2017-01-27', '2917.03', '3300672', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:19', '2017-11-06 16:09:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(914, NULL, '1332007902', 1, '9130d34a-fa41-3881-a862-b52ccfa5fee0', '2017-07-25', '2563.25', '30126602', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:19', '2017-11-06 16:09:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(915, NULL, '949867327', 1, 'a8f0f253-b6ee-3c38-803c-f5672fd85fe1', '2017-11-01', '1789.79', '33229232', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(916, NULL, '119625759', 1, 'ba124a3d-4ff2-33af-8a83-99e5f372dd1d', '2017-03-15', '1093.30', '46835806', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(917, NULL, '198443912', 1, 'b781ff97-422e-3270-a44f-cd5d80d24135', '2017-02-09', '492.67', '42441382', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(918, NULL, '518238005', 1, 'f46764d7-5bef-3af0-8faa-7f58f7fddba6', '2017-08-17', '1580.42', '16155610', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(919, NULL, '494672320', 1, '3220f1f1-cf2b-39cb-a8ed-c1e57477f1a4', '2016-12-24', '1714.30', '16583349', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(920, NULL, '1258655630', 1, '3054f775-0b69-31cc-a83e-c828925c7119', '2017-02-10', '1845.28', '23629831', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:20', '2017-11-06 16:09:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, NULL, '1364593978', 1, '4c78ee5a-7454-3483-a3a9-96b84e5b4a64', '2017-06-17', '441.97', '39621631', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:21', '2017-11-06 16:09:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(922, NULL, '1190215736', 1, 'bd8becc5-1afd-3a4f-90f5-9ddababc4b74', '2017-02-07', '2657.65', '45471528', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:21', '2017-11-06 16:09:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(923, NULL, '727696678', 1, '0f1e6aff-3b8f-3c39-b0c4-ccd9d0ad2da8', '2017-02-16', '2733.96', '46814401', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:21', '2017-11-06 16:09:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(924, NULL, '991900896', 1, '80484599-6626-3fbb-a90b-15fc373fda88', '2017-05-30', '1751.45', '1467794', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:21', '2017-11-06 16:09:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(925, NULL, '305275088', 1, 'decc80a3-f2b8-3ee2-bdba-72cd7f2df57c', '2017-08-03', '1598.70', '19043397', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:21', '2017-11-06 16:09:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(926, NULL, '1253646646', 1, '76ea4db1-6c3b-30d1-ac16-56bcb754d9bd', '2017-06-05', '1524.25', '30773525', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:22', '2017-11-06 16:09:22', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(927, NULL, '1288831623', 1, '2dc478cf-e2e7-3440-b9eb-d56331c46c9e', '2017-07-21', '1943.14', '46992873', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:22', '2017-11-06 16:09:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(928, NULL, '1173745056', 1, '0d1f7549-4b7a-3c10-aa2c-6638c3c7ade2', '2017-06-11', '2635.08', '28944002', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:22', '2017-11-06 16:09:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(929, NULL, '359811485', 1, 'f95dc33b-21e4-38af-9c0c-c80bda3d3fdf', '2017-01-26', '818.42', '15328659', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:22', '2017-11-06 16:09:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(930, NULL, '186787779', 1, 'e0e65a80-31f2-3cf4-b44e-ebd2504ac407', '2017-06-13', '697.88', '39028190', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:22', '2017-11-06 16:09:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, NULL, '330679921', 1, '8f592060-70e9-33a9-85f9-6ed0d5e9b1ff', '2017-08-17', '945.12', '6360101', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:23', '2017-11-06 16:09:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, NULL, '857726835', 1, '9d2012b5-770c-3b79-9489-74726db78511', '2017-03-15', '667.43', '34349074', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:23', '2017-11-06 16:09:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, NULL, '810337673', 1, 'dbd9dc2e-0fef-3035-b84f-fd48b2fed347', '2017-03-23', '380.83', '9361101', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:23', '2017-11-06 16:09:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, NULL, '636768118', 1, 'c6e3eb3c-fcbc-39f3-b340-bc5ddabad943', '2017-08-04', '946.89', '19183770', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:23', '2017-11-06 16:09:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, NULL, '704727145', 1, '120de6f3-1ce7-3d14-9782-697a043d219d', '2017-11-02', '2897.36', '27397950', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:23', '2017-11-06 16:09:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, NULL, '1253042616', 1, '9a37b35e-5963-31d2-8521-cd7b90f5dca6', '2016-12-21', '1349.57', '34449985', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, NULL, '1487278774', 1, 'c8afd0ad-5652-3f40-9bf7-3f8c60c016d2', '2017-08-13', '2449.42', '17402754', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, NULL, '211505052', 1, '1df19373-1835-3cf6-afce-cc5d441dd2d5', '2017-05-06', '1744.69', '46150362', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, NULL, '638527981', 1, 'fff75c81-fdc6-312a-bfd4-4083d18ba33f', '2017-04-27', '538.07', '18579569', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, NULL, '808646523', 1, 'a5591388-daa5-35aa-95eb-77256e7198bd', '2017-06-17', '747.48', '42185844', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(941, NULL, '964654029', 1, '9f3e6e63-8f3a-3ab5-ae48-6c07db2aa0bc', '2017-04-25', '1245.41', '6263046', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:24', '2017-11-06 16:09:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(942, NULL, '248612074', 1, '4f8980f3-efd1-3731-baf4-e0ea74329471', '2017-05-07', '992.55', '12034324', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:25', '2017-11-06 16:09:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(943, NULL, '135494737', 1, '51c477b8-f9ab-3ea9-96a3-5435d6813671', '2017-09-24', '1498.92', '12112569', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:25', '2017-11-06 16:09:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(944, NULL, '1493199082', 1, '5d85cce6-50ef-3e35-8bba-644335a51118', '2017-02-28', '1234.07', '36863846', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:25', '2017-11-06 16:09:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(945, NULL, '1139266578', 1, 'e1f57eeb-592b-3109-815c-4b2b205aa1db', '2017-05-20', '2504.47', '32860217', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:25', '2017-11-06 16:09:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(946, NULL, '1336927577', 1, '97a2b3d6-628c-31f5-9d38-a31e0843fb39', '2017-01-22', '2190.64', '13943369', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:25', '2017-11-06 16:09:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(947, NULL, '1427781941', 1, '8d304c41-c215-3a47-bf60-0154017cd6a7', '2017-02-15', '2452.50', '22672023', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(948, NULL, '322625528', 1, 'be1ace7a-39fe-33ba-8029-1496792e85e9', '2017-07-15', '690.27', '9830703', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(949, NULL, '1364010150', 1, '30d4c52a-27eb-3c2e-87ed-a536159cc6db', '2016-11-18', '1326.37', '49353099', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(950, NULL, '1398287816', 1, 'e4089ed1-44da-3b22-97d8-b6978cdf363c', '2017-09-02', '1525.52', '5443802', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(951, NULL, '30515271', 1, '17ef4a91-e533-373c-b54f-291ff39b1706', '2016-11-07', '2834.85', '41091451', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(952, NULL, '1266346504', 1, '6ec077af-8328-3c4e-a343-feb3865e093a', '2017-05-13', '2485.29', '31822980', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:26', '2017-11-06 16:09:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(953, NULL, '733119791', 1, '04e808bf-cc89-3df8-8cdd-12e8e310b0ce', '2016-12-11', '631.64', '48593614', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(954, NULL, '1121451706', 1, 'd54c9f2a-c25d-3c47-bc0f-6bbf90a1c459', '2017-04-02', '466.77', '21066541', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955, NULL, '11177855', 1, '8f063ec4-48d5-3412-a393-34a17838a55b', '2017-05-30', '841.49', '3767521', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(956, NULL, '1055090291', 1, 'c3c27833-d567-3fcd-a2cc-cef59b8ef958', '2017-09-03', '2320.18', '16583120', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(957, NULL, '249484336', 1, 'cd933416-d86b-3098-96ed-ed599de69a99', '2016-11-21', '2561.50', '21810998', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(958, NULL, '544247353', 1, 'fca3c270-3491-3f30-8356-77da441ddd27', '2017-07-11', '2184.68', '17409946', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:27', '2017-11-06 16:09:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(959, NULL, '673826123', 1, '03a96661-d4f8-38b5-89e8-5a4bf2aa263c', '2017-10-30', '825.68', '12939744', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:28', '2017-11-06 16:09:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(960, NULL, '1360702929', 1, 'a5e552ff-3ae5-3602-a2ab-d9f42365d4e1', '2017-04-10', '396.28', '20248118', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:28', '2017-11-06 16:09:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(961, NULL, '302874812', 1, '0709b31a-08af-3042-b81a-bdc1d1d0997d', '2016-12-27', '1346.50', '10327989', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:28', '2017-11-06 16:09:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(962, NULL, '992085519', 1, 'be222689-2569-3cd1-a2f7-77194f64b95d', '2017-01-15', '2548.26', '22496731', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:28', '2017-11-06 16:09:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(963, NULL, '662828017', 1, '71a9dcf9-274c-358a-9d37-46bfb365b432', '2016-11-06', '730.30', '39147424', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:28', '2017-11-06 16:09:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(964, NULL, '776930142', 1, '0b1ffeac-1356-3702-b978-213f41ad5caf', '2017-05-02', '1905.66', '14133186', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(965, NULL, '1408350673', 1, 'dc32e725-5faa-3d4d-b2b8-117163101d66', '2016-12-27', '1135.72', '36366862', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(966, NULL, '1426361098', 1, '832dc0e7-4174-3174-9a53-9ac16c3f1462', '2017-04-23', '1126.12', '6463890', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(967, NULL, '1257648472', 1, '086ed175-6d39-3f47-9d5f-5f5d8717548a', '2017-04-22', '1956.63', '17464922', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(968, NULL, '664584976', 1, 'dbe1ab11-72ab-34b6-bb1a-d87158995943', '2017-02-08', '1209.28', '25847391', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(969, NULL, '670080965', 1, '7e71e6a7-6129-34b8-9537-746914792732', '2017-04-01', '968.80', '35671320', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:29', '2017-11-06 16:09:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(970, NULL, '814752736', 1, '08a0b1a8-5044-3b7a-9575-4217b5af46cd', '2017-07-01', '2005.72', '17743913', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(971, NULL, '112321581', 1, 'd072127b-89c2-3ad9-a6f9-67b12de93721', '2017-06-06', '344.32', '36371264', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(972, NULL, '1017590679', 1, '24474064-8312-3ed5-9f2a-9d17e7439d47', '2017-06-27', '765.09', '24804031', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(973, NULL, '454710543', 1, '503d2942-1763-32fc-8711-efe700e4ed9d', '2017-09-12', '2145.42', '18641757', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(974, NULL, '702374884', 1, '930a8463-c6ec-39d3-919d-8bbcaf528ba5', '2016-12-28', '1106.14', '9867293', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(975, NULL, '819380871', 1, '894e96fa-389f-35ec-82dd-8037307826fb', '2016-11-23', '1114.54', '23713410', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:30', '2017-11-06 16:09:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(976, NULL, '377763969', 1, 'f89525ae-a217-3e43-803b-b4b48845cdc2', '2017-01-03', '1781.98', '6002039', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:31', '2017-11-06 16:09:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(977, NULL, '524479285', 1, 'ce3b8732-aa86-305b-81a8-1788b9fbb482', '2017-08-08', '2212.38', '35898101', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:31', '2017-11-06 16:09:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(978, NULL, '1160611680', 1, '542bb8d7-0a96-3467-ac65-ab964a13a6c0', '2017-04-07', '2875.83', '7019860', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:31', '2017-11-06 16:09:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(979, NULL, '1157970563', 1, '1bea4fba-3bd3-3848-b2fa-3b1f803ec064', '2017-07-04', '2673.89', '40154282', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:31', '2017-11-06 16:09:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(980, NULL, '165907440', 1, 'e6071cb3-8626-36e9-bcc6-df4e8f404619', '2017-05-21', '1836.26', '8728045', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(981, NULL, '713922765', 1, 'fdb45575-57b0-35f0-a1c2-faf5c81c5115', '2017-01-13', '2826.53', '7969997', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(982, NULL, '1417042518', 1, 'd82ebac5-f5dd-3197-a797-70b1bb32665b', '2016-11-17', '2072.40', '7284691', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(983, NULL, '245844472', 1, '05c84ad3-085e-3db7-9cd6-fdb348b16817', '2017-01-17', '2917.60', '13363121', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(984, NULL, '624925692', 1, '46459ad7-8569-3a6a-a1de-20b5ec37a2be', '2017-07-16', '2037.94', '34583849', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(985, NULL, '155371298', 1, '111344c5-ab43-3e97-a0cb-afbcebf8d484', '2017-10-21', '1968.23', '41640438', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:32', '2017-11-06 16:09:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(986, NULL, '925397764', 1, '31427929-f817-3a87-93f3-e6bac1691d8d', '2017-07-10', '1955.17', '13082518', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:33', '2017-11-06 16:09:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(987, NULL, '825751994', 1, '788cdf0a-f7f6-3f79-8414-422cacf21488', '2017-08-22', '832.61', '28408566', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:33', '2017-11-06 16:09:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(988, NULL, '970734308', 1, 'dcda56e7-e096-3629-85dd-d9a3bd944158', '2016-11-20', '764.27', '25642170', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:33', '2017-11-06 16:09:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(989, NULL, '226141882', 1, 'f00465ee-63d5-3495-b074-b6dce6317305', '2017-01-09', '391.12', '23809019', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:33', '2017-11-06 16:09:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(990, NULL, '379169117', 1, 'f4c1bdff-9c1a-3cbd-8d31-43ca6c9ebdea', '2017-10-25', '1930.64', '33722381', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:33', '2017-11-06 16:09:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(991, NULL, '795710247', 1, 'ebf22f87-f8c9-3cae-b910-c5d614c2f69b', '2017-09-08', '749.41', '47585387', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:34', '2017-11-06 16:09:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(992, NULL, '1488073990', 1, 'fe705407-75ee-399c-97df-81a78e3a2784', '2017-10-31', '1135.59', '32312712', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:34', '2017-11-06 16:09:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(993, NULL, '1459156019', 1, '2b850ceb-6fcd-3f07-8707-ea3ea3f86075', '2016-12-13', '2968.41', '38362760', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:34', '2017-11-06 16:09:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(994, NULL, '1297798032', 1, '3109050d-ea03-3775-b8e4-ed427453e14a', '2016-11-24', '1259.32', '4181363', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:34', '2017-11-06 16:09:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(995, NULL, '134058902', 1, '617e723b-6216-38ab-9c92-5a712177aca1', '2016-12-01', '2853.79', '16459840', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:34', '2017-11-06 16:09:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(996, NULL, '1403634645', 1, 'd7254b86-9c6f-385e-af11-82cb0b7de4dc', '2017-08-01', '2427.58', '1294584', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:35', '2017-11-06 16:09:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(997, NULL, '1387337048', 1, '5128a48c-f24b-3161-992b-8e6a0651bbe7', '2017-08-18', '312.00', '47730153', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:35', '2017-11-06 16:09:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(998, NULL, '306356315', 1, 'dc6d785c-6e8d-3c45-b897-bf9f553dea8a', '2017-05-29', '1257.64', '40507629', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:35', '2017-11-06 16:09:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(999, NULL, '1348413454', 1, '3169ce9b-89f8-3b0b-9f43-3b5d1658a357', '2016-11-08', '1063.59', '16923978', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:35', '2017-11-06 16:09:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000, NULL, '1462727067', 1, 'cdac34d0-4d3c-3ef5-861f-b6c082811a31', '2016-11-09', '2077.25', '43224460', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:35', '2017-11-06 16:09:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, NULL, '729546204', 1, 'b4e73d9f-9e10-3c8f-8fad-8a77395b8742', '2017-09-23', '1040.50', '40093635', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:36', '2017-11-06 16:09:36', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, NULL, '204133376', 1, 'a9e47c76-3074-376e-a7ed-eaf61de4d836', '2017-10-29', '2863.38', '33998438', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:36', '2017-11-06 16:09:36', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, NULL, '1011376746', 1, '3615941b-e8f5-3891-bdd8-ef4e55ff7d57', '2016-11-27', '1614.68', '35486614', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:36', '2017-11-06 16:09:36', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, NULL, '1329201399', 1, '1e2f353c-ec25-3bb7-880c-faa600a5e91c', '2017-10-12', '1081.48', '28767421', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:36', '2017-11-06 16:09:36', 1, NULL, 2, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, NULL, '493811677', 1, 'c4ba9dc6-371e-3993-9d48-ef4dceea90bf', '2016-11-15', '499.44', '9538082', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:36', '2017-11-06 16:09:36', 1, NULL, 2, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, NULL, '1310366869', 1, '51d65243-dd47-3950-83b6-6fb425132b29', '2017-09-14', '1450.64', '17015529', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:37', '2017-11-06 16:09:37', 1, NULL, 2, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, NULL, '1257579347', 1, '996b26de-023e-3b07-a7b2-fbaa9a6db7a6', '2017-06-10', '939.85', '7768660', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:37', '2017-11-06 16:09:37', 1, NULL, 2, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, NULL, '764719976', 1, '9fc9dd8d-5a03-39a2-addf-43e2be63e5a3', '2017-08-31', '848.98', '10189545', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:37', '2017-11-06 16:09:37', 1, NULL, 2, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, NULL, '799890563', 1, 'd6db94f5-004b-309f-8246-e45e1eede757', '2017-04-16', '505.99', '27657292', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:37', '2017-11-06 16:09:37', 1, NULL, 2, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, NULL, '706797045', 1, 'b00cefff-1dd9-3fe9-9303-93c718b57879', '2016-11-25', '2584.29', '40580475', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:37', '2017-11-06 16:09:37', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, NULL, '435256415', 1, '908fec95-6216-3051-a106-a48e3932b3cc', '2017-03-05', '2184.31', '5224035', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, NULL, '1436180522', 1, '3d4c7fe6-fc4f-3a8a-88c1-efab6ea2959f', '2017-10-30', '1430.02', '21149402', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, NULL, '1298252189', 1, 'ac6219fe-93e1-3bc4-a085-d231fb7e7625', '2017-10-07', '1593.20', '31319879', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, NULL, '161750817', 1, '811b01e1-88b2-37fe-8292-6721a857529e', '2017-01-21', '2620.98', '18871169', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1015, NULL, '230041362', 1, '21b496df-1743-3062-a523-0bfed9ba8742', '2017-10-30', '1135.87', '28412121', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1016, NULL, '53326434', 1, 'd8480758-da80-3cbd-ab0c-3f4810ba539f', '2017-09-13', '1124.32', '18917713', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:38', '2017-11-06 16:09:38', 1, NULL, 2, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1017, NULL, '462117520', 1, 'c033371f-74d7-3261-9e24-e722a3afff6c', '2017-10-23', '2724.08', '32434055', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:39', '2017-11-06 16:09:39', 1, NULL, 2, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1018, NULL, '649702401', 1, '934dabad-6fd9-35b4-8888-1d1df2986d4a', '2017-01-10', '1101.17', '17483503', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:39', '2017-11-06 16:09:39', 1, NULL, 2, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1019, NULL, '264690396', 1, '678c8349-0431-353c-807d-1ad3acb39896', '2017-02-10', '2478.75', '41185339', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:39', '2017-11-06 16:09:39', 1, NULL, 2, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1020, NULL, '378651526', 1, 'c5e00913-872f-383f-96a1-9a56d244a727', '2017-05-24', '368.53', '46939530', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:39', '2017-11-06 16:09:39', 1, NULL, 2, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1021, NULL, '551254760', 1, '20a68343-c33c-32b1-9d09-5e4b0ec8ffb7', '2017-09-20', '888.95', '15831471', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:39', '2017-11-06 16:09:39', 1, NULL, 2, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1022, NULL, '340771867', 1, 'cb761388-4229-3924-969f-1080b4609f59', '2017-05-02', '841.89', '36061391', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1023, NULL, '1021390467', 1, '2dc87416-6c68-3d42-b003-d524998f5816', '2017-06-27', '1085.47', '41440840', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1024, NULL, '1086929734', 1, 'ad38c34e-dbb6-3d0c-9478-e9226b7e990a', '2017-04-17', '1307.72', '7015645', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1025, NULL, '1193720194', 1, 'd55dd255-64f3-3fa0-ae42-9a0d1450eae6', '2017-02-08', '2905.85', '22500597', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1026, NULL, '29854466', 1, 'd2ead955-7d6c-3778-acfb-754ad12f8d1c', '2017-05-20', '1277.59', '19924592', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1027, NULL, '886359285', 1, '3e02d761-3c91-34d7-82ac-f2409b6a424a', '2016-12-11', '1624.24', '21349951', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:40', '2017-11-06 16:09:40', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1028, NULL, '40957191', 1, '3e4a7ebb-8a1e-334f-852b-250b45f8c472', '2017-03-23', '1359.64', '30865533', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1029, NULL, '278054197', 1, '1c378894-53d8-3e46-a1cf-21bdde70227b', '2017-08-14', '1070.65', '32571194', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1030, NULL, '270199495', 1, 'ae13e84a-21a5-3838-b810-6a0e75223e6e', '2016-11-21', '2005.11', '24745093', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1031, NULL, '376126250', 1, '07109e03-9e8a-33d6-855d-243210865ca1', '2016-12-22', '1131.07', '15799241', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1032, NULL, '238501286', 1, '953b1763-2d86-32b3-a1f1-3369106e93d4', '2017-03-15', '932.72', '21291681', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1033, NULL, '1332295360', 1, '516ce8a3-79f8-3bd1-8fdc-c54edb8e1835', '2017-10-08', '2519.41', '38686579', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:41', '2017-11-06 16:09:41', 1, NULL, 2, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1034, NULL, '731633607', 1, 'd8cabdfe-6d38-3682-acee-0ddc85f8b294', '2017-03-27', '668.98', '15154220', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:42', '2017-11-06 16:09:42', 1, NULL, 2, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1035, NULL, '632149451', 1, '5d8094c4-1b37-36e8-bf48-8aa793b7c4e5', '2017-01-06', '429.51', '14595002', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:42', '2017-11-06 16:09:42', 1, NULL, 2, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1036, NULL, '195634100', 1, 'f0cadb8b-6074-371c-8781-1b44df619e92', '2017-02-11', '642.55', '26740247', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:42', '2017-11-06 16:09:42', 1, NULL, 2, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1037, NULL, '1038313877', 1, '212509e1-f5fa-3f4b-8ab0-362e8b6a628e', '2017-07-12', '2572.81', '28996371', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:42', '2017-11-06 16:09:42', 1, NULL, 2, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1038, NULL, '1233289649', 1, 'ae694958-86ae-30ac-ab4b-ecc99dc46966', '2017-05-18', '1282.48', '32530732', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:43', '2017-11-06 16:09:43', 1, NULL, 2, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1039, NULL, '1363632699', 1, '1913688f-0f86-35b3-b142-b855bee5ca36', '2017-05-15', '1526.86', '7354362', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:43', '2017-11-06 16:09:43', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1040, NULL, '1122128851', 1, 'd2dedc87-9a9b-33d3-a862-10e7e7bb14ee', '2017-03-06', '2818.02', '16276161', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:43', '2017-11-06 16:09:43', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1041, NULL, '439123769', 1, 'f1db99cc-3b28-3807-98fd-e10ca6a12a02', '2017-09-12', '1143.60', '6420599', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:43', '2017-11-06 16:09:43', 1, NULL, 2, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1042, NULL, '62081713', 1, 'dcadffbf-c912-3050-83e5-427d5fa9f3ff', '2017-09-17', '2720.28', '10916715', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:44', '2017-11-06 16:09:44', 1, NULL, 2, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1043, NULL, '796263812', 1, '2503a343-cd26-3bd8-8669-471ae3e867cd', '2017-02-10', '1085.17', '13099642', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:44', '2017-11-06 16:09:44', 1, NULL, 2, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1044, NULL, '1285067028', 1, '03d7f98d-cf43-3fbc-b829-53a0dd90316f', '2017-07-13', '2801.53', '48347027', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:44', '2017-11-06 16:09:44', 1, NULL, 2, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1045, NULL, '1476787687', 1, '51e6b0d2-c633-3fda-b174-c698a3cea78a', '2017-09-29', '1456.33', '2791725', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:44', '2017-11-06 16:09:44', 1, NULL, 2, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1046, NULL, '1241256654', 1, '79bec158-062b-3206-9739-33f0c13cbb55', '2017-03-07', '2796.32', '32257513', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:44', '2017-11-06 16:09:44', 1, NULL, 2, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1047, NULL, '759720369', 1, '9379d60b-f706-392c-9e91-a7fcc706f7bb', '2017-01-16', '2832.89', '4158534', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:45', '2017-11-06 16:09:45', 1, NULL, 2, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1048, NULL, '1087485915', 1, '7b6b1038-48b9-3f20-b96a-80e10ad4f7cf', '2017-03-05', '2384.06', '32608727', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:45', '2017-11-06 16:09:45', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1049, NULL, '1275159406', 1, '6f939272-c16b-37b5-b2e8-21d40ac89f29', '2017-01-21', '637.28', '4598617', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:45', '2017-11-06 16:09:45', 1, NULL, 2, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050, NULL, '1389226951', 1, 'c2d28575-8339-36ae-b294-c640e6fc6efb', '2017-07-11', '2328.98', '6791658', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:45', '2017-11-06 16:09:45', 1, NULL, 2, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1051, NULL, '1353151757', 1, '0f53dfec-1f42-3ffd-8d39-3d4f97f196df', '2017-09-21', '2901.69', '26082177', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:45', '2017-11-06 16:09:45', 1, NULL, 3, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1052, NULL, '491983996', 1, '64998d11-9e83-3326-875b-5d461dd8d077', '2017-03-23', '2938.72', '19143151', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1053, NULL, '283501635', 1, '2ad5faae-0a26-33e7-a328-762a1e44476a', '2017-09-03', '2500.01', '20925572', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1054, NULL, '214535782', 1, 'd0f8fcf6-c639-381e-b8f9-2f86f46f187e', '2017-01-25', '1032.58', '40216468', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1055, NULL, '505527817', 1, 'd55163d6-6887-3641-88b5-489c52f8278d', '2017-02-28', '1260.02', '3119069', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1056, NULL, '38155617', 1, 'c7abda91-47f1-3ca1-8ba0-b91dcf552b16', '2017-09-30', '2756.41', '25401535', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1057, NULL, '581999547', 1, 'ee55732f-81fd-34f4-af8b-7dabc7d48ef9', '2016-11-15', '1059.86', '18440115', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:46', '2017-11-06 16:09:46', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1058, NULL, '880106767', 1, 'e61909f8-6bb0-353c-a07d-c41b4bb6f90f', '2017-03-17', '2155.35', '21367596', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1059, NULL, '313624529', 1, 'a08807bd-c0b5-3d41-a47e-d328e4b8bf60', '2017-05-19', '1582.19', '7867295', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1060, NULL, '13900035', 1, 'c6186efc-b2d7-375e-aaca-ec20d7926964', '2017-06-25', '2041.57', '3657866', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1061, NULL, '435948947', 1, '5dead21e-7014-3803-bf3b-3ffa73e45e14', '2017-03-21', '2167.82', '32340109', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1062, NULL, '305370246', 1, 'b10624fd-ba9c-3e21-b6f1-946d783e3e70', '2017-01-09', '2241.76', '20107276', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1063, NULL, '683490809', 1, 'ff054502-3bb6-359e-bfc7-12a4785c7d83', '2017-01-29', '1897.16', '3975517', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:47', '2017-11-06 16:09:47', 1, NULL, 3, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1064, NULL, '885025042', 1, 'c6d0492e-86ba-3760-af94-411891f02402', '2017-05-03', '2412.90', '38320787', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:48', '2017-11-06 16:09:48', 1, NULL, 3, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1065, NULL, '251670787', 1, '18482764-b392-3ceb-aa19-0f2f4c96889e', '2017-07-30', '2318.99', '6511935', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:48', '2017-11-06 16:09:48', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1066, NULL, '1189891402', 1, 'e62b58c9-833a-3a01-834f-006796b7f3a9', '2017-06-02', '2427.03', '25373657', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:48', '2017-11-06 16:09:48', 1, NULL, 3, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1067, NULL, '682233367', 1, 'c6e37a40-0de7-3bdd-bf9c-d14f55cf3447', '2017-07-11', '2910.94', '15185383', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:48', '2017-11-06 16:09:48', 1, NULL, 3, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1068, NULL, '430999903', 1, '65dd541f-5d85-3a4f-9355-14d7b2ada7fc', '2017-06-13', '2490.39', '46945548', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:49', '2017-11-06 16:09:49', 1, NULL, 3, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1069, NULL, '155461136', 1, '9563fa03-5f8a-3b1f-9816-2b6e809c8ce7', '2017-07-19', '312.88', '11370749', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:49', '2017-11-06 16:09:49', 1, NULL, 3, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1070, NULL, '574313899', 1, '61eac65f-ffee-3e47-aadd-4a4a77e4e199', '2017-08-30', '1721.76', '35003417', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:49', '2017-11-06 16:09:49', 1, NULL, 3, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1071, NULL, '1151425033', 1, 'f43f15f5-6865-3aa8-9f88-fddb853e1057', '2017-02-21', '1166.61', '48479375', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:49', '2017-11-06 16:09:49', 1, NULL, 3, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1072, NULL, '1393277771', 1, 'c905d6d7-947f-3a3d-ab87-1545d5a8092a', '2016-12-25', '2499.98', '12824987', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:49', '2017-11-06 16:09:49', 1, NULL, 3, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1073, NULL, '625877769', 1, '23c370cd-6ec5-3b7d-8bf2-c81a50a7be53', '2017-09-12', '848.50', '12203543', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:50', '2017-11-06 16:09:50', 1, NULL, 3, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1074, NULL, '12838200', 1, '02a6224d-b66c-3103-a74e-67e9564ee649', '2017-01-22', '2055.73', '31236987', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:50', '2017-11-06 16:09:50', 1, NULL, 3, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1075, NULL, '1115960240', 1, '71979563-7661-34df-9b37-f10c5d89e0b2', '2017-05-27', '673.41', '28341884', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:50', '2017-11-06 16:09:50', 1, NULL, 3, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1076, NULL, '620158002', 1, '175e1eb0-a7b8-3f19-87af-ec8209f0fcb9', '2017-02-20', '2960.39', '29784691', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:50', '2017-11-06 16:09:50', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1077, NULL, '275889769', 1, '5f12d61b-d344-3af4-b6d7-c6eeb6b8cddf', '2017-06-11', '1855.49', '1937158', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:51', '2017-11-06 16:09:51', 1, NULL, 3, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1078, NULL, '408296845', 1, 'eda39e3c-1ff4-3eb1-824f-366a747355c0', '2017-05-31', '1727.89', '45467327', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:51', '2017-11-06 16:09:51', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1079, NULL, '561129785', 1, '26b62bed-9e79-366f-b914-06c31811c32d', '2017-07-22', '1101.18', '25882538', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:51', '2017-11-06 16:09:51', 1, NULL, 3, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1080, NULL, '1232461192', 1, 'd871411d-aef8-3e7c-89f8-77522811c36f', '2017-05-22', '2063.32', '33193306', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:51', '2017-11-06 16:09:51', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1081, NULL, '1259718714', 1, 'c79878bc-8b4c-3e45-bc36-bc19d1109adb', '2017-10-17', '1220.06', '34591477', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:52', '2017-11-06 16:09:52', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1082, NULL, '1333314563', 1, '1d19d139-5330-32db-aef9-9267ef19383a', '2017-01-10', '2925.15', '17958279', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:52', '2017-11-06 16:09:52', 1, NULL, 3, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1083, NULL, '1359180731', 1, 'ee9ac5e7-df74-3227-81ad-f1581e40f422', '2017-07-17', '2608.30', '15544647', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:52', '2017-11-06 16:09:52', 1, NULL, 3, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1084, NULL, '881325105', 1, '6e7a34b4-539f-32e9-a964-10be2957ef8a', '2017-02-10', '2424.62', '29352804', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:52', '2017-11-06 16:09:52', 1, NULL, 3, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1085, NULL, '738169395', 1, '31e92694-db75-3a10-a647-3e0f7b3ce0c6', '2017-01-05', '1379.61', '47392120', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:53', '2017-11-06 16:09:53', 1, NULL, 3, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1086, NULL, '203471636', 1, '011dc97d-2740-39e2-9607-f4cd73bc799a', '2017-10-22', '1234.14', '25543497', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:53', '2017-11-06 16:09:53', 1, NULL, 3, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(1087, NULL, '824618208', 1, 'f71991da-8ad3-393a-aad0-596930df4c79', '2017-06-24', '336.18', '14756463', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:53', '2017-11-06 16:09:53', 1, NULL, 3, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1088, NULL, '157875151', 1, '5166e6ec-fdb7-3976-8656-61b5eaf9dd3f', '2017-03-23', '1386.12', '26837300', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:53', '2017-11-06 16:09:53', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1089, NULL, '909133649', 1, '698e2423-b5e6-3ae6-ab2e-b94e22574fbe', '2017-08-19', '994.48', '12204091', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:53', '2017-11-06 16:09:53', 1, NULL, 3, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1090, NULL, '423638118', 1, '27d0addd-1c8b-3558-a35c-d1732345f50c', '2017-06-27', '1892.63', '4543411', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:54', '2017-11-06 16:09:54', 1, NULL, 3, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1091, NULL, '628565641', 1, '6e66812a-7199-33e8-82ff-38905a506234', '2016-12-31', '2506.14', '21361080', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:54', '2017-11-06 16:09:54', 1, NULL, 3, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1092, NULL, '1157299860', 1, '2e60c54a-a071-3bc3-95b3-7e0c165469b3', '2016-11-28', '2379.44', '21699051', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:54', '2017-11-06 16:09:54', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1093, NULL, '544428480', 1, '4cb8fe47-9aeb-31de-8091-892341e2fd57', '2017-02-19', '1884.19', '20892525', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:54', '2017-11-06 16:09:54', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1094, NULL, '551887198', 1, '3c58e4ca-5200-3c9b-a51b-af85d1f87203', '2016-11-25', '1232.45', '35775811', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:54', '2017-11-06 16:09:54', 1, NULL, 3, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1095, NULL, '526315695', 1, 'e15876c9-0d26-3625-9627-42cb321783c3', '2017-03-03', '2216.24', '29836594', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:55', '2017-11-06 16:09:55', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1096, NULL, '1303080144', 1, 'd81038d8-a379-311e-beae-6fa639fcbb74', '2017-02-16', '645.24', '5719339', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:55', '2017-11-06 16:09:55', 1, NULL, 3, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1097, NULL, '533254862', 1, '3a18eb3e-9b2b-3654-8d95-cc7bb66f5334', '2017-03-22', '1867.25', '28342190', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:55', '2017-11-06 16:09:55', 1, NULL, 3, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1098, NULL, '59766739', 1, 'd70e25e0-6f3c-32c3-9159-09311350606b', '2017-04-02', '657.66', '18328571', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:55', '2017-11-06 16:09:55', 1, NULL, 3, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1099, NULL, '1471489892', 1, 'dec8c545-979b-331a-b503-dd8e31381227', '2017-03-05', '2109.83', '8249903', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:56', '2017-11-06 16:09:56', 1, NULL, 3, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1100, NULL, '1090730044', 1, '4dea3b8b-c4de-3a05-ac6d-038e23d5b57b', '2017-09-22', '1413.93', '14351587', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:56', '2017-11-06 16:09:56', 1, NULL, 3, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101, NULL, '1327907535', 2, '1d7df0d9-8cfa-34fe-aead-7f4f0359ab87', '2017-05-23', '987.08', '46824972', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:56', '2017-11-06 16:09:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1102, NULL, '765708075', 2, '7051d7d5-265d-3d8c-90e2-a1c92c0948d1', '2017-02-05', '2019.18', '26119835', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:56', '2017-11-06 16:09:56', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1103, NULL, '452058276', 2, '37d9dcf9-456c-3862-99e0-57273a34da5e', '2017-03-01', '2440.69', '46092170', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:56', '2017-11-06 16:09:56', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1104, NULL, '1267046357', 2, 'e8425d49-2fc5-348d-b577-162edb93941c', '2017-01-05', '2828.43', '30413853', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1105, NULL, '800367060', 2, 'd75251b8-fa19-37ac-a4a4-4de2deb41e03', '2017-02-24', '2709.45', '32566681', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1106, NULL, '903817472', 2, 'c5b1cede-7bbe-3583-8579-65f3d9c2b0b1', '2016-12-23', '2801.97', '38861898', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1107, NULL, '1457158920', 2, '99d7ae05-8c56-3809-935a-d0d3c564e8e4', '2016-12-06', '1779.40', '4499249', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1108, NULL, '1419723948', 2, 'd8b40aa5-5c49-3eff-971e-b5e43ccc690c', '2017-05-27', '528.73', '13613476', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1109, NULL, '1485397414', 2, 'd7829b7d-2eb7-3623-b7ad-0f7465f55c2d', '2017-09-08', '468.67', '2546502', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:57', '2017-11-06 16:09:57', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110, NULL, '288999422', 2, '2104f4dc-6615-39cd-addb-d0b7dd3f016f', '2017-08-05', '697.81', '44170823', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1111, NULL, '1293933614', 2, '4c292b9a-137c-3e3b-8bc2-322d545a059b', '2017-03-01', '957.65', '36273218', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1112, NULL, '934500166', 2, 'ab41d2ef-21c5-3b4a-8251-7f45e604f7a7', '2017-09-28', '1079.69', '10256250', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1113, NULL, '1136426081', 2, '79708537-ecb2-373f-9dff-4bf6f3002225', '2017-10-01', '2765.36', '39284335', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1114, NULL, '177338412', 2, '0ef4acab-8f37-3850-9a22-a733786d11f7', '2017-11-04', '2947.31', '21283073', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1115, NULL, '1505186982', 2, '226ee5e5-dc74-333d-bbe8-22be8575b7a9', '2017-11-01', '2989.51', '29883769', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:58', '2017-11-06 16:09:58', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1116, NULL, '500779025', 2, '9bcc031e-5ac5-3885-8077-6fe47dfb7d4e', '2017-04-05', '952.15', '47990806', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:59', '2017-11-06 16:09:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1117, NULL, '144038007', 2, '13e37eca-4c60-3f94-9979-1b52604f6089', '2016-12-29', '626.00', '6834625', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:59', '2017-11-06 16:09:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1118, NULL, '395760839', 2, 'a75f21e4-5af2-3eef-8413-aba1d0e3d053', '2016-12-15', '1680.97', '7401577', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:59', '2017-11-06 16:09:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1119, NULL, '747833200', 2, '7ffdfb1c-eda2-34f6-a0b9-8af8a1f6a758', '2017-08-15', '1808.47', '49459989', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:59', '2017-11-06 16:09:59', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1120, NULL, '276201043', 2, 'b03ab9d8-8e49-3b66-84b9-ecffb3179732', '2016-11-09', '1075.09', '40258910', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:09:59', '2017-11-06 16:09:59', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1121, NULL, '903290617', 2, 'eedd449e-6a24-3c8b-aa7b-831a3132c970', '2017-10-17', '1168.52', '45521464', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1122, NULL, '1314539357', 2, 'e9fd4670-3a66-3f1b-afbe-df3400894752', '2017-08-30', '2096.59', '49587856', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1123, NULL, '448496188', 2, '204743cc-0284-3bfe-8a6a-ca068c0aa395', '2017-10-15', '1936.17', '49743488', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1124, NULL, '128689057', 2, '8b757a77-618c-3ab3-ad9b-4c42594a6c23', '2017-09-16', '1908.94', '12850236', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1125, NULL, '4640877', 2, 'ad9c93c9-0d51-38b1-baf1-ca545a68e642', '2017-06-19', '491.93', '23886545', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1126, NULL, '657914399', 2, 'e2cc514e-8ca4-386b-978f-f23a91c86f18', '2016-11-25', '968.25', '11531862', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:00', '2017-11-06 16:10:00', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1127, NULL, '859224122', 2, '2f2aa8e4-3eab-36b4-826a-745403843b9e', '2017-04-28', '731.83', '5348771', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:01', '2017-11-06 16:10:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1128, NULL, '789358620', 2, 'cfa251f9-1b23-3031-aaaf-f1189bff0d7c', '2017-06-22', '2034.14', '21992529', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:01', '2017-11-06 16:10:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1129, NULL, '1228473183', 2, 'ca165f2f-b0be-3d8b-bc22-334a655e9bc7', '2017-05-29', '2538.98', '3653129', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:01', '2017-11-06 16:10:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1130, NULL, '1185434153', 2, 'bf816fd8-771f-3829-b593-8d7180e7bf7a', '2017-04-30', '1626.30', '27718787', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:01', '2017-11-06 16:10:01', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1131, NULL, '1167754388', 2, '5dccb487-8ea7-3f4d-84e2-cb5621b64af5', '2017-04-03', '2868.50', '47804892', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:01', '2017-11-06 16:10:01', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1132, NULL, '254234163', 2, 'e64f3f1e-c64b-3599-a05b-19b64fbeca68', '2016-12-14', '2359.75', '45083664', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1133, NULL, '1443374797', 2, 'afbfeb14-df88-387d-8b06-603b26a9f183', '2017-02-09', '1002.27', '41257729', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1134, NULL, '559356213', 2, 'ca73bc19-246f-3c7f-8795-cb95f7b30e9a', '2016-12-19', '550.31', '45512242', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1135, NULL, '437252082', 2, 'd1e513c1-5185-3c13-a277-fea3ed7eb116', '2016-11-07', '2638.41', '21884774', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1136, NULL, '1481815641', 2, 'f68729b9-bb06-3072-8c66-12f57080be11', '2017-03-13', '1834.85', '22024545', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1137, NULL, '108132383', 2, 'bf739ea5-53c0-37f8-a8a1-0abbe452cb06', '2017-08-05', '1740.88', '3874886', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:02', '2017-11-06 16:10:02', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1138, NULL, '170234031', 2, '3b6ae932-1307-3664-8853-2b14a9fcadaa', '2017-10-21', '2513.39', '19542721', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1139, NULL, '383493055', 2, 'e49c45dd-6a2e-31f8-b457-47bc4c0923d9', '2017-11-01', '1453.94', '42886166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1140, NULL, '1382899080', 2, '3143c9f8-3395-3a6a-a4b3-06320b4ac14c', '2017-07-13', '683.90', '14229388', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1141, NULL, '878589039', 2, '684c843f-8bd8-37f4-89e1-1f19154162fc', '2017-03-17', '1211.85', '25475336', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1142, NULL, '1126234289', 2, 'ba2f3191-7b13-3d24-844f-52a6e77de8d3', '2017-06-04', '864.28', '30933758', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1143, NULL, '840655696', 2, '22035d24-98bc-327b-bd7e-598fd2400c00', '2017-03-09', '2719.28', '39347299', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:03', '2017-11-06 16:10:03', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1144, NULL, '458260986', 2, '1c9cbe97-57e7-32e5-8e80-9cd2e78f352a', '2016-11-19', '2459.49', '21232360', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:04', '2017-11-06 16:10:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1145, NULL, '560516492', 2, 'f28390ac-fd89-32b7-90bf-a25674285783', '2017-04-21', '2968.14', '27687491', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:04', '2017-11-06 16:10:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1146, NULL, '1453077598', 2, '71b2c78c-61ee-3192-b345-00a261caaecd', '2017-03-23', '2682.79', '23183120', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:04', '2017-11-06 16:10:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1147, NULL, '109953143', 2, '5bec7f94-126a-3990-972c-48a692db2c33', '2017-08-10', '1495.64', '41372144', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:04', '2017-11-06 16:10:04', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1148, NULL, '1332017041', 2, '4138ccfa-a612-3166-b493-457f116c4542', '2017-07-30', '1488.78', '7998358', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:04', '2017-11-06 16:10:04', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1149, NULL, '1089176316', 2, '25df6c65-3406-3abe-9b97-38015ce539e8', '2017-01-25', '1131.82', '5137322', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1150, NULL, '528596407', 2, 'b787fa69-fb3b-3147-b2c3-18c8a0825d55', '2017-01-27', '1991.11', '41785263', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1151, NULL, '1419006869', 3, 'e89ed730-35e7-3952-bed4-1cae5adecb75', '2017-10-13', '1013.46', '28386055', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1152, NULL, '201439782', 3, '29a3db5a-18c5-34ad-a0c8-298f2fee2147', '2017-02-24', '684.81', '6400275', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1153, NULL, '857705826', 3, 'dc9ea3bd-b8c2-3a2e-9a74-34a9244db7e7', '2017-05-01', '1415.97', '48158742', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1154, NULL, '1462648452', 3, 'dee41325-2449-3e5f-bfef-6cb7e784a4f9', '2016-11-25', '1621.50', '3859935', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:05', '2017-11-06 16:10:05', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1155, NULL, '947942319', 3, '641f7ce1-8c61-35e1-82d1-e441090f9ed1', '2017-04-11', '2877.32', '14932304', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:06', '2017-11-06 16:10:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1156, NULL, '381831132', 4, '85f2ab79-c342-3205-9c68-f19b8e7ecc56', '2017-04-09', '1113.07', '8183127', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:06', '2017-11-06 16:10:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1157, NULL, '589948764', 4, '5ea040e6-f9d0-333f-aff6-888c56b832ff', '2017-01-28', '2799.47', '9000599', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:06', '2017-11-06 16:10:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1158, NULL, '739488403', 4, 'cd436600-e6db-3966-a1d3-941c08ca327e', '2016-12-04', '1211.52', '42823870', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:06', '2017-11-06 16:10:06', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1159, NULL, '365818906', 4, '8f5ece5f-fe3d-3c05-b4e7-4d7ea9962a90', '2017-03-04', '1083.17', '19249482', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1160, NULL, '735183659', 4, 'f1286f88-47a6-3ff7-9827-addf7c741506', '2017-02-05', '513.36', '11522061', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1161, NULL, '724675500', 5, '5cda12c7-d7e1-3f05-bf0f-6527ce4fa8fb', '2017-07-20', '458.86', '8965000', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1162, NULL, '1073700506', 5, '23e40132-ba2a-3b9f-92ed-4faf3907c383', '2017-02-21', '2728.18', '34303629', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1163, NULL, '352840583', 5, 'e1b504db-33fc-3a08-811d-80c03d43732a', '2017-04-29', '1965.27', '34420678', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1164, NULL, '351002313', 5, '1e7053d4-80a4-3120-9e13-3390b0385ce3', '2017-10-27', '1498.57', '25086406', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:07', '2017-11-06 16:10:07', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1165, NULL, '1002110006', 5, 'b5f2a97d-2e32-3b86-afbc-12e2250dfb00', '2017-07-05', '2080.43', '33834506', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:08', '2017-11-06 16:10:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1166, NULL, '1042656760', 6, '3bbda05f-63fc-39d4-a361-1388f6c4b984', '2017-06-25', '1950.13', '25310524', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:08', '2017-11-06 16:10:08', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1167, NULL, '344887348', 6, '8e7a2182-0a9e-3839-a3b1-db5fb191f1b0', '2017-08-14', '1652.23', '20235994', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:08', '2017-11-06 16:10:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1168, NULL, '447469968', 6, '5b9cf11b-a6bc-3a8a-9c8f-2401899ef2dd', '2017-10-01', '2670.45', '45103863', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:08', '2017-11-06 16:10:08', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1169, NULL, '159262011', 6, 'ce1beec0-b47c-33c3-8be7-8e97475cc717', '2017-04-25', '2533.39', '36623784', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:09', '2017-11-06 16:10:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1170, NULL, '1229319891', 6, '877ac5e4-726b-3942-b508-a313c766e96f', '2017-07-20', '411.79', '42623406', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:09', '2017-11-06 16:10:09', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1171, NULL, '858683908', 7, 'e6c9676f-6802-3690-9481-fbbd60aeb766', '2017-05-13', '353.78', '6974536', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:09', '2017-11-06 16:10:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1172, NULL, '897085000', 7, 'c435a137-974a-3774-8eae-77365a544108', '2016-11-26', '1724.21', '31278100', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:09', '2017-11-06 16:10:09', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1173, NULL, '644167742', 7, 'ad0ea03c-30a9-3dba-990f-38c91c0cd98c', '2017-04-20', '2150.13', '3647320', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:10', '2017-11-06 16:10:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1174, NULL, '1177806162', 8, '91881bf7-903a-3b8e-9d79-69785ceca049', '2017-02-20', '1265.99', '38447124', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:10', '2017-11-06 16:10:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1175, NULL, '1456399222', 8, '099cd2b7-fdc2-377d-9b30-49f56382e3df', '2017-02-11', '342.22', '21297701', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:10', '2017-11-06 16:10:10', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1176, NULL, '664865404', 8, 'e7778397-ebcc-3750-a721-47833470c25c', '2017-01-26', '1966.46', '12783537', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:10', '2017-11-06 16:10:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1177, NULL, '1037783394', 8, 'bcb3aa62-d6eb-3de8-ab61-e1e15d77da8a', '2017-05-11', '1633.22', '29248550', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:10', '2017-11-06 16:10:10', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1178, NULL, '1247383199', 8, '641e944b-99e6-34c3-b2d4-613878321038', '2017-02-18', '2166.82', '17237107', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:11', '2017-11-06 16:10:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1179, NULL, '1127368660', 8, '2051f4ab-03e1-3036-9c0b-a9fb90bf7a0f', '2017-10-24', '2850.00', '47657059', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:11', '2017-11-06 16:10:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1180, NULL, '949351503', 8, '8c729a5f-69e3-387b-b8c7-138b0a294936', '2017-09-07', '700.12', '16077713', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:11', '2017-11-06 16:10:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1181, NULL, '851827285', 8, '2387dd44-49f9-3918-8b29-1a79b6e981f0', '2016-12-21', '2633.92', '30801132', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:11', '2017-11-06 16:10:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1182, NULL, '1142838559', 8, 'd9de3db6-2ee0-312b-95b5-7c2e3eda741f', '2017-06-08', '2338.60', '28628632', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:11', '2017-11-06 16:10:11', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1183, NULL, '639449519', 8, 'f09fbdbe-d9ff-3109-b7a8-de976207ef67', '2017-08-15', '2844.11', '29486548', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:12', '2017-11-06 16:10:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1184, NULL, '497159138', 8, 'fd0da3ee-62d3-30fd-9beb-72c5cb39ce97', '2017-06-04', '2137.20', '44728065', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:12', '2017-11-06 16:10:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1185, NULL, '1384525792', 8, '89531736-f8f5-3e69-9ff3-8fd470f15fd2', '2017-10-21', '685.74', '4822991', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:12', '2017-11-06 16:10:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1186, NULL, '645554977', 8, '8670157c-591a-3899-860a-5629ed1266e3', '2017-07-10', '1806.97', '24277428', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:12', '2017-11-06 16:10:12', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1187, NULL, '1148645775', 8, '9d361f4c-214b-3556-a5ff-3074432cd3c9', '2017-10-01', '2227.59', '30338831', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:12', '2017-11-06 16:10:12', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1188, NULL, '1160754202', 8, 'b43183f5-beb9-335f-babf-d8d086478ae2', '2017-05-06', '2093.19', '9134179', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1189, NULL, '547989456', 8, 'd408aea0-bcd3-3094-877b-f4a45abbffac', '2017-02-21', '2463.07', '36766070', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1190, NULL, '443178177', 8, '03f3c872-32a3-3d06-aca3-c9b752b93fcc', '2017-04-17', '1173.07', '29482626', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1191, NULL, '299412079', 8, 'f14c90b1-59ac-3329-a54e-7657479d06df', '2016-12-17', '584.05', '15939029', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1192, NULL, '443687582', 8, 'd8839de5-e9fb-3a76-8e85-0d21df5043c4', '2017-10-10', '2546.03', '48356416', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1193, NULL, '73360416', 8, 'd6b1337d-4bab-33d9-9a39-32232bd012cd', '2017-06-11', '2736.10', '18739403', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:13', '2017-11-06 16:10:13', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1194, NULL, '1121845303', 8, '6bb298a7-7da2-3fe5-8014-c522fd46466f', '2017-08-19', '2346.15', '36304234', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:14', '2017-11-06 16:10:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1195, NULL, '1481553250', 8, '4c3fe0f6-8f00-394f-bfc3-3fbb69857b00', '2016-11-18', '512.00', '25211158', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:14', '2017-11-06 16:10:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1196, NULL, '758915002', 8, 'd39d5335-881e-34fb-b73a-caf308ccb1a5', '2017-01-22', '1861.05', '10594753', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:14', '2017-11-06 16:10:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1197, NULL, '1043515636', 8, 'e6b2626f-4e5e-330b-b418-a00a40ec950e', '2016-11-29', '1411.80', '48378522', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:14', '2017-11-06 16:10:14', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1198, NULL, '177244809', 8, '4d3003ee-f08b-32c8-b7e8-602f5cfe6b6d', '2016-11-09', '610.06', '32553723', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:14', '2017-11-06 16:10:14', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1199, NULL, '1008136928', 8, 'c9ff49fc-e7d8-318d-9f8e-7834774b28a7', '2017-09-19', '884.14', '44073987', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:15', '2017-11-06 16:10:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1200, NULL, '755366746', 8, '7f9fe369-f3d4-3bc7-8e79-007015484d73', '2016-11-08', '998.18', '27807431', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:15', '2017-11-06 16:10:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1201, NULL, '1499503340', 8, 'd0391fd4-fe0f-320b-9c28-5ab9562b47c2', '2017-08-21', '2524.32', '48829596', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:15', '2017-11-06 16:10:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1202, NULL, '1284515029', 8, 'b765911e-c05e-3a0c-8b87-f60cbe516101', '2017-05-24', '1966.54', '27789598', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:15', '2017-11-06 16:10:15', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1203, NULL, '998437882', 8, 'c0b24932-aa7c-3934-b23f-bd8ee47fdfb3', '2017-06-27', '2900.46', '16048389', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:15', '2017-11-06 16:10:15', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1204, NULL, '1134322986', 9, '8d3d6838-c09f-31fa-b78c-7fef712e245b', '2017-07-03', '2422.51', '40047521', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1205, NULL, '392953685', 9, 'e46e927a-c21b-32c3-965c-feb63c60c502', '2016-11-22', '649.55', '29268064', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1206, NULL, '865850092', 9, '117e0527-19be-3e9c-8053-193f23b9ee86', '2016-11-23', '1508.39', '7148226', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1207, NULL, '527438443', 9, '92a7b19d-13ba-3aee-9eb7-8e1fbb969c45', '2016-12-13', '2941.04', '19872495', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1208, NULL, '1066354123', 9, '50669225-0182-31b9-88b5-45a43d564648', '2017-06-12', '2000.49', '37904095', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1209, NULL, '37716962', 9, '70b609d7-a33e-3cdf-8590-11155d0270c0', '2017-09-17', '2966.64', '22614731', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:16', '2017-11-06 16:10:16', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1210, NULL, '831063079', 9, 'fb7af4da-2867-34d6-b2dd-36f072d585e3', '2017-10-29', '1828.29', '21282889', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:17', '2017-11-06 16:10:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1211, NULL, '891450552', 9, '9071342b-8875-3780-8a58-2e73fa519d6e', '2017-04-30', '2324.58', '14002796', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:17', '2017-11-06 16:10:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1212, NULL, '1004966405', 9, '0745f19a-5f34-35bc-bd6a-1f99c4d06afc', '2017-04-29', '909.43', '14492317', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:17', '2017-11-06 16:10:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1213, NULL, '951312933', 9, 'cc048cce-874c-373d-8942-de4a4943c4e5', '2017-08-11', '457.53', '32695994', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:17', '2017-11-06 16:10:17', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1214, NULL, '1505915135', 9, 'b5918ca5-a0bd-321a-a924-e66a1858fee4', '2017-11-01', '794.15', '47628477', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:17', '2017-11-06 16:10:17', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1215, NULL, '108850871', 9, 'a2045eb8-edd3-37bb-8390-9db0212467f5', '2017-09-22', '2759.31', '34563524', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:18', '2017-11-06 16:10:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1216, NULL, '748859804', 9, 'c18a4ee0-bc1d-353a-9a3f-e8e1c35388a6', '2017-02-13', '1385.45', '34295952', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:18', '2017-11-06 16:10:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1217, NULL, '977887894', 9, 'cffa54ee-9a09-3be0-9943-c2f9874f8d5d', '2017-08-15', '2030.92', '5059148', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:18', '2017-11-06 16:10:18', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1218, NULL, '1191856883', 9, '0a836c84-10ed-30a9-a991-88a8f677c545', '2016-11-29', '2874.72', '32995907', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:18', '2017-11-06 16:10:18', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1219, NULL, '1447655845', 9, '8ba94ccb-6fb5-398e-a690-a7662781bad2', '2017-02-07', '1339.04', '14809942', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:19', '2017-11-06 16:10:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1220, NULL, '37923077', 9, '36b0427c-35e9-3882-8fe4-4565210fe03b', '2017-01-16', '1814.59', '41863363', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:19', '2017-11-06 16:10:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1221, NULL, '1177235130', 9, 'f64c7c98-201e-364b-b81e-30dd6d49ddbf', '2017-05-24', '931.29', '6688066', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:19', '2017-11-06 16:10:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1222, NULL, '828072812', 9, '3bd04161-7084-341b-b2bd-d319d9fad603', '2017-04-01', '1928.01', '16368400', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:19', '2017-11-06 16:10:19', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1223, NULL, '366260482', 9, '77031e4c-5b8d-3e58-8680-c9cebf1063bd', '2017-05-31', '372.99', '25619030', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:19', '2017-11-06 16:10:19', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1224, NULL, '338874991', 9, '47a15da6-fdbe-30d7-8928-ece10ac0c208', '2017-07-21', '962.34', '14465342', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:20', '2017-11-06 16:10:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1225, NULL, '1221195077', 9, '9b04537e-6266-38d2-b3f1-3a4d36c23635', '2016-11-13', '2164.57', '18159860', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:20', '2017-11-06 16:10:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1226, NULL, '1413527496', 9, 'b5543cdf-48f4-34ed-a99f-d9d97bbd63c5', '2017-08-03', '2473.78', '21377204', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:20', '2017-11-06 16:10:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1227, NULL, '1135767580', 9, '9243a038-82ab-39e5-b302-6eaadf9619d5', '2016-12-23', '1374.59', '19263505', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:20', '2017-11-06 16:10:20', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1228, NULL, '1105869557', 9, '5ce50c1a-1da4-3b6d-8a04-5e406696ea05', '2017-07-15', '2493.32', '43251313', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:20', '2017-11-06 16:10:20', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1229, NULL, '184320691', 9, '8772f9ac-2781-3e26-9db3-c20d180828ae', '2017-04-28', '2854.80', '12957482', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1230, NULL, '27617826', 9, '69256e25-fc71-31e9-a433-759f80c1a3af', '2017-08-21', '2355.58', '30398649', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1231, NULL, '951716552', 9, '499eb67c-61be-304c-9525-0c67d26f8871', '2016-11-07', '1078.33', '12508499', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1232, NULL, '465789451', 9, 'a2e96588-0e68-34d5-a489-379b1e601910', '2017-02-03', '1796.73', '6307752', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1233, NULL, '1115871580', 9, '731a99ab-314d-387d-8805-3dceb25b81a2', '2017-04-03', '2610.51', '26852179', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1234, NULL, '350621288', 10, '9366aca2-94a7-32bd-9ad8-bf8bf696bf18', '2017-04-13', '1672.08', '43082062', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:21', '2017-11-06 16:10:21', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1235, NULL, '762124877', 10, 'c51174cb-8040-3947-8dd6-67012803316b', '2017-08-27', '803.22', '37056541', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:22', '2017-11-06 16:10:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1236, NULL, '1484074907', 10, '888b65c4-0c34-3146-a886-c822d45b8bbd', '2017-09-06', '382.44', '21960765', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:22', '2017-11-06 16:10:22', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1237, NULL, '938976622', 10, 'd2f92f6d-2ed2-3b72-9979-15c2e2b9c836', '2017-06-23', '2252.49', '46501343', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:22', '2017-11-06 16:10:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1238, NULL, '520039483', 10, '6da41668-c78e-3d9f-b168-b3e2d97da623', '2016-11-18', '1213.32', '45216954', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:22', '2017-11-06 16:10:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1239, NULL, '331956616', 10, '62924a3f-e422-330d-ba70-7cb436ac4722', '2017-01-21', '2418.73', '19179305', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:22', '2017-11-06 16:10:22', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1240, NULL, '703386602', 10, 'da4da040-4d5b-3644-a5e8-10c7848dbf19', '2016-11-27', '2259.88', '23527019', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:23', '2017-11-06 16:10:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1241, NULL, '1028872302', 10, 'f380b471-3cef-3ab7-9de8-0fcf4075b191', '2017-08-23', '1810.63', '31962901', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:23', '2017-11-06 16:10:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1242, NULL, '343617353', 10, '006bfd81-90ad-3843-874e-b4d32118e2d9', '2017-01-19', '1517.79', '14030447', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:23', '2017-11-06 16:10:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1243, NULL, '1418891060', 10, 'a3bde534-9d9d-387a-b039-65746dfafdd8', '2017-02-18', '1868.07', '7839894', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:23', '2017-11-06 16:10:23', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1244, NULL, '458976846', 10, '97b18271-d441-36ac-b892-40d625f5a512', '2017-10-23', '1764.19', '33294083', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:23', '2017-11-06 16:10:23', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1245, NULL, '1050640631', 10, '2a060ace-653b-3b19-b592-ed2a4e341c76', '2017-03-03', '2801.97', '18627558', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1246, NULL, '1305653401', 10, 'f5dbfc8c-6bc0-36ee-8206-3f786b49034c', '2017-04-07', '2901.38', '48762198', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1247, NULL, '126085220', 10, '122db790-d5f1-3426-9798-166adcc3710a', '2016-12-11', '1737.13', '13923785', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1248, NULL, '287095330', 10, '4cee53d6-3837-3d7a-894f-312b49e49dcc', '2017-06-24', '621.81', '23735490', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1249, NULL, '487195655', 10, '17095ac8-c3f6-3682-b694-973877506e77', '2016-12-16', '1884.07', '41618763', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1250, NULL, '1165498716', 10, 'c78e2566-265e-3c97-b0e7-937749b1085a', '2016-11-29', '1054.92', '14409971', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:24', '2017-11-06 16:10:24', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1251, NULL, '74881823', 10, '9eb07709-bcdc-322a-8428-c339b75d8ecb', '2017-08-16', '2492.79', '7958550', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:25', '2017-11-06 16:10:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1252, NULL, '377932111', 10, '1db274fd-409f-3653-af3f-2cfbdd793275', '2017-10-22', '1899.46', '44559269', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:25', '2017-11-06 16:10:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1253, NULL, '1249961161', 10, 'aec94877-41e7-36ce-9ee6-fe0c2f6ac022', '2017-08-19', '2313.61', '10604770', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:25', '2017-11-06 16:10:25', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1254, NULL, '1492704026', 10, 'ad506645-6b6d-3bc4-9e9c-1f38a7984210', '2017-05-02', '662.00', '28906088', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:25', '2017-11-06 16:10:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1255, NULL, '1443563087', 10, '95f5a21b-d985-30eb-9d5f-3107f54b3c45', '2017-10-15', '2856.59', '17073376', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:25', '2017-11-06 16:10:25', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1256, NULL, '762229181', 10, 'b8d06e68-5321-36b8-a3ae-f54d9e255eef', '2017-05-12', '2200.82', '15663710', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1257, NULL, '582348927', 10, 'c2697e25-b276-3c1e-836d-2aada36161af', '2017-02-06', '2113.65', '27723930', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1258, NULL, '179376858', 10, 'ba791ef4-166a-3698-b24e-c5454849b0d5', '2016-11-10', '336.07', '16590873', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1259, NULL, '949988832', 10, '06aab535-7616-3326-81a3-c8673d9def59', '2017-06-27', '1865.26', '24715086', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1260, NULL, '391947167', 10, '4423e4bf-34cb-382a-b9af-50bfb963c60b', '2017-01-25', '2676.60', '17122630', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1261, NULL, '723799541', 10, 'af273e0e-70c8-3aad-a70a-09b4b4974318', '2017-07-09', '1560.90', '42112166', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:26', '2017-11-06 16:10:26', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1262, NULL, '367775100', 10, '7e27a55e-7390-36ad-bc1f-e171a2a66d82', '2017-08-23', '2711.85', '11110986', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:27', '2017-11-06 16:10:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1263, NULL, '147110925', 10, '826cd6c7-2033-3ac1-8705-02b3b3322165', '2016-11-19', '2606.91', '15800151', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:27', '2017-11-06 16:10:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1264, NULL, '1369061799', 11, 'b235fb08-42b7-3a5f-8dc8-dfbfd9903f69', '2017-01-08', '1353.91', '4885454', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:27', '2017-11-06 16:10:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1265, NULL, '1022029270', 11, '355a7451-c43b-3910-a98d-48418d0324f4', '2017-08-10', '1257.35', '16464888', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:27', '2017-11-06 16:10:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1266, NULL, '1198379166', 11, 'b4b99a29-e5d3-3494-9a4a-e909ef2b4944', '2017-05-12', '1659.59', '31520779', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:27', '2017-11-06 16:10:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_mac_address_1`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `next_audit_date`, `location_id`) VALUES
(1267, NULL, '681939574', 11, 'b684fc03-7a18-3338-a162-82f973738f55', '2017-03-24', '741.54', '30897127', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:28', '2017-11-06 16:10:28', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1268, NULL, '1004307501', 11, 'b99dd3b3-65f4-33de-8001-a3566f40713e', '2016-11-24', '2461.62', '3693787', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:28', '2017-11-06 16:10:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1269, NULL, '1357635573', 12, '4792ef17-d45b-333b-acc2-8d9a94c75b29', '2017-08-03', '902.95', '18251776', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:28', '2017-11-06 16:10:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1270, NULL, '996585242', 12, 'c4283a79-c8e4-38f4-8fce-48553f9a813f', '2017-07-26', '799.10', '49507859', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:28', '2017-11-06 16:10:28', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1271, NULL, '1503901052', 13, '35cff788-47ac-3119-b824-360bd8a3acdd', '2017-04-29', '2085.26', '16933112', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1272, NULL, '312933910', 13, 'c1890530-e953-343b-9a0a-d5525c452594', '2017-06-03', '833.58', '26257164', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1273, NULL, '364739403', 13, 'f9313aff-a74c-3098-9871-2a3618becc7e', '2017-06-12', '735.47', '33026783', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1274, NULL, '1350969300', 13, '61c4ba26-3a7d-30a9-b8e1-36dae9609f4f', '2017-08-03', '2390.74', '24899667', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1275, NULL, '1069931766', 13, '94020112-31f6-357c-a6d1-9a2f80da5667', '2016-11-27', '626.80', '39862547', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1276, NULL, '1303586876', 13, '4e25847a-cb13-324d-89eb-0a0a28110d4f', '2017-03-09', '550.31', '24924135', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:29', '2017-11-06 16:10:29', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1277, NULL, '863842183', 13, '0494225e-3d60-37bd-b89c-bd30d41328a1', '2017-02-01', '1114.37', '2452192', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1278, NULL, '697207828', 13, 'f12e981a-62d7-3934-be81-51fb9052d7d8', '2017-05-24', '1090.70', '16250601', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1279, NULL, '664778638', 13, '3e786f52-8515-39ba-96d4-da8a689ba7ab', '2017-09-29', '2077.55', '16470355', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1280, NULL, '851120013', 13, 'c647fa3d-2b5d-3698-9498-32fc96352176', '2017-01-28', '472.61', '27294339', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1281, NULL, '761173579', 13, 'f4533450-414c-31a5-a3e8-6414d08b254d', '2017-02-11', '2050.09', '46422331', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1282, NULL, '580659281', 13, '73ccf111-e29f-33bf-84a6-23dafef6c8bb', '2016-12-09', '991.19', '47526517', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:30', '2017-11-06 16:10:30', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1283, NULL, '839365081', 14, 'ccaeff7d-5aef-3be5-b62d-68e33794416b', '2017-04-06', '1337.37', '25137839', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1284, NULL, '514313376', 14, '81a2fac1-c17b-3f61-93eb-15581cbd93b8', '2017-03-28', '1416.40', '11864977', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1285, NULL, '373592359', 14, 'fd107547-edec-3f88-a16b-42f2263dcded', '2017-05-29', '1214.30', '7582439', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1286, NULL, '212049915', 14, '1345c34f-0de2-30fe-9716-f7b0c17a7859', '2017-07-13', '2131.19', '35331298', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1287, NULL, '186324841', 15, '11a7c54c-1d9b-3f8d-9119-138faed218db', '2017-09-30', '2118.68', '44535203', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1288, NULL, '1365761158', 15, '23957e5c-6c7e-35ae-86c8-19e4dd447045', '2017-03-31', '871.49', '16337424', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:31', '2017-11-06 16:10:31', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1289, NULL, '11561672', 15, '284faea3-0009-34f2-9046-c48b55fa433d', '2016-12-27', '1910.59', '15059158', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:32', '2017-11-06 16:10:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1290, NULL, '1443858902', 15, '1a5559a5-b7ef-3490-99d4-340824cdcc07', '2017-08-13', '2143.12', '19779551', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:32', '2017-11-06 16:10:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1291, NULL, '1378442251', 15, '7d039260-076d-30f3-a82e-b9e2798b3801', '2017-03-19', '2652.56', '32618737', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:32', '2017-11-06 16:10:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1292, NULL, '453285273', 15, '52634a15-6646-3cca-93f0-31369f8d6fd0', '2017-10-01', '468.32', '9621435', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:32', '2017-11-06 16:10:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1293, NULL, '1409067403', 15, '39644da6-e88f-32fe-a24c-079fbcde25b3', '2017-02-18', '877.11', '12890850', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:32', '2017-11-06 16:10:32', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1294, NULL, '149380981', 15, '00baadbb-39cc-3a11-b39f-89c84ef34a72', '2017-01-19', '1390.13', '43725121', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:33', '2017-11-06 16:10:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1295, NULL, '304357194', 15, '576aac6c-57d7-30d2-b684-f0d19a37c14a', '2017-08-06', '2815.14', '49234023', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:33', '2017-11-06 16:10:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1296, NULL, '833132646', 15, '09e9779a-8cdb-3805-8378-b24b63a5cb7e', '2017-09-22', '609.12', '7504670', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:33', '2017-11-06 16:10:33', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1297, NULL, '643000099', 15, 'd466a7d7-882a-3ada-8705-6f9675c2f70f', '2017-07-06', '450.03', '2645458', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:33', '2017-11-06 16:10:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1298, NULL, '152009521', 15, '012f0c34-2c21-3fe5-810d-1c71f3837965', '2016-12-10', '2381.43', '10998810', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:33', '2017-11-06 16:10:33', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1299, NULL, '565523967', 15, '237cfc80-d1c8-39ba-8680-b7f2cb852c1a', '2017-05-14', '1861.33', '44450167', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:34', '2017-11-06 16:10:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1300, NULL, '947022885', 15, 'e9df5c28-868e-380e-ad1b-df3a9265e5e1', '2016-12-18', '2109.47', '6668446', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:34', '2017-11-06 16:10:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1301, NULL, '731538403', 15, '3ca910de-589a-37ad-a2ac-1796a97de8f7', '2017-05-29', '973.72', '40847848', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:34', '2017-11-06 16:10:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1302, NULL, '74347866', 15, '741ef61b-7b05-329d-a6d3-74e37e123e82', '2017-07-01', '1256.90', '37348492', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:34', '2017-11-06 16:10:34', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1303, NULL, '1453375436', 15, '33cf8601-7ec8-3a26-af07-d3902ccb2069', '2017-11-03', '2106.12', '38179003', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:34', '2017-11-06 16:10:34', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1304, NULL, '679630498', 15, 'd5b4848b-b6f7-3432-9f82-d555269b1948', '2017-04-09', '2068.83', '37074689', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:35', '2017-11-06 16:10:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1305, NULL, '1186619222', 15, 'ef26cdb0-c2f1-3b09-9076-3cb1acf607dd', '2016-12-02', '1763.20', '16866268', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:35', '2017-11-06 16:10:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1306, NULL, '951214418', 15, 'e2ee37ff-4320-325a-b3ab-9849c55f3772', '2017-05-27', '2053.39', '23844266', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:35', '2017-11-06 16:10:35', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1307, NULL, '966967442', 15, '13ed53b0-33a7-3fb4-9aa8-653a3b9e3b60', '2016-12-17', '1914.15', '34227700', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:35', '2017-11-06 16:10:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1308, NULL, '902745860', 15, '5c59ca12-5b32-34ca-8f17-4c87c622a8f9', '2016-12-31', '1222.04', '17201911', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:35', '2017-11-06 16:10:35', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1309, NULL, '856212102', 15, '1e0c3b6b-a093-319e-9723-e590b12a2302', '2017-10-24', '1858.06', '11872413', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1310, NULL, '1201375135', 15, 'ee16ae85-c0e4-36e3-8fce-db92f0a3a91c', '2017-05-12', '2410.10', '13400853', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1311, NULL, '532970169', 15, '7231ce41-cbf6-390f-b64d-76aaab4d7df7', '2017-02-28', '2908.68', '5327265', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1312, NULL, '1161196106', 15, '348bb013-edef-3141-947f-2fd1cf817fa4', '2017-03-16', '1199.66', '15731940', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1313, NULL, '608954919', 15, 'f9a8c409-db04-3495-8827-4a080339ec93', '2016-12-31', '2092.68', '17793113', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1314, NULL, '474517214', 16, 'cc32cb13-515a-367f-9ee9-2b4143e56363', '2017-06-25', '2109.20', '31564630', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:36', '2017-11-06 16:10:36', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1315, NULL, '1379173683', 16, '9d1de58f-e0f3-3af0-a4f6-a2c14b8870f1', '2017-05-19', '1945.28', '49491609', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1316, NULL, '364306529', 16, '8e1a7e86-b3ca-3b74-b73f-d9479e699c95', '2017-04-10', '2007.17', '33359230', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1317, NULL, '640288858', 16, '0d17df8d-4514-316c-a73f-2e3bba233358', '2017-08-13', '2343.92', '44722275', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1318, NULL, '1116113308', 16, 'c6318579-31c6-3ff3-955f-2a0b373f9bc9', '2017-07-28', '1534.67', '37432760', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1319, NULL, '267316695', 16, '6906d57c-44fe-342b-baee-1fa0697a4dcc', '2016-12-09', '2376.50', '32514971', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1320, NULL, '1001568810', 16, 'bbc9af00-4e51-3a58-a0f6-fef0b21d17c6', '2016-11-15', '1615.07', '2761967', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:37', '2017-11-06 16:10:37', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1321, NULL, '1437383321', 16, 'b4de5c5a-6bea-38dd-9936-aacb44fa8dd1', '2017-03-10', '2505.60', '16851341', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:38', '2017-11-06 16:10:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1322, NULL, '1233772254', 16, 'dd274fce-413f-32b6-bfbc-a4df58c436da', '2017-05-08', '350.36', '47368009', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:38', '2017-11-06 16:10:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1323, NULL, '798930602', 16, '3ccde7fc-6118-3b8d-8ac3-5e417a9a1549', '2017-08-15', '806.73', '17862228', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:38', '2017-11-06 16:10:38', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1324, NULL, '984601106', 16, 'b969d040-fd18-3e70-9ff7-b09e565d7af4', '2017-07-29', '419.90', '15826146', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:38', '2017-11-06 16:10:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1325, NULL, '498510259', 16, '91b534cf-70df-350d-bdf4-04699d5ba8b4', '2017-04-27', '1980.30', '44891204', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:38', '2017-11-06 16:10:38', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1326, NULL, '1263883987', 16, 'bc363437-7e90-33dc-ac9e-f1d72fe2a9e1', '2017-04-26', '705.71', '20122818', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1327, NULL, '659655809', 16, '65bf8585-1be1-3f8a-8e9e-1bf35b9f4912', '2017-04-24', '1898.71', '29015091', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1328, NULL, '822004433', 16, '28ee4f55-ff71-30df-bebc-79c64550c4ea', '2017-04-13', '1999.22', '6811457', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1329, NULL, '1141504021', 16, 'f79cbb72-2477-3bcf-b609-fe9a8bafc9f7', '2017-09-17', '428.56', '21474912', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1330, NULL, '644750063', 16, '7ab324c7-8b98-356d-8deb-5876475877d5', '2017-03-15', '2637.75', '46593043', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1331, NULL, '570850770', 16, 'd0da3bab-5b11-384f-9e26-58e21d6dadc8', '2017-11-05', '2238.75', '21234434', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:39', '2017-11-06 16:10:39', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1332, NULL, '1137764993', 16, 'c76d18d8-504e-3023-97ec-04cf36c2ae00', '2017-08-21', '1229.82', '5188311', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:40', '2017-11-06 16:10:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1333, NULL, '996297732', 16, 'ee0f6493-4c7a-3e52-8490-4e82231f1ed9', '2016-11-20', '2155.11', '5386783', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:40', '2017-11-06 16:10:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1334, NULL, '89409599', 16, 'c3162275-a5d6-3197-8e5c-ffc2f1d78c80', '2017-09-20', '2490.16', '34444451', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:40', '2017-11-06 16:10:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1335, NULL, '1398804770', 16, '2755f2f0-6795-3e75-af34-2133bb66d3f0', '2017-07-06', '1818.35', '4573009', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:40', '2017-11-06 16:10:40', 1, NULL, 1, 0, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1336, NULL, '628757515', 16, '694cf38d-3147-3151-badf-2b26a52f77ea', '2017-10-12', '2135.78', '46018800', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:40', '2017-11-06 16:10:40', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1337, NULL, '1351585413', 16, '3e54c1ad-f0b4-321a-88bc-ae4e5e6cdbc3', '2017-04-27', '1375.52', '45084823', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:41', '2017-11-06 16:10:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1338, NULL, '968405422', 16, '921728b9-8b28-3c9b-a098-fdda675dac6d', '2017-03-12', '2878.07', '27677167', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:41', '2017-11-06 16:10:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1339, NULL, '537775243', 16, 'f94c8885-8e4f-3895-b731-395bfa7a114d', '2017-03-11', '2097.59', '36127207', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:41', '2017-11-06 16:10:41', 1, NULL, 1, 0, NULL, NULL, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1340, NULL, '294820326', 16, '20dc4e2c-c3db-3ca4-8147-68b673669639', '2016-12-29', '2328.02', '27570160', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:41', '2017-11-06 16:10:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1341, NULL, '1140634755', 16, 'cde54a0b-3a16-31ca-8040-0858cc4a1afb', '2017-04-29', '1427.13', '36657316', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:41', '2017-11-06 16:10:41', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1342, NULL, '680623139', 16, '2c69f826-9c93-3f99-b782-7cce75318386', '2017-06-06', '2153.09', '14211255', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:42', '2017-11-06 16:10:42', 1, NULL, 1, 0, NULL, NULL, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1343, NULL, '157878334', 16, 'c0e1fa3a-5209-3489-adc4-bf6f3ee7e3c8', '2017-09-30', '2625.15', '3624855', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:42', '2017-11-06 16:10:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1344, NULL, '76999275', 16, '8a0b40de-c550-3814-9727-bcb5bfabe098', '2017-09-12', '647.60', '22100344', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:42', '2017-11-06 16:10:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1345, NULL, '114675147', 16, '3d955b7d-a25c-33d5-a97e-17c058de145b', '2016-11-11', '2933.81', '45209163', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:42', '2017-11-06 16:10:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1346, NULL, '194857769', 16, '4bafbe2a-1a24-3478-b1e9-b7ef8c232a2e', '2016-12-09', '629.20', '8182975', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:42', '2017-11-06 16:10:42', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1347, NULL, '1284156588', 16, '33ddf9c5-29e9-3996-a88a-2105c5ea40bf', '2016-12-26', '1701.00', '41791445', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1348, NULL, '1391437498', 16, '1dc1dd7c-3716-3e49-a8aa-e68a0bcf5d9f', '2017-02-12', '2692.86', '47110108', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1349, NULL, '220109917', 16, '7129f1ca-e5fc-341d-82d3-7f046af54f3c', '2017-02-05', '1630.78', '30472700', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1350, NULL, '1445417710', 16, 'e006e3ea-1f68-32ef-9d3f-508f4493162b', '2017-08-06', '765.13', '26433888', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1351, NULL, '1261928451', 16, '4b079b3e-9a22-38c9-8a2a-ebe45b505907', '2017-01-05', '747.75', '5930250', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1352, NULL, '787469439', 16, '4b9011cc-c3c6-3811-b51b-fbe7654567bb', '2017-03-08', '702.01', '27018253', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:43', '2017-11-06 16:10:43', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1353, NULL, '1275165658', 16, 'afafd2d9-213f-33fc-9d38-33e86831bce1', '2017-03-07', '1220.21', '32128001', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:44', '2017-11-06 16:10:44', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1354, NULL, '85178885', 17, '6f8de678-bb7b-39c4-8a2f-673b29221f84', '2017-01-20', '1552.46', '23393848', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:44', '2017-11-06 16:10:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1355, NULL, '853233518', 17, 'ac70a15f-2282-3dff-9efe-894be3dc35e5', '2017-04-15', '1501.66', '31900490', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:44', '2017-11-06 16:10:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1356, NULL, '1409156622', 17, '59cf78e3-277a-313b-bdcd-4da0e0fc6632', '2017-02-11', '2722.09', '19966040', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:44', '2017-11-06 16:10:44', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1357, NULL, '132930819', 17, '9c7ec8a3-65ce-3c79-97a6-00d967458bc8', '2017-10-30', '1445.49', '26913355', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:45', '2017-11-06 16:10:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1358, NULL, '61083548', 17, '8b30c05e-ad55-35d0-88bc-8181f6d1f87d', '2017-08-01', '1505.68', '38508595', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:45', '2017-11-06 16:10:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1359, NULL, '792753973', 17, '71a5ae59-e5eb-3c58-a136-6553366aaa66', '2016-12-30', '1030.60', '31189316', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:45', '2017-11-06 16:10:45', 1, NULL, 1, 0, NULL, NULL, 1, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1360, NULL, '1369516455', 17, '2af27057-c2a3-3d11-b5cd-ac3dbf48e9f3', '2017-03-06', '2030.23', '18757857', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:45', '2017-11-06 16:10:45', 1, NULL, 1, 0, NULL, NULL, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1361, NULL, '526996423', 17, 'da2c6870-5d56-31d4-b3c0-cf3225398c28', '2017-10-19', '2703.38', '9147208', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:46', '2017-11-06 16:10:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1362, NULL, '226041934', 17, '19fa9edf-8ba1-3435-9977-bc564425db2c', '2017-10-07', '2583.91', '32812681', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:46', '2017-11-06 16:10:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1363, NULL, '695759702', 17, 'cd27f327-019e-3aee-a58c-263d357ae4a9', '2016-12-24', '851.52', '38008609', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:46', '2017-11-06 16:10:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1364, NULL, '1021386072', 18, '4c530f67-04bf-3505-a5d1-ee7d74c583ac', '2017-10-16', '1708.22', '38375185', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:46', '2017-11-06 16:10:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1365, NULL, '42271599', 18, '663a43a2-b612-3529-91d1-88766761c5bc', '2017-01-22', '2359.14', '2233456', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:46', '2017-11-06 16:10:46', 1, NULL, 1, 0, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1366, NULL, '184287258', 18, '1e0391a8-b79a-37fb-997f-537f6257ab61', '2017-08-20', '2574.10', '11645003', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1367, NULL, '215939190', 18, 'e4722bc3-b7b0-3752-8439-4d5c257f7061', '2017-08-12', '2645.83', '26321314', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1368, NULL, '1196732892', 18, '9402c066-5865-3fc5-a4a8-2124938c8007', '2017-04-05', '1759.80', '33867531', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1369, NULL, '1209895428', 18, 'b79bfe22-1e0f-35f3-8e10-707c9da9c2c3', '2017-06-09', '1400.20', '22801842', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1370, NULL, '808912065', 18, 'b505f2e2-41ff-34d5-9055-8d0f785b6c18', '2017-04-21', '2358.39', '36500117', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1371, NULL, '873299103', 18, 'cbb9e646-1b35-352d-af40-b9f9e241c488', '2017-03-27', '678.67', '3271688', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:47', '2017-11-06 16:10:47', 1, NULL, 1, 0, NULL, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1372, NULL, '729644216', 18, '48a62402-85d5-361d-a518-15f39f1f4ffd', '2017-01-14', '2606.91', '44077775', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:48', '2017-11-06 16:10:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1373, NULL, '1099220338', 18, 'a9a9bbaf-b98d-3632-9ba2-f5918db5a906', '2017-04-05', '2265.01', '29668128', NULL, 'Created by DB seeder', NULL, 1, '2017-11-06 16:10:48', '2017-11-06 16:10:48', 1, NULL, 1, 0, NULL, NULL, 1, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_logs`
--

CREATE TABLE `asset_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `checkedout_to` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenances`
--

CREATE TABLE `asset_maintenances` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `asset_maintenance_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_warranty` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `asset_maintenance_time` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_uploads`
--

CREATE TABLE `asset_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `filenotes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_default_eula` tinyint(1) NOT NULL DEFAULT 0,
  `require_acceptance` tinyint(1) NOT NULL DEFAULT 0,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'asset',
  `checkin_email` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `user_id`, `deleted_at`, `eula_text`, `use_default_eula`, `require_acceptance`, `category_type`, `checkin_email`, `image`) VALUES
(1, 'Laptops', '2017-11-06 16:06:05', '2017-11-06 16:06:05', 1, NULL, 'Aut officiis dolor qui. Rerum eaque perferendis nihil quos facere. Ut voluptates consequatur laboriosam qui est est quo.', 1, 1, 'asset', 0, NULL),
(2, 'Desktops', '2017-11-06 16:06:05', '2017-11-06 16:06:05', 1, NULL, 'In fuga numquam distinctio perferendis. Consequatur accusantium quos quaerat repellendus doloribus et. Est pariatur soluta blanditiis omnis atque ratione.', 0, 0, 'asset', 1, NULL),
(3, 'Tablets', '2017-11-06 16:06:05', '2017-11-06 16:06:05', 1, NULL, 'Illum temporibus neque aliquam ratione sed quis perspiciatis. Est rerum ad qui. Quod excepturi similique id libero minima.', 1, 0, 'asset', 1, NULL),
(4, 'Mobile Phones', '2017-11-06 16:06:05', '2017-11-06 16:06:05', 1, NULL, 'Molestiae et consequatur quo quia. Quia similique dolor qui neque dolor fugiat non. Culpa dignissimos inventore officiis soluta.', 1, 0, 'asset', 1, NULL),
(5, 'Displays', '2017-11-06 16:06:06', '2017-11-06 16:06:06', 1, NULL, 'Similique excepturi fugiat molestiae et ratione quo cupiditate. Voluptatem autem commodi veritatis nihil quia consequatur autem. Culpa odit qui earum libero. Ea consequuntur ipsa illum omnis.', 1, 0, 'asset', 0, NULL),
(6, 'VOIP Phones', '2017-11-06 16:06:06', '2017-11-06 16:06:06', 1, NULL, 'In doloribus inventore corporis asperiores dolorem molestias ut quia. Asperiores quae tempora facere quae temporibus quia. Itaque optio molestiae eum praesentium.', 0, 0, 'asset', 0, NULL),
(7, 'Conference Phones', '2017-11-06 16:06:06', '2017-11-06 16:06:06', 1, NULL, 'Dolorem ut facilis totam earum sit architecto. Et sed molestias nam quibusdam maxime. Nulla officiis et sunt nesciunt ea. Eligendi ut esse quis fugiat ut inventore consequuntur. Animi aperiam corrupti id voluptatem explicabo tenetur laborum.', 0, 0, 'asset', 0, NULL),
(8, 'Keyboards', '2017-11-06 16:06:06', '2017-11-06 16:06:06', 1, NULL, 'Necessitatibus vel beatae impedit quia. Maxime autem in facere dolores. Eius et et doloremque sequi a voluptas vel. Fuga saepe recusandae nostrum fuga inventore sed cum et.', 0, 0, 'accessory', 1, NULL),
(9, 'Mouse', '2017-11-06 16:06:06', '2017-11-06 16:06:06', 1, NULL, 'Odio eveniet qui ullam quas. Dolores nesciunt suscipit accusantium est corrupti a dolore. Quia est natus aut temporibus.', 1, 0, 'accessory', 0, NULL),
(10, 'Printer Paper', '2017-11-06 16:06:07', '2017-11-06 16:06:07', 1, NULL, 'Impedit voluptatum ducimus reprehenderit commodi culpa. Quia unde ea temporibus sapiente. Quia quae sint enim voluptas ratione ipsa in.', 1, 0, 'consumable', 0, NULL),
(11, 'Printer Ink', '2017-11-06 16:06:07', '2017-11-06 16:06:07', 1, NULL, 'At ut illo voluptatibus fugit vel quia voluptatem. Tenetur nobis suscipit tenetur veritatis delectus quidem incidunt. Ea adipisci sed necessitatibus quis porro commodi vitae dolor. Odio at ut ab harum quia.', 1, 0, 'consumable', 0, NULL),
(12, 'HDD/SSD', '2017-11-06 16:06:07', '2017-11-06 16:06:07', 1, NULL, 'Placeat consequatur aut aperiam in dignissimos. Et itaque ut adipisci aut sapiente. Aut incidunt eum consectetur vero. Nam quia aliquid corrupti quis. Ratione aut enim qui laboriosam ut in illo.', 0, 0, 'component', 1, NULL),
(13, 'RAM', '2017-11-06 16:06:07', '2017-11-06 16:06:07', 1, NULL, 'Ducimus velit voluptatem illo placeat facilis architecto quia. Et accusamus possimus quas placeat. Qui ut a quia est eaque minima. Iste neque error hic delectus.', 0, 0, 'component', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_requests`
--

CREATE TABLE `checkout_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `requestable_id` int(11) NOT NULL,
  `requestable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Ziemann-Hoppe', '2017-11-06 16:06:04', '2017-11-06 16:06:04', NULL),
(2, 'Tillman-Buckridge', '2017-11-06 16:06:04', '2017-11-06 16:06:04', NULL),
(3, 'Gottlieb and Sons', '2017-11-06 16:06:04', '2017-11-06 16:06:04', NULL),
(4, 'Huels Inc', '2017-11-06 16:06:04', '2017-11-06 16:06:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_assets`
--

CREATE TABLE `components_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `assigned_qty` int(11) DEFAULT 1,
  `component_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumables`
--

CREATE TABLE `consumables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumables_users`
--

CREATE TABLE `consumables_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `db_column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `format`, `element`, `created_at`, `updated_at`, `user_id`, `field_values`, `field_encrypted`, `db_column`, `help_text`) VALUES
(1, 'MAC Address', 'regex:/^[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}$/', 'text', NULL, '2017-11-06 16:01:15', NULL, NULL, 0, '_snipeit_mac_address_1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fieldsets`
--

CREATE TABLE `custom_fieldsets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fieldsets`
--

INSERT INTO `custom_fieldsets` (`id`, `name`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Asset with MAC Address', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_custom_fieldset`
--

CREATE TABLE `custom_field_custom_fieldset` (
  `custom_field_id` int(11) NOT NULL,
  `custom_fieldset_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_custom_fieldset`
--

INSERT INTO `custom_field_custom_fieldset` (`custom_field_id`, `custom_fieldset_id`, `order`, `required`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `user_id`, `company_id`, `location_id`, `manager_id`, `notes`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, 'Human Resources', 1, NULL, 2, NULL, NULL, '2017-11-06 16:06:14', '2017-11-06 16:06:14', NULL, NULL),
(2, 'Engineering', 1, NULL, 2, NULL, NULL, '2017-11-06 16:06:15', '2017-11-06 16:06:15', NULL, NULL),
(3, 'Marketing', 1, NULL, 5, NULL, NULL, '2017-11-06 16:06:15', '2017-11-06 16:06:15', NULL, NULL),
(4, 'Client Services', 1, NULL, 1, NULL, NULL, '2017-11-06 16:06:15', '2017-11-06 16:06:15', NULL, NULL),
(5, 'Product Management', 1, NULL, 5, NULL, NULL, '2017-11-06 16:06:15', '2017-11-06 16:06:15', NULL, NULL),
(6, 'Dept of Silly Walks', 1, NULL, 5, NULL, NULL, '2017-11-06 16:06:15', '2017-11-06 16:06:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `depreciations`
--

CREATE TABLE `depreciations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `months` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depreciations`
--

INSERT INTO `depreciations` (`id`, `name`, `months`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Computer Depreciation', 36, '2017-11-06 16:06:21', '2017-11-06 16:06:21', 1),
(2, 'Display Depreciation', 12, '2017-11-06 16:06:21', '2017-11-06 16:06:21', 1),
(3, 'Mobile Phone Depreciation', 24, '2017-11-06 16:06:21', '2017-11-06 16:06:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `import_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `purchase_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  `reassignable` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_seats`
--

CREATE TABLE `license_seats` (
  `id` int(10) UNSIGNED NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_ou` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `city`, `state`, `country`, `created_at`, `updated_at`, `user_id`, `address`, `address2`, `zip`, `deleted_at`, `parent_id`, `currency`, `ldap_ou`, `manager_id`, `image`) VALUES
(1, 'North Kaelaside', 'Hamillfort', 'DE', 'BR', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '386 Elmore Centers Apt. 042', 'Suite 988', '80163', NULL, NULL, 'KRW', NULL, NULL, '3.jpg'),
(2, 'South Jevonstad', 'South May', 'IL', 'ZM', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '1815 Wolff Loaf Suite 655', 'Suite 231', '29393-9102', NULL, NULL, 'AUD', NULL, NULL, '7.jpg'),
(3, 'New Simburgh', 'New Leatha', 'MA', 'ZW', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '195 Liana Forges', 'Apt. 298', '58890', NULL, NULL, 'KYD', NULL, NULL, '2.jpg'),
(4, 'South Michael', 'Port Pedro', 'DC', 'TH', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '64777 Nella Curve', 'Apt. 737', '00947-7497', NULL, NULL, 'MGA', NULL, NULL, '9.jpg'),
(5, 'Rippinport', 'New Margotside', 'NY', 'BY', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '1441 Magali Loop', 'Suite 693', '18249-4713', NULL, NULL, 'SVC', NULL, NULL, '4.jpg'),
(6, 'Lake Eusebio', 'South Myriamhaven', 'OR', 'SM', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '7624 Pfeffer Wall', 'Apt. 125', '08922', NULL, NULL, 'BSD', NULL, NULL, '9.jpg'),
(7, 'North Haroldborough', 'Wilhelminehaven', 'SC', 'DZ', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '878 Immanuel Ville Suite 701', 'Suite 161', '84865', NULL, NULL, 'MVR', NULL, NULL, '7.jpg'),
(8, 'West Rene', 'North Camron', 'GA', 'SC', '2017-11-06 16:06:17', '2017-11-06 16:06:17', NULL, '26727 Schimmel Fields', 'Suite 748', '56426-3370', NULL, NULL, 'TRY', NULL, NULL, '4.jpg'),
(9, 'New Fordberg', 'North Arnaldoland', 'GA', 'CY', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, '5752 Carolanne Curve Suite 431', 'Suite 841', '23548-6215', NULL, NULL, 'DZD', NULL, NULL, '7.jpg'),
(10, 'Heidiport', 'East Rebeka', 'KS', 'CR', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, '66173 Jaunita Stream Suite 290', 'Apt. 338', '60341-5220', NULL, NULL, 'IQD', NULL, NULL, '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `created_at`, `updated_at`, `user_id`, `deleted_at`, `url`, `support_url`, `support_phone`, `support_email`, `image`) VALUES
(1, 'Apple', '2017-11-06 16:06:15', '2017-11-06 16:06:15', 1, NULL, 'https://apple.com', 'https://support.apple.com', '459-234-7029 x031', 'kihn.stacy@example.org', 'apple.jpg'),
(2, 'Microsoft', '2017-11-06 16:06:15', '2017-11-06 16:06:15', 1, NULL, 'https://microsoft.com', 'https://support.microsoft.com', '(770) 632-9696 x9558', 'ardith.murazik@example.org', 'microsoft.png'),
(3, 'Dell', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://dell.com', 'https://support.dell.com', '(459) 749-0800 x530', 'jaydon13@example.org', 'dell.png'),
(4, 'Asus', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://asus.com', 'https://support.asus.com', '+1-552-441-5447', 'sallie.kihn@example.org', 'asus.png'),
(5, 'HP', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://hp.com', 'https://support.hp.com', '578.747.5418', 'reinhold68@example.net', 'hp.png'),
(6, 'Lenovo', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://lenovo.com', 'https://support.lenovo.com', '485-486-2618', 'padberg.trever@example.net', 'lenovo.jpg'),
(7, 'LG', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://lg.com', 'https://support.lg.com', '536.285.6661 x0559', 'sgoldner@example.com', 'lg.jpg'),
(8, 'Polycom', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://polycom.com', 'https://support.polycom.com', '792-257-8461', 'lindsay.will@example.org', 'polycom.png'),
(9, 'Adobe', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://adobe.com', 'https://support.adobe.com', '(425) 729-5350', 'kurtis.wehner@example.com', 'adobe.jpg'),
(10, 'Avery', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://avery.com', 'https://support.avery.com', '463-539-2797 x94428', 'grayson40@example.net', 'avery.png'),
(11, 'Crucial', '2017-11-06 16:06:16', '2017-11-06 16:06:16', 1, NULL, 'https://crucial.com', 'https://support.crucial.com', '(895) 227-3028 x80281', 'mherzog@example.com', 'crucial.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
(2, '2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
(3, '2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
(4, '2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
(5, '2013_03_23_193214_update_users_table', 1),
(6, '2013_11_13_075318_create_models_table', 1),
(7, '2013_11_13_075335_create_categories_table', 1),
(8, '2013_11_13_075347_create_manufacturers_table', 1),
(9, '2013_11_15_015858_add_user_id_to_categories', 1),
(10, '2013_11_15_112701_add_user_id_to_manufacturers', 1),
(11, '2013_11_15_190327_create_assets_table', 1),
(12, '2013_11_15_190357_create_licenses_table', 1),
(13, '2013_11_15_201848_add_license_name_to_licenses', 1),
(14, '2013_11_16_040323_create_depreciations_table', 1),
(15, '2013_11_16_042851_add_depreciation_id_to_models', 1),
(16, '2013_11_16_084923_add_user_id_to_models', 1),
(17, '2013_11_16_103258_create_locations_table', 1),
(18, '2013_11_16_103336_add_location_id_to_assets', 1),
(19, '2013_11_16_103407_add_checkedout_to_to_assets', 1),
(20, '2013_11_16_103425_create_history_table', 1),
(21, '2013_11_17_054359_drop_licenses_table', 1),
(22, '2013_11_17_054526_add_physical_to_assets', 1),
(23, '2013_11_17_055126_create_settings_table', 1),
(24, '2013_11_17_062634_add_license_to_assets', 1),
(25, '2013_11_18_134332_add_contacts_to_users', 1),
(26, '2013_11_18_142847_add_info_to_locations', 1),
(27, '2013_11_18_152942_remove_location_id_from_asset', 1),
(28, '2013_11_18_164423_set_nullvalues_for_user', 1),
(29, '2013_11_19_013337_create_asset_logs_table', 1),
(30, '2013_11_19_061409_edit_added_on_asset_logs_table', 1),
(31, '2013_11_19_062250_edit_location_id_asset_logs_table', 1),
(32, '2013_11_20_055822_add_soft_delete_on_assets', 1),
(33, '2013_11_20_121404_add_soft_delete_on_locations', 1),
(34, '2013_11_20_123137_add_soft_delete_on_manufacturers', 1),
(35, '2013_11_20_123725_add_soft_delete_on_categories', 1),
(36, '2013_11_20_130248_create_status_labels', 1),
(37, '2013_11_20_130830_add_status_id_on_assets_table', 1),
(38, '2013_11_20_131544_add_status_type_on_status_labels', 1),
(39, '2013_11_20_134103_add_archived_to_assets', 1),
(40, '2013_11_21_002321_add_uploads_table', 1),
(41, '2013_11_21_024531_remove_deployable_boolean_from_status_labels', 1),
(42, '2013_11_22_075308_add_option_label_to_settings_table', 1),
(43, '2013_11_22_213400_edits_to_settings_table', 1),
(44, '2013_11_25_013244_create_licenses_table', 1),
(45, '2013_11_25_031458_create_license_seats_table', 1),
(46, '2013_11_25_032022_add_type_to_actionlog_table', 1),
(47, '2013_11_25_033008_delete_bad_licenses_table', 1),
(48, '2013_11_25_033131_create_new_licenses_table', 1),
(49, '2013_11_25_033534_add_licensed_to_licenses_table', 1),
(50, '2013_11_25_101308_add_warrantee_to_assets_table', 1),
(51, '2013_11_25_104343_alter_warranty_column_on_assets', 1),
(52, '2013_11_25_150450_drop_parent_from_categories', 1),
(53, '2013_11_25_151920_add_depreciate_to_assets', 1),
(54, '2013_11_25_152903_add_depreciate_to_licenses_table', 1),
(55, '2013_11_26_211820_drop_license_from_assets_table', 1),
(56, '2013_11_27_062510_add_note_to_asset_logs_table', 1),
(57, '2013_12_01_113426_add_filename_to_asset_log', 1),
(58, '2013_12_06_094618_add_nullable_to_licenses_table', 1),
(59, '2013_12_10_084038_add_eol_on_models_table', 1),
(60, '2013_12_12_055218_add_manager_to_users_table', 1),
(61, '2014_01_28_031200_add_qr_code_to_settings_table', 1),
(62, '2014_02_13_183016_add_qr_text_to_settings_table', 1),
(63, '2014_05_24_093839_alter_default_license_depreciation_id', 1),
(64, '2014_05_27_231658_alter_default_values_licenses', 1),
(65, '2014_06_19_191508_add_asset_name_to_settings', 1),
(66, '2014_06_20_004847_make_asset_log_checkedout_to_nullable', 1),
(67, '2014_06_20_005050_make_asset_log_purchasedate_to_nullable', 1),
(68, '2014_06_24_003011_add_suppliers', 1),
(69, '2014_06_24_010742_add_supplier_id_to_asset', 1),
(70, '2014_06_24_012839_add_zip_to_supplier', 1),
(71, '2014_06_24_033908_add_url_to_supplier', 1),
(72, '2014_07_08_054116_add_employee_id_to_users', 1),
(73, '2014_07_09_134316_add_requestable_to_assets', 1),
(74, '2014_07_17_085822_add_asset_to_software', 1),
(75, '2014_07_17_161625_make_asset_id_in_logs_nullable', 1),
(76, '2014_08_12_053504_alpha_0_4_2_release', 1),
(77, '2014_08_17_083523_make_location_id_nullable', 1),
(78, '2014_10_16_200626_add_rtd_location_to_assets', 1),
(79, '2014_10_24_000417_alter_supplier_state_to_32', 1),
(80, '2014_10_24_015641_add_display_checkout_date', 1),
(81, '2014_10_28_222654_add_avatar_field_to_users_table', 1),
(82, '2014_10_29_045924_add_image_field_to_models_table', 1),
(83, '2014_11_01_214955_add_eol_display_to_settings', 1),
(84, '2014_11_04_231416_update_group_field_for_reporting', 1),
(85, '2014_11_05_212408_add_fields_to_licenses', 1),
(86, '2014_11_07_021042_add_image_to_supplier', 1),
(87, '2014_11_20_203007_add_username_to_user', 1),
(88, '2014_11_20_223947_add_auto_to_settings', 1),
(89, '2014_11_20_224421_add_prefix_to_settings', 1),
(90, '2014_11_21_104401_change_licence_type', 1),
(91, '2014_12_09_082500_add_fields_maintained_term_to_licenses', 1),
(92, '2015_02_04_155757_increase_user_field_lengths', 1),
(93, '2015_02_07_013537_add_soft_deleted_to_log', 1),
(94, '2015_02_10_040958_fix_bad_assigned_to_ids', 1),
(95, '2015_02_10_053310_migrate_data_to_new_statuses', 1),
(96, '2015_02_11_044104_migrate_make_license_assigned_null', 1),
(97, '2015_02_11_104406_migrate_create_requests_table', 1),
(98, '2015_02_12_001312_add_mac_address_to_asset', 1),
(99, '2015_02_12_024100_change_license_notes_type', 1),
(100, '2015_02_17_231020_add_localonly_to_settings', 1),
(101, '2015_02_19_222322_add_logo_and_colors_to_settings', 1),
(102, '2015_02_24_072043_add_alerts_to_settings', 1),
(103, '2015_02_25_022931_add_eula_fields', 1),
(104, '2015_02_25_204513_add_accessories_table', 1),
(105, '2015_02_26_091228_add_accessories_user_table', 1),
(106, '2015_02_26_115128_add_deleted_at_models', 1),
(107, '2015_02_26_233005_add_category_type', 1),
(108, '2015_03_01_231912_update_accepted_at_to_acceptance_id', 1),
(109, '2015_03_05_011929_add_qr_type_to_settings', 1),
(110, '2015_03_18_055327_add_note_to_user', 1),
(111, '2015_04_29_234704_add_slack_to_settings', 1),
(112, '2015_05_04_085151_add_parent_id_to_locations_table', 1),
(113, '2015_05_22_124421_add_reassignable_to_licenses', 1),
(114, '2015_06_10_003314_fix_default_for_user_notes', 1),
(115, '2015_06_10_003554_create_consumables', 1),
(116, '2015_06_15_183253_move_email_to_username', 1),
(117, '2015_06_23_070346_make_email_nullable', 1),
(118, '2015_06_26_213716_create_asset_maintenances_table', 1),
(119, '2015_07_04_212443_create_custom_fields_table', 1),
(120, '2015_07_09_014359_add_currency_to_settings_and_locations', 1),
(121, '2015_07_21_122022_add_expected_checkin_date_to_asset_logs', 1),
(122, '2015_07_24_093845_add_checkin_email_to_category_table', 1),
(123, '2015_07_25_055415_remove_email_unique_constraint', 1),
(124, '2015_07_29_230054_add_thread_id_to_asset_logs_table', 1),
(125, '2015_07_31_015430_add_accepted_to_assets', 1),
(126, '2015_09_09_195301_add_custom_css_to_settings', 1),
(127, '2015_09_21_235926_create_custom_field_custom_fieldset', 1),
(128, '2015_09_22_000104_create_custom_fieldsets', 1),
(129, '2015_09_22_003321_add_fieldset_id_to_assets', 1),
(130, '2015_09_22_003413_migrate_mac_address', 1),
(131, '2015_09_28_003314_fix_default_purchase_order', 1),
(132, '2015_10_01_024551_add_accessory_consumable_price_info', 1),
(133, '2015_10_12_192706_add_brand_to_settings', 1),
(134, '2015_10_22_003314_fix_defaults_accessories', 1),
(135, '2015_10_23_182625_add_checkout_time_and_expected_checkout_date_to_assets', 1),
(136, '2015_11_05_061015_create_companies_table', 1),
(137, '2015_11_05_061115_add_company_id_to_consumables_table', 1),
(138, '2015_11_05_183749_image', 1),
(139, '2015_11_06_092038_add_company_id_to_accessories_table', 1),
(140, '2015_11_06_100045_add_company_id_to_users_table', 1),
(141, '2015_11_06_134742_add_company_id_to_licenses_table', 1),
(142, '2015_11_08_035832_add_company_id_to_assets_table', 1),
(143, '2015_11_08_222305_add_ldap_fields_to_settings', 1),
(144, '2015_11_15_151803_add_full_multiple_companies_support_to_settings_table', 1),
(145, '2015_11_26_195528_import_ldap_settings', 1),
(146, '2015_11_30_191504_remove_fk_company_id', 1),
(147, '2015_12_21_193006_add_ldap_server_cert_ignore_to_settings_table', 1),
(148, '2015_12_30_233509_add_timestamp_and_userId_to_custom_fields', 1),
(149, '2015_12_30_233658_add_timestamp_and_userId_to_custom_fieldsets', 1),
(150, '2016_01_28_041048_add_notes_to_models', 1),
(151, '2016_02_19_070119_add_remember_token_to_users_table', 1),
(152, '2016_02_19_073625_create_password_resets_table', 1),
(153, '2016_03_02_193043_add_ldap_flag_to_users', 1),
(154, '2016_03_02_220517_update_ldap_filter_to_longer_field', 1),
(155, '2016_03_08_225351_create_components_table', 1),
(156, '2016_03_09_024038_add_min_stock_to_tables', 1),
(157, '2016_03_10_133849_add_locale_to_users', 1),
(158, '2016_03_10_135519_add_locale_to_settings', 1),
(159, '2016_03_11_185621_add_label_settings_to_settings', 1),
(160, '2016_03_22_125911_fix_custom_fields_regexes', 1),
(161, '2016_04_28_141554_add_show_to_users', 1),
(162, '2016_05_16_164733_add_model_mfg_to_consumable', 1),
(163, '2016_05_19_180351_add_alt_barcode_settings', 1),
(164, '2016_05_19_191146_add_alter_interval', 1),
(165, '2016_05_19_192226_add_inventory_threshold', 1),
(166, '2016_05_20_024859_remove_option_keys_from_settings_table', 1),
(167, '2016_05_20_143758_remove_option_value_from_settings_table', 1),
(168, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(169, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(170, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(171, '2016_06_01_000004_create_oauth_clients_table', 1),
(172, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(173, '2016_06_01_140218_add_email_domain_and_format_to_settings', 1),
(174, '2016_06_22_160725_add_user_id_to_maintenances', 1),
(175, '2016_07_13_150015_add_is_ad_to_settings', 1),
(176, '2016_07_14_153609_add_ad_domain_to_settings', 1),
(177, '2016_07_22_003348_fix_custom_fields_regex_stuff', 1),
(178, '2016_07_22_054850_one_more_mac_addr_fix', 1),
(179, '2016_07_22_143045_add_port_to_ldap_settings', 1),
(180, '2016_07_22_153432_add_tls_to_ldap_settings', 1),
(181, '2016_07_27_211034_add_zerofill_to_settings', 1),
(182, '2016_08_02_124944_add_color_to_statuslabel', 1),
(183, '2016_08_04_134500_add_disallow_ldap_pw_sync_to_settings', 1),
(184, '2016_08_09_002225_add_manufacturer_to_licenses', 1),
(185, '2016_08_12_121613_add_manufacturer_to_accessories_table', 1),
(186, '2016_08_23_143353_add_new_fields_to_custom_fields', 1),
(187, '2016_08_23_145619_add_show_in_nav_to_status_labels', 1),
(188, '2016_08_30_084634_make_purchase_cost_nullable', 1),
(189, '2016_09_01_141051_add_requestable_to_asset_model', 1),
(190, '2016_09_02_001448_create_checkout_requests_table', 1),
(191, '2016_09_04_180400_create_actionlog_table', 1),
(192, '2016_09_04_182149_migrate_asset_log_to_action_log', 1),
(193, '2016_09_19_235935_fix_fieldtype_for_target_type', 1),
(194, '2016_09_23_140722_fix_modelno_in_consumables_to_string', 1),
(195, '2016_09_28_231359_add_company_to_logs', 1),
(196, '2016_10_14_130709_fix_order_number_to_varchar', 1),
(197, '2016_10_16_015024_rename_modelno_to_model_number', 1),
(198, '2016_10_16_015211_rename_consumable_modelno_to_model_number', 1),
(199, '2016_10_16_143235_rename_model_note_to_notes', 1),
(200, '2016_10_16_165052_rename_component_total_qty_to_qty', 1),
(201, '2016_10_19_145520_fix_order_number_in_components_to_string', 1),
(202, '2016_10_27_151715_add_serial_to_components', 1),
(203, '2016_10_27_213251_increase_serial_field_capacity', 1),
(204, '2016_10_29_002724_enable_2fa_fields', 1),
(205, '2016_10_29_082408_add_signature_to_acceptance', 1),
(206, '2016_11_01_030818_fix_forgotten_filename_in_action_logs', 1),
(207, '2016_11_13_020954_rename_component_serial_number_to_serial', 1),
(208, '2016_11_16_172119_increase_purchase_cost_size', 1),
(209, '2016_11_17_161317_longer_state_field_in_location', 1),
(210, '2016_11_17_193706_add_model_number_to_accessories', 1),
(211, '2016_11_24_160405_add_missing_target_type_to_logs_table', 1),
(212, '2016_12_07_173720_increase_size_of_state_in_suppliers', 1),
(213, '2016_12_19_004212_adjust_locale_length_to_10', 1),
(214, '2016_12_19_133936_extend_phone_lengths_in_supplier_and_elsewhere', 1),
(215, '2016_12_27_212631_make_asset_assigned_to_polymorphic', 1),
(216, '2017_01_09_040429_create_locations_ldap_query_field', 1),
(217, '2017_01_14_002418_create_imports_table', 1),
(218, '2017_01_25_063357_fix_utf8_custom_field_column_names', 1),
(219, '2017_03_03_154632_add_time_date_display_to_settings', 1),
(220, '2017_03_10_210807_add_fields_to_manufacturer', 1),
(221, '2017_05_08_195520_increase_size_of_field_values_in_custom_fields', 1),
(222, '2017_05_22_204422_create_departments', 1),
(223, '2017_05_22_233509_add_manager_to_locations_table', 1),
(224, '2017_06_14_122059_add_next_autoincrement_to_settings', 1),
(225, '2017_06_18_151753_add_header_and_first_row_to_importer_table', 1),
(226, '2017_07_07_191533_add_login_text', 1),
(227, '2017_07_25_130710_add_thumbsize_to_settings', 1),
(228, '2017_08_03_160105_set_asset_archived_to_zero_default', 1),
(229, '2017_08_22_180636_add_secure_password_options', 1),
(230, '2017_08_25_074822_add_auditing_tables', 1),
(231, '2017_08_25_101435_add_auditing_to_settings', 1),
(232, '2017_09_18_225619_fix_assigned_type_not_being_nulled', 1),
(233, '2017_10_03_015503_drop_foreign_keys', 1),
(234, '2017_10_10_123504_allow_nullable_depreciation_id_in_models', 1),
(235, '2017_10_17_133709_add_display_url_to_settings', 1),
(236, '2017_10_19_120002_add_custom_forgot_password_url', 1),
(237, '2017_10_19_130406_add_image_and_supplier_to_accessories', 1),
(238, '2017_10_20_234129_add_location_indices_to_assets', 1),
(239, '2017_10_25_202930_add_images_uploads_to_locations_manufacturers_etc', 1),
(240, '2017_10_27_180947_denorm_asset_locations', 1),
(241, '2017_10_27_192423_migrate_denormed_asset_locations', 1),
(242, '2017_10_30_182938_add_address_to_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `eol` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deprecated_mac_address` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fieldset_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `name`, `model_number`, `manufacturer_id`, `category_id`, `created_at`, `updated_at`, `depreciation_id`, `user_id`, `eol`, `image`, `deprecated_mac_address`, `deleted_at`, `fieldset_id`, `notes`, `requestable`) VALUES
(1, 'Macbook Pro 13\"', '4485863161749350', 1, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'mbp.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(2, 'Macbook Air', '4716597924711114', 1, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'macbookair.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(3, 'Surface', '4024007143524311', 2, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'surface.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(4, 'XPS 13', '4716634238205', 3, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'xps.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(5, 'Spectre', '4868510970594298', 5, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'spectre.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(6, 'ZenBook UX310', '4485256614357097', 4, 1, '2017-11-06 16:06:19', '2017-11-06 16:06:19', 1, 1, 36, 'zenbook.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(7, 'Yoga 910', '4024007132299', 6, 1, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 36, 'yoga.png', 0, NULL, NULL, 'Created by demo seeder', 0),
(8, 'iMac Pro', '2500725916866471', 1, 2, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 24, 'imacpro.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(9, 'Lenovo Intel Core i5', '4423998576557975', 6, 2, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 24, 'lenovoi5.png', 0, NULL, NULL, 'Created by demo seeder', 0),
(10, 'OptiPlex', '5040 (MRR81)', 3, 2, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 24, 'optiplex.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(11, 'SoundStation 2', '6011754062695347', 8, 6, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 12, 'soundstation.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(12, 'Polycom CX3000 IP Conference Phone', '4485937511938', 8, 6, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 12, 'cx3000.png', 0, NULL, NULL, 'Created by demo seeder', 0),
(13, 'iPad Pro', '2552193838749985', 1, 3, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 12, 'ipad.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(14, 'Tab3', '2604890958725053', 6, 3, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 12, 'tab3.png', 0, NULL, NULL, 'Created by demo seeder', 0),
(15, 'iPhone 6s', '4024007121739055', 1, 4, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 3, 1, 12, 'iphone6.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(16, 'iPhone 7', '4485080667209322', 1, 4, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 1, 1, 12, 'iphone7.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(17, 'Ultrafine 4k', '4916144214862071', 7, 5, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 2, 1, 12, 'ultrafine.jpg', 0, NULL, NULL, 'Created by demo seeder', 0),
(18, 'Ultrasharp U2415', '2604403289376958', 3, 5, '2017-11-06 16:06:20', '2017-11-06 16:06:20', 2, 1, 12, 'ultrasharp.jpg', 0, NULL, NULL, 'Created by demo seeder', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Snipe-IT Personal Access Client', 'dmRANTSi9Zllhn2SJtjI8lXmdvpNcNZSd8LHIZGx', 'http://localhost', 1, 0, 0, '2017-11-06 16:11:09', '2017-11-06 16:11:09'),
(2, NULL, 'Snipe-IT Password Grant Client', 'AbnXKtCHlAq9iBwi0gKy1NJcDxJWQbWymiN0VB6u', 'http://localhost', 0, 1, 0, '2017-11-06 16:11:10', '2017-11-06 16:11:10'),
(3, NULL, 'Snipe-IT Personal Access Client', 'eBJHH0uwLzQns4rDb2l74kwsu7rHRGHJpv59CGwe', 'http://localhost', 1, 0, 0, '2017-11-06 16:11:11', '2017-11-06 16:11:11'),
(4, NULL, 'Snipe-IT Password Grant Client', 'yBvFxCYZG8mBKJjogkMyVO54zb2seQwPYqxYL5Wx', 'http://localhost', 0, 1, 0, '2017-11-06 16:11:11', '2017-11-06 16:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-11-06 16:11:10', '2017-11-06 16:11:10'),
(2, 3, '2017-11-06 16:11:11', '2017-11-06 16:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_assets`
--

CREATE TABLE `requested_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `denied_at` datetime DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_page` int(11) NOT NULL DEFAULT 20,
  `site_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Snipe IT Asset Management',
  `qr_code` int(11) DEFAULT NULL,
  `qr_text` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_asset_name` int(11) DEFAULT NULL,
  `display_checkout_date` int(11) DEFAULT NULL,
  `display_eol` int(11) DEFAULT NULL,
  `auto_increment_assets` int(11) NOT NULL DEFAULT 0,
  `auto_increment_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `load_remote` tinyint(1) NOT NULL DEFAULT 1,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `default_eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'QRCODE',
  `slack_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_botname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` tinyint(4) NOT NULL DEFAULT 1,
  `ldap_enabled` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_server` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_uname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_pword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_basedn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_filter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_username_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'samaccountname',
  `ldap_lname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sn',
  `ldap_fname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'givenname',
  `ldap_auth_filter_query` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'uid=samaccountname',
  `ldap_version` int(11) DEFAULT 3,
  `ldap_active_flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_emp_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_multiple_companies_support` tinyint(1) NOT NULL DEFAULT 0,
  `ldap_server_cert_ignore` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'en_US.UTF-8',
  `labels_per_page` tinyint(4) NOT NULL DEFAULT 30,
  `labels_width` decimal(6,5) NOT NULL DEFAULT 2.62500,
  `labels_height` decimal(6,5) NOT NULL DEFAULT 1.00000,
  `labels_pmargin_left` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_right` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_top` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_pmargin_bottom` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_display_bgutter` decimal(6,5) NOT NULL DEFAULT 0.07000,
  `labels_display_sgutter` decimal(6,5) NOT NULL DEFAULT 0.05000,
  `labels_fontsize` tinyint(4) NOT NULL DEFAULT 9,
  `labels_pagewidth` decimal(7,5) NOT NULL DEFAULT 8.50000,
  `labels_pageheight` decimal(7,5) NOT NULL DEFAULT 11.00000,
  `labels_display_name` tinyint(4) NOT NULL DEFAULT 0,
  `labels_display_serial` tinyint(4) NOT NULL DEFAULT 1,
  `labels_display_tag` tinyint(4) NOT NULL DEFAULT 1,
  `alt_barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'C128',
  `alt_barcode_enabled` tinyint(1) DEFAULT 1,
  `alert_interval` int(11) DEFAULT 30,
  `alert_threshold` int(11) DEFAULT 5,
  `email_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `username_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0,
  `ad_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_port` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '389',
  `ldap_tls` tinyint(1) NOT NULL DEFAULT 0,
  `zerofill_count` int(11) NOT NULL DEFAULT 5,
  `ldap_pw_sync` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_enabled` tinyint(4) DEFAULT NULL,
  `require_accept_signature` tinyint(1) NOT NULL DEFAULT 0,
  `date_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y-m-d',
  `time_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h:i A',
  `next_auto_tag_base` bigint(20) NOT NULL DEFAULT 1,
  `login_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_max_h` int(11) DEFAULT 50,
  `pwd_secure_uncommon` tinyint(1) NOT NULL DEFAULT 0,
  `pwd_secure_complexity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd_secure_min` int(11) NOT NULL DEFAULT 8,
  `audit_interval` int(11) DEFAULT NULL,
  `audit_warning_days` int(11) DEFAULT NULL,
  `show_url_in_emails` tinyint(1) NOT NULL DEFAULT 0,
  `custom_forgot_pass_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `user_id`, `per_page`, `site_name`, `qr_code`, `qr_text`, `display_asset_name`, `display_checkout_date`, `display_eol`, `auto_increment_assets`, `auto_increment_prefix`, `load_remote`, `logo`, `header_color`, `alert_email`, `alerts_enabled`, `default_eula_text`, `barcode_type`, `slack_endpoint`, `slack_channel`, `slack_botname`, `default_currency`, `custom_css`, `brand`, `ldap_enabled`, `ldap_server`, `ldap_uname`, `ldap_pword`, `ldap_basedn`, `ldap_filter`, `ldap_username_field`, `ldap_lname_field`, `ldap_fname_field`, `ldap_auth_filter_query`, `ldap_version`, `ldap_active_flag`, `ldap_emp_num`, `ldap_email`, `full_multiple_companies_support`, `ldap_server_cert_ignore`, `locale`, `labels_per_page`, `labels_width`, `labels_height`, `labels_pmargin_left`, `labels_pmargin_right`, `labels_pmargin_top`, `labels_pmargin_bottom`, `labels_display_bgutter`, `labels_display_sgutter`, `labels_fontsize`, `labels_pagewidth`, `labels_pageheight`, `labels_display_name`, `labels_display_serial`, `labels_display_tag`, `alt_barcode`, `alt_barcode_enabled`, `alert_interval`, `alert_threshold`, `email_domain`, `email_format`, `username_format`, `is_ad`, `ad_domain`, `ldap_port`, `ldap_tls`, `zerofill_count`, `ldap_pw_sync`, `two_factor_enabled`, `require_accept_signature`, `date_display_format`, `time_display_format`, `next_auto_tag_base`, `login_note`, `thumbnail_max_h`, `pwd_secure_uncommon`, `pwd_secure_complexity`, `pwd_secure_min`, `audit_interval`, `audit_warning_days`, `show_url_in_emails`, `custom_forgot_pass_url`) VALUES
(1, '2017-11-06 16:14:37', '2017-11-06 16:14:37', 1, 20, 'Asset Management', NULL, NULL, NULL, NULL, NULL, 0, '0', 1, NULL, NULL, 'gbenga@dangote.com', 1, NULL, 'QRCODE', NULL, NULL, NULL, 'USD', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'samaccountname', 'sn', 'givenname', 'uid=samaccountname', 3, NULL, NULL, NULL, 0, 0, 'en', 30, '2.62500', '1.00000', '0.21975', '0.21975', '0.50000', '0.50000', '0.07000', '0.05000', 9, '8.50000', '11.00000', 0, 1, 1, 'C128', 1, 30, 5, 'dangote.com', 'firstname', 'filastname', 0, NULL, '389', 0, 5, 1, NULL, 0, 'Y-m-d', 'h:i A', 1, NULL, 50, 0, NULL, 10, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_labels`
--

CREATE TABLE `status_labels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deployable` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_nav` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_labels`
--

INSERT INTO `status_labels` (`id`, `name`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `deployable`, `pending`, `archived`, `notes`, `color`, `show_in_nav`) VALUES
(1, 'Ready to Deploy', 1, '2007-06-09 16:16:03', '2003-04-14 20:06:44', NULL, 1, 0, 0, 'Voluptas impedit delectus consequatur ab voluptas.', NULL, 0),
(2, 'Pending', 1, '1974-12-23 13:21:33', '2011-12-25 17:17:27', NULL, 0, 1, 0, 'Modi qui fuga et dolorem.', NULL, 0),
(3, 'Archived', 1, '2004-08-04 22:48:45', '2007-04-13 19:48:32', NULL, 0, 0, 1, 'These assets are permanently undeployable', NULL, 0),
(4, 'Out for Diagnostics', 1, '1975-11-11 14:56:55', '2012-03-14 08:45:08', NULL, 0, 0, 0, '', NULL, 0),
(5, 'Out for Repair', 1, '2016-10-18 07:28:55', '1978-04-19 00:19:58', NULL, 0, 0, 0, '', NULL, 0),
(6, 'Broken - Not Fixable', 1, '1985-10-20 08:59:20', '1971-04-07 04:36:15', NULL, 0, 0, 0, '', NULL, 0),
(7, 'Lost/Stolen', 1, '1994-11-11 17:34:19', '1993-10-05 21:41:33', NULL, 0, 0, 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `address2`, `city`, `state`, `country`, `phone`, `fax`, `email`, `contact`, `notes`, `created_at`, `updated_at`, `user_id`, `deleted_at`, `zip`, `url`, `image`) VALUES
(1, 'Nitzsche and Sons', '417 Deontae Crest Suite 280', 'Suite 273', 'Bauchport', 'WV', 'PN', '(642) 497-4508', '1-891-541-1756', 'christiansen.marianne@example.com', 'Quinton Rosenbaum', 'Amet quia qui occaecati labore architecto magni vitae distinctio. Amet ipsa non iste. Esse in blanditiis temporibus asperiores et neque et. Suscipit perferendis delectus fugiat nihil asperior', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, NULL, '72742', 'http://schuppe.com/voluptates-officiis-ut-maiores-veritatis-officia-aut-qui', NULL),
(2, 'Stehr, Kris and Stoltenberg', '99435 Jonatan Pine Suite 470', 'Suite 283', 'Madonnachester', 'OR', 'IQ', '1-521-829-0599', '337-259-5812 x6672', 'qbalistreri@example.org', 'Brisa Funk', 'Sed deserunt aspernatur vel eum expedita id. Quo esse porro id tenetur ipsam quos. Excepturi pariatur voluptatibus reiciendis. Voluptatem aliquam dolorem ut amet ad.', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, NULL, '72106-4643', 'http://www.sipes.net/illum-quis-consequatur-dolores-ut', NULL),
(3, 'Weber Inc', '47044 Phyllis Circle Suite 517', 'Suite 820', 'Lockmanborough', 'MN', 'PW', '(747) 247-7379 x36709', '662.976.4824 x83308', 'pkrajcik@example.net', 'Deonte Wisoky DVM', 'Quibusdam ut et vel. Ut et voluptas enim. Magnam similique aut dolore recusandae repellat corrupti quaerat. Blanditiis et neque eos. Molestias temporibus nam molestias quis ipsa provident asp', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, NULL, '94202', 'http://www.effertz.net/', NULL),
(4, 'Hilll-Goodwin', '50552 Catalina Club Suite 924', 'Suite 960', 'North Catharineberg', 'SC', 'DK', '(541) 680-4403 x29919', '1-251-924-5128', 'xnienow@example.com', 'Noble Hettinger', 'Sed est sapiente est odio suscipit. Ea nisi autem consequatur qui autem natus sapiente. Corporis in hic placeat aut. Dolor animi beatae quia animi quibusdam.', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, NULL, '04494-5588', 'http://www.walsh.biz/deserunt-ut-nemo-et-sunt-dolor-ducimus-sit-iure.html', NULL),
(5, 'Kessler Inc', '65658 Homenick Manor', 'Suite 739', 'West Stephanyport', 'UT', 'TO', '(632) 488-0525 x52507', '401-448-7425 x923', 'konopelski.susanna@example.com', 'Lia Wilkinson', 'Rerum id totam adipisci. Aperiam dicta ea nihil dolore minus quod quisquam. Provident vel nihil atque rerum. Impedit rerum ab labore. Doloremque suscipit qui consequatur iste.', '2017-11-06 16:06:18', '2017-11-06 16:06:18', NULL, NULL, '73880', 'http://lakin.com/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gravatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `employee_num` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_import` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'en_US.UTF-8',
  `show_in_list` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_optin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`, `website`, `country`, `gravatar`, `location_id`, `phone`, `jobtitle`, `manager_id`, `employee_num`, `avatar`, `username`, `notes`, `company_id`, `remember_token`, `ldap_import`, `locale`, `show_in_list`, `two_factor_secret`, `two_factor_enrolled`, `two_factor_optin`, `department_id`, `address`, `city`, `state`, `zip`) VALUES
(1, 'mohr.stacey@example.net', '$2y$10$URFdQpYOWH1R0JvSf2vl1uPStDF.9rhHvsc6oP6CEKS/YWZOHx6y6', '{\"superuser\":\"1\"}', 1, NULL, NULL, '2017-11-06 16:24:52', NULL, NULL, 'Admin', 'User', '2017-11-06 16:06:07', '2017-11-06 16:24:52', NULL, NULL, NULL, NULL, 5, '516.347.1554 x2747', 'Logging Worker', NULL, '18613', NULL, 'admin', 'Created by DB seeder', 4, 'UemlHcl1fLr2vDv43SauvwbURNbKjHgiBgwyTWPYDNYTlhRx34LWxRl95Bkk', 0, 'id_ID', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(2, 'snipe@snipe.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"superuser\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Snipe E.', 'Head', '2017-11-06 16:06:07', '2017-11-06 16:06:07', NULL, NULL, NULL, NULL, 3, '1-841-378-7260 x83083', 'Psychiatric Technician', NULL, '31018', NULL, 'snipe', 'Created by DB seeder', 1, NULL, 0, 'bg_BG', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(3, 'monroe.powlowski@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"superuser\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Alexis', 'Zulauf', '2017-11-06 16:06:07', '2017-11-06 16:06:07', NULL, NULL, NULL, NULL, 4, '994-710-4755 x61582', 'TSA', NULL, '18344', NULL, 'jules20', 'Created by DB seeder', 3, NULL, 0, 'aa_ET', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(4, 'horacio60@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"superuser\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Braeden', 'Thiel', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 3, '735.373.0631', 'Sawing Machine Operator', NULL, '5690', NULL, 'noemi08', 'Created by DB seeder', 4, NULL, 0, 'en_SG', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(5, 'luther59@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"superuser\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Wilhelmine', 'Kuhic', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 5, '1-464-819-3321 x81891', 'Word Processors and Typist', NULL, '16157', NULL, 'frederick.prosacco', 'Created by DB seeder', 2, NULL, 0, 'ur_IN', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(6, 'zachery.goyette@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"admin\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Bernadine', 'Kerluke', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 3, '+1.753.779.2131', 'Production Control Manager', 1, '25041', NULL, 'gaylord.carson', 'Created by DB seeder', 3, NULL, 0, 'kam_KE', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(7, 'king.skye@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"admin\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Angel', 'West', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 1, '612.781.1392', 'Rail Transportation Worker', 1, '12412', NULL, 'cummings.foster', 'Created by DB seeder', 2, NULL, 0, 'sl_SI', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(8, 'monte17@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"admin\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Ivy', 'Hilpert', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 5, '+1-982-626-5215', 'Molding Machine Operator', 2, '6698', NULL, 'keon.cassin', 'Created by DB seeder', 3, NULL, 0, 'kk_KZ', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(9, 'aquitzon@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Shirley', 'Schmeler', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 1, '(981) 960-0425 x6582', 'Library Worker', NULL, '17284', NULL, 'andre.welch', 'Created by DB seeder', 4, NULL, 0, 'de_CH', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(10, 'fisher.elinore@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Madisen', 'Bartoletti', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 5, '415.413.1987', 'Psychiatric Technician', NULL, '20727', NULL, 'remington80', 'Created by DB seeder', 1, NULL, 0, 'ug_CN', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(11, 'garret97@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Brionna', 'Corkery', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 2, '512-432-9889', 'Mathematical Scientist', NULL, '22151', NULL, 'mayert.kellie', 'Created by DB seeder', 4, NULL, 0, 'ar_TN', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(12, 'eula42@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Savanna', 'Koch', '2017-11-06 16:06:08', '2017-11-06 16:06:08', NULL, NULL, NULL, NULL, 4, '1-961-680-9767 x66758', 'Counseling Psychologist', NULL, '16511', NULL, 'reichel.hilbert', 'Created by DB seeder', 1, NULL, 0, 'tn_ZA', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(13, 'columbus.schowalter@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Alvina', 'Mante', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 2, '(363) 644-3956 x6156', 'Economist', NULL, '9075', NULL, 'omosciski', 'Created by DB seeder', 3, NULL, 0, 'kfo_CI', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(14, 'schmitt.landen@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Bettye', 'Windler', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 4, '1-571-316-8931', 'Production Inspector', NULL, '13559', NULL, 'cormier.rowan', 'Created by DB seeder', 4, NULL, 0, 'id_ID', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(15, 'uboyer@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Quincy', 'Botsford', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 1, '257.249.2643 x77480', 'Oil and gas Operator', NULL, '32610', NULL, 'jamil27', 'Created by DB seeder', 3, NULL, 0, 'cs_CZ', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(16, 'rod.schumm@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Roberto', 'Toy', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 5, '280.228.7961 x1898', 'Geographer', NULL, '33565', NULL, 'bogan.cordia', 'Created by DB seeder', 2, NULL, 0, 'nr_ZA', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(17, 'domenic.aufderhar@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Julianne', 'Beer', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 4, '(290) 243-1517 x180', 'Child Care Worker', NULL, '32584', NULL, 'xkoch', 'Created by DB seeder', 2, NULL, 0, 'ln_CG', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(18, 'herman.angelina@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Delphia', 'Heidenreich', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 2, '1-589-346-5863 x531', 'Automatic Teller Machine Servicer', NULL, '9735', NULL, 'kdenesik', 'Created by DB seeder', 2, NULL, 0, 'mk_MK', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(19, 'genoveva55@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Janessa', 'Spencer', '2017-11-06 16:06:09', '2017-11-06 16:06:09', NULL, NULL, NULL, NULL, 4, '1-265-798-1044', 'Farm Labor Contractor', NULL, '13821', NULL, 'marcella77', 'Created by DB seeder', 2, NULL, 0, 'es_CR', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(20, 'monroe.gerlach@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Fausto', 'Bernier', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 2, '+1 (397) 504-7446', 'Media and Communication Worker', NULL, '9809', NULL, 'mateo.bauch', 'Created by DB seeder', 1, NULL, 0, 'syr_SY', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(21, 'yfunk@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Roberta', 'Cronin', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 3, '679-484-8493 x4234', 'Civil Engineering Technician', NULL, '32410', NULL, 'gerardo.hermann', 'Created by DB seeder', 4, NULL, 0, 'mt_MT', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(22, 'vito.romaguera@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Kay', 'Kilback', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 3, '316-836-3018 x680', 'Automotive Master Mechanic', NULL, '24286', NULL, 'sunny93', 'Created by DB seeder', 2, NULL, 0, 'se_FI', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(23, 'elton.legros@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Osvaldo', 'Kulas', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 2, '(347) 768-4324', 'Service Station Attendant', NULL, '11811', NULL, 'psawayn', 'Created by DB seeder', 3, NULL, 0, 'ar_QA', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(24, 'rickey22@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Lelia', 'Predovic', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 2, '+12466039577', 'Agricultural Worker', NULL, '5913', NULL, 'dmante', 'Created by DB seeder', 3, NULL, 0, 'de_CH', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(25, 'qhalvorson@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Francis', 'Wiza', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 5, '(654) 285-4957 x957', 'University', NULL, '10278', NULL, 'sammie.parker', 'Created by DB seeder', 1, NULL, 0, 'sa_IN', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(26, 'bret.schaefer@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Cecelia', 'Bartell', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 2, '1-502-216-9836 x254', 'Veterinary Assistant OR Laboratory Animal Caretaker', NULL, '4933', NULL, 'orrin19', 'Created by DB seeder', 1, NULL, 0, 'bo_CN', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(27, 'gdurgan@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Beau', 'Bogan', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 4, '(320) 876-8489', 'Physicist', NULL, '34981', NULL, 'marley.bergstrom', 'Created by DB seeder', 3, NULL, 0, 'en_GU', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(28, 'daphney.fay@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Marge', 'Treutel', '2017-11-06 16:06:10', '2017-11-06 16:06:10', NULL, NULL, NULL, NULL, 4, '1-521-443-9748 x05523', 'Production Control Manager', NULL, '28038', NULL, 'norris.hagenes', 'Created by DB seeder', 2, NULL, 0, 'ku_SY', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(29, 'johnathan19@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Lenny', 'Mann', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 2, '+1 (454) 540-8868', 'Motorboat Operator', NULL, '32893', NULL, 'nitzsche.walker', 'Created by DB seeder', 4, NULL, 0, 'en_IN', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(30, 'hermann.aisha@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Jillian', 'Zieme', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 2, '+1-912-933-6969', 'Adjustment Clerk', NULL, '14396', NULL, 'pharvey', 'Created by DB seeder', 2, NULL, 0, 'ar_TN', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(31, 'lubowitz.icie@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Kayleigh', 'Fritsch', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 3, '(971) 492-3097 x3840', 'Stock Broker', NULL, '15364', NULL, 'veum.torey', 'Created by DB seeder', 4, NULL, 0, 'it_IT', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(32, 'xtreutel@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Vada', 'Gerlach', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 2, '1-819-467-4926 x57139', 'Aircraft Engine Specialist', NULL, '26135', NULL, 'myrtis17', 'Created by DB seeder', 3, NULL, 0, 'es_CR', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(33, 'andy68@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Ashlee', 'Daniel', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 5, '860-949-4922 x2467', 'Loan Counselor', NULL, '17797', NULL, 'bette26', 'Created by DB seeder', 4, NULL, 0, 'hi_IN', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(34, 'mustafa69@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Mae', 'Johnston', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 4, '1-457-482-6648 x63653', 'Educational Psychologist', NULL, '18362', NULL, 'marlen.kris', 'Created by DB seeder', 1, NULL, 0, 'rw_RW', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(35, 'nitzsche.tremayne@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Payton', 'McCullough', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 5, '1-408-893-5016 x779', 'Creative Writer', NULL, '28033', NULL, 'upouros', 'Created by DB seeder', 1, NULL, 0, 'se_NO', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(36, 'rlesch@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Uriah', 'Gulgowski', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 3, '559-877-9157', 'Semiconductor Processor', NULL, '22507', NULL, 'trever97', 'Created by DB seeder', 1, NULL, 0, 'ar_MA', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(37, 'ahackett@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Zackery', 'Bartoletti', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 5, '+1-950-484-3686', 'Project Manager', NULL, '26343', NULL, 'boyle.natalie', 'Created by DB seeder', 3, NULL, 0, 'de_DE', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(38, 'connelly.era@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Loy', 'Beatty', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 2, '497-910-4829 x067', 'Economist', NULL, '6237', NULL, 'hlebsack', 'Created by DB seeder', 4, NULL, 0, 'en_NZ', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(39, 'fhuel@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Ericka', 'Jones', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 4, '(869) 919-6565', 'Reporters OR Correspondent', NULL, '24800', NULL, 'djacobs', 'Created by DB seeder', 1, NULL, 0, 'es_GT', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(40, 'lurline.jakubowski@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Grayce', 'Ritchie', '2017-11-06 16:06:11', '2017-11-06 16:06:11', NULL, NULL, NULL, NULL, 1, '975.444.6202 x38956', 'Bus Driver', NULL, '7247', NULL, 'icie27', 'Created by DB seeder', 4, NULL, 0, 'sr_ME', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(41, 'luettgen.polly@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Hilda', 'Osinski', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 4, '(382) 497-2107 x8283', 'Radio Mechanic', NULL, '34647', NULL, 'kihn.maymie', 'Created by DB seeder', 2, NULL, 0, 'es_ES', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(42, 'jaleel.kreiger@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Kamren', 'Mertz', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 1, '1-324-393-6214 x69697', 'Pest Control Worker', NULL, '3991', NULL, 'keely.walter', 'Created by DB seeder', 1, NULL, 0, 'ss_ZA', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(43, 'darwin48@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Malinda', 'Auer', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 2, '527.525.5517', 'Oil Service Unit Operator', NULL, '7731', NULL, 'daniel.vernie', 'Created by DB seeder', 4, NULL, 0, 'ti_ER', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(44, 'shemar56@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Jamir', 'Kris', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 4, '(271) 390-5798', 'Dot Etcher', NULL, '15923', NULL, 'heath14', 'Created by DB seeder', 3, NULL, 0, 'mt_MT', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(45, 'abigail.kessler@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Christy', 'Heller', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 3, '+1-689-673-9956', 'Operating Engineer', NULL, '32678', NULL, 'wendell82', 'Created by DB seeder', 4, NULL, 0, 'zh_CN', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(46, 'paucek.rolando@example.com', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Shanelle', 'Kuhic', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 5, '1-930-624-4859 x9880', 'Tax Examiner', NULL, '34609', NULL, 'tate.schmitt', 'Created by DB seeder', 2, NULL, 0, 'nds_DE', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(47, 'georgiana71@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Olga', 'Ward', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 2, '+15533830893', 'Production Inspector', NULL, '26886', NULL, 'laurianne89', 'Created by DB seeder', 4, NULL, 0, 'ii_CN', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(48, 'wilhelm23@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Janick', 'Steuber', '2017-11-06 16:06:12', '2017-11-06 16:06:12', NULL, NULL, NULL, NULL, 1, '1-761-280-9245 x566', 'Detective', NULL, '24951', NULL, 'mcormier', 'Created by DB seeder', 2, NULL, 0, 'ts_ZA', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(49, 'florian84@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Ceasar', 'Cronin', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 5, '1-780-371-1873 x9828', 'Chemical Equipment Operator', NULL, '28376', NULL, 'dimitri28', 'Created by DB seeder', 2, NULL, 0, 'nn_NO', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(50, 'farrell.agustina@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Albina', 'Heathcote', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 5, '682.599.0609 x243', 'Mechanical Engineering Technician', NULL, '6208', NULL, 'zhagenes', 'Created by DB seeder', 4, NULL, 0, 'en_AS', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(51, 'mona.lynch@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Nannie', 'Pfannerstill', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 1, '413-559-7417 x53798', 'Dental Laboratory Technician', NULL, '26470', NULL, 'ystreich', 'Created by DB seeder', 1, NULL, 0, 'ha_NE', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL),
(52, 'audra.kerluke@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Carroll', 'Wolff', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 5, '+17309600141', 'Cutting Machine Operator', NULL, '7955', NULL, 'mclaughlin.leta', 'Created by DB seeder', 1, NULL, 0, 'ar_IQ', 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL),
(53, 'hertha65@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Wendell', 'Maggio', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 3, '+19514872026', 'History Teacher', NULL, '32572', NULL, 'jackeline67', 'Created by DB seeder', 4, NULL, 0, 'es_US', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(54, 'srau@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Gabriel', 'Lang', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 3, '+1.776.896.7112', 'Agricultural Science Technician', NULL, '22024', NULL, 'lloyd.spencer', 'Created by DB seeder', 4, NULL, 0, 'ur_PK', 1, NULL, 0, 0, 6, NULL, NULL, NULL, NULL),
(55, 'mohr.bennie@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Susanna', 'Abernathy', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 3, '+14052823861', 'Naval Architects', NULL, '12442', NULL, 'antonia10', 'Created by DB seeder', 2, NULL, 0, 'kw_GB', 1, NULL, 0, 0, 2, NULL, NULL, NULL, NULL),
(56, 'cummings.roscoe@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Rollin', 'Ebert', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 3, '(924) 478-5411 x673', 'Cultural Studies Teacher', NULL, '7633', NULL, 'jack.bechtelar', 'Created by DB seeder', 4, NULL, 0, 'ar_OM', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(57, 'shanna84@example.net', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Mertie', 'Dicki', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 2, '1-665-255-0446', 'Oral Surgeon', NULL, '16149', NULL, 'xemmerich', 'Created by DB seeder', 3, NULL, 0, 'en_PH', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL),
(58, 'lueilwitz.elinore@example.org', '$2y$10$qr25Qa828HeQs7NAK/Wl2.uClnfZsPVPlSjTVyWEmGJTtHFGmHeCi', '{\"assets.view\":\"1\"}', 1, NULL, NULL, NULL, NULL, NULL, 'Madalyn', 'Dicki', '2017-11-06 16:06:13', '2017-11-06 16:06:13', NULL, NULL, NULL, NULL, 5, '907-325-4760 x6772', 'Central Office', NULL, '5047', NULL, 'xander.casper', 'Created by DB seeder', 4, NULL, 0, 'nds_DE', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL),
(59, 'gbenga@dangote.com', '$2y$10$URFdQpYOWH1R0JvSf2vl1uPStDF.9rhHvsc6oP6CEKS/YWZOHx6y6', '{\"superuser\":1}', 1, NULL, NULL, NULL, NULL, NULL, 'gbenga', 'gbenga', '2017-11-06 16:14:36', '2017-11-06 16:14:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gbenga', NULL, NULL, 'gYZEWPWeyW1lvEJkvdfWgjoN2VxR5rxpDt13J8Q1JrPHxUZgPhfI0wSLSbqy', 0, 'en_US.UTF-8', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories_users`
--
ALTER TABLE `accessories_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_logs_thread_id_index` (`thread_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_rtd_location_id_index` (`rtd_location_id`),
  ADD KEY `assets_assigned_type_assigned_to_index` (`assigned_type`,`assigned_to`);

--
-- Indexes for table `asset_logs`
--
ALTER TABLE `asset_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checkout_requests_user_id_requestable_id_requestable_type_unique` (`user_id`,`requestable_id`,`requestable_type`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_assets`
--
ALTER TABLE `components_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumables`
--
ALTER TABLE `consumables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumables_users`
--
ALTER TABLE `consumables_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depreciations`
--
ALTER TABLE `depreciations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_seats`
--
ALTER TABLE `license_seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `requested_assets`
--
ALTER TABLE `requested_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_labels`
--
ALTER TABLE `status_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `accessories_users`
--
ALTER TABLE `accessories_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1378;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1374;
--
-- AUTO_INCREMENT for table `asset_logs`
--
ALTER TABLE `asset_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `components_assets`
--
ALTER TABLE `components_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `consumables`
--
ALTER TABLE `consumables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `consumables_users`
--
ALTER TABLE `consumables_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `depreciations`
--
ALTER TABLE `depreciations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `license_seats`
--
ALTER TABLE `license_seats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `requested_assets`
--
ALTER TABLE `requested_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_labels`
--
ALTER TABLE `status_labels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
