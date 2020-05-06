-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 02:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mondia_php7`
--

-- --------------------------------------------------------

--
-- Table structure for table `imi_requests`
--

CREATE TABLE `imi_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imi_requests`
--

INSERT INTO `imi_requests` (`id`, `header`, `request`, `response`, `type`, `created_at`, `updated_at`) VALUES
(92, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-06 10:53:47', '2020-05-06 10:53:47'),
(93, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243628298795573972566789011Afasi6874\"}}', 'IMI Generate OTP', '2020-05-06 10:53:48', '2020-05-06 10:53:48'),
(94, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972566789011\",\"otpid\":\"637243628298795573972566789011Afasi6874\",\"otp\":\"7810\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243628298795573972566789011Afasi6874\"}}', 'IMI Validate OTP', '2020-05-06 10:54:52', '2020-05-06 10:54:52'),
(95, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243630166801552972566789011Afasi6874\"}}', 'IMI Generate OTP', '2020-05-06 10:56:55', '2020-05-06 10:56:55'),
(96, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972566789011\",\"otpid\":\"637243630166801552972566789011Afasi6874\",\"otp\":\"3445\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243630166801552972566789011Afasi6874\"}}', 'IMI Validate OTP', '2020-05-06 11:00:19', '2020-05-06 11:00:19'),
(97, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"SUB\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\",\"otpid\":\"637243630166801552972566789011Afasi6874\"}}', '{\"service\":{\"status\":\"-1\",\"rescode\":\"60\",\"resdescription\":\"Service Not Available\",\"serviceid\":\"Afasi\"}}', 'IMI Subscription Request', '2020-05-06 11:00:20', '2020-05-06 11:00:20'),
(98, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-06 11:31:27', '2020-05-06 11:31:27'),
(99, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972566789011\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243650896550451972566789011Afasi6874\"}}', 'IMI Generate OTP', '2020-05-06 11:31:28', '2020-05-06 11:31:28'),
(100, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972123456789\",\"serviceid\":\"Afasi\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-06 11:31:38', '2020-05-06 11:31:38'),
(101, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972123456789\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243650998887107972123456789Afasi6874\"}}', 'IMI Generate OTP', '2020-05-06 11:31:38', '2020-05-06 11:31:38'),
(102, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972123456789\",\"otpid\":\"637243650998887107972123456789Afasi6874\",\"otp\":\"1234\"}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"2102\",\"resdescription\":\"\",\"otpid\":null}}', 'IMI Validate OTP', '2020-05-06 11:31:43', '2020-05-06 11:31:43'),
(103, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"VALOTP\",\"msisdn\":\"972123456789\",\"otpid\":\"637243650998887107972123456789Afasi6874\",\"otp\":\"7736\"}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"2102\",\"resdescription\":\"\",\"otpid\":null}}', 'IMI Validate OTP', '2020-05-06 11:33:47', '2020-05-06 11:33:47'),
(104, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"service\":{\"reqtype\":\"CHECK\",\"msisdn\":\"972123456789\",\"serviceid\":\"Afasi\",\"Status\":\"Active\",\"scode\":\"6874\"}}', '{\"response\":{\"status\":\"-1\",\"rescode\":\"1001\",\"resdescription\":\"No Records found\"},\"services\":null}', 'IMI Check Status', '2020-05-06 11:43:16', '2020-05-06 11:43:16'),
(105, '[\"Accept:: application\\/json\",\"Content-Type: application\\/json\",\"Authorization: Basic aW1pbW9iaWxlOmltaW1vYmlsZTEyMw==\"]', '{\"reqtype\":\"GENOTP\",\"msisdn\":\"972123456789\",\"serviceid\":\"Afasi\",\"chnl\":\"WAP\",\"scode\":\"6874\"}', '{\"response\":{\"status\":\"0\",\"rescode\":\"1000\",\"resdescription\":\"Success\",\"otpid\":\"637243657984670965972123456789Afasi6874\"}}', 'IMI Generate OTP', '2020-05-06 11:43:16', '2020-05-06 11:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imi_requests`
--
ALTER TABLE `imi_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imi_requests`
--
ALTER TABLE `imi_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
