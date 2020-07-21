-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 03:36 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini-crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `website`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Dialog Axiata', 'service@dialog.lk', 'http://www.dialog.lk/', 1, '2020-07-21 03:24:32', '2020-07-21 03:24:32'),
(2, 'Hayleys', 'info@cau.hayleys.com', 'https://www.hayleys.com/', 1, '2020-07-21 03:26:16', '2020-07-21 03:26:16'),
(4, 'Hemas', 'info@hemas.com', 'https://www.hemas.com/', 1, '2020-07-21 05:05:08', '2020-07-21 05:05:08'),
(5, 'Nestle', 'damitha.kulatunga@lk.nestle.com', 'https://www.nestle.lk/', 1, '2020-07-21 05:13:00', '2020-07-21 05:13:00'),
(6, 'Sri Lanka Telecom', 'pr@slt.lk', 'https://www.slt.lk/', 1, '2020-07-21 05:14:29', '2020-07-21 05:14:29'),
(7, 'John Keells Holdings', 'hr@keells.com', 'https://www.keells.com/', 1, '2020-07-21 05:16:02', '2020-07-21 05:16:02'),
(8, 'Ceylon Tobacco Company', 'Contact_CTC@bat.com', 'http://www.ceylontobaccocompany.com/', 1, '2020-07-21 05:17:12', '2020-07-21 05:17:12'),
(9, 'Abans Electricals PLC', 'info@abansgroup.com', 'https://www.abansgroup.com/', 1, '2020-07-21 05:18:53', '2020-07-21 05:18:53'),
(10, 'Brandix Lanka (Private) Ltd', 'info@brandix.com', 'https://www.brandix.com/', 1, '2020-07-21 05:20:39', '2020-07-21 05:20:39'),
(11, 'Brown & Company PLC', 'info@brownsgroup.com', 'https://www.brownsgroup.com/', 1, '2020-07-21 05:21:25', '2020-07-21 05:21:25'),
(12, 'CBL Foods International (PVT) Ltd', 'info.cblgf@cblk.com', 'http://www.munchee.lk', 1, '2020-07-21 05:24:51', '2020-07-21 05:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Shehan', 'Alwis', 1, 'shehanalwis@gmail.com', '0771234751', 1, '2020-07-21 04:52:11', '2020-07-21 04:52:11'),
(2, 'Anura', 'Silva', 1, 'anura.s@gmail.com', '078921345', 1, '2020-07-21 04:55:51', '2020-07-21 04:55:51'),
(3, 'Sandaru', 'Perera', 1, 'sandaruperera@outlook.com', '0712374567', 1, '2020-07-21 04:56:34', '2020-07-21 04:56:34'),
(4, 'Amaya', 'Dunuwila', 2, 'amaya.d@gmail.com', '0772713754', 1, '2020-07-21 04:57:15', '2020-07-21 04:57:15'),
(5, 'Natasha', 'Silva', 2, 'natasha98@outlook.com', '0777257493', 1, '2020-07-21 04:58:00', '2020-07-21 04:58:00'),
(6, 'Umesha', 'Peiris', 2, 'umeshapeiris@gmail.com', '0703752845', 1, '2020-07-21 04:58:48', '2020-07-21 04:58:48'),
(7, 'Nathalie', 'Perera', 4, 'nathalie.p@outlook.com', '0763728193', 1, '2020-07-21 05:25:44', '2020-07-21 05:25:44'),
(8, 'Bhagya', 'Alwis', 4, 'bhagyaalwis@gmail.com', '0793748578', 1, '2020-07-21 05:26:36', '2020-07-21 05:26:36'),
(9, 'Aseka', 'Bandara', 5, 'aseka0@gmail.com', '0777387392', 1, '2020-07-21 05:27:22', '2020-07-21 05:27:22'),
(10, 'Amila', 'Nuwan', 5, 'amilan@outlook.com', '0708946032', 1, '2020-07-21 05:27:54', '2020-07-21 05:28:00'),
(11, 'Shehan', 'De Silva', 6, 'shenasilva@outlook.com', '0777384659', 1, '2020-07-21 05:28:40', '2020-07-21 05:28:40'),
(12, 'Asiri', 'Perera', 6, 'asiri@gmail.com', '0770902847', 1, '2020-07-21 05:29:19', '2020-07-21 05:29:19'),
(13, 'Nuwani', 'Bhagya', 7, 'nuwanib@outlook.com', '0712374567', 1, '2020-07-21 05:30:06', '2020-07-21 05:30:06'),
(14, 'Mewan', 'Bandara', 8, 'mewanbandara@gmail.com', '0776289263', 1, '2020-07-21 05:31:28', '2020-07-21 05:31:28'),
(15, 'Nipuna', 'Peiris', 9, 'nipunap@gmail.com', '0747563738', 1, '2020-07-21 05:32:07', '2020-07-21 05:32:07'),
(16, 'Bhathiya', 'Perera', 10, 'bhathiyap@outlook.com', '0777723745', 1, '2020-07-21 05:32:51', '2020-07-21 05:32:51'),
(17, 'Nilupul', 'Epasinghe', 11, 'nilupulepasinghe@gmail.com', '0717480204', 1, '2020-07-21 05:33:38', '2020-07-21 05:33:38'),
(18, 'Sandil', 'Hettige', 12, 'sandilhettige@outlook.com', '0778321647', 1, '2020-07-21 05:34:20', '2020-07-21 05:34:20');

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
(3, '2018_03_24_001842_create_companies_table', 1),
(4, '2018_03_24_015823_create_employees_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$OHwYOGiOAYJAENtrVl2nQeNOjudQcZiE/mKP4sy1Nxs0h9UfeFsuu', 'qM7SNb6Kpz7zzPnF4UV4XcVYVbbJZG4qb6eYnS9G6WpL4Y8xSx2IfA450fPn', '2020-07-21 02:20:42', '2020-07-21 02:20:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
