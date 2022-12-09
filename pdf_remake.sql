-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2022 at 12:48 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdf_remake`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdf_info`
--

CREATE TABLE `pdf_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `relation_id` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_holder` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insured_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birth_date` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_number` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_issue` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4,
  `mobile_number` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `business_code` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insurance_period` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pdf_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insurance_plan` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `co_pay` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `select_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `policy_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_info`
--

INSERT INTO `pdf_info` (`id`, `user_id`, `template_id`, `relation_id`, `policy_holder`, `insured_name`, `birth_date`, `policy_number`, `policy_issue`, `address`, `mobile_number`, `business_code`, `insurance_period`, `pdf_name`, `insurance_plan`, `co_pay`, `select_name`, `status`, `policy_status`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 'Mother - الأم', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '01-11-2020', '58/58070402/0', '27-11-2022', 'Ajman, UAE', '0198765431', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070402.pdf', NULL, NULL, 'First Name,Last Name', 0, 1, '2022-11-27 10:03:56', '2022-11-27 10:03:56'),
(2, 9, 1, 'Mother - الأم', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '01-11-2000', '58/58070403/0', '27-11-2022', 'Ajman, UAE', '0198765431', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070403.pdf', NULL, NULL, 'First Name,Last Name', 0, 1, '2022-11-27 10:07:49', '2022-11-27 10:07:49'),
(3, 9, 1, 'Father', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '02-02-2011', '58/58070404/0', '27-11-2022', 'Ajman, UAE', '0198765431', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070404.pdf', NULL, NULL, 'First Name,Last Name', 0, 1, '2022-11-27 10:09:03', '2022-11-27 10:09:03'),
(4, 9, 1, 'Other Family Relationship', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '03-10-2020', '58/58070405/0', '27-11-2022', 'Ajman, UAE', '0198765431', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070405.pdf', NULL, NULL, NULL, 0, 1, '2022-11-27 10:09:45', '2022-11-27 10:09:45'),
(5, 9, 2, 'Mother', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '04-10-2000', 'M17UT/36502', '27-11-2022', NULL, '0198765432', NULL, NULL, 'AIG_insurance_36502.pdf', 'Silver Worldwide (Except USA)', '20 % Max AED50', 'Sumaiya Qayyum Ghole', 0, 2, '2022-11-27 10:11:24', '2022-11-27 10:11:24'),
(6, 9, 3, 'Sister', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '04-02-2000', '5567746702', '27-11-2022', NULL, '0198765432', NULL, NULL, 'Takaful_emarat_5567746702.pdf', NULL, NULL, 'Sumaiya Qayyum Ghole', 0, 3, '2022-11-27 10:14:01', '2022-11-27 10:14:01'),
(7, 9, 1, 'Husband - الزوج', 'REZWANA BIBI MUHAMMAD ALTAF', 'REZWANA BIBI MUHAMMAD ALTAF', '09-03-2020', '58/58070406/0', '27-11-2022', 'Ajman, UAE', '0198765431', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070406.pdf', NULL, NULL, 'First Name,Last Name', 0, 1, '2022-11-27 10:16:06', '2022-11-27 10:16:06'),
(8, 8, 1, 'Other Family Relationship', 'ataasd', 'ataasd', '01------', '58/58070407/0', '27-11-2022', 'Ajman, UAE', '0501234567', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070407.pdf', NULL, NULL, NULL, 0, 1, '2022-11-27 14:58:51', '2022-11-27 14:58:51'),
(9, 8, 1, 'Husband - الزوج', 'ads ad', 'ads ad', '01-----', '58/58070408/0', '27-11-2022', 'Ajman, UAE', '0501234567', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070408.pdf', NULL, NULL, 'asda,asda', 0, 1, '2022-11-27 15:00:28', '2022-11-27 15:00:28'),
(10, 8, 1, 'Husband - الزوج', 'adsa', 'adsa', '28-11-2022', '58/58070409/0', '27-11-2022', 'Ajman, UAE', '0501234567', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070409.pdf', NULL, NULL, 'asda,asda', 0, 1, '2022-11-27 15:13:15', '2022-11-27 15:13:15'),
(11, 11, 1, 'Father', 'Mohammad saleh alaswad', 'Mohammad saleh alaswad', '20-01-2000', '58/58070410/0', '27-11-2022', 'Ajman, UAE', '0502122833', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070410.pdf', NULL, NULL, 'Saleh mahmoud,Al aswad', 0, 1, '2022-11-27 17:56:39', '2022-11-27 17:56:39'),
(12, 11, 1, 'Father - الأب', 'Mohammad saleh al aswad', 'Mohammad saleh al aswad', '20-01-2000', '58/58070411/0', '27-11-2022', 'Ajman, UAE', '0502122833', '8579442/0', '27/11/2022  -  26/11/2023', 'hayah_simple_life_58070411.pdf', NULL, NULL, 'Saleh mahmoud,Al aswad', 0, 1, '2022-11-27 18:20:40', '2022-11-27 18:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relation_ar` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `template_id`, `name`, `relation_ar`, `created_at`, `updated_at`) VALUES
(12, 1, 'Father', 'الأب', '2022-11-24 14:47:57', '2022-11-24 14:47:57'),
(13, 2, 'Mother', NULL, '2022-11-24 14:47:57', '2022-11-24 14:47:57'),
(14, 1, 'Mother', 'الأم', '2022-11-24 14:47:57', '2022-11-24 14:47:57'),
(15, 3, 'Sister', NULL, '2022-11-24 14:47:57', '2022-11-24 14:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `health_policy` varchar(128) DEFAULT NULL,
  `insurance_policy` varchar(128) DEFAULT NULL,
  `ref_no` varchar(128) DEFAULT NULL,
  `business_code` varchar(128) DEFAULT NULL,
  `insurance_plan` varchar(128) DEFAULT NULL,
  `co_pay` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `template_id`, `health_policy`, `insurance_policy`, `ref_no`, `business_code`, `insurance_plan`, `co_pay`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '58/58070401/0', NULL, '8579442/0', NULL, NULL, NULL, 'Ajman, UAE', '2022-11-10 05:08:22', '2022-11-10 05:08:22'),
(2, 2, 'M17UT/36501', NULL, NULL, NULL, 'Silver Worldwide (Except USA)', '20 % Max AED50', 'alraheeqtrvl@gmail.com', NULL, '2022-11-10 05:08:22', '2022-11-10 05:08:22'),
(3, 3, '', '', '5567746701', NULL, NULL, NULL, NULL, NULL, '2022-11-10 05:08:22', '2022-11-10 05:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_info`
--

CREATE TABLE `sponsor_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sponsor_name` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT 'normal = 1, golden = 2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsor_info`
--

INSERT INTO `sponsor_info` (`id`, `user_id`, `sponsor_name`, `mobile_number`, `type`, `created_at`, `updated_at`) VALUES
(1, 9, 'First Name,Last Name', '0198765431', 1, '2022-11-27 10:03:56', '2022-11-27 10:03:56'),
(2, 9, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0198765431', 2, '2022-11-27 10:09:29', '2022-11-27 10:09:29'),
(3, 9, 'Sumaiya Qayyum Ghole', '0198765432', 1, '2022-11-27 10:11:24', '2022-11-27 10:11:24'),
(4, 8, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0501234567', 2, '2022-11-27 14:58:41', '2022-11-27 14:58:41'),
(5, 8, 'asda,asda', '0501234567', 1, '2022-11-27 15:00:27', '2022-11-27 15:00:27'),
(6, 11, 'Saleh mahmoud,Al aswad', '0502122833', 1, '2022-11-27 17:56:39', '2022-11-27 17:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(128) DEFAULT NULL,
  `is_checked` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `template_name`, `is_checked`, `created_at`, `updated_at`) VALUES
(1, 'Hayah Simple Life', 1, '2022-11-12 04:59:31', '2022-11-12 04:59:31'),
(2, 'AIG insurance', 0, '2022-11-12 04:59:31', '2022-11-12 04:59:31'),
(3, 'Takaful Emarat', 0, '2022-11-12 04:59:31', '2022-11-12 04:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `suspend` int(11) NOT NULL DEFAULT '1' COMMENT 'suspend = 2, unsuspend = 1	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `role_id`, `suspend`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Admin', 'Admin', 1, 1, '2022-11-06 12:06:41', '2022-11-06 12:06:41'),
(8, 'rafi1234', 'rafi@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Rafi', 'Hossain', 2, 1, '2022-11-08 09:25:31', '2022-11-08 09:25:31'),
(9, 'nazmul1234', 'nazmul@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Nazmul', 'Hossain', 2, 1, '2022-11-08 09:26:13', '2022-11-08 09:26:13'),
(10, 'shukriti1234', 'shukriti@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Shukriti', 'Das', 2, 1, '2022-11-08 09:27:04', '2022-11-08 09:27:04'),
(11, 'ahmed.alblooshi', 'Am.alblooshi11@gmail.com', '16c419b66e5e5f4a875c2ba01cb61ff74eaf0eb2', 'Ahmed', 'Alblooshi', 2, 1, '2022-11-27 17:49:51', '2022-11-27 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2022-11-06 12:03:37', '2022-11-06 12:03:37'),
(2, 'User', '2022-11-06 12:03:37', '2022-11-06 12:03:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pdf_info`
--
ALTER TABLE `pdf_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_info`
--
ALTER TABLE `sponsor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pdf_info`
--
ALTER TABLE `pdf_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sponsor_info`
--
ALTER TABLE `sponsor_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
