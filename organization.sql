-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 10:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organization`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `description`, `contact_person`, `contact_person_mobile`, `status`, `created_by`, `modified_by`, `modified_at`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 'mtb', 'nice', 'kk', '098', 1, 'kj', 'hj', NULL, NULL, NULL, '2024-01-25 01:15:56', '2024-01-25 01:15:56'),
(2, 'mtb', 'nice', 'kk', '098', 1, 'kj', 'hj', NULL, NULL, NULL, '2024-01-25 01:15:58', '2024-01-25 01:15:58'),
(3, 'mtb', 'nice', 'kk', '098', 1, 'kj', 'hj', NULL, NULL, NULL, '2024-01-25 01:15:59', '2024-01-25 01:15:59'),
(4, 'mtb', 'nice', 'kk', '098', 1, 'kj', 'hj', NULL, NULL, NULL, '2024-01-25 01:16:00', '2024-01-25 01:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_type` enum('sales_organizations','distributors') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sales_organizations',
  `account_owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_id`, `owner_type`, `account_owner_id`, `bank_account_number`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(8, NULL, 'distributors', NULL, '793723', 0, 'hsbs', 'ygusuw', NULL, NULL, '2024-01-20 04:45:16', '2024-01-20 04:45:16'),
(9, NULL, 'distributors', NULL, '793723', 0, 'hsbs', 'ygusuw', NULL, NULL, '2024-01-20 04:45:19', '2024-01-20 04:45:19'),
(10, 4, 'distributors', NULL, '793723', 0, 'hsbs', 'ygusuw', NULL, NULL, '2024-01-25 04:28:56', '2024-01-25 04:28:56'),
(11, 4, 'distributors', NULL, '793723', 0, 'hsbs', 'ygusuw', NULL, NULL, '2024-01-28 01:42:38', '2024-01-28 01:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `distribution_assigned_areas`
--

CREATE TABLE `distribution_assigned_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `distributor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED NOT NULL,
  `erp_id` bigint(20) UNSIGNED NOT NULL,
  `proprietor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proprietor_dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_printer` tinyint(1) NOT NULL,
  `has_pc` tinyint(1) NOT NULL,
  `has_live_app` tinyint(1) NOT NULL,
  `has_direct_sale` tinyint(1) NOT NULL,
  `opening_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `union` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`id`, `distributor_name`, `storage_id`, `upazila_id`, `erp_id`, `proprietor_name`, `proprietor_dob`, `address`, `mobile_number`, `has_printer`, `has_pc`, `has_live_app`, `has_direct_sale`, `opening_date`, `emergency_contact_name`, `emergency_contact_number`, `emergency_contact_relation`, `union`, `ward`, `village`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(3, 'Karim', 3, 2, 2, 'Rahim', '1980-10-2', 'Sadarghat, road', '09875612453', 0, 0, 0, 0, '15-3-23', 'Jamal', '458945394', 'employer', 'kharkharia', 'uttar badda', 'chilmari', 0, NULL, NULL, NULL, NULL, '2024-01-28 00:35:51', '2024-01-28 00:35:51'),
(4, 'Karim', 3, 2, 2, 'Rahim', '1980-10-2', 'Sadarghat, road', '09875612453', 0, 0, 0, 0, '15-3-23', 'Jamal', '458945394', 'employer', 'kharkharia', 'uttar badda', 'chilmari', 0, NULL, NULL, NULL, NULL, '2024-01-28 00:35:58', '2024-01-28 00:35:58'),
(5, 'Karim', 3, 2, 2, 'Rahim', '1980-10-2', 'Sadarghat, road', '09875612453', 0, 0, 0, 0, '15-3-23', 'Jamal', '458945394', 'employer', 'kharkharia', 'uttar badda', 'chilmari', 0, NULL, NULL, NULL, NULL, '2024-01-28 00:36:01', '2024-01-28 00:36:01'),
(6, 'Karim', 3, 2, 2, 'Rahim', '1980-10-2', 'Sadarghat, road', '09875612453', 0, 0, 0, 0, '15-3-23', 'Jamal', '458945394', 'employer', 'kharkharia', 'uttar badda', 'chilmari', 0, NULL, NULL, NULL, NULL, '2024-01-28 00:42:47', '2024-01-28 00:42:47'),
(7, 'Karim', 3, 2, 2, 'Rahim', '1980-10-2', 'Sadarghat, road', '09875612453', 0, 0, 0, 0, '15-3-23', 'Jamal', '458945394', 'employer', 'kharkharia', 'uttar badda', 'chilmari', 0, NULL, NULL, NULL, NULL, '2024-01-28 00:42:48', '2024-01-28 00:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `district_name`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dhaka', 1, NULL, NULL, NULL, NULL, '2024-01-25 00:58:33', '2024-01-25 00:58:33'),
(2, 2, 'Barisal', 1, NULL, NULL, NULL, NULL, '2024-01-25 04:21:13', '2024-01-27 21:19:23'),
(3, 2, 'Dhaka', 1, NULL, NULL, NULL, NULL, '2024-01-27 21:15:44', '2024-01-27 21:15:44'),
(4, 2, 'Dhaka', 1, NULL, NULL, NULL, NULL, '2024-01-27 21:18:10', '2024-01-27 21:18:10'),
(6, 2, 'Dhaka', 1, NULL, NULL, NULL, NULL, '2024-01-28 03:07:21', '2024-01-28 03:07:21');

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
(16, '2024_01_14_033419_update_administritivedivision_table_name', 11),
(27, '2024_01_14_064703_update_field_in_multiple_tables', 21),
(33, '2014_10_12_000000_create_users_table', 22),
(34, '2014_10_12_100000_create_password_reset_tokens_table', 22),
(35, '2019_08_19_000000_create_failed_jobs_table', 22),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 22),
(37, '2024_01_13_065322_create_storage_table', 22),
(38, '2024_01_13_070646_create_administritivedivision_table', 22),
(39, '2024_01_13_070951_create_salesorganization_table', 22),
(40, '2024_01_13_071236_create_bank_table', 22),
(41, '2024_01_13_072116_create_distributionassignedarea_table', 22),
(42, '2024_01_13_082344_create_district_table', 22),
(43, '2024_01_13_085314_create_upazila_table', 22),
(44, '2024_01_13_085700_create_bankaccounts_table', 22),
(45, '2024_01_13_090715_create_distributor_table', 22),
(46, '2024_01_14_031539_update_upazila_table_name', 22),
(47, '2024_01_14_033211_update_storage_table_name', 22),
(48, '2024_01_14_033629_update_salesorganization_table_name', 22),
(49, '2024_01_14_033835_update_bank_table_name', 22),
(50, '2024_01_14_034053_update_distributionassignedarea_table_name', 22),
(51, '2024_01_14_034742_update_districts_table_name', 22),
(52, '2024_01_14_035311_update_distributor_table_name', 22),
(53, '2024_01_14_043241_update_administritivedivision_table_name', 22),
(54, '2024_01_14_044503_rename_administritivedivisions_table', 22),
(55, '2024_01_14_044813_update_bankaccounts_table', 22),
(56, '2024_01_14_045107_update_distributionassignedareas_table', 22),
(57, '2024_01_14_045322_update_salesorganizations_table', 22),
(58, '2024_01_14_082453_rename_old_column_to_new', 22),
(59, '2024_01_14_083416_rename_old_column_to_new', 22),
(60, '2024_01_14_083718_update_column_name', 22),
(61, '2024_01_14_083900_update_column_name', 22),
(62, '2024_01_14_084041_update_column_name', 22),
(63, '2024_01_21_105732_change_column_data_type_in_table', 23),
(64, '2024_01_25_065750_create_districts_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_organizations`
--

CREATE TABLE `sales_organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_organizations`
--

INSERT INTO `sales_organizations` (`id`, `name`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 'jarina co and co', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:03:50', '2024-01-28 21:57:03'),
(2, 'rahima', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:04:57', '2024-01-28 05:04:57'),
(3, 'rahima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:05:07', '2024-01-28 05:05:07'),
(4, 'karima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:05:15', '2024-01-28 05:05:15'),
(5, 'karima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:09:17', '2024-01-28 05:09:17'),
(6, 'karima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 05:09:19', '2024-01-28 05:09:19'),
(8, 'karima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 23:33:31', '2024-01-28 23:33:31'),
(9, 'karima and co.', 0, NULL, NULL, NULL, NULL, '2024-01-28 23:33:56', '2024-01-28 23:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_in_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `owner_id`, `type_id`, `name`, `address`, `person_in_charge`, `email`, `telephone`, `mobile`, `status`, `created_by`, `modified_by`, `modified_at`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 34, 4, 'gonj storage', 'London', 'kiki', 'k@mail', '1234', '098', 1, NULL, NULL, NULL, NULL, NULL, '2024-01-27 21:37:53', '2024-01-27 21:38:40'),
(2, 34, 4, 'sadar storage', 'London', 'kiki', 'k@mail', '1234', '098', 1, NULL, NULL, NULL, NULL, NULL, '2024-01-27 21:37:56', '2024-01-27 21:37:56'),
(3, 34, 4, 'sadar storage', 'London', 'kiki', 'k@mail', '1234', '098', 1, NULL, NULL, NULL, NULL, NULL, '2024-01-27 21:37:57', '2024-01-27 21:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `upazila_name`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sadar', 1, 'js', 'js', NULL, NULL, '2024-01-27 21:20:54', '2024-01-27 21:20:54'),
(2, 2, 'Bhatikhana', 1, 'js', 'js', NULL, NULL, '2024-01-27 21:21:13', '2024-01-27 21:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bankaccounts_bank_id_foreign` (`bank_id`),
  ADD KEY `bankaccounts_account_owner_id_foreign` (`account_owner_id`);

--
-- Indexes for table `distribution_assigned_areas`
--
ALTER TABLE `distribution_assigned_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distributor_storage_id_foreign` (`storage_id`),
  ADD KEY `distributor_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sales_organizations`
--
ALTER TABLE `sales_organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazila_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `distribution_assigned_areas`
--
ALTER TABLE `distribution_assigned_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_organizations`
--
ALTER TABLE `sales_organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bankaccounts_account_owner_id_foreign` FOREIGN KEY (`account_owner_id`) REFERENCES `sales_organizations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bankaccounts_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `distributors`
--
ALTER TABLE `distributors`
  ADD CONSTRAINT `distributor_erp_id_foreign` FOREIGN KEY (`erp_id`) REFERENCES `distribution_assigned_areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distributor_storage_id_foreign` FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distributor_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazila_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
