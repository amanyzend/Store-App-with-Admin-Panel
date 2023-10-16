-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2022 at 06:34 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_04_065403_create_products_table', 1),
(5, '2021_07_04_160919_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `done` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `done`, `created_at`, `updated_at`) VALUES
(8, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:15:\"Printer Canon 2\";s:5:\"price\";d:150;s:5:\"image\";s:36:\"productImages/1625384236printer2.jpg\";s:3:\"qty\";s:1:\"2\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:300;}', NULL, '2021-07-05 06:33:21', '2021-07-05 08:08:27'),
(7, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:3:\"Fax\";s:5:\"price\";d:75;s:5:\"image\";s:40:\"productImages/1625384165fax-machine2.png\";s:3:\"qty\";i:1;}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:13:\"Laptop Lenovo\";s:5:\"price\";d:150;s:5:\"image\";s:35:\"productImages/1625384033laptop3.jpg\";s:3:\"qty\";i:1;}i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:15:\"Printer Canon 2\";s:5:\"price\";d:150;s:5:\"image\";s:36:\"productImages/1625384236printer2.jpg\";s:3:\"qty\";i:1;}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:375;}', 1, '2021-07-05 06:30:33', '2021-07-05 06:30:33'),
(10, 3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:11:\"Laptop Dell\";s:5:\"price\";d:200;s:5:\"image\";s:35:\"productImages/1625384010laptop2.jpg\";s:3:\"qty\";i:1;}i:3;a:5:{s:2:\"id\";i:3;s:5:\"title\";s:13:\"Laptop Lenovo\";s:5:\"price\";d:150;s:5:\"image\";s:35:\"productImages/1625384033laptop3.jpg\";s:3:\"qty\";i:1;}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:350;}', NULL, '2021-07-06 04:34:04', '2021-07-06 04:34:04'),
(11, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:9:\"Laptop HP\";s:5:\"price\";d:100;s:5:\"image\";s:35:\"productImages/1625383987laptop1.png\";s:3:\"qty\";i:1;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:100;}', NULL, '2022-11-15 03:27:19', '2022-11-15 03:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laptop HP', 100, 'productImages/1625383987laptop1.png', '2021-07-04 04:33:07', '2021-07-04 04:33:07'),
(2, 'Laptop Dell', 200, 'productImages/1625384010laptop2.jpg', '2021-07-04 04:33:30', '2021-07-04 04:33:30'),
(3, 'Laptop Lenovo', 150, 'productImages/1625384033laptop3.jpg', '2021-07-04 04:33:53', '2021-07-04 04:33:53'),
(4, 'Desktop PC HP', 250, 'productImages/1625384078desktop_pc1.jpg', '2021-07-04 04:34:38', '2021-07-04 04:34:38'),
(5, 'Desktop PC Dell', 300, 'productImages/1625384095desktop_pc2.jpg', '2021-07-04 04:34:55', '2021-07-04 04:34:55'),
(6, 'Desktop PC Lenovo', 250, 'productImages/1625384119desktop_pc3.jpg', '2021-07-04 04:35:19', '2021-07-04 04:35:19'),
(7, 'Fax Machine', 50, 'productImages/1625384150fax-machine1.jpg', '2021-07-04 04:35:50', '2021-07-04 04:35:50'),
(8, 'Fax', 75, 'productImages/1625384165fax-machine2.png', '2021-07-04 04:36:05', '2021-07-04 04:36:05'),
(9, 'Fax Machine', 100, 'productImages/1625384183fax-machine3.jpg', '2021-07-04 04:36:23', '2021-07-04 04:36:23'),
(10, 'Printer Canon', 125, 'productImages/1625384218printer1.jpg', '2021-07-04 04:36:58', '2021-07-04 04:36:58'),
(14, 'Printer Canon 2', 250, 'productImages/166849389912.jpg', '2021-07-06 04:37:09', '2022-11-15 03:31:39'),
(13, 'Printer Epson', 100, 'productImages/166849395613.jpg', '2021-07-06 02:59:46', '2022-11-15 03:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'safaa', 'safaa@hotmail.com', NULL, NULL, '$2y$10$oWNedhEYmoSpz5X/2UU9VuwE/kapPoLvBVnx33O6pAbaqmWaxCHpe', NULL, '2021-07-04 05:55:10', '2021-07-04 05:55:10'),
(2, 'amani', 'amani@hotmail.com', 1, NULL, '$2y$10$6aK3Qx0RC1zwl7HveK23aOcT/JNuJpxx8.dx3K61g.Kwx.sk0pFAq', NULL, '2021-07-04 05:55:34', '2021-07-04 05:55:34'),
(3, 'customer1', 'customer1@hotmail.com', NULL, NULL, '$2y$10$F5IDlIRMIUi8OUgYNGgWQuMqu4mUYLhWHLHIJsZqyune.Bfepbs/W', NULL, '2021-07-06 03:13:07', '2021-07-06 03:13:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
