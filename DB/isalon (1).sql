-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 03:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isalon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aravind', '8883191962', 'aravind.0216@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', '0', NULL, '2020-07-02 09:13:52', '2020-07-02 09:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `date`, `parent_id`, `area`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '0', 'Tamil Nadu', '0', '2020-07-02 08:52:47', '2020-07-02 08:52:47'),
(2, NULL, '0', 'Kerala', '0', '2020-07-02 08:52:58', '2020-07-02 08:53:24'),
(3, NULL, '1', 'Madurai', '0', '2020-07-02 08:53:38', '2020-07-02 08:53:38'),
(4, NULL, '2', 'Cochin', '0', '2020-07-02 08:54:12', '2020-07-02 08:54:12'),
(5, NULL, '1', 'Chennai', '0', '2020-07-10 05:09:37', '2020-07-10 05:09:37'),
(6, NULL, '1', 'Trichy', '0', '2020-07-10 05:09:48', '2020-07-10 05:09:48'),
(7, NULL, '1', 'Dindigul', '0', '2020-07-10 05:09:57', '2020-07-10 05:09:57'),
(8, NULL, '2', 'Munnar', '0', '2020-07-10 05:12:04', '2020-07-10 05:12:04'),
(9, NULL, '2', 'Pollachi', '0', '2020-07-10 05:12:11', '2020-07-10 05:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title', NULL, '1491855550.jpg', '0', '2020-07-08 23:49:51', '2020-07-08 23:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_english` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_arabic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name_english`, `category_name_arabic`, `icon`, `image`, `category_status`, `status`, `created_at`, `updated_at`) VALUES
(3, '0', 'Category name', 'Category name arabic', NULL, '275389116.jpg', '0', '0', '2020-07-02 06:25:45', '2020-07-02 07:34:04'),
(4, '3', 'Second Category - 1', NULL, NULL, '419313909.jpg', '0', '0', '2020-07-02 08:24:21', '2020-07-02 08:24:21'),
(5, '3', 'Second Category - 2', NULL, NULL, NULL, '0', '0', '2020-07-02 08:24:34', '2020-07-02 08:24:34'),
(6, '5', 'Third Category - 1', NULL, NULL, NULL, '0', '0', '2020-07-02 08:24:54', '2020-07-02 08:24:54'),
(7, '4', 'Third Category', NULL, NULL, NULL, '0', '0', '2020-07-02 08:25:56', '2020-07-02 08:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_per_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_per_coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `salon_id`, `coupon_code`, `description`, `start_date`, `end_date`, `discount_type`, `service_id`, `amount`, `max_value`, `limit_per_user`, `limit_per_coupon`, `user_type`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'CODE 150', 'Terms and Condition', '2020-07-06', '2020-07-11', '1', '1', '100', NULL, '5', '100', '1', '1', '1', '2020-07-07 08:43:41', '2020-07-09 06:53:18'),
(2, '4', 'Code 100', 'terms and condition', '2020-07-09', '2020-07-18', '2', '1', '50', '500', '1', '1', '1', '1,2,3', '1', '2020-07-09 06:46:18', '2020-07-11 08:35:12'),
(3, '4', 'Code 50', 'Terms', '2020-07-09', '2020-07-11', '1', '1', '50', '100', '1', '1', '1', '2,3', '0', '2020-07-09 06:48:50', '2020-07-09 06:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `date`, `name`, `phone`, `email`, `membership_plan`, `reviews`, `status`, `created_at`, `updated_at`) VALUES
(1, '01-07-2020', 'John jojo', '560009123', 'Edinburgh@gmail.com', NULL, NULL, '0', NULL, NULL),
(2, '01-07-2020', 'Aravind', '560009123', 'aravind@gmail.com', NULL, NULL, '0', NULL, NULL),
(3, '01-07-2020', 'kumar', '560009123', 'kumar@gmail.com', NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_02_063221_create_admins_table', 1),
(4, '2020_07_02_063304_create_categories_table', 1),
(5, '2020_07_02_063324_create_services_table', 1),
(6, '2020_07_02_120044_create_push_notifications_table', 2),
(7, '2020_07_02_120141_create_reviews_table', 2),
(8, '2020_07_02_120318_create_customers_table', 2),
(9, '2020_07_02_131158_create_areas_table', 3),
(11, '2014_10_12_100000_create_password_resets_table', 4),
(12, '2020_07_03_065420_create_settlement_periods_table', 5),
(15, '2020_07_07_095137_create_service_times_table', 6),
(16, '2020_07_07_102105_create_salon_services_table', 7),
(17, '2020_07_07_133325_create_coupons_table', 8),
(18, '2020_07_08_101627_create_orders_table', 9),
(19, '2020_07_08_144001_create_sliders_table', 10),
(21, '2020_07_08_144823_create_banners_table', 11),
(22, '2020_07_09_075148_create_new_services_table', 12),
(24, '2020_07_11_053418_create_salon_passwords_table', 13),
(25, '2020_07_12_082526_create_settings_table', 14),
(26, '2020_07_12_082740_create_terms_and_conditions_table', 14),
(27, '2020_07_12_145920_create_salon_packages_table', 14),
(28, '2020_07_12_150019_create_salon_package_items_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `new_services`
--

CREATE TABLE `new_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_services`
--

INSERT INTO `new_services` (`id`, `date`, `service_name`, `category`, `remark`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sevice namee', 'category', 'remark', '1', '2020-07-09 06:22:38', '2020-07-10 00:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `other_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`id`, `salon_id`, `title`, `description`, `send_to`, `status`, `other_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Title', 'Description', '2', '1', NULL, '2020-07-02 07:02:03', '2020-07-13 00:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `invoice_id`, `salon_name`, `customer_name`, `comments`, `reviews`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INV-000001', 'jojo Salon', 'John jojo', 'Really Good', '4', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salon_packages`
--

CREATE TABLE `salon_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_renewal_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salon_package_items`
--

CREATE TABLE `salon_package_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salon_passwords`
--

CREATE TABLE `salon_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_passwords`
--

INSERT INTO `salon_passwords` (`id`, `date`, `end_date`, `salon_id`, `owner_name`, `salon_name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-07-11', '2020-08-10', '5', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:17:27', '2020-07-11 00:17:27'),
(2, '2020-07-11', '2020-08-10', '6', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(3, '2020-07-11', '2020-08-10', '7', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(4, '2020-07-11', '2020-08-10', '8', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(5, '2020-07-11', '2020-08-10', '9', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(6, '2020-07-11', '2020-08-10', '10', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(7, '2020-07-11', '2020-08-10', '11', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(8, '2020-07-11', '2020-08-10', '12', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(9, '2020-07-11', '2020-08-10', '13', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(10, '2020-07-11', '2020-08-10', '14', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(11, '2020-07-11', '2020-08-10', '15', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(12, '2020-07-11', '2020-08-10', '16', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(13, '2020-07-11', '2020-08-10', '17', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(14, '2020-07-11', '2020-08-10', '18', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(15, '2020-07-11', '2020-08-10', '19', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(16, '2020-07-11', '2020-08-10', '20', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(17, '2020-07-11', '2020-07-10', '21', 'aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(18, '2020-07-11', '2020-08-10', '22', 'kumar', NULL, 'aravind.0216@gmail.com', '1', '2020-07-11 01:22:01', '2020-07-11 01:56:11'),
(19, '2020-07-13', '2020-08-12', '23', 'Aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(20, '2020-07-13', '2020-08-12', '24', 'Aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(21, '2020-07-13', '2020-08-12', '25', 'Aravind', 'Aravind Spa', 'aravind.0216@gmail.com', '1', '2020-07-13 05:19:15', '2020-07-13 05:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `salon_services`
--

CREATE TABLE `salon_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_services`
--

INSERT INTO `salon_services` (`id`, `salon_id`, `service_id`, `price`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '150', '30', '0', '2020-07-07 05:21:44', '2020-07-07 05:25:18'),
(3, '4', '1', '500', '30', '0', '2020-07-07 06:29:12', '2020-07-07 06:29:22'),
(4, '4', '1', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name_english` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name_arabic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `service_name_english`, `service_name_arabic`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', 'Service name english', NULL, '1662521342.jpg', '0', '2020-07-02 06:27:25', '2020-07-02 06:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `service_times`
--

CREATE TABLE `service_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_times`
--

INSERT INTO `service_times` (`id`, `salon_id`, `days`, `open_time`, `close_time`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'Sunday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(2, '4', 'Monday', '09:00 AM', '08:30 PM', '1', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(3, '4', 'Tuesday', '09:00 AM', '09:00 PM', '1', '2020-07-07 06:12:46', '2020-07-07 07:21:18'),
(4, '4', 'Wednesday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(5, '4', 'Thursday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(6, '4', 'Friday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(7, '4', 'Saturday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(8, '5', 'Sunday', '', '', '', '2020-07-11 00:17:27', '2020-07-11 07:33:01'),
(9, '5', 'Monday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:33:01'),
(10, '5', 'Tuesday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(11, '5', 'Wednesday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(12, '5', 'Thursday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(13, '5', 'Friday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(14, '5', 'Saturday', '08:00 AM', '06:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(15, '6', 'Sunday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(16, '6', 'Monday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(17, '6', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(18, '6', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(19, '6', 'Thursday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(20, '6', 'Friday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(21, '6', 'Saturday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(22, '7', 'Sunday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(23, '7', 'Monday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(24, '7', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(25, '7', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(26, '7', 'Thursday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(27, '7', 'Friday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(28, '7', 'Saturday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(29, '8', 'Sunday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(30, '8', 'Monday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(31, '8', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(32, '8', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(33, '8', 'Thursday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(34, '8', 'Friday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(35, '8', 'Saturday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(36, '9', 'Sunday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(37, '9', 'Monday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(38, '9', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(39, '9', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(40, '9', 'Thursday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(41, '9', 'Friday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(42, '9', 'Saturday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(43, '10', 'Sunday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(44, '10', 'Monday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(45, '10', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(46, '10', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(47, '10', 'Thursday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(48, '10', 'Friday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(49, '10', 'Saturday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(50, '11', 'Sunday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(51, '11', 'Monday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(52, '11', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(53, '11', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(54, '11', 'Thursday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(55, '11', 'Friday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(56, '11', 'Saturday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(57, '12', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(58, '12', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(59, '12', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(60, '12', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(61, '12', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(62, '12', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(63, '12', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(64, '13', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(65, '13', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(66, '13', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(67, '13', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(68, '13', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(69, '13', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(70, '13', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(71, '14', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(72, '14', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(73, '14', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(74, '14', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(75, '14', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(76, '14', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(77, '14', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(78, '15', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(79, '15', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(80, '15', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(81, '15', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(82, '15', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(83, '15', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(84, '15', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(85, '16', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(86, '16', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(87, '16', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(88, '16', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(89, '16', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(90, '16', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(91, '16', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(92, '17', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(93, '17', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(94, '17', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(95, '17', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(96, '17', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(97, '17', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(98, '17', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(99, '18', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(100, '18', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(101, '18', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(102, '18', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(103, '18', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(104, '18', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(105, '18', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(106, '19', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(107, '19', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(108, '19', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(109, '19', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(110, '19', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(111, '19', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(112, '19', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(113, '20', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(114, '20', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(115, '20', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(116, '20', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(117, '20', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(118, '20', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(119, '20', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(120, '21', 'Sunday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(121, '21', 'Monday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(122, '21', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(123, '21', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(124, '21', 'Thursday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(125, '21', 'Friday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(126, '21', 'Saturday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(127, '22', 'Sunday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(128, '22', 'Monday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(129, '22', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(130, '22', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(131, '22', 'Thursday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(132, '22', 'Friday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(133, '22', 'Saturday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(134, '23', 'Sunday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(135, '23', 'Monday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(136, '23', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(137, '23', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(138, '23', 'Thursday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(139, '23', 'Friday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(140, '23', 'Saturday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(141, '24', 'Sunday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(142, '24', 'Monday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(143, '24', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(144, '24', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(145, '24', 'Thursday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(146, '24', 'Friday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(147, '24', 'Saturday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(148, '25', 'Sunday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(149, '25', 'Monday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(150, '25', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(151, '25', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(152, '25', 'Thursday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(153, '25', 'Friday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(154, '25', 'Saturday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `phone`, `address`, `city`, `area`, `map_iframe`, `latitude`, `longitude`, `license`, `logo`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settlement_periods`
--

CREATE TABLE `settlement_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settlement_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settlement_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settlement_periods`
--

INSERT INTO `settlement_periods` (`id`, `settlement_period`, `settlement_amount`, `created_at`, `updated_at`) VALUES
(1, '1', '200', NULL, '2020-07-11 08:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `created_at`, `updated_at`) VALUES
(1, '&lt;h1&gt;Terms and Conditions&lt;/h1&gt;\r\n&lt;h1&gt;General Site Usage&lt;/h1&gt;\r\n&lt;p&gt;Last Revised: December 16, 2013&lt;/p&gt;\r\n&lt;p&gt;Welcome to www.lorem-ipsum.info. This site is provided as a service to our visitors and may be used for informational purposes only. Because the Terms and Conditions contain legal obligations, please read them carefully.&lt;/p&gt;\r\n&lt;h2&gt;1. YOUR AGREEMENT&lt;/h2&gt;\r\n&lt;p&gt;By using this Site, you agree to be bound by, and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this site.&lt;/p&gt;\r\n&lt;blockquote&gt;PLEASE NOTE: We reserve the right, at our sole discretion, to change, modify or otherwise alter these Terms and Conditions at any time. Unless otherwise indicated, amendments will become effective immediately. Please review these Terms and Conditions periodically. Your continued use of the Site following the posting of changes and/or modifications will constitute your acceptance of the revised Terms and Conditions and the reasonableness of these standards for notice of changes. For your information, this page was last updated as of the date at the top of these terms and conditions.&lt;/blockquote&gt;\r\n&lt;h2&gt;2. PRIVACY&lt;/h2&gt;\r\n&lt;p&gt;Please review our Privacy Policy, which also governs your visit to this Site, to understand our practices.&lt;/p&gt;\r\n&lt;h2&gt;3. LINKED SITES&lt;/h2&gt;\r\n&lt;p&gt;This Site may contain links to other independent third-party Web sites (&quot;Linked Sites&amp;rdquo;). These Linked Sites are provided solely as a convenience to our visitors. Such Linked Sites are not under our control, and we are not responsible for and does not endorse the content of such Linked Sites, including any information or materials contained on such Linked Sites. You will need to make your own independent judgment regarding your interaction with these Linked Sites.&lt;/p&gt;\r\n&lt;h2&gt;4. FORWARD LOOKING STATEMENTS&lt;/h2&gt;\r\n&lt;p&gt;All materials reproduced on this site speak as of the original date of publication or filing. The fact that a document is available on this site does not mean that the information contained in such document has not been modified or superseded by events or by a subsequent document or filing. We have no duty or policy to update any information or statements contained on this site and, therefore, such information or statements should not be relied upon as being current as of the date you access this site.&lt;/p&gt;\r\n&lt;h2&gt;5. DISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY&lt;/h2&gt;\r\n&lt;p&gt;A. THIS SITE MAY CONTAIN INACCURACIES AND TYPOGRAPHICAL ERRORS. WE DOES NOT WARRANT THE ACCURACY OR COMPLETENESS OF THE MATERIALS OR THE RELIABILITY OF ANY ADVICE, OPINION, STATEMENT OR OTHER INFORMATION DISPLAYED OR DISTRIBUTED THROUGH THE SITE. YOU EXPRESSLY UNDERSTAND AND AGREE THAT: (i) YOUR USE OF THE SITE, INCLUDING ANY RELIANCE ON ANY SUCH OPINION, ADVICE, STATEMENT, MEMORANDUM, OR INFORMATION CONTAINED HEREIN, SHALL BE AT YOUR SOLE RISK; (ii) THE SITE IS PROVIDED ON AN &quot;AS IS&quot; AND &quot;AS AVAILABLE&quot; BASIS; (iii) EXCEPT AS EXPRESSLY PROVIDED HEREIN WE DISCLAIM ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, WORKMANLIKE EFFORT, TITLE AND NON-INFRINGEMENT; (iv) WE MAKE NO WARRANTY WITH RESPECT TO THE RESULTS THAT MAY BE OBTAINED FROM THIS SITE, THE PRODUCTS OR SERVICES ADVERTISED OR OFFERED OR MERCHANTS INVOLVED; (v) ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE USE OF THE SITE IS DONE AT YOUR OWN DISCRETION AND RISK; and (vi) YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR FOR ANY LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OF ANY SUCH MATERIAL.&lt;/p&gt;\r\n&lt;p&gt;B. YOU UNDERSTAND AND AGREE THAT UNDER NO CIRCUMSTANCES, INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE, SHALL WE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, PUNITIVE OR CONSEQUENTIAL DAMAGES THAT RESULT FROM THE USE OF, OR THE INABILITY TO USE, ANY OF OUR SITES OR MATERIALS OR FUNCTIONS ON ANY SUCH SITE, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. THE FOREGOING LIMITATIONS SHALL APPLY NOTWITHSTANDING ANY FAILURE OF ESSENTIAL PURPOSE OF ANY LIMITED REMEDY.&lt;/p&gt;\r\n&lt;h2&gt;6. EXCLUSIONS AND LIMITATIONS&lt;/h2&gt;\r\n&lt;p&gt;SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES OR THE LIMITATION OR EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES. ACCORDINGLY, OUR LIABILITY IN SUCH JURISDICTION SHALL BE LIMITED TO THE MAXIMUM EXTENT PERMITTED BY LAW.&lt;/p&gt;\r\n&lt;h2&gt;7. OUR PROPRIETARY RIGHTS&lt;/h2&gt;\r\n&lt;p&gt;This Site and all its Contents are intended solely for personal, non-commercial use. Except as expressly provided, nothing within the Site shall be construed as conferring any license under our or any third party&#39;s intellectual property rights, whether by estoppel, implication, waiver, or otherwise. Without limiting the generality of the foregoing, you acknowledge and agree that all content available through and used to operate the Site and its services is protected by copyright, trademark, patent, or other proprietary rights. You agree not to: (a) modify, alter, or deface any of the trademarks, service marks, trade dress (collectively &quot;Trademarks&quot;) or other intellectual property made available by us in connection with the Site; (b) hold yourself out as in any way sponsored by, affiliated with, or endorsed by us, or any of our affiliates or service providers; (c) use any of the Trademarks or other content accessible through the Site for any purpose other than the purpose for which we have made it available to you; (d) defame or disparage us, our Trademarks, or any aspect of the Site; and (e) adapt, translate, modify, decompile, disassemble, or reverse engineer the Site or any software or programs used in connection with it or its products and services.&lt;/p&gt;\r\n&lt;p&gt;The framing, mirroring, scraping or data mining of the Site or any of its content in any form and by any method is expressly prohibited.&lt;/p&gt;\r\n&lt;h2&gt;8. INDEMNITY&lt;/h2&gt;\r\n&lt;p&gt;By using the Site web sites you agree to indemnify us and affiliated entities (collectively &quot;Indemnities&quot;) and hold them harmless from any and all claims and expenses, including (without limitation) attorney&#39;s fees, arising from your use of the Site web sites, your use of the Products and Services, or your submission of ideas and/or related materials to us or from any person&#39;s use of any ID, membership or password you maintain with any portion of the Site, regardless of whether such use is authorized by you.&lt;/p&gt;\r\n&lt;h2&gt;9. COPYRIGHT AND TRADEMARK NOTICE&lt;/h2&gt;\r\n&lt;p&gt;Except our generated dummy copy, which is free to use for private and commercial use, all other text is copyrighted. generator.lorem-ipsum.info &amp;copy; 2013, all rights reserved&lt;/p&gt;\r\n&lt;h2&gt;10. INTELLECTUAL PROPERTY INFRINGEMENT CLAIMS&lt;/h2&gt;\r\n&lt;p&gt;It is our policy to respond expeditiously to claims of intellectual property infringement. We will promptly process and investigate notices of alleged infringement and will take appropriate actions under the Digital Millennium Copyright Act (&quot;DMCA&quot;) and other applicable intellectual property laws. Notices of claimed infringement should be directed to:&lt;/p&gt;\r\n&lt;p&gt;generator.lorem-ipsum.info&lt;/p&gt;\r\n&lt;p&gt;126 Electricov St.&lt;/p&gt;\r\n&lt;p&gt;Kiev, Kiev 04176&lt;/p&gt;\r\n&lt;p&gt;Ukraine&lt;/p&gt;\r\n&lt;p&gt;contact@lorem-ipsum.info&lt;/p&gt;\r\n&lt;h2&gt;11. PLACE OF PERFORMANCE&lt;/h2&gt;\r\n&lt;p&gt;This Site is controlled, operated and administered by us from our office in Kiev, Ukraine. We make no representation that materials at this site are appropriate or available for use at other locations outside of the Ukraine and access to them from territories where their contents are illegal is prohibited. If you access this Site from a location outside of the Ukraine, you are responsible for compliance with all local laws.&lt;/p&gt;\r\n&lt;h2&gt;12. GENERAL&lt;/h2&gt;\r\n&lt;p&gt;A. If any provision of these Terms and Conditions is held to be invalid or unenforceable, the provision shall be removed (or interpreted, if possible, in a manner as to be enforceable), and the remaining provisions shall be enforced. Headings are for reference purposes only and in no way define, limit, construe or describe the scope or extent of such section. Our failure to act with respect to a breach by you or others does not waive our right to act with respect to subsequent or similar breaches. These Terms and Conditions set forth the entire understanding and agreement between us with respect to the subject matter contained herein and supersede any other agreement, proposals and communications, written or oral, between our representatives and you with respect to the subject matter hereof, including any terms and conditions on any of customer&#39;s documents or purchase orders.&lt;/p&gt;\r\n&lt;p&gt;B. No Joint Venture, No Derogation of Rights. You agree that no joint venture, partnership, employment, or agency relationship exists between you and us as a result of these Terms and Conditions or your use of the Site. Our performance of these Terms and Conditions is subject to existing laws and legal process, and nothing contained herein is in derogation of our right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Site or information provided to or gathered by us with respect to such use.&lt;/p&gt;', NULL, '2020-07-13 02:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `busisness_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emirates_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_commission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_data` text COLLATE utf8mb4_unicode_ci,
  `login_status` varchar(2255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `owner_name`, `email`, `email_verified_at`, `password`, `remember_token`, `busisness_type`, `phone`, `salon_name`, `salon_id`, `city`, `area`, `address`, `emirates_id`, `passport_number`, `member_license`, `salon_commission`, `trade_license`, `latitude`, `longitude`, `signature_data`, `login_status`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Aravind', 'admin@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', NULL, '2', '8883191962', 'Aravind', '123456', NULL, NULL, NULL, '123456', '123456', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-07 06:12:46', '2020-07-07 06:12:46'),
(5, 'Araviind', 'aravin00d.0216@gmail.com', NULL, '', NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:17:27', '2020-07-11 00:17:27'),
(6, 'Araviind', 'aravin.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(7, 'Araviind', 'ara.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(8, 'Araviind', 'aravidnd.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(9, 'Araviind', 'ddd.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(25, 'Aravind', 'aravind.0216@gmail.com', NULL, '$2y$10$l8L7YIeY.GI40VapQaM.2eGvm0nTDFnJDo3m00dcs4J3DwGtdPqoi', NULL, '2', '8883191962', 'Aravind Spa', '963258741', NULL, NULL, NULL, '451', '2544', NULL, NULL, NULL, NULL, NULL, 'data:image/png;base64,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', '0', '0', '2020-07-13 05:19:15', '2020-07-13 05:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_services`
--
ALTER TABLE `new_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_packages`
--
ALTER TABLE `salon_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_package_items`
--
ALTER TABLE `salon_package_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_passwords`
--
ALTER TABLE `salon_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_services`
--
ALTER TABLE `salon_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_times`
--
ALTER TABLE `service_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settlement_periods`
--
ALTER TABLE `settlement_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `new_services`
--
ALTER TABLE `new_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salon_packages`
--
ALTER TABLE `salon_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salon_package_items`
--
ALTER TABLE `salon_package_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salon_passwords`
--
ALTER TABLE `salon_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `salon_services`
--
ALTER TABLE `salon_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_times`
--
ALTER TABLE `service_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settlement_periods`
--
ALTER TABLE `settlement_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
