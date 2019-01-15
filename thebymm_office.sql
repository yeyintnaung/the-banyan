-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2018 at 07:54 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thebymm_office`
--

-- --------------------------------------------------------

--
-- Table structure for table `lock_transaction`
--

CREATE TABLE `lock_transaction` (
  `id` int(222) NOT NULL,
  `user` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `approve_by` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lock_transaction`
--

INSERT INTO `lock_transaction` (`id`, `user`, `status`, `approve_by`, `server`, `created_at`) VALUES
(19, 'Ye Lin Aung', 'locked', '1', '', '2017-08-29 07:43:16.349890'),
(20, 'Ye Lin Aung', 'reactive', '1', '', '2017-08-29 07:44:12.530651'),
(21, 'Ye Lin Aung', 'locked', '1', '', '2017-08-29 08:14:42.573364'),
(22, 'Ye Lin Aung', 'reactive', '1', '', '2017-08-29 08:25:19.627694'),
(23, 'Mg Ye Lin Aung', 'locked', '1', 'topup', '2017-08-30 06:21:53.157888'),
(24, 'Mg Ye Lin Aung', 'reactive', '1', 'topup', '2017-08-30 06:21:58.740127'),
(25, 'Mg Ye Lin Aung', 'locked', '1', 'topup', '2017-08-30 06:47:15.444105'),
(26, 'Mg Ye Lin Aung', 'locked', '1', 'topup', '2017-09-08 03:26:25.561470'),
(27, 'Mg Ye Lin Aung', 'reactive', '1', 'topup', '2017-09-08 03:26:30.466050'),
(28, 'Mg Ye Lin Aung', 'locked', '1', 'topup', '2017-09-08 03:31:43.657431'),
(29, 'Mg Ye Lin Aung', 'reactive', '1', 'topup', '2017-09-08 03:31:48.595071'),
(30, 'Mg Ye Lin Aung', 'locked', '1', 'topup', '2017-09-08 03:32:47.398138'),
(31, 'Mg Ye Lin Aung', 'reactive', '1', 'topup', '2017-09-08 03:34:15.672141'),
(32, 'Zaw Htet', 'locked', '1', 'topup', '2017-09-08 03:42:59.375062');

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topup_bill`
--

CREATE TABLE `topup_bill` (
  `id` int(11) NOT NULL,
  `mptsm` int(11) NOT NULL,
  `mptmi` int(11) NOT NULL,
  `mptbi` int(11) NOT NULL,
  `mptxb` int(222) NOT NULL,
  `telsm` int(222) NOT NULL,
  `telmi` int(222) NOT NULL,
  `telbi` int(222) NOT NULL,
  `telxb` int(222) NOT NULL,
  `oosm` int(222) NOT NULL,
  `oomi` int(222) NOT NULL,
  `oobi` int(222) NOT NULL,
  `ooxb` int(222) NOT NULL,
  `total` int(11) NOT NULL,
  `by_office` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `date` varchar(222) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topup_bill`
--

INSERT INTO `topup_bill` (`id`, `mptsm`, `mptmi`, `mptbi`, `mptxb`, `telsm`, `telmi`, `telbi`, `telxb`, `oosm`, `oomi`, `oobi`, `ooxb`, `total`, `by_office`, `created_at`, `updated_at`, `date`) VALUES
(64, 222, 22222, 2222222, 22222222, 2222, 2222, 222, 2, 2222, 222, 2222, 2, 2222, 'taungyi', '2017-08-24 23:19:14.000000', '2017-08-24 23:19:14.000000', '2017-08-25'),
(74, 130, 30, 20, 5, 70, 20, 10, 0, 70, 10, 10, 0, 0, 'yangon', '2017-08-29 21:36:24.000000', '2017-08-29 21:36:24.000000', '2017-08-29'),
(75, 130, 30, 30, 10, 50, 20, 20, 0, 70, 0, 0, 0, 0, 'yangon', '2017-08-29 21:38:35.000000', '2017-08-29 21:38:35.000000', '2017-08-28'),
(76, 50, 0, 0, 3, 70, 10, 0, 0, 30, 0, 0, 0, 0, 'yangon', '2017-08-29 21:42:24.000000', '2017-08-29 21:42:24.000000', '2017-08-27'),
(77, 100, 20, 20, 5, 50, 0, 10, 0, 50, 0, 0, 0, 0, 'yangon', '2017-08-29 21:44:33.000000', '2017-08-29 21:44:33.000000', '2017-08-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lock_transaction`
--
ALTER TABLE `lock_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup_bill`
--
ALTER TABLE `topup_bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lock_transaction`
--
ALTER TABLE `lock_transaction`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `topup_bill`
--
ALTER TABLE `topup_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
