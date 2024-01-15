-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 09:39 AM
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
-- Table structure for table `administrative_divisions`
--

CREATE TABLE `administrative_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrative_divisions`
--

INSERT INTO `administrative_divisions` (`id`, `status`, `created_by`, `modified_by`, `modified_at`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 'false', 'jdfdss', 'js', NULL, NULL, NULL, '2024-01-14 00:01:25', '2024-01-14 02:52:09'),
(2, 'true', NULL, 'js', NULL, NULL, NULL, '2024-01-14 00:33:48', '2024-01-14 00:33:48');

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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(1, 'mtb', 'ndhusidh', 'kk', '098', 'true', NULL, 'hj', NULL, NULL, NULL, '2024-01-14 00:24:16', '2024-01-14 00:39:29'),
(2, 'mtb', 'nice', 'kk', '098', 'true', NULL, 'hj', NULL, NULL, NULL, '2024-01-14 00:39:05', '2024-01-14 00:39:05'),
(3, 'mtb', 'nice', 'kk', '098', 'true', NULL, 'hj', NULL, NULL, NULL, '2024-01-14 00:40:17', '2024-01-14 00:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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

INSERT INTO `bank_accounts` (`id`, `bank_id`, `owner_type`, `owner_id`, `bank_account_number`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(3, 1, 'sales_organizations', 1, '9687968796', 'false', 'hsbs', 'ygusuw', NULL, NULL, '2024-01-14 02:42:26', '2024-01-14 02:42:26'),
(4, 1, 'distributors', 1, '55555555', 'false', 'hsbs', 'ygusuw', NULL, NULL, '2024-01-14 02:42:26', '2024-01-14 02:42:26');

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

--
-- Dumping data for table `distribution_assigned_areas`
--

INSERT INTO `distribution_assigned_areas` (`id`, `distributor_id`, `area_id`, `created_by`, `modified_by`, `modified_at`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'kkk', 'js', NULL, NULL, NULL, '2024-01-14 00:20:36', '2024-01-14 00:38:23'),
(2, NULL, NULL, NULL, 'js', NULL, NULL, NULL, '2024-01-14 00:36:20', '2024-01-14 00:36:20'),
(3, NULL, NULL, NULL, 'js', NULL, NULL, NULL, '2024-01-14 02:44:04', '2024-01-14 02:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `distributor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `erp_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(1, 'dob', NULL, NULL, NULL, 'hsh', '34', 'hbs', '473', 0, 1, 0, 1, '45', 'hqwbd', '458945394', 'ddkxm', 'bsds', 'jbs', 'hsba', 'false', 'hsks', 'kdjsd', NULL, NULL, '2024-01-14 03:09:47', '2024-01-14 03:12:14'),
(2, 'dob', NULL, NULL, NULL, 'hsh', '34', 'hbs', '473', 0, 1, 0, 1, '45', 'hqwbd', '458945394', 'ddkxm', 'bsds', 'jbs', 'hsba', 'false', NULL, NULL, NULL, NULL, '2024-01-15 00:28:35', '2024-01-15 00:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(2, 1, 'bxxckja', '1', 'js', 'js', NULL, NULL, '2024-01-14 00:30:44', '2024-01-14 02:47:27'),
(3, 2, 'Dhaka', '1', 'js', 'js', NULL, NULL, '2024-01-14 02:47:03', '2024-01-14 02:47:03');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_13_065322_create_storage_table', 2),
(6, '2024_01_13_070646_create_administritivedivision_table', 3),
(7, '2024_01_13_070951_create_salesorganization_table', 4),
(8, '2024_01_13_071236_create_bank_table', 4),
(9, '2024_01_13_072116_create_distributionassignedarea_table', 4),
(10, '2024_01_13_082344_create_district_table', 5),
(11, '2024_01_13_085314_create_upazila_table', 6),
(12, '2024_01_13_085700_create_bankaccounts_table', 7),
(13, '2024_01_13_090715_create_distributor_table', 8),
(14, '2024_01_14_031539_update_upazila_table_name', 9),
(15, '2024_01_14_033211_update_storage_table_name', 10),
(16, '2024_01_14_033419_update_administritivedivision_table_name', 11),
(17, '2024_01_14_033629_update_salesorganization_table_name', 12),
(18, '2024_01_14_033835_update_bank_table_name', 13),
(19, '2024_01_14_034053_update_distributionassignedarea_table_name', 14),
(20, '2024_01_14_034742_update_districts_table_name', 15),
(21, '2024_01_14_035311_update_distributor_table_name', 15),
(22, '2024_01_14_043241_update_administritivedivision_table_name', 16),
(23, '2024_01_14_044503_rename_administritivedivisions_table', 17),
(24, '2024_01_14_044813_update_bankaccounts_table', 18),
(25, '2024_01_14_045107_update_distributionassignedareas_table', 19),
(26, '2024_01_14_045322_update_salesorganizations_table', 20),
(27, '2024_01_14_064703_update_field_in_multiple_tables', 21),
(28, '2024_01_14_082453_rename_old_column_to_new', 22),
(29, '2024_01_14_083416_rename_old_column_to_new', 23),
(30, '2024_01_14_083718_update_column_name', 24),
(31, '2024_01_14_083900_update_column_name', 25),
(32, '2024_01_14_084041_update_column_name', 26);

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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(1, 'hs', 'true', 'hsbs', 'ygusuw', NULL, NULL, '2024-01-14 02:58:01', '2024-01-14 02:59:32');

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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(1, NULL, NULL, 'Dina', 'London', 'kiki', 'k@mail', '1234', '098', 'true', NULL, 'jk', NULL, NULL, NULL, '2024-01-14 00:07:50', '2024-01-14 00:35:44'),
(2, NULL, NULL, 'Dan', 'London', 'kiki', 'k@mail', '1234', '098', 'true', NULL, 'jk', NULL, NULL, NULL, '2024-01-14 00:17:44', '2024-01-14 00:17:44'),
(3, NULL, NULL, 'Dan', 'London', 'kiki', 'k@mail', '1234', '098', 'true', NULL, 'jk', NULL, NULL, NULL, '2024-01-14 00:35:16', '2024-01-14 00:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
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
(2, NULL, 'Gonj', 'true', 'js', 'js', NULL, NULL, '2024-01-14 00:31:51', '2024-01-14 00:33:10');

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
-- Indexes for table `administrative_divisions`
--
ALTER TABLE `administrative_divisions`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `bank_accounts_account_owner_id_foreign` (`owner_id`),
  ADD KEY `bank_accounts_bank_id_foreign` (`bank_id`);

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
  ADD KEY `distributors_erp_id_foreign` (`erp_id`),
  ADD KEY `distributors_storage_id_foreign` (`storage_id`),
  ADD KEY `distributors_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

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
  ADD KEY `upazilas_district_id_foreign` (`district_id`);

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
-- AUTO_INCREMENT for table `administrative_divisions`
--
ALTER TABLE `administrative_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `distribution_assigned_areas`
--
ALTER TABLE `distribution_assigned_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_organizations`
--
ALTER TABLE `sales_organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `bank_accounts_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `distributors`
--
ALTER TABLE `distributors`
  ADD CONSTRAINT `distributors_erp_id_foreign` FOREIGN KEY (`erp_id`) REFERENCES `distribution_assigned_areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distributors_storage_id_foreign` FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distributors_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `administrative_divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
