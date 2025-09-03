-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 04:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('pending','confirmed','cancelled') NOT NULL DEFAULT 'pending',
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `salon_id`, `employee_id`, `user_id`, `date`, `start_time`, `end_time`, `status`, `note`, `created_at`, `updated_at`) VALUES
(65, 12, 19, 51, '2025-07-04', '11:00:00', '12:00:00', 'pending', NULL, '2025-07-02 16:49:50', '2025-07-02 16:49:50'),
(66, 12, 19, 46, '2025-07-06', '11:00:00', '12:00:00', 'confirmed', NULL, '2025-07-04 16:34:56', '2025-07-04 16:34:59'),
(67, 12, 19, 30, '2025-07-07', '15:00:00', '16:00:00', 'pending', NULL, '2025-07-07 05:23:34', '2025-07-07 05:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_service`
--

CREATE TABLE `appointment_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_service`
--

INSERT INTO `appointment_service` (`id`, `appointment_id`, `service_id`, `created_at`, `updated_at`) VALUES
(42, 65, 109, '2025-07-02 16:49:50', '2025-07-02 16:49:50'),
(43, 66, 128, '2025-07-04 16:34:56', '2025-07-04 16:34:56'),
(44, 67, 109, '2025-07-07 05:23:34', '2025-07-07 05:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `value` decimal(12,2) DEFAULT NULL,
  `status` enum('active','maintenance','retired') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('estomatolog_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:41:{i:0;a:4:{s:1:\"a\";i:229;s:1:\"b\";s:14:\"dashboard.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:8:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;i:5;i:41;i:6;i:42;i:7;i:43;}}i:1;a:4:{s:1:\"a\";i:230;s:1:\"b\";s:17:\"appointments.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;}}i:2;a:4:{s:1:\"a\";i:231;s:1:\"b\";s:19:\"appointments.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;}}i:3;a:4:{s:1:\"a\";i:232;s:1:\"b\";s:10:\"users.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:36;i:1;i:37;i:2;i:38;i:3;i:39;i:4;i:40;}}i:4;a:4:{s:1:\"a\";i:233;s:1:\"b\";s:12:\"users.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:40;}}i:5;a:4:{s:1:\"a\";i:234;s:1:\"b\";s:14:\"employees.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:40;}}i:6;a:4:{s:1:\"a\";i:235;s:1:\"b\";s:16:\"employees.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:7;a:4:{s:1:\"a\";i:236;s:1:\"b\";s:13:\"services.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:8;a:4:{s:1:\"a\";i:237;s:1:\"b\";s:15:\"services.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:9;a:4:{s:1:\"a\";i:238;s:1:\"b\";s:23:\"service-categories.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:10;a:4:{s:1:\"a\";i:239;s:1:\"b\";s:25:\"service-categories.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:11;a:4:{s:1:\"a\";i:240;s:1:\"b\";s:13:\"worktime.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:12;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:15:\"worktime.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:13;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:10:\"pages.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:14;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:12:\"pages.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:15;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:14:\"galleries.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:16;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:16:\"galleries.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:17;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:11:\"design.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:18;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:13:\"design.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:19;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:18:\"patient_files.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:20;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:20:\"patient_files.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:21;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:13:\"expenses.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:22;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:15:\"expenses.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:23;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:14:\"suppliers.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:24;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:16:\"suppliers.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:25;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:10:\"stock.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:26;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:12:\"stock.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:27;a:4:{s:1:\"a\";i:256;s:1:\"b\";s:13:\"invoices.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:41;}}i:28;a:4:{s:1:\"a\";i:257;s:1:\"b\";s:15:\"invoices.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:41;}}i:29;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:11:\"assets.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:30;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:13:\"assets.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:31;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:15:\"warranties.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:32;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:17:\"warranties.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:33;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:17:\"maintenances.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:34;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:19:\"maintenances.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:42;}}i:35;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:14:\"marketing.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:36;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:16:\"marketing.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:43;}}i:37;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:17:\"subscription.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:38;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:15:\"settings.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:36;i:1;i:37;}}i:39;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:17:\"dental_chart.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:38;}}i:40;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:19:\"dental_chart.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:36;i:1;i:37;i:2;i:38;}}}s:5:\"roles\";a:8:{i:0;a:3:{s:1:\"a\";i:36;s:1:\"b\";s:5:\"owner\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:37;s:1:\"b\";s:7:\"manager\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:38;s:1:\"b\";s:7:\"dentist\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:39;s:1:\"b\";s:9:\"assistant\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:40;s:1:\"b\";s:12:\"receptionist\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:41;s:1:\"b\";s:7:\"cashier\";s:1:\"c\";s:3:\"web\";}i:6;a:3:{s:1:\"a\";i:42;s:1:\"b\";s:9:\"inventory\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:43;s:1:\"b\";s:9:\"marketing\";s:1:\"c\";s:3:\"web\";}}}', 1753252205);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `default_color` varchar(7) NOT NULL DEFAULT '#000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL COMMENT 'Npr. beauty, hair, trainer...',
  `icon_192` varchar(255) DEFAULT NULL COMMENT 'Putanja do ikone 192×192 u storage (opcionalno)',
  `icon_512` varchar(255) DEFAULT NULL COMMENT 'Putanja do ikone 512×512 u storage (opcionalno)',
  `theme_color` varchar(255) DEFAULT NULL COMMENT 'Hex boja teme za ovu kategoriju (npr. #FFC0CB)',
  `background_color` varchar(255) DEFAULT NULL COMMENT 'Hex boja pozadine za ovu kategoriju'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `default_color`, `created_at`, `updated_at`, `slug`, `icon_192`, `icon_512`, `theme_color`, `background_color`) VALUES
(12, 'Zubarska ordinacija', NULL, '#000000', NULL, NULL, 'zubarska-ordinacija', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `opened_at` date DEFAULT NULL,
  `doctor_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `user_id`, `salon_id`, `opened_at`, `doctor_note`, `created_at`, `updated_at`) VALUES
(1, 46, 12, '2025-07-07', NULL, '2025-07-07 10:32:45', '2025-07-07 10:32:45'),
(2, 30, 12, '2025-07-07', NULL, '2025-07-07 10:52:42', '2025-07-07 10:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('percent','fixed') NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) NOT NULL DEFAULT 0,
  `valid_from` date DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debts`
--

CREATE TABLE `debts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_charts`
--

CREATE TABLE `dental_charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `opened_at` date DEFAULT NULL,
  `doctor_note` varchar(255) DEFAULT NULL,
  `chronic_diseases` tinyint(1) NOT NULL DEFAULT 0,
  `smoker` tinyint(1) NOT NULL DEFAULT 0,
  `alcohol` tinyint(1) NOT NULL DEFAULT 0,
  `anticoagulant_therapy` tinyint(1) NOT NULL DEFAULT 0,
  `infectious_diseases` tinyint(1) NOT NULL DEFAULT 0,
  `malignant_diseases` tinyint(1) NOT NULL DEFAULT 0,
  `regular_therapy` tinyint(1) NOT NULL DEFAULT 0,
  `cardiovascular_diseases` tinyint(1) NOT NULL DEFAULT 0,
  `other_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dental_charts`
--

INSERT INTO `dental_charts` (`id`, `user_id`, `salon_id`, `opened_at`, `doctor_note`, `chronic_diseases`, `smoker`, `alcohol`, `anticoagulant_therapy`, `infectious_diseases`, `malignant_diseases`, `regular_therapy`, `cardiovascular_diseases`, `other_notes`, `created_at`, `updated_at`) VALUES
(1, 46, 12, NULL, NULL, 1, 0, 1, 1, 0, 0, 0, 0, 'test', '2025-07-14 10:39:49', '2025-07-22 11:24:59'),
(2, 30, 12, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-07-22 08:29:16', '2025-07-22 08:29:16'),
(3, 47, 12, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-07-22 08:32:23', '2025-07-22 08:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_diagnoses`
--

CREATE TABLE `dental_chart_diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `diagnosed_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_documents`
--

CREATE TABLE `dental_chart_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `tooth_id` bigint(20) UNSIGNED DEFAULT NULL,
  `intervention_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dental_chart_documents`
--

INSERT INTO `dental_chart_documents` (`id`, `dental_chart_id`, `tooth_id`, `intervention_id`, `type`, `file`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Izveštaj', '/storage/documents/hUa7wEI9kI4qkgIINdWDR2Ijs3pn3hPdK7AzPSoD.jpg', 'test', 'test', '2025-07-22 11:26:08', '2025-07-22 11:26:08'),
(2, 1, NULL, NULL, 'RTG snimak', '/storage/documents/eGoRDc6fLGIlBmspwSTPYKnD1Nl6V3Y0Nh1RydTi.jpg', 'test', 'etetset', '2025-07-22 11:26:41', '2025-07-22 11:26:41'),
(3, 3, NULL, NULL, 'Fotografija', '/storage/documents/RS8xH4v3A5mQ4aMGLCBR3oalmZfFwj4TZiyZLXUH.png', 'te', 'test', '2025-07-22 11:39:57', '2025-07-22 11:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_histories`
--

CREATE TABLE `dental_chart_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `recorded_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_interventions`
--

CREATE TABLE `dental_chart_interventions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `tooth_id` bigint(20) UNSIGNED NOT NULL,
  `surface` varchar(255) DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `performed_at` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'done',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dental_chart_interventions`
--

INSERT INTO `dental_chart_interventions` (`id`, `dental_chart_id`, `tooth_id`, `surface`, `doctor_id`, `type`, `description`, `performed_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'O', 39, 'test', 'test', '2025-07-22 00:00:00', 'done', '2025-07-22 09:46:21', '2025-07-22 09:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_materials`
--

CREATE TABLE `dental_chart_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `material_type_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(10,3) NOT NULL DEFAULT 1.000,
  `unit` varchar(255) DEFAULT NULL,
  `used_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_therapies`
--

CREATE TABLE `dental_chart_therapies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `therapy_type_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `applied_at` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_chart_tooth_statuses`
--

CREATE TABLE `dental_chart_tooth_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED NOT NULL,
  `tooth_id` bigint(20) UNSIGNED NOT NULL,
  `surface` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dental_chart_tooth_statuses`
--

INSERT INTO `dental_chart_tooth_statuses` (`id`, `dental_chart_id`, `tooth_id`, `surface`, `status`, `color`, `note`, `status_date`, `created_at`, `updated_at`) VALUES
(1, 1, 18, 'M', 'Karijes', NULL, NULL, '2025-07-14', '2025-07-14 17:18:22', '2025-07-14 17:18:22'),
(2, 1, 18, 'IO', 'Karijes', NULL, NULL, '2025-07-14', '2025-07-14 17:18:22', '2025-07-14 17:18:22'),
(3, 1, 17, 'IO', 'Pulpitis', NULL, NULL, '2025-07-14', '2025-07-14 17:31:41', '2025-07-14 17:31:41'),
(4, 1, 16, 'L', 'Plomba', NULL, NULL, '2025-07-22', '2025-07-14 17:31:41', '2025-07-22 08:23:15'),
(5, 1, 16, 'V', 'Pulpitis', NULL, NULL, '2025-07-14', '2025-07-14 17:31:41', '2025-07-14 17:31:41'),
(6, 1, 15, 'L', 'Erozija zuba', NULL, NULL, '2025-07-14', '2025-07-14 17:43:47', '2025-07-14 17:43:47'),
(7, 1, 14, 'IO', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-14 17:52:08', '2025-07-16 16:40:13'),
(8, 1, 13, 'D', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-14 17:52:08', '2025-07-16 16:35:51'),
(9, 1, 12, 'IO', 'Karijes', NULL, NULL, '2025-07-14', '2025-07-14 17:52:08', '2025-07-14 17:52:24'),
(10, 1, 45, 'IO', 'Endodontska infekcija', NULL, NULL, '2025-07-16', '2025-07-16 16:21:41', '2025-07-16 16:21:41'),
(11, 1, 44, 'D', 'Endodontska infekcija', NULL, NULL, '2025-07-16', '2025-07-16 16:21:41', '2025-07-16 16:21:41'),
(12, 1, 13, 'R', 'Protivupalna terapija', NULL, NULL, '2025-07-16', '2025-07-16 16:22:11', '2025-07-16 16:22:11'),
(13, 1, 31, 'M', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:12', '2025-07-16 16:36:12'),
(14, 1, 21, 'M', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:13', '2025-07-16 16:36:13'),
(15, 1, 21, 'D', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:13', '2025-07-16 16:36:13'),
(16, 1, 21, 'IO', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:13', '2025-07-16 16:36:13'),
(17, 1, 22, 'IO', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:13', '2025-07-16 16:36:13'),
(18, 1, 23, 'IO', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 16:36:13', '2025-07-16 16:36:13'),
(19, 1, 45, 'crown', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 17:01:41', '2025-07-16 17:01:41'),
(20, 1, 44, 'M', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 17:01:41', '2025-07-16 17:01:41'),
(21, 1, 44, 'IO', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 17:01:41', '2025-07-16 17:01:41'),
(22, 1, 43, 'M', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 17:01:41', '2025-07-16 17:01:41'),
(23, 1, 42, 'crown', 'Karijes', NULL, NULL, '2025-07-16', '2025-07-16 17:01:41', '2025-07-16 17:01:41'),
(24, 1, 46, 'ALL', 'Implant', NULL, NULL, '2025-07-22', '2025-07-22 06:48:01', '2025-07-22 06:48:01'),
(25, 1, 24, 'ALL', 'Implant', NULL, NULL, '2025-07-22', '2025-07-22 06:48:30', '2025-07-22 06:48:30'),
(26, 1, 15, 'crown', 'Plomba', NULL, NULL, '2025-07-22', '2025-07-22 07:36:12', '2025-07-22 07:36:12'),
(27, 1, 15, 'R', 'Cista', NULL, NULL, '2025-07-22', '2025-07-22 07:36:12', '2025-07-22 07:36:12'),
(28, 1, 32, 'ALL', 'Proteza', NULL, NULL, '2025-07-22', '2025-07-22 07:38:22', '2025-07-22 08:20:17'),
(29, 1, 33, 'ALL', 'Proteza', NULL, NULL, '2025-07-22', '2025-07-22 07:38:43', '2025-07-22 08:20:17'),
(30, 1, 31, 'ALL', 'Proteza', NULL, NULL, '2025-07-22', '2025-07-22 08:05:23', '2025-07-22 08:20:17'),
(31, 1, 34, 'ALL', 'Herpes simplex', NULL, NULL, '2025-07-22', '2025-07-22 08:05:23', '2025-07-22 08:05:23'),
(32, 1, 35, 'R', 'Cista', NULL, NULL, '2025-07-22', '2025-07-22 08:05:23', '2025-07-22 08:05:23'),
(33, 1, 31, 'D', 'Fraktura', NULL, NULL, '2025-07-22', '2025-07-22 08:06:03', '2025-07-22 08:06:03'),
(34, 1, 34, 'D', 'Fraktura', NULL, NULL, '2025-07-22', '2025-07-22 08:06:03', '2025-07-22 08:06:03'),
(35, 1, 15, 'ALL', 'Vađenje', NULL, NULL, '2025-07-22', '2025-07-22 08:08:31', '2025-07-22 08:08:31'),
(36, 1, 35, 'IO', 'Zamena ispuna', NULL, NULL, '2025-07-22', '2025-07-22 08:13:54', '2025-07-22 08:13:54'),
(37, 1, 35, 'M', 'Gingivitis', NULL, NULL, '2025-07-22', '2025-07-22 08:13:59', '2025-07-22 08:13:59'),
(38, 1, 35, 'D', 'Periimplantitis', NULL, NULL, '2025-07-22', '2025-07-22 08:14:07', '2025-07-22 08:14:07'),
(39, 1, 43, 'ALL', 'Proteza', NULL, NULL, '2025-07-22', '2025-07-22 08:20:17', '2025-07-22 08:20:17'),
(40, 1, 42, 'ALL', 'Proteza', NULL, NULL, '2025-07-22', '2025-07-22 08:20:17', '2025-07-22 08:20:17'),
(41, 1, 41, 'ALL', 'Krunica', NULL, NULL, '2025-07-22', '2025-07-22 08:20:17', '2025-07-22 08:21:30'),
(42, 2, 46, 'L', 'Fraktura', NULL, NULL, '2025-07-22', '2025-07-22 08:30:44', '2025-07-22 08:30:44'),
(43, 2, 45, 'IO', 'Plomba', NULL, NULL, '2025-07-22', '2025-07-22 08:31:21', '2025-07-22 08:31:21'),
(44, 2, 44, 'IO', 'Plomba', NULL, NULL, '2025-07-22', '2025-07-22 08:31:21', '2025-07-22 08:31:21'),
(45, 2, 42, 'IO', 'Plomba', NULL, NULL, '2025-07-22', '2025-07-22 08:31:21', '2025-07-22 08:31:21'),
(46, 2, 43, 'ALL', 'Vađenje', NULL, NULL, '2025-07-22', '2025-07-22 08:31:21', '2025-07-22 08:31:21'),
(47, 2, 41, 'ALL', 'Implant', NULL, NULL, '2025-07-22', '2025-07-22 08:31:36', '2025-07-22 08:31:36'),
(48, 3, 44, 'L', 'Gingivitis', NULL, NULL, '2025-07-22', '2025-07-22 08:44:57', '2025-07-22 08:44:57'),
(49, 1, 37, 'IO', 'Karijes', NULL, NULL, '2025-07-22', '2025-07-22 16:33:25', '2025-07-22 16:33:25'),
(50, 1, 37, 'L', 'Karijes', NULL, NULL, '2025-07-22', '2025-07-22 16:33:25', '2025-07-22 16:33:25'),
(51, 1, 37, 'M', 'Karijes', NULL, NULL, '2025-07-22', '2025-07-22 16:33:25', '2025-07-22 16:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_types`
--

CREATE TABLE `diagnosis_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnosis_types`
--

INSERT INTO `diagnosis_types` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Karijes', 'K02', 'Oštećenje zubne strukture izazvano bakterijama', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(2, 'Pulpitis', 'K04.0', 'Upala zubne pulpe', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(3, 'Periapikalni apsces', 'K04.6', 'Gnojna infekcija u vrhu korena zuba', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(4, 'Gingivitis', 'K05.0', 'Upala desni', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(5, 'Paradontopatija', 'K05.3', 'Oboljenje potpornog aparata zuba', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(6, 'Trauma zuba', 'S03.2', 'Povreda zuba usled udara', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(7, 'Abradiran zub', 'K03.0', 'Habanje gleđi', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(8, 'Erozija zuba', 'K03.2', 'Hemijsko oštećenje gleđi', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(9, 'Fraktura zuba', 'S02.5', 'Prelom zubne krune ili korena', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(10, 'Endodontska infekcija', 'K04.7', 'Infekcija kanala korena', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(11, 'Parodontni džep', 'K05.2', 'Patološki produbljen sulkus', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(12, 'Periimplantitis', 'K08.8', 'Upala oko zubnog implanta', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(13, 'Halitoza', 'R19.6', 'Neprijatan zadah iz usta', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(14, 'Leukoplakija', 'K13.2', 'Bele promene sluzokože', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(15, 'Oralna kandidijaza', 'B37.0', 'Gljivična infekcija usta', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(16, 'Herpes simplex', 'B00.9', 'Virusna infekcija usne sluzokože', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(17, 'Afte', 'K12.0', 'Afte na sluzokoži usne duplje', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(18, 'Neuralgija trigeminusa', 'G50.0', 'Bol duž trigeminalnog živca', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(19, 'Upala sinusa', 'J01.9', 'Sinuzitis', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(20, 'Malokluzija', 'K07.0', 'Nepravilan zagriz', '2025-07-14 09:18:58', '2025-07-14 09:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `percent` decimal(5,2) DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `salon_id`, `user_id`, `name`, `email`, `phone`, `photo`, `created_at`, `updated_at`) VALUES
(19, 12, 47, 'Marko Rakic', 'markorakic89@yahoo.com', '54645646', 'bookapp-dental-care-plus-marko-rakic-1751481947.jpg', '2025-07-02 16:45:51', '2025-07-02 16:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `employee_service`
--

CREATE TABLE `employee_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_service`
--

INSERT INTO `employee_service` (`id`, `employee_id`, `service_id`, `created_at`, `updated_at`) VALUES
(47, 19, 109, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(48, 19, 111, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(49, 19, 113, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(50, 19, 115, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(51, 19, 117, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(52, 19, 119, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(53, 19, 121, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(54, 19, 123, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(55, 19, 125, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(56, 19, 127, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(57, 19, 128, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(58, 19, 126, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(59, 19, 124, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(60, 19, 122, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(61, 19, 120, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(62, 19, 118, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(63, 19, 116, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(64, 19, 114, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(65, 19, 112, '2025-07-02 16:45:51', '2025-07-02 16:45:51'),
(66, 19, 110, '2025-07-02 16:45:51', '2025-07-02 16:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `estimate_date` date NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `tooth_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'jbjhgjhgj', '2025-06-14 18:25:25', '2025-06-14 18:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dental_chart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'issued',
  `estimate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `tooth_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_logs`
--

CREATE TABLE `maintenance_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `action` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_types`
--

CREATE TABLE `material_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `unit`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Amalgam', 'g', 'Tradicionalni materijal za plombe', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(2, 'Kompozit', 'g', 'Svetlosno očvršćavajući materijal za bele plombe', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(3, 'Staklo-jonomer', 'g', 'Ionomerni cement za osnovne plombe', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(4, 'Keramika', 'g', 'Materijal za estetske nadoknade', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(5, 'Metal', 'g', 'Upotreba za krunice, mostove', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(6, 'Guta-perka', 'kom', 'Endodontski materijal za punjenje kanala', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(7, 'Lidokain', 'amp', 'Lokalni anestetik', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(8, 'Adrenalin', 'amp', 'Za vazokonstrikciju u lokalnoj anesteziji', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(9, 'Septanest', 'amp', 'Lokalni anestetik sa adrenalinom', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(10, 'Artikain', 'amp', 'Moderni lokalni anestetik', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(11, 'Cink oksid eugenol', 'g', 'Privremeni ispun i cement', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(12, 'Kalcium hidroksid', 'g', 'Preparat za zaštitu pulpe', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(13, 'Chlorhexidin', 'ml', 'Antiseptik za ispiranje kanala', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(14, 'Natrijum hipohlorit', 'ml', 'Antiseptik za endodonciju', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(15, 'Alginat', 'g', 'Materijal za uzimanje otisaka', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(16, 'Silikat', 'g', 'Materijal za uzimanje preciznih otisaka', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(17, 'Polikarboksilat cement', 'g', 'Za fiksaciju nadoknada', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(18, 'Stainless steel wire', 'cm', 'Žica za ortodonciju', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(19, 'Elastične gumice', 'kom', 'Ortodoncija', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(20, 'Fosfatni cement', 'g', 'Klasični cement', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(21, 'Kompozitne lepljive mase', 'g', 'Za fiksaciju aparata i nadoknada', '2025-07-14 09:18:58', '2025-07-14 09:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_05_101945_create_categories_table', 1),
(5, '2025_06_05_101945_create_salons_table', 1),
(6, '2025_06_05_101945_create_services_table', 1),
(7, '2025_06_05_101946_create_employees_table', 1),
(8, '2025_06_05_101947_create_appointments_table', 1),
(9, '2025_06_05_101947_create_email_logs_table', 1),
(10, '2025_06_05_101948_create_appointment_service_table', 1),
(11, '2025_06_05_101948_create_employee_service_table', 1),
(12, '2025_06_05_102427_add_role_to_users_table', 1),
(13, '2025_06_05_102651_add_phone_to_users_table', 1),
(14, '2025_06_05_102713_add_contact_to_salons_table', 1),
(15, '2025_06_05_104350_add_paid_until_to_salons', 1),
(16, '2025_06_05_104541_create_messages_table', 1),
(17, '2025_06_05_104717_add_icon_to_services_table', 1),
(18, '2025_06_05_121432_alter_categories_add_columns', 1),
(19, '2025_06_08_140954_create_pages_table', 1),
(20, '2025_06_08_140954_create_work_times_table', 1),
(21, '2025_06_08_140955_create_galleries_table', 1),
(22, '2025_06_08_140955_create_gallery_images_table', 1),
(23, '2025_06_08_140956_create_coupons_table', 1),
(24, '2025_06_08_140956_create_subscriptions_table', 1),
(25, '2025_06_08_145319_create_permission_tables', 1),
(26, '2025_06_09_162710_create_salon_user_table', 1),
(27, '2025_06_09_162754_add_user_id_to_employees_table', 1),
(28, '2025_06_11_153948_update_salons_table_add_theme_fields', 1),
(29, '2025_06_11_154018_add_note_to_appointments_table', 1),
(30, '2025_06_11_154205_add_salon_to_page_table', 2),
(31, '2025_06_11_193803_create_suppliers_table', 3),
(32, '2025_06_11_193804_create_expenses_table', 3),
(33, '2025_06_11_193805_create_assets_table', 3),
(34, '2025_06_11_193805_create_warranties_table', 3),
(35, '2025_06_11_193806_create_maintenance_logs_table', 3),
(36, '2025_06_11_193807_create_stock_items_table', 3),
(37, '2025_06_11_193808_create_service_stock_item_table', 3),
(38, '2025_06_11_193809_create_invoices_table', 4),
(39, '2025_06_11_193810_create_invoice_items_table', 4),
(40, '2025_06_13_190908_add_theme_to_salons_table', 5),
(41, '2025_06_15_121821_create_packages_table', 6),
(42, '2025_06_15_122132_update_subscriptions_table', 7),
(43, '2025_06_15_123924_add_is_active_to_users_table', 8),
(46, '2025_06_19_190531_create_service_categories_table', 9),
(47, '2025_06_19_190531_create_service_category_service_table', 9),
(48, '2025_06_21_165016_add_salon_id_and_is_active_to_service_categories_table', 10),
(49, '2025_06_21_214141_add_self_bookable_to_services_table', 11),
(50, '2025_06_25_215140_create_reports_table', 12),
(51, '2025_06_25_215143_create_tooth_reports_table', 12),
(52, '2025_06_25_215141_create_tooth_reports_table', 13),
(53, '2025_07_02_191639_add_is_active_to_packages_table', 14),
(54, '2025_07_05_181122_create_patient_files_table', 15),
(55, '2025_07_05_181144_create_service_materials_table', 15),
(56, '2025_07_05_181200_add_fields_to_users_table', 15),
(57, '2025_07_05_181224_add_patient_file_id_to_tooth_reports_table', 15),
(58, '2025_07_06_190358_create_subscription_payments_table', 16),
(59, '2025_07_06_193603_add_price_to_subscriptions_table', 17),
(60, '2025_07_07_071421_add_code_to_packages_table', 18),
(61, '2025_07_07_115021_create_teeth_table', 18),
(62, '2025_07_07_115555_create_charts_table', 18),
(63, '2025_07_07_115602_create_tooth_statuses_table', 18),
(64, '2025_07_07_115607_create_interventions_table', 18),
(66, '2025_07_07_115826_create_documents_table', 18),
(67, '2025_07_14_101832_create_dental_charts_table', 19),
(68, '2025_07_14_101832_create_teeth_table', 20),
(69, '2025_07_14_090000_create_therapy_types_table', 21),
(70, '2025_07_14_090010_create_material_types_table', 21),
(71, '2025_07_14_090020_create_diagnosis_types_table', 21),
(72, '2025_07_14_101833_create_dental_chart_diagnoses_table', 22),
(73, '2025_07_14_101833_create_dental_chart_interventions_table', 22),
(74, '2025_07_14_101833_create_dental_chart_tooth_statuses_table', 22),
(75, '2025_07_14_101834_create_dental_chart_documents_table', 22),
(76, '2025_07_14_101834_create_dental_chart_therapies_table', 22),
(77, '2025_07_14_101835_create_dental_chart_histories_table', 22),
(78, '2025_07_14_101835_create_dental_chart_materials_table', 22),
(79, '2025_07_14_104740_create_estimates_table', 23),
(80, '2025_07_14_104741_create_estimate_items_table', 23),
(81, '2025_07_14_104741_create_invoices_table', 23),
(82, '2025_07_14_104742_create_invoice_items_table', 23),
(83, '2025_07_14_104743_create_debts_table', 23),
(84, '2025_07_14_104743_create_payments_table', 23),
(85, '2025_07_14_104851_create_discounts_table', 23),
(86, '2025_07_14_104852_create_stock_items_table', 23),
(87, '2025_07_14_104856_create_suppliers_table', 24),
(88, '2025_07_14_104857_create_stock_entries_table', 25),
(89, '2025_07_14_104858_create_service_materials_table', 25),
(90, '2025_07_14_104858_create_stock_entry_items_table', 25),
(91, '2025_07_14_104904_create_assets_table', 26),
(92, '2025_07_14_104905_create_maintenance_logs_table', 26),
(93, '2025_07_14_104905_create_warranties_table', 26),
(94, '2025_07_22_000000_add_anamnesis_fields_to_dental_charts_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(36, 'App\\Models\\User', 39);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `duration_months` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `code`, `price`, `duration_months`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Basic', 'basic', 4000.00, 1, '\r\n                    <ul>\r\n                        <li><b>Online zakazivanje termina</b></li>\r\n                        <li><b>Osnovni prikaz sajta za ordinaciju</b></li>\r\n                        <li><b>Karton pacijenta (istorija rada po zubima)</b></li>\r\n                        <li><b>Osnovne statistike</b></li>\r\n                        <li><b>Notifikacije o terminima na email</b></li>\r\n                    </ul>\r\n                ', 1, '2025-07-06 16:33:31', '2025-07-06 16:33:31'),
(3, 'Standard', 'standard', 7000.00, 1, '\r\n                    <ul>\r\n                        <li><b>Sve iz Basic paketa</b></li>\r\n                        <li><b>Dodavanje fajlova uz karton (snimci, slike, analize)</b></li>\r\n                        <li><b>Napredni karton (alergije, terapije, napomene)</b></li>\r\n                        <li><b>Galerija slika, blog/stranice ordinacije</b></li>\r\n                        <li><b>Personalizovan dizajn sajta</b></li>\r\n                        <li><b>Detaljne statistike o pacijentima i uslugama</b></li>\r\n                    </ul>\r\n                ', 1, '2025-07-06 16:33:31', '2025-07-06 16:33:31'),
(4, 'Premium', 'premium', 10000.00, 1, '\r\n                    <ul>\r\n                        <li><b>Sve iz Standard paketa</b></li>\r\n                        <li><b>Upravljanje zalihama i materijalima</b></li>\r\n                        <li><b>Povezivanje usluga sa troškovima materijala</b></li>\r\n                        <li><b>Automatska upozorenja za nedostatak zaliha</b></li>\r\n                        <li><b>Fakturisanaje i evidencija troškova</b></li>\r\n                        <li><b>Napredne analitike za biznis</b></li>\r\n                        <li><b>Marketing alati (newsletter, kuponi...)</b></li>\r\n                    </ul>\r\n                ', 1, '2025-07-06 16:33:31', '2025-07-06 16:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_files`
--

CREATE TABLE `patient_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `tooth_number` varchar(255) DEFAULT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `paid_at` date DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'confirmed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(229, 'dashboard.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(230, 'appointments.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(231, 'appointments.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(232, 'users.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(233, 'users.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(234, 'employees.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(235, 'employees.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(236, 'services.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(237, 'services.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(238, 'service-categories.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(239, 'service-categories.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(240, 'worktime.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(241, 'worktime.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(242, 'pages.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(243, 'pages.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(244, 'galleries.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(245, 'galleries.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(246, 'design.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(247, 'design.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(248, 'patient_files.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(249, 'patient_files.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(250, 'expenses.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(251, 'expenses.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(252, 'suppliers.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(253, 'suppliers.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(254, 'stock.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(255, 'stock.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(256, 'invoices.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(257, 'invoices.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(258, 'assets.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(259, 'assets.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(260, 'warranties.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(261, 'warranties.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(262, 'maintenances.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(263, 'maintenances.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(264, 'marketing.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(265, 'marketing.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(266, 'subscription.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(267, 'settings.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(268, 'dental_chart.view', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(269, 'dental_chart.manage', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(36, 'owner', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(37, 'manager', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(38, 'dentist', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(39, 'assistant', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(40, 'receptionist', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(41, 'cashier', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(42, 'inventory', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40'),
(43, 'marketing', 'web', '2025-07-06 16:08:40', '2025-07-06 16:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(229, 36),
(229, 37),
(229, 38),
(229, 39),
(229, 40),
(229, 41),
(229, 42),
(229, 43),
(230, 36),
(230, 37),
(230, 38),
(230, 39),
(230, 40),
(231, 36),
(231, 37),
(231, 38),
(231, 39),
(231, 40),
(232, 36),
(232, 37),
(232, 38),
(232, 39),
(232, 40),
(233, 36),
(233, 37),
(233, 40),
(234, 36),
(234, 37),
(234, 40),
(235, 36),
(235, 37),
(236, 36),
(236, 37),
(237, 36),
(237, 37),
(238, 36),
(238, 37),
(239, 36),
(239, 37),
(240, 36),
(240, 37),
(241, 36),
(241, 37),
(242, 36),
(242, 37),
(242, 43),
(243, 36),
(243, 37),
(243, 43),
(244, 36),
(244, 37),
(244, 43),
(245, 36),
(245, 37),
(245, 43),
(246, 36),
(246, 37),
(247, 36),
(247, 37),
(248, 36),
(248, 37),
(249, 36),
(249, 37),
(250, 36),
(250, 37),
(250, 42),
(251, 36),
(251, 37),
(251, 42),
(252, 36),
(252, 37),
(252, 42),
(253, 36),
(253, 37),
(253, 42),
(254, 36),
(254, 37),
(254, 42),
(255, 36),
(255, 37),
(255, 42),
(256, 36),
(256, 37),
(256, 41),
(257, 36),
(257, 37),
(257, 41),
(258, 36),
(258, 37),
(258, 42),
(259, 36),
(259, 37),
(259, 42),
(260, 36),
(260, 37),
(260, 42),
(261, 36),
(261, 37),
(261, 42),
(262, 36),
(262, 37),
(262, 42),
(263, 36),
(263, 37),
(263, 42),
(264, 36),
(264, 37),
(264, 43),
(265, 36),
(265, 37),
(265, 43),
(266, 36),
(266, 37),
(267, 36),
(267, 37),
(268, 36),
(268, 37),
(268, 38),
(269, 36),
(269, 37),
(269, 38);

-- --------------------------------------------------------

--
-- Table structure for table `salons`
--

CREATE TABLE `salons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT 'light',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `primary_color` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  `secondary_color` varchar(7) NOT NULL DEFAULT '#000000',
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `paid_until` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `cover_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salons`
--

INSERT INTO `salons` (`id`, `user_id`, `category_id`, `slug`, `theme`, `name`, `email`, `phone`, `logo`, `primary_color`, `secondary_color`, `description`, `is_active`, `paid_until`, `created_at`, `updated_at`, `dark_mode`, `cover_image`) VALUES
(12, 39, 12, 'dental-care-plus', 'light', 'Dental Care Plus', NULL, NULL, NULL, '#FFFFFF', '#000000', NULL, 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salon_user`
--

CREATE TABLE `salon_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_user`
--

INSERT INTO `salon_user` (`id`, `salon_id`, `user_id`, `created_at`, `updated_at`) VALUES
(72, 12, 39, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(87, 12, 47, '2025-07-02 16:45:47', '2025-07-02 16:45:47'),
(88, 12, 51, '2025-07-02 16:49:11', '2025-07-02 16:49:11'),
(89, 12, 30, '2025-07-02 17:03:56', '2025-07-02 17:03:56'),
(90, 12, 46, '2025-07-04 16:31:35', '2025-07-04 16:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `duration` int(11) NOT NULL,
  `self_bookable` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `salon_id`, `name`, `slug`, `is_active`, `duration`, `self_bookable`, `price`, `description`, `icon`, `capacity`, `created_at`, `updated_at`) VALUES
(109, 12, 'Kompletan stomatološki pregled', 'kompletan-stomatoloski-pregled', 1, 60, 1, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(110, 12, 'Skidanje kamenca + poliranje', 'skidanje-kamenca-poliranje', 1, 60, 1, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(111, 12, 'Fluoridacija zuba', 'fluoridacija-zuba', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:43:55'),
(112, 12, 'Saveti za oralnu higijenu', 'saveti-za-oralnu-higijenu', 1, 60, 1, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(113, 12, 'Lečenje karijesa', 'lecenje-karijesa', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:09'),
(114, 12, 'Kompozitne plombe', 'kompozitne-plombe', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:43:58'),
(115, 12, 'Staklokeramičke plombe', 'staklokeramicke-plombe', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:43:47'),
(116, 12, 'Zamena starih plombi', 'zamena-starih-plombi', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:30'),
(117, 12, 'Root canal therapy', 'root-canal-therapy', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:19'),
(118, 12, 'Revizija endodoncije', 'revizija-endodoncije', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:17'),
(119, 12, 'Ugradnja gutaperka', 'ugradnja-gutaperka', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:31'),
(120, 12, 'Metal-keramičke krunice', 'metal-keramicke-krunice', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:11'),
(121, 12, 'Cirkonijum krunice', 'cirkonijum-krunice', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:43:52'),
(122, 12, 'Mostovi (fixed bridge)', 'mostovi-fixed-bridge', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:12'),
(123, 12, 'Totalne proteze', 'totalne-proteze', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:32'),
(124, 12, 'Parcijalne proteze', 'parcijalne-proteze', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:14'),
(125, 12, 'Lasersko izbeljivanje zuba', 'lasersko-izbeljivanje-zuba', 1, 60, 1, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(126, 12, 'Kućno izbeljivanje', 'kucno-izbeljivanje', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:02'),
(127, 12, 'Laminati (veneers)', 'laminati-veneers', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:44:05'),
(128, 12, 'Estetske kompozitne korekcije', 'estetske-kompozitne-korekcije', 1, 60, 0, 0.00, NULL, NULL, 1, '2025-06-21 19:21:50', '2025-07-02 16:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `salon_id`, `parent_id`, `name`, `slug`, `is_active`, `image`, `created_at`, `updated_at`) VALUES
(19, 12, NULL, 'Preventivna stomatologija', 'preventivna-stomatologija', 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(20, 12, NULL, 'Konzervativna stomatologija', 'konzervativna-stomatologija', 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(21, 12, NULL, 'Endodoncija', 'endodoncija', 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(22, 12, NULL, 'Protetska stomatologija', 'protetska-stomatologija', 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(23, 12, NULL, 'Estetska stomatologija', 'estetska-stomatologija', 1, NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `service_category_service`
--

CREATE TABLE `service_category_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_category_service`
--

INSERT INTO `service_category_service` (`id`, `service_id`, `service_category_id`, `created_at`, `updated_at`) VALUES
(85, 109, 19, NULL, NULL),
(86, 110, 19, NULL, NULL),
(87, 111, 19, NULL, NULL),
(88, 112, 19, NULL, NULL),
(89, 113, 20, NULL, NULL),
(90, 114, 20, NULL, NULL),
(91, 115, 20, NULL, NULL),
(92, 116, 20, NULL, NULL),
(93, 117, 21, NULL, NULL),
(94, 118, 21, NULL, NULL),
(95, 119, 21, NULL, NULL),
(96, 120, 22, NULL, NULL),
(97, 121, 22, NULL, NULL),
(98, 122, 22, NULL, NULL),
(99, 123, 22, NULL, NULL),
(100, 124, 22, NULL, NULL),
(101, 125, 23, NULL, NULL),
(102, 126, 23, NULL, NULL),
(103, 127, 23, NULL, NULL),
(104, 128, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_materials`
--

CREATE TABLE `service_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `stock_item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(10,3) NOT NULL DEFAULT 1.000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gcuPjTh8Ckd7pmpKjE6o5cSjYSBgKcklCm2zqCGO', 39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEhaa0xOSzBDT3hNZXJpMmdWV2gzRmFOWDFvODdaV0hwNTlheTczYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9kZW50YWwtY2FyZS1wbHVzLm15YXBwLnRlc3Qvb3duZXIvdXNlcnMvNDYvY2hhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozOTt9', 1753191674),
('z06CnaBBk37jlfbOEzqnwjMzmMIRbh8aBMl4hRkl', 39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2NjblQzRmx6dlRLRXU3Y3pENkVPbmFoVnJLblNUTGlOZWZvTXVqTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9kZW50YWwtY2FyZS1wbHVzLm15YXBwLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozOTt9', 1753209270);

-- --------------------------------------------------------

--
-- Table structure for table `stock_entries`
--

CREATE TABLE `stock_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entry_date` date NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'in',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_entry_items`
--

CREATE TABLE `stock_entry_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_entry_id` bigint(20) UNSIGNED NOT NULL,
  `stock_item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(12,2) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL DEFAULT 'kom',
  `quantity` int(11) NOT NULL DEFAULT 0,
  `min_quantity` int(11) NOT NULL DEFAULT 0,
  `unit_price` decimal(12,2) DEFAULT NULL,
  `last_restocked_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `starts_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ends_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','active','expired') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `salon_id`, `package_id`, `price`, `user_id`, `starts_at`, `ends_at`, `status`, `created_at`, `updated_at`) VALUES
(13, 12, 3, 10000.00, 39, '2025-07-07 07:55:13', '2025-08-06 22:00:00', 'active', '2025-07-07 04:30:30', '2025-07-07 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payments`
--

CREATE TABLE `subscription_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid_at` date DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `status` enum('pending','confirmed','rejected') NOT NULL DEFAULT 'pending',
  `confirmed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_payments`
--

INSERT INTO `subscription_payments` (`id`, `subscription_id`, `amount`, `paid_at`, `reference_number`, `status`, `confirmed_by`, `note`, `created_at`, `updated_at`) VALUES
(2, 13, 10000.00, '2025-07-07', '23', 'confirmed', NULL, NULL, '2025-07-07 04:30:47', '2025-07-07 04:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teeth`
--

CREATE TABLE `teeth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teeth`
--

INSERT INTO `teeth` (`id`, `code`, `type`, `position`, `name`, `created_at`, `updated_at`) VALUES
(1, '11', 'stalni', 'gore-desno', 'Centralni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(2, '12', 'stalni', 'gore-desno', 'Bočni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(3, '13', 'stalni', 'gore-desno', 'Očnjak', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(4, '14', 'stalni', 'gore-desno', 'Prvi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(5, '15', 'stalni', 'gore-desno', 'Drugi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(6, '16', 'stalni', 'gore-desno', 'Prvi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(7, '17', 'stalni', 'gore-desno', 'Drugi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(8, '18', 'stalni', 'gore-desno', 'Treći molar (umnjak)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(9, '21', 'stalni', 'gore-levo', 'Centralni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(10, '22', 'stalni', 'gore-levo', 'Bočni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(11, '23', 'stalni', 'gore-levo', 'Očnjak', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(12, '24', 'stalni', 'gore-levo', 'Prvi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(13, '25', 'stalni', 'gore-levo', 'Drugi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(14, '26', 'stalni', 'gore-levo', 'Prvi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(15, '27', 'stalni', 'gore-levo', 'Drugi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(16, '28', 'stalni', 'gore-levo', 'Treći molar (umnjak)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(17, '31', 'stalni', 'dole-levo', 'Centralni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(18, '32', 'stalni', 'dole-levo', 'Bočni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(19, '33', 'stalni', 'dole-levo', 'Očnjak', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(20, '34', 'stalni', 'dole-levo', 'Prvi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(21, '35', 'stalni', 'dole-levo', 'Drugi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(22, '36', 'stalni', 'dole-levo', 'Prvi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(23, '37', 'stalni', 'dole-levo', 'Drugi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(24, '38', 'stalni', 'dole-levo', 'Treći molar (umnjak)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(25, '41', 'stalni', 'dole-desno', 'Centralni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(26, '42', 'stalni', 'dole-desno', 'Bočni sekutić', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(27, '43', 'stalni', 'dole-desno', 'Očnjak', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(28, '44', 'stalni', 'dole-desno', 'Prvi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(29, '45', 'stalni', 'dole-desno', 'Drugi premolar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(30, '46', 'stalni', 'dole-desno', 'Prvi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(31, '47', 'stalni', 'dole-desno', 'Drugi molar', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(32, '48', 'stalni', 'dole-desno', 'Treći molar (umnjak)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(33, '51', 'mlečni', 'gore-desno', 'Centralni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(34, '52', 'mlečni', 'gore-desno', 'Bočni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(35, '53', 'mlečni', 'gore-desno', 'Očnjak (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(36, '54', 'mlečni', 'gore-desno', 'Prvi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(37, '55', 'mlečni', 'gore-desno', 'Drugi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(38, '61', 'mlečni', 'gore-levo', 'Centralni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(39, '62', 'mlečni', 'gore-levo', 'Bočni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(40, '63', 'mlečni', 'gore-levo', 'Očnjak (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(41, '64', 'mlečni', 'gore-levo', 'Prvi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(42, '65', 'mlečni', 'gore-levo', 'Drugi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(43, '71', 'mlečni', 'dole-levo', 'Centralni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(44, '72', 'mlečni', 'dole-levo', 'Bočni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(45, '73', 'mlečni', 'dole-levo', 'Očnjak (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(46, '74', 'mlečni', 'dole-levo', 'Prvi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(47, '75', 'mlečni', 'dole-levo', 'Drugi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(48, '81', 'mlečni', 'dole-desno', 'Centralni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(49, '82', 'mlečni', 'dole-desno', 'Bočni sekutić (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(50, '83', 'mlečni', 'dole-desno', 'Očnjak (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(51, '84', 'mlečni', 'dole-desno', 'Prvi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(52, '85', 'mlečni', 'dole-desno', 'Drugi molar (mlečni)', '2025-07-14 09:18:58', '2025-07-14 09:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `therapy_types`
--

CREATE TABLE `therapy_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `therapy_types`
--

INSERT INTO `therapy_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lokalna anestezija', 'Upotreba lokalnog anestetika radi smanjenja bola', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(2, 'Antibiotska terapija', 'Primena antibiotika kod infekcija', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(3, 'Analgezija', 'Terapija protiv bolova', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(4, 'Endodontska terapija', 'Lečenje kanala korena zuba', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(5, 'Parodontološka terapija', 'Lečenje bolesti desni', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(6, 'Antimikrobna terapija', 'Terapija protiv mikroorganizama', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(7, 'Protivupalna terapija', 'Terapija kod upalnih procesa', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(8, 'Dezinfekcija kanala', 'Dezinfekcija pri endodontskoj terapiji', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(9, 'Fluoridacija', 'Terapija fluorisanim preparatima', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(10, 'Hirurška terapija', 'Postoperativna terapija posle vađenja zuba ili intervencija', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(11, 'Kortikosteroidna terapija', 'Kod teških upalnih procesa', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(12, 'Imunološka terapija', 'Kod imunoloških poremećaja', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(13, 'Alergološka terapija', 'Terapija alergijskih reakcija', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(14, 'Sedacija', 'Upotreba sedativa kod anksioznih pacijenata', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(15, 'Antifungalna terapija', 'Terapija gljivičnih infekcija', '2025-07-14 09:18:58', '2025-07-14 09:18:58'),
(16, 'Antiviralna terapija', 'Kod virusnih infekcija u ustima', '2025-07-14 09:18:58', '2025-07-14 09:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `medical_notes` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` enum('superadmin','owner','worker','client') NOT NULL DEFAULT 'client',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `date_of_birth`, `allergies`, `medical_notes`, `phone`, `email_verified_at`, `password`, `is_active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(30, 'Marko Rakic', 'markorakic1989@yahoo.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$/s.nmr8z3.JvD5SqtiNNXOJMU1l/aLwSD0QdUe.byodnQdZakJqVu', 1, 'superadmin', NULL, '2025-06-15 09:53:07', '2025-06-15 09:53:07'),
(35, 'Ana Petrov', 'ana.aria@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$MNgNDsuSux41fmb.6kZOS.6UNk9CtWFTBRDQb8T8Vt273E3w5HYLC', 1, 'owner', NULL, '2025-06-21 19:21:49', '2025-06-21 19:21:49'),
(36, 'Marko Marković', 'marko.studio@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$xhaZNmjgBgnuIjKTFRYMz.3eMaZuyH/M56aZrSWN464zFAIEHfr9e', 1, 'owner', NULL, '2025-06-21 19:21:49', '2025-06-21 19:21:49'),
(37, 'Ivana Jović', 'ivana.relax@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$3O1yhHb3AlGOWbYHnZUp4OQiRMvxm/245dHZtcKeTIpQTSgswSQzy', 1, 'owner', NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(38, 'Jelena Kovač', 'jelena.nokti@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$lLLHfSas/Glgqo5.oKXjNOVrRTPn3kT8t.CQr2lP5rXQiciljNtPu', 1, 'owner', NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(39, 'Dragan Stomatolog', 'dragan.dental@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$FDpMkYW9ixzXr/FtM2H6IOByNJ7ostuy6o.vlyxD0n9ujePQvY.Na', 1, 'owner', NULL, '2025-06-21 19:21:50', '2025-06-21 19:21:50'),
(40, 'Dr. Marija Vidović', 'marija.vidovic@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$cqSGx/igJp1n6nwYO0VbEuePMnWJQymUrFP5BULumEVNMRCan.B8O', 1, 'owner', NULL, '2025-06-21 19:21:51', '2025-06-21 19:21:51'),
(41, 'Sandra Psiholog', 'sandra.psiho@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$KEO6dMJc5qLWgt0LMW5BmOM5v/lrkaUrKT/Ki/VNJOM/xEdpJiae6', 1, 'owner', NULL, '2025-06-21 19:21:51', '2025-06-21 19:21:51'),
(42, 'Milan Petkov', 'milan.pets@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$Vo.tgc0wn4tvpRTgHVsRBuwRTQUg11RldcP.4/riE8nHHJyzTky2m', 1, 'owner', NULL, '2025-06-21 19:21:51', '2025-06-21 19:21:51'),
(43, 'Klara Šminka', 'klara.makeup@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$cN9GX.6Gd/Ix9XlPAprnp.aUHpr.Rq5475fQTq/zL2h84xuv3MyrC', 1, 'owner', NULL, '2025-06-21 19:21:52', '2025-06-21 19:21:52'),
(44, 'Nenad Perica', 'nenad.autoperionica@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$SPYuU77VrQ434jAsAgmO/eetwd6viRQ6oSz0UYZl8ZPk9Zk4DyaRy', 1, 'owner', NULL, '2025-06-21 19:21:52', '2025-06-21 19:21:52'),
(45, 'Biljana Fizio', 'biljana.fizio@example.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$am.R3oN4T2OKGw85c1PvCulBBvNDMjVsX5vxcMBsQDDMwnvKJtqAy', 1, 'owner', NULL, '2025-06-21 19:21:53', '2025-06-21 19:21:53'),
(46, 'Marko Rakic', 'korisnik1@example.com', '1989-06-07', 'Nema', 'Nema', '0603919788', NULL, '$2y$12$qTY7zlhU8LuIH0ww/DQqDu4.FZOa.jyvRUjwnFq3sCET8NYA5z9S6', 1, 'client', NULL, '2025-06-21 20:12:21', '2025-07-14 10:17:45'),
(47, 'Marko Rakic', 'markorakic89@yahoo.com', NULL, NULL, NULL, NULL, NULL, '$2y$12$2JoQ9.XkmKVN8Ja8EWPmJeLJm9WuX71cR67cXfGrV8kBnHybjJHDi', 1, 'client', NULL, '2025-06-21 21:13:43', '2025-06-21 21:13:43'),
(51, 'Marko', 'markoteodesk@gmail.com', NULL, NULL, NULL, '0603919788', NULL, '$2y$12$R.nO7sSnGrcxkWQ0ObXpjeHJiTisvnLR2rvxLDACRUKgYNIiB3Ymy', 1, 'client', NULL, '2025-07-02 16:49:06', '2025-07-02 16:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_times`
--

CREATE TABLE `work_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_times`
--

INSERT INTO `work_times` (`id`, `employee_id`, `date`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(95, 19, '2025-07-03', '10:00:00', '18:00:00', '2025-07-02 16:46:15', '2025-07-02 16:46:15'),
(96, 19, '2025-07-04', '10:00:00', '18:00:00', '2025-07-02 16:46:20', '2025-07-02 16:46:46'),
(97, 19, '2025-07-06', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(98, 19, '2025-07-05', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(99, 19, '2025-07-08', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(100, 19, '2025-07-07', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(101, 19, '2025-07-10', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(102, 19, '2025-07-09', '10:00:00', '18:00:00', '2025-07-02 16:46:48', '2025-07-02 16:46:48'),
(103, 19, '2025-07-11', '10:00:00', '18:00:00', '2025-07-02 16:47:12', '2025-07-02 16:47:12'),
(104, 19, '2025-07-12', '10:00:00', '18:00:00', '2025-07-02 16:47:15', '2025-07-02 16:47:15'),
(105, 19, '2025-07-13', '10:00:00', '18:00:00', '2025-07-02 16:47:18', '2025-07-06 16:15:46'),
(106, 19, '2025-07-14', '10:00:00', '18:00:00', '2025-07-06 16:15:47', '2025-07-06 16:15:47'),
(107, 19, '2025-07-15', '10:00:00', '18:00:00', '2025-07-06 16:15:47', '2025-07-06 16:15:47'),
(108, 19, '2025-07-16', '10:00:00', '18:00:00', '2025-07-06 16:15:54', '2025-07-06 16:15:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_salon_id_foreign` (`salon_id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`),
  ADD KEY `appointments_employee_date_index` (`employee_id`,`date`);

--
-- Indexes for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_service_service_id_foreign` (`service_id`),
  ADD KEY `appt_service_appointment_index` (`appointment_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charts_user_id_foreign` (`user_id`),
  ADD KEY `charts_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `debts`
--
ALTER TABLE `debts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `debts_user_id_foreign` (`user_id`),
  ADD KEY `debts_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `dental_charts`
--
ALTER TABLE `dental_charts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_charts_user_id_foreign` (`user_id`),
  ADD KEY `dental_charts_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `dental_chart_diagnoses`
--
ALTER TABLE `dental_chart_diagnoses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_diagnoses_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_diagnoses_diagnosis_type_id_foreign` (`diagnosis_type_id`);

--
-- Indexes for table `dental_chart_documents`
--
ALTER TABLE `dental_chart_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_documents_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_documents_tooth_id_foreign` (`tooth_id`),
  ADD KEY `dental_chart_documents_intervention_id_foreign` (`intervention_id`);

--
-- Indexes for table `dental_chart_histories`
--
ALTER TABLE `dental_chart_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_histories_dental_chart_id_foreign` (`dental_chart_id`);

--
-- Indexes for table `dental_chart_interventions`
--
ALTER TABLE `dental_chart_interventions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_interventions_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_interventions_tooth_id_foreign` (`tooth_id`),
  ADD KEY `dental_chart_interventions_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `dental_chart_materials`
--
ALTER TABLE `dental_chart_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_materials_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_materials_material_type_id_foreign` (`material_type_id`);

--
-- Indexes for table `dental_chart_therapies`
--
ALTER TABLE `dental_chart_therapies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_therapies_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_therapies_therapy_type_id_foreign` (`therapy_type_id`),
  ADD KEY `dental_chart_therapies_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `dental_chart_tooth_statuses`
--
ALTER TABLE `dental_chart_tooth_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dental_chart_tooth_statuses_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `dental_chart_tooth_statuses_tooth_id_foreign` (`tooth_id`);

--
-- Indexes for table `diagnosis_types`
--
ALTER TABLE `diagnosis_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_invoice_id_foreign` (`invoice_id`),
  ADD KEY `discounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_logs_recipient_index` (`recipient`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_salon_id_foreign` (`salon_id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_service_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_user_id_foreign` (`user_id`),
  ADD KEY `estimates_dental_chart_id_foreign` (`dental_chart_id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimate_items_estimate_id_foreign` (`estimate_id`),
  ADD KEY `estimate_items_service_id_foreign` (`service_id`),
  ADD KEY `estimate_items_tooth_id_foreign` (`tooth_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_dental_chart_id_foreign` (`dental_chart_id`),
  ADD KEY `invoices_estimate_id_foreign` (`estimate_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_service_id_foreign` (`service_id`),
  ADD KEY `invoice_items_tooth_id_foreign` (`tooth_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_logs`
--
ALTER TABLE `maintenance_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_logs_asset_id_foreign` (`asset_id`);

--
-- Indexes for table `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_files_user_id_foreign` (`user_id`),
  ADD KEY `patient_files_salon_id_foreign` (`salon_id`),
  ADD KEY `patient_files_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salons`
--
ALTER TABLE `salons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salons_slug_unique` (`slug`),
  ADD KEY `salons_user_id_foreign` (`user_id`),
  ADD KEY `salons_category_id_foreign` (`category_id`);

--
-- Indexes for table `salon_user`
--
ALTER TABLE `salon_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salon_user_salon_id_user_id_unique` (`salon_id`,`user_id`),
  ADD KEY `salon_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_categories_slug_unique` (`slug`),
  ADD KEY `service_categories_parent_id_foreign` (`parent_id`),
  ADD KEY `service_categories_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `service_category_service`
--
ALTER TABLE `service_category_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_category_service_service_id_foreign` (`service_id`),
  ADD KEY `service_category_service_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `service_materials`
--
ALTER TABLE `service_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_materials_service_id_foreign` (`service_id`),
  ADD KEY `service_materials_stock_item_id_foreign` (`stock_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_entries`
--
ALTER TABLE `stock_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_entries_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `stock_entry_items`
--
ALTER TABLE `stock_entry_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_entry_items_stock_entry_id_foreign` (`stock_entry_id`),
  ADD KEY `stock_entry_items_stock_item_id_foreign` (`stock_item_id`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_salon_id_foreign` (`salon_id`),
  ADD KEY `subscriptions_package_id_foreign` (`package_id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_payments_subscription_id_foreign` (`subscription_id`),
  ADD KEY `subscription_payments_confirmed_by_foreign` (`confirmed_by`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_salon_id_foreign` (`salon_id`);

--
-- Indexes for table `teeth`
--
ALTER TABLE `teeth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapy_types`
--
ALTER TABLE `therapy_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warranties_asset_id_foreign` (`asset_id`);

--
-- Indexes for table `work_times`
--
ALTER TABLE `work_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_times_employee_id_date_start_time_end_time_unique` (`employee_id`,`date`,`start_time`,`end_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `appointment_service`
--
ALTER TABLE `appointment_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debts`
--
ALTER TABLE `debts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_charts`
--
ALTER TABLE `dental_charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dental_chart_diagnoses`
--
ALTER TABLE `dental_chart_diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_chart_documents`
--
ALTER TABLE `dental_chart_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dental_chart_histories`
--
ALTER TABLE `dental_chart_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_chart_interventions`
--
ALTER TABLE `dental_chart_interventions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dental_chart_materials`
--
ALTER TABLE `dental_chart_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_chart_therapies`
--
ALTER TABLE `dental_chart_therapies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_chart_tooth_statuses`
--
ALTER TABLE `dental_chart_tooth_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `diagnosis_types`
--
ALTER TABLE `diagnosis_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_service`
--
ALTER TABLE `employee_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_logs`
--
ALTER TABLE `maintenance_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_files`
--
ALTER TABLE `patient_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `salons`
--
ALTER TABLE `salons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `salon_user`
--
ALTER TABLE `salon_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `service_category_service`
--
ALTER TABLE `service_category_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `service_materials`
--
ALTER TABLE `service_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_entries`
--
ALTER TABLE `stock_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_entry_items`
--
ALTER TABLE `stock_entry_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teeth`
--
ALTER TABLE `teeth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `therapy_types`
--
ALTER TABLE `therapy_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_times`
--
ALTER TABLE `work_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD CONSTRAINT `appointment_service_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`);

--
-- Constraints for table `charts`
--
ALTER TABLE `charts`
  ADD CONSTRAINT `charts_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `charts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `debts`
--
ALTER TABLE `debts`
  ADD CONSTRAINT `debts_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `debts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dental_charts`
--
ALTER TABLE `dental_charts`
  ADD CONSTRAINT `dental_charts_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`),
  ADD CONSTRAINT `dental_charts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dental_chart_diagnoses`
--
ALTER TABLE `dental_chart_diagnoses`
  ADD CONSTRAINT `dental_chart_diagnoses_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_diagnoses_diagnosis_type_id_foreign` FOREIGN KEY (`diagnosis_type_id`) REFERENCES `diagnosis_types` (`id`);

--
-- Constraints for table `dental_chart_documents`
--
ALTER TABLE `dental_chart_documents`
  ADD CONSTRAINT `dental_chart_documents_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_documents_intervention_id_foreign` FOREIGN KEY (`intervention_id`) REFERENCES `dental_chart_interventions` (`id`),
  ADD CONSTRAINT `dental_chart_documents_tooth_id_foreign` FOREIGN KEY (`tooth_id`) REFERENCES `teeth` (`id`);

--
-- Constraints for table `dental_chart_histories`
--
ALTER TABLE `dental_chart_histories`
  ADD CONSTRAINT `dental_chart_histories_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`);

--
-- Constraints for table `dental_chart_interventions`
--
ALTER TABLE `dental_chart_interventions`
  ADD CONSTRAINT `dental_chart_interventions_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_interventions_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dental_chart_interventions_tooth_id_foreign` FOREIGN KEY (`tooth_id`) REFERENCES `teeth` (`id`);

--
-- Constraints for table `dental_chart_materials`
--
ALTER TABLE `dental_chart_materials`
  ADD CONSTRAINT `dental_chart_materials_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_materials_material_type_id_foreign` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`);

--
-- Constraints for table `dental_chart_therapies`
--
ALTER TABLE `dental_chart_therapies`
  ADD CONSTRAINT `dental_chart_therapies_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_therapies_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dental_chart_therapies_therapy_type_id_foreign` FOREIGN KEY (`therapy_type_id`) REFERENCES `therapy_types` (`id`);

--
-- Constraints for table `dental_chart_tooth_statuses`
--
ALTER TABLE `dental_chart_tooth_statuses`
  ADD CONSTRAINT `dental_chart_tooth_statuses_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `dental_chart_tooth_statuses_tooth_id_foreign` FOREIGN KEY (`tooth_id`) REFERENCES `teeth` (`id`);

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `discounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_service_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `estimates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD CONSTRAINT `estimate_items_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`),
  ADD CONSTRAINT `estimate_items_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `estimate_items_tooth_id_foreign` FOREIGN KEY (`tooth_id`) REFERENCES `teeth` (`id`);

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_dental_chart_id_foreign` FOREIGN KEY (`dental_chart_id`) REFERENCES `dental_charts` (`id`),
  ADD CONSTRAINT `invoices_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `invoice_items_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `invoice_items_tooth_id_foreign` FOREIGN KEY (`tooth_id`) REFERENCES `teeth` (`id`);

--
-- Constraints for table `maintenance_logs`
--
ALTER TABLE `maintenance_logs`
  ADD CONSTRAINT `maintenance_logs_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD CONSTRAINT `patient_files_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `patient_files_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salons`
--
ALTER TABLE `salons`
  ADD CONSTRAINT `salons_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salon_user`
--
ALTER TABLE `salon_user`
  ADD CONSTRAINT `salon_user_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salon_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD CONSTRAINT `service_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_categories_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_category_service`
--
ALTER TABLE `service_category_service`
  ADD CONSTRAINT `service_category_service_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_category_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_materials`
--
ALTER TABLE `service_materials`
  ADD CONSTRAINT `service_materials_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `service_materials_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`);

--
-- Constraints for table `stock_entries`
--
ALTER TABLE `stock_entries`
  ADD CONSTRAINT `stock_entries_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `stock_entry_items`
--
ALTER TABLE `stock_entry_items`
  ADD CONSTRAINT `stock_entry_items_stock_entry_id_foreign` FOREIGN KEY (`stock_entry_id`) REFERENCES `stock_entries` (`id`),
  ADD CONSTRAINT `stock_entry_items_stock_item_id_foreign` FOREIGN KEY (`stock_item_id`) REFERENCES `stock_items` (`id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD CONSTRAINT `subscription_payments_confirmed_by_foreign` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subscription_payments_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_salon_id_foreign` FOREIGN KEY (`salon_id`) REFERENCES `salons` (`id`);

--
-- Constraints for table `warranties`
--
ALTER TABLE `warranties`
  ADD CONSTRAINT `warranties_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`);

--
-- Constraints for table `work_times`
--
ALTER TABLE `work_times`
  ADD CONSTRAINT `work_times_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
