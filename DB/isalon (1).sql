-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 08:54 AM
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
(1, 'Admin', '+971 000000', 'admin@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', '0', NULL, '2020-07-02 09:13:52', '2020-07-02 09:18:15');

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
(21, '2020-07-13', '2020-08-12', '25', 'Aravind', 'Aravind Spa', 'aravind.0216@gmail.com', '1', '2020-07-13 05:19:15', '2020-07-13 05:21:11'),
(22, '2020-07-14', '2020-08-13', '26', 'Aravind', NULL, 'vendor@gmail.com', '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01');

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
(154, '25', 'Saturday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(155, '26', 'Sunday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(156, '26', 'Monday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(157, '26', 'Tuesday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(158, '26', 'Wednesday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(159, '26', 'Thursday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(160, '26', 'Friday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(161, '26', 'Saturday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01');

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
(1, '&lt;h2&gt;&lt;strong&gt;Terms and Conditions&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Welcome to&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;!&lt;/p&gt;\r\n&lt;p&gt;These terms and conditions outline the rules and regulations for the use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Website, located at&amp;nbsp;&lt;span class=&quot;highlight preview_website_url&quot;&gt;Website.com&lt;/span&gt;.&lt;/p&gt;\r\n&lt;p&gt;By accessing this website we assume you accept these terms and conditions. Do not continue to use&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;if you do not agree to take all of the terms and conditions stated on this page.&lt;/p&gt;\r\n&lt;p&gt;The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &amp;ldquo;Client&amp;rdquo;, &amp;ldquo;You&amp;rdquo; and &amp;ldquo;Your&amp;rdquo; refers to you, the person log on this website and compliant to the Company&#39;s terms and conditions. &amp;ldquo;The Company&amp;rdquo;, &amp;ldquo;Ourselves&amp;rdquo;, &amp;ldquo;We&amp;rdquo;, &amp;ldquo;Our&amp;rdquo; and &amp;ldquo;Us&amp;rdquo;, refers to our Company. &amp;ldquo;Party&amp;rdquo;, &amp;ldquo;Parties&amp;rdquo;, or &amp;ldquo;Us&amp;rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&#39;s needs in respect of provision of the Company&#39;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Cookies&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We employ the use of cookies. By accessing&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;, you agreed to use cookies in agreement with the&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Privacy Policy.&lt;/p&gt;\r\n&lt;p&gt;Most interactive websites use cookies to let us retrieve the user&#39;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;License&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Unless otherwise stated,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;and/or its licensors own the intellectual property rights for all material on&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;. All intellectual property rights are reserved. You may access this from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;for your own personal use subjected to restrictions set in these terms and conditions.&lt;/p&gt;\r\n&lt;p&gt;You must not:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Republish material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Sell, rent or sub-license material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Reproduce, duplicate or copy material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Redistribute content from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;This Agreement shall begin on the date hereof.&lt;/p&gt;\r\n&lt;p&gt;Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.&lt;/p&gt;\r\n&lt;p&gt;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.&lt;/p&gt;\r\n&lt;p&gt;You warrant and represent that:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy&lt;/li&gt;\r\n&lt;li&gt;The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;You hereby grant&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Hyperlinking to our Content&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;The following organizations may link to our Website without prior written approval:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Government agencies;&lt;/li&gt;\r\n&lt;li&gt;Search engines;&lt;/li&gt;\r\n&lt;li&gt;News organizations;&lt;/li&gt;\r\n&lt;li&gt;Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and&lt;/li&gt;\r\n&lt;li&gt;System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;We may consider and approve other link requests from the following types of organizations:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;commonly-known consumer and/or business information sources;&lt;/li&gt;\r\n&lt;li&gt;dot.com community sites;&lt;/li&gt;\r\n&lt;li&gt;associations or other groups representing charities;&lt;/li&gt;\r\n&lt;li&gt;online directory distributors;&lt;/li&gt;\r\n&lt;li&gt;internet portals;&lt;/li&gt;\r\n&lt;li&gt;accounting, law and consulting firms; and&lt;/li&gt;\r\n&lt;li&gt;educational institutions and trade associations.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;; and (d) the link is in the context of general resource information.&lt;/p&gt;\r\n&lt;p&gt;These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.&lt;/p&gt;\r\n&lt;p&gt;Approved organizations may hyperlink to our Website as follows:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;By use of our corporate name; or&lt;/li&gt;\r\n&lt;li&gt;By use of the uniform resource locator being linked to; or&lt;/li&gt;\r\n&lt;li&gt;By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&#39;s site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;No use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;iFrames&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Content Liability&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Reservation of Rights&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&#39;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Removal of links from our website&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.&lt;/p&gt;\r\n&lt;p&gt;We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Disclaimer&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;limit or exclude our or your liability for death or personal injury;&lt;/li&gt;\r\n&lt;li&gt;limit or exclude our or your liability for fraud or fraudulent misrepresentation;&lt;/li&gt;\r\n&lt;li&gt;limit any of our or your liabilities in any way that is not permitted under applicable law; or&lt;/li&gt;\r\n&lt;li&gt;exclude any of our or your liabilities that may not be excluded under applicable law.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.&lt;/p&gt;\r\n&lt;p&gt;As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.&lt;/p&gt;', NULL, '2020-07-14 00:56:58');

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
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `owner_name`, `email`, `email_verified_at`, `password`, `remember_token`, `busisness_type`, `phone`, `salon_name`, `salon_id`, `city`, `area`, `address`, `nationality`, `emirates_id`, `passport_number`, `member_license`, `salon_commission`, `trade_license`, `latitude`, `longitude`, `signature_data`, `login_status`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Aravind', 'admin@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', NULL, '2', '8883191962', 'Aravind', '123456', NULL, NULL, NULL, NULL, '123456', '123456', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-07 06:12:46', '2020-07-07 06:12:46'),
(5, 'Araviind', 'aravin00d.0216@gmail.com', NULL, '', NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:17:27', '2020-07-11 00:17:27'),
(6, 'Araviind', 'aravin.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(7, 'Araviind', 'ara.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(8, 'Araviind', 'aravidnd.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(9, 'Araviind', 'ddd.0216@gmail.com', NULL, NULL, NULL, '2', '7904497927', 'spa', '1234', NULL, NULL, NULL, NULL, '789', '4455', '1', '5', NULL, NULL, NULL, NULL, '0', '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(25, 'Aravind', 'aravind.0216@gmail.com', NULL, '$2y$10$l8L7YIeY.GI40VapQaM.2eGvm0nTDFnJDo3m00dcs4J3DwGtdPqoi', NULL, '2', '8883191962', 'Aravind Spa', '963258741', NULL, NULL, NULL, NULL, '451', '2544', NULL, NULL, NULL, NULL, NULL, 'data:image/png;base64,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', '0', '0', '2020-07-13 05:19:15', '2020-07-13 05:21:11'),
(26, 'Aravind', 'vendor@gmail.com', NULL, NULL, NULL, '1', '8883191962', NULL, NULL, '1', '3', NULL, 'Abu Dhabi', '456321', '7896541123', NULL, NULL, NULL, NULL, NULL, 'data:image/png;base64,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', '0', '0', '2020-07-14 00:58:00', '2020-07-14 00:58:00');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
