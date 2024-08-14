-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 10:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salweenbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product Purchase', 'product-purchase', 1, '2022-06-22 03:49:01', '2023-12-06 23:06:00'),
(2, 'Product Sell', 'product-sell', 1, '2020-07-28 13:09:05', '2020-07-28 13:09:05'),
(3, 'Product Return', 'product-return', 1, '2021-09-14 05:59:26', '2021-09-14 05:59:26'),
(4, 'Cash Fund', 'cash-fund', 1, '2021-08-26 17:18:26', '2021-08-26 17:18:26'),
(6, 'Transport Cost', 'transport-cost', 1, '2020-09-04 11:51:38', '2020-09-04 11:51:38'),
(7, 'House rent', 'house-rent', 1, '2021-07-02 21:26:46', '2021-07-02 21:26:46'),
(8, 'Electricity Bill', 'electricity-bill', 1, '2021-07-04 23:54:29', '2021-07-04 23:54:29'),
(9, 'Courier Charge', 'courier-charge', 1, '2021-07-04 23:55:15', '2021-07-04 23:55:15'),
(10, 'Refreshment', 'refreshment', 1, '2021-07-04 23:55:34', '2021-07-04 23:55:34'),
(11, 'Market Bill', 'market-bill', 1, '2021-07-04 23:55:44', '2021-07-04 23:55:44'),
(12, 'Purchase Materials', 'purchase-materials', 1, '2021-07-04 23:56:08', '2021-07-04 23:56:08'),
(13, 'Packaging Cost', 'packaging-cost', 1, '2021-07-11 06:08:00', '2021-07-11 06:08:00'),
(14, 'Repair Materials', 'repair-materials', 1, '2021-07-11 06:08:55', '2021-07-11 06:08:55'),
(15, 'Damage/Loss', 'damage/loss', 1, '2021-07-19 08:34:00', '2022-10-16 01:45:54'),
(16, 'Web maintenance', 'web-maintenance', 1, '2021-07-19 08:34:34', '2021-07-19 08:34:34'),
(17, 'Others', 'others', 1, '2021-08-26 17:18:26', '2021-08-26 17:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `account_ledgers`
--

CREATE TABLE `account_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_head_id` bigint(20) UNSIGNED NOT NULL,
  `particulars` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` double NOT NULL DEFAULT 0,
  `credit` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Debit, 2=>Credit',
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_ledgers`
--

INSERT INTO `account_ledgers` (`id`, `account_head_id`, `particulars`, `debit`, `credit`, `balance`, `type`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Women Leather Fashion Ladies Messenger Handbag', 23000, 0, -23000, 1, 0, 1, '2024-05-05 01:37:33', '2024-05-05 01:37:33'),
(2, 2, 'Invoice No: 2024050604342665', 0, 1880, 1880, 2, 1, 0, '2024-05-05 22:34:26', '2024-05-05 22:34:26'),
(3, 2, 'Invoice No: 2024050610091465', 0, 1940, 1940, 2, 2, 0, '2024-05-06 04:09:14', '2024-05-06 04:09:14'),
(4, 1, 'Shoe', 30600, 0, -30600, 1, 0, 2, '2024-05-06 23:07:57', '2024-05-06 23:07:57'),
(5, 1, 'Womens Cass Shoes', 32000, 0, -32000, 1, 0, 3, '2024-05-06 23:12:53', '2024-05-06 23:12:53'),
(6, 1, 'Womens Cass Shoes', 26500, 0, -26500, 1, 0, 4, '2024-05-06 23:14:37', '2024-05-06 23:14:37'),
(7, 1, 'Womens Cass Shoes', 23500, 0, -23500, 1, 0, 5, '2024-05-06 23:16:40', '2024-05-06 23:16:40'),
(8, 1, 'Man\'s Cass Shoes', 33750, 0, -33750, 1, 0, 6, '2024-05-06 23:18:10', '2024-05-06 23:18:10'),
(9, 1, 'Man\'s Cass Shoes', 22500, 0, -22500, 1, 0, 7, '2024-05-06 23:21:06', '2024-05-06 23:21:06'),
(10, 1, 'Man\'s Cass Shoes', 14800, 0, -14800, 1, 0, 8, '2024-05-06 23:22:37', '2024-05-06 23:22:37'),
(11, 1, 'Woman Handbag & Shoulder Bag', 23500, 0, -23500, 1, 0, 9, '2024-05-06 23:30:22', '2024-05-06 23:30:22'),
(12, 1, 'Woman Handbag & Shoulder Bag', 18500, 0, -18500, 1, 0, 10, '2024-05-06 23:33:22', '2024-05-06 23:33:22'),
(13, 1, 'Woman Handbag & Shoulder Bag', 19500, 0, -19500, 1, 0, 11, '2024-05-06 23:34:59', '2024-05-06 23:34:59'),
(14, 1, 'Man\'s Travel Bag', 15000, 0, -15000, 1, 0, 12, '2024-05-06 23:46:49', '2024-05-06 23:46:49'),
(15, 1, 'Man\'s Crossbody Leather Bag', 6250, 0, -6250, 1, 0, 13, '2024-05-06 23:48:33', '2024-05-06 23:48:33'),
(16, 1, 'Man\'s Leather Laptop Bag', 160950, 0, -156820, 1, 0, 14, '2024-05-06 23:50:16', '2024-08-13 23:15:45'),
(17, 1, 'Crop Top Long Sleeve Clothes', 11250, 0, -7120, 1, 0, 15, '2024-05-07 00:04:21', '2024-08-13 23:15:38'),
(18, 1, 'Party Dress', 17750, 0, -17750, 1, 0, 16, '2024-05-07 00:06:01', '2024-05-07 00:06:01'),
(19, 1, 'Party Dress', 28800, 0, -24670, 1, 0, 17, '2024-05-07 00:07:19', '2024-08-13 23:15:31'),
(20, 1, 'Mens Genuine Black Hooded Bomber Leather Jacket Real', 15000, 0, -15000, 1, 0, 18, '2024-05-07 02:55:49', '2024-05-07 02:55:49'),
(21, 1, 'Mens Shoes | Shop Formal, Casual & Dress Shoe for Men at Barker Shoes', 27000, 0, -27000, 1, 0, 19, '2024-05-07 02:59:24', '2024-05-07 02:59:24'),
(22, 1, 'Leather shoes woman, Shoe boots, Crazy shoes', 22500, 0, -22500, 1, 0, 20, '2024-05-07 03:07:18', '2024-05-07 03:07:18'),
(23, 1, 'Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal', 19500, 0, -19500, 1, 0, 21, '2024-05-07 03:09:00', '2024-05-07 03:09:00'),
(24, 2, 'Invoice No: 2024050709571214', 0, 5050, 5050, 2, 1, 0, '2024-05-07 03:57:13', '2024-05-07 03:57:13'),
(25, 2, 'Invoice No: 2024050711054464', 0, 6000, 6000, 2, 2, 0, '2024-05-07 05:05:44', '2024-05-07 05:05:44'),
(26, 2, 'Invoice No: 2024050711075635', 0, 8150, 8150, 2, 3, 0, '2024-05-07 05:07:57', '2024-05-07 05:07:57'),
(27, 2, 'Invoice No: 2024050711255661', 0, 8400, 8400, 2, 1, 0, '2024-05-07 05:25:57', '2024-05-07 05:25:57'),
(28, 2, 'Invoice No: 2024050711504291', 0, 7750, 7750, 2, 2, 0, '2024-05-07 05:50:42', '2024-05-07 05:50:42'),
(29, 2, 'Invoice No: 2024050712332667', 0, 7550, 7550, 2, 3, 0, '2024-05-07 06:33:26', '2024-05-07 06:33:26'),
(30, 2, 'Invoice No: 2024081211435185', 0, 2150, 2150, 2, 4, 0, '2024-08-12 05:43:51', '2024-08-12 05:43:51'),
(31, 2, 'Invoice No: 0000001', 0, 2180, 2180, 2, 1, 0, '2024-08-12 23:24:04', '2024-08-12 23:24:04'),
(32, 2, 'Invoice No: 2024081306155053', 0, 4130, 4130, 2, 2, 0, '2024-08-13 00:15:51', '2024-08-13 00:15:51'),
(33, 2, 'Invoice No: 2024081405513349', 0, 3880, 3880, 2, 4, 0, '2024-08-13 23:51:33', '2024-08-13 23:51:33'),
(34, 2, 'Invoice No: 2024081407132297', 0, 5430, 5430, 2, 5, 0, '2024-08-14 01:13:22', '2024-08-14 01:13:22'),
(35, 2, 'Invoice No: 2024081408105392', 0, 1690, 1690, 2, 1, 0, '2024-08-14 02:10:53', '2024-08-14 02:10:53'),
(36, 2, 'Invoice No: 2024081408231474', 0, 2190, 2190, 2, 2, 0, '2024-08-14 02:23:14', '2024-08-14 02:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upazilla_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazilla_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Default, 0=>Not Default',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `division_name`, `district_name`, `upazilla_name`, `division_id`, `district_id`, `upazilla_id`, `address`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 147, NULL, NULL, NULL, NULL, 32, 547, 18907, 'Ashugang Sadar Bangladesh', 0, 1, '2024-05-05 22:36:29', '2024-08-13 23:06:17'),
(2, 122, NULL, NULL, NULL, NULL, 1, 1070, 20924, 'Sector-12', 0, 1, '2024-05-07 01:11:03', '2024-08-13 22:56:02'),
(3, 122, NULL, NULL, NULL, NULL, 3, 13, 116, 'Shalgaria golapbag pabna', 0, 1, '2024-05-07 01:12:09', '2024-05-07 01:12:09'),
(4, 122, NULL, NULL, NULL, NULL, 1, 52, 509, 'Link Road', 0, 1, '2024-05-07 01:16:05', '2024-05-07 01:16:05'),
(5, 122, NULL, NULL, NULL, NULL, 2, 1, 8, 'Laksam Bazar', 0, 1, '2024-05-07 01:21:04', '2024-05-07 01:21:04'),
(6, 122, NULL, NULL, NULL, NULL, 2, 3, 24, 'Sultanpur', 0, 1, '2024-05-07 01:25:23', '2024-05-07 01:25:23'),
(7, 122, NULL, NULL, NULL, NULL, 3, 16, 149, 'Naldanga Bazar', 0, 1, '2024-05-07 01:26:25', '2024-05-07 01:26:25'),
(8, 122, NULL, NULL, NULL, NULL, 2, 3, 32, 'fgdghr', 0, 1, '2024-05-07 01:28:16', '2024-05-07 01:28:16'),
(9, 122, NULL, NULL, NULL, NULL, 3, 16, 147, 'ghfdghf', 0, 1, '2024-05-07 01:45:25', '2024-05-07 01:45:25'),
(10, 149, NULL, NULL, NULL, NULL, 3, 14, 128, 'Nondigram Sadar', 1, 1, '2024-08-14 01:06:09', '2024-08-14 01:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `advance_payments`
--

CREATE TABLE `advance_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advance_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `received` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Color', 1, 4, '2022-08-27 00:14:35', '2022-08-27 00:14:35'),
(5, 'Size', 1, 4, '2022-08-27 00:16:20', '2022-08-27 00:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(28, 4, 'Red', 1, 4, '2022-08-27 00:15:32', '2022-08-27 00:15:32'),
(29, 4, 'White', 1, 4, '2022-08-27 00:15:36', '2022-08-27 00:15:36'),
(30, 4, 'Green', 1, 4, '2022-08-27 00:15:48', '2022-08-27 00:15:48'),
(31, 4, 'Yellow', 1, 4, '2022-08-27 00:16:00', '2022-08-27 00:16:00'),
(32, 5, 'S', 1, 4, '2022-08-27 00:16:27', '2022-08-27 00:16:27'),
(33, 5, 'M', 1, 4, '2022-08-27 00:16:30', '2022-08-27 00:16:30'),
(34, 5, 'L', 1, 4, '2022-08-27 00:16:32', '2022-08-27 00:16:32'),
(35, 5, 'XL', 1, 4, '2022-08-27 00:16:35', '2022-08-27 00:16:35'),
(36, 5, 'XXl', 1, 4, '2022-08-27 00:16:44', '2022-08-27 00:16:44'),
(48, 4, 'Black', 1, 4, '2024-03-28 12:38:36', '2024-03-28 12:38:36'),
(49, 4, 'Pink', 1, 4, '2024-03-29 05:34:50', '2024-03-29 05:34:50'),
(50, 4, 'Blue', 1, 4, '2024-03-29 05:35:20', '2024-03-29 05:35:20'),
(52, 4, 'Purple', 1, 4, '2024-03-29 05:35:27', '2024-03-29 05:35:27'),
(53, 4, 'Lavender', 1, 4, '2024-03-29 05:35:30', '2024-03-29 05:35:30'),
(54, 4, 'Orange', 1, 4, '2024-03-29 05:35:39', '2024-03-29 05:35:39'),
(55, 4, 'Sky', 1, 4, '2024-03-29 05:36:12', '2024-03-29 05:36:12'),
(56, 4, 'Ash', 1, 4, '2024-03-29 05:36:21', '2024-03-29 05:36:21'),
(58, 4, 'Off white', 1, 4, '2024-03-29 05:38:09', '2024-03-29 05:38:09'),
(59, 4, 'Dark blue', 1, 4, '2024-03-29 05:38:24', '2024-03-29 05:38:24'),
(60, 4, 'Dark green', 1, 4, '2024-03-29 05:38:30', '2024-03-29 05:38:30'),
(61, 4, 'Light blue', 1, 4, '2024-03-29 05:38:36', '2024-03-29 05:38:36'),
(62, 4, 'Light green', 1, 4, '2024-03-29 05:38:40', '2024-03-29 05:38:40'),
(63, 4, 'Light pink', 1, 4, '2024-03-29 05:38:45', '2024-03-29 05:38:45'),
(64, 4, 'Dark pink', 1, 4, '2024-03-29 05:38:50', '2024-03-29 05:38:50'),
(65, 4, 'Mauve pink', 1, 4, '2024-03-29 05:38:56', '2024-03-29 05:38:56'),
(66, 4, 'Silver', 1, 4, '2024-03-29 05:39:23', '2024-03-29 05:39:23'),
(67, 4, 'Golden', 1, 4, '2024-03-29 05:39:27', '2024-03-29 05:39:27'),
(68, 4, 'Pest', 1, 4, '2024-03-29 05:39:40', '2024-03-29 05:39:40'),
(69, 4, 'Maroon', 1, 4, '2024-03-29 05:39:52', '2024-03-29 05:39:52'),
(70, 4, 'Skin', 1, 4, '2024-03-29 05:40:16', '2024-03-29 05:40:16'),
(71, 4, 'Brown', 1, 4, '2024-03-29 05:40:27', '2024-03-29 05:40:27'),
(72, 4, 'Multi', 1, 4, '2024-04-09 07:21:40', '2024-04-09 07:21:40'),
(73, 4, 'Olive', 1, 4, '2024-04-09 07:21:45', '2024-04-09 07:21:45'),
(74, 4, 'Coffee', 1, 4, '2024-04-09 07:21:50', '2024-04-09 07:21:50'),
(75, 4, 'Brown', 1, 4, '2024-04-09 07:21:54', '2024-04-09 07:21:54'),
(76, 4, 'Navy blue', 1, 4, '2024-04-09 07:22:05', '2024-04-09 07:22:05'),
(77, 4, 'Hot pink', 1, 4, '2024-04-09 07:22:09', '2024-04-09 07:22:09'),
(78, 4, 'Mauve pink', 1, 4, '2024-04-09 07:22:13', '2024-04-09 07:22:13'),
(79, 4, 'Baby pink', 1, 4, '2024-04-09 07:22:17', '2024-04-09 07:22:17'),
(80, 4, 'Peach', 1, 4, '2024-04-09 07:22:35', '2024-04-09 07:22:35'),
(81, 4, 'Light green', 1, 4, '2024-04-09 07:22:44', '2024-04-09 07:22:44'),
(82, 4, 'Dark green', 1, 4, '2024-04-09 07:22:55', '2024-04-09 07:22:55'),
(83, 4, 'Dark pink', 1, 4, '2024-04-09 07:23:01', '2024-04-09 07:23:01'),
(84, 4, 'Megenta', 1, 4, '2024-04-09 07:23:05', '2024-04-09 07:23:05'),
(85, 4, 'Navy blue', 1, 4, '2024-04-09 07:23:12', '2024-04-09 07:23:12'),
(86, 4, 'Bottle green', 1, 4, '2024-04-09 07:23:20', '2024-04-09 07:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_product_price`
--

CREATE TABLE `attribute_value_product_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_price_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>Home Banner, 0=>Footer Banner',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title_en`, `title_bn`, `slug`, `blog_img`, `description`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Hydrating Rosewater Facial Mist:', 'Hydrating Rosewater Facial Mist:', 'hydrating-rosewater-facial-mist', 'upload/blog/1693628947gabrielle-henderson-1DMNn6gBbwQ-unsplash.jpg', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Revitalize your skin with our luxurious Rosewater Facial Mist. Enriched with pure rose extracts, this mist delivers a burst of hydration, leaving your skin feeling refreshed and rejuvenated. Whether used as a toner, makeup setting spray, or a quick pick-me-up throughout the day, its delicate rose scent and soothing properties make it a must-have addition to your beauty routine.</span><br></p>', 1, '2023-09-01 22:29:07', '2023-09-01 22:29:07'),
(36, 'Age-Defying Vitamin C Serum:', 'Age-Defying Vitamin C Serum:', 'age-defying-vitamin-c-serum', 'upload/blog/1693629015raphael-lovaski-DEuob2v77wI-unsplash.jpg', '<div style=\"text-align: justify;\"><span style=\"background-color: transparent; font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Turn back the hands of time with our Age-Defying Vitamin C Serum. Packed with potent antioxidants and collagen-boosting ingredients, this serum helps reduce the appearance of fine lines, wrinkles, and uneven skin tone. The lightweight formula absorbs quickly, delivering a concentrated dose of skin-brightening Vitamin C for a youthful, radiant complexion.</span></div>', 1, '2024-05-08 06:29:27', '2024-05-08 06:29:27'),
(37, 'Nourishing Argan Oil Hair Mask:', 'Nourishing Argan Oil Hair Mask:', 'nourishing-argan-oil-hair-mask', 'upload/blog/1693628918element5-digital-ceWgSMd8rvQ-unsplash.jpg', '<ol style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; counter-reset: list-number 0; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><li style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0.375em; counter-increment: list-number 1; display: block; min-height: 28px;\"><p style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">Say goodbye to dry and damaged hair with our Nourishing Argan Oil Hair Mask. Formulated with natural argan oil and nourishing botanicals, this deep conditioning treatment restores hair\'s elasticity, smoothness, and shine. Whether you have frizzy, color-treated, or over-styled hair, our mask provides a spa-like experience that transforms your locks from dull to luxurious.</p></li><li style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0.375em; counter-increment: list-number 1; display: block; min-height: 28px;\"></li></ol>', 1, '2023-09-01 22:28:38', '2023-09-01 22:28:38'),
(38, 'Soothing Lavender and Chamomile Body Lotion:', 'Soothing Lavender and Chamomile Body Lotion:', 'soothing-lavender-and-chamomile-body-lotion', 'upload/blog/1693628763raphael-lovaski-pxax5WuM7eY-unsplash.jpg', '<ol style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; counter-reset: list-number 0; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><li style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0.375em; counter-increment: list-number 1; display: block; min-height: 28px;\"><p style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">Unwind and relax with our Soothing Lavender and Chamomile Body Lotion. Infused with the calming scents of lavender and chamomile, this lightweight lotion absorbs easily, leaving your skin soft and supple. Perfect for after a bath or before bedtime, its gentle formula moisturizes deeply, helping to alleviate dryness and promote a peaceful night\'s sleep.</p></li><li style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0.375em; counter-increment: list-number 1; display: block; min-height: 28px;\"></li></ol>', 1, '2023-09-01 22:26:03', '2023-09-01 22:26:03'),
(39, 'Exfoliating Coffee Scrub with Coconut Oil:', 'Exfoliating Coffee Scrub with Coconut Oil:', 'exfoliating-coffee-scrub-with-coconut-oil', 'upload/blog/1693628906camille-brodard-VxAwTeiqDao-unsplash.jpg', '<div class=\"group w-full text-token-text-primary border-b border-black/10 dark:border-gray-900/50 bg-gray-50 dark:bg-[#444654]\" data-testid=\"conversation-turn-3\" style=\"border-bottom: 1px solid rgba(0, 0, 0, 0.1); border-top-style: solid; border-right-style: solid; border-left-style: solid; border-top-color: rgba(0, 0, 0, 0.1); border-right-color: rgba(0, 0, 0, 0.1); border-left-color: rgba(0, 0, 0, 0.1); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; width: 1652px; --tw-bg-opacity: 1; background-color: rgba(247,247,248,var(--tw-bg-opacity)); color: var(--text-primary); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; --avatar-color: #19c37d;\"><div class=\"p-4 justify-center text-base md:gap-6 md:py-6 lg:px-0 m-auto\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; justify-content: center; padding-right: 0px; padding-left: 0px; font-size: 1rem; line-height: 1.5rem; gap: 1.5rem;\"><div class=\"flex flex-1 gap-4 text-base mx-auto md:gap-6 md:max-w-2xl lg:max-w-[38rem] xl:max-w-3xl }\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; flex: 1 1 0%; font-size: 1rem; line-height: 1.5rem; max-width: 48rem;\"><div class=\"relative flex w-[calc(100%-50px)] flex-col gap-1 md:gap-3 lg:w-[calc(100%-115px)]\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; position: relative; display: flex; width: calc(100% - 115px); flex-direction: column; gap: 0.75rem;\"><div class=\"flex flex-grow flex-col gap-3 max-w-full\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; max-width: 100%; flex-grow: 1; flex-direction: column; gap: 0.75rem;\"><div class=\"min-h-[20px] flex flex-col items-start gap-3 overflow-x-auto whitespace-pre-wrap break-words\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex; min-height: 20px; flex-direction: column; align-items: flex-start; gap: 0.75rem; overflow-x: auto; white-space-collapse: preserve; overflow-wrap: break-word;\"><div class=\"markdown prose w-full break-words dark:prose-invert light\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: var(--tw-prose-body); max-width: none; --tw-prose-body: #374151; --tw-prose-headings: #111827; --tw-prose-lead: #4b5563; --tw-prose-links: #111827; --tw-prose-bold: #111827; --tw-prose-counters: #6b7280; --tw-prose-bullets: #d1d5db; --tw-prose-hr: #e5e7eb; --tw-prose-quotes: #111827; --tw-prose-quote-borders: #e5e7eb; --tw-prose-captions: #6b7280; --tw-prose-code: #111827; --tw-prose-pre-code: #e5e7eb; --tw-prose-pre-bg: #1f2937; --tw-prose-th-borders: #d1d5db; --tw-prose-td-borders: #e5e7eb; --tw-prose-invert-body: #d1d5db; --tw-prose-invert-headings: #fff; --tw-prose-invert-lead: #9ca3af; --tw-prose-invert-links: #fff; --tw-prose-invert-bold: #fff; --tw-prose-invert-counters: #9ca3af; --tw-prose-invert-bullets: #4b5563; --tw-prose-invert-hr: #374151; --tw-prose-invert-quotes: #f3f4f6; --tw-prose-invert-quote-borders: #374151; --tw-prose-invert-captions: #9ca3af; --tw-prose-invert-code: #fff; --tw-prose-invert-pre-code: #d1d5db; --tw-prose-invert-pre-bg: rgba(0,0,0,.5); --tw-prose-invert-th-borders: #4b5563; --tw-prose-invert-td-borders: #374151; font-size: 1rem; line-height: 1.75; width: 653px; overflow-wrap: break-word;\"><ol style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; counter-reset: list-number 0; display: flex; flex-direction: column;\"><li style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 0.375em; counter-increment: list-number 1; display: block; min-height: 28px;\"><p style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">Reveal silky-smooth skin with our Exfoliating Coffee Scrub enriched with Coconut Oil. The invigorating coffee grounds gently exfoliate, buffing away dead skin cells and promoting circulation, while the coconut oil moisturizes and nourishes. This two-in-one scrub leaves your skin feeling revitalized and rejuvenated, with a delightful coffee aroma that jumpstarts your da</p></li></ol></div></div></div><div class=\"flex justify-between lg:block\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; justify-content: space-between;\"><div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-2 md:gap-3 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 100%; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 0px; display: flex; justify-content: center; gap: 0.25rem; align-self: center; --tw-text-opacity: 1; color: rgba(172,172,190,var(--tw-text-opacity)); position: absolute; right: 0px; top: 0px; transform: translate(var(--tw-translate-x),var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); padding-left: 0.5rem;\"><button class=\"flex ml-auto gap-2 rounded-md p-1 hover:bg-gray-100 hover:text-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400\" style=\"border-width: 0px; border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 16px; font-weight: inherit; margin-left: auto; background-image: none; display: flex; border-radius: 0.375rem;\"><svg stroke=\"currentColor\" fill=\"none\" stroke-width=\"2\" viewBox=\"0 0 24 24\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"h-4 w-4\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2\"></path><rect x=\"8\" y=\"2\" width=\"8\" height=\"4\" rx=\"1\" ry=\"1\"></rect></svg></button><div class=\"flex gap-1\" style=\"border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; display: flex;\"><button class=\"p-1 rounded-md hover:bg-gray-100 hover:text-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400\" style=\"border-width: 0px; border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 16px; font-weight: inherit; background-image: none; border-radius: 0.375rem;\"><svg stroke=\"currentColor\" fill=\"none\" stroke-width=\"2\" viewBox=\"0 0 24 24\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"h-4 w-4\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3\"></path></svg></button><button class=\"p-1 rounded-md hover:bg-gray-100 hover:text-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-gray-200 disabled:dark:hover:text-gray-400\" style=\"border-width: 0px; border-style: solid; border-color: rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 16px; font-weight: inherit; background-image: none; border-radius: 0.375rem;\"><svg stroke=\"currentColor\" fill=\"none\" stroke-width=\"2\" viewBox=\"0 0 24 24\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"h-4 w-4\" height=\"1em\" width=\"1em\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M10 15v4a3 3 0 0 0 3 3l4-9V2H5.72a2 2 0 0 0-2 1.7l-1.38 9a2 2 0 0 0 2 2.3zm7-13h2.67A2.31 2.31 0 0 1 22 4v7a2.31 2.31 0 0 1-2.33 2H17\"></path></svg></button></div></div></div></div></div></div></div>', 1, '2023-09-01 22:28:26', '2023-09-01 22:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name_en`, `name_bn`, `slug`, `description_en`, `description_bn`, `brand_image`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(9, 'Adidas', 'এডিডাস', 'adidas', 'Adidas', 'এডিডাস', 'upload/brand/1742310450869455.png', 1, 4, '2022-08-26 22:38:48', '2022-08-26 22:38:48'),
(10, 'Mi', 'মি', 'mi', 'Mi', 'মি', 'upload/brand/1742310493375695.png', 1, 4, '2022-08-26 22:39:28', '2022-08-26 22:39:28'),
(11, 'Nivea', 'নিভিয়া', 'nivea', 'Nivea', 'নিভিয়া', 'upload/brand/1742310531552856.png', 1, 4, '2022-08-26 22:40:05', '2022-08-26 22:40:05'),
(12, 'Mico', 'মাইকো', 'mico', 'Mico', 'মাইকো', 'upload/brand/1742310561734589.png', 1, 4, '2022-08-26 22:40:34', '2022-08-26 22:40:34'),
(13, 'Miniso', 'মিনিসো', 'miniso', 'Miniso', 'মিনিসো', 'upload/brand/1742310614628684.png', 1, 4, '2022-08-26 22:41:24', '2022-08-26 22:41:24'),
(17, 'Others', 'অন্যান্য', 'others', 'Others', 'অন্যান্য', 'upload/brand/1743135965942158.png', 1, 4, '2022-09-05 01:20:00', '2022-09-05 01:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaings`
--

CREATE TABLE `campaings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaing_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured	',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaing_products`
--

CREATE TABLE `campaing_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaing_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Flat, 2=>Percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashwithdraws`
--

CREATE TABLE `cashwithdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brunch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Category, 2=>SubCategory, 3=> SubSubCategory',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `trending` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Trending, 0=>Not Trending',
  `special` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Special, 0=>Not Special',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_bn`, `slug`, `description_en`, `description_bn`, `image`, `banner_image`, `parent_id`, `type`, `is_featured`, `trending`, `special`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Shoe', 'Shoe', 'Shoe-vWGTk', 'Shoe', 'Shoe', 'upload/category/1797757515475807.jpg', '', 0, 1, 1, 0, 0, 1, 4, '2024-04-30 05:06:09', '2024-04-30 05:06:09'),
(2, 'Fashion', 'Fashion', 'Fashion-A5ajd', 'Fashion', 'Fashion', 'upload/category/1797757599864629.webp', '', 0, 1, 1, 0, 0, 1, 4, '2024-04-30 05:07:30', '2024-04-30 05:07:30'),
(3, 'Bag', 'Bag', 'Bag-0NmSt', 'Bag', 'Bag', 'upload/category/1798197324580542.webp', '', 0, 1, 1, 0, 0, 1, 4, '2024-05-05 01:36:44', '2024-05-05 01:36:44'),
(4, 'Women Collection', 'Women Collection', 'Women-Collection-12gKq', 'Women Collection', 'Women Collection', 'upload/category/1798215899874194.jpg', '', 0, 1, 1, 0, 0, 1, 4, '2024-05-05 06:31:59', '2024-05-05 06:31:59'),
(5, 'Mens', 'Mens', 'Mens-wVigU', 'Mens', 'Mens', 'upload/category/1798215955811930.jpg', '', 0, 1, 1, 0, 0, 1, 4, '2024-05-05 06:32:52', '2024-05-05 06:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Search Engine Index', 'info@domainsubmit.info', 'B zll Njj Bg', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://www.domainsubmit.info/', '2024-05-10 00:03:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Fixed Amount, 0=>Percent',
  `discount` double(20,2) NOT NULL DEFAULT 0.00,
  `limit_per_user` double(20,2) NOT NULL DEFAULT 0.00,
  `total_use_limit` double(20,2) NOT NULL DEFAULT 0.00,
  `expire_date` date DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT 1 COMMENT '1=>All Customers, 0=>Specific Customer',
  `user_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `producttype` int(11) DEFAULT 1 COMMENT '1=>all product ,0=>specific product',
  `product_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `division_name_bn` varchar(150) NOT NULL,
  `district_name_bn` varchar(130) NOT NULL,
  `district_name_en` text NOT NULL,
  `division_name_en` text NOT NULL,
  `division_id` varchar(210) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_name_bn`, `district_name_bn`, `district_name_en`, `division_name_en`, `division_id`, `status`) VALUES
(1, 'চট্টগ্রাম', 'কুমিল্লা', 'cumilla', 'chattogram', '2', 1),
(2, 'চট্টগ্রাম', 'ফেনী', 'feni', 'chattogram', '2', 1),
(3, 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'brahmanbaria', 'chattogram', '2', 1),
(4, 'চট্টগ্রাম', 'রাঙ্গামাটি', 'rangamati', 'chattogram', '2', 1),
(5, 'চট্টগ্রাম', 'নোয়াখালী', 'noakhali', 'chattogram', '2', 1),
(6, 'চট্টগ্রাম', 'চাঁদপুর', 'chandpur', 'chattogram', '2', 1),
(7, 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'lakshmipur', 'chattogram', '2', 1),
(8, 'চট্টগ্রাম', 'চট্টগ্রাম', 'chattogram', 'chattogram', '2', 1),
(9, 'চট্টগ্রাম', 'কক্সবাজার', 'coxsbazar', 'chattogram', '2', 1),
(10, 'চট্টগ্রাম', 'খাগড়াছড়ি', 'khagrachari', 'chattogram', '2', 1),
(11, 'চট্টগ্রাম', 'বান্দরবান', 'bandarban', 'chattogram', '2', 1),
(12, 'রাজশাহী', 'সিরাজগঞ্জ', 'sirajganj', 'rajshahi', '3', 1),
(13, 'রাজশাহী', 'পাবনা', 'pabna', 'rajshahi', '3', 1),
(14, 'রাজশাহী', 'বগুড়া', 'bogura', 'rajshahi', '3', 1),
(15, 'রাজশাহী', 'রাজশাহী', 'rajshahi', 'rajshahi', '3', 1),
(16, 'রাজশাহী', 'নাটোর', 'natore', 'rajshahi', '3', 1),
(17, 'রাজশাহী', 'জয়পুরহাট', 'jaipurhat', 'rajshahi', '3', 1),
(18, 'রাজশাহী', 'চাঁপাইনবাবগঞ্জ', 'nawabganj', 'rajshahi', '3', 1),
(19, 'রাজশাহী', 'নওগাঁ', 'naogaon', 'rajshahi', '3', 1),
(20, 'খুলনা', 'যশোর', 'jashore', 'khulna', '4', 1),
(21, 'খুলনা', 'সাতক্ষীরা', 'satkhira', 'khulna', '4', 1),
(22, 'খুলনা', 'মেহেরপুর', 'meherpur', 'khulna', '4', 1),
(23, 'খুলনা', 'নড়াইল', 'narail', 'khulna', '4', 1),
(24, 'খুলনা', 'চুয়াডাঙ্গা', 'chuadanga', 'khulna', '4', 1),
(25, 'খুলনা', 'কুষ্টিয়া', 'kushtia', 'khulna', '4', 1),
(26, 'খুলনা', 'মাগুরা', 'magura', 'khulna', '4', 1),
(27, 'খুলনা', 'খুলনা', 'khulna', 'khulna', '4', 1),
(28, 'খুলনা', 'বাগেরহাট', 'bagerhat', 'khulna', '4', 1),
(29, 'খুলনা', 'ঝিনাইদহ', 'jhenaidah', 'khulna', '4', 1),
(30, 'বরিশাল', 'বরিশাল', 'barishal', 'barishal', '5', 1),
(31, 'বরিশাল', 'ঝালকাঠি', 'jhalokati', 'barishal', '5', 1),
(32, 'বরিশাল', 'পটুয়াখালী', 'patuakhali', 'barishal', '5', 1),
(33, 'বরিশাল', 'পিরোজপুর', 'pirojpur', 'barishal', '5', 1),
(34, 'বরিশাল', 'ভোলা', 'bhola', 'barishal', '5', 1),
(35, 'বরিশাল', 'বরগুনা', 'barguna', 'barishal', '5', 1),
(36, 'সিলেট', 'সিলেট', 'sylhet', 'sylhet', '6', 1),
(37, 'সিলেট', 'মৌলভীবাজার', 'moulvibazar', 'sylhet', '6', 1),
(38, 'সিলেট', 'হবিগঞ্জ', 'habiganj', 'sylhet', '6', 1),
(39, 'সিলেট', 'সুনামগঞ্জ', 'sunamganj', 'sylhet', '6', 1),
(40, 'রংপুর', 'রংপুর', 'rangpur', 'rangpur', '7', 1),
(41, 'রংপুর', 'পঞ্চগড়', 'panchagarh', 'rangpur', '7', 1),
(42, 'রংপুর', 'দিনাজপুর', 'dinajpur', 'rangpur', '7', 1),
(43, 'রংপুর', 'লালমনিরহাট', 'lalmonirhat', 'rangpur', '7', 1),
(44, 'রংপুর', 'নীলফামারী', 'nilphamari', 'rangpur', '7', 1),
(45, 'রংপুর', 'ঠাকুরগাঁও', 'thakurgaon', 'rangpur', '7', 1),
(46, 'রংপুর', 'গাইবান্ধা', 'gaibandha', 'rangpur', '7', 1),
(47, 'রংপুর', 'কুড়িগ্রাম', 'kurigram', 'rangpur', '7', 1),
(48, 'ময়মনসিংহ', 'ময়মনসিংহ', 'mymensingh', 'mymensingh', '8', 1),
(49, 'ময়মনসিংহ', 'জামালপুর', 'jamalpur', 'mymensingh', '8', 1),
(50, 'ময়মনসিংহ', 'নেত্রকোণা', 'netrokona', 'mymensingh', '8', 1),
(51, 'ময়মনসিংহ', 'শেরপুর', 'sherpur', 'mymensingh', '8', 1),
(52, 'ঢাকা', 'ঢাকা', 'dhaka', 'dhaka', '1', 1),
(53, 'ঢাকা', 'নরসিংদী', 'narsingdi', 'dhaka', '1', 1),
(54, 'ঢাকা', 'গাজীপুর', 'gazipur', 'dhaka', '1', 1),
(55, 'ঢাকা', 'শরীয়তপুর', 'shariatpur', 'dhaka', '1', 1),
(56, 'ঢাকা', 'নারায়ণগঞ্জ', 'narayanganj', 'dhaka', '1', 1),
(57, 'ঢাকা', 'টাঙ্গাইল', 'tangail', 'dhaka', '1', 1),
(58, 'ঢাকা', 'কিশোরগঞ্জ', 'kishoreganj', 'dhaka', '1', 1),
(59, 'ঢাকা', 'মানিকগঞ্জ', 'manikganj', 'dhaka', '1', 1),
(60, 'ঢাকা', 'মুন্সিগঞ্জ', 'munshiganj', 'dhaka', '1', 1),
(61, 'ঢাকা', 'রাজবাড়ী', 'rajbari', 'dhaka', '1', 1),
(62, 'ঢাকা', 'মাদারীপুর', 'madaripur', 'dhaka', '1', 1),
(63, 'ঢাকা', 'ফরিদপুর', 'faridpur', 'dhaka', '1', 1),
(64, 'ঢাকা', 'গোপালগঞ্জ', 'gopalganj', 'dhaka', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `division_id` varchar(30) NOT NULL,
  `division_name_bn` varchar(30) NOT NULL,
  `division_name_en` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division_id`, `division_name_bn`, `division_name_en`, `country_id`, `status`) VALUES
(1, '1', 'ঢাকা', 'dhaka', 22, 1),
(2, '2', 'চট্টগ্রাম', 'chattogram', 22, 1),
(3, '3', 'রাজশাহী', 'rajshahi', 22, 1),
(4, '4', 'খুলনা', 'khulna', 22, 1),
(5, '5', 'বরিশাল', 'barishal', 22, 1),
(6, '6', 'সিলেট', 'sylhet', 22, 1),
(7, '7', 'রংপুর', 'rangpur', 22, 1),
(8, '8', 'ময়মনসিংহ', 'mymensingh', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `free_shippings`
--

CREATE TABLE `free_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_shippings`
--

INSERT INTO `free_shippings` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 3000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_07_24_074842_create_multi_imgs_table', 1),
(27, '2022_02_04_061801_create_product_prices_table', 6),
(28, '2022_02_04_065518_create_attribute_product_table', 6),
(29, '2022_05_20_152549_create_attribute_value_product_price_table', 6),
(47, '2022_07_23_114405_create_sliders_table', 7),
(51, '2022_07_28_064437_create_campaings_table', 7),
(53, '2022_07_31_095124_create_blogs_table', 7),
(54, '2022_08_01_045408_create_pages_table', 7),
(56, '2022_08_10_105324_create_addresses_table', 7),
(57, '2022_08_14_045916_create_settings_table', 7),
(60, '2022_08_19_201539_create_product_stocks_table', 8),
(61, '2022_09_03_062044_create_shippings_table', 9),
(62, '2022_08_14_105209_create_order_details_table', 10),
(63, '2022_09_03_055707_create_coupons_table', 11),
(65, '2022_07_30_093841_create_banners_table', 12),
(67, '2022_09_17_111303_create_campaing_products_table', 13),
(68, '2022_09_27_050816_create_subscribers_table', 14),
(69, '2022_09_28_103615_create_roles_table', 15),
(71, '2022_09_28_110124_create_staff_table', 16),
(72, '2022_07_24_111956_create_vendors_table', 17),
(73, '2022_07_19_132400_create_brands_table', 18),
(74, '2022_07_20_105632_create_categories_table', 18),
(75, '2022_07_21_140629_create_suppliers_table', 18),
(76, '2022_07_24_063334_create_products_table', 18),
(77, '2022_08_04_073752_create_attributes_table', 18),
(78, '2022_08_06_053505_create_attribute_values_table', 18),
(79, '2022_08_14_105132_create_orders_table', 18),
(80, '2022_10_16_060400_create_account_heads_table', 19),
(82, '2022_10_16_082419_create_account_ledgers_table', 20),
(84, '2022_12_31_055130_create_units_table', 21),
(85, '2023_04_02_063808_create_order_statuses_table', 22),
(86, '2023_08_29_112617_create_contacts_table', 23),
(87, '2023_08_31_052151_create_wishlist_items_table', 24),
(88, '2023_09_02_071710_create_reviews_table', 25),
(89, '2023_09_07_132249_create_free_shippings_table', 26),
(90, '2023_09_27_103107_create_cashwithdraws_table', 27),
(91, '2023_10_09_071616_create_order_payments_table', 28),
(92, '2023_10_26_102927_create_pos_carts_table', 29),
(93, '2023_11_19_060841_create_advance_payments_table', 30),
(94, '2022_07_30_093841_create_refunds_table', 31),
(95, '2022_07_30_093841_create_returns_table', 32),
(96, '2024_01_27_103451_create_refunds_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1798197375129513.jpg', '2024-05-05 01:37:32', NULL),
(2, 1, 'upload/products/multi-image/1798197375430650.webp', '2024-05-05 01:37:33', NULL),
(3, 2, 'upload/products/multi-image/1798369157580242.jpg', '2024-05-06 23:07:57', NULL),
(4, 3, 'upload/products/multi-image/1798369468583802.jpg', '2024-05-06 23:12:53', NULL),
(5, 4, 'upload/products/multi-image/1798369577471716.jpg', '2024-05-06 23:14:37', NULL),
(6, 5, 'upload/products/multi-image/1798369706234306.jpg', '2024-05-06 23:16:40', NULL),
(7, 6, 'upload/products/multi-image/1798369800246959.webp', '2024-05-06 23:18:10', NULL),
(8, 7, 'upload/products/multi-image/1798369984790717.jpg', '2024-05-06 23:21:06', NULL),
(9, 8, 'upload/products/multi-image/1798370080232144.jpg', '2024-05-06 23:22:37', NULL),
(10, 9, 'upload/products/multi-image/1798370568719187.jpg', '2024-05-06 23:30:22', NULL),
(11, 10, 'upload/products/multi-image/1798370756538126.jpg', '2024-05-06 23:33:22', NULL),
(12, 11, 'upload/products/multi-image/1798370858766213.jpg', '2024-05-06 23:34:59', NULL),
(13, 12, 'upload/products/multi-image/1798371602792807.jpg', '2024-05-06 23:46:49', NULL),
(14, 13, 'upload/products/multi-image/1798371712388691.jpg', '2024-05-06 23:48:33', NULL),
(15, 14, 'upload/products/multi-image/1798371819777831.jpg', '2024-05-06 23:50:16', NULL),
(16, 15, 'upload/products/multi-image/1798372705737779.jpg', '2024-05-07 00:04:21', NULL),
(17, 16, 'upload/products/multi-image/1798372811264939.jpg', '2024-05-07 00:06:01', NULL),
(18, 17, 'upload/products/multi-image/1798372893256823.jpg', '2024-05-07 00:07:19', NULL),
(19, 18, 'upload/products/multi-image/1798383493460127.jpg', '2024-05-07 02:55:48', NULL),
(20, 18, 'upload/products/multi-image/1798383493596467.jpg', '2024-05-07 02:55:49', NULL),
(21, 19, 'upload/products/multi-image/1798383719183956.jpeg', '2024-05-07 02:59:24', NULL),
(22, 19, 'upload/products/multi-image/1798383719339602.webp', '2024-05-07 02:59:24', NULL),
(23, 20, 'upload/products/multi-image/1798384216278624.jpg', '2024-05-07 03:07:18', NULL),
(24, 20, 'upload/products/multi-image/1798384216445923.png', '2024-05-07 03:07:18', NULL),
(25, 21, 'upload/products/multi-image/1798384322755661.jpg', '2024-05-07 03:08:59', NULL),
(26, 21, 'upload/products/multi-image/1798384323018957.webp', '2024-05-07 03:09:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazilla_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `payment_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT 0.00,
  `shipping_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outside_dhaka_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalbuyingPrice` decimal(11,2) DEFAULT 0.00,
  `sub_total` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `others` int(11) DEFAULT 0,
  `transaction_no` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` tinyint(4) DEFAULT NULL,
  `staff_commission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `delivery_viewed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `payment_status_viewed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `commission_calculated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) DEFAULT 0 COMMENT '0=ecommerse,1=pos',
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `tracking_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Not guest order, 2=>Guest Order',
  `packaging_status` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` decimal(11,2) DEFAULT 0.00,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `phone`, `email`, `division_id`, `district_id`, `upazilla_id`, `address`, `payment_method`, `payment_status`, `payment_details`, `shipping_charge`, `shipping_type`, `shipping_name`, `outside_dhaka_city`, `totalbuyingPrice`, `sub_total`, `grand_total`, `paid_amount`, `due_amount`, `discount`, `others`, `transaction_no`, `invoice_no`, `staff_id`, `staff_commission`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `comment`, `order_by`, `delivery_status`, `tracking_code`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `type`, `packaging_status`, `coupon_id`, `coupon_discount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 149, NULL, 'Soudia Mannan', '01753142236', 'soudia@gmail.com', 9, 754, 9552, 'Thanamor', 'cod', 'paid', NULL, '140.00', '2', 'Pathao', NULL, '1250.00', '1550.00', '1690.00', NULL, '0.00', '0.00', 0, NULL, '2024081408105392', NULL, NULL, '0', '1', '1', '0', 'Test..', 0, 'shipped', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2024-08-14 02:10:53', '2024-08-14 02:44:27'),
(2, 1, NULL, 'Najmul Hasan', '01689681783', 'najmul123@gmail.com', 61, 647, 18994, 'Alamdanga Sadar', 'cod', 'unpaid', NULL, '140.00', '2', 'Pathao', NULL, '1850.00', '2050.00', '2190.00', NULL, '0.00', '0.00', 0, NULL, '2024081408231474', NULL, NULL, '0', '1', '1', '0', 'Test', 0, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2024-08-14 02:23:14', '2024-08-14 02:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_varient` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Varient Product, 0=>Normal Product',
  `variation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `vendor_id` int(11) DEFAULT NULL,
  `v_comission` decimal(10,2) DEFAULT 0.00,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `shipping_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `is_varient`, `variation`, `qty`, `price`, `vendor_id`, `v_comission`, `tax`, `shipping_cost`, `payment_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'Crop Top Long Sleeve Clothes', 0, NULL, '1', 1550.00, 148, '155.00', 0.00, 0.00, 'paid', NULL, NULL, NULL, 'pending', '2024-08-14 02:10:53', '2024-08-14 02:42:04'),
(2, 2, 10, 'Woman Handbag & Shoulder Bag', 0, NULL, '1', 2050.00, 0, '0.00', 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', '2024-08-14 02:23:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `paid` double(8,2) NOT NULL DEFAULT 0.00,
  `due` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `payment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advanced_type` int(11) DEFAULT NULL,
  `transaction_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT 1 COMMENT '0=>Return, 1=>Payment',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `order_id`, `title`, `comments`, `created_at`, `updated_at`) VALUES
(1, 2, 'Order Placed', '', '2024-08-13 00:15:51', '2024-08-13 00:15:51'),
(2, 2, 'Payment Status: unpaid', '', '2024-08-13 00:15:51', '2024-08-13 00:15:51'),
(3, 2, 'Delevery Status: Pending', '', '2024-08-13 00:15:51', '2024-08-13 00:15:51'),
(4, 4, 'Order Placed', '', '2024-08-13 23:51:33', '2024-08-13 23:51:33'),
(5, 4, 'Payment Status: unpaid', '', '2024-08-13 23:51:33', '2024-08-13 23:51:33'),
(6, 4, 'Delevery Status: Pending', '', '2024-08-13 23:51:33', '2024-08-13 23:51:33'),
(7, 4, 'Payment Status: paid', '', '2024-08-13 23:59:30', '2024-08-13 23:59:30'),
(8, 5, 'Order Placed', '', '2024-08-14 01:13:22', '2024-08-14 01:13:22'),
(9, 5, 'Payment Status: unpaid', '', '2024-08-14 01:13:22', '2024-08-14 01:13:22'),
(10, 5, 'Delevery Status: Pending', '', '2024-08-14 01:13:22', '2024-08-14 01:13:22'),
(11, 5, 'Payment Status: paid', '', '2024-08-14 01:21:44', '2024-08-14 01:21:44'),
(12, 1, 'Order Placed', '', '2024-08-14 02:10:53', '2024-08-14 02:10:53'),
(13, 1, 'Payment Status: unpaid', '', '2024-08-14 02:10:53', '2024-08-14 02:10:53'),
(14, 1, 'Delevery Status: Pending', '', '2024-08-14 02:10:53', '2024-08-14 02:10:53'),
(15, 2, 'Order Placed', '', '2024-08-14 02:23:14', '2024-08-14 02:23:14'),
(16, 2, 'Payment Status: unpaid', '', '2024-08-14 02:23:14', '2024-08-14 02:23:14'),
(17, 2, 'Delevery Status: Pending', '', '2024-08-14 02:23:14', '2024-08-14 02:23:14'),
(18, 1, 'Payment Status: paid', '', '2024-08-14 02:42:04', '2024-08-14 02:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nav',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name_en`, `name_bn`, `title`, `slug`, `description_en`, `description_bn`, `position`, `status`, `created_at`, `updated_at`) VALUES
(5, 'About us', 'আমাদের সম্পর্কে', 'About us', 'about-us', '<div style=\"text-align: justify;\">Now shopping is easier, faster and always joyous. We help you make the best choice here.  aliflaila.shop&nbsp; is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more.&nbsp;<span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Aliflaila Shop</span>&nbsp;provides products from all categories such as appliance, clothing, cosmetics, electronics, footwear, jewellery, health &amp; beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform.\r\n\r\nIn consistency with the vision of Digital Bangladesh,&nbsp;<span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">aliflaila.shop</span>&nbsp;provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers. \r\n\r\n\r\n\r\nAliflaila Shop gives you the best market experience possible so you can save your valuable time and money. You can pay using all types of payment gateways. If you want to return a product or service for any reason after receiving it, you will get an easy return system. So let\'s go to the estoreclassic.com .\r\n\r\nestoreclassic.com  is a one of the largest online shop for Grocery, Fashion, Electronics, Health, Beauty &amp; Much More..</div>', '<div style=\"text-align: justify;\"><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Now shopping is easier, faster and always joyous. We help you make the best choice here. aliflaila.shop&nbsp; is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more.&nbsp;</span><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Aliflaila Shop</span><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">&nbsp;provides products from all categories such as appliance, clothing, cosmetics, electronics, footwear, jewellery, health &amp; beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform. In consistency with the vision of Digital Bangladesh,&nbsp;</span><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">aliflaila.shop</span><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">&nbsp;provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers. Aliflaila Shop gives you the best market experience possible so you can save your valuable time and money. You can pay using all types of payment gateways. If you want to return a product or service for any reason after receiving it, you will get an easy return system. So let\'s go to the estoreclassic.com . estoreclassic.com is a one of the largest online shop for Grocery, Fashion, Electronics, Health, Beauty &amp; Much More..</span></div>', 'Bottom', 1, '2024-05-05 06:11:06', '2024-05-05 06:11:06'),
(7, 'Shipping & Returns', 'Shipping & Returns', 'Shipping & Returns', 'shipping--returns', '<div style=\"text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Now shopping is easier, faster and always joyous. We help you make the best choice here. aliflaila.shop is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more. Aliflaila Shop provides products from all categories such as appliances, clothing, cosmetics, electronics, footwear, jewelry, health &amp; beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform. In consistency with the vision of Digital Bangladesh, </span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Aliflaila Shop</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"> provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers. We provide our customers with memorable online shopping experience. We provide on-time delivery of products and quick resolution of any concerns. You can choose whatever you like. We deliver it right at your address across Dhaka City. Our services are at your doorsteps all the time. Select the best products for you or your family with the best online marketing experience every time. You will love online marketing with aliflaila.shop.</span></div>', '<span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: justify; white-space-collapse: preserve;\">Now shopping is easier, faster and always joyous. We help you make the best choice here. aliflaila.shop is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more. Aliflaila Shop provides products from all categories such as appliances, clothing, cosmetics, electronics, footwear, jewelry, health &amp; beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform. In consistency with the vision of Digital Bangladesh, </span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 16px; font-family: &quot;Times New Roman&quot;, serif; text-align: justify; white-space-collapse: preserve;\">Aliflaila Shop</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: justify; white-space-collapse: preserve;\"> provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers. We provide our customers with memorable online shopping experience. We provide on-time delivery of products and quick resolution of any concerns. You can choose whatever you like. We deliver it right at your address across Dhaka City. Our services are at your doorsteps all the time. Select the best products for you or your family with the best online marketing experience every time. You will love online marketing with aliflaila.shop.</span>', 'Bottom', 1, '2024-05-05 06:09:21', '2024-05-05 06:09:21'),
(9, 'Payment Method', 'Payment Method', 'Payment Method', 'payment-method', '<p>Payment Method<br></p>', '<p>Payment Method<br></p>', 'Bottom', 1, '2024-05-05 06:11:36', '2024-05-05 06:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_carts`
--

CREATE TABLE `pos_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_carts`
--

INSERT INTO `pos_carts` (`id`, `admin_id`, `product_id`, `stock_id`, `session_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '21', NULL, '663f42c978c3d', '1', 1, '2024-05-11 04:04:57', '2024-05-11 04:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `sub_sub_category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `campaing_id` int(11) DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double NOT NULL DEFAULT 0,
  `is_wholesell` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Wholesell, 0=>Not Wholesell',
  `wholesell_price` double NOT NULL DEFAULT 0,
  `wholesell_minimum_qty` int(11) NOT NULL DEFAULT 0,
  `regular_price` double NOT NULL DEFAULT 0,
  `discount_price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Flat, 2=>Percentage',
  `minimum_buy_qty` int(11) NOT NULL DEFAULT 1,
  `stock_qty` int(11) NOT NULL DEFAULT 0,
  `low_qty` int(11) NOT NULL DEFAULT 0,
  `previous_stock` int(11) DEFAULT 0,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description_bn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_varient` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Varient, 0=>Not Varient',
  `attribute_values` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `is_deals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Deals, 0=>Not Deals',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Approved, 0=>Not Approved',
  `is_digital` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Digital, 0=>Not Digital',
  `top_selling` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Top selling, 0=>Not Top selling',
  `new_arrival` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>New Arrival, 0=>Not New Arrival',
  `show_stock` int(11) DEFAULT 1,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `tags`, `vendor_id`, `supplier_id`, `unit_id`, `campaing_id`, `name_en`, `name_bn`, `slug`, `product_code`, `unit_weight`, `purchase_price`, `is_wholesell`, `wholesell_price`, `wholesell_minimum_qty`, `regular_price`, `discount_price`, `discount_type`, `minimum_buy_qty`, `stock_qty`, `low_qty`, `previous_stock`, `product_thumbnail`, `short_description_en`, `short_description_bn`, `description_en`, `description_bn`, `attributes`, `is_varient`, `attribute_values`, `variations`, `is_featured`, `is_deals`, `status`, `is_approved`, `is_digital`, `top_selling`, `new_arrival`, `show_stock`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 17, 3, NULL, NULL, '', 0, 0, 0, NULL, 'Women Leather Fashion Ladies Messenger Handbag', 'Women Leather Fashion Ladies Messenger Handbag', 'Women-Leather-Fashion-Ladies-Messenger-Handbag-LIpCY', '91623', NULL, 1150, 0, 0, 0, 1800, 0, 1, 1, 18, 2, 19, 'upload/products/thumbnails/1798197374994963.webp', '<p>Women Leather Fashion Ladies Messenger Handbag<br></p>', '<p>Women Leather Fashion Ladies Messenger Handbag<br></p>', '<p>Women Leather Fashion Ladies Messenger Handbag<br></p>', '<p>Women Leather Fashion Ladies Messenger Handbag<br></p>', '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 1, 1, 1, 4, '2024-05-05 01:37:32', '2024-05-06 04:09:14'),
(2, 17, 1, NULL, NULL, '', 0, 5, 2, NULL, 'Shoe', 'Shoe', 'Shoe-69q8v', '59477', '1', 2550, 0, 2550, 10, 3250, 0, 1, 1, 12, 5, 12, 'upload/products/thumbnails/1798369157454370.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:07:56', '2024-05-06 23:07:57'),
(3, 17, 1, NULL, NULL, '', 0, 5, 2, NULL, 'Womens Cass Shoes', 'Womens Cass Shoes', 'Womens-Cass-Shoes-0FLsp', '62122', '1', 3200, 0, 3200, 5, 3500, 0, 1, 1, 10, 5, 10, 'upload/products/thumbnails/1798369468484656.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:12:53', '2024-05-06 23:12:53'),
(4, 17, 1, NULL, NULL, '', 0, 5, 0, NULL, 'Womens Cass Shoes', 'Womens Cass Shoes', 'Womens-Cass-Shoes-Sw9U6', '43221', '1', 2650, 0, 2650, 0, 2850, 0, 1, 1, 10, 5, 10, 'upload/products/thumbnails/1798369577373617.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:14:37', '2024-05-06 23:14:37'),
(5, 17, 1, NULL, NULL, '', 0, 5, 2, NULL, 'Womens Cass Shoes', 'Womens Cass Shoes', 'Womens-Cass-Shoes-Kwc0R', '55201', '1', 2350, 0, 2350, 5, 2550, 0, 1, 1, 10, 3, 10, 'upload/products/thumbnails/1798369706099238.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:16:40', '2024-05-06 23:16:40'),
(6, 17, 1, NULL, NULL, '', 0, 5, 2, NULL, 'Man\'s Cass Shoes', 'Man\'s Cass Shoes', 'Mans-Cass-Shoes-pXKgO', '90314', '1', 2250, 0, 2250, 0, 2750, 0, 1, 1, 15, 3, 15, 'upload/products/thumbnails/1798369800088343.webp', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:18:09', '2024-05-06 23:18:10'),
(7, 17, 1, NULL, NULL, '', 0, 5, 0, NULL, 'Man\'s Cass Shoes', 'Man\'s Cass Shoes', 'Mans-Cass-Shoes-R5Nyt', '19223', '1', 2250, 0, 2250, 0, 2500, 0, 1, 1, 10, 3, 10, 'upload/products/thumbnails/1798369984687251.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:21:05', '2024-05-06 23:21:06'),
(8, 17, 1, NULL, NULL, '', 0, 5, 0, NULL, 'Man\'s Cass Shoes', 'Man\'s Cass Shoes', 'Mans-Cass-Shoes-SyygD', '25437', '1', 1850, 0, 1850, 0, 2250, 0, 1, 1, 8, 2, 8, 'upload/products/thumbnails/1798370080127038.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:22:36', '2024-05-06 23:22:37'),
(9, 17, 3, NULL, NULL, '', 0, 5, 2, NULL, 'Woman Handbag & Shoulder Bag', 'Woman Handbag & Shoulder Bag', 'Woman-Handbag--Shoulder-Bag-Fiii7', '78241', '1', 2350, 0, 2350, 5, 2599, 0, 1, 1, 10, 3, 10, 'upload/products/thumbnails/1798370568660575.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:30:22', '2024-05-06 23:30:22'),
(10, 17, 3, NULL, NULL, '', 0, 5, 0, NULL, 'Woman Handbag & Shoulder Bag', 'Woman Handbag & Shoulder Bag', 'Woman-Handbag--Shoulder-Bag-mmQ5K', '51282', '1', 1850, 0, 1850, 10, 2050, 0, 1, 1, 9, 3, 10, 'upload/products/thumbnails/1798370756482123.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:33:21', '2024-08-14 02:23:14'),
(11, 17, 3, NULL, NULL, '', 0, 5, 2, NULL, 'Woman Handbag & Shoulder Bag', 'Woman Handbag & Shoulder Bag', 'Woman-Handbag--Shoulder-Bag-aawOt', '14981', '1', 1950, 0, 1950, 10, 2150, 0, 1, 1, 8, 3, 9, 'upload/products/thumbnails/1798370858672899.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:34:59', '2024-08-12 05:43:51'),
(12, 17, 3, NULL, NULL, '', 0, 5, 2, NULL, 'Man\'s Travel Bag', 'Man\'s Travel Bag', 'Mans-Travel-Bag-TZYNd', '37359', '1', 1500, 0, 1700, 10, 3550, 0, 1, 1, 9, 3, 10, 'upload/products/thumbnails/1798371602633435.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:46:48', '2024-05-07 05:07:57'),
(13, 17, 3, NULL, NULL, '', 0, 5, 2, NULL, 'Man\'s Crossbody Leather Bag', 'Man\'s Crossbody Leather Bag', 'Mans-Crossbody-Leather-Bag-FCqSN', '51858', '1', 1250, 0, 1520, 10, 1750, 0, 1, 1, 5, 3, 5, 'upload/products/thumbnails/1798371712272963.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:48:33', '2024-05-06 23:48:33'),
(14, 17, 3, NULL, NULL, '', 148, 5, 2, NULL, 'Man\'s Leather Laptop Bag', 'Man\'s Leather Laptop Bag', 'Mans-Leather-Laptop-Bag-oht9p', '18814', '1', 1850, 0, 2050, 5, 2250, 0, 1, 1, 87, 3, 87, 'upload/products/thumbnails/1798371819709414.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-06 23:50:15', '2024-08-13 23:15:45'),
(15, 17, 4, NULL, NULL, '', 148, 5, 2, NULL, 'Crop Top Long Sleeve Clothes', 'Crop Top Long Sleeve Clothes', 'Crop-Top-Long-Sleeve-Clothes-cNDew', '69819', '1', 1250, 0, 1350, 10, 1550, 0, 1, 1, 7, 3, 8, 'upload/products/thumbnails/1798372705653225.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-07 00:04:20', '2024-08-14 02:10:53'),
(16, 17, 4, NULL, NULL, '', 0, 5, 2, NULL, 'Party Dress', 'Party Dress', 'Party-Dress-Iuv8l', '82234', '1', 3550, 0, 3750, 10, 4050, 0, 1, 1, 3, 3, 4, 'upload/products/thumbnails/1798372811111297.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-07 00:06:01', '2024-08-13 00:15:51'),
(17, 17, 4, NULL, NULL, '', 145, 0, 2, NULL, 'Party Dress', 'Party Dress', 'Party-Dress-qPH5q', '56237', '1', 3200, 0, 3500, 10, 3800, 0, 1, 1, 7, 3, 8, 'upload/products/thumbnails/1798372893146733.jpg', NULL, NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 1, 1, 1, 0, 1, 1, 1, 4, '2024-05-07 00:07:19', '2024-08-14 01:13:22'),
(18, NULL, 5, NULL, NULL, '', 145, 0, 0, NULL, 'Mens Genuine Black Hooded Bomber Leather Jacket Real', 'Mens Genuine Black Hooded Bomber Leather Jacket Real', 'Mens-Genuine-Black-Hooded-Bomber-Leather-Jacket-Real-nBLUl', '11220', NULL, 1500, 0, 0, 0, 2500, 0, 1, 1, 5, 2, 6, 'upload/products/thumbnails/1798383493346384.jpg', '<p>Mens Genuine Black Hooded Bomber Leather Jacket Real<br></p>', '<p>Mens Genuine Black Hooded Bomber Leather Jacket Real<br></p>', '<p>Mens Genuine Black Hooded Bomber Leather Jacket Real<br></p>', '<p>Mens Genuine Black Hooded Bomber Leather Jacket Real<br></p>', '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 1, 1, 1, 145, '2024-05-07 02:55:48', '2024-05-07 05:25:57'),
(19, NULL, 1, NULL, NULL, '', 145, 0, 0, NULL, 'Mens Shoes | Shop Formal, Casual & Dress Shoe for Men at Barker Shoes', 'Mens Shoes | Shop Formal, Casual & Dress Shoe for Men at Barker Shoes', 'Mens-Shoes--Shop-Formal-Casual--Dress-Shoe-for-Men-at-Barker-Shoes-FvtNa', '50659', NULL, 1800, 0, 0, 0, 3500, 0, 1, 1, 12, 2, 13, 'upload/products/thumbnails/1798383718935254.webp', '<p>Mens Shoes | Shop Formal, Casual &amp; Dress Shoe for Men at Barker Shoes<br></p>', '<p>Mens Shoes | Shop Formal, Casual &amp; Dress Shoe for Men at Barker Shoes<br></p>', '<p>Mens Shoes | Shop Formal, Casual &amp; Dress Shoe for Men at Barker Shoes<br></p>', '<p>Mens Shoes | Shop Formal, Casual &amp; Dress Shoe for Men at Barker Shoes<br></p>', '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 1, 1, 1, 145, '2024-05-07 02:59:24', '2024-05-07 05:50:42'),
(20, NULL, 1, NULL, NULL, '', 148, 0, 0, NULL, 'Leather shoes woman, Shoe boots, Crazy shoes', 'Leather shoes woman, Shoe boots, Crazy shoes', 'Leather-shoes-woman-Shoe-boots-Crazy-shoes-YWIFM', '13412', NULL, 1500, 0, 0, 0, 3500, 0, 1, 1, 13, 2, 14, 'upload/products/thumbnails/1798384216129596.jpg', '<p>Leather shoes woman, Shoe boots, Crazy shoes<br></p>', '<p>Leather shoes woman, Shoe boots, Crazy shoes<br></p>', '<p>Leather shoes woman, Shoe boots, Crazy shoes<br></p>', '<p>Leather shoes woman, Shoe boots, Crazy shoes<br></p>', '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 1, 1, 1, 148, '2024-05-07 03:07:18', '2024-08-13 00:35:12'),
(21, NULL, 1, NULL, NULL, '', 148, 0, 0, NULL, 'Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal', 'Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal', 'Womens-Leather-Flat-Slippers-with-Metallic-Chains---Summer-Slide-Sandal-qwR0R', '33564', NULL, 1500, 0, 0, 0, 2100, 0, 1, 1, 9, 2, 10, 'upload/products/thumbnails/1798384322579972.jpg', '<p>Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal<br></p>', '<p>Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal<br></p>', '<p>Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal<br></p>', '<p>Women\'s Leather Flat Slippers with Metallic Chains - Summer Slide Sandal<br></p>', '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 1, 1, 1, 148, '2024-05-07 03:08:59', '2024-08-12 23:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `varient` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `qty` mediumint(9) DEFAULT NULL,
  `pre_qty` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>Ordered Wrong Product, 2=>Received Wrong Product, 3=>Product is damaged & defective, 4=>Others',
  `approved` int(11) DEFAULT 0 COMMENT '0=>approved,1=>returnComplete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>Ordered Wrong Product, 2=>Received Wrong Product, 3=>Product is damaged & defective, 4=>Others',
  `approved` int(11) DEFAULT 0 COMMENT '0=approve,1=returncomplete\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"2\",\"5\",\"6\",\"9\",\"10\",\"13\",\"14\",\"17\",\"18\",\"19\",\"21\",\"22\",\"23\"]', '2022-09-28 05:05:01', '2023-12-13 23:19:36'),
(2, 'Accountant', '[\"1\",\"2\",\"5\",\"13\",\"14\",\"15\",\"16\",\"17\",\"41\",\"42\",\"43\",\"44\"]', '2022-09-28 05:06:43', '2023-11-28 23:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `color`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Salween BD', 0, '2022-08-22 02:57:04', '2024-08-12 23:30:44'),
(2, 'site_logo', 'upload/setting/logo/1715411964LOGO.png', 0, '2022-08-03 12:46:20', '2024-05-11 01:19:24'),
(3, 'site_favicon', 'upload/setting/favicon/1715411964LOGO.png', 0, '2022-08-04 12:46:20', '2024-05-11 01:19:24'),
(4, 'site_footer_logo', 'upload/setting/logo/1715411964LOGO.png', 0, '2022-08-03 12:46:20', '2024-05-11 01:19:24'),
(5, 'phone', '01777900004', 0, '2022-08-04 12:47:27', '2024-05-04 22:24:45'),
(6, 'email', 'info@salweenbd.com', 0, '2022-08-12 12:47:52', '2024-08-12 23:30:44'),
(7, 'business_name', 'Salween BD', 0, '2022-08-08 12:48:27', '2024-08-12 23:30:44'),
(8, 'business_address', 'Uttara, Dhaka Bangladesh', 0, '2022-08-04 12:48:53', '2024-08-12 23:30:44'),
(9, 'business_hours', '10:00 - 8:00, Sa - Thu', 0, '2022-08-01 12:49:29', NULL),
(10, 'copy_right', 'Salween BD', 0, '2022-08-05 12:49:58', '2024-08-12 23:30:44'),
(11, 'developed_by', 'Classic IT & Sky Mart Ltd.', 0, '2022-08-14 12:50:24', NULL),
(12, 'developer_link', 'https://www.classicit.com.bd/', 0, '2022-08-13 12:50:56', NULL),
(13, 'facebook_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-18 12:51:19', '2024-08-12 23:30:44'),
(14, 'twitter_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-17 12:51:45', '2024-08-12 23:30:44'),
(15, 'linkedin_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-12 12:52:12', '2024-08-12 23:30:44'),
(16, 'youtube_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-04 12:52:42', '2024-08-12 23:30:44'),
(17, 'instagram_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-11 12:53:11', '2024-08-12 23:30:44'),
(18, 'pinterest_url', 'https://www.facebook.com/salweenbd.com', 0, '2022-08-05 12:53:45', '2024-08-12 23:30:44'),
(19, 'guest_checkout', '1', 0, '2022-09-21 05:45:31', '2024-05-05 07:21:38'),
(20, 'otp_system', '0', 0, '2022-09-21 05:45:31', '2022-10-24 03:27:39'),
(21, 'multi_vendor', '1', 0, '2022-10-08 04:08:02', '2022-10-24 03:28:25'),
(22, 'messenger_page_id', '100461018808781', 0, '2023-03-04 06:20:19', NULL),
(23, 'messenger_version', 'v13.0', 0, '2023-03-04 06:20:20', NULL),
(24, 'messenger_status', '1', 0, '2023-03-04 06:26:27', '2023-03-04 03:42:15'),
(25, 'pixel_id', '719731932533250', 0, '2023-03-04 06:34:25', NULL),
(26, 'pixel_version', '2.0', 0, '2023-03-04 06:34:25', '2023-03-04 00:42:49'),
(27, 'pixel_status', '1', 0, '2023-03-04 06:34:25', '2023-03-04 03:42:15'),
(28, 'vendor_comission', '10', 0, '2023-09-27 08:52:03', '2023-09-27 02:54:27'),
(30, 'premium_membership', '10000', 0, '2023-11-16 06:24:54', '2023-12-30 23:56:20'),
(32, 'maintenance', '0', 0, '2023-12-27 10:17:59', '2024-01-15 04:59:04'),
(33, 'tiktok_url', 'https://www.tiktok.com/', 0, '2024-03-06 05:29:13', '2024-03-06 05:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Inside Dhaka, 2=>Outside Dhaka, 3=>Outside Dhaka City',
  `shipping_charge` double(20,2) NOT NULL DEFAULT 0.00,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `type`, `shipping_charge`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pathao', 1, 80.00, '48 Hours', 1, '2022-09-03 03:40:16', '2023-09-05 23:47:22'),
(2, 'Pathao', 2, 140.00, 'Within 1-5 Days', 1, '2022-09-03 03:39:25', '2023-09-05 23:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title_en`, `title_bn`, `slider_url`, `description_bn`, `description_en`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1797751155335780.webp', 'Slider-1', 'Slider-1', '#', 'Slider-1', 'Slider-1', 'slider-1', 1, '2024-04-30 03:25:04', '2024-04-30 03:25:04'),
(2, 'upload/slider/1797751895411095.webp', 'Slider-2', 'Slider-2', '#', 'Slider-2', 'Slider-2', 'slider-2', 1, '2024-04-30 03:36:50', '2024-04-30 03:36:50'),
(3, 'upload/slider/1797754037085380.webp', 'Slider-3', 'Slider-3', '#', 'Slider-3', 'Slider-3', 'slider-3', 1, '2024-04-30 04:10:52', '2024-04-30 04:10:52'),
(4, 'upload/slider/1797754053219751.webp', 'Slider-4', 'Slider-4', '#', 'Slider-4', 'Slider-4', 'slider-4', 1, '2024-04-30 04:11:08', '2024-04-30 04:11:08'),
(5, 'upload/slider/1798368516046085.jpg', 'Women\'s', 'সৌন্দর্য ও স্বাস্থ্য', 'https://aliflaila.life/', 'fdsfds', 'cfsd', 'womens', 1, '2024-05-06 22:57:45', '2024-05-06 22:57:45'),
(6, 'upload/slider/1798368537638797.jpg', 'Computer', 'কম্পিউটার', 'https://aliflaila.life/', 'fdgfdg', 'fgdg', 'computer', 1, '2024-05-06 22:58:06', '2024-05-06 22:58:06'),
(7, 'upload/slider/1798368559923481.jpg', 'Accessories', 'Girl\'s Clothing', 'https://aliflaila.life/', 'fgsdfgdf', 'vdfgdfsg', 'accessories', 1, '2024-05-06 22:58:27', '2024-05-06 22:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `sms_providers`
--

CREATE TABLE `sms_providers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_providers`
--

INSERT INTO `sms_providers` (`id`, `name`, `status`, `url`, `api_key`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'Classic IT', 1, 'http://sms.classicit.com.bd/smsapi', 'R6001640623a9516bf1f71.13295352', 'Classic IT', '2022-04-25 21:27:37', '2022-05-24 11:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'registration_verification', '[[site_name]] রেজিস্ট্রেশন ভেরিফিকেশন কোডঃ [[code]]', 1, '2022-04-25 22:02:02', '2022-04-25 22:07:22'),
(2, 'login_verification', '[[site_name]] লগিন ভেরিফিকেশন কোডঃ [[code]]', 1, '2022-04-25 22:02:46', '2022-04-25 22:07:36'),
(3, 'order_message', 'আপনার অর্ডার সম্পন্ন হয়েছে। অর্ডার  আইডিঃ [[order_code]], মূল্যঃ [[order_amount]] টাকা। - [[site_name]]', 1, '2022-04-25 22:03:12', '2022-05-24 11:38:23'),
(5, 'password_reset', 'আপনার নতুন পাসওয়ার্ডঃ [[code]]', 1, '2022-06-22 06:42:46', '2022-06-22 06:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subsubcategory_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feature` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(5, 'Eric Spears', '0178869873', 'volipi@mailinator.com', 'Vel unde sint velit', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Slices (Slice)', 1, 4, '2022-12-31 00:27:02', '2024-04-20 23:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name_en` varchar(25) NOT NULL,
  `name_bn` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `district_id`, `name_en`, `name_bn`, `url`) VALUES
(1, 1, 'Devidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd'),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd'),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd'),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd'),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd'),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd'),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd'),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd'),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd'),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd'),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd'),
(12, 1, 'Megna', 'মেঘনা', 'meghna.comilla.gov.bd'),
(13, 1, 'Monohorgonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd'),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd'),
(15, 1, 'Titash', 'তিতাস', 'titas.comilla.gov.bd'),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd'),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd'),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd'),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd'),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd'),
(21, 2, 'Ful-Gazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd'),
(22, 2, 'Pashuram', 'পরশুরাম', 'parshuram.feni.gov.bd'),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd'),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd'),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd'),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd'),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd'),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd'),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd'),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd'),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd'),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    '),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd'),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd'),
(35, 4, 'Kawkhali Thana', 'কাউখালী', 'kawkhali.rangamati.gov.bd'),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd'),
(37, 4, 'Barakal', 'বরকল', 'barkal.rangamati.gov.bd'),
(38, 4, 'Longachh', 'লংগদু', 'langadu.rangamati.gov.bd'),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd'),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd'),
(41, 4, 'Jarachhari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd'),
(42, 4, 'Nanichhar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd'),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd'),
(44, 5, 'Companigonj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd'),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd'),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd'),
(47, 5, 'Subornochar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd'),
(48, 5, 'Kobirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd'),
(49, 5, 'Senbag', 'সেনবাগ', 'senbug.noakhali.gov.bd'),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd'),
(51, 5, 'Sonaimuri', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd'),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd'),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd'),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd'),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd'),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd'),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd'),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd'),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd'),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd'),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd'),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd'),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd'),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd'),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd'),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd'),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd'),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd'),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd'),
(70, 8, 'Bashkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd'),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd'),
(72, 8, 'Anawara', 'আনোয়ারা', 'anwara.chittagong.gov.bd'),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd'),
(74, 8, 'Satkaniya', 'সাতকানিয়া', 'satkania.chittagong.gov.bd'),
(75, 8, 'CTG - Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd'),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd'),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd'),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd'),
(79, 8, 'Karnophuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd'),
(80, 9, 'Cox\'s bazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd'),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd'),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd'),
(83, 9, 'Ukhia', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd'),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd'),
(85, 9, 'Pakua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd'),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd'),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd'),
(88, 10, 'Khagrachari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd'),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd'),
(90, 10, 'Panchhari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd'),
(91, 10, 'Lakkhichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd'),
(92, 10, 'Mahalchhari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd'),
(93, 10, 'Manikchhari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd'),
(94, 10, 'Ramgar', 'রামগড়', 'ramgarh.khagrachhari.gov.bd'),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd'),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd'),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd'),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd'),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd'),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd'),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd'),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd'),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd'),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd'),
(105, 12, 'Chowhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd'),
(106, 12, 'Kamarkhanda', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd'),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd'),
(108, 12, 'Rayganj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd'),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd'),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd'),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd'),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd'),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd'),
(114, 13, 'Ishwardi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd'),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd'),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd'),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd'),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd'),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd'),
(120, 13, 'Sathia', 'সাঁথিয়া', 'santhia.pabna.gov.bd'),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd'),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd'),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd'),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd'),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd'),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd'),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd'),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd'),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd'),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd'),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd'),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd'),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd'),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd'),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd'),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd'),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd'),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd'),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd'),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd'),
(141, 15, 'Tanor', 'তানোর', 'tanore.rajshahi.gov.bd'),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd'),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd'),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd'),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd'),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd'),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd'),
(148, 16, 'Gurdaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd'),
(149, 16, 'Naldanga - Natore', 'নলডাঙ্গা', 'naldanga.natore.gov.bd'),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd'),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd'),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd'),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd'),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd'),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd'),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd'),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd'),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd'),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd'),
(160, 19, 'Mohadebpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd'),
(161, 19, 'Bodolgaci', 'বদলগাছী', 'badalgachi.naogaon.gov.bd'),
(162, 19, 'Potnitola', 'পত্নিতলা', 'patnitala.naogaon.gov.bd'),
(163, 19, 'Dhamairhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd'),
(164, 19, 'Niyamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd'),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd'),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd'),
(167, 19, 'Raninagaor', 'রাণীনগর', 'raninagar.naogaon.gov.bd'),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd'),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd'),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd'),
(171, 20, 'Monirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd'),
(172, 20, 'Obhoynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd'),
(173, 20, 'Bagharpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd'),
(174, 20, 'Chaugachha', 'চৌগাছা', 'chougachha.jessore.gov.bd'),
(175, 20, 'Jhikargachha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd'),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd'),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd'),
(178, 20, 'Sarsa', 'শার্শা', 'sharsha.jessore.gov.bd'),
(179, 21, 'Ashashuni Thana', 'আশাশুনি', 'assasuni.satkhira.gov.bd'),
(180, 21, 'Debhata Thana', 'দেবহাটা', 'debhata.satkhira.gov.bd'),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd'),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd'),
(183, 21, 'Shymnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd'),
(184, 21, 'Tala Thana', 'তালা', 'tala.satkhira.gov.bd'),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd'),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd'),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd'),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd'),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd'),
(190, 23, 'Narail - Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd'),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd'),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd'),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd'),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd'),
(195, 24, 'Jiban nagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd'),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd'),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd'),
(198, 25, 'Khoksha', 'খোকসা', 'khoksa.kushtia.gov.bd'),
(199, 25, 'Kushtia-Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd'),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd'),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd'),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd'),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd'),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd'),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd'),
(206, 27, 'Paikgachha Upozila', 'পাইকগাছা', 'paikgasa.khulna.gov.bd'),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd'),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd'),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd'),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd'),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd'),
(212, 27, 'Batiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd'),
(213, 27, 'Dacope', 'দাকোপ', 'dakop.khulna.gov.bd'),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd'),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd'),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd'),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd'),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd'),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd'),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd'),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd'),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd'),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd'),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd'),
(225, 29, 'Shailakupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd'),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd'),
(227, 29, 'Kaligonj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd'),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd'),
(229, 29, 'Maheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd'),
(230, 31, 'Jhalokathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd'),
(231, 31, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd'),
(232, 31, 'Nalchhiti', 'নলছিটি', 'nalchity.jhalakathi.gov.bd'),
(233, 31, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd'),
(234, 32, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd'),
(235, 32, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd'),
(236, 32, 'Dumkee', 'দুমকি', 'dumki.patuakhali.gov.bd'),
(237, 32, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd'),
(238, 32, 'Kala para', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd'),
(239, 32, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd'),
(240, 32, 'Gala chipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd'),
(241, 32, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd'),
(242, 33, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd'),
(243, 33, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd'),
(244, 33, 'kaukhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd'),
(245, 33, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd'),
(246, 33, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd'),
(247, 33, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd'),
(248, 33, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd'),
(249, 30, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd'),
(250, 30, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd'),
(251, 30, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd'),
(252, 30, 'Wazirpur Powrosova', 'উজিরপুর', 'wazirpur.barisal.gov.bd'),
(253, 30, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd'),
(254, 30, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd'),
(255, 30, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd'),
(256, 30, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd'),
(257, 30, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd'),
(258, 30, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd'),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd'),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd'),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd'),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd'),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd'),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd'),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd'),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd'),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd'),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd'),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd'),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd'),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd'),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd'),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd'),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd'),
(275, 36, 'Companyganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd'),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd'),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd'),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd'),
(279, 36, 'Jaintapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd'),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd'),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd'),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd'),
(283, 36, 'Dakshin Surma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd'),
(284, 36, 'Osmani Nagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd'),
(285, 37, 'Baralekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd'),
(286, 37, 'Kamalganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd'),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd'),
(288, 37, 'Mouluvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd'),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd'),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd'),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd'),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd'),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd'),
(294, 38, 'Azmireeganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd'),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd'),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd'),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd'),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd'),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd'),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd'),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd'),
(302, 39, 'Bishwamvarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd'),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd'),
(304, 39, 'Jagnnathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd'),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd'),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd'),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd'),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd'),
(309, 39, 'Salla', 'শাল্লা', 'shalla.sunamganj.gov.bd'),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd'),
(311, 53, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd'),
(312, 53, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd'),
(313, 53, 'Narshingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd'),
(314, 53, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd'),
(315, 53, 'Raypura Upazila South Zon', 'রায়পুরা', 'raipura.narsingdi.gov.bd'),
(316, 53, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd'),
(317, 54, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd'),
(318, 54, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd'),
(319, 54, 'Kapashiya', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd'),
(320, 54, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd'),
(321, 54, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd'),
(322, 55, 'Shariatpur Sadar (Palong)', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd'),
(323, 55, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd'),
(324, 55, 'Jajira', 'জাজিরা', 'zajira.shariatpur.gov.bd'),
(325, 55, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd'),
(326, 55, 'Bhedorganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd'),
(327, 55, 'Damudhya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd'),
(328, 56, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd'),
(329, 56, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd'),
(330, 56, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd'),
(331, 56, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd'),
(332, 56, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd'),
(333, 57, 'Bashail', 'বাসাইল', 'basail.tangail.gov.bd'),
(334, 57, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd'),
(335, 57, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd'),
(336, 57, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd'),
(337, 57, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd'),
(338, 57, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd'),
(339, 57, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd'),
(340, 57, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd'),
(341, 57, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd'),
(342, 57, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd'),
(343, 57, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd'),
(344, 57, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd'),
(345, 58, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd'),
(346, 58, 'Katiadi Upozila', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd'),
(347, 58, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd'),
(348, 58, 'Tarial', 'তাড়াইল', 'tarail.kishoreganj.gov.bd'),
(349, 58, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd'),
(350, 58, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd'),
(351, 58, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd'),
(352, 58, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd'),
(353, 58, 'Karimganj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd'),
(354, 58, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd'),
(355, 58, 'Astagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd'),
(356, 58, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd'),
(357, 58, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd'),
(358, 59, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd'),
(359, 59, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd'),
(360, 59, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd'),
(361, 59, 'Ghior Thana', 'ঘিওর', 'gior.manikganj.gov.bd'),
(362, 59, 'Shivalaya', 'শিবালয়', 'shibaloy.manikganj.gov.bd'),
(363, 59, 'Daulatpur - Manikganj', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd'),
(364, 59, 'Singair', 'সিংগাইর', 'singiar.manikganj.gov.bd'),
(365, 52, '60 Feet', '60 ফুট', 'savar.dhaka.gov.bd'),
(366, 52, 'Abdullahpur', 'আব্দুল্লাহপুর', 'dhamrai.dhaka.gov.bd'),
(367, 52, 'Abdullahpur Uttara', 'আব্দুল্লাহপুর উত্তরা', 'keraniganj.dhaka.gov.bd'),
(368, 52, 'Abul Hotel', 'আবুল হোটেল', 'nawabganj.dhaka.gov.bd'),
(369, 52, 'Adabor', 'আদাবর', 'dohar.dhaka.gov.bd'),
(370, 60, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd'),
(371, 60, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd'),
(372, 60, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd'),
(373, 60, 'Lohajong', 'লৌহজং', 'louhajanj.munshiganj.gov.bd'),
(374, 60, 'Gazaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd'),
(375, 60, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd'),
(376, 61, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd'),
(377, 61, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd'),
(378, 61, 'Pangsha', 'পাংশা', 'pangsa.rajbari.gov.bd'),
(379, 61, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd'),
(380, 61, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd'),
(381, 62, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd'),
(382, 62, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd'),
(383, 62, 'Kalkini Thana', 'কালকিনি', 'kalkini.madaripur.gov.bd'),
(384, 62, 'Rajoir thana', 'রাজৈর', 'rajoir.madaripur.gov.bd'),
(385, 64, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd'),
(386, 64, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd'),
(387, 64, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd'),
(388, 64, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd'),
(389, 64, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd'),
(390, 63, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd'),
(391, 63, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd'),
(392, 63, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd'),
(393, 63, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd'),
(394, 63, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd'),
(395, 63, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd'),
(396, 63, 'Charbhadrashan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd'),
(397, 63, 'Madukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd'),
(398, 63, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd'),
(399, 41, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd'),
(400, 41, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd'),
(401, 41, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd'),
(402, 41, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd'),
(403, 41, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd'),
(404, 42, 'Nawabganj Dinajpur', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd'),
(405, 42, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd'),
(406, 42, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd'),
(407, 42, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd'),
(408, 42, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd'),
(409, 42, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd'),
(410, 42, 'Kaharol', 'কাহারোল', 'kaharole.dinajpur.gov.bd'),
(411, 42, 'Fulbari', 'ফুলবাড়ী', 'fhulbari.dinajpur.gov.bd'),
(412, 42, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd'),
(413, 42, 'Hakimpur (Hili)', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd'),
(414, 42, 'Khanshama', 'খানসামা', 'khansama.dinajpur.gov.bd'),
(415, 42, 'Biral', 'বিরল', 'biral.dinajpur.gov.bd'),
(416, 42, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd'),
(417, 43, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd'),
(418, 43, 'Kaliganj - Lalmonirhat', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd'),
(419, 43, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd'),
(420, 43, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd'),
(421, 43, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd'),
(422, 44, 'Saidpur', 'সৈয়দপুর', 'saidpur.nilphamari.gov.bd'),
(423, 44, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd'),
(424, 44, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd'),
(425, 44, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd'),
(426, 44, 'Kishoriganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd'),
(427, 44, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd'),
(428, 46, 'Sadulllahpur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd'),
(429, 46, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd'),
(430, 46, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd'),
(431, 46, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd'),
(432, 46, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd'),
(433, 46, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd'),
(434, 46, 'Fulchhari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd'),
(435, 45, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd'),
(436, 45, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd'),
(437, 45, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd'),
(438, 45, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd'),
(439, 45, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd'),
(440, 40, 'Rangpur Sadar(Kotowali Th', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd'),
(441, 40, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd'),
(442, 40, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd'),
(443, 40, 'Badarganj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd'),
(444, 40, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd'),
(445, 40, 'Pirganj Thana', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd'),
(446, 40, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd'),
(447, 40, 'Pirgachha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd'),
(448, 47, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd'),
(449, 47, 'Nagesshari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd'),
(450, 47, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd'),
(451, 47, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd'),
(452, 47, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd'),
(453, 47, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd'),
(454, 47, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd'),
(455, 47, 'Rawmari', 'রৌমারী', 'rowmari.kurigram.gov.bd'),
(456, 47, 'Char Rajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd'),
(457, 51, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd'),
(458, 51, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd'),
(459, 51, 'Sreebardi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd'),
(460, 51, 'Nakla', 'নকলা', 'nokla.sherpur.gov.bd'),
(461, 51, 'Jhinaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd'),
(462, 48, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd'),
(463, 48, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd'),
(464, 48, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd'),
(465, 48, 'Muktagachha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd'),
(466, 48, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd'),
(467, 48, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd'),
(468, 48, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd'),
(469, 48, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd'),
(470, 48, 'Gauripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd'),
(471, 48, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd'),
(472, 48, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd'),
(473, 48, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd'),
(474, 50, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd'),
(475, 49, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd'),
(476, 49, 'Melandaha', 'মেলান্দহ', 'melandah.jamalpur.gov.bd'),
(477, 49, 'Islampur (Jamalpur)', 'ইসলামপুর', 'islampur.jamalpur.gov.bd'),
(478, 49, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd'),
(479, 49, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd'),
(480, 49, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd'),
(481, 49, 'Bakshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd'),
(482, 0, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd'),
(483, 0, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd'),
(484, 50, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd'),
(485, 50, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd'),
(486, 50, 'Madan', 'মদন', 'madan.netrokona.gov.bd'),
(487, 50, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd'),
(488, 50, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd'),
(489, 50, 'Mohanganj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd'),
(490, 50, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd'),
(491, 50, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd'),
(492, 52, 'Adarsha Nagar - Kutubpur', 'আদর্শ নগর - কুতুবপুর', ''),
(493, 52, 'Aftab Nagar', 'আফতাব নগর', ''),
(494, 52, 'Aga Sadiq Road', 'আগা সাদিক রোড', ''),
(495, 52, 'Agargaon', 'আগারগাঁও', ''),
(496, 52, 'Agargaon-Taltola', 'আগারগাঁও-তালতলা', ''),
(497, 52, 'Alubazar', 'আলুবাজার', ''),
(498, 52, 'A-Mes', 'এ-মেস', ''),
(499, 52, 'Amtoli', 'আমতলী', ''),
(500, 52, 'Arambagh', 'আরামবাগ', ''),
(501, 52, 'Arjatpara', 'আরজাতপাড়া', ''),
(502, 52, 'Armanitola', 'আরমানিটোলা', ''),
(503, 52, 'Ashkona', 'আশকোনা', ''),
(504, 52, 'Ati Bazar', 'আটি বাজার', ''),
(505, 52, 'Azampur (Uttara)', 'আজমপুর (উত্তরা)', ''),
(506, 52, 'Azimpur (Lalbag)', 'আজিমপুর (লালবাগ)', ''),
(507, 52, 'Aziz Sarani', 'আজিজ সরণি', ''),
(508, 52, 'Babubazar', 'বাবুবাজার', ''),
(509, 52, 'Badda', 'বাড্ডা', ''),
(510, 52, 'Baily Road', 'বেইলি রোড', ''),
(511, 52, 'Bakshi Bazar', 'বকশী বাজার', ''),
(512, 52, 'Balughat', 'বালুঘাট', ''),
(513, 52, 'Banani', 'বনানী', ''),
(514, 52, 'Banani Dohs', 'বনানী দোহাস', ''),
(515, 52, 'Banasree (Block A-G)', 'বনশ্রী (ব্লক এ-জি)', ''),
(516, 52, 'Banasree (Block H-J)', 'বনশ্রী (ব্লক এইচ-জে)', ''),
(517, 52, 'Bangla Bazar', 'বাংলাবাজার', ''),
(518, 52, 'Bangla College', 'বাংলা কলেজ', ''),
(519, 52, 'Banglamotor', 'বাংলামোটর', ''),
(520, 52, 'Bangshal', 'বংশাল', ''),
(521, 52, 'Baridhara', 'বারিধারা', ''),
(522, 52, 'Baridhara Diplomatic Zone', 'বারিধারা কূটনৈতিক অঞ্চল', ''),
(523, 52, 'Baridhara Dohs', 'বারিধারা দোহস', ''),
(524, 52, 'Baridhara J Block', 'বারিধারা জে ব্লক', ''),
(525, 52, 'Barontak', 'ব্যারোন্টাক', ''),
(526, 52, 'Bashabo', 'বাশাবো', ''),
(527, 52, 'Bashundhara', 'বসুন্ধরা', ''),
(528, 52, 'Bawnia', 'বাউনিয়া', ''),
(529, 52, 'Begumbazar', 'বেগমবাজার', ''),
(530, 52, 'Begunbari', 'Begunbari', ''),
(531, 52, 'Benaroshi Polli', 'বেনারোশি পল্লী', ''),
(532, 52, 'Benaroshi Polli Blok A', 'বেনারোশি পল্লী ব্লক এ', ''),
(533, 52, 'Benaroshi Polli Blok B,C', 'Benaroshi Polli Blok B,C', ''),
(534, 52, 'Benaroshi Polli Blok D', 'Benaroshi Polli Blok D', ''),
(536, 52, 'Beraid', 'Beraid', ''),
(537, 52, 'Bijay Nagar', 'Bijay Nagar', ''),
(538, 52, 'Block A, C, Mirpur 11', 'Block A, C, Mirpur 11', ''),
(539, 52, 'Block A,B, Mirpur 6', 'Block A,B, Mirpur 6', ''),
(540, 52, 'Block B, D, Mirpur 11', 'Block B, D, Mirpur 11', ''),
(541, 52, 'Block B, D, Mirpur 11', 'Block B, D, Mirpur 11', ''),
(542, 52, 'Block D,E , Mirpur 6', 'Block D,E , Mirpur 6', ''),
(543, 52, 'Block-E, Mirpur 12', 'Block-E, Mirpur 12', ''),
(544, 52, 'Bongobazar', 'Bongobazar', ''),
(545, 52, 'Bongshal', 'Bongshal', ''),
(546, 52, 'Boro Moghbazar', 'Boro Moghbazar', ''),
(547, 52, 'Boro Shahebr Bazar', 'Boro Shahebr Bazar', ''),
(548, 52, 'Buet', 'Buet', ''),
(549, 52, 'Bulk Merchant', 'Bulk Merchant', ''),
(550, 52, 'Central Road', 'Central Road', ''),
(551, 52, 'Chairman Bari', 'Chairman Bari', ''),
(552, 52, 'Chakbazar', 'Chakbazar', ''),
(553, 52, 'Chalabon', 'Chalabon', ''),
(554, 52, 'Chankharpul', 'Chankharpul', ''),
(555, 52, 'Chawkbazar (Dhaka)', 'Chawkbazar (Dhaka)', ''),
(556, 52, 'Coca-Cola', 'Coca-Cola', ''),
(557, 52, 'Dakshinkhan', 'Dakshinkhan', ''),
(558, 52, 'Darussalam', 'Darussalam', ''),
(559, 52, 'Demra', 'Demra', ''),
(560, 52, 'Dhaka Cantonment', 'Dhaka Cantonment', ''),
(561, 52, 'Dhaka Medical', 'Dhaka Medical', ''),
(562, 52, 'Dhaka University', 'Dhaka University', ''),
(563, 52, 'Dhamrai , Savar', 'Dhamrai , Savar', ''),
(564, 52, 'Dhanmondi', 'Dhanmondi', ''),
(565, 52, 'Dholpur', 'Dholpur', ''),
(566, 52, 'Dhonia', 'Dhonia', ''),
(567, 52, 'Diabari', 'Diabari', ''),
(568, 52, 'Dilkusha', 'Dilkusha', ''),
(569, 52, 'Dit Road', 'Dit Road', ''),
(570, 52, 'Diya Bari', 'Diya Bari', ''),
(571, 52, 'Dmch', 'Dmch', ''),
(572, 52, 'Dohar', 'Dohar', ''),
(573, 52, 'East West Dental Hospital', 'East West Dental Hospital', ''),
(574, 52, 'Ecb', 'Ecb', ''),
(575, 52, 'Elenbari', 'Elenbari', ''),
(576, 52, 'Elephant Road', 'Elephant Road', ''),
(577, 52, 'Equria Thana', 'Equria Thana', ''),
(578, 52, 'Eskaton', 'Eskaton', ''),
(579, 52, 'Estern Housing', 'Estern Housing', ''),
(580, 52, 'Extended Pallabi', 'Extended Pallabi', ''),
(581, 52, 'Extension Pallabi', 'Extension Pallabi', ''),
(582, 52, 'Faidabad', 'Faidabad', ''),
(583, 52, 'Farmgate', 'Farmgate', ''),
(584, 52, 'Fdc', 'Fdc', ''),
(585, 52, 'Fokirapool', 'Fokirapool', ''),
(586, 52, 'Gabtoli', 'Gabtoli', ''),
(587, 52, 'Gandaria', 'Gandaria', ''),
(588, 52, 'Ganobhabon', 'Ganobhabon', ''),
(590, 52, 'Giridhara Abashik', 'Giridhara Abashik', ''),
(591, 52, 'Golapbag', 'Golapbag', ''),
(592, 52, 'Gonok Tuli', 'Gonok Tuli', ''),
(593, 52, 'Gopibagh', 'Gopibagh', ''),
(594, 52, 'Goran', 'Goran', ''),
(595, 52, 'Gpo', 'Gpo', ''),
(596, 52, 'Green Road', 'Green Road', ''),
(597, 52, 'Gulisthan', 'Gulisthan', ''),
(598, 52, 'Gulshan', 'Gulshan', ''),
(599, 52, 'Gulbagh', 'Gulbagh', ''),
(600, 52, 'Gulshan 1', 'Gulshan 1', ''),
(601, 52, 'Gulshan-2', 'Gulshan-2', ''),
(602, 52, 'Haji Camp', 'Haji Camp', ''),
(603, 52, 'Hatirpool', 'Hatirpool', ''),
(604, 52, 'Hazaribagh', 'Hazaribagh', ''),
(605, 52, 'House Building', 'House Building', ''),
(606, 52, 'Ibrahimpur', 'Ibrahimpur', ''),
(607, 52, 'Iqbal Road', 'Iqbal Road', ''),
(608, 52, 'Islampur', 'Islampur', ''),
(609, 52, 'Islampur (Dhamrai)', 'Islampur (Dhamrai)', ''),
(610, 52, 'Jagannath University', 'Jagannath University', ''),
(611, 52, 'Jagannathpur', 'Jagannathpur', ''),
(612, 52, 'Jahangir Gate', 'Jahangir Gate', ''),
(613, 52, 'Jamuna Future Park', 'Jamuna Future Park', ''),
(614, 52, 'Jatrabari', 'Jatrabari', ''),
(615, 52, 'Jhauchor', 'Jhauchor', ''),
(616, 52, 'Jigatola', 'Jigatola', ''),
(617, 52, 'Joardar Lane', 'Joardar Lane', ''),
(618, 52, 'Journalist Residential Ar', 'Journalist Residential Ar', ''),
(619, 52, 'Jurain', 'Jurain', ''),
(620, 52, 'Kadamtoli', 'Kadamtoli', ''),
(621, 52, 'Kafrul', 'Kafrul', ''),
(622, 52, 'Kakrail', 'Kakrail', ''),
(623, 52, 'Kalabagan', 'Kalabagan', ''),
(624, 52, 'Kallyanpur', 'Kallyanpur', ''),
(625, 52, 'Kalshi', 'Kalshi', ''),
(626, 52, 'Kamal Ataturk Avenue', 'Kamal Ataturk Avenue', ''),
(627, 52, 'Kamalapur', 'Kamalapur', ''),
(628, 52, 'Kamarpara', 'Kamarpara', ''),
(629, 52, 'Kamranggirchar', 'Kamranggirchar', ''),
(630, 52, 'Kamrangirchar', 'Kamrangirchar', ''),
(631, 52, 'Katabon', 'Katabon', ''),
(632, 52, 'Kathalbagan', 'Kathalbagan', ''),
(633, 52, 'Kawla', 'Kawla', ''),
(634, 52, 'Kawran Bazar', 'Kawran Bazar', ''),
(635, 52, 'Kazipara', 'Kazipara', ''),
(636, 52, 'Keraniganj', 'Keraniganj', ''),
(637, 52, 'Keraniganj Model Thana', 'Keraniganj Model Thana', ''),
(638, 52, 'Khilgaon', 'Khilgaon', ''),
(639, 52, 'Khilgaon Taltola', 'Khilgaon Taltola', ''),
(640, 52, 'Khilkhet', 'Khilkhet', ''),
(641, 52, 'Kochukhet', 'Kochukhet', ''),
(642, 52, 'Konapara', 'Konapara', ''),
(643, 52, 'Korail Bosti', 'Korail Bosti', ''),
(644, 52, 'Koshai Bari', 'Koshai Bari', ''),
(645, 52, 'Kotwali (Dhaka)', 'Kotwali (Dhaka)', ''),
(646, 52, 'Kuril', 'Kuril', ''),
(647, 52, 'Kurmitola', 'Kurmitola', ''),
(648, 52, 'Lakshmibazar', 'Lakshmibazar', ''),
(649, 52, 'Lalbag', 'Lalbag', ''),
(650, 52, 'Lalbagh', 'Lalbagh', ''),
(651, 52, 'Lalkuthi', 'Lalkuthi', ''),
(662, 52, 'Laxmibazar', 'Laxmibazar', ''),
(663, 52, 'London Market', 'London Market', ''),
(664, 52, 'Lost', 'Lost', ''),
(665, 52, 'Love Road, Mirpur-2', 'Love Road, Mirpur-2', ''),
(666, 52, 'Madani Nagar', 'Madani Nagar', ''),
(667, 52, 'Madartek', 'Madartek', ''),
(668, 52, 'Madertek', 'Madertek', ''),
(669, 52, 'Malibagh Baganbari', 'Malibagh Baganbari ', ''),
(670, 52, 'Malibagh College Road', 'Malibagh College Road', ''),
(671, 52, 'Malibagh Lane', 'Malibagh Lane', ''),
(672, 52, 'Malibagh Pabna Colony', 'Malibagh Pabna Colony', ''),
(673, 52, 'Malitola', 'Malitola', ''),
(674, 52, 'Manda', 'Manda', ''),
(675, 52, 'Manik Nagar', 'Manik Nagar', ''),
(676, 52, 'Manikdi', 'Manikdi', ''),
(677, 52, 'Masjid Market, Mirpur 2', 'Masjid Market, Mirpur 2', ''),
(678, 52, 'Matikata', 'Matikata', ''),
(679, 52, 'Matuail', 'Matuail', ''),
(680, 52, 'Mazar Road', 'Mazar Road', ''),
(681, 52, 'Meradia', 'Meradia', ''),
(682, 52, 'Middle Rosulbag', 'Middle Rosulbag', ''),
(683, 52, 'Mintu Road', 'Mintu Road', ''),
(684, 52, 'Mirpur 1', 'Mirpur 1', ''),
(685, 52, 'Mirpur 1 Market Area', 'Mirpur 1 Market Area', ''),
(686, 52, 'Mirpur 10', 'Mirpur 10', ''),
(687, 52, 'Mirpur 11', 'Mirpur 11', ''),
(688, 52, 'Mirpur 11 Lalmatia', 'Mirpur 11 Lalmatia', ''),
(689, 52, 'Mirpur 12', 'Mirpur 12', ''),
(690, 52, 'Mirpur 12 Block A,C', 'Mirpur 12 Block A,C', ''),
(691, 52, 'Mirpur 12 Block Ta', 'Mirpur 12 Block Ta', ''),
(692, 52, 'Mirpur 12 Block-Dhak, B', 'Mirpur 12 Block-Dhak, B', ''),
(693, 52, 'Mirpur 13', 'Mirpur 13', ''),
(694, 52, 'Mirpur 14', 'Mirpur 14', ''),
(695, 52, 'Mirpur 2', 'Mirpur 2', ''),
(696, 52, 'Mirpur 6', 'Mirpur 6', ''),
(697, 52, 'Mirpur 6 (Block C)', 'Mirpur 6 (Block C)', ''),
(698, 52, 'Mirpur 7', 'Mirpur 7', ''),
(699, 52, 'Mirpur Cantonment', 'Mirpur Cantonment', ''),
(700, 52, 'Mirpur Cantonment (Ave Ne', 'Mirpur Cantonment (Ave Ne', ''),
(701, 52, 'Mirpur Dohs', 'Mirpur Dohs', ''),
(702, 52, 'Mirpur Dohs (Ave New 2)', 'Mirpur Dohs (Ave New 2)', ''),
(703, 52, 'Mirpur Dohs (Ave New 9)', 'Mirpur Dohs (Ave New 9)', ''),
(704, 52, 'Mirpur-Rupnagar', 'Mirpur-Rupnagar', ''),
(705, 52, 'Mitford', 'Mitford', ''),
(706, 52, 'Modhubag', 'Modhubag', ''),
(707, 52, 'Mogbazar', 'Mogbazar', ''),
(708, 52, 'Mohakhali', 'Mohakhali', ''),
(709, 52, 'Mohakhali Dohs', 'Mohakhali Dohs', ''),
(710, 52, 'Mohakhali Wireless', 'Mohakhali Wireless', ''),
(711, 52, 'Mohammadpur', 'Mohammadpur', ''),
(712, 52, 'Monipur', 'Monipur', ''),
(713, 52, 'Monumia Market', 'Monumia Market', ''),
(714, 52, 'Motijheel', 'Motijheel', ''),
(715, 52, 'Moulavi Bazar (Old Dhaka)', 'Moulavi Bazar (Old Dhaka)', ''),
(716, 52, 'Moulovibazar (Dhaka)', 'Moulovibazar (Dhaka)', ''),
(717, 52, 'Mugda', 'Mugda', ''),
(718, 52, 'Mukti Nagar', 'Mukti Nagar', ''),
(719, 52, 'Nabisco', 'Nabisco', ''),
(720, 52, 'Nadda', 'Nadda', ''),
(721, 52, 'Nakhal Para', 'Nakhal Para', ''),
(722, 52, 'Nakhalpara', 'Nakhalpara', ''),
(723, 52, 'Namapara', 'Namapara', ''),
(724, 52, 'Narayanpur - Keshobpur', 'Narayanpur - Keshobpur', ''),
(725, 52, 'Narinda', 'Narinda', ''),
(726, 52, 'Nawabganj (Dhaka)', 'Nawabganj (Dhaka)', ''),
(727, 52, 'Nawabganj (Dohar)', 'Nawabganj (Dohar)', ''),
(728, 52, 'Nawabpur', 'Nawabpur', ''),
(729, 52, 'Naya Bazar', 'Naya Bazar', ''),
(730, 52, 'Nayanagar', 'Nayanagar', ''),
(731, 52, 'Nazim Uddin Road', 'Nazim Uddin Road', ''),
(732, 52, 'Nazira Bazar', 'Nazira Bazar', ''),
(733, 52, 'Nazirabazar', 'Nazirabazar', ''),
(734, 52, 'New Elephant Road', 'New Elephant Road', ''),
(735, 52, 'New Market', 'New Market', ''),
(736, 52, 'New Paltan', 'New Paltan', ''),
(737, 52, 'Niketan', 'Niketan', ''),
(738, 52, 'Nikunja', 'Nikunja', ''),
(739, 52, 'Nikunja 2', 'Nikunja 2', ''),
(740, 52, 'Nilkhet', 'Nilkhet', ''),
(741, 52, 'Nimaikishori', 'Nimaikishori', ''),
(742, 52, 'North Sanarpar', 'North Sanarpar', ''),
(743, 52, 'Notun Bazar', 'Notun Bazar', ''),
(744, 52, 'Noyatola Road', 'Noyatola Road', ''),
(745, 52, 'Numondi Nagar', 'Numondi Nagar', ''),
(746, 52, 'Nurerchala', 'Nurerchala', ''),
(747, 52, 'On-Demand Transfer', 'On-Demand Transfer', ''),
(748, 52, 'Paikpara', 'Paikpara', ''),
(749, 52, 'Pallabi', 'Pallabi', ''),
(750, 52, 'Pallabi Residential Area', 'Pallabi Residential Area', ''),
(751, 52, 'Paltan', 'Paltan', ''),
(752, 52, 'Panthapath', 'Panthapath', ''),
(753, 52, 'Paribag', 'Paribag', ''),
(754, 52, 'Patuatuli', 'Patuatuli', ''),
(755, 52, 'Peyarabag', 'Peyarabag', ''),
(756, 52, 'Pink City', 'Pink City', ''),
(757, 52, 'Pirerbagh', 'Pirerbagh', ''),
(758, 52, 'Polashi', 'Polashi', ''),
(759, 52, 'Postogola', 'Postogola', ''),
(760, 52, 'Postogola', 'Postogola', ''),
(761, 52, 'Pragati Sarani', 'Pragati Sarani', ''),
(762, 52, 'Press Club', 'Press Club', ''),
(763, 52, 'Raja Bari', 'Raja Bari', ''),
(764, 52, 'Rajarbag', 'Rajarbag', ''),
(765, 52, 'Rajlakkhi Market', 'Rajlakkhi Market', ''),
(766, 52, 'Ramna', 'Ramna', ''),
(767, 52, 'Rampura', 'Rampura', ''),
(768, 52, 'Ranavola', 'Ranavola', ''),
(769, 52, 'Rasulbag', 'Rasulbag', ''),
(770, 52, 'Rayer Bazar', 'Rayer Bazar', ''),
(771, 52, 'Rayerbag', 'Rayerbag', ''),
(772, 52, 'Razarbag Police Line', 'Razarbag Police Line', ''),
(773, 52, 'Rupnagar', 'Rupnagar', ''),
(774, 52, 'Sadarghat (Dhaka)', 'Sadarghat (Dhaka)', ''),
(775, 52, 'Savar', 'Savar', ''),
(776, 52, 'Savar- Nabinagar', 'Savar- Nabinagar', ''),
(777, 52, 'Saydabad', 'Saydabad', ''),
(778, 52, 'Science Lab', 'Science Lab', ''),
(779, 52, 'Senpara', 'Senpara', ''),
(780, 52, 'Shagufta Block-D', 'Shagufta Block-D', ''),
(781, 52, 'Shah Ali Bag', 'Shah Ali Bag', ''),
(782, 52, 'Shahbag', 'Shahbag', ''),
(783, 52, 'Shaheenbag ', 'Shaheenbag ', ''),
(784, 52, 'Shahid Nagar', 'Shahid Nagar', ''),
(785, 52, 'Shahidbag', 'Shahidbag', ''),
(786, 52, 'Shahjadpur', 'Shahjadpur', ''),
(787, 52, 'Shajahanpur', 'Shajahanpur', ''),
(788, 52, 'Shakharibazar', 'Shakharibazar', ''),
(789, 52, 'Shammibag', 'Shammibag', ''),
(790, 52, 'Shampur', 'Shampur', ''),
(791, 52, 'Shanir Akhra', 'Shanir Akhra', ''),
(792, 52, 'Shankar', 'Shankar', ''),
(793, 52, 'Shantibagh', 'Shantibagh', ''),
(794, 52, 'Shantinagar', 'Shantinagar', ''),
(795, 52, 'Shegunbagicha', 'Shegunbagicha', ''),
(796, 52, 'Sheikh Rasel Park', 'Sheikh Rasel Park', ''),
(797, 52, 'Sher-E Bangla Nagar', 'Sher-E Bangla Nagar', ''),
(798, 52, 'Sher-E-Bangla National Cr', 'Sher-E-Bangla National Cr', ''),
(799, 52, 'Shewrapara', 'Shewrapara', ''),
(800, 52, 'Shiddesawari', 'Shiddesawari', ''),
(801, 52, 'Shiddeshwari', 'Shiddeshwari', ''),
(802, 52, 'Shimrail', 'Shimrail', ''),
(803, 52, 'Shipahibag', 'Shipahibag', ''),
(804, 52, 'Shishu Mela', 'Shishu Mela', ''),
(805, 52, 'Shobujbag', 'Shobujbag', ''),
(806, 52, 'Shonalibagh', 'Shonalibagh', ''),
(807, 52, 'Shonir Akhra', 'Shonir Akhra', ''),
(808, 52, 'Shutrapur', 'Shutrapur', ''),
(809, 52, 'Shyamoli', 'Shyamoli', ''),
(810, 52, 'Siraz Market', 'Siraz Market', ''),
(811, 52, 'Sony Cinema Hall', 'Sony Cinema Hall', ''),
(812, 52, 'South Banasree', 'South Banasree', ''),
(813, 52, 'South Bishil', 'South Bishil', ''),
(814, 52, 'South Jatrabari', 'South Jatrabari', ''),
(815, 52, 'South Kafrul', 'South Kafrul', ''),
(816, 52, 'Sutrapur', 'Sutrapur', ''),
(817, 52, 'Swamibag', 'Swamibag', ''),
(818, 52, 'Tatibazar', 'Tatibazar', ''),
(819, 52, 'Technical', 'Technical', ''),
(820, 52, 'Tejgaon', 'Tejgaon', ''),
(821, 52, 'Tejgaon Thana', 'Tejgaon Thana', ''),
(822, 52, 'Tikatoli', 'Tikatoli', ''),
(823, 52, 'Tolar Bag', 'Tolar Bag', ''),
(824, 52, 'Tolarbag', 'Tolarbag', ''),
(825, 52, 'Turag', 'Turag', ''),
(826, 52, 'Ulon', 'Ulon', ''),
(827, 52, 'Urdu Road', 'Urdu Road', ''),
(828, 52, 'Uttara Sector 1', 'Uttara Sector 1', ''),
(829, 52, 'Uttara Sector 10', 'Uttara Sector 10', ''),
(830, 52, 'Uttara Sector 11', 'Uttara Sector 11', ''),
(831, 52, 'Uttara Sector 12', 'Uttara Sector 12', ''),
(832, 52, 'Uttara Sector 13', 'Uttara Sector 13', ''),
(833, 52, 'Uttara Sector 14', 'Uttara Sector 14', ''),
(834, 52, 'Uttara Sector 15', 'Uttara Sector 15', ''),
(835, 52, 'Uttara Sector 16', 'Uttara Sector 16', ''),
(836, 52, 'Uttara Sector 17', 'Uttara Sector 17', ''),
(837, 52, 'Uttara Sector 18', 'Uttara Sector 18', ''),
(838, 52, 'Uttara Sector 3', 'Uttara Sector 3', ''),
(839, 52, 'Uttara Sector 4', 'Uttara Sector 4', ''),
(840, 52, 'Uttara Sector 5', 'Uttara Sector 5', ''),
(841, 52, 'Uttara Sector 6', 'Uttara Sector 6', ''),
(842, 52, 'Uttara Sector 7', 'Uttara Sector 7', ''),
(843, 52, 'Uttara Sector 8', 'Uttara Sector 8', ''),
(844, 52, 'Uttara Sector 9', 'Uttara Sector 9', ''),
(845, 52, 'Uttarkhan', 'Uttarkhan', ''),
(846, 52, 'Vasan Tek', 'Vasan Tek', ''),
(847, 52, 'Vatara', 'Vatara', ''),
(848, 52, 'Vootergoli', 'Vootergoli', ''),
(849, 52, 'Wari', 'Wari', ''),
(850, 52, 'West Agargaon', 'West Agargaon', ''),
(851, 52, 'West Kafrul', 'West Kafrul', ''),
(852, 52, 'Zigatola', 'Zigatola', ''),
(853, 52, 'Zoo Road', 'Zoo Road', ''),
(854, 28, 'Rayenda', 'Rayenda', ''),
(855, 11, 'Keranirhat Bazar', 'Keranirhat Bazar', ''),
(856, 11, 'Bandorban Bus Stand', 'Bandorban Bus Stand', ''),
(857, 11, 'Modhompara', 'Modhompara', ''),
(858, 11, 'Balaghata', 'Balaghata', ''),
(859, 11, 'Bimang', 'Bimang', ''),
(860, 11, 'Roanchhari', 'Roanchhari', ''),
(861, 11, 'Kalaghata', 'Kalaghata', ''),
(862, 11, 'Kotowali', 'Kotowali', ''),
(863, 11, 'Barisal Bandor Thana', 'Barisal Bandor Thana', ''),
(864, 34, 'Dokkhin aicha', 'Dokkhin aicha', ''),
(865, 14, 'Shantaher', 'Shantaher', ''),
(866, 18, 'Godagari', 'Godagari', ''),
(867, 8, 'Agrabad CTG', 'Agrabad CTG', ''),
(868, 8, 'Agrabad (CDA)', 'Agrabad (CDA)', ''),
(869, 8, 'Boyalkhali', 'Boyalkhali', ''),
(870, 8, 'Chittagong Sadar', 'Chittagong Sadar', ''),
(871, 8, 'Chawkbazar North Side', 'Chawkbazar North Side', ''),
(872, 8, 'Pahartoli', 'Pahartoli', ''),
(873, 8, 'Muradpur', 'Muradpur', ''),
(874, 8, 'Vhatiyari', 'Vhatiyari', ''),
(875, 8, 'Sholakbahar', 'Sholakbahar', ''),
(876, 8, 'Sholoshohor', 'Sholoshohor', ''),
(877, 8, 'South Khulshi', 'South Khulshi', ''),
(878, 8, 'North Khulshi', 'North Khulshi', ''),
(879, 8, 'O.R Nizam Road', 'O.R Nizam Road', ''),
(880, 8, 'Kazir Dewri', 'Kazir Dewri', ''),
(881, 8, 'Love Lane', 'Love Lane', ''),
(882, 8, 'Bibir Hat', 'Bibir Hat', ''),
(883, 8, 'Textile', 'Textile', ''),
(884, 8, 'Patharghata', 'Patharghata', ''),
(885, 8, 'Jublee Road', 'Jublee Road', ''),
(886, 8, 'Boro Darogahat', 'Boro Darogahat', ''),
(887, 8, 'fatickchari', 'fatickchari', ''),
(888, 8, 'Kumira', 'Kumira', ''),
(889, 8, 'New Mooring', 'New Mooring', ''),
(890, 8, 'Potenga', 'Potenga', ''),
(891, 8, 'kadamrasul', 'kadamrasul', ''),
(892, 8, 'Laldighir par', 'Laldighir par', ''),
(893, 8, 'Dev Pahar', 'Dev Pahar', ''),
(894, 8, 'Chandanpura', 'Chandanpura', ''),
(895, 8, 'Baroaulia', 'Baroaulia', ''),
(896, 8, 'Kodomtoli', 'Kodomtoli', ''),
(897, 8, 'Dewan hat', 'Dewan hat', ''),
(898, 8, 'Mohammadpur CTG', 'Mohammadpur CTG', ''),
(899, 8, 'Kalamia Bazar', 'Kalamia Bazar', ''),
(900, 8, 'East Madarbari', 'East Madarbari', ''),
(901, 8, 'CTG Cantonment', 'CTG Cantonment', ''),
(902, 8, 'Bayezid Bostami Road', 'Bayezid Bostami Road', ''),
(903, 8, 'Badamtolir mor', 'Badamtolir mor', ''),
(904, 8, 'Alongkar mor', 'Alongkar mor', ''),
(905, 8, 'Majir Ghat', 'Majir Ghat', ''),
(906, 8, 'Kadamtoli', 'Kadamtoli', ''),
(907, 8, 'Baroiyarhat Bazar', 'Baroiyarhat Bazar', ''),
(908, 8, 'Dohazari', 'Dohazari', ''),
(909, 8, 'Akbar Shah', 'Akbar Shah', ''),
(910, 8, 'City gate', 'City gate', ''),
(911, 8, 'Noapara', 'Noapara', ''),
(912, 8, 'Fouzdarhat', 'Fouzdarhat', ''),
(913, 8, 'Double Mooring', 'Double Mooring', ''),
(914, 8, 'Baizid Bostami', 'Baizid Bostami', ''),
(915, 8, 'Momin Road', 'Momin Road', ''),
(916, 8, 'Bakalia', 'Bakalia', ''),
(917, 8, 'Shulokhbor', 'Shulokhbor', ''),
(918, 8, 'Rohomotganj', 'Rohomotganj', ''),
(919, 8, 'Oxyzen Mor', 'Oxyzen Mor', ''),
(920, 8, 'Chateshwary', 'Chateshwary', ''),
(921, 8, 'Chittagong Port', 'Chittagong Port', ''),
(922, 8, 'Chowdhury Hat', 'Chowdhury Hat', ''),
(923, 8, 'Terri bazar', 'Terri bazar', ''),
(924, 8, 'Nondonkanon', 'Nondonkanon', ''),
(925, 8, 'Kapashgola', 'Kapashgola', ''),
(926, 8, 'Modunaghat', 'Modunaghat', ''),
(927, 8, 'Noju Miar hat', 'Noju Miar hat', ''),
(928, 8, 'Kaptai rastar matha', 'Kaptai rastar matha', ''),
(929, 8, 'K B Aman Ali Road', 'K B Aman Ali Road', ''),
(930, 8, 'AK khan Road', 'AK khan Road', ''),
(931, 8, 'Foys Lake', 'Foys Lake', ''),
(932, 8, 'Patia Head Office', 'Patia Head Office', ''),
(933, 8, 'Anawara - Chowmuhuni', 'Anawara - Chowmuhuni', ''),
(934, 8, 'Patia bot tola', 'Patia bot tola', ''),
(935, 8, 'Patia college road', 'Patia college road', ''),
(936, 8, 'Moijjertek', 'Moijjertek', ''),
(937, 8, 'Patia Shantirhat', 'Patia Shantirhat', '');
INSERT INTO `upazillas` (`id`, `district_id`, `name_en`, `name_bn`, `url`) VALUES
(938, 8, 'Notunbridge', 'Notunbridge', ''),
(939, 8, 'Katir Hut', 'Katir Hut', ''),
(940, 8, 'Shugondha', 'Shugondha', ''),
(941, 8, 'KAfco', 'KAfco', ''),
(942, 8, 'Chondonaish', 'Chondonaish', ''),
(943, 8, 'Potiya thanar mor', 'Potiya thanar mor', ''),
(944, 8, 'Sikalbaha', 'Sikalbaha', ''),
(945, 8, 'Bandortila', 'Bandortila', ''),
(946, 8, 'CUET', 'CUET', ''),
(947, 8, 'Bata goli', 'Bata goli', ''),
(948, 8, 'Lakhan Bazar', 'Lakhan Bazar', ''),
(949, 8, 'Chittagong University', 'Chittagong University', ''),
(950, 8, 'Chittagong Kalurghat', 'Chittagong Kalurghat', ''),
(951, 8, 'Hatazari', 'Hatazari', ''),
(952, 8, 'Golpahar', 'Golpahar', ''),
(953, 8, 'Dhoniala Para', 'Dhoniala Para', ''),
(954, 8, 'CTG wirless', 'CTG wirless', ''),
(955, 8, 'Khatunganj', 'Khatunganj', ''),
(956, 8, 'Vatiary', 'Vatiary', ''),
(957, 8, 'Bondor', 'Bondor', ''),
(958, 8, 'Dohajari', 'Dohajari', ''),
(959, 8, 'Jamalkhan', 'Jamalkhan', ''),
(960, 8, 'Baizid', 'Baizid', ''),
(961, 8, 'GEC', 'GEC', ''),
(962, 8, 'Lalkhan Bazar', 'Lalkhan Bazar', ''),
(963, 8, 'Mehedibag', 'Mehedibag', ''),
(964, 8, 'Khulshi', 'Khulshi', ''),
(965, 8, 'Bakoliya thana', 'Bakoliya thana', ''),
(966, 8, 'New Market CTG', 'New Market CTG', ''),
(967, 8, 'Halishahar', 'Halishahar', ''),
(968, 8, 'Akbarsha', 'Akbarsha', ''),
(969, 8, 'EPZ', 'EPZ', ''),
(970, 8, 'Andarkilla', 'Andarkilla', ''),
(971, 8, 'Double mooring', 'Double mooring', ''),
(972, 8, 'Keranihat', 'Keranihat', ''),
(973, 8, 'Bayazid', 'Bayazid', ''),
(974, 8, 'Panchlaish ctg', 'Panchlaish ctg', ''),
(975, 8, 'Kotowali Chittagong', 'Kotowali Chittagong', ''),
(976, 8, 'Chandgaon', 'Chandgaon', ''),
(977, 8, 'Enayet bazar', 'Enayet bazar', ''),
(978, 8, 'East Joara', 'East Joara', ''),
(979, 8, 'Patia', 'Patia', ''),
(980, 8, 'Anowara', 'Anowara', ''),
(981, 8, 'Nazirhat', 'Nazirhat', ''),
(982, 8, 'Nasirabad', 'Nasirabad', ''),
(983, 8, 'Zorarganj', 'Zorarganj', ''),
(984, 8, 'Pahartali', 'Pahartali', ''),
(985, 8, 'Chawkbazar (Chattogram)', 'Chawkbazar (Chattogram)', ''),
(986, 8, 'Sadarghat (Chattogram)', 'Sadarghat (Chattogram)', ''),
(987, 8, 'Kotwali (Chattogram)', 'Kotwali (Chattogram)', ''),
(988, 24, 'Darshana', 'Darshana', ''),
(989, 24, 'Doulatganj', 'Doulatganj', ''),
(990, 9, 'Eidgah', 'Eidgah', ''),
(991, 1, 'Nangolkot', 'Nangolkot', ''),
(992, 1, 'Muddafarganj', 'Muddafarganj', ''),
(993, 1, 'Cantonment', 'Cantonment', ''),
(994, 1, 'Comilla Companigonj', 'Comilla Companigonj', ''),
(995, 1, 'Sadar Dakkhin', 'Sadar Dakkhin', ''),
(996, 1, 'Eliotgonj', 'Eliotgonj', ''),
(997, 1, 'Mia-Bazar', 'Mia-Bazar', ''),
(998, 1, 'Kotbari', 'Kotbari', ''),
(999, 1, 'Gouripur', 'Gouripur', ''),
(1000, 1, 'B.Para', 'B.Para', ''),
(1001, 1, 'South Daudkandi', 'South Daudkandi', ''),
(1002, 54, 'Mowchak', 'Mowchak', ''),
(1003, 54, 'Kashimpur', 'Kashimpur', ''),
(1004, 54, 'Rajendrapur Cantonment', 'Rajendrapur Cantonment', ''),
(1005, 54, 'Toke', 'Toke', ''),
(1006, 54, 'Tongi', 'Tongi', ''),
(1007, 54, 'Gazipur Chowrasta', 'Gazipur Chowrasta', ''),
(1008, 54, 'Tongi Cherag Ali', 'Tongi Cherag Ali', ''),
(1009, 54, 'College gate', 'College gate', ''),
(1010, 54, 'Gazipura', 'Gazipura', ''),
(1011, 54, 'Borobari', 'Borobari', ''),
(1012, 54, 'Board Bazar', 'Board Bazar', ''),
(1013, 54, 'Joydebpur', 'Joydebpur', ''),
(1014, 54, 'Hotapara', 'Hotapara', ''),
(1015, 54, 'Mawna', 'Mawna', ''),
(1016, 54, 'Bason', 'Bason', ''),
(1017, 54, 'Gacha', 'Gacha', ''),
(1018, 54, 'Porabari', 'Porabari', ''),
(1019, 54, 'Aral', 'Aral', ''),
(1020, 54, 'Chalar Bazar', 'Chalar Bazar', ''),
(1021, 54, 'Bhawal Mirzapur', 'Bhawal Mirzapur', ''),
(1022, 54, 'Konabari', 'Konabari', ''),
(1023, 54, 'Rajendrapur Bangla Bazar', 'Rajendrapur Bangla Bazar', ''),
(1024, 54, 'Amraid', 'Amraid', ''),
(1025, 20, 'Benapole', 'Benapole', ''),
(1026, 31, 'Swarupkathi', 'Swarupkathi', ''),
(1027, 10, 'Maischori', 'Maischori', ''),
(1028, 10, 'Bagaichari', 'Bagaichari', ''),
(1029, 10, 'Langodu', 'Langodu', ''),
(1030, 27, 'Chandkhali', 'Chandkhali', ''),
(1031, 27, 'Tala Upozilla', 'Tala Upozilla', ''),
(1032, 27, 'Khulna Sadar', 'Khulna Sadar', ''),
(1033, 27, 'Sonadanga', 'Sonadanga', ''),
(1034, 27, 'Khalishpur', 'Khalishpur', ''),
(1035, 27, 'Daulatpur', 'Daulatpur', ''),
(1036, 27, 'Boyra', 'Boyra', ''),
(1037, 27, 'Kopilmuni', 'Kopilmuni', ''),
(1038, 25, 'Islamic University', 'Islamic University', ''),
(1039, 43, 'Area Off Lakhsmipur', 'Area Off Lakhsmipur', ''),
(1040, 43, 'Ramganj', 'Ramganj', ''),
(1041, 43, 'Raipur', 'Raipur', ''),
(1042, 43, 'Komalnagar', 'Komalnagar', ''),
(1043, 43, 'Ramgoti', 'Ramgoti', ''),
(1044, 43, 'Lakshimpur Sadar', 'Lakshimpur Sadar', ''),
(1045, 62, 'Dasar Thana', 'Dasar Thana', ''),
(1046, 26, 'Arpara', 'Arpara', ''),
(1047, 59, 'Ghior', 'Ghior', ''),
(1048, 59, 'ANGAR PARA', 'ANGAR PARA', ''),
(1049, 59, 'DAULATPUR', 'DAULATPUR', ''),
(1050, 48, 'Pagla', 'Pagla', ''),
(1051, 48, 'Tarakanda', 'Tarakanda', ''),
(1052, 23, 'Mohajan', 'Mohajan', ''),
(1053, 23, 'Terokhada', 'Terokhada', ''),
(1054, 56, 'Beldi-Daudpur', 'Beldi-Daudpur', ''),
(1055, 56, 'Neela Market', 'Neela Market', ''),
(1056, 56, 'Nila Market', 'Nila Market', ''),
(1057, 56, 'Jalkuri', 'Jalkuri', ''),
(1058, 56, 'Shibu Market', 'Shibu Market', ''),
(1059, 56, 'Modonpur', 'Modonpur', ''),
(1060, 56, 'Kachpur', 'Kachpur', ''),
(1061, 56, 'Purbachal', 'Purbachal', ''),
(1062, 56, 'Zilla Parishod', 'Zilla Parishod', ''),
(1063, 56, 'Masdair', 'Masdair', ''),
(1064, 56, 'kaikartek', 'kaikartek', ''),
(1065, 56, 'Ponchoboti', 'Ponchoboti', ''),
(1066, 56, 'ananda bazar', 'ananda bazar', ''),
(1067, 56, 'Shanarpar', 'Shanarpar', ''),
(1068, 56, 'Fatullah', 'Fatullah', ''),
(1069, 56, 'Mahmudpur', 'Mahmudpur', ''),
(1070, 56, 'Nitaiganj', 'Nitaiganj', ''),
(1071, 56, '2 no gate', '2 no gate', ''),
(1072, 56, 'Volail', 'Volail', ''),
(1073, 56, 'Bhaberchar', 'Bhaberchar', ''),
(1074, 56, 'Don Chamber', 'Don Chamber', ''),
(1075, 56, 'South Chashara', 'South Chashara', ''),
(1076, 56, 'Bhulta/Gawsia', 'Bhulta/Gawsia', ''),
(1077, 56, 'Sign Board', 'Sign Board', ''),
(1078, 56, 'Pagla', 'Pagla', ''),
(1079, 56, 'Siddirganj', 'Siddirganj', ''),
(1080, 56, 'Madanpur', 'Madanpur', ''),
(1081, 56, 'Baidder Bazar', 'Baidder Bazar', ''),
(1082, 56, 'Passport office (Siddhirg', 'Passport office (Siddhirg', ''),
(1083, 56, 'Boktaboli', 'Boktaboli', ''),
(1084, 56, 'Chittagong_Road_Narayango', 'Chittagong_Road_Narayango', ''),
(1085, 56, 'Saidpur', 'Saidpur', ''),
(1086, 56, 'Madanganj', 'Madanganj', ''),
(1087, 56, 'Nabiganj Bandar', 'Nabiganj Bandar', ''),
(1088, 56, 'Ispahani Bandar', 'Ispahani Bandar', ''),
(1089, 56, 'Ekrampur', 'Ekrampur', ''),
(1090, 56, 'Bb road', 'Bb road', ''),
(1091, 56, 'amlapara', 'amlapara', ''),
(1092, 56, 'Sayedpur - Narayanganj', 'Sayedpur - Narayanganj', ''),
(1093, 56, 'paikpara Narayanganj', 'paikpara Narayanganj', ''),
(1094, 56, 'baburail', 'baburail', ''),
(1095, 56, 'Kashipur', 'Kashipur', ''),
(1096, 56, 'Mitali Market', 'Mitali Market', ''),
(1097, 56, 'Isdair', 'Isdair', ''),
(1098, 56, 'Mograpara', 'Mograpara', ''),
(1099, 56, 'Shaheb para', 'Shaheb para', ''),
(1100, 56, 'Bausia', 'Bausia', ''),
(1101, 56, 'Vabarchar', 'Vabarchar', ''),
(1102, 56, 'Rosulpur', 'Rosulpur', ''),
(1103, 56, 'New town', 'New town', ''),
(1104, 56, 'Majdair', 'Majdair', ''),
(1105, 56, 'Panchabati', 'Panchabati', ''),
(1106, 56, 'Chashra', 'Chashra', ''),
(1107, 56, 'Khanpur', 'Khanpur', ''),
(1108, 56, 'Delpara', 'Delpara', ''),
(1109, 56, 'Shiddriganj', 'Shiddriganj', ''),
(1110, 56, 'Epz', 'Epz', ''),
(1111, 56, 'Bhuighor', 'Bhuighor', ''),
(1112, 56, 'Bisic', 'Bisic', ''),
(1113, 56, 'Hazibadsha mia market', 'Hazibadsha mia market', ''),
(1114, 56, 'Zela Parishad', 'Zela Parishad', ''),
(1115, 53, 'Madhabdi', 'Madhabdi', ''),
(1116, 53, 'Monohordi', 'Monohordi', ''),
(1117, 53, 'Chalakchar', 'Chalakchar', ''),
(1118, 53, 'Raypura Upazila North Zon', 'Raypura Upazila North Zon', ''),
(1119, 53, 'Hatirdia', 'Hatirdia', ''),
(1120, 16, 'Gopalpur UPO', 'Gopalpur UPO', ''),
(1121, 50, 'Susang Durgapur', 'Susang Durgapur', ''),
(1122, 50, 'Barhatta', 'Barhatta', ''),
(1123, 44, 'Taraganj', 'Taraganj', ''),
(1124, 5, 'Maizdee', 'Maizdee', ''),
(1125, 5, 'Sonapur', 'Sonapur', ''),
(1126, 5, 'Basurhat', 'Basurhat', ''),
(1127, 5, 'Chondrogonj Thana', 'Chondrogonj Thana', ''),
(1128, 13, 'Aminpur', 'Aminpur', ''),
(1129, 13, 'Tebunia', 'Tebunia', ''),
(1130, 13, 'Kasinathpur', 'Kasinathpur', ''),
(1131, 13, 'Ataikula', 'Ataikula', ''),
(1133, 32, 'Mohipur', 'Mohipur', ''),
(1134, 32, 'Khepupara', 'Khepupara', ''),
(1135, 32, 'Subidkhali', 'Subidkhali', ''),
(1136, 33, 'Pirojpur-Indurkani', 'Pirojpur-Indurkani', ''),
(1137, 15, 'Rajshahi Sadar (Boalia)', 'Rajshahi Sadar (Boalia)', ''),
(1138, 15, 'Shah Mokdum', 'Shah Mokdum', ''),
(1139, 15, 'Katakhali', 'Katakhali', ''),
(1140, 15, 'Motihar', 'Motihar', ''),
(1141, 15, 'Rajpara', 'Rajpara', ''),
(1142, 15, 'Banseshwar', 'Banseshwar', ''),
(1143, 15, 'Sharda', 'Sharda', ''),
(1144, 15, 'Taherpur', 'Taherpur', ''),
(1145, 4, 'Kalampati', 'Kalampati', ''),
(1146, 4, 'Rangamati Delivery', 'Rangamati Delivery', ''),
(1147, 4, 'Marishya', 'Marishya', ''),
(1148, 4, 'Chakrapara', 'Chakrapara', ''),
(1149, 4, 'Chandraghona', 'Chandraghona', ''),
(1150, 4, 'Manikchhari', 'Manikchhari', ''),
(1151, 4, 'Ghagra', 'Ghagra', ''),
(1152, 4, 'Kotwali Thana', 'Kotwali Thana', ''),
(1153, 52, 'Haragach Thana', 'Haragach Thana', ''),
(1154, 52, 'Rangpur Cantonment', 'Rangpur Cantonment', ''),
(1155, 52, 'Porshurampur Thana', 'Porshurampur Thana', ''),
(1156, 52, 'Tajhat Thana', 'Tajhat Thana', ''),
(1157, 52, 'Mahiganj Thana', 'Mahiganj Thana', ''),
(1158, 55, 'Shakhipur', 'Shakhipur', ''),
(1159, 51, 'Bakshigonj', 'Bakshigonj', ''),
(1160, 12, 'Salonga', 'Salonga', ''),
(1161, 39, 'Shantiganj', 'Shantiganj', ''),
(1162, 45, 'Ruhiya', 'Ruhiya', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL DEFAULT 3 COMMENT '1=>Admin, 2=>Vendor,3=>User,4=>Guest User',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `customer_type` int(11) NOT NULL DEFAULT 0,
  `membership` int(11) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `phone`, `email`, `address`, `income`, `profile_image`, `commission`, `email_verified_at`, `password`, `status`, `customer_type`, `membership`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 'Walk in Customer', 'guest-user', '01900000000', 'guestuser@gmail.com', 'Dhaka', NULL, 'upload/user/1663045118avatar5.png', NULL, NULL, '$2y$10$iy93F5hZNH/zmluBuHBm5.1.hUsNJVR5PauM4Nu4Dg0rt5dBhoODK', 1, 0, 0, NULL, '2022-07-30 03:25:27', '2023-12-03 06:56:42'),
(4, 1, 'Admin', 'admin', '01721523654', 'admin@gmail.com', 'Uttara, Dhaka', NULL, '202208201411avatar5.png', NULL, NULL, '$2y$10$76y.6leBgFOLXpo3T4T9NusHuQ1kWmwLSUoAzaGyCNz7QIlzfw.gC', 1, 0, 0, NULL, '2022-08-12 23:46:40', '2022-08-20 08:11:59'),
(122, 3, 'Afsana Sultana', 'As_Labonno', '01753142981', 'afsana1996sultana@gmail.com', 'Sector-12', NULL, 'upload/user/1704000516Afsana-Sultana-1.jpg', NULL, NULL, '$2y$10$og2k1ER3u9vfbhFvGg8Tsu6lzad9i8kbHvJ0vvmKvc/rIajQ3lY4W', 1, 0, 0, NULL, '2023-12-13 05:31:07', '2024-08-13 22:56:02'),
(143, 3, 'Mohammad Saiful Islam Khan', 'Saiful900004', '01777900004', 'saiful900004@gmail.com', 'Uttara, Dhaka', NULL, 'upload/user/1714500732VID20240501001536.mp4', NULL, NULL, '$2y$10$ei2ayXEYav6ZXzIcTJNs1.Ber4BU3aA4ESEcbapduVO9FaZKuorUO', 1, 0, 0, NULL, '2024-04-30 12:09:33', '2024-04-30 12:12:12'),
(145, 2, 'Pachmishalii Bazar', 'Pachmishalii-Bazar-p8EVK', '01753142982', 'jobeda@gmail.com', 'Uttara,  Dhaka Bangladesh', NULL, NULL, NULL, NULL, '$2y$10$Bb.4qFnelb49B7Wh06wGNO0Wi1gL.gnSJayZ8IqrRtGnc0i.Rg78u', 0, 0, 0, NULL, '2024-05-02 06:50:22', '2024-05-07 02:52:40'),
(146, 3, 'test', 'test', '01911045596', 'test@gamil.com', 'Uttara, Dhaka', NULL, NULL, NULL, NULL, '$2y$10$ma.WfCnQCjTTrES3COzQveo2ZLkQ35QmgmHZriN.PVKGSCoiB7whm', 1, 0, 0, NULL, '2024-05-05 07:24:26', '2024-05-05 07:24:26'),
(147, 3, 'Ashiqul Islam', NULL, '01753142983', 'ashiqulislamrasel@gmail.com', 'Ashugang Sadar Bangladesh', NULL, NULL, NULL, NULL, '$2y$10$6yORYKLIsayh5Pg6Y8Pt3OznBWyxZVoD0jqAe7H2xfso1bQGnZX3m', 1, 1, 0, NULL, '2024-05-05 22:36:29', '2024-08-13 23:06:17'),
(148, 2, 'Shopno Ghar', 'Shopno-Ghar-4t9Nl', '01753142989', 'shopnoghar@gmail.com', 'Uttara,  Dhaka Bangladesh', NULL, NULL, NULL, NULL, '$2y$10$wy1vL17dQDTThADthK8h5.Ff1GGQKYdgIOesgCrk9qBD1hopH0G5C', 1, 0, 0, NULL, '2024-05-07 02:00:31', '2024-05-07 02:00:31'),
(149, 3, 'Soudia Mannan', 'mumu', '01753142236', 'soudia@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$9IubCBqtR7N9N3goqVDeNe0IVpoYuWfzWU1DmsiFatsZczQfOxwj2', 1, 0, 0, NULL, '2024-08-14 00:51:18', '2024-08-14 00:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_information` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `vendor_name`, `shop_name`, `slug`, `fb_url`, `bank_account`, `bank_information`, `bank_name`, `holder_name`, `branch_name`, `routing_name`, `address`, `commission`, `description`, `shop_profile`, `shop_cover`, `nid`, `trade_license`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 145, 'Jobeda Khatun Liza', 'Pachmishalii Bazar', 'Pachmishalii-Bazar-p8EVK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uttara,  Dhaka Bangladesh', '10', NULL, 'upload/vendor/1797945265650033.jpg', 'upload/vendor/1797945265744529.jpg', '', '', 1, 4, NULL, '2024-05-07 02:53:08'),
(2, 148, 'Afsana Sultana Labonno', 'Shopno Ghar', 'Shopno-Ghar-4t9Nl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uttara,  Dhaka Bangladesh', '10', 'test', 'upload/vendor/1798380015009417.png', 'upload/vendor/1798380015041151.jpg', '', '', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_ledgers_account_head_id_foreign` (`account_head_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advance_payments`
--
ALTER TABLE `advance_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_value_product_price_product_price_id_foreign` (`product_price_id`),
  ADD KEY `attribute_value_product_price_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaings`
--
ALTER TABLE `campaings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaing_products_campaing_id_foreign` (`campaing_id`);

--
-- Indexes for table `cashwithdraws`
--
ALTER TABLE `cashwithdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `free_shippings`
--
ALTER TABLE `free_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`),
  ADD KEY `order_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_carts`
--
ALTER TABLE `pos_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `value` (`value`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advance_payments`
--
ALTER TABLE `advance_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `campaings`
--
ALTER TABLE `campaings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaing_products`
--
ALTER TABLE `campaing_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashwithdraws`
--
ALTER TABLE `cashwithdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `free_shippings`
--
ALTER TABLE `free_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_carts`
--
ALTER TABLE `pos_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1163;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD CONSTRAINT `account_ledgers_account_head_id_foreign` FOREIGN KEY (`account_head_id`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  ADD CONSTRAINT `attribute_value_product_price_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_value_product_price_product_price_id_foreign` FOREIGN KEY (`product_price_id`) REFERENCES `product_prices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD CONSTRAINT `campaing_products_campaing_id_foreign` FOREIGN KEY (`campaing_id`) REFERENCES `campaings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD CONSTRAINT `product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
