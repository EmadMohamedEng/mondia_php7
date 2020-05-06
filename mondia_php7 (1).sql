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
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `operator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL,
  `azan_flage` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audios`
--

INSERT INTO `audios` (`id`, `provider_id`, `operator_id`, `title`, `source`, `code`, `created_at`, `updated_at`, `video_id`, `azan_flage`) VALUES
(33, 20, 9, 'rbt1 en', 'uploads/audios/5e8f36f21058a.mp3', 789, '2020-04-09 18:53:38', '2020-04-09 18:53:59', NULL, 1),
(34, 20, 9, 'rbt2 en', 'uploads/audios/5e8f375f7e6b9.mp3', 456, '2020-04-09 18:55:27', '2020-04-09 18:55:27', NULL, 0),
(35, 20, 10, 'rbt3 en', 'uploads/audios/5e8f399b94720.mp3', 456, '2020-04-09 19:04:59', '2020-04-09 19:04:59', NULL, 1),
(36, 20, 10, 'rbt4 en', 'uploads/audios/5e8f39b444d63.mp3', 789, '2020-04-09 19:05:24', '2020-04-09 19:05:24', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `service_id`, `title`, `created_at`, `updated_at`, `video`, `content_text`, `image_preview`, `type`) VALUES
(71, 33, 'Sourat Al Fatha', '2020-04-14 01:40:32', '2020-04-14 01:40:32', 'uploads/videos/5e94dc502bdf6.mp4', NULL, '5e94dc5033378.png', 1),
(72, 33, 'Sorat Al Bakarah 1', '2020-04-14 01:43:44', '2020-04-14 01:43:44', 'uploads/videos/5e94dd1092460.mp4', NULL, '5e94dd10945eb.png', 1),
(73, 33, 'Sorat Al Bakarah 2', '2020-04-14 01:45:06', '2020-04-14 01:45:06', 'uploads/videos/5e94dd6298122.mp4', NULL, '5e94dd629a003.png', 1),
(74, 33, 'Sorat Al Bakarah 3', '2020-04-14 01:46:12', '2020-04-14 01:46:12', 'uploads/videos/5e94dda3c4962.mp4', NULL, '5e94dda3c70f3.png', 1),
(75, 33, 'Sorat Al Bakarah 4', '2020-04-14 01:47:11', '2020-04-14 01:47:11', 'uploads/videos/5e94dddf3339f.mp4', NULL, '5e94dddf3544c.png', 1),
(76, 33, 'Sorat Al Bakarah 5', '2020-04-14 01:48:10', '2020-04-14 01:48:10', 'uploads/videos/5e94de1a41245.mp4', NULL, '5e94de1a43add.png', 1),
(77, 33, 'Sorat Al Bakarah 6', '2020-04-14 01:49:52', '2020-04-14 01:49:52', 'uploads/videos/5e94de7fe6d34.mp4', NULL, '5e94de7feb66c.png', 1),
(78, 33, 'Sorat Al Bakarah 7', '2020-04-14 01:50:43', '2020-04-14 01:50:43', 'uploads/videos/5e94deb35f926.mp4', NULL, '5e94deb360fb7.png', 1),
(79, 33, 'Sorat Al Bakarah 8', '2020-04-14 01:51:32', '2020-04-14 01:51:32', 'uploads/videos/5e94dee3e0c7f.mp4', NULL, '5e94dee3e3da2.png', 1),
(80, 33, 'Sorat Al Bakarah 9', '2020-04-14 01:52:17', '2020-04-14 01:52:17', 'uploads/videos/5e94df11588e7.mp4', NULL, '5e94df115ab48.png', 1),
(101, 36, 'Allahom ahfazna Belaslam', '2020-04-14 02:33:13', '2020-04-14 02:33:13', 'uploads/videos/5e94e8a89e3f7.mp4', NULL, '5e94e8a89f2e4.png', 1),
(102, 36, 'allahom any aoz bek men alham wa alhozn', '2020-04-14 02:33:46', '2020-04-14 02:33:46', 'uploads/videos/5e94e8ca642c4.mp4', NULL, '5e94e8ca6530c.png', 1),
(103, 36, 'allahom ana nsalak feal alkhaerat', '2020-04-14 02:34:44', '2020-04-14 02:34:44', 'uploads/videos/5e94e903d1339.mp4', NULL, '5e94e903d2a7d.png', 1),
(104, 36, 'allahom asleh ahwalna', '2020-04-14 02:35:21', '2020-04-14 02:35:21', 'uploads/videos/5e94e9289d4ae.mp4', NULL, '5e94e9289e5e4.png', 1),
(105, 36, 'allahom any aoz bek men gohd alblaa', '2020-04-14 02:36:22', '2020-04-14 02:36:22', 'uploads/videos/5e94e9665b401.mp4', NULL, '5e94e9665c73d.png', 1),
(106, 36, 'allahom aghfer lhaina wa maitna', '2020-04-14 02:37:45', '2020-04-14 02:37:45', 'uploads/videos/5e94e9b8bd15b.mp4', NULL, '5e94e9b8be3c4.png', 1),
(107, 36, 'allahom anak khalakt nafsy', '2020-04-14 02:38:15', '2020-04-14 02:38:15', 'uploads/videos/5e94e9d6e56a7.mp4', NULL, '5e94e9d6e672c.png', 1),
(108, 36, 'allahom zdna wala tankosna', '2020-04-14 02:38:50', '2020-04-14 02:38:50', 'uploads/videos/5e94e9f9876f6.mp4', NULL, '5e94e9f988d31.png', 1),
(109, 36, 'allahom baleghna ramadan', '2020-04-14 02:39:29', '2020-04-14 02:39:29', 'uploads/videos/5e94ea20be761.mp4', NULL, '5e94ea20c052a.png', 1),
(110, 36, 'allahom any asalak an tbarek fe nafsy', '2020-04-14 02:40:07', '2020-04-14 02:40:07', 'uploads/videos/5e94ea471633e.mp4', NULL, '5e94ea47180e5.png', 1),
(111, 38, 'Alsalam ala aleh wa sahboh', '2020-04-14 02:55:58', '2020-04-14 02:55:58', 'uploads/videos/5e94edfe097d8.mp4', NULL, '5e94edfe0bc8b.png', 1),
(112, 38, 'wa aelam nboateh', '2020-04-14 02:56:38', '2020-04-14 02:56:38', 'uploads/videos/5e94ee2635e08.mp4', NULL, '5e94ee2637c1a.png', 1),
(113, 38, 'alsalah ala alnabi bekadr sokan jenan', '2020-04-14 02:57:39', '2020-04-14 02:57:39', 'uploads/videos/5e94ee62aaacf.mp4', NULL, '5e94ee62acb56.png', 1),
(114, 38, 'hamat_ Almagmoah 1', '2020-04-14 02:58:38', '2020-04-14 02:58:38', 'uploads/videos/5e94ee9e259bc.mp4', NULL, '5e94ee9e27ff2.png', 1),
(115, 38, 'Hamat _altablawy 1', '2020-04-14 02:59:26', '2020-04-14 02:59:26', 'uploads/videos/5e94eecd9f475.mp4', NULL, '5e94eecda142b.png', 1),
(116, 38, 'Hamat _altablawy 2', '2020-04-14 03:00:07', '2020-04-14 03:00:07', 'uploads/videos/5e94eef6acc3b.mp4', NULL, '5e94eef6af7a7.png', 1),
(117, 38, 'Hamat _altablawy 3', '2020-04-14 03:00:55', '2020-04-14 03:00:55', 'uploads/videos/5e94ef2676d1f.mp4', NULL, '5e94ef2678e77.png', 1),
(118, 38, 'Ya saheb alham', '2020-04-14 03:01:43', '2020-04-14 03:01:43', 'uploads/videos/5e94ef56d4530.mp4', NULL, '5e94ef56d682b.png', 1),
(119, 38, 'yarab an alomor', '2020-04-14 03:02:32', '2020-04-14 03:02:32', 'uploads/videos/5e94ef878c521.mp4', NULL, '5e94ef878e7bd.png', 1),
(120, 38, 'yaman tmadaet', '2020-04-14 03:03:12', '2020-04-14 03:03:12', 'uploads/videos/5e94efb03ecff.mp4', NULL, '5e94efb04063d.png', 1),
(121, 39, 'Sorat Al Bakarah 1', '2020-04-14 03:07:25', '2020-04-14 03:17:47', 'uploads/videos/5e94f31b0144b.mp4', NULL, '5e94f31b03b8f.png', 1),
(122, 39, 'Sorat Al Bakarah 2', '2020-04-14 03:08:08', '2020-04-14 03:19:05', 'uploads/videos/5e94f36956983.mp4', NULL, '5e94f36959a92.png', 1),
(123, 39, 'Sorat Al Bakarah 3', '2020-04-14 03:09:10', '2020-04-14 03:15:19', 'uploads/videos/5e94f2878cf91.mp4', NULL, '5e94f2878ffb3.png', 1),
(124, 39, 'Sorat Al Bakarah 4', '2020-04-14 03:09:55', '2020-04-14 03:22:16', 'uploads/videos/5e94f427ee5b4.mp4', NULL, '5e94f427f1113.png', 1),
(125, 39, 'Sorat Al Bakarah 5', '2020-04-14 03:10:46', '2020-04-14 03:25:26', 'uploads/videos/5e94f4e5a9147.mp4', NULL, '5e94f4e5aa639.png', 1),
(126, 39, 'Sorat Al Bakarah 6', '2020-04-14 03:11:25', '2020-04-14 03:28:32', 'uploads/videos/5e94f5a019ef8.mp4', NULL, '5e94f5a01d32f.png', 1),
(127, 39, 'Sorat Al Bakarah 7', '2020-04-14 03:12:02', '2020-04-14 03:30:04', 'uploads/videos/5e94f5fbca7d1.mp4', NULL, '5e94f5fbcd385.png', 1),
(128, 39, 'Sorat Al Bakarah 8', '2020-04-14 03:12:39', '2020-04-14 03:32:50', 'uploads/videos/5e94f6a268487.mp4', NULL, '5e94f6a26b08c.png', 1),
(129, 39, 'Sorat Al Bakarah 9', '2020-04-14 03:13:43', '2020-04-14 03:34:13', 'uploads/videos/5e94f6f53ea02.mp4', NULL, '5e94f6f541d22.png', 1),
(130, 39, 'Sorat Al Bakarah 10', '2020-04-14 03:14:18', '2020-04-14 03:36:35', 'uploads/videos/5e94f783466a1.mp4', NULL, '5e94f7834931d.png', 1),
(131, 37, 'Asmaa Allah Al Hosna 1', '2020-04-14 03:45:42', '2020-04-14 04:00:50', 'uploads/videos/5e94f9a63982f.mp4', NULL, '5e94f9a63c7d9.png', 1),
(132, 37, 'Asmaa Allah Al Hosna 2', '2020-04-14 03:46:26', '2020-04-14 04:01:33', 'uploads/videos/5e94f9d1b79ff.mp4', NULL, '5e94f9d1babc4.png', 1),
(133, 37, 'Allahom Akfna Al Soaa 1', '2020-04-14 03:49:46', '2020-04-14 04:02:05', 'uploads/videos/5e94fa99c7b10.mp4', NULL, '5e94fa99ca22a.png', 1),
(134, 37, 'Allahom Akfna Al Soaa 2', '2020-04-14 03:50:50', '2020-04-14 04:02:30', 'uploads/videos/5e94fada71f16.mp4', NULL, '5e94fada7512c.png', 1),
(135, 37, 'Salawat Ala Al Naby', '2020-04-14 03:51:31', '2020-04-14 04:02:58', 'uploads/videos/5e94fcb2436e3.mp4', NULL, '5e94fcb2462d2.png', 1),
(137, 37, 'Ayat Al Doaa 1', '2020-04-14 03:52:36', '2020-04-14 04:04:03', 'uploads/videos/5e94fdf2b92c7.mp4', NULL, '5e94fdf2bc627.png', 1),
(138, 37, 'Ayat Al Doaa 2', '2020-04-14 03:54:34', '2020-04-14 04:04:22', 'uploads/videos/5e94fbb9a7540.mp4', NULL, '5e94fbb9aa736.png', 1),
(139, 37, 'Ayat Al Doaa 3', '2020-04-14 03:56:17', '2020-04-14 04:04:38', 'uploads/videos/5e94fc20b6f0a.mp4', NULL, '5e94fc20b9c75.png', 1),
(140, 37, 'Ayat Al Doaa 4', '2020-04-14 03:57:06', '2020-04-14 04:04:54', 'uploads/videos/5e94fc5207397.mp4', NULL, '5e94fc5209a25.png', 1),
(141, 37, 'Ayat Al Doaa 5', '2020-04-14 03:57:56', '2020-04-14 04:05:14', 'uploads/videos/5e94fc838a646.mp4', NULL, '5e94fc838d648.png', 1),
(142, 36, 'Allahom Any zalamt Nafsy', '2020-04-15 01:33:02', '2020-04-15 01:33:02', 'uploads/videos/5e962c0dc166c.mp4', NULL, '5e962c0dcc3d7.png', 1),
(143, 36, 'Allahom any aoz bekan arad aelaarzal alomor', '2020-04-15 01:33:41', '2020-04-15 01:33:41', 'uploads/videos/5e962c34d64ce.mp4', NULL, '5e962c34d7984.png', 1),
(144, 36, 'Allahom any asalak nafs motmaenah', '2020-04-15 01:34:35', '2020-04-15 01:34:35', 'uploads/videos/5e962c6b79184.mp4', NULL, '5e962c6b7aa15.png', 1),
(145, 36, 'allahomagal waleday habiby', '2020-04-15 01:35:14', '2020-04-15 01:35:14', 'uploads/videos/5e962c9256868.mp4', NULL, '5e962c9258085.png', 1),
(146, 36, 'rab aeny wala taon aly', '2020-04-15 01:35:52', '2020-04-15 01:35:52', 'uploads/videos/5e962cb783262.mp4', NULL, '5e962cb784292.png', 1),
(147, 36, 'allahom babk maftoh', '2020-04-15 01:36:29', '2020-04-15 01:36:29', 'uploads/videos/5e962cdce3347.mp4', NULL, '5e962cdce4a13.png', 1),
(148, 36, 'allahom akfna shar alamrad', '2020-04-15 01:37:05', '2020-04-15 01:37:05', 'uploads/videos/5e962d00c774a.mp4', NULL, '5e962d00c8730.png', 1),
(149, 36, 'allahom la tarod doaena', '2020-04-15 01:37:44', '2020-04-15 01:37:44', 'uploads/videos/5e962d278c688.mp4', NULL, '5e962d278d942.png', 1),
(150, 36, 'allahom an naseaty beadek', '2020-04-15 01:38:25', '2020-04-15 01:38:25', 'uploads/videos/5e962d5086055.mp4', NULL, '5e962d50874b4.png', 1),
(151, 36, 'allahom aghfer lna almek fena', '2020-04-15 01:39:33', '2020-04-15 01:39:33', 'uploads/videos/5e962d94826fc.mp4', NULL, '5e962d948379b.png', 1),
(152, 36, 'nastaodeak abaana wa omhatena', '2020-04-15 01:40:36', '2020-04-15 01:40:36', 'uploads/videos/5e962dd4285cd.mp4', NULL, '5e962dd429a51.png', 1),
(153, 36, 'allahom malek almolk', '2020-04-15 01:41:59', '2020-04-15 01:41:59', 'uploads/videos/5e962e27340d3.mp4', NULL, '5e962e273536b.png', 1),
(154, 36, 'kol shaeaa khashea lak', '2020-04-15 01:44:12', '2020-04-15 01:44:12', 'uploads/videos/5e962eabad9ee.mp4', NULL, '5e962eabaef92.png', 1),
(155, 36, 'ya sahby and alshedah', '2020-04-15 01:45:29', '2020-04-15 01:45:29', 'uploads/videos/5e962ef936416.mp4', NULL, '5e962ef937572.png', 1),
(156, 36, 'hob alahsan', '2020-04-15 01:46:40', '2020-04-15 01:46:40', 'uploads/videos/5e962f3fd949b.mp4', NULL, '5e962f3fda690.png', 1),
(157, 36, 'aoz men altarady', '2020-04-15 01:47:53', '2020-04-15 01:47:53', 'uploads/videos/5e962f8917f24.mp4', NULL, '5e962f8919000.png', 1),
(158, 36, 'alahy la toazeb lsana', '2020-04-15 01:48:40', '2020-04-15 01:48:40', 'uploads/videos/5e962fb7d837b.mp4', NULL, '5e962fb7d9ad5.png', 1),
(159, 36, 'arfa albalaa', '2020-04-15 01:49:22', '2020-04-15 01:49:22', 'uploads/videos/5e962fe25d825.mp4', NULL, '5e962fe25e90f.png', 1),
(160, 36, 'ya arham alrahmeen', '2020-04-15 01:50:31', '2020-04-15 01:50:31', 'uploads/videos/5e9630274f490.mp4', NULL, '5e963027513c4.png', 1),
(161, 36, 'alhamdolellah adad ma ahsa ktaboh', '2020-04-15 01:51:14', '2020-04-15 01:51:14', 'uploads/videos/5e963052343d6.mp4', NULL, '5e9630523550d.png', 1),
(180, 33, 'Sorat Al Bakarah 10', '2020-04-15 02:24:07', '2020-04-15 02:24:07', 'uploads/videos/5e963806b1cfc.mp4', NULL, '5e963806b5805.png', 1),
(181, 33, 'Sorat Al Bakarah 11', '2020-04-15 02:25:43', '2020-04-15 02:25:43', 'uploads/videos/5e9638676c937.mp4', NULL, '5e9638676e923.png', 1),
(182, 33, 'Sorat Al Bakarah 12', '2020-04-15 02:26:56', '2020-04-15 02:26:56', 'uploads/videos/5e9638b01059a.mp4', NULL, '5e9638b011bf0.png', 1),
(183, 33, 'Sorat Al Bakarah 13', '2020-04-15 02:28:11', '2020-04-15 02:28:11', 'uploads/videos/5e9638fb1cdad.mp4', NULL, '5e9638fb1fe0f.png', 1),
(184, 33, 'Sorat Al Bakarah 14', '2020-04-15 02:30:51', '2020-04-15 02:30:51', 'uploads/videos/5e96399b67761.mp4', NULL, '5e96399b6aa47.png', 1),
(185, 33, 'Sorat Al Bakarah 15', '2020-04-15 02:33:02', '2020-04-15 02:33:02', 'uploads/videos/5e963a1e042a3.mp4', NULL, '5e963a1e07404.png', 1),
(186, 33, 'Sorat Al Bakarah 16', '2020-04-15 02:35:35', '2020-04-15 02:35:35', 'uploads/videos/5e963ab6eb12b.mp4', NULL, '5e963ab6ef952.png', 1),
(187, 33, 'Sorat Al Bakarah 17', '2020-04-15 02:36:57', '2020-04-15 02:36:57', 'uploads/videos/5e963b0958b92.mp4', NULL, '5e963b095a5d6.png', 1),
(188, 33, 'Sorat Al Bakarah 18', '2020-04-15 02:39:35', '2020-04-15 02:39:35', 'uploads/videos/5e963ba7017c8.mp4', NULL, '5e963ba704de4.png', 1),
(189, 33, 'Sorat Al Bakarah 19', '2020-04-15 02:40:31', '2020-04-15 02:40:31', 'uploads/videos/5e963bdf16f8f.mp4', NULL, '5e963bdf18825.png', 1),
(190, 33, 'Sorat Al Bakarah 20', '2020-04-15 02:42:59', '2020-04-15 02:42:59', 'uploads/videos/5e963c730533c.mp4', NULL, '5e963c73065a7.png', 1),
(191, 33, 'Sorat Al Bakarah 21', '2020-04-15 02:44:48', '2020-04-15 02:44:48', 'uploads/videos/5e963ce05cfe3.mp4', NULL, '5e963ce05ec0c.png', 1),
(192, 33, 'Sorat Al Bakarah 22', '2020-04-15 02:47:55', '2020-04-15 02:47:55', 'uploads/videos/5e963d9adfe35.mp4', NULL, '5e963d9ae29bf.png', 1),
(193, 33, 'Sorat Al Bakarah 23', '2020-04-15 02:50:50', '2020-04-15 02:50:50', 'uploads/videos/5e963e49ce107.mp4', NULL, '5e963e49d0021.png', 1),
(194, 33, 'Sorat Al Bakarah 24', '2020-04-15 02:52:05', '2020-04-15 02:52:05', 'uploads/videos/5e963e9510ada.mp4', NULL, '5e963e95127b0.png', 1),
(195, 33, 'Sorat Al Bakarah 25', '2020-04-15 02:53:37', '2020-04-15 02:53:37', 'uploads/videos/5e963ef0e6a0f.mp4', NULL, '5e963ef0e9160.png', 1),
(196, 33, 'Sorat Al Bakarah 26', '2020-04-15 02:55:16', '2020-04-15 02:55:16', 'uploads/videos/5e963f53d996c.mp4', NULL, '5e963f53db835.png', 1),
(197, 33, 'Sorat Al Bakarah 27', '2020-04-15 02:58:27', '2020-04-15 02:58:27', 'uploads/videos/5e9640136c1a4.mp4', NULL, '5e9640136e6d4.png', 1),
(198, 33, 'Sorat Al Bakarah 28', '2020-04-15 02:59:40', '2020-04-15 02:59:40', 'uploads/videos/5e96405ba7d4c.mp4', NULL, '5e96405baa8a8.png', 1),
(199, 33, 'Sorat Al Bakarah 29', '2020-04-15 03:00:39', '2020-04-15 03:00:39', 'uploads/videos/5e96409665ed4.mp4', NULL, '5e96409668bd2.png', 1),
(200, 33, 'Sorat Al Bakarah 30', '2020-04-15 03:01:47', '2020-04-15 03:01:47', 'uploads/videos/5e9640db5a0db.mp4', NULL, '5e9640db5e3d6.png', 1),
(201, 39, 'Sorat Al Bakarah 11', '2020-04-15 03:10:58', '2020-04-15 03:10:58', 'uploads/videos/5e9643020bc3b.mp4', NULL, '5e9643020d8cd.png', 1),
(202, 39, 'Sorat Al Bakarah 12', '2020-04-15 03:11:42', '2020-04-15 03:11:42', 'uploads/videos/5e96432e93934.mp4', NULL, '5e96432e95674.png', 1),
(203, 39, 'Sorat Al Bakarah 13', '2020-04-15 03:12:35', '2020-04-15 03:12:35', 'uploads/videos/5e964362a29b8.mp4', NULL, '5e964362a4a64.png', 1),
(204, 39, 'Sorat Al Bakarah 14', '2020-04-15 03:13:21', '2020-04-15 03:13:21', 'uploads/videos/5e96439104486.mp4', NULL, '5e96439106745.png', 1),
(205, 39, 'Sorat Al Bakarah 15', '2020-04-15 03:15:04', '2020-04-15 03:15:04', 'uploads/videos/5e9643f7f0d4f.mp4', NULL, '5e9643f7f2208.png', 1),
(206, 39, 'Sorat Al Bakarah 16', '2020-04-15 03:15:45', '2020-04-15 03:15:45', 'uploads/videos/5e964420b9e06.mp4', NULL, '5e964420bc071.png', 1),
(207, 39, 'Sorat Al Bakarah 1', '2020-04-15 03:16:16', '2020-04-15 03:16:16', '', NULL, NULL, 1),
(208, 39, 'Sorat Al Bakarah 17', '2020-04-15 03:16:19', '2020-04-15 03:16:19', 'uploads/videos/5e964442dd266.mp4', NULL, '5e964442de050.png', 1),
(209, 39, 'Sorat Al Bakarah 18', '2020-04-15 03:21:43', '2020-04-15 03:21:43', 'uploads/videos/5e96458741464.mp4', NULL, '5e96458743895.png', 1),
(210, 39, 'Sorat Al Bakarah 19', '2020-04-15 03:26:19', '2020-04-15 03:26:19', 'uploads/videos/5e96469b5305b.mp4', NULL, '5e96469b54084.png', 1),
(211, 39, 'Sorat Al Bakarah 20', '2020-04-15 03:27:27', '2020-04-15 03:27:27', 'uploads/videos/5e9646dec0277.mp4', NULL, '5e9646dec121e.png', 1),
(212, 39, 'Sorat Al Bakarah 21', '2020-04-15 03:28:58', '2020-04-15 03:28:58', 'uploads/videos/5e96473a5d835.mp4', NULL, '5e96473a5f49b.png', 1),
(213, 39, 'Sorat Al Bakarah 22', '2020-04-15 03:30:11', '2020-04-15 03:30:11', 'uploads/videos/5e964782e713e.mp4', NULL, '5e964782e8df1.png', 1),
(214, 39, 'Sorat Al Bakarah 23', '2020-04-15 03:31:32', '2020-04-15 03:31:32', 'uploads/videos/5e9647d42e3f6.mp4', NULL, '5e9647d43031f.png', 1),
(215, 39, 'Sorat Al Bakarah 24', '2020-04-15 03:32:38', '2020-04-15 03:32:38', 'uploads/videos/5e9648163da21.mp4', NULL, '5e9648163fce0.png', 1),
(216, 39, 'Sorat Al Bakarah 25', '2020-04-15 03:34:33', '2020-04-15 03:34:33', 'uploads/videos/5e96488931e5b.mp4', NULL, '5e96488934507.png', 1),
(217, 39, 'Sorat Al Bakarah 26', '2020-04-15 03:35:43', '2020-04-15 03:35:43', 'uploads/videos/5e9648cf726cd.mp4', NULL, '5e9648cf7483f.png', 1),
(218, 39, 'Sorat Al Bakarah 27', '2020-04-15 03:36:20', '2020-04-15 03:36:20', 'uploads/videos/5e9648f457335.mp4', NULL, '5e9648f4592e1.png', 1),
(219, 39, 'Sorat Al Bakarah 28', '2020-04-15 03:38:03', '2020-04-15 03:38:03', 'uploads/videos/5e96495b9a88f.mp4', NULL, '5e96495b9b8d2.png', 1),
(220, 39, 'Sorat Al Bakarah 29', '2020-04-15 03:39:06', '2020-04-15 03:39:06', 'uploads/videos/5e96499a54b7d.mp4', NULL, '5e96499a55f03.png', 1),
(221, 39, 'Sorat Al Bakarah 30', '2020-04-15 03:39:57', '2020-04-15 03:39:57', 'uploads/videos/5e9649ccb0942.mp4', NULL, '5e9649ccb295e.png', 1),
(222, 37, 'Ayat Al Doaa 6', '2020-04-15 21:29:08', '2020-04-15 21:29:08', 'uploads/videos/5e974463a747b.mp4', NULL, '5e974463ad354.png', 1),
(223, 37, 'Ayat Al Doaa 7', '2020-04-15 21:30:05', '2020-04-15 21:30:05', 'uploads/videos/5e97449cdf56a.mp4', NULL, '5e97449ce2596.png', 1),
(224, 37, 'Ayat Al Doaa 8', '2020-04-15 21:31:35', '2020-04-15 21:31:35', 'uploads/videos/5e9744f7190e4.mp4', NULL, '5e9744f71be54.png', 1),
(225, 37, 'Ayat Al Doaa 9', '2020-04-15 21:32:26', '2020-04-15 21:32:26', 'uploads/videos/5e97452982afe.mp4', NULL, '5e9745298a9fa.png', 1),
(226, 37, 'Ayat Al Doaa 10', '2020-04-15 21:33:20', '2020-04-15 21:33:20', 'uploads/videos/5e97455f7f456.mp4', NULL, '5e97455f8216b.png', 1),
(227, 37, 'Adaa fe al lail nar', '2020-04-15 21:34:53', '2020-04-15 21:34:53', 'uploads/videos/5e9745bce0586.mp4', NULL, '5e9745bce299d.png', 1),
(228, 37, 'aghfat koraesh', '2020-04-15 21:40:07', '2020-04-15 21:40:07', 'uploads/videos/5e9746f71207a.mp4', NULL, '5e9746f713c7b.png', 1),
(229, 37, 'allah akbar', '2020-04-15 21:41:50', '2020-04-15 21:41:50', 'uploads/videos/5e97475dd3f48.mp4', NULL, '5e97475dd642f.png', 1),
(230, 37, 'alaoleaa', '2020-04-15 21:43:34', '2020-04-15 21:43:34', 'uploads/videos/5e9747c5cb146.mp4', NULL, '5e9747c5cdadf.png', 1),
(231, 37, 'mohamed said alkhalk', '2020-04-15 21:45:20', '2020-04-15 21:45:20', 'uploads/videos/5e97483042bfc.mp4', NULL, '5e974830442da.png', 1),
(232, 37, 'beazmeh', '2020-04-15 21:46:52', '2020-04-15 21:46:52', 'uploads/videos/5e97488bc454a.mp4', NULL, '5e97488bc7307.png', 1),
(233, 37, 'aid alsamaa', '2020-04-15 21:48:15', '2020-04-15 21:48:15', 'uploads/videos/5e9748df01ed9.mp4', NULL, '5e9748df040f9.png', 1),
(234, 37, 'az qalbkol moheb', '2020-04-15 21:49:13', '2020-04-15 21:49:13', 'uploads/videos/5e9749190f8b6.mp4', NULL, '5e97491912652.png', 1),
(235, 37, 'fe fath makah', '2020-04-15 21:55:23', '2020-04-15 21:55:23', 'uploads/videos/5e974a8b5e9ad.mp4', NULL, '5e974a8b6134d.png', 1),
(236, 37, 'hal yabtaghy almolk', '2020-04-15 21:56:03', '2020-04-15 21:56:03', 'uploads/videos/5e974ab32ecfc.mp4', NULL, '5e974ab330371.png', 1),
(237, 37, 'amal trakabh alzaman 1', '2020-04-15 21:56:46', '2020-04-15 21:56:46', 'uploads/videos/5e974addaf9ee.mp4', NULL, '5e974addb1ec1.png', 1),
(238, 37, 'amal trakabh alzaman 2', '2020-04-15 21:57:32', '2020-04-15 21:57:32', 'uploads/videos/5e974b0c29a53.mp4', NULL, '5e974b0c2c361.png', 1),
(239, 37, 'amal trakabh alzaman 3', '2020-04-15 21:58:58', '2020-04-15 21:58:58', 'uploads/videos/5e974b623a173.mp4', NULL, '5e974b623be83.png', 1),
(240, 37, 'amal trakabh alzaman 4', '2020-04-15 21:59:54', '2020-04-15 21:59:54', 'uploads/videos/5e974b9a7004b.mp4', NULL, '5e974b9a71ebb.png', 1),
(241, 37, 'amal trakabh alzaman 5', '2020-04-15 22:00:39', '2020-04-15 22:00:39', 'uploads/videos/5e974bc69dc36.mp4', NULL, '5e974bc6a5995.png', 1),
(244, 40, 'Sourat Al Fatha', '2020-04-15 22:16:13', '2020-04-15 22:16:13', 'uploads/videos/5e974f6d22a9b.mp4', NULL, '5e974f6d2675f.png', 1),
(245, 40, 'Sorat Al Bakarah 1', '2020-04-15 22:17:01', '2020-04-15 22:17:01', 'uploads/videos/5e974f9cda68c.mp4', NULL, '5e974f9cdc7ad.png', 1),
(246, 40, 'Sorat Al Bakarah 2', '2020-04-15 22:20:03', '2020-04-15 22:20:03', 'uploads/videos/5e975052a3bd7.mp4', NULL, '5e975052a5459.png', 1),
(247, 41, 'Sorat Al Bakarah 1', '2020-04-15 22:22:12', '2020-04-15 22:22:12', 'uploads/videos/5e9750d3e7d6c.mp4', NULL, '5e9750d3ea2ac.png', 1),
(248, 41, 'Sorat Al Bakarah 2', '2020-04-15 22:24:06', '2020-04-15 22:24:06', 'uploads/videos/5e975145c855a.mp4', NULL, '5e975145caf68.png', 1),
(250, 42, 'Almaa Allazy Yasleh Llodoa', '2020-04-16 00:38:06', '2020-04-16 03:17:49', 'uploads/videos/5e9770adb26eb.mp4', NULL, '5e9770adb79ec.png', 1),
(251, 42, 'Astkhdam Meah Al Magary lelodoaa', '2020-04-16 00:39:47', '2020-04-16 03:20:53', 'uploads/videos/5e9771134cb25.mp4', NULL, '5e9771134eb34.png', 1),
(252, 42, 'Hal yador al ma2 Almoshmes Al Ansan', '2020-04-16 00:43:19', '2020-04-16 03:24:58', 'uploads/videos/5e97742ee638e.mp4', NULL, '5e97742ee9719.png', 1),
(253, 42, 'Htatahor men al ganabah bmash gasady belsalg', '2020-04-16 01:01:56', '2020-04-16 03:16:02', 'uploads/videos/5e97764449deb.mp4', NULL, '5e9776444f4b3.png', 1),
(254, 42, 'ِkhalat almaa belsabon asnaa alghosel', '2020-04-16 01:05:14', '2020-04-16 03:14:24', 'uploads/videos/5e97770a94b2d.mp4', NULL, '5e97770a96baf.png', 1),
(255, 43, 'The birth of Eissa Alyeh El Salam', '2020-04-16 01:07:32', '2020-04-16 04:40:19', 'uploads/videos/5e97a973be217.gif', NULL, NULL, 3),
(256, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 01:19:43', '2020-04-16 04:32:58', 'uploads/videos/5e97a7ba25ca7.gif', NULL, NULL, 3),
(257, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:26', '2020-04-16 04:34:26', 'uploads/videos/5e97a8120a0ea.gif', NULL, NULL, 3),
(258, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:42', '2020-04-16 04:34:42', 'uploads/videos/5e97a8229f957.gif', NULL, NULL, 3),
(259, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:34:56', '2020-04-16 04:34:56', 'uploads/videos/5e97a830268ba.gif', NULL, NULL, 3),
(260, 44, 'EL Fatah El Mobin Solh El Hodeybya', '2020-04-16 04:35:08', '2020-04-16 04:35:08', 'uploads/videos/5e97a83c6de2d.gif', NULL, NULL, 3),
(262, 43, 'Eissa Alyeh El Salam Facing the people', '2020-04-16 04:42:30', '2020-04-16 04:42:30', 'uploads/videos/5e97a9f61eaea.gif', NULL, NULL, 3),
(263, 43, 'Eissa Alyeh El Salam Facing the people', '2020-04-16 04:42:42', '2020-04-16 04:42:42', 'uploads/videos/5e97aa02ef64b.gif', NULL, NULL, 3),
(264, 43, 'Eissa Alyeh El Salam Facing the people', '2020-04-16 04:43:02', '2020-04-16 04:43:02', 'uploads/videos/5e97aa161ea84.gif', NULL, NULL, 3),
(265, 47, 'Surat Al Bakrah 186', '2020-04-16 05:04:39', '2020-04-16 05:35:20', NULL, 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', NULL, 4),
(266, 47, 'Surat Al Ibrahim7', '2020-04-16 05:06:33', '2020-04-16 05:31:28', NULL, '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', NULL, 4),
(267, 47, 'Surat Al Zomor 42', '2020-04-16 05:07:23', '2020-04-16 05:27:13', NULL, 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', NULL, 4),
(268, 47, 'Surat Al Nsaa 19', '2020-04-16 05:09:04', '2020-04-16 05:25:52', NULL, 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', NULL, 4),
(269, 47, 'Surat Al Araf 32', '2020-04-16 05:09:55', '2020-04-16 05:24:32', NULL, 'فالدنيا دار اختبار للايمان، والاخرة دار الجزاء.. ومن الناس من لا يعبد الله.. هؤلاء متساوون في عطاء الربوبية مع المؤمنين في الدنيا.. ولكن في الآخرة يكون عطاء الالوهية للمؤمنين وحدهم.. فنعم الله لأصحاب الجنة، وعطاءات الله لمن آمن.. واقرأ قوله تبارك وتعالى.\r\n{قُلْ مَنْ حَرَّمَ زِينَةَ الله التي أَخْرَجَ لِعِبَادِهِ وَالْطَّيِّبَاتِ مِنَ الرزق قُلْ هِي لِلَّذِينَ آمَنُواْ فِي الحياة الدنيا خَالِصَةً يَوْمَ القيامة كَذَلِكَ نُفَصِّلُ الآيات لِقَوْمٍ يَعْلَمُونَ} [الأعراف: 32]\r\nعلى ان الحمد لله ليس في الدنيا فقط.. بل هو في الدنيا والاخرة', NULL, 4),
(270, 48, 'AL-BAASIT', '2020-04-16 05:19:40', '2020-04-16 08:55:33', NULL, 'Al-Qaabid, Al-Baasit is the One who withholds and extends. He contracts when it is good and He expands when it is good. At time He withholds and at other times He gives. This goes for provisions (rizq), life and death.', NULL, 4),
(271, 48, 'AL-BAATIN', '2020-04-16 05:20:19', '2020-04-16 08:56:49', NULL, 'The One who cannot be seen in the way the creation can be seen. He is the One from whom nothing is hidden and who surrounds all things. He knows even the inner states, yet He is veiled from the creation’s perception.', NULL, 4),
(272, 48, 'AL-BADEE’', '2020-04-16 05:21:05', '2020-04-16 08:57:30', NULL, 'Al-Badee’ is the unique Originator. He is the One whose incomparable power originates, invents and brings into existence all of the unique creation without following any prior model or unlike any similarity to anything that ever existed.', NULL, 4),
(273, 48, 'AL-BASEER', '2020-04-16 05:21:37', '2020-04-16 08:58:31', NULL, 'The One Whose insight sees all things clearly, even the smallest act and both the apparent and the hidden. He is the One who sees and understands all that has been, and all that will be.', NULL, 4),
(274, 48, 'AT-TAWWAB', '2020-04-16 05:22:14', '2020-04-16 08:59:37', NULL, 'The One who grants repentance to whoever He willed among His creatures and accepts their repentance.', NULL, 4),
(275, 49, 'هل بشر عيسى عليه السلام', '2020-04-16 05:57:28', '2020-04-16 06:45:57', 'uploads/videos/5e97bb884236f.mp4', NULL, '5e97bb8844ce4.png', 1),
(276, 50, 'Shahadah', '2020-04-16 06:07:33', '2020-04-16 09:03:18', NULL, 'sincerely reciting the Muslim profession of faith', NULL, 4),
(277, 50, 'Salat', '2020-04-16 06:09:03', '2020-04-16 09:03:52', NULL, 'performing ritual prayers in the proper way five times each day', NULL, 4),
(278, 50, 'Sawm', '2020-04-16 06:12:01', '2020-04-16 09:05:05', NULL, 'fasting during the month of Ramadan', NULL, 4),
(279, 50, 'Zakat', '2020-04-16 06:13:04', '2020-04-16 09:04:33', NULL, 'paying an alms (or charity) tax to benefit the poor and the needy', NULL, 4),
(280, 50, 'Hajj', '2020-04-16 06:13:05', '2020-04-16 09:05:42', NULL, 'pilgrimage to Mecca', NULL, 4),
(281, 54, 'Eza Kan Awel Leyla Men Shaher Ramadan', '2020-04-16 08:06:05', '2020-04-16 08:06:05', 'uploads/videos/5e97d9acf075d.mp4', NULL, '5e97d9ad09493.png', 1),
(282, 54, 'Nahey An Syeam Yom EL shak', '2020-04-16 08:07:59', '2020-04-16 08:07:59', 'uploads/videos/5e97da1f2ec9c.mp4', NULL, '5e97da1f34111.png', 1),
(287, 58, 'Sourat EL Nour', '2020-04-16 08:41:10', '2020-04-16 08:41:10', 'uploads/videos/5e97e1e63c7fd.mp4', NULL, '5e97e1e63f1d0.png', 1),
(288, 59, 'Sourat Younes', '2020-04-16 08:42:50', '2020-04-16 08:42:50', 'uploads/videos/5e97e24a114b4.mp4', NULL, '5e97e24a14c39.png', 1),
(289, 60, 'Sourat El Baqarah', '2020-04-16 08:44:23', '2020-04-16 08:44:23', 'uploads/videos/5e97e2a6d4537.mp4', NULL, '5e97e2a6db9d4.png', 1),
(290, 51, 'The virtue of Hajj', '2020-04-16 08:48:06', '2020-04-16 08:48:06', 'uploads/videos/5e97e385d8759.mp4', NULL, '5e97e385da3f6.png', 1),
(291, 45, 'Man Nasia Wa Ho Sayem', '2020-04-16 08:50:00', '2020-04-16 08:50:00', 'uploads/videos/5e97e3f7d0e09.mp4', NULL, '5e97e3f7d161e.png', 1),
(292, 52, 'Ramadan Mobarak', '2020-04-16 08:52:52', '2020-04-16 08:52:52', 'uploads/videos/5e97e4a41e747.mp4', NULL, '5e97e4a420d65.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'egypt', '2018-05-07 14:21:24', '2018-05-07 14:21:24'),
(3, 'sa', '2018-05-07 14:24:39', '2018-05-07 14:24:39'),
(4, 'oman', '2020-03-26 17:12:49', '2020-03-26 17:12:49'),
(5, 'emirate', '2020-03-28 17:56:46', '2020-03-28 17:56:46'),
(6, 'qautar', '2020-04-22 11:56:08', '2020-04-22 11:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `delete_all_flags`
--

CREATE TABLE `delete_all_flags` (
  `id` int(10) UNSIGNED NOT NULL,
  `route_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `du_integration`
--

CREATE TABLE `du_integration` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `local` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `created_at`, `updated_at`, `short_code`, `rtl`) VALUES
(1, 'English', '2020-03-22 02:23:01', '2020-03-22 02:23:01', 'en', 0),
(2, 'Arabic', '2020-03-22 02:23:12', '2020-03-22 02:23:12', 'ar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(133, '2014_10_12_000000_create_users_table', 1),
(134, '2014_10_12_100000_create_password_resets_table', 1),
(135, '2015_10_31_162633_scaffoldinterfaces', 1),
(136, '2017_08_01_141233_create_permission_tables', 1),
(137, '2017_09_20_131500_create_first_user', 1),
(138, '2017_10_16_084836_create_settings_table', 1),
(139, '2017_10_25_094626_create_translatable_table', 1),
(140, '2017_10_25_095102_create_language_table', 1),
(141, '2017_10_25_095200_create_translate_body', 1),
(142, '2017_10_25_113637_add_short_code_and_rtl_to_language', 1),
(143, '2017_10_31_091358_create_static_translations_table', 1),
(144, '2017_10_31_091835_create_static_body_table', 1),
(145, '2017_11_09_081714_create_role_route_table', 1),
(146, '2017_11_09_081714_create_routes_table', 1),
(147, '2017_11_09_081715_add_foreign_keys_to_role_route_table', 1),
(148, '2017_11_14_115606_isolate_controller_from_method', 1),
(149, '2017_11_15_092424_adding_standards_routes', 1),
(150, '2017_12_19_092552_add_type_field_to_settings', 1),
(151, '2018_01_04_081336_adding_priorty_field_to_role_table', 1),
(152, '2018_01_08_074915_phone_col_null', 1),
(153, '2018_01_28_075912_add_type_table_to_template', 1),
(154, '2018_01_28_080917_rename_type_coloumn_in_settings', 1),
(155, '2018_01_28_081429_add_foriegn_keys_to_settings_table', 1),
(156, '2018_01_28_090855_add_order_coloumn_to_settings_table', 1),
(157, '2018_02_04_080901_create_delete_all_table', 1),
(158, '2018_12_18_091104_create_operators_table', 1),
(159, '2018_12_18_091104_create_posts_table', 1),
(160, '2018_12_18_091104_create_providers_table', 1),
(161, '2018_12_18_091104_create_services_table', 1),
(162, '2018_12_18_091104_create_videos_table', 1),
(163, '2018_12_18_091106_add_foreign_keys_to_posts_table', 1),
(164, '2018_12_18_091106_add_foreign_keys_to_services_table', 1),
(165, '2018_12_24_134449_update_operator_table', 1),
(166, '2018_12_24_135834_create_audios_table', 1),
(167, '2018_12_24_135835_add_foreign_keys_to_audios_table', 1),
(168, '2018_12_26_133947_update_video_table', 2),
(169, '2018_12_27_090718_update_audios_table', 3),
(170, '2018_12_27_102110_update_services_table', 4),
(171, '2018_12_27_102111_update_services_table', 5),
(172, '2018_12_27_104206_rename_videos_table', 6),
(173, '2018_12_27_105750_add_to_contents_table', 7),
(174, '2018_12_27_133111_create_countries_table', 8),
(175, '2018_12_27_132832_add_country_to_operations', 9),
(176, '2019_12_31_091104_add_settings', 10),
(177, '2020_01_15_123132_create_du_intgration', 10),
(178, '2020_01_16_113647_edit_du_integration', 10),
(179, '2020_01_27_164838_add_azan_flag_to_rbts_table', 10),
(180, '2020_02_03_103133_make_all_table_innodb', 10),
(181, '2020_03_22_113551_add_column_to_contents_table', 11),
(182, '2020_03_22_115241_change_image_in_providers_table', 12),
(183, '2020_03_22_162246_create_audios_table', 0),
(184, '2020_03_22_162246_create_contents_table', 0),
(185, '2020_03_22_162246_create_countries_table', 0),
(186, '2020_03_22_162246_create_delete_all_flags_table', 0),
(187, '2020_03_22_162246_create_du_integration_table', 0),
(188, '2020_03_22_162246_create_languages_table', 0),
(189, '2020_03_22_162246_create_operators_table', 0),
(190, '2020_03_22_162246_create_password_resets_table', 0),
(191, '2020_03_22_162246_create_permissions_table', 0),
(192, '2020_03_22_162246_create_posts_table', 0),
(193, '2020_03_22_162246_create_providers_table', 0),
(194, '2020_03_22_162246_create_relations_table', 0),
(195, '2020_03_22_162246_create_roles_table', 0),
(196, '2020_03_22_162246_create_role_has_permissions_table', 0),
(197, '2020_03_22_162246_create_role_route_table', 0),
(198, '2020_03_22_162246_create_routes_table', 0),
(199, '2020_03_22_162246_create_scaffoldinterfaces_table', 0),
(200, '2020_03_22_162246_create_services_table', 0),
(201, '2020_03_22_162246_create_settings_table', 0),
(202, '2020_03_22_162246_create_static_bodies_table', 0),
(203, '2020_03_22_162246_create_static_translations_table', 0),
(204, '2020_03_22_162246_create_tans_bodies_table', 0),
(205, '2020_03_22_162246_create_translatables_table', 0),
(206, '2020_03_22_162246_create_types_table', 0),
(207, '2020_03_22_162246_create_users_table', 0),
(208, '2020_03_22_162246_create_user_has_permissions_table', 0),
(209, '2020_03_22_162246_create_user_has_roles_table', 0),
(210, '2020_03_22_162251_add_foreign_keys_to_audios_table', 0),
(211, '2020_03_22_162251_add_foreign_keys_to_contents_table', 0),
(212, '2020_03_22_162251_add_foreign_keys_to_delete_all_flags_table', 0),
(213, '2020_03_22_162251_add_foreign_keys_to_operators_table', 0),
(214, '2020_03_22_162251_add_foreign_keys_to_posts_table', 0),
(215, '2020_03_22_162251_add_foreign_keys_to_relations_table', 0),
(216, '2020_03_22_162251_add_foreign_keys_to_role_has_permissions_table', 0),
(217, '2020_03_22_162251_add_foreign_keys_to_role_route_table', 0),
(218, '2020_03_22_162251_add_foreign_keys_to_services_table', 0),
(219, '2020_03_22_162251_add_foreign_keys_to_settings_table', 0),
(220, '2020_03_22_162251_add_foreign_keys_to_static_bodies_table', 0),
(221, '2020_03_22_162251_add_foreign_keys_to_tans_bodies_table', 0),
(222, '2020_03_22_162251_add_foreign_keys_to_user_has_permissions_table', 0),
(223, '2020_03_22_162251_add_foreign_keys_to_user_has_roles_table', 0),
(224, '2020_02_16_093648_myisam_to_innodb', 13),
(225, '2020_04_16_090834_add_index_to_providers_table', 14),
(226, '2020_04_16_113325_add_index_to_services_table', 14),
(227, '2020_04_16_144305_change_image_in_providers_table', 14),
(228, '2020_04_16_145717_add_setting_value', 14),
(229, '2020_04_17_140838_add_slider_to_post', 15),
(230, '2020_04_23_114128_add_ooredoo_operator', 16),
(231, '2020_04_23_115001_create_tim_wes_table', 16),
(232, '2020_04_29_143429_create_imi_requests_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `operator_image`, `created_at`, `updated_at`, `code`, `country_id`) VALUES
(7, 'etislat', 'uploads/operators/5c2b237670d66.jpg', '2018-12-27 18:23:45', '2019-01-01 13:23:25', 1500, 2),
(8, 'orange', 'uploads/operators/5c2b236e9e890.jpg', '2019-01-01 13:23:10', '2019-01-01 13:23:10', 9999, 2),
(9, 'omantel', 'uploads/operators/5e7caa88d6f8d.png', '2020-03-26 17:13:44', '2020-04-09 18:54:19', 9999, 4),
(10, 'du', 'uploads/operators/5e7f2d823b601.png', '2020-03-28 14:57:06', '2020-04-09 18:54:25', 5555, 5),
(12, 'ooredoo', 'uploads/operators/5ea0694c3210a.png', '2020-04-22 11:57:00', '2020-04-22 11:57:00', 12121, 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `operator_id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `show_date` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = add to slider /0 = not slider'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `operator_id`, `video_id`, `show_date`, `active`, `created_at`, `updated_at`, `slider`) VALUES
(35, 9, 71, '2020-04-13', 0, '2020-04-14 03:54:48', '2020-04-17 12:37:20', 1),
(36, 10, 71, '2020-04-13', 0, '2020-04-14 03:54:48', '2020-04-14 03:54:48', 0),
(37, 9, 72, '2020-04-13', 0, '2020-04-14 03:55:02', '2020-04-17 12:46:22', 1),
(38, 10, 72, '2020-04-13', 0, '2020-04-14 03:55:02', '2020-04-14 03:55:02', 0),
(39, 9, 73, '2020-04-13', 0, '2020-04-14 03:55:17', '2020-04-14 03:55:17', 0),
(40, 10, 73, '2020-04-13', 0, '2020-04-14 03:55:17', '2020-04-14 03:55:17', 0),
(41, 9, 74, '2020-04-13', 0, '2020-04-14 03:55:31', '2020-04-14 03:55:31', 0),
(42, 10, 74, '2020-04-13', 0, '2020-04-14 03:55:31', '2020-04-14 03:55:31', 0),
(43, 9, 75, '2020-04-13', 0, '2020-04-14 03:55:44', '2020-04-14 03:55:44', 0),
(44, 10, 75, '2020-04-13', 0, '2020-04-14 03:55:44', '2020-04-14 03:55:44', 0),
(45, 9, 76, '2020-04-13', 0, '2020-04-14 03:55:58', '2020-04-14 03:55:58', 0),
(46, 10, 76, '2020-04-13', 0, '2020-04-14 03:55:58', '2020-04-14 03:55:58', 0),
(47, 9, 77, '2020-04-13', 0, '2020-04-14 03:56:17', '2020-04-14 03:56:17', 0),
(48, 10, 77, '2020-04-13', 0, '2020-04-14 03:56:17', '2020-04-14 03:56:17', 0),
(49, 9, 78, '2020-04-13', 0, '2020-04-14 03:56:38', '2020-04-14 03:56:38', 0),
(50, 10, 78, '2020-04-13', 0, '2020-04-14 03:56:38', '2020-04-14 03:56:38', 0),
(51, 9, 79, '2020-04-13', 0, '2020-04-14 03:56:51', '2020-04-14 03:56:51', 0),
(52, 10, 79, '2020-04-13', 0, '2020-04-14 03:56:51', '2020-04-14 03:56:51', 0),
(53, 9, 80, '2020-04-13', 0, '2020-04-14 03:57:07', '2020-04-14 03:57:07', 0),
(54, 10, 80, '2020-04-13', 0, '2020-04-14 03:57:07', '2020-04-14 03:57:07', 0),
(95, 9, 101, '2020-04-13', 0, '2020-04-14 04:04:45', '2020-04-14 04:04:45', 0),
(96, 10, 101, '2020-04-13', 0, '2020-04-14 04:04:45', '2020-04-14 04:04:45', 0),
(97, 9, 102, '2020-04-13', 0, '2020-04-14 04:05:02', '2020-04-14 04:05:02', 0),
(98, 10, 102, '2020-04-13', 0, '2020-04-14 04:05:02', '2020-04-14 04:05:02', 0),
(99, 9, 103, '2020-04-13', 0, '2020-04-14 04:05:22', '2020-04-14 04:05:22', 0),
(100, 10, 103, '2020-04-13', 0, '2020-04-14 04:05:22', '2020-04-14 04:05:22', 0),
(101, 9, 104, '2020-04-13', 0, '2020-04-14 04:05:42', '2020-04-14 04:05:42', 0),
(102, 10, 104, '2020-04-13', 0, '2020-04-14 04:05:42', '2020-04-14 04:05:42', 0),
(103, 9, 105, '2020-04-13', 0, '2020-04-14 04:06:01', '2020-04-14 04:06:01', 0),
(104, 10, 105, '2020-04-13', 0, '2020-04-14 04:06:01', '2020-04-14 04:06:01', 0),
(105, 9, 106, '2020-04-13', 0, '2020-04-14 04:06:16', '2020-04-14 04:06:16', 0),
(106, 10, 106, '2020-04-13', 0, '2020-04-14 04:06:16', '2020-04-14 04:06:16', 0),
(107, 9, 107, '2020-04-13', 0, '2020-04-14 04:06:36', '2020-04-14 04:06:36', 0),
(108, 10, 107, '2020-04-13', 0, '2020-04-14 04:06:36', '2020-04-14 04:06:36', 0),
(109, 9, 108, '2020-04-13', 0, '2020-04-14 04:06:53', '2020-04-14 04:06:53', 0),
(110, 10, 108, '2020-04-13', 0, '2020-04-14 04:06:53', '2020-04-14 04:06:53', 0),
(111, 9, 109, '2020-04-13', 0, '2020-04-14 04:07:42', '2020-04-14 04:07:42', 0),
(112, 10, 109, '2020-04-13', 0, '2020-04-14 04:07:42', '2020-04-14 04:07:42', 0),
(113, 9, 110, '2020-04-13', 0, '2020-04-14 04:08:02', '2020-04-14 04:08:02', 0),
(114, 10, 110, '2020-04-13', 0, '2020-04-14 04:08:02', '2020-04-14 04:08:02', 0),
(115, 9, 111, '2020-04-13', 0, '2020-04-14 04:08:31', '2020-04-14 04:08:31', 0),
(116, 10, 111, '2020-04-13', 0, '2020-04-14 04:08:31', '2020-04-14 04:08:31', 0),
(117, 9, 112, '2020-04-13', 0, '2020-04-14 04:08:53', '2020-04-14 04:08:53', 0),
(118, 10, 112, '2020-04-13', 0, '2020-04-14 04:08:53', '2020-04-14 04:08:53', 0),
(119, 9, 113, '2020-04-13', 0, '2020-04-14 04:09:16', '2020-04-14 04:09:16', 0),
(120, 10, 113, '2020-04-13', 0, '2020-04-14 04:09:16', '2020-04-14 04:09:16', 0),
(121, 9, 114, '2020-04-13', 0, '2020-04-14 04:09:35', '2020-04-14 04:09:35', 0),
(122, 10, 114, '2020-04-13', 0, '2020-04-14 04:09:35', '2020-04-14 04:09:35', 0),
(123, 9, 115, '2020-04-13', 0, '2020-04-14 04:09:59', '2020-04-14 04:09:59', 0),
(124, 10, 115, '2020-04-13', 0, '2020-04-14 04:09:59', '2020-04-14 04:09:59', 0),
(125, 9, 116, '2020-04-13', 0, '2020-04-14 04:11:15', '2020-04-14 04:11:15', 0),
(126, 10, 116, '2020-04-13', 0, '2020-04-14 04:11:15', '2020-04-14 04:11:15', 0),
(127, 9, 117, '2020-04-13', 0, '2020-04-14 04:11:37', '2020-04-14 04:11:37', 0),
(128, 10, 117, '2020-04-13', 0, '2020-04-14 04:11:37', '2020-04-14 04:11:37', 0),
(129, 9, 118, '2020-04-13', 0, '2020-04-14 04:11:59', '2020-04-14 04:11:59', 0),
(130, 10, 118, '2020-04-13', 0, '2020-04-14 04:11:59', '2020-04-14 04:11:59', 0),
(131, 9, 119, '2020-04-13', 0, '2020-04-14 04:12:28', '2020-04-14 04:12:28', 0),
(132, 10, 119, '2020-04-13', 0, '2020-04-14 04:12:28', '2020-04-14 04:12:28', 0),
(133, 9, 120, '2020-04-13', 0, '2020-04-14 04:13:11', '2020-04-14 04:13:11', 0),
(134, 10, 120, '2020-04-13', 0, '2020-04-14 04:13:11', '2020-04-14 04:13:11', 0),
(135, 9, 121, '2020-04-13', 0, '2020-04-14 04:13:43', '2020-04-14 04:13:43', 0),
(136, 10, 121, '2020-04-13', 0, '2020-04-14 04:13:43', '2020-04-14 04:13:43', 0),
(137, 9, 122, '2020-04-13', 0, '2020-04-14 04:14:00', '2020-04-14 04:14:00', 0),
(138, 10, 122, '2020-04-13', 0, '2020-04-14 04:14:00', '2020-04-14 04:14:00', 0),
(139, 9, 123, '2020-04-13', 0, '2020-04-14 04:15:35', '2020-04-14 04:15:35', 0),
(140, 10, 123, '2020-04-13', 0, '2020-04-14 04:15:35', '2020-04-14 04:15:35', 0),
(141, 9, 124, '2020-04-13', 0, '2020-04-14 04:15:55', '2020-04-14 04:15:55', 0),
(142, 10, 124, '2020-04-13', 0, '2020-04-14 04:15:55', '2020-04-14 04:15:55', 0),
(143, 9, 125, '2020-04-13', 0, '2020-04-14 04:16:16', '2020-04-14 04:16:16', 0),
(144, 10, 125, '2020-04-13', 0, '2020-04-14 04:16:16', '2020-04-14 04:16:16', 0),
(145, 9, 126, '2020-04-13', 0, '2020-04-14 04:16:36', '2020-04-14 04:16:36', 0),
(146, 10, 126, '2020-04-13', 0, '2020-04-14 04:16:36', '2020-04-14 04:16:36', 0),
(147, 9, 127, '2020-04-13', 0, '2020-04-14 04:16:53', '2020-04-14 04:16:53', 0),
(148, 10, 127, '2020-04-13', 0, '2020-04-14 04:16:53', '2020-04-14 04:16:53', 0),
(149, 9, 128, '2020-04-13', 0, '2020-04-14 04:17:10', '2020-04-14 04:17:10', 0),
(150, 10, 128, '2020-04-13', 0, '2020-04-14 04:17:10', '2020-04-14 04:17:10', 0),
(151, 9, 129, '2020-04-13', 0, '2020-04-14 04:17:31', '2020-04-14 04:17:31', 0),
(152, 10, 129, '2020-04-13', 0, '2020-04-14 04:17:31', '2020-04-14 04:17:31', 0),
(153, 9, 130, '2020-04-13', 0, '2020-04-14 04:17:46', '2020-04-14 04:17:46', 0),
(154, 10, 130, '2020-04-13', 0, '2020-04-14 04:17:46', '2020-04-14 04:17:46', 0),
(155, 9, 131, '2020-04-13', 0, '2020-04-14 04:18:09', '2020-04-14 04:18:09', 0),
(156, 10, 131, '2020-04-13', 0, '2020-04-14 04:18:09', '2020-04-14 04:18:09', 0),
(157, 9, 132, '2020-04-13', 0, '2020-04-14 04:18:29', '2020-04-14 04:18:29', 0),
(158, 10, 132, '2020-04-13', 0, '2020-04-14 04:18:29', '2020-04-14 04:18:29', 0),
(159, 9, 133, '2020-04-13', 0, '2020-04-14 04:18:46', '2020-04-14 04:18:46', 0),
(160, 10, 133, '2020-04-13', 0, '2020-04-14 04:18:46', '2020-04-14 04:18:46', 0),
(161, 9, 134, '2020-04-13', 0, '2020-04-14 04:19:05', '2020-04-14 04:19:05', 0),
(162, 10, 134, '2020-04-13', 0, '2020-04-14 04:19:05', '2020-04-14 04:19:05', 0),
(163, 9, 135, '2020-04-13', 0, '2020-04-14 04:19:30', '2020-04-14 04:19:30', 0),
(164, 10, 135, '2020-04-13', 0, '2020-04-14 04:19:30', '2020-04-14 04:19:30', 0),
(165, 9, 137, '2020-04-13', 0, '2020-04-14 04:19:49', '2020-04-14 04:19:49', 0),
(166, 10, 137, '2020-04-13', 0, '2020-04-14 04:19:49', '2020-04-14 04:19:49', 0),
(167, 9, 138, '2020-04-13', 0, '2020-04-14 04:20:14', '2020-04-14 04:20:14', 0),
(168, 10, 138, '2020-04-13', 0, '2020-04-14 04:20:14', '2020-04-14 04:20:14', 0),
(169, 9, 139, '2020-04-13', 0, '2020-04-14 04:20:29', '2020-04-14 04:20:29', 0),
(170, 10, 139, '2020-04-13', 0, '2020-04-14 04:20:29', '2020-04-14 04:20:29', 0),
(171, 9, 140, '2020-04-13', 0, '2020-04-14 04:20:45', '2020-04-14 04:20:45', 0),
(172, 10, 140, '2020-04-13', 0, '2020-04-14 04:20:45', '2020-04-14 04:20:45', 0),
(173, 9, 141, '2020-04-13', 0, '2020-04-14 04:21:03', '2020-04-14 04:21:03', 0),
(174, 10, 141, '2020-04-13', 0, '2020-04-14 04:21:03', '2020-04-14 04:21:03', 0),
(175, 9, 142, '2020-04-14', 0, '2020-04-15 03:50:56', '2020-04-15 03:50:56', 0),
(176, 10, 142, '2020-04-14', 0, '2020-04-15 03:50:56', '2020-04-15 03:50:56', 0),
(177, 9, 143, '2020-04-14', 0, '2020-04-15 03:52:18', '2020-04-15 03:52:18', 0),
(178, 10, 143, '2020-04-14', 0, '2020-04-15 03:52:18', '2020-04-15 03:52:18', 0),
(179, 9, 144, '2020-04-14', 0, '2020-04-15 03:53:21', '2020-04-15 03:53:21', 0),
(180, 10, 144, '2020-04-14', 0, '2020-04-15 03:53:21', '2020-04-15 03:53:21', 0),
(181, 9, 145, '2020-04-14', 0, '2020-04-15 03:54:21', '2020-04-15 03:54:21', 0),
(182, 10, 145, '2020-04-14', 0, '2020-04-15 03:54:21', '2020-04-15 03:54:21', 0),
(183, 9, 146, '2020-04-14', 0, '2020-04-15 03:55:11', '2020-04-15 03:55:11', 0),
(184, 10, 146, '2020-04-14', 0, '2020-04-15 03:55:11', '2020-04-15 03:55:11', 0),
(185, 9, 147, '2020-04-14', 0, '2020-04-15 03:55:59', '2020-04-15 03:55:59', 0),
(186, 10, 147, '2020-04-14', 0, '2020-04-15 03:55:59', '2020-04-15 03:55:59', 0),
(187, 9, 148, '2020-04-14', 0, '2020-04-15 03:57:04', '2020-04-15 03:57:04', 0),
(188, 10, 148, '2020-04-14', 0, '2020-04-15 03:57:04', '2020-04-15 03:57:04', 0),
(189, 9, 149, '2020-04-14', 0, '2020-04-15 03:58:19', '2020-04-15 03:58:19', 0),
(190, 10, 149, '2020-04-14', 0, '2020-04-15 03:58:19', '2020-04-15 03:58:19', 0),
(191, 9, 150, '2020-04-14', 0, '2020-04-15 03:59:11', '2020-04-15 03:59:11', 0),
(192, 10, 150, '2020-04-14', 0, '2020-04-15 03:59:11', '2020-04-15 03:59:11', 0),
(193, 9, 151, '2020-04-14', 0, '2020-04-15 03:59:47', '2020-04-15 03:59:47', 0),
(194, 10, 151, '2020-04-14', 0, '2020-04-15 03:59:47', '2020-04-15 03:59:47', 0),
(195, 9, 152, '2020-04-15', 0, '2020-04-15 04:00:29', '2020-04-15 04:00:29', 0),
(196, 10, 152, '2020-04-15', 0, '2020-04-15 04:00:29', '2020-04-15 04:00:29', 0),
(197, 9, 153, '2020-04-15', 0, '2020-04-15 04:01:16', '2020-04-15 04:01:16', 0),
(198, 10, 153, '2020-04-15', 0, '2020-04-15 04:01:16', '2020-04-15 04:01:16', 0),
(199, 9, 154, '2020-04-15', 0, '2020-04-15 04:01:59', '2020-04-15 04:01:59', 0),
(200, 10, 154, '2020-04-15', 0, '2020-04-15 04:01:59', '2020-04-15 04:01:59', 0),
(201, 9, 155, '2020-04-14', 0, '2020-04-15 04:02:47', '2020-04-15 04:02:47', 0),
(202, 10, 155, '2020-04-14', 0, '2020-04-15 04:02:47', '2020-04-15 04:02:47', 0),
(203, 9, 156, '2020-04-15', 0, '2020-04-15 04:03:27', '2020-04-15 04:03:27', 0),
(204, 10, 156, '2020-04-15', 0, '2020-04-15 04:03:27', '2020-04-15 04:03:27', 0),
(205, 9, 157, '2020-04-14', 0, '2020-04-15 04:04:13', '2020-04-15 04:04:13', 0),
(206, 10, 157, '2020-04-14', 0, '2020-04-15 04:04:13', '2020-04-15 04:04:13', 0),
(207, 9, 158, '2020-04-14', 0, '2020-04-15 04:05:07', '2020-04-15 04:05:07', 0),
(208, 10, 158, '2020-04-14', 0, '2020-04-15 04:05:07', '2020-04-15 04:05:07', 0),
(209, 9, 159, '2020-04-14', 0, '2020-04-15 04:06:01', '2020-04-15 04:06:01', 0),
(210, 10, 159, '2020-04-14', 0, '2020-04-15 04:06:01', '2020-04-15 04:06:01', 0),
(211, 9, 160, '2020-04-15', 0, '2020-04-15 04:06:44', '2020-04-15 04:06:44', 0),
(212, 10, 160, '2020-04-15', 0, '2020-04-15 04:06:44', '2020-04-15 04:06:44', 0),
(213, 9, 161, '2020-04-14', 0, '2020-04-15 04:07:30', '2020-04-15 04:07:30', 0),
(214, 10, 161, '2020-04-14', 0, '2020-04-15 04:07:30', '2020-04-15 04:07:30', 0),
(235, 9, 221, '2020-04-14', 0, '2020-04-15 04:15:28', '2020-04-15 04:15:28', 0),
(236, 10, 221, '2020-04-14', 0, '2020-04-15 04:15:28', '2020-04-15 04:15:28', 0),
(237, 9, 220, '2020-04-14', 0, '2020-04-15 04:16:00', '2020-04-15 04:16:00', 0),
(238, 10, 220, '2020-04-14', 0, '2020-04-15 04:16:00', '2020-04-15 04:16:00', 0),
(239, 9, 219, '2020-04-14', 0, '2020-04-15 04:16:16', '2020-04-15 04:16:16', 0),
(240, 10, 219, '2020-04-14', 0, '2020-04-15 04:16:16', '2020-04-15 04:16:16', 0),
(241, 9, 218, '2020-04-14', 0, '2020-04-15 04:16:32', '2020-04-15 04:16:32', 0),
(242, 10, 218, '2020-04-14', 0, '2020-04-15 04:16:32', '2020-04-15 04:16:32', 0),
(243, 9, 217, '2020-04-14', 0, '2020-04-15 04:16:47', '2020-04-15 04:16:47', 0),
(244, 10, 217, '2020-04-14', 0, '2020-04-15 04:16:47', '2020-04-15 04:16:47', 0),
(245, 9, 216, '2020-04-14', 0, '2020-04-15 04:17:08', '2020-04-15 04:17:08', 0),
(246, 10, 216, '2020-04-14', 0, '2020-04-15 04:17:08', '2020-04-15 04:17:08', 0),
(247, 9, 215, '2020-04-14', 0, '2020-04-15 05:04:36', '2020-04-15 05:04:36', 0),
(248, 10, 215, '2020-04-14', 0, '2020-04-15 05:04:36', '2020-04-15 05:04:36', 0),
(249, 9, 214, '2020-04-14', 0, '2020-04-15 05:06:11', '2020-04-15 05:06:11', 0),
(250, 10, 214, '2020-04-14', 0, '2020-04-15 05:06:11', '2020-04-15 05:06:11', 0),
(251, 9, 213, '2020-04-14', 0, '2020-04-15 05:06:38', '2020-04-15 05:06:38', 0),
(252, 10, 213, '2020-04-14', 0, '2020-04-15 05:06:38', '2020-04-15 05:06:38', 0),
(253, 9, 212, '2020-04-14', 0, '2020-04-15 05:07:00', '2020-04-15 05:07:00', 0),
(254, 10, 212, '2020-04-14', 0, '2020-04-15 05:07:00', '2020-04-15 05:07:00', 0),
(255, 9, 211, '2020-04-14', 0, '2020-04-15 05:07:21', '2020-04-15 05:07:21', 0),
(256, 10, 211, '2020-04-14', 0, '2020-04-15 05:07:21', '2020-04-15 05:07:21', 0),
(257, 9, 210, '2020-04-14', 0, '2020-04-15 05:07:50', '2020-04-15 05:07:50', 0),
(258, 10, 210, '2020-04-14', 0, '2020-04-15 05:07:50', '2020-04-15 05:07:50', 0),
(259, 9, 209, '2020-04-14', 0, '2020-04-15 05:08:11', '2020-04-15 05:08:11', 0),
(260, 10, 209, '2020-04-14', 0, '2020-04-15 05:08:11', '2020-04-15 05:08:11', 0),
(261, 9, 208, '2020-04-14', 0, '2020-04-15 05:08:40', '2020-04-15 05:08:40', 0),
(262, 10, 208, '2020-04-14', 0, '2020-04-15 05:08:40', '2020-04-15 05:08:40', 0),
(263, 9, 207, '2020-04-14', 0, '2020-04-15 05:09:05', '2020-04-15 05:09:05', 0),
(264, 10, 207, '2020-04-14', 0, '2020-04-15 05:09:05', '2020-04-15 05:09:05', 0),
(265, 9, 206, '2020-04-14', 0, '2020-04-15 05:13:00', '2020-04-15 05:13:00', 0),
(266, 10, 206, '2020-04-14', 0, '2020-04-15 05:13:00', '2020-04-15 05:13:00', 0),
(267, 9, 205, '2020-04-14', 0, '2020-04-15 05:13:19', '2020-04-15 05:13:19', 0),
(268, 10, 205, '2020-04-14', 0, '2020-04-15 05:13:19', '2020-04-15 05:13:19', 0),
(269, 9, 204, '2020-04-14', 0, '2020-04-15 05:13:47', '2020-04-15 05:13:47', 0),
(270, 10, 204, '2020-04-14', 0, '2020-04-15 05:13:47', '2020-04-15 05:13:47', 0),
(271, 9, 203, '2020-04-14', 0, '2020-04-15 05:14:35', '2020-04-15 05:14:35', 0),
(272, 10, 203, '2020-04-14', 0, '2020-04-15 05:14:35', '2020-04-15 05:14:35', 0),
(273, 9, 202, '2020-04-14', 0, '2020-04-15 05:14:57', '2020-04-15 05:14:57', 0),
(274, 10, 202, '2020-04-14', 0, '2020-04-15 05:14:57', '2020-04-15 05:14:57', 0),
(275, 9, 201, '2020-04-14', 0, '2020-04-15 05:15:30', '2020-04-15 05:15:30', 0),
(276, 10, 201, '2020-04-14', 0, '2020-04-15 05:15:30', '2020-04-15 05:15:30', 0),
(277, 9, 200, '2020-04-14', 0, '2020-04-15 05:15:53', '2020-04-15 05:15:53', 0),
(278, 10, 200, '2020-04-14', 0, '2020-04-15 05:15:53', '2020-04-15 05:15:53', 0),
(279, 9, 199, '2020-04-14', 0, '2020-04-15 05:16:48', '2020-04-15 05:16:48', 0),
(280, 10, 199, '2020-04-14', 0, '2020-04-15 05:16:48', '2020-04-15 05:16:48', 0),
(281, 9, 198, '2020-04-14', 0, '2020-04-15 05:17:13', '2020-04-15 05:17:13', 0),
(282, 10, 198, '2020-04-14', 0, '2020-04-15 05:17:13', '2020-04-15 05:17:13', 0),
(283, 9, 197, '2020-04-14', 0, '2020-04-15 05:18:00', '2020-04-15 05:18:00', 0),
(284, 10, 197, '2020-04-14', 0, '2020-04-15 05:18:00', '2020-04-15 05:18:00', 0),
(285, 9, 196, '2020-04-14', 0, '2020-04-15 05:18:23', '2020-04-15 05:18:23', 0),
(286, 10, 196, '2020-04-14', 0, '2020-04-15 05:18:23', '2020-04-15 05:18:23', 0),
(287, 9, 195, '2020-04-14', 0, '2020-04-15 05:18:48', '2020-04-15 05:18:48', 0),
(288, 10, 195, '2020-04-14', 0, '2020-04-15 05:18:48', '2020-04-15 05:18:48', 0),
(289, 9, 194, '2020-04-14', 0, '2020-04-15 05:19:19', '2020-04-15 05:19:19', 0),
(290, 10, 194, '2020-04-14', 0, '2020-04-15 05:19:19', '2020-04-15 05:19:19', 0),
(291, 9, 193, '2020-04-14', 0, '2020-04-15 05:19:49', '2020-04-15 05:19:49', 0),
(292, 10, 193, '2020-04-14', 0, '2020-04-15 05:19:49', '2020-04-15 05:19:49', 0),
(293, 9, 192, '2020-04-14', 0, '2020-04-15 05:20:21', '2020-04-15 05:20:21', 0),
(294, 10, 192, '2020-04-14', 0, '2020-04-15 05:20:21', '2020-04-15 05:20:21', 0),
(295, 9, 191, '2020-04-14', 0, '2020-04-15 05:20:54', '2020-04-15 05:20:54', 0),
(296, 10, 191, '2020-04-14', 0, '2020-04-15 05:20:54', '2020-04-15 05:20:54', 0),
(297, 9, 190, '2020-04-14', 0, '2020-04-15 05:21:18', '2020-04-15 05:21:18', 0),
(298, 10, 190, '2020-04-14', 0, '2020-04-15 05:21:18', '2020-04-15 05:21:18', 0),
(299, 9, 189, '2020-04-14', 0, '2020-04-15 05:21:54', '2020-04-15 05:21:54', 0),
(300, 10, 189, '2020-04-14', 0, '2020-04-15 05:21:54', '2020-04-15 05:21:54', 0),
(301, 9, 188, '2020-04-14', 0, '2020-04-15 05:22:17', '2020-04-15 05:22:17', 0),
(302, 10, 188, '2020-04-14', 0, '2020-04-15 05:22:17', '2020-04-15 05:22:17', 0),
(303, 9, 187, '2020-04-14', 0, '2020-04-15 05:22:52', '2020-04-15 05:22:52', 0),
(304, 10, 187, '2020-04-14', 0, '2020-04-15 05:22:52', '2020-04-15 05:22:52', 0),
(305, 9, 186, '2020-04-14', 0, '2020-04-15 05:23:34', '2020-04-15 05:23:34', 0),
(306, 10, 186, '2020-04-14', 0, '2020-04-15 05:23:34', '2020-04-15 05:23:34', 0),
(307, 9, 185, '2020-04-14', 0, '2020-04-15 05:24:12', '2020-04-15 05:24:12', 0),
(308, 10, 185, '2020-04-14', 0, '2020-04-15 05:24:12', '2020-04-15 05:24:12', 0),
(309, 9, 184, '2020-04-14', 0, '2020-04-15 05:26:12', '2020-04-15 05:26:12', 0),
(310, 10, 184, '2020-04-14', 0, '2020-04-15 05:26:12', '2020-04-15 05:26:12', 0),
(311, 9, 183, '2020-04-14', 0, '2020-04-15 05:26:43', '2020-04-15 05:26:43', 0),
(312, 10, 183, '2020-04-14', 0, '2020-04-15 05:26:43', '2020-04-15 05:26:43', 0),
(313, 9, 182, '2020-04-14', 0, '2020-04-15 05:27:27', '2020-04-15 05:27:27', 0),
(314, 10, 182, '2020-04-14', 0, '2020-04-15 05:27:27', '2020-04-15 05:27:27', 0),
(315, 9, 181, '2020-04-14', 0, '2020-04-15 05:27:54', '2020-04-15 05:27:54', 0),
(316, 10, 181, '2020-04-14', 0, '2020-04-15 05:27:54', '2020-04-15 05:27:54', 0),
(317, 9, 180, '2020-04-14', 0, '2020-04-15 05:28:41', '2020-04-15 05:28:41', 0),
(318, 10, 180, '2020-04-14', 0, '2020-04-15 05:28:41', '2020-04-15 05:28:41', 0),
(335, 9, 245, '2020-04-15', 0, '2020-04-15 22:17:30', '2020-04-15 22:17:30', 0),
(336, 10, 245, '2020-04-15', 0, '2020-04-15 22:17:30', '2020-04-15 22:17:30', 0),
(337, 9, 244, '2020-04-15', 0, '2020-04-15 22:17:50', '2020-04-15 22:17:50', 0),
(338, 10, 244, '2020-04-15', 0, '2020-04-15 22:17:50', '2020-04-15 22:17:50', 0),
(339, 9, 246, '2020-04-15', 0, '2020-04-15 22:20:18', '2020-04-15 22:20:18', 0),
(340, 10, 246, '2020-04-15', 0, '2020-04-15 22:20:18', '2020-04-15 22:20:18', 0),
(341, 9, 248, '2020-04-15', 0, '2020-04-15 22:24:43', '2020-04-15 22:24:43', 0),
(342, 10, 248, '2020-04-15', 0, '2020-04-15 22:24:43', '2020-04-15 22:24:43', 0),
(343, 9, 247, '2020-04-15', 0, '2020-04-15 22:28:13', '2020-04-15 22:28:13', 0),
(344, 10, 247, '2020-04-15', 0, '2020-04-15 22:28:13', '2020-04-15 22:28:13', 0),
(345, 9, 255, '2020-04-15', 0, '2020-04-16 01:08:33', '2020-04-16 01:08:33', 0),
(346, 10, 255, '2020-04-15', 0, '2020-04-16 01:08:33', '2020-04-16 01:08:33', 0),
(347, 9, 254, '2020-04-15', 0, '2020-04-16 01:09:30', '2020-04-16 01:09:30', 0),
(348, 10, 254, '2020-04-15', 0, '2020-04-16 01:09:30', '2020-04-16 01:09:30', 0),
(349, 9, 252, '2020-04-15', 0, '2020-04-16 01:11:17', '2020-04-16 01:11:17', 0),
(350, 10, 252, '2020-04-15', 0, '2020-04-16 01:11:17', '2020-04-16 01:11:17', 0),
(351, 9, 251, '2020-04-15', 0, '2020-04-16 01:15:21', '2020-04-16 01:15:21', 0),
(352, 10, 251, '2020-04-15', 0, '2020-04-16 01:15:21', '2020-04-16 01:15:21', 0),
(353, 9, 250, '2020-04-15', 0, '2020-04-16 01:16:04', '2020-04-16 01:16:04', 0),
(354, 10, 250, '2020-04-15', 0, '2020-04-16 01:16:04', '2020-04-16 01:16:04', 0),
(355, 9, 253, '2020-04-14', 0, '2020-04-16 01:19:23', '2020-04-16 01:19:23', 0),
(356, 10, 253, '2020-04-14', 0, '2020-04-16 01:19:23', '2020-04-16 01:19:23', 0),
(359, 9, 256, '2020-04-14', 0, '2020-04-16 01:20:24', '2020-04-16 01:20:24', 0),
(360, 10, 256, '2020-04-14', 0, '2020-04-16 01:20:24', '2020-04-16 01:20:24', 0),
(361, 9, 222, '2020-04-14', 0, '2020-04-16 01:21:26', '2020-04-16 01:21:26', 0),
(362, 10, 222, '2020-04-14', 0, '2020-04-16 01:21:26', '2020-04-16 01:21:26', 0),
(365, 9, 241, '2020-04-14', 0, '2020-04-16 01:22:15', '2020-04-16 01:22:15', 0),
(366, 10, 241, '2020-04-14', 0, '2020-04-16 01:22:15', '2020-04-16 01:22:15', 0),
(367, 9, 240, '2020-04-14', 0, '2020-04-16 01:22:36', '2020-04-16 01:22:36', 0),
(368, 10, 240, '2020-04-14', 0, '2020-04-16 01:22:36', '2020-04-16 01:22:36', 0),
(369, 9, 239, '2020-04-14', 0, '2020-04-16 01:23:01', '2020-04-16 01:23:01', 0),
(370, 10, 239, '2020-04-14', 0, '2020-04-16 01:23:01', '2020-04-16 01:23:01', 0),
(371, 9, 238, '2020-04-14', 0, '2020-04-16 01:24:20', '2020-04-16 01:24:20', 0),
(372, 10, 238, '2020-04-14', 0, '2020-04-16 01:24:20', '2020-04-16 01:24:20', 0),
(373, 9, 237, '2020-04-14', 0, '2020-04-16 01:24:45', '2020-04-16 01:24:45', 0),
(374, 10, 237, '2020-04-14', 0, '2020-04-16 01:24:45', '2020-04-16 01:24:45', 0),
(375, 9, 236, '2020-04-14', 0, '2020-04-16 01:25:19', '2020-04-16 01:25:19', 0),
(376, 10, 236, '2020-04-14', 0, '2020-04-16 01:25:19', '2020-04-16 01:25:19', 0),
(377, 9, 235, '2020-04-14', 0, '2020-04-16 01:25:46', '2020-04-16 01:25:46', 0),
(378, 10, 235, '2020-04-14', 0, '2020-04-16 01:25:46', '2020-04-16 01:25:46', 0),
(379, 9, 234, '2020-04-14', 0, '2020-04-16 01:26:15', '2020-04-16 01:26:15', 0),
(380, 10, 234, '2020-04-14', 0, '2020-04-16 01:26:15', '2020-04-16 01:26:15', 0),
(381, 9, 233, '2020-04-14', 0, '2020-04-16 01:26:37', '2020-04-16 01:26:37', 0),
(382, 10, 233, '2020-04-14', 0, '2020-04-16 01:26:37', '2020-04-16 01:26:37', 0),
(383, 9, 232, '2020-04-14', 0, '2020-04-16 01:27:04', '2020-04-16 01:27:04', 0),
(384, 10, 232, '2020-04-14', 0, '2020-04-16 01:27:04', '2020-04-16 01:27:04', 0),
(385, 9, 231, '2020-04-14', 0, '2020-04-16 01:27:33', '2020-04-16 01:27:33', 0),
(386, 10, 231, '2020-04-14', 0, '2020-04-16 01:27:33', '2020-04-16 01:27:33', 0),
(387, 9, 230, '2020-04-14', 0, '2020-04-16 01:27:57', '2020-04-16 01:27:57', 0),
(388, 10, 230, '2020-04-14', 0, '2020-04-16 01:27:57', '2020-04-16 01:27:57', 0),
(389, 9, 229, '2020-04-14', 0, '2020-04-16 01:28:23', '2020-04-16 01:28:23', 0),
(390, 10, 229, '2020-04-14', 0, '2020-04-16 01:28:23', '2020-04-16 01:28:23', 0),
(391, 9, 228, '2020-04-14', 0, '2020-04-16 01:28:52', '2020-04-16 01:28:52', 0),
(392, 10, 228, '2020-04-14', 0, '2020-04-16 01:28:52', '2020-04-16 01:28:52', 0),
(393, 9, 227, '2020-04-14', 0, '2020-04-16 01:29:17', '2020-04-16 01:29:17', 0),
(394, 10, 227, '2020-04-14', 0, '2020-04-16 01:29:17', '2020-04-16 01:29:17', 0),
(395, 9, 226, '2020-04-14', 0, '2020-04-16 01:29:42', '2020-04-16 01:29:42', 0),
(396, 10, 226, '2020-04-14', 0, '2020-04-16 01:29:42', '2020-04-16 01:29:42', 0),
(397, 9, 225, '2020-04-14', 0, '2020-04-16 01:30:07', '2020-04-16 01:30:07', 0),
(398, 10, 225, '2020-04-14', 0, '2020-04-16 01:30:07', '2020-04-16 01:30:07', 0),
(399, 9, 224, '2020-04-14', 0, '2020-04-16 01:30:30', '2020-04-16 01:30:30', 0),
(400, 10, 224, '2020-04-14', 0, '2020-04-16 01:30:30', '2020-04-16 01:30:30', 0),
(401, 9, 223, '2020-04-14', 0, '2020-04-16 01:31:04', '2020-04-16 01:31:04', 0),
(402, 10, 223, '2020-04-14', 0, '2020-04-16 01:31:04', '2020-04-16 01:31:04', 0),
(403, 9, 264, '2020-04-15', 0, '2020-04-16 04:48:17', '2020-04-16 04:48:17', 0),
(404, 10, 264, '2020-04-15', 0, '2020-04-16 04:48:17', '2020-04-16 04:48:17', 0),
(405, 9, 263, '2020-04-15', 0, '2020-04-16 04:48:38', '2020-04-16 04:48:38', 0),
(406, 10, 263, '2020-04-15', 0, '2020-04-16 04:48:38', '2020-04-16 04:48:38', 0),
(407, 9, 262, '2020-04-15', 0, '2020-04-16 04:49:02', '2020-04-16 04:49:02', 0),
(408, 10, 262, '2020-04-15', 0, '2020-04-16 04:49:02', '2020-04-16 04:49:02', 0),
(411, 9, 260, '2020-04-15', 0, '2020-04-16 04:49:42', '2020-04-16 04:49:42', 0),
(412, 10, 260, '2020-04-15', 0, '2020-04-16 04:49:42', '2020-04-16 04:49:42', 0),
(413, 9, 259, '2020-04-15', 0, '2020-04-16 04:50:02', '2020-04-16 04:50:02', 0),
(414, 10, 259, '2020-04-15', 0, '2020-04-16 04:50:02', '2020-04-16 04:50:02', 0),
(415, 9, 258, '2020-04-15', 0, '2020-04-16 04:50:22', '2020-04-16 04:50:22', 0),
(416, 10, 258, '2020-04-15', 0, '2020-04-16 04:50:22', '2020-04-16 04:50:22', 0),
(417, 9, 257, '2020-04-15', 0, '2020-04-16 04:50:39', '2020-04-16 04:50:39', 0),
(418, 10, 257, '2020-04-15', 0, '2020-04-16 04:50:39', '2020-04-16 04:50:39', 0),
(419, 9, 265, '2020-04-14', 0, '2020-04-16 05:05:27', '2020-04-16 05:05:27', 0),
(420, 10, 265, '2020-04-14', 0, '2020-04-16 05:05:27', '2020-04-16 05:05:27', 0),
(421, 9, 266, '2020-04-15', 0, '2020-04-16 05:07:29', '2020-04-16 05:07:29', 0),
(422, 10, 266, '2020-04-15', 0, '2020-04-16 05:07:29', '2020-04-16 05:07:29', 0),
(423, 9, 267, '2020-04-15', 0, '2020-04-16 05:07:55', '2020-04-16 05:07:55', 0),
(424, 10, 267, '2020-04-15', 0, '2020-04-16 05:07:55', '2020-04-16 05:07:55', 0),
(425, 9, 269, '2020-04-15', 0, '2020-04-16 05:13:15', '2020-04-16 05:13:15', 0),
(426, 10, 269, '2020-04-15', 0, '2020-04-16 05:13:15', '2020-04-16 05:13:15', 0),
(427, 9, 268, '2020-04-15', 0, '2020-04-16 05:13:34', '2020-04-16 05:13:34', 0),
(428, 10, 268, '2020-04-15', 0, '2020-04-16 05:13:34', '2020-04-16 05:13:34', 0),
(429, 9, 271, '2020-04-15', 0, '2020-04-16 05:20:42', '2020-04-16 05:20:42', 0),
(430, 10, 271, '2020-04-15', 0, '2020-04-16 05:20:42', '2020-04-16 05:20:42', 0),
(431, 9, 270, '2020-04-15', 0, '2020-04-16 05:21:14', '2020-04-16 05:21:14', 0),
(432, 10, 270, '2020-04-15', 0, '2020-04-16 05:21:14', '2020-04-16 05:21:14', 0),
(433, 9, 272, '2020-04-15', 0, '2020-04-16 05:21:49', '2020-04-16 05:21:49', 0),
(434, 10, 272, '2020-04-15', 0, '2020-04-16 05:21:49', '2020-04-16 05:21:49', 0),
(435, 9, 273, '2020-04-15', 0, '2020-04-16 05:22:09', '2020-04-16 05:22:09', 0),
(436, 10, 273, '2020-04-15', 0, '2020-04-16 05:22:09', '2020-04-16 05:22:09', 0),
(437, 9, 274, '2020-04-15', 0, '2020-04-16 05:22:35', '2020-04-16 05:22:35', 0),
(438, 10, 274, '2020-04-15', 0, '2020-04-16 05:22:35', '2020-04-16 05:22:35', 0),
(439, 9, 275, '2020-04-15', 0, '2020-04-16 05:59:34', '2020-04-16 05:59:34', 0),
(440, 10, 275, '2020-04-15', 0, '2020-04-16 05:59:34', '2020-04-16 05:59:34', 0),
(441, 9, 275, '2020-04-16', 0, '2020-04-16 06:02:58', '2020-04-16 06:02:58', 0),
(442, 10, 275, '2020-04-16', 0, '2020-04-16 06:02:58', '2020-04-16 06:02:58', 0),
(443, 9, 276, '2020-04-15', 0, '2020-04-16 06:09:15', '2020-04-16 06:09:15', 0),
(444, 10, 276, '2020-04-15', 0, '2020-04-16 06:09:15', '2020-04-16 06:09:15', 0),
(445, 9, 277, '2020-04-15', 0, '2020-04-16 06:09:33', '2020-04-16 06:09:33', 0),
(446, 10, 277, '2020-04-15', 0, '2020-04-16 06:09:33', '2020-04-16 06:09:33', 0),
(447, 9, 278, '2020-04-16', 0, '2020-04-16 06:14:33', '2020-04-16 06:14:33', 0),
(448, 10, 278, '2020-04-16', 0, '2020-04-16 06:14:33', '2020-04-16 06:14:33', 0),
(449, 9, 279, '2020-04-16', 0, '2020-04-16 06:14:48', '2020-04-16 06:14:48', 0),
(450, 10, 279, '2020-04-16', 0, '2020-04-16 06:14:48', '2020-04-16 06:14:48', 0),
(451, 9, 280, '2020-04-16', 0, '2020-04-16 06:14:59', '2020-04-16 06:14:59', 0),
(452, 10, 280, '2020-04-16', 0, '2020-04-16 06:14:59', '2020-04-16 06:14:59', 0),
(453, 9, 282, '2020-04-16', 0, '2020-04-16 08:08:34', '2020-04-16 08:08:34', 0),
(454, 10, 282, '2020-04-16', 0, '2020-04-16 08:08:34', '2020-04-16 08:08:34', 0),
(455, 9, 281, '2020-04-16', 0, '2020-04-16 08:08:55', '2020-04-16 08:08:55', 0),
(456, 10, 281, '2020-04-16', 0, '2020-04-16 08:08:55', '2020-04-16 08:08:55', 0),
(465, 9, 287, '2020-04-16', 0, '2020-04-16 08:41:54', '2020-04-16 08:41:54', 0),
(466, 10, 287, '2020-04-16', 0, '2020-04-16 08:41:54', '2020-04-16 08:41:54', 0),
(467, 9, 288, '2020-04-16', 0, '2020-04-16 08:43:11', '2020-04-16 08:43:11', 0),
(468, 10, 288, '2020-04-16', 0, '2020-04-16 08:43:11', '2020-04-16 08:43:11', 0),
(469, 9, 289, '2020-04-16', 0, '2020-04-16 08:44:42', '2020-04-16 08:44:42', 0),
(470, 10, 289, '2020-04-16', 0, '2020-04-16 08:44:42', '2020-04-16 08:44:42', 0),
(471, 9, 290, '2020-04-16', 0, '2020-04-16 08:48:34', '2020-04-16 08:48:34', 0),
(472, 10, 290, '2020-04-16', 0, '2020-04-16 08:48:34', '2020-04-16 08:48:34', 0),
(473, 9, 291, '2020-04-16', 0, '2020-04-16 08:51:01', '2020-04-16 08:51:01', 0),
(474, 10, 291, '2020-04-16', 0, '2020-04-16 08:51:01', '2020-04-16 08:51:01', 0),
(475, 9, 292, '2020-04-16', 0, '2020-04-16 08:54:02', '2020-04-16 08:54:02', 0),
(476, 10, 292, '2020-04-16', 0, '2020-04-16 08:54:02', '2020-04-16 08:54:02', 0),
(477, 9, 71, '2020-04-17', 0, '2020-04-17 12:22:10', '2020-04-17 12:22:10', 0),
(478, 9, 288, '2020-04-17', 0, '2020-04-17 12:46:41', '2020-04-17 12:46:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `title`, `image`, `index`, `created_at`, `updated_at`) VALUES
(20, 'Mishari Rashid alafasi', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', 2, '2020-04-09 18:49:24', '2020-04-16 18:46:04'),
(21, 'Al Tablawy', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', 3, '2020-04-14 02:43:07', '2020-04-16 18:46:16'),
(22, 'El Helbawy', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\"> <path class=\"st0\" d=\"M16.1,1.9c0.3,0.1,0.5,0.2,0.8,0.3c0.5,0.3,0.7,0.8,0.7,1.2c0,1.9,0,3.7,0,5.5c0,1.1-0.5,2-1.3,2.7  c-0.1,0.1-0.1,0.2-0.1,0.3c0,0.3,0,0.5,0,0.8c0.1,0,0.2,0,0.2,0c0.6,0,1.2,0,1.8,0c1.4,0.2,2.6,1.4,2.8,2.8c0,0.2,0,0.4,0,0.6  c0,1,0,2.1,0,3.1c0,0.4-0.2,0.7-0.7,0.7c-4.6,0-9.3,0-13.9,0c-0.5,0-0.7-0.2-0.7-0.7c0-1,0-2.1,0-3.1c0-1.7,1.1-3,2.7-3.4  c0.2,0,0.5-0.1,0.7-0.1c0.5,0,1,0,1.5,0c0-0.3,0-0.6,0-0.9c0,0,0-0.1-0.1-0.1c-0.8-0.8-1.3-1.9-1.3-3.1c0-1.7,0-3.4,0-5.1  c0-0.8,0.5-1.5,1.3-1.7l0,0C12.6,1.9,14.4,1.9,16.1,1.9z M14,12.9c0,0.1,0,0.1,0,0.2c0,1.1,0,2.3,0,3.4c0,0.2,0,0.4-0.2,0.5  c-0.2,0.2-0.4,0.2-0.6,0.1c-0.2-0.1-0.3-0.3-0.3-0.5c0-1.1,0-2.3,0-3.5c0-0.1,0-0.1,0-0.2c-0.4-0.1-0.8-0.2-1-0.3c0,0.3,0,0.5,0,0.8  c0,0.4-0.2,0.6-0.6,0.6c-0.7,0-1.3,0-2,0c-1.3,0-2.3,1-2.3,2.3c0,0.8,0,1.7,0,2.5c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0  c0-0.8,0-1.6,0-2.3c0-0.2,0.1-0.3,0.2-0.5C9.1,16,9.4,16,9.6,16c0.2,0.1,0.3,0.3,0.4,0.5c0,0.7,0,1.4,0,2.1c0,0.1,0,0.2,0,0.3  c2.4,0,4.9,0,7.4,0c0-0.1,0-0.1,0-0.2c0-0.7,0-1.4,0-2.1c0-0.4,0.2-0.6,0.6-0.6c0.3,0,0.6,0.3,0.6,0.6c0,0.8,0,1.4,0,2.2  c0,0.1,0,0.1,0,0.2c0.6,0,1.1,0,1.8,0c0-0.1,0-0.1,0-0.2c0-0.8,0-1.7,0-2.5c0-1.3-1-2.3-2.3-2.3c-0.7,0-1.3,0-2.1,0  c-0.4,0-0.6-0.2-0.6-0.6c0-0.3,0-0.5,0-0.8C14.7,12.7,14.4,12.8,14,12.9z M10.5,6.6c0,0.8,0,1.6,0,2.3c0,0.8,0.3,1.5,0.8,2.1  c0,0,0.1,0.1,0.2,0.1c0-0.3,0-0.6,0-0.8c0-0.8,0.6-1.2,1.2-1.2c0.3,0,0.5,0,0.8,0c1.4-0.1,2,0.5,1.9,1.9c0,0.1,0,0.1,0,0.2  c0,0,0,0,0.1,0c0,0,0,0,0.1-0.1c0.6-0.6,0.9-1.2,0.9-2.1c0-0.8,0-1.5,0-2.3V6.6C14.4,6.6,12.5,6.6,10.5,6.6z M16.5,5.5  C16.5,5.4,16.5,5.4,16.5,5.5c0-0.7,0-1.3,0-1.9c0-0.4-0.2-0.6-0.6-0.6c-1.6,0-3.2,0-4.8,0c-0.4,0-0.6,0.2-0.6,0.6c0,0.6,0,1.1,0,1.8  v0.1C12.5,5.5,14.4,5.5,16.5,5.5z M14.4,11L14.4,11c0-0.2,0-0.5,0-0.7c0-0.2-0.1-0.2-0.2-0.2c-0.5,0-0.8,0-1.3,0  c-0.2,0-0.2,0.1-0.2,0.2c0,0.5,0,0.8,0,1.3c0,0.1,0.1,0.1,0.1,0.2c0.5,0.2,1,0.2,1.5,0l0.1-0.1C14.4,11.3,14.4,11.2,14.4,11z\"/> </svg>', 4, '2020-04-14 02:43:57', '2020-04-16 18:46:29'),
(23, 'The Holy Quran', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M7.8,15.7h11.6c0.2,0,0.3-0.1,0.3-0.3V3.8c0-0.2-0.1-0.3-0.3-0.3l0,0H7.8c-0.2,0-0.3,0.1-0.3,0.3v11.6   C7.5,15.6,7.7,15.7,7.8,15.7z M8.1,4.2h11v11h-11V4.2z\"/>     <path class=\"st0\" d=\"M21.5,17.3V2c0-0.2-0.1-0.3-0.3-0.3H7.7c-1.2,0-2.2,1-2.2,2.2v14.8l0,0c0,0.9,0.7,1.7,1.7,1.7h14   c0.2,0,0.3-0.1,0.3-0.3V17.3L21.5,17.3L21.5,17.3z M7.8,2.3H21v14.8H7.3c-0.4,0-0.8,0.2-1.1,0.4V3.9C6.2,3,6.9,2.3,7.8,2.3L7.8,2.3   z M7.3,19.8c-0.6,0-1.1-0.5-1.1-1.1l0,0l0,0c0-0.6,0.5-1.1,1.1-1.1H21v0.8H7.8c-0.2,0-0.3,0.1-0.3,0.3c0,0.2,0.1,0.3,0.3,0.3H21   v0.8L7.3,19.8z\"/>     <path class=\"st0\" d=\"M16.5,10.8c-0.3,0.1-0.7,0.2-1,0.2c-1.5,0-2.7-1.2-2.7-2.7c0-0.6,0.2-1.2,0.6-1.6c0.1-0.1,0.1-0.3,0-0.4   c-0.1,0-0.1-0.1-0.2-0.1c-1.9,0.4-3.1,2.2-2.7,4.1s2.2,3.1,4.1,2.7c1-0.2,1.9-0.9,2.4-1.8c0.1-0.1,0-0.3-0.1-0.4   C16.7,10.8,16.6,10.8,16.5,10.8L16.5,10.8z M13.8,12.5c-1.6,0-2.9-1.3-2.9-2.9c0-1.1,0.6-2.1,1.6-2.6c-0.2,0.4-0.3,0.9-0.3,1.3   c0,1.8,1.5,3.3,3.3,3.2c0.2,0,0.3,0,0.5,0C15.4,12.2,14.6,12.5,13.8,12.5z\"/>     <path class=\"st0\" d=\"M14.4,8.6l-0.3,0.8c0,0.1,0,0.3,0.2,0.3c0.1,0,0.2,0,0.2,0l0.7-0.5l0.7,0.5c0.1,0.1,0.3,0.1,0.4-0.1   c0.1-0.1,0.1-0.2,0-0.2L16,8.6l0.7-0.5c0.1-0.1,0.2-0.3,0.1-0.4c-0.1-0.1-0.1-0.1-0.2-0.1h-0.8l-0.3-0.8c0-0.1-0.2-0.2-0.3-0.2   c-0.1,0-0.1,0.1-0.2,0.2l-0.3,0.8h-0.8c-0.2,0-0.3,0.1-0.3,0.3c0,0.1,0,0.2,0.1,0.2L14.4,8.6z M14.9,8.1c0.1,0,0.2-0.1,0.3-0.2   l0.1-0.2l0.1,0.2c0,0.1,0.1,0.2,0.3,0.2h0.2l-0.1,0.1c-0.1,0.1-0.1,0.2-0.1,0.3l0.1,0.2l-0.1-0.1c-0.1-0.1-0.2-0.1-0.3,0l-0.1,0.1   l0.1-0.2c0-0.1,0-0.2-0.1-0.3l-0.1-0.1H14.9z\"/> </g> </svg>', 5, '2020-04-15 22:11:24', '2020-04-16 18:48:43'),
(25, 'Muslim Topic', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M22.8,4.6v13.5h-8.4v0.3c0,0.5-0.4,1-1,1c-0.5,0-1-0.4-1-1v-0.3H4.1V4h0.6v13.5h17.4v-10h-0.6v9.3h-7.7V2.7   h1.6V2.1H4.7v1.3H3.4v15.5h8.4c0.1,0.7,0.8,1.3,1.6,1.3c0.8,0,1.4-0.6,1.6-1.3h8.4V4.6H22.8z M13.1,2.7v14.2H5.4c0,0,0-14.2,0-14.2   H13.1z\"/>     <path class=\"st0\" d=\"M12.5,3.3H6v5.2h6.4V3.3z M11.8,7.8H6.7V4h5.2V7.8z\"/>     <rect x=\"11.8\" y=\"15.6\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"6\" y=\"15.6\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"6\" y=\"14.3\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"6\" y=\"13\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"6\" y=\"11.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"7.3\" y=\"10.4\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"6\" y=\"10.4\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"6\" y=\"9.1\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"20.2\" y=\"15.6\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"15.6\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"14.3\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"13\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"11.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"15.7\" y=\"10.4\" class=\"st0\" width=\"5.2\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"10.4\" class=\"st0\" width=\"0.6\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"9.1\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"8\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"6.9\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"5.8\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"4.7\" class=\"st0\" width=\"6.4\" height=\"0.6\"/>     <rect x=\"14.4\" y=\"3.5\" class=\"st0\" width=\"6.4\" height=\"0.6\"/> </g> </svg>', 6, '2020-04-15 23:30:31', '2020-04-16 18:48:06'),
(26, 'Ramadan', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<path class=\"st0\" d=\"M15,20.6c-1.4,0.1-2.9-0.1-4.2-0.6l0.2-0.6c1.3,0.5,2.6,0.6,3.9,0.5c1-0.1,1.9-0.3,2.8-0.7  c-4.6,0.2-8.5-3.2-8.9-7.8c-0.1-1.2,0-2.3,0.4-3.5c0.4-1.1,1-2.1,1.7-2.9l0.5,0.4c-0.7,0.8-1.3,1.7-1.6,2.7c-0.4,1-0.5,2.1-0.4,3.2  c0.4,4.3,4.3,7.5,8.7,7.2c0.4,0,0.8-0.1,1.2-0.2c0.2,0,0.3,0,0.4,0.2c0.1,0.1,0,0.3-0.1,0.4C18.3,19.9,16.7,20.4,15,20.6L15,20.6z\"/> <path class=\"st0\" d=\"M10.1,19.7C8.6,19,7.2,18,6.2,16.6c-1-1.4-1.6-3-1.8-4.8C4,6.5,8,1.9,13.4,1.4c1.7-0.1,3.4,0.1,4.9,0.8  c0.1,0.1,0.2,0.2,0.2,0.4c0,0.2-0.2,0.3-0.3,0.2c-0.4,0-0.8,0-1.2,0c-1.8,0.2-3.4,0.9-4.8,2.1l-0.4-0.5c1.3-1.2,2.9-1.9,4.7-2.2  c-1-0.2-1.9-0.3-2.9-0.2c-5,0.4-8.8,4.8-8.3,9.7c0.1,1.6,0.7,3.1,1.7,4.4c0.9,1.3,2.2,2.3,3.6,2.9L10.1,19.7z\"/> <path class=\"st0\" d=\"M19.7,10.9c-0.1,0-0.1,0-0.2,0l-1.7-0.7l-1.6,1c-0.1,0.1-0.2,0.1-0.3,0c-0.1-0.1-0.2-0.2-0.2-0.3L15.9,9  l-1.4-1.2c-0.1-0.1-0.1-0.2-0.1-0.3c0-0.1,0.1-0.2,0.2-0.2l1.8-0.4l0.7-1.7c0-0.1,0.1-0.2,0.3-0.2c0.1,0,0.2,0,0.3,0.2l1,1.6  l1.8,0.1c0.1,0,0.2,0.1,0.3,0.2c0,0.1,0,0.2-0.1,0.3l-1.2,1.4l0.5,1.8c0,0.1,0,0.2-0.1,0.3C19.8,10.8,19.7,10.9,19.7,10.9L19.7,10.9  z M17.7,9.5c0.1,0,0.1,0,0.2,0l1.3,0.5l-0.3-1.3c0-0.1,0-0.2,0.1-0.3l0.9-1l-1.4-0.1c-0.1,0-0.2-0.1-0.3-0.2L17.5,6L17,7.2  c0,0.1-0.1,0.2-0.2,0.2l-1.3,0.3l1.1,0.9c0.1,0.1,0.1,0.2,0.1,0.3l-0.1,1.4l1.2-0.7C17.6,9.5,17.7,9.5,17.7,9.5L17.7,9.5z\"/> </svg>', 1, '2020-04-16 07:10:05', '2020-04-16 18:47:30'),
(27, 'Interpretation Qur`an', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" id=\"Layer_1\" x=\"0px\" y=\"0px\" viewBox=\"0 0 27 22\" style=\"enable-background:new 0 0 27 22;\" xml:space=\"preserve\">\r\n<g>     <path class=\"st0\" d=\"M13.8,12.9c2,0,3.6-1.4,4-3.3c0-0.2-0.1-0.5-0.3-0.6c-0.2-0.1-0.5-0.1-0.6,0c-0.4,0.3-0.9,0.4-1.3,0.4   c-1.3,0-2.3-1-2.3-2.3c0-0.5,0.1-0.9,0.4-1.3c0.1-0.2,0.1-0.4,0-0.6c-0.1-0.2-0.4-0.3-0.6-0.3c-1.9,0.3-3.3,2-3.3,4   C9.8,11,11.6,12.9,13.8,12.9z M12.1,6.5c0,0.2-0.1,0.4-0.1,0.6c0,1.9,1.6,3.5,3.5,3.5c0.2,0,0.4,0,0.6-0.1   c-0.5,0.7-1.4,1.2-2.3,1.2c-1.6,0-2.9-1.3-2.9-2.9C10.9,7.8,11.4,7,12.1,6.5z\"/>     <path class=\"st0\" d=\"M19.3,16.4c0.3,0,0.6-0.3,0.6-0.6v-14c0-0.3-0.3-0.6-0.6-0.6H9.5c-1.3,0-2.3,1-2.3,2.3v14c0,1.3,1,2.3,2.3,2.3   h1.2v0.6c0,0.2,0.1,0.4,0.3,0.5c0.2,0.1,0.4,0.1,0.6,0l1.4-0.9l1.4,0.9c0.2,0.1,0.4,0.1,0.6,0c0.2-0.1,0.3-0.3,0.3-0.5v-0.6h4   c0.3,0,0.6-0.3,0.6-0.6c0-0.3-0.3-0.6-0.6-0.6c-0.2,0-0.6-0.5-0.6-1.2C18.7,16.9,19.1,16.4,19.3,16.4z M10.6,18.7H9.5   c-0.6,0-1.2-0.5-1.2-1.2c0-0.6,0.5-1.2,1.2-1.2h1.2V18.7z M14.1,19.4l-0.8-0.6c-0.2-0.1-0.4-0.1-0.6,0l-0.8,0.6v-3h2.3V19.4z    M17.8,18.7h-2.5v-2.3h2.5c-0.1,0.3-0.2,0.7-0.2,1.2C17.6,18,17.7,18.4,17.8,18.7z M18.7,15.3c-1.8,0-7.1,0-9.3,0   c-0.4,0-0.8,0.1-1.2,0.3v-12c0-0.6,0.5-1.2,1.2-1.2h9.3V15.3z\"/> </g> </svg>', 7, '2020-04-16 08:30:09', '2020-04-16 18:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `scaffoldinterface_id` int(10) UNSIGNED NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `having` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_priority`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'admin', 2, '2018-01-08 19:40:19', '2018-01-08 19:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_route`
--

CREATE TABLE `role_route` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `route_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `function_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `method`, `route`, `controller_name`, `created_at`, `updated_at`, `function_name`) VALUES
(2, 'get', 'setting/new', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 18:39:21', 'create'),
(3, 'post', 'setting', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 18:39:21', 'store'),
(4, 'get', 'dashboard', 'DashboardController', '0000-00-00 00:00:00', '2018-07-24 17:47:45', 'index'),
(6, 'get', 'user_profile', 'UserController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'profile'),
(7, 'post', 'user_profile/updatepassword', 'UserController', '0000-00-00 00:00:00', '2017-11-14 17:29:01', 'UpdatePassword'),
(8, 'post', 'user_profile/updateprofilepic', 'UserController', '0000-00-00 00:00:00', '2017-11-14 17:29:08', 'UpdateProfilePicture'),
(9, 'post', 'user_profile/updateuserdata', 'UserController', '0000-00-00 00:00:00', '2017-11-14 17:29:19', 'UpdateNameAndEmail'),
(10, 'get', 'setting/{id}/delete', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 18:39:22', 'destroy'),
(11, 'get', 'setting/{id}/edit', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 18:39:21', 'edit'),
(12, 'post', 'setting/{id}', 'SettingController', '0000-00-00 00:00:00', '2020-03-24 15:17:21', 'update'),
(14, 'get', 'static_translation', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-14 17:29:57', 'index'),
(21, 'get', 'file_manager', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'file_manager'),
(22, 'get', 'upload_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'multi_upload'),
(23, 'post', 'save_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_uploaded'),
(24, 'get', 'upload_resize', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'upload_resize'),
(25, 'post', 'save_image', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_image'),
(26, 'post', 'static_translation/{id}/update', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-12 17:19:46', 'update'),
(27, 'get', 'static_translation/{id}/delete', 'StaticTranslationController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy'),
(28, 'get', 'language/{id}/delete', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy'),
(29, 'post', 'language/{id}/update', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'update'),
(30, 'get', 'roles', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index'),
(31, 'get', 'roles/new', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create'),
(32, 'post', 'roles', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store'),
(33, 'get', 'roles/{id}/delete', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy'),
(34, 'get', 'roles/{id}/edit', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit'),
(35, 'post', 'roles/{id}/update', 'RoleController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'update'),
(36, 'get', 'language', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index'),
(37, 'get', 'language/create', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create'),
(38, 'post', 'language', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store'),
(39, 'get', 'language/{id}/edit', 'LanguageController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit'),
(40, 'get', 'routes', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'index'),
(41, 'post', 'routes', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'store'),
(42, 'get', 'routes/{id}/edit', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'edit'),
(43, 'post', 'routes/{id}/update', 'RouteController', '0000-00-00 00:00:00', '2018-01-28 14:25:29', 'update'),
(44, 'get', 'routes/{id}/delete', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy'),
(45, 'get', 'routes/create', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create'),
(57, 'get', 'routes/index_v2', 'RouteController', '2017-11-12 18:45:15', '2017-11-12 19:04:53', 'index_v2'),
(58, 'get', 'roles/{id}/view_access', 'RoleController', '2017-11-14 15:56:14', '2017-11-15 13:14:14', 'view_access'),
(59, 'get', 'types/index', 'TypeController', '2018-01-28 13:25:37', '2018-01-28 13:25:37', 'index'),
(60, 'get', 'types/create', 'TypeController', '2018-01-28 13:25:37', '2018-01-28 13:25:37', 'create'),
(61, 'post', 'types', 'TypeController', '2018-01-28 13:25:38', '2018-01-28 13:25:38', 'store'),
(62, 'get', 'types/{id}/edit', 'TypeController', '2018-01-28 13:25:38', '2018-01-28 13:25:38', 'edit'),
(63, 'patch', 'types/{id}', 'TypeController', '2018-01-28 13:25:38', '2018-01-28 13:25:38', 'update'),
(64, 'get', 'types/{id}/delete', 'TypeController', '2018-01-28 13:25:38', '2018-01-28 13:25:38', 'destroy'),
(65, 'post', 'sortabledatatable', 'SettingController', '2018-01-28 14:22:00', '2018-01-28 14:22:00', 'updateOrder'),
(66, 'get', 'buildroutes', 'RouteController', '2018-01-28 14:23:55', '2018-01-28 14:23:55', 'buildroutes'),
(69, 'get', 'delete_all', 'DashboardController', '2018-02-04 17:01:23', '2018-02-04 17:01:23', 'delete_all_index'),
(70, 'post', 'delete_all', 'DashboardController', '2018-02-04 17:01:23', '2018-02-04 17:01:23', 'delete_all_store'),
(71, 'get', 'upload_resize_v2', 'DashboardController', '2018-02-04 18:02:56', '2018-02-04 18:02:56', 'upload_resize_v2'),
(72, 'post', 'sortabledatatable', 'UserController', '2018-02-05 18:39:22', '2018-02-05 18:39:22', 'updateOrder'),
(79, 'get', 'setting', 'SettingController', '2018-02-05 19:10:10', '2018-02-05 19:10:10', 'index'),
(80, 'get', 'users', 'UserController', '2018-05-31 13:42:21', '2018-05-31 13:42:21', 'index'),
(81, 'get', 'users/new', 'UserController', '2018-05-31 13:42:21', '2018-05-31 13:42:21', 'create'),
(82, 'post', 'users', 'UserController', '2018-05-31 13:42:21', '2018-05-31 13:42:21', 'store'),
(83, 'get', 'users/{id}/edit', 'UserController', '2018-05-31 13:42:21', '2018-05-31 13:42:21', 'edit'),
(84, 'post', 'users/{id}/update', 'UserController', '2018-05-31 13:42:21', '2018-05-31 13:42:21', 'update'),
(85, 'get', 'providers', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'index'),
(86, 'get', 'providers/create', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'create'),
(87, 'post', 'providers', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'store'),
(88, 'get', 'providers/{id}/edit', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'edit'),
(89, 'patch', 'providers/{id}', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'update'),
(90, 'get', 'providers/{id}/delete', 'ProvidersController', '2018-12-18 14:43:08', '2018-12-18 14:43:08', 'destroy'),
(91, 'get', 'services', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'index'),
(92, 'get', 'services/create', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'create'),
(93, 'post', 'services', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'store'),
(94, 'get', 'services/{id}/edit', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'edit'),
(95, 'patch', 'services/{id}', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'update'),
(96, 'get', 'services/{id}/delete', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'destroy'),
(97, 'get', 'services/{id}/videos', 'ServicesController', '2018-12-18 15:49:59', '2018-12-18 15:49:59', 'videos'),
(98, 'get', 'providers/{id}/services', 'ProvidersController', '2018-12-18 15:50:35', '2018-12-18 15:50:35', 'services'),
(99, 'get', 'operators', 'OperatorsController', '2018-12-18 16:28:07', '2018-12-18 16:28:07', 'index'),
(100, 'get', 'operators/create', 'OperatorsController', '2018-12-18 16:28:08', '2018-12-18 16:28:08', 'create'),
(101, 'post', 'operators', 'OperatorsController', '2018-12-18 16:28:08', '2018-12-18 16:28:08', 'store'),
(102, 'get', 'operators/{id}/edit', 'OperatorsController', '2018-12-18 16:28:08', '2018-12-18 16:28:08', 'edit'),
(103, 'patch', 'operators/{id}', 'OperatorsController', '2018-12-18 16:28:08', '2018-12-18 16:28:08', 'update'),
(104, 'get', 'operators/{id}/delete', 'OperatorsController', '2018-12-18 16:28:08', '2018-12-18 16:28:08', 'destroy'),
(105, 'get', 'videos', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'index'),
(106, 'get', 'videos/create', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'create'),
(107, 'post', 'videos', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'store'),
(108, 'get', 'videos/{id}/edit', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'edit'),
(109, 'patch', 'videos/{id}', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'update'),
(110, 'get', 'videos/{id}/delete', 'VideosController', '2018-12-18 18:41:38', '2018-12-18 18:41:38', 'destroy'),
(111, 'get', 'posts', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:25:53', 'index'),
(112, 'get', 'posts/create', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:40:50', 'create'),
(113, 'post', 'posts', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:25:53', 'store'),
(114, 'get', 'posts/{id}/edit', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:25:53', 'edit'),
(115, 'patch', 'posts/{id}', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:25:53', 'update'),
(116, 'get', 'posts/{id}/delete', 'PostsController', '2018-12-18 19:25:53', '2018-12-18 19:25:53', 'destroy'),
(117, 'get', 'videos/{id}/posts', 'VideosController', '2018-12-18 19:45:29', '2018-12-18 19:45:29', 'posts'),
(118, 'get', 'audios', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'index'),
(119, 'get', 'audios/create', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'create'),
(120, 'post', 'audios', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'store'),
(121, 'get', 'audios/{id}/edit', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'edit'),
(122, 'patch', 'audios/{id}', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'update'),
(123, 'get', 'audios/{id}/delete', 'AudiosController', '2018-12-24 18:38:48', '2018-12-24 18:38:48', 'destroy'),
(124, 'get', 'videos/{id}/audios', 'VideosController', '2018-12-27 14:43:49', '2018-12-27 14:43:49', 'audios'),
(125, 'get', 'providers/{id}/audios', 'ProvidersController', '2018-12-27 14:44:26', '2018-12-27 14:44:26', 'audios'),
(126, 'get', 'countries', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'index'),
(127, 'get', 'countries/create', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'create'),
(128, 'post', 'countries', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'store'),
(129, 'get', 'countries/{id}/edit', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'edit'),
(130, 'patch', 'countries/{id}', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'update'),
(131, 'get', 'countries/{id}/delete', 'CountryController', '2018-12-27 18:52:47', '2018-12-27 18:52:47', 'destroy'),
(132, 'get', 'listazan', 'ListAzanController', '2020-03-25 14:46:07', '2020-03-25 14:46:07', 'index'),
(133, 'get', 'users/{id}/delete', 'UserController', '2020-04-09 23:26:57', '2020-04-09 23:26:59', 'destroy');

-- --------------------------------------------------------

--
-- Table structure for table `scaffoldinterfaces`
--

CREATE TABLE `scaffoldinterfaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `provider_id`, `title`, `image`, `index`, `created_at`, `updated_at`, `type`) VALUES
(33, 20, 'Quran', 'uploads/services/5e975d4d0c744.png', 0, '2020-04-09 18:49:48', '2020-04-16 02:25:47', 1),
(34, 20, 'Ahadeath', 'uploads/services/5e975d70b0d44.png', 0, '2020-04-14 01:35:26', '2020-04-15 23:16:00', 1),
(35, 20, 'Anasheed', 'uploads/services/5e975e444a999.png', 0, '2020-04-14 02:15:19', '2020-04-15 23:19:32', 1),
(36, 20, 'Doaa', 'uploads/services/5e976d0008cfb.png', 0, '2020-04-14 02:28:53', '2020-04-16 02:23:19', 1),
(37, 22, 'Ebthal', 'uploads/services/5e975e904e2de.png', 0, '2020-04-14 02:45:34', '2020-04-16 02:21:30', 1),
(38, 21, 'Ebthal', 'uploads/services/5e975ea8eac7b.png', 0, '2020-04-14 02:49:36', '2020-04-16 02:29:52', 1),
(39, 21, 'Quran', 'uploads/services/5e975edad1492.png', 0, '2020-04-14 02:51:02', '2020-04-15 23:22:02', 1),
(40, 23, 'Mishari Rashid alafasi', 'uploads/services/5e975f123cab8.png', 0, '2020-04-15 22:13:52', '2020-04-16 05:50:39', 1),
(41, 23, 'Tablawy', 'uploads/services/5e97c6566b554.png', 0, '2020-04-15 22:21:08', '2020-04-16 06:43:34', 1),
(42, 25, 'So2al wa Jawab', 'uploads/services/5e975d104167f.png', 0, '2020-04-15 23:14:24', '2020-04-16 00:30:46', 1),
(43, 25, 'prophet`s stories', 'uploads/services/5e9761576bc30.png', 0, '2020-04-15 23:32:39', '2020-04-16 02:08:11', 3),
(44, 25, 'Biography of the prophet', 'uploads/services/5e9779e2a104b.png', 0, '2020-04-16 01:17:22', '2020-04-16 02:18:44', 3),
(45, 25, 'Guide of fasting', 'uploads/services/5e97ab051eb32.png', 0, '2020-04-16 04:47:01', '2020-04-16 04:47:01', 1),
(46, 25, 'Roquia', 'uploads/services/5e97ab746c254.png', 0, '2020-04-16 04:48:52', '2020-04-16 04:48:52', 1),
(47, 25, 'Interpretation of The koran', 'uploads/services/5e97ae118df48.png', 0, '2020-04-16 05:00:01', '2020-04-16 05:00:18', 4),
(48, 25, 'God Names', 'uploads/services/5e97b0dd677cb.png', 0, '2020-04-16 05:11:57', '2020-04-16 05:11:57', 4),
(49, 25, 'The Quran Answer', 'uploads/services/5e97baee940f2.png', 0, '2020-04-16 05:54:54', '2020-04-16 05:54:54', 1),
(50, 25, 'Information', 'uploads/services/5e97bd69d47e8.png', 0, '2020-04-16 06:05:29', '2020-04-16 06:05:29', 4),
(51, 25, 'Hajj And Umrah guide', 'uploads/services/5e97c0d986050.png', 0, '2020-04-16 06:20:09', '2020-04-16 06:20:09', 1),
(52, 25, 'Azkar', 'uploads/services/5e97c3977967c.png', 0, '2020-04-16 06:31:51', '2020-04-16 06:31:51', 1),
(53, 26, 'Ramadan Doaa', 'uploads/services/5e97cd03ea867.png', 0, '2020-04-16 07:12:03', '2020-04-16 07:12:03', 1),
(54, 26, 'Ramadan Ahadeth', 'uploads/services/5e97cd5f84cf4.png', 0, '2020-04-16 07:13:35', '2020-04-16 08:25:51', 1),
(57, 26, 'Anashed', 'uploads/services/5e97ce456aee5.png', 0, '2020-04-16 07:17:25', '2020-04-16 07:17:25', 1),
(58, 27, 'Interpretation Qur`an in English', 'uploads/services/5e97dfb5f2642.png', 0, '2020-04-16 08:31:49', '2020-04-16 08:31:49', 1),
(59, 27, 'Interpretation Qur`an in Arabic', 'uploads/services/5e97dfd931c6d.png', 0, '2020-04-16 08:32:25', '2020-04-16 08:32:25', 1),
(60, 27, 'Interpretation Qur`an in Urdo', 'uploads/services/5e97dfff18109.png', 0, '2020-04-16 08:33:03', '2020-04-16 08:33:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `type_id`, `order`) VALUES
(25, 'uploadAllow', 'all', '2018-02-04 15:04:09', '2018-02-04 15:04:09', 6, 0),
(26, 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 2, 0),
(27, 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 12:25:26', '2018-12-19 12:25:26', 2, 0),
(28, 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 12:25:43', '2018-12-19 12:25:43', 2, 0),
(29, 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 12:26:12', '2018-12-19 12:26:12', 2, 0),
(30, 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 12:26:29', '2018-12-19 12:26:29', 2, 0),
(31, 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 12:26:44', '2018-12-19 12:26:44', 2, 0),
(64, 'home_page_logo', 'uploads/settings_images/5e5cf927166e1.png', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 3, 0),
(65, 'header_logo', 'uploads/settings_images/5e5cf94047ffc.png', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 3, 0),
(66, 'loading_image', 'uploads/settings_images/5e5cf954396bd.png', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 3, 0),
(67, 'title_page', 'My World', '2019-12-31 15:50:04', '2020-04-02 08:45:25', 2, 0),
(68, 'fav_icon', 'uploads/settings_images/5e5cf9743fb3e.png', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 3, 0),
(69, 'copy_rights', 'Copyright © 2020 islamic services Powered by DIGIZONE', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 2, 0),
(70, 'title_menu', 'دو الخير', '2019-12-31 15:50:04', '2019-12-31 13:54:06', 3, 0),
(71, 'enable_testing', '0', '2020-03-03 17:42:27', '2020-04-15 15:19:11', 7, 0),
(72, 'enable_social', '1', '2020-03-03 17:42:27', '2020-03-03 17:42:27', 7, 0),
(73, 'pageLength', '300', '2020-03-03 17:42:27', '2020-04-16 19:58:35', 2, 0),
(74, 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(75, 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(76, 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(77, 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(78, 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(79, 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 12:19:19', '2018-12-19 12:19:19', 10, 0),
(80, 'view_coming_post', '1', '2020-04-02 13:16:34', '2020-04-02 13:16:34', 7, 0),
(81, 'service_delete_flag', '0', '2020-04-16 16:54:33', '2020-04-16 16:55:24', 7, 0),
(82, 'provider_delete_flag', '0', '2020-04-16 16:54:53', '2020-04-16 18:41:43', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `static_bodies`
--

CREATE TABLE `static_bodies` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `static_translation_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_translations`
--

CREATE TABLE `static_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_word` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tans_bodies`
--

CREATE TABLE `tans_bodies` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `translatable_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tans_bodies`
--

INSERT INTO `tans_bodies` (`id`, `language_id`, `translatable_id`, `body`, `created_at`, `updated_at`) VALUES
(14, 2, 33, 'قران', '2020-03-30 12:39:32', '2020-03-30 12:39:32'),
(15, 2, 34, 'تفسير 1', '2020-03-30 12:41:08', '2020-03-30 12:41:08'),
(16, 2, 35, 'تفسير 2', '2020-03-30 12:41:50', '2020-03-30 12:41:50'),
(17, 2, 36, 'تفسير 3', '2020-03-30 12:42:15', '2020-03-30 12:42:15'),
(18, 2, 37, 'تفسير 4', '2020-03-30 12:42:59', '2020-03-30 12:43:17'),
(19, 2, 38, 'رسائل1', '2020-03-30 12:44:48', '2020-03-30 12:44:48'),
(20, 2, 39, 'ان ربنا هو الخالق نحبه ليس من اجل شى فقط لانه هو الله', '2020-03-30 12:44:48', '2020-03-30 12:44:48'),
(21, 2, 40, 'رسائل2', '2020-03-30 12:46:26', '2020-03-30 12:46:26'),
(22, 2, 41, 'ساعد الفقراء الذين يحتجون الى الطعام والماء', '2020-03-30 12:46:26', '2020-03-30 12:46:26'),
(23, 2, 42, 'قران 1', '2020-03-30 12:47:22', '2020-03-30 12:47:22'),
(24, 2, 43, 'قران 2', '2020-03-30 12:47:50', '2020-03-30 12:47:50'),
(25, 2, 44, 'قران 3', '2020-03-30 12:48:26', '2020-03-30 12:48:26'),
(26, 2, 45, 'قران 4', '2020-03-30 12:49:06', '2020-03-30 12:49:06'),
(27, 2, 46, 'تفسير 1', '2020-03-30 12:55:40', '2020-03-30 12:55:40'),
(28, 2, 47, 'تفسير 2', '2020-03-30 12:56:15', '2020-03-30 12:56:15'),
(29, 2, 48, 'قران', '2020-03-30 12:56:53', '2020-03-30 12:56:53'),
(30, 2, 49, 'قران 2', '2020-03-30 12:57:29', '2020-03-30 12:57:29'),
(31, 2, 50, 'تفسير 4', '2020-03-30 12:57:59', '2020-03-30 12:57:59'),
(32, 2, 51, 'قران 4', '2020-03-30 12:58:45', '2020-03-30 12:58:45'),
(33, 2, 52, 'تواشيح', '2020-03-30 13:01:52', '2020-03-30 13:01:52'),
(34, 2, 53, 'خواطر ايمانية', '2020-03-30 13:03:39', '2020-03-30 13:03:39'),
(36, 2, 55, 'خدمة', '2020-04-01 17:37:34', '2020-04-01 17:37:34'),
(37, 2, 56, 'content_video_ar_1', '2020-04-01 17:38:11', '2020-04-03 16:56:34'),
(38, 2, 57, 'service2_audio_ar', '2020-04-02 10:30:59', '2020-04-02 10:30:59'),
(39, 2, 58, 'content_audio_1_ar', '2020-04-02 10:31:25', '2020-04-02 10:31:25'),
(40, 2, 59, 'content2_audio_ar', '2020-04-02 10:48:01', '2020-04-02 10:48:01'),
(41, 2, 60, 'service3_image_ar', '2020-04-02 13:14:19', '2020-04-02 13:14:19'),
(42, 2, 61, 'content_image_ar_1', '2020-04-02 13:14:42', '2020-04-02 13:14:42'),
(43, 2, 62, 'servuice_image_ar_2', '2020-04-02 14:02:27', '2020-04-02 14:02:27'),
(44, 2, 63, 'text_service_ar', '2020-04-03 16:57:48', '2020-04-03 16:58:24'),
(45, 2, 64, 'content_text_title_ar', '2020-04-03 16:59:16', '2020-04-03 16:59:16'),
(46, 2, 65, 'content_text_desc_ar', '2020-04-03 16:59:16', '2020-04-03 16:59:16'),
(47, 2, 66, 'call_tone1_ar', '2020-04-03 19:56:57', '2020-04-03 19:59:01'),
(48, 2, 67, 'call_tone_2_ar', '2020-04-03 19:58:04', '2020-04-03 19:58:04'),
(49, 2, 68, 'call_du_1_ar', '2020-04-03 20:05:19', '2020-04-03 20:05:19'),
(50, 2, 69, 'call_tone2_du_ar', '2020-04-03 20:07:57', '2020-04-03 20:07:57'),
(52, 2, 71, 'emad_rbt_ar', '2020-04-08 15:36:18', '2020-04-08 16:06:36'),
(53, 2, 72, 'emad_service_ar', '2020-04-08 15:40:47', '2020-04-08 15:40:47'),
(54, 2, 73, 'emad_content_ar', '2020-04-08 15:50:27', '2020-04-08 15:50:27'),
(56, 2, 75, 'مشاري راشد العفاسي', '2020-04-09 18:49:25', '2020-04-16 05:49:06'),
(57, 2, 76, 'قرآن', '2020-04-09 18:49:49', '2020-04-15 21:06:32'),
(59, 2, 78, 'rbt 1 ar', '2020-04-09 18:53:38', '2020-04-09 18:53:38'),
(60, 2, 79, 'rbt2 ar', '2020-04-09 18:55:27', '2020-04-09 18:55:27'),
(61, 2, 80, 'rbt3 ar', '2020-04-09 19:04:59', '2020-04-09 19:04:59'),
(62, 2, 81, 'rbt4 ar', '2020-04-09 19:05:24', '2020-04-09 19:05:24'),
(63, 2, 82, 'أحاديث', '2020-04-14 01:35:26', '2020-04-14 01:35:26'),
(64, 2, 83, 'من سورة الفاتحة', '2020-04-14 01:40:32', '2020-04-14 01:40:32'),
(65, 2, 84, 'سورة البقرة', '2020-04-14 01:43:44', '2020-04-14 01:43:44'),
(66, 2, 85, 'سورة البقرة 2', '2020-04-14 01:45:07', '2020-04-14 01:45:07'),
(67, 2, 86, 'سورة البقرة 3', '2020-04-14 01:46:12', '2020-04-14 01:46:12'),
(68, 2, 87, 'سورة البقرة 4', '2020-04-14 01:47:11', '2020-04-14 01:47:11'),
(69, 2, 88, 'سورة البقرة 5', '2020-04-14 01:48:10', '2020-04-14 01:48:10'),
(70, 2, 89, 'سورة البقرة 6', '2020-04-14 01:49:52', '2020-04-14 01:49:52'),
(71, 2, 90, 'سورة البقرة 7', '2020-04-14 01:50:43', '2020-04-14 01:50:43'),
(72, 2, 91, 'سورة البقرة 8', '2020-04-14 01:51:32', '2020-04-14 01:51:32'),
(73, 2, 92, 'سورة البقرة 9', '2020-04-14 01:52:17', '2020-04-14 01:52:17'),
(84, 2, 103, 'أناشيد', '2020-04-14 02:15:19', '2020-04-14 02:15:19'),
(95, 2, 114, 'دعاء', '2020-04-14 02:28:53', '2020-04-14 02:28:53'),
(96, 2, 115, 'اللهم احفظنا بالاسلام', '2020-04-14 02:33:13', '2020-04-14 02:33:13'),
(97, 2, 116, 'اللهم اني اعوذ بك من الهم والحزن', '2020-04-14 02:33:46', '2020-04-14 02:33:46'),
(98, 2, 117, 'اللهم انا نسالك فعل الخيرات', '2020-04-14 02:34:44', '2020-04-14 02:34:44'),
(99, 2, 118, 'اللهم اصلح احوالنا', '2020-04-14 02:35:21', '2020-04-14 02:35:21'),
(100, 2, 119, 'اللهم اني اعوذ بك من جهد البلاء', '2020-04-14 02:36:22', '2020-04-14 02:36:22'),
(101, 2, 120, 'اللهم اغفر لحينا وميتنا', '2020-04-14 02:37:45', '2020-04-14 02:37:45'),
(102, 2, 121, 'اللهم انك خلقت نفسي', '2020-04-14 02:38:15', '2020-04-14 02:38:15'),
(103, 2, 122, 'اللهم زدنا ولا تنقصنا', '2020-04-14 02:38:50', '2020-04-14 02:38:50'),
(104, 2, 123, 'اللهم بلغنا رمضان', '2020-04-14 02:39:29', '2020-04-14 02:39:29'),
(105, 2, 124, 'اللهم اني اسالك ان تبارك لي في نفسي', '2020-04-14 02:40:07', '2020-04-14 02:40:07'),
(106, 2, 125, 'الطبلاوى', '2020-04-14 02:43:07', '2020-04-14 02:43:07'),
(107, 2, 126, 'الهلباوى', '2020-04-14 02:43:57', '2020-04-14 02:43:57'),
(108, 2, 127, 'إبتهالات', '2020-04-14 02:45:34', '2020-04-15 23:20:48'),
(109, 2, 128, 'إبتهالات', '2020-04-14 02:49:36', '2020-04-14 02:49:36'),
(110, 2, 129, 'قرآن', '2020-04-14 02:51:02', '2020-04-14 02:51:02'),
(111, 2, 130, 'السلام على أله و صحبه', '2020-04-14 02:55:58', '2020-04-14 02:55:58'),
(112, 2, 131, 'واعمله نبوته', '2020-04-14 02:56:38', '2020-04-14 02:56:38'),
(113, 2, 132, 'الصلاة على النبى بقدر سكان جنان', '2020-04-14 02:57:39', '2020-04-14 02:57:39'),
(114, 2, 133, 'حمدت_المجموعة1', '2020-04-14 02:58:38', '2020-04-14 02:58:38'),
(115, 2, 134, 'حمدت_الطبلاوي1', '2020-04-14 02:59:26', '2020-04-14 02:59:26'),
(116, 2, 135, 'حمدت_الطبلاوي2', '2020-04-14 03:00:07', '2020-04-14 03:00:07'),
(117, 2, 136, 'حمدت_الطبلاوي3', '2020-04-14 03:00:55', '2020-04-14 03:00:55'),
(118, 2, 137, 'ياصاحب الهم_الطبلاوي', '2020-04-14 03:01:43', '2020-04-14 03:01:43'),
(119, 2, 138, 'يارب إن الأمور_الطبلاوي', '2020-04-14 03:02:32', '2020-04-14 03:02:32'),
(120, 2, 139, 'يامن تماديت_الطبلاوي', '2020-04-14 03:03:12', '2020-04-14 03:03:12'),
(121, 2, 140, 'سورة البقرة  1', '2020-04-14 03:07:25', '2020-04-14 03:07:25'),
(122, 2, 141, 'سورة البقرة  2', '2020-04-14 03:08:08', '2020-04-14 03:08:08'),
(123, 2, 142, 'سورة البقرة  3', '2020-04-14 03:09:10', '2020-04-14 03:09:10'),
(124, 2, 143, 'سورة البقرة  4', '2020-04-14 03:09:55', '2020-04-14 03:09:55'),
(125, 2, 144, 'سورة البقرة  5', '2020-04-14 03:10:46', '2020-04-14 03:10:46'),
(126, 2, 145, 'سورة البقرة  6', '2020-04-14 03:11:25', '2020-04-14 03:11:25'),
(127, 2, 146, 'سورة البقرة  7', '2020-04-14 03:12:02', '2020-04-14 03:12:02'),
(128, 2, 147, 'سورة البقرة  8', '2020-04-14 03:12:39', '2020-04-14 03:12:39'),
(129, 2, 148, 'سورة البقرة  9', '2020-04-14 03:13:43', '2020-04-14 03:13:43'),
(130, 2, 149, 'سورة البقرة  10', '2020-04-14 03:14:18', '2020-04-14 03:14:18'),
(131, 2, 150, 'أسماء الله الحسنى 1', '2020-04-14 03:45:42', '2020-04-14 04:00:50'),
(132, 2, 151, 'أسماء الله الحسنى 2', '2020-04-14 03:46:26', '2020-04-14 04:01:33'),
(133, 2, 152, 'اللهم اكفنا السوء 1', '2020-04-14 03:49:46', '2020-04-14 04:02:05'),
(134, 2, 153, 'اللهم اكفنا السوء 2', '2020-04-14 03:50:50', '2020-04-14 04:02:30'),
(135, 2, 154, 'صلوات على النبي', '2020-04-14 03:51:31', '2020-04-14 04:02:58'),
(137, 2, 156, 'ايات الدعاء 1', '2020-04-14 03:52:36', '2020-04-14 04:04:03'),
(138, 2, 157, 'ايات الدعاء 2', '2020-04-14 03:54:34', '2020-04-14 04:04:22'),
(139, 2, 158, 'ايات الدعاء 3', '2020-04-14 03:56:17', '2020-04-14 04:04:38'),
(140, 2, 159, 'ايات الدعاء 4', '2020-04-14 03:57:06', '2020-04-14 04:04:54'),
(141, 2, 160, 'ايات الدعاء 5', '2020-04-14 03:57:56', '2020-04-14 04:05:14'),
(142, 2, 161, 'اللهم اني ظلمت نفسي', '2020-04-15 01:33:02', '2020-04-15 01:33:02'),
(143, 2, 162, 'اللهم اني اعوذ بك ان ارد الي ارذل العمر', '2020-04-15 01:33:41', '2020-04-15 01:33:41'),
(144, 2, 163, 'اللهم اني اسالك نفس مطمئنة', '2020-04-15 01:34:35', '2020-04-15 01:34:35'),
(145, 2, 164, 'اللهم اجعل والدي حبيبي', '2020-04-15 01:35:14', '2020-04-15 01:35:14'),
(146, 2, 165, 'رب اعني ولا تعن عليا', '2020-04-15 01:35:52', '2020-04-15 01:35:52'),
(147, 2, 166, 'اللهم بابك مفتوح', '2020-04-15 01:36:29', '2020-04-15 01:36:29'),
(148, 2, 167, 'اللهم اكفنا شر الامراض', '2020-04-15 01:37:05', '2020-04-15 01:37:05'),
(149, 2, 168, 'اللهم لا ترد دعائنا', '2020-04-15 01:37:44', '2020-04-15 01:37:44'),
(150, 2, 169, 'اللهم ان ناصيتي بيدك', '2020-04-15 01:38:25', '2020-04-15 01:38:25'),
(151, 2, 170, 'اللهم اغفر لنا علمك فينا', '2020-04-15 01:39:33', '2020-04-15 01:39:33'),
(152, 2, 171, 'نستودعك ابائنا وامهاتنا', '2020-04-15 01:40:36', '2020-04-15 01:40:36'),
(153, 2, 172, 'اللهم مالك الملك', '2020-04-15 01:41:59', '2020-04-15 01:41:59'),
(154, 2, 173, 'كل شئ خاشع لك', '2020-04-15 01:44:12', '2020-04-15 01:44:12'),
(155, 2, 174, 'يا صاحبي عند الشدة', '2020-04-15 01:45:29', '2020-04-15 01:45:29'),
(156, 2, 175, 'حب الاحسان', '2020-04-15 01:46:40', '2020-04-15 01:46:40'),
(157, 2, 176, 'اعوذ من التردي', '2020-04-15 01:47:53', '2020-04-15 01:47:53'),
(158, 2, 177, 'الهي لا تعذب لسانا', '2020-04-15 01:48:40', '2020-04-15 01:48:40'),
(159, 2, 178, 'رفع البلاء', '2020-04-15 01:49:22', '2020-04-15 01:49:22'),
(160, 2, 179, 'ياارحم الراحمين', '2020-04-15 01:50:31', '2020-04-15 01:50:31'),
(161, 2, 180, 'الحمد لله عدد ما احصي كتابة', '2020-04-15 01:51:14', '2020-04-15 01:51:14'),
(180, 2, 199, 'سورة البقرة 10', '2020-04-15 02:24:07', '2020-04-15 02:24:07'),
(181, 2, 200, 'سورة البقرة 11', '2020-04-15 02:25:43', '2020-04-15 02:25:43'),
(182, 2, 201, 'سورة البقرة 12', '2020-04-15 02:26:56', '2020-04-15 02:26:56'),
(183, 2, 202, 'سورة البقرة 13', '2020-04-15 02:28:11', '2020-04-15 02:28:11'),
(184, 2, 203, 'سورة البقرة 14', '2020-04-15 02:30:51', '2020-04-15 02:30:51'),
(185, 2, 204, 'سورة البقرة 15', '2020-04-15 02:33:02', '2020-04-15 02:33:02'),
(186, 2, 205, 'سورة البقرة 16', '2020-04-15 02:35:35', '2020-04-15 02:35:35'),
(187, 2, 206, 'سورة البقرة 17', '2020-04-15 02:36:57', '2020-04-15 02:36:57'),
(188, 2, 207, 'سورة البقرة 18', '2020-04-15 02:39:35', '2020-04-15 02:39:35'),
(189, 2, 208, 'سورة البقرة 19', '2020-04-15 02:40:31', '2020-04-15 02:40:31'),
(190, 2, 209, 'سورة البقرة 20', '2020-04-15 02:42:59', '2020-04-15 02:42:59'),
(191, 2, 210, 'سورة البقرة 21', '2020-04-15 02:44:48', '2020-04-15 02:44:48'),
(192, 2, 211, 'سورة البقرة 22', '2020-04-15 02:47:55', '2020-04-15 02:47:55'),
(193, 2, 212, 'سورة البقرة 23', '2020-04-15 02:50:50', '2020-04-15 02:50:50'),
(194, 2, 213, 'سورة البقرة 24', '2020-04-15 02:52:05', '2020-04-15 02:52:05'),
(195, 2, 214, 'سورة البقرة 25', '2020-04-15 02:53:37', '2020-04-15 02:53:37'),
(196, 2, 215, 'سورة البقرة 26', '2020-04-15 02:55:16', '2020-04-15 02:55:16'),
(197, 2, 216, 'سورة البقرة 27', '2020-04-15 02:58:27', '2020-04-15 02:58:27'),
(198, 2, 217, 'سورة البقرة 28', '2020-04-15 02:59:40', '2020-04-15 02:59:40'),
(199, 2, 218, 'سورة البقرة 29', '2020-04-15 03:00:39', '2020-04-15 03:00:39'),
(200, 2, 219, 'سورة البقرة 30', '2020-04-15 03:01:47', '2020-04-15 03:01:47'),
(201, 2, 220, 'سورة البقرة 11', '2020-04-15 03:10:58', '2020-04-15 03:10:58'),
(202, 2, 221, 'سورة البقرة 12', '2020-04-15 03:11:42', '2020-04-15 03:11:42'),
(203, 2, 222, 'سورة البقرة 13', '2020-04-15 03:12:35', '2020-04-15 03:12:35'),
(204, 2, 223, 'سورة البقرة 14', '2020-04-15 03:13:21', '2020-04-15 03:13:21'),
(205, 2, 224, 'سورة البقرة 15', '2020-04-15 03:15:04', '2020-04-15 03:15:04'),
(206, 2, 225, 'سورة البقرة 16', '2020-04-15 03:15:45', '2020-04-15 03:15:45'),
(207, 2, 226, 'سورة البقرة 16', '2020-04-15 03:16:16', '2020-04-15 03:16:16'),
(208, 2, 227, 'سورة البقرة 17', '2020-04-15 03:16:19', '2020-04-15 03:16:19'),
(209, 2, 228, 'سورة البقرة 18', '2020-04-15 03:21:43', '2020-04-15 03:21:43'),
(210, 2, 229, 'سورة البقرة 19', '2020-04-15 03:26:19', '2020-04-15 03:26:19'),
(211, 2, 230, 'سورة البقرة 20', '2020-04-15 03:27:27', '2020-04-15 03:27:27'),
(212, 2, 231, 'سورة البقرة 21', '2020-04-15 03:28:58', '2020-04-15 03:28:58'),
(213, 2, 232, 'سورة البقرة 22', '2020-04-15 03:30:11', '2020-04-15 03:30:11'),
(214, 2, 233, 'سورة البقرة 23', '2020-04-15 03:31:32', '2020-04-15 03:31:32'),
(215, 2, 234, 'سورة البقرة 24', '2020-04-15 03:32:38', '2020-04-15 03:32:38'),
(216, 2, 235, 'سورة البقرة 25', '2020-04-15 03:34:33', '2020-04-15 03:34:33'),
(217, 2, 236, 'سورة البقرة 26', '2020-04-15 03:35:43', '2020-04-15 03:35:43'),
(218, 2, 237, 'سورة البقرة 27', '2020-04-15 03:36:20', '2020-04-15 03:36:20'),
(219, 2, 238, 'سورة البقرة 28', '2020-04-15 03:38:03', '2020-04-15 03:38:03'),
(220, 2, 239, 'سورة البقرة 29', '2020-04-15 03:39:06', '2020-04-15 03:39:06'),
(221, 2, 240, 'سورة البقرة 30', '2020-04-15 03:39:57', '2020-04-15 03:39:57'),
(222, 2, 241, 'ايات الدعاء 6', '2020-04-15 21:29:08', '2020-04-15 21:29:08'),
(223, 2, 242, 'ايات الدعاء 7', '2020-04-15 21:30:05', '2020-04-15 21:30:05'),
(224, 2, 243, 'ايات الدعاء 8', '2020-04-15 21:31:35', '2020-04-15 21:31:35'),
(225, 2, 244, 'ايات الدعاء 9', '2020-04-15 21:32:26', '2020-04-15 21:32:26'),
(226, 2, 245, 'ايات الدعاء 10', '2020-04-15 21:33:20', '2020-04-15 21:33:20'),
(227, 2, 246, 'أضاء في الليل نار', '2020-04-15 21:34:53', '2020-04-15 21:34:53'),
(228, 2, 247, 'اغفت قريش', '2020-04-15 21:40:07', '2020-04-15 21:40:07'),
(229, 2, 248, 'الله اكبر', '2020-04-15 21:41:50', '2020-04-15 21:41:50'),
(230, 2, 249, 'الاولياء', '2020-04-15 21:43:34', '2020-04-15 21:43:34'),
(231, 2, 250, 'محمد سيد الخلق', '2020-04-15 21:45:20', '2020-04-15 21:45:20'),
(232, 2, 251, 'بعزمه', '2020-04-15 21:46:52', '2020-04-15 21:46:52'),
(233, 2, 252, 'عيد السماء', '2020-04-15 21:48:15', '2020-04-15 21:48:15'),
(234, 2, 253, 'عز قلب كل محب', '2020-04-15 21:49:13', '2020-04-15 21:49:13'),
(235, 2, 254, 'في فتح مكه', '2020-04-15 21:55:23', '2020-04-15 21:55:23'),
(236, 2, 255, 'هل يبتغي الملك', '2020-04-15 21:56:03', '2020-04-15 21:56:03'),
(237, 2, 256, 'امل ترقبه الزمان 1', '2020-04-15 21:56:46', '2020-04-15 21:56:46'),
(238, 2, 257, 'امل ترقبه الزمان 2', '2020-04-15 21:57:32', '2020-04-15 21:57:32'),
(239, 2, 258, 'امل ترقبه الزمان 3', '2020-04-15 21:58:58', '2020-04-15 21:58:58'),
(240, 2, 259, 'امل ترقبه الزمان 4', '2020-04-15 21:59:54', '2020-04-15 21:59:54'),
(241, 2, 260, 'امل ترقبه الزمان 5', '2020-04-15 22:00:39', '2020-04-15 22:00:39'),
(244, 2, 263, 'القرآن الكريم', '2020-04-15 22:11:24', '2020-04-16 02:00:55'),
(245, 2, 264, 'مشاري راشد العفاسي', '2020-04-15 22:13:52', '2020-04-16 05:50:39'),
(246, 2, 265, 'من سورة الفاتحة', '2020-04-15 22:16:13', '2020-04-15 22:16:13'),
(247, 2, 266, 'سورة البقرة  1', '2020-04-15 22:17:01', '2020-04-15 22:17:01'),
(248, 2, 267, 'سورة البقرة 2', '2020-04-15 22:20:03', '2020-04-15 22:20:03'),
(249, 2, 268, 'الطبلاوي', '2020-04-15 22:21:08', '2020-04-15 22:21:08'),
(250, 2, 269, 'سورة البقرة  1', '2020-04-15 22:22:12', '2020-04-15 22:22:12'),
(251, 2, 270, 'سورة البقرة  2', '2020-04-15 22:24:06', '2020-04-15 22:24:06'),
(253, 2, 272, 'سؤال وجواب', '2020-04-15 23:14:24', '2020-04-15 23:14:24'),
(254, 2, 273, 'موضوعات', '2020-04-15 23:30:31', '2020-04-15 23:30:31'),
(255, 2, 274, 'قصص الانبياء', '2020-04-15 23:32:39', '2020-04-15 23:32:39'),
(257, 2, 276, 'صفات الماء الذي يصلح للوضوء', '2020-04-16 00:38:06', '2020-04-16 03:17:49'),
(258, 2, 277, 'استخدام مياة المجاري  للوضوء', '2020-04-16 00:39:47', '2020-04-16 03:20:53'),
(259, 2, 278, 'هل يضر الماء المشمس  بالانسان', '2020-04-16 00:43:19', '2020-04-16 03:24:58'),
(260, 2, 279, 'تطهر من الجنابة بمسح جسدي بالثلج', '2020-04-16 01:01:56', '2020-04-16 03:16:02'),
(261, 2, 280, 'خلط الماء بالصابون اثناء الغسل', '2020-04-16 01:05:14', '2020-04-16 03:14:24'),
(262, 2, 281, 'عيسى عليه السلام ( ولادة عيسى عليه السلام )', '2020-04-16 01:07:32', '2020-04-16 04:40:19'),
(263, 2, 282, 'السيرة النبوية', '2020-04-16 01:17:22', '2020-04-16 01:17:22'),
(264, 2, 283, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 01:19:43', '2020-04-16 04:32:58'),
(265, 2, 284, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:26', '2020-04-16 04:34:26'),
(266, 2, 285, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:42', '2020-04-16 04:34:42'),
(267, 2, 286, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:34:56', '2020-04-16 04:34:56'),
(268, 2, 287, 'الفتح المبين (صلح الحديبية)  صلح الحديبية', '2020-04-16 04:35:08', '2020-04-16 04:35:08'),
(270, 2, 289, 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 04:42:30', '2020-04-16 04:42:30'),
(271, 2, 290, 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 04:42:42', '2020-04-16 04:42:42'),
(272, 2, 291, 'عيسى عليه السلام ( مواجهة القوم )', '2020-04-16 04:43:02', '2020-04-16 04:43:02'),
(273, 2, 292, 'دليل الصائم', '2020-04-16 04:47:01', '2020-04-16 04:47:01'),
(274, 2, 293, 'الرقية الشرعية', '2020-04-16 04:48:52', '2020-04-16 04:48:52'),
(275, 2, 294, 'ايه ومعلومة', '2020-04-16 05:00:01', '2020-04-16 05:00:01'),
(276, 2, 295, 'سورة البقرة  186', '2020-04-16 05:04:39', '2020-04-16 05:04:39'),
(277, 2, 296, '7 سورة إبراهيم', '2020-04-16 05:06:33', '2020-04-16 05:06:33'),
(278, 2, 297, '42سورة الزمر', '2020-04-16 05:07:23', '2020-04-16 05:07:23'),
(279, 2, 298, 'سورة النساء 19', '2020-04-16 05:09:04', '2020-04-16 05:09:04'),
(280, 2, 299, 'سورة الأعراف 32', '2020-04-16 05:09:55', '2020-04-16 05:09:55'),
(281, 2, 300, 'أسماء الله الحسنى', '2020-04-16 05:11:57', '2020-04-16 05:11:57'),
(282, 2, 301, 'الباسط', '2020-04-16 05:19:40', '2020-04-16 05:19:40'),
(283, 2, 302, 'الباسط: يعطي رزقه ويقدّره لمن يشاء من عباده', '2020-04-16 05:19:40', '2020-04-16 05:19:40'),
(284, 2, 303, 'الباطن', '2020-04-16 05:20:19', '2020-04-16 05:20:19'),
(285, 2, 304, 'الباطن: يُعرف من خلال دلائل قدرته، وعظيم خلقه، فهو لا يُرى في الحياة الدّنيا', '2020-04-16 05:20:19', '2020-04-16 05:20:19'),
(286, 2, 305, 'البديع', '2020-04-16 05:21:05', '2020-04-16 05:21:05'),
(287, 2, 306, 'البديع: خلق الكون وما فيه بإبداعٍ وإتقانٍ لا يُعرف له مثيل', '2020-04-16 05:21:05', '2020-04-16 05:21:05'),
(288, 2, 307, 'البصير', '2020-04-16 05:21:37', '2020-04-16 05:23:37'),
(289, 2, 308, 'البصير: يرى كلّ شيءٍ في هذا الكون، ولا يخفى عليه شيء', '2020-04-16 05:21:37', '2020-04-16 05:21:37'),
(290, 2, 309, 'التّواب', '2020-04-16 05:22:14', '2020-04-16 05:22:14'),
(291, 2, 310, 'التّواب: يتوب على عباده، ويغفر لهم كلّما أذنبوا', '2020-04-16 05:22:14', '2020-04-16 05:22:14'),
(292, 2, 311, 'فالدنيا دار اختبار للايمان، والاخرة دار الجزاء.. ومن الناس من لا يعبد الله.. هؤلاء متساوون في عطاء الربوبية مع المؤمنين في الدنيا.. ولكن في الآخرة يكون عطاء الالوهية للمؤمنين وحدهم.. فنعم الله لأصحاب الجنة، وعطاءات الله لمن آمن.. واقرأ قوله تبارك وتعالى.\r\n{قُلْ مَنْ حَرَّمَ زِينَةَ الله التي أَخْرَجَ لِعِبَادِهِ وَالْطَّيِّبَاتِ مِنَ الرزق قُلْ هِي لِلَّذِينَ آمَنُواْ فِي الحياة الدنيا خَالِصَةً يَوْمَ القيامة كَذَلِكَ نُفَصِّلُ الآيات لِقَوْمٍ يَعْلَمُونَ} [الأعراف: 32]\r\nعلى ان الحمد لله ليس في الدنيا فقط.. بل هو في الدنيا والاخرة', '2020-04-16 05:24:32', '2020-04-16 05:24:32'),
(293, 2, 312, 'واذا عدنا إلى بيوتنا فالله سخر لنا زوجاتنا ورزقنا بأولادنا وهذا يستوجب الحمد\r\nاذن فكل حركة حياة في الدنيا من الانسان تستوجب الحمد.. ولهذا لابد ان يكون الانسان حامدا دائما..\r\nبل ان الانسان يجب ان يحمد الله على اي مكروه أصابه؛ لأنه قد يكون الشيء الذي يعتبره شرا هو عينه الخير\r\nفالله تعالى يقول:\r\n{يَا أَيُّهَا الذين آمَنُواْ لاَ يَحِلُّ لَكُمْ أَن تَرِثُواْ النسآء كَرْهاً وَلاَ تَعْضُلُوهُنَّ لِتَذْهَبُواْ بِبَعْضِ ما آتَيْتُمُوهُنَّ إِلاَّ أَن يَأْتِينَ بِفَاحِشَةٍ مُّبَيِّنَةٍ وَعَاشِرُوهُنَّ بالمعروف فَإِن كَرِهْتُمُوهُنَّ فعسى أَن تَكْرَهُواْ شَيْئاً وَيَجْعَلَ الله فِيهيهِ خَيْراً كَثِيراً}\r\n[النساء: 19]', '2020-04-16 05:25:52', '2020-04-16 05:25:52'),
(294, 2, 313, 'عندما ننام ويأخذ الله سبحانه وتعالى أرواحنا، ثم يردها الينا عندما نستيقظ، فإن هذا يوجب الحمد، فالله سبحانه وتعالى يقول:\r\n{الله يَتَوَفَّى الأنفس حِينَ مَوْتِهَا والتي لَمْ تَمُتْ فِي مَنَامِهَا فَيُمْسِكُ التي قضى عَلَيْهَا الموت وَيُرْسِلُ الأخرى إلى أَجَلٍ مُّسَمًّى إِنَّ فِي ذَلِكَ لآيَاتٍ لِّقَوْمٍ يَتَفَكَّرُونَ}\r\n[الزمر: 42] وهكذا فإن مجرد استيقاظنا من النوم، وان الله سبحانه وتعالى رد علينا أرواحنا، وهذا الرد يستوجب الحمد،', '2020-04-16 05:27:13', '2020-04-16 05:27:13'),
(295, 2, 314, '{وَإِذْ تَأَذَّنَ رَبُّكُمْ لَئِن شَكَرْتُمْ لأَزِيدَنَّكُمْ وَلَئِن كَفَرْتُمْ إِنَّ عَذَابِي لَشَدِيدٌ} [إبراهيم: 7]\r\nوهكذا نعرف ان الشكر على النعمة يعطينا مزيدا من النعمة.. فنشكر عليها فتعطينا المزيد وهكذا يظل الحمد دائماً والنعمة دائمة.. اننا لو استعرضنا حياتنا كلها فكل حركة فيها تقتضي الحمد،', '2020-04-16 05:31:28', '2020-04-16 05:31:28'),
(296, 2, 315, 'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ أُجِيبُ دَعْوَةَ الداع إِذَا دَعَانِ فَلْيَسْتَجِيبُواْ لِي وَلْيُؤْمِنُواْ بِي لَععَلَّهُمْ يَرْشُدُونَ} [البقرة: 186]\r\nوالله سبحانه وتعالى يعرف ما في نفسك، ولذلك فإنه يعطيك دون أن تسأل. واقرأ الحديث القدسي: يقول رب العزة: (من شغله ذكري عن مسألتي أعطيته أفضل ما أعطي السائلين)', '2020-04-16 05:35:20', '2020-04-16 05:35:20'),
(297, 2, 316, 'القرآن يجيب', '2020-04-16 05:54:54', '2020-04-16 05:54:54'),
(298, 2, 317, 'Did Jesus preach, peace be upon him', '2020-04-16 05:57:28', '2020-04-16 06:45:57'),
(299, 2, 318, 'أركان الإسلام', '2020-04-16 06:05:29', '2020-04-16 06:05:29'),
(300, 2, 319, 'الشّهادتان', '2020-04-16 06:07:33', '2020-04-16 06:07:33'),
(301, 2, 320, 'ومعنى الشهادتين (أن يشهد المسلم بشهادتي الإسلام قائلاً: (أشْهَدُ أنْ لا إِلهَ إلّا اللهُ وأشْهَدُ أنّ محمّداً رسولُ اللهِ))، وتُستفاد هذه الصيغة للشهادتين من قوله تعالى: (أشَهِدَ اللَّهُ أَنَّهُ لا إِلَهَ إِلَّا هُوَ وَالْمَلائِكَةُ وَأُولُو الْعِلْمِ قَائِماً بِالْقِسْطِ لا إِلَهَ إِلَّا هُوَ الْعَزِيزُ الْحَكِيمُ)،[٤] وقوله تعالى: (مُحَمَّدٌ رَسُولُ اللَّهِ وَالَّذِينَ مَعَهُ أَشِدَّاءُ عَلَى الْكُفَّارِ رُحَمَاءُ بَيْنَهُمْ).[٥] أما معنى قول: (لا إلهَ إلّا اللهُ): أي أنّه لا معبودَ يُعبد بحقٍّ في الوجود إلا الله -تبارك وتعالى- وحدَه، وأنّه لا شريك له، بل هو واحد بألوهيّته وربوبيّته وأسمائه وصفاته، قال تعالى: (وَإِذْ قَالَ إِبْرَاهِيمُ لِأَبِيهِ وَقَوْمِهِ إِنَّنِي بَرَاءٌ مِمَّا تَعْبُدُونَ*إِلَّا الَّذِي فَطَرَنِي)؛[٦] فمعنى الشّهادتَين: هو أن يشهد المسلم أنّه لا معبود بحقٍّ إلا الله، وأنّ يشهد أن محمّداً هو عبد الله ورسوله وخاتم الأنبياء والمُرسَلين.[٧]', '2020-04-16 06:07:33', '2020-04-16 06:07:33'),
(302, 2, 321, 'إقامة الصّلاة', '2020-04-16 06:09:03', '2020-04-16 06:09:03'),
(303, 2, 322, 'الصلّاة عمود الدّين الإسلاميّ، وأوّل ما يُحاسَب عليه العبد المسلم يوم القيامة الصّلاة، فإن صَلحت صَلح سائر العمل والعبادة، والصّلاة هي الصلة بين العبد وربّه، ومعنى ركن إقامة الصلاة أن يعتقد الإنسان اعتقاداً جازماً أنّ الله قد أوجب وفرض على كلّ مسلمٍ بالغٍ عاقلٍ أهلٌ للتكليف خمس صلواتٍ مفروضةٍ في اليوم واللّيلة، وعلى المسلم أن يُؤدّي الصّلوات الخمس المفروضة حسب وقتها وهيئتها وكيّفيتها، وأنّ يكون على طهارةٍ، والصّلوات المفروضة هي صلاة الفجر، وصلاة الظّهر، وصلاة العصر، وصلاة المغرب، وصلاة العشاء، وتمثّل إقامة الصلاة نافلةً كانت أو فرضاً صِدقَ وصحة التّوجُّه إلى الله تبارك وتعالى وحدَه لا شريك له في الأمور جميعها، مع صدق التوكّل عليه، وصدق اللّجوء إليه.[٨] ودقّة التعبير باللفظ الدّال على إقامة الصّلاة هو إقامتها على أفضل وجهٍ مُمكن والإتيان بها على حقيقتها، وهذا هو المطلوب من كل مسلم تحقيقه في الصّلاة، وهي الصلة اليوميّة بين العبد وخالقه، فالمطلوب إقامتها لا أداءها فحسب؛ لأن الأداء لا يعني الإتيان بها على حقيقتها، فللصّلاة أثر عجيب إذا ما أقامها المُسلم بحقّها والتزم أخلاقها التي تدعو لها، والفضائل التي تُرشِد إليها، فكلّ مسلمٍ التزم بتلك الأخلاق بعد التزامه بأداء الصّلاة فهو مسلمٌ مُقيمٌ للصّلاة، وفرقٌ كبير بين مُقيمٌ للرّكن ومؤدٍّ له.[٨] قال تعالى: (اتْلُ مَا أُوحِيَ إِلَيْكَ مِنَ الْكِتَابِ وَأَقِمِ الصَّلَاةَ ۖ إِنَّ الصَّلَاةَ تَنْهَىٰ عَنِ الْفَحْشَاءِ وَالْمُنكَرِ ۗ وَلَذِكْرُ اللَّهِ أَكْبَرُ ۗ وَاللَّهُ يَعْلَمُ مَا تَصْنَعُونَ).[٩]', '2020-04-16 06:09:03', '2020-04-16 06:09:03'),
(304, 2, 323, 'الصّيام', '2020-04-16 06:12:01', '2020-04-16 06:12:01'),
(305, 2, 324, 'يُعرّف الصّيام بأنّه الإمساك عن جميع المُفطرات من الفجر الصادق إلى غروب الشمس؛ بقصد التقرّب إلى الله وطاعته، والتزام أمره سبحانه وتعالى. فالصوم هو ركن من أركان الإسلام الخمسة، وله أحكام خاصّة وكيفيّة شرعيّة، ويجب التقيّد فيها كما جاءت دون زيادةٍ أو نُقصان، ولا يُعدّ العبد مُحقّقاً لحقيقة الصيام إلّا إذا ترك وأمسك عن جميع المفطرات الحسيّة والمعنويّة؛ فالمُفطرات الحسيّة هي الأكل والشّرب، والمُفطرات المعنويّة هي الأفعال والأمور المُنقِصة لأجر الصّائم من الذّنوب؛ فيُمسك عن ارتكاب الذنوب والمعاصي والمُنكَرات، فيبتعد عن الخصام والرّفث، وبما أنّ الصّوم ركنٌ من أركان الإسلام فهو فرضٌ على كل مسلمٍ ومسلمةٍ بشرط أهليّة التّكليف.[٨]', '2020-04-16 06:12:01', '2020-04-16 06:12:01'),
(306, 2, 325, 'إيتاء الزّكاة', '2020-04-16 06:13:04', '2020-04-16 06:13:04'),
(307, 2, 326, 'الزّكاة ركنٌ من أركان الإسلام الخمسة، وهي حقٌّ واجبٌ في المال في أحوالٍ خاصّةٍ في توقيتٍ مُحدَّدٍ، والزّكاة هي المقدار الواجب إخراجه من أموال المسلمين لمُستحقّيه، ويكون ذلك في المال الذي بلغ النِّصاب الشرعيّ مُحدّد المقدار في الشريعة الإسلاميّة بنظامٍ دقيقٍ وبشروطٍ مُعيّنةٍ، ويُطلَق لفظ الزّكاة على المقدار الذي يتم استخراجه من مجموع المال المُزكّى به، فيُسمّى ذلك المقدار المُستخرَج من المال زكاةً‏.[١٠]‏ وقد أوجب الله سبحانه وتعالى الزّكاة في الأموال التي لها قابليّة النموّ والزّيادة، فأوجب الزكاة في الأموال التي يمكن تنميتها، وهي الأنعام، والذّهب والفضّة اللذان يُعرفان بالنقدين، وكذلك من الأموال التي تنمو فأوجب فيها الزّكاة؛ كالزروع والثمار، وعروض التجارة. أمّا مصارف الزّكاة فهي ثمانية مصارف؛ وقد بيّنها الله تبارك وتعالى بالنص عليها في القرآن الكريم بقوله: (إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّهِ وَابْنِ السَّبِيلِ ۖ فَرِيضَةً مِّنَ اللَّهِ ۗ وَاللَّهُ عَلِيمٌ حَكِيمٌ)،[١١] ولذلك فمصارف الزّكاة التي أوجب الله صرفها عليها هي هذه المصارف الثمانية، فمن أخرج الزّكاة في غير هذه المصارف فلم يَقُم بالرّكن المطلوب منه، ولا تسقط عنه فريضة الزكاة؛ لأنّه لم يَقُم به بالكيفيّة الشرعيّة المُحدّدة في هذا الرّكن، وتبقى ذمته مشغولةً بهذا المال الذي أوجبه الله عليه فرضاً حقاً لأصناف الزّكاة الثّمانية، ويجب على المسلم إخراج مقدار الزّكاة الواجب عليه فورَ وجوبها، بشرط أن تكون بلغت النِّصاب الشرعيّ المُحدّد أيضاً بالشريعة الإسلاميّة من خلال نظام الزّكاة، ويشترط كذلك أن يُحوّل الحول على المال، فأي مسلم حالَ على ماله سنة كاملة مع وجود باقي شروط الزّكاة وجب عليه إخراج الزّكاة فرضاً، مع الأخذ بعين الاعتبار أن الزّكاة عبادةٌ شأنها شأنُ باقي العبادات، فيجوز تأخير دفع الزّكاة لمُستحقّيها مع وجود الظروف الخاصّة أو حتى العامّة التي تحول دون دفع الزكاة، فأحكام التيسير عند المَشقّة لدفع الضّرر تُطبق أيضاً في الزّكاة، ولكن على ألا يكون الدّافع هو التهرّب من دفع حقوق المُستحقّين لأموال الزّكاة.[٨]', '2020-04-16 06:13:04', '2020-04-16 06:13:04'),
(308, 2, 327, 'الحجّ', '2020-04-16 06:13:05', '2020-04-16 06:13:05'),
(309, 2, 328, 'ومن أركان الإسلام الخمسة كذلك الحجّ الذي فرضهُ الله تبارك وتعالى على المسلمين مرّةً واحدةً في حياة الإنسان، بشرط القدرة الصحيّة والماليّة، وأن يكون الطّريق إلى الحجّ آمناً بحيث إذا ترك بلاده وسافر للحج فإنّه يأمن الطريق وشروره على الأغلب، فإن لم يأمن الطّريق وغلب على الظنّ الهلاك إذا خرج من بلده؛ فتنتفي القدرة بانعدام أمن الطّريق، وذلك لقوله سبحانه وتعالى: (وَللهِ عَلَى النَّاسِ حِجُّ الْبَيْتِ مَنِ اسْتَطَاعَ إِلَيْهِ سَبِيلاً وَمَن كَفَرَ فَإِنَّ اللهَ غَنِيٌّ عَنِ الْعَالَمِينَ)،[١٢] أمّا معنى الحجّ وقد عرّف العلماءُ الحج بأنه (قصدُ بيت الله تعالى بصفةٍ مخصوصةٍ، في وقتٍ مخصوصٍ، بشرائطَ وأركانٍ وفروعٍ مخصوصةٍ).[١٣]', '2020-04-16 06:13:05', '2020-04-16 06:13:05'),
(310, 2, 329, 'دليل الحج والمعتمر', '2020-04-16 06:20:09', '2020-04-16 06:20:09'),
(311, 2, 330, 'أذكار', '2020-04-16 06:31:51', '2020-04-16 06:31:51'),
(312, 2, 331, 'رمضان', '2020-04-16 07:10:05', '2020-04-16 07:10:05'),
(313, 2, 332, 'ادعية رمضانية', '2020-04-16 07:12:03', '2020-04-16 07:12:03'),
(314, 2, 333, 'أحاديث رمضانية', '2020-04-16 07:13:35', '2020-04-16 08:25:51'),
(317, 2, 336, 'اناشيد', '2020-04-16 07:17:25', '2020-04-16 07:17:25'),
(318, 2, 337, 'اذا كان اول ليله من شهر رمضان', '2020-04-16 08:06:05', '2020-04-16 08:06:05'),
(319, 2, 338, 'نهي عن صيام يوم الشك', '2020-04-16 08:07:59', '2020-04-16 08:07:59'),
(324, 2, 343, 'تفسير القرآن', '2020-04-16 08:30:09', '2020-04-16 08:30:09'),
(325, 2, 344, 'تفسير القرآن باللغة الإنجليزية', '2020-04-16 08:31:49', '2020-04-16 08:31:49'),
(326, 2, 345, 'تفسير القرآن باللغة العربية', '2020-04-16 08:32:25', '2020-04-16 08:32:25'),
(327, 2, 346, 'تفسير القرآن باللغة الأردية', '2020-04-16 08:33:03', '2020-04-16 08:33:03'),
(328, 2, 347, 'سورة النور', '2020-04-16 08:41:10', '2020-04-16 08:41:10'),
(329, 2, 348, 'سورة يونس', '2020-04-16 08:42:50', '2020-04-16 08:42:50'),
(330, 2, 349, 'سورة البقرة', '2020-04-16 08:44:23', '2020-04-16 08:44:23'),
(331, 2, 350, 'فضل الحج', '2020-04-16 08:48:06', '2020-04-16 08:48:06'),
(332, 2, 351, 'من نسي وهو صائم', '2020-04-16 08:50:00', '2020-04-16 08:50:00'),
(333, 2, 352, 'رمضان مبارك', '2020-04-16 08:52:52', '2020-04-16 08:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `tim_wes`
--

CREATE TABLE `tim_wes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_wes`
--

INSERT INTO `tim_wes` (`id`, `api_request`, `payload`, `response`, `header`, `type`, `created_at`, `updated_at`) VALUES
(1, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"41:1588165057121\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"92587627-e951-444b-b60d-f74806474b4b\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: TUnpkLFl5hLTtKpMeNWPdR2ltB575R1ujCwchCi1IMI=\",\"external-tx-id: 92587627-e951-444b-b60d-f74806474b4b\"]', 'Timwe subscription Confirm', '2020-04-29 12:57:37', '2020-04-29 12:57:37'),
(2, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"50:1588166280939\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"0bd6c22f-deb9-460e-9026-846292312360\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: CTiOsXAW3PuiirSSYnYVqZYcNoEDBY0JUbxtB+Su5U4=\",\"external-tx-id: 0bd6c22f-deb9-460e-9026-846292312360\"]', 'Timwe subscription Confirm', '2020-04-29 13:18:00', '2020-04-29 13:18:00'),
(3, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"1870:1588166302976\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"7b65cedf-0b0e-4ef2-803d-2b239b94a182\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: WYIF3fJJiCmyildYaiLzn5svX92sV+QvhhQonUIzAOk=\",\"external-tx-id: 7b65cedf-0b0e-4ef2-803d-2b239b94a182\"]', 'Timwe subscription Confirm', '2020-04-29 13:18:22', '2020-04-29 13:18:22'),
(4, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"51:1588166421567\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"0679f531-8308-44ca-a39a-6e9e867cb902\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: kzBe9RNrMRzbABvp1D9cIul+3VpApapToRXfsx4uZQQ=\",\"external-tx-id: 0679f531-8308-44ca-a39a-6e9e867cb902\"]', 'Timwe subscription Confirm', '2020-04-29 13:20:21', '2020-04-29 13:20:21'),
(5, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"1892:1588166429129\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"ba9752fe-916b-4bae-b711-ab7c1f4ea56e\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: pYUo7sqUaF+jeqxAn5r3LieiXD7icG6hRCG943JqyF8=\",\"external-tx-id: ba9752fe-916b-4bae-b711-ab7c1f4ea56e\"]', 'Timwe subscription Confirm', '2020-04-29 13:20:29', '2020-04-29 13:20:29'),
(6, 'https://qao.timwe.com/external/v2/subscription/optin/confirm/2614', '{\"userIdentifier\":\"no session found\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"clientIp\":\"\",\"transactionAuthCode\":\"1234\"}', '{\"message\":\"Transaction not found\",\"inError\":true,\"requestId\":\"1865:1588166433825\",\"code\":\"NOT_PREACTIVE\",\"responseData\":{\"externalTxId\":\"25aeda85-c2f9-49eb-948f-663129d655cc\",\"subscriptionResult\":\"null\",\"subscriptionError\":\"null\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: L5LoR1B1Y0RYJl32vbtErfMWLE\\/AknUdDsfzXv2gsyU=\",\"external-tx-id: 25aeda85-c2f9-49eb-948f-663129d655cc\"]', 'Timwe subscription Confirm', '2020-04-29 13:20:33', '2020-04-29 13:20:33'),
(7, 'https://qao.timwe.com/external/v2/subscription/optin/2614', '{\"userIdentifier\":\"97466671329\",\"userIdentifierType\":\"MSISDN\",\"productId\":\"10458\",\"mcc\":\"427\",\"mnc\":\"01\",\"entryChannel\":\"WEB\",\"largeAccount\":\"92842\",\"subKeyword\":\"\"}', '{\"message\":\"Phase is null or empty. \",\"inError\":true,\"requestId\":\"1865:1588166739517\",\"code\":\"GENERIC_ERROR_CODE\",\"responseData\":{\"transactionId\":\"eb1069d7-8a1c-11ea-9cac-005056b77fc1\",\"externalTxId\":\"68ac451f-f2a5-4eb2-8cb2-be75ecaad7e4\",\"subscriptionResult\":\"OPTIN_ALREADY_ACTIVE\",\"subscriptionError\":\"Already Active\"}}', '[\"Content-Type: application\\/json\",\"apikey: 8086e440d80847a6b534c88a6c33a172\",\"authentication: SQho\\/LgZWSAPE\\/m+RQIp02zJbPAZ68Py\\/ldbvMKGpZ8=\",\"external-tx-id: 68ac451f-f2a5-4eb2-8cb2-be75ecaad7e4\"]', 'Timwe Subscription OptIn', '2020-04-29 13:25:39', '2020-04-29 13:25:39'),
(8, 'https://qao.timwe.com/external/v2/sms/mt/2614/', '{\"productId\":\"10458\",\"pricepointId\":\"46742\",\"mcc\":\"427\",\"mnc\":\"01\",\"text\":\"http:\\/\\/localhost\\/mondia_php7?OpID=12\",\"msisdn\":\"97466671329\",\"largeAccount\":\"92842\",\"sendDate\":\"\'.2020-04-29T13:33:14+00:00.\'\",\"priority\":\"NORMAL\",\"timezone\":\"Asia\\/Qatar\",\"context\":\"STATELESS\",\"moTransactionUUID\":\"\"}', '{\"requestId\":\"45:1588167195221\",\"code\":\"SUCCESS\",\"inError\":false,\"responseData\":{\"transactionUUID\":\"fab100a0-8a1d-11ea-a097-005056b71b59\"}}', '[\"Content-Type: application\\/json\",\"apikey: 98c489a1415047c4b19ab30436289de2\",\"authentication: OaZR1frmvVhQqGWO8oBWC5o+DK36R4hI2JZm\\/GA6Cpk=\",\"external-tx-id: 1e07fecf-5370-48c5-bbe5-f2dfba845a05\"]', 'Send MT', '2020-04-29 13:33:15', '2020-04-29 13:33:15'),
(9, 'https://qao.timwe.com/external/v2/sms/mt/2614/', '{\"productId\":\"10458\",\"pricepointId\":\"46742\",\"mcc\":\"427\",\"mnc\":\"01\",\"text\":\"http:\\/\\/localhost\\/mondia_php7?OpID=12\",\"msisdn\":\"97466671329\",\"largeAccount\":\"92842\",\"sendDate\":\"\'.2020-04-29T13:41:08+00:00.\'\",\"priority\":\"NORMAL\",\"timezone\":\"Asia\\/Qatar\",\"context\":\"STATELESS\",\"moTransactionUUID\":\"\"}', '{\"requestId\":\"1852:1588167668969\",\"code\":\"SUCCESS\",\"inError\":false,\"responseData\":{\"transactionUUID\":\"150d16a5-8a1f-11ea-9cac-005056b77fc1\"}}', '[\"Content-Type: application\\/json\",\"apikey: 98c489a1415047c4b19ab30436289de2\",\"authentication: tQM0VCm3b474QDBzuC1KKFhzJoZGwOW8MauB+0Hisdw=\",\"external-tx-id: 6dab9398-b288-409f-a8f2-a05a34e1f193\"]', 'Send MT', '2020-04-29 13:41:08', '2020-04-29 13:41:08'),
(10, 'https://qao.timwe.com/external/v2/sms/mt/2614/', '{\"productId\":\"10458\",\"pricepointId\":\"46742\",\"mcc\":\"427\",\"mnc\":\"01\",\"text\":\"http:\\/\\/localhost\\/mondia_php7?OpID=12\",\"msisdn\":\"97466671329\",\"largeAccount\":\"92842\",\"sendDate\":\"\'.2020-04-29T13:42:04+00:00.\'\",\"priority\":\"NORMAL\",\"timezone\":\"Asia\\/Qatar\",\"context\":\"STATELESS\",\"moTransactionUUID\":\"\"}', '{\"requestId\":\"48:1588167725137\",\"code\":\"SUCCESS\",\"inError\":false,\"responseData\":{\"transactionUUID\":\"369142ac-8a1f-11ea-a097-005056b71b59\"}}', '[\"Content-Type: application\\/json\",\"apikey: 98c489a1415047c4b19ab30436289de2\",\"authentication: RhsCqCMP7025BeYJNM9rYpVdqSuVhRUR3rKQvLfw6XU=\",\"external-tx-id: 7e9a6528-a4c2-4bc8-8e7e-04830d452692\"]', 'Send MT', '2020-04-29 13:42:05', '2020-04-29 13:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `translatables`
--

CREATE TABLE `translatables` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translatables`
--

INSERT INTO `translatables` (`id`, `table_name`, `record_id`, `column_name`, `created_at`, `updated_at`) VALUES
(33, 'services', '25', 'title', '2020-03-30 12:39:32', '2020-03-30 12:39:32'),
(34, 'contents', '53', 'title', '2020-03-30 12:41:08', '2020-03-30 12:41:08'),
(35, 'contents', '54', 'title', '2020-03-30 12:41:50', '2020-03-30 12:41:50'),
(36, 'contents', '55', 'title', '2020-03-30 12:42:15', '2020-03-30 12:42:15'),
(37, 'contents', '56', 'title', '2020-03-30 12:42:59', '2020-03-30 12:42:59'),
(38, 'contents', '57', 'title', '2020-03-30 12:44:48', '2020-03-30 12:44:48'),
(39, 'contents', '57', 'content_text', '2020-03-30 12:44:48', '2020-03-30 12:44:48'),
(40, 'contents', '58', 'title', '2020-03-30 12:46:26', '2020-03-30 12:46:26'),
(41, 'contents', '58', 'content_text', '2020-03-30 12:46:26', '2020-03-30 12:46:26'),
(42, 'contents', '59', 'title', '2020-03-30 12:47:22', '2020-03-30 12:47:22'),
(43, 'contents', '60', 'title', '2020-03-30 12:47:50', '2020-03-30 12:47:50'),
(44, 'contents', '61', 'title', '2020-03-30 12:48:25', '2020-03-30 12:48:25'),
(45, 'contents', '62', 'title', '2020-03-30 12:49:06', '2020-03-30 12:49:06'),
(46, 'audios', '22', 'title', '2020-03-30 12:55:40', '2020-03-30 12:55:40'),
(47, 'audios', '23', 'title', '2020-03-30 12:56:15', '2020-03-30 12:56:15'),
(48, 'audios', '24', 'title', '2020-03-30 12:56:53', '2020-03-30 12:56:53'),
(49, 'audios', '25', 'title', '2020-03-30 12:57:29', '2020-03-30 12:57:29'),
(50, 'audios', '26', 'title', '2020-03-30 12:57:59', '2020-03-30 12:57:59'),
(51, 'audios', '27', 'title', '2020-03-30 12:58:45', '2020-03-30 12:58:45'),
(52, 'services', '26', 'title', '2020-03-30 13:01:51', '2020-03-30 13:01:51'),
(53, 'services', '27', 'title', '2020-03-30 13:03:39', '2020-03-30 13:03:39'),
(55, 'services', '28', 'title', '2020-04-01 17:37:34', '2020-04-01 17:37:34'),
(56, 'contents', '63', 'title', '2020-04-01 17:38:11', '2020-04-01 17:38:11'),
(57, 'services', '29', 'title', '2020-04-02 10:30:59', '2020-04-02 10:30:59'),
(58, 'contents', '64', 'title', '2020-04-02 10:31:24', '2020-04-02 10:31:24'),
(59, 'contents', '65', 'title', '2020-04-02 10:48:01', '2020-04-02 10:48:01'),
(60, 'services', '30', 'title', '2020-04-02 13:14:19', '2020-04-02 13:14:19'),
(61, 'contents', '66', 'title', '2020-04-02 13:14:42', '2020-04-02 13:14:42'),
(62, 'contents', '67', 'title', '2020-04-02 14:02:27', '2020-04-02 14:02:27'),
(63, 'services', '31', 'title', '2020-04-03 16:57:48', '2020-04-03 16:57:48'),
(64, 'contents', '68', 'title', '2020-04-03 16:59:15', '2020-04-03 16:59:15'),
(65, 'contents', '68', 'content_text', '2020-04-03 16:59:16', '2020-04-03 16:59:16'),
(66, 'audios', '28', 'title', '2020-04-03 19:56:57', '2020-04-03 19:56:57'),
(67, 'audios', '29', 'title', '2020-04-03 19:58:03', '2020-04-03 19:58:03'),
(68, 'audios', '30', 'title', '2020-04-03 20:05:19', '2020-04-03 20:05:19'),
(69, 'audios', '31', 'title', '2020-04-03 20:07:57', '2020-04-03 20:07:57'),
(71, 'audios', '32', 'title', '2020-04-08 15:36:18', '2020-04-08 15:36:18'),
(72, 'services', '32', 'title', '2020-04-08 15:40:47', '2020-04-08 15:40:47'),
(73, 'contents', '69', 'title', '2020-04-08 15:50:26', '2020-04-08 15:50:26'),
(75, 'providers', '20', 'title', '2020-04-09 18:49:24', '2020-04-09 18:49:24'),
(76, 'services', '33', 'title', '2020-04-09 18:49:49', '2020-04-09 18:49:49'),
(78, 'audios', '33', 'title', '2020-04-09 18:53:38', '2020-04-09 18:53:38'),
(79, 'audios', '34', 'title', '2020-04-09 18:55:27', '2020-04-09 18:55:27'),
(80, 'audios', '35', 'title', '2020-04-09 19:04:59', '2020-04-09 19:04:59'),
(81, 'audios', '36', 'title', '2020-04-09 19:05:24', '2020-04-09 19:05:24'),
(82, 'services', '34', 'title', '2020-04-14 01:35:26', '2020-04-14 01:35:26'),
(83, 'contents', '71', 'title', '2020-04-14 01:40:32', '2020-04-14 01:40:32'),
(84, 'contents', '72', 'title', '2020-04-14 01:43:44', '2020-04-14 01:43:44'),
(85, 'contents', '73', 'title', '2020-04-14 01:45:06', '2020-04-14 01:45:06'),
(86, 'contents', '74', 'title', '2020-04-14 01:46:12', '2020-04-14 01:46:12'),
(87, 'contents', '75', 'title', '2020-04-14 01:47:11', '2020-04-14 01:47:11'),
(88, 'contents', '76', 'title', '2020-04-14 01:48:10', '2020-04-14 01:48:10'),
(89, 'contents', '77', 'title', '2020-04-14 01:49:52', '2020-04-14 01:49:52'),
(90, 'contents', '78', 'title', '2020-04-14 01:50:43', '2020-04-14 01:50:43'),
(91, 'contents', '79', 'title', '2020-04-14 01:51:32', '2020-04-14 01:51:32'),
(92, 'contents', '80', 'title', '2020-04-14 01:52:17', '2020-04-14 01:52:17'),
(103, 'services', '35', 'title', '2020-04-14 02:15:19', '2020-04-14 02:15:19'),
(114, 'services', '36', 'title', '2020-04-14 02:28:53', '2020-04-14 02:28:53'),
(115, 'contents', '101', 'title', '2020-04-14 02:33:13', '2020-04-14 02:33:13'),
(116, 'contents', '102', 'title', '2020-04-14 02:33:46', '2020-04-14 02:33:46'),
(117, 'contents', '103', 'title', '2020-04-14 02:34:44', '2020-04-14 02:34:44'),
(118, 'contents', '104', 'title', '2020-04-14 02:35:21', '2020-04-14 02:35:21'),
(119, 'contents', '105', 'title', '2020-04-14 02:36:22', '2020-04-14 02:36:22'),
(120, 'contents', '106', 'title', '2020-04-14 02:37:45', '2020-04-14 02:37:45'),
(121, 'contents', '107', 'title', '2020-04-14 02:38:15', '2020-04-14 02:38:15'),
(122, 'contents', '108', 'title', '2020-04-14 02:38:50', '2020-04-14 02:38:50'),
(123, 'contents', '109', 'title', '2020-04-14 02:39:29', '2020-04-14 02:39:29'),
(124, 'contents', '110', 'title', '2020-04-14 02:40:07', '2020-04-14 02:40:07'),
(125, 'providers', '21', 'title', '2020-04-14 02:43:07', '2020-04-14 02:43:07'),
(126, 'providers', '22', 'title', '2020-04-14 02:43:57', '2020-04-14 02:43:57'),
(127, 'services', '37', 'title', '2020-04-14 02:45:34', '2020-04-14 02:45:34'),
(128, 'services', '38', 'title', '2020-04-14 02:49:36', '2020-04-14 02:49:36'),
(129, 'services', '39', 'title', '2020-04-14 02:51:02', '2020-04-14 02:51:02'),
(130, 'contents', '111', 'title', '2020-04-14 02:55:58', '2020-04-14 02:55:58'),
(131, 'contents', '112', 'title', '2020-04-14 02:56:38', '2020-04-14 02:56:38'),
(132, 'contents', '113', 'title', '2020-04-14 02:57:39', '2020-04-14 02:57:39'),
(133, 'contents', '114', 'title', '2020-04-14 02:58:38', '2020-04-14 02:58:38'),
(134, 'contents', '115', 'title', '2020-04-14 02:59:26', '2020-04-14 02:59:26'),
(135, 'contents', '116', 'title', '2020-04-14 03:00:07', '2020-04-14 03:00:07'),
(136, 'contents', '117', 'title', '2020-04-14 03:00:55', '2020-04-14 03:00:55'),
(137, 'contents', '118', 'title', '2020-04-14 03:01:43', '2020-04-14 03:01:43'),
(138, 'contents', '119', 'title', '2020-04-14 03:02:32', '2020-04-14 03:02:32'),
(139, 'contents', '120', 'title', '2020-04-14 03:03:12', '2020-04-14 03:03:12'),
(140, 'contents', '121', 'title', '2020-04-14 03:07:25', '2020-04-14 03:07:25'),
(141, 'contents', '122', 'title', '2020-04-14 03:08:08', '2020-04-14 03:08:08'),
(142, 'contents', '123', 'title', '2020-04-14 03:09:10', '2020-04-14 03:09:10'),
(143, 'contents', '124', 'title', '2020-04-14 03:09:55', '2020-04-14 03:09:55'),
(144, 'contents', '125', 'title', '2020-04-14 03:10:46', '2020-04-14 03:10:46'),
(145, 'contents', '126', 'title', '2020-04-14 03:11:25', '2020-04-14 03:11:25'),
(146, 'contents', '127', 'title', '2020-04-14 03:12:02', '2020-04-14 03:12:02'),
(147, 'contents', '128', 'title', '2020-04-14 03:12:39', '2020-04-14 03:12:39'),
(148, 'contents', '129', 'title', '2020-04-14 03:13:43', '2020-04-14 03:13:43'),
(149, 'contents', '130', 'title', '2020-04-14 03:14:18', '2020-04-14 03:14:18'),
(150, 'contents', '131', 'title', '2020-04-14 03:45:42', '2020-04-14 03:45:42'),
(151, 'contents', '132', 'title', '2020-04-14 03:46:26', '2020-04-14 03:46:26'),
(152, 'contents', '133', 'title', '2020-04-14 03:49:46', '2020-04-14 03:49:46'),
(153, 'contents', '134', 'title', '2020-04-14 03:50:50', '2020-04-14 03:50:50'),
(154, 'contents', '135', 'title', '2020-04-14 03:51:31', '2020-04-14 03:51:31'),
(156, 'contents', '137', 'title', '2020-04-14 03:52:36', '2020-04-14 03:52:36'),
(157, 'contents', '138', 'title', '2020-04-14 03:54:34', '2020-04-14 03:54:34'),
(158, 'contents', '139', 'title', '2020-04-14 03:56:17', '2020-04-14 03:56:17'),
(159, 'contents', '140', 'title', '2020-04-14 03:57:06', '2020-04-14 03:57:06'),
(160, 'contents', '141', 'title', '2020-04-14 03:57:56', '2020-04-14 03:57:56'),
(161, 'contents', '142', 'title', '2020-04-15 01:33:02', '2020-04-15 01:33:02'),
(162, 'contents', '143', 'title', '2020-04-15 01:33:41', '2020-04-15 01:33:41'),
(163, 'contents', '144', 'title', '2020-04-15 01:34:35', '2020-04-15 01:34:35'),
(164, 'contents', '145', 'title', '2020-04-15 01:35:14', '2020-04-15 01:35:14'),
(165, 'contents', '146', 'title', '2020-04-15 01:35:52', '2020-04-15 01:35:52'),
(166, 'contents', '147', 'title', '2020-04-15 01:36:29', '2020-04-15 01:36:29'),
(167, 'contents', '148', 'title', '2020-04-15 01:37:05', '2020-04-15 01:37:05'),
(168, 'contents', '149', 'title', '2020-04-15 01:37:44', '2020-04-15 01:37:44'),
(169, 'contents', '150', 'title', '2020-04-15 01:38:25', '2020-04-15 01:38:25'),
(170, 'contents', '151', 'title', '2020-04-15 01:39:33', '2020-04-15 01:39:33'),
(171, 'contents', '152', 'title', '2020-04-15 01:40:36', '2020-04-15 01:40:36'),
(172, 'contents', '153', 'title', '2020-04-15 01:41:59', '2020-04-15 01:41:59'),
(173, 'contents', '154', 'title', '2020-04-15 01:44:12', '2020-04-15 01:44:12'),
(174, 'contents', '155', 'title', '2020-04-15 01:45:29', '2020-04-15 01:45:29'),
(175, 'contents', '156', 'title', '2020-04-15 01:46:40', '2020-04-15 01:46:40'),
(176, 'contents', '157', 'title', '2020-04-15 01:47:53', '2020-04-15 01:47:53'),
(177, 'contents', '158', 'title', '2020-04-15 01:48:40', '2020-04-15 01:48:40'),
(178, 'contents', '159', 'title', '2020-04-15 01:49:22', '2020-04-15 01:49:22'),
(179, 'contents', '160', 'title', '2020-04-15 01:50:31', '2020-04-15 01:50:31'),
(180, 'contents', '161', 'title', '2020-04-15 01:51:14', '2020-04-15 01:51:14'),
(199, 'contents', '180', 'title', '2020-04-15 02:24:07', '2020-04-15 02:24:07'),
(200, 'contents', '181', 'title', '2020-04-15 02:25:43', '2020-04-15 02:25:43'),
(201, 'contents', '182', 'title', '2020-04-15 02:26:56', '2020-04-15 02:26:56'),
(202, 'contents', '183', 'title', '2020-04-15 02:28:11', '2020-04-15 02:28:11'),
(203, 'contents', '184', 'title', '2020-04-15 02:30:51', '2020-04-15 02:30:51'),
(204, 'contents', '185', 'title', '2020-04-15 02:33:02', '2020-04-15 02:33:02'),
(205, 'contents', '186', 'title', '2020-04-15 02:35:35', '2020-04-15 02:35:35'),
(206, 'contents', '187', 'title', '2020-04-15 02:36:57', '2020-04-15 02:36:57'),
(207, 'contents', '188', 'title', '2020-04-15 02:39:35', '2020-04-15 02:39:35'),
(208, 'contents', '189', 'title', '2020-04-15 02:40:31', '2020-04-15 02:40:31'),
(209, 'contents', '190', 'title', '2020-04-15 02:42:59', '2020-04-15 02:42:59'),
(210, 'contents', '191', 'title', '2020-04-15 02:44:48', '2020-04-15 02:44:48'),
(211, 'contents', '192', 'title', '2020-04-15 02:47:55', '2020-04-15 02:47:55'),
(212, 'contents', '193', 'title', '2020-04-15 02:50:50', '2020-04-15 02:50:50'),
(213, 'contents', '194', 'title', '2020-04-15 02:52:05', '2020-04-15 02:52:05'),
(214, 'contents', '195', 'title', '2020-04-15 02:53:37', '2020-04-15 02:53:37'),
(215, 'contents', '196', 'title', '2020-04-15 02:55:16', '2020-04-15 02:55:16'),
(216, 'contents', '197', 'title', '2020-04-15 02:58:27', '2020-04-15 02:58:27'),
(217, 'contents', '198', 'title', '2020-04-15 02:59:40', '2020-04-15 02:59:40'),
(218, 'contents', '199', 'title', '2020-04-15 03:00:39', '2020-04-15 03:00:39'),
(219, 'contents', '200', 'title', '2020-04-15 03:01:47', '2020-04-15 03:01:47'),
(220, 'contents', '201', 'title', '2020-04-15 03:10:58', '2020-04-15 03:10:58'),
(221, 'contents', '202', 'title', '2020-04-15 03:11:42', '2020-04-15 03:11:42'),
(222, 'contents', '203', 'title', '2020-04-15 03:12:35', '2020-04-15 03:12:35'),
(223, 'contents', '204', 'title', '2020-04-15 03:13:21', '2020-04-15 03:13:21'),
(224, 'contents', '205', 'title', '2020-04-15 03:15:04', '2020-04-15 03:15:04'),
(225, 'contents', '206', 'title', '2020-04-15 03:15:45', '2020-04-15 03:15:45'),
(226, 'contents', '207', 'title', '2020-04-15 03:16:16', '2020-04-15 03:16:16'),
(227, 'contents', '208', 'title', '2020-04-15 03:16:19', '2020-04-15 03:16:19'),
(228, 'contents', '209', 'title', '2020-04-15 03:21:43', '2020-04-15 03:21:43'),
(229, 'contents', '210', 'title', '2020-04-15 03:26:19', '2020-04-15 03:26:19'),
(230, 'contents', '211', 'title', '2020-04-15 03:27:27', '2020-04-15 03:27:27'),
(231, 'contents', '212', 'title', '2020-04-15 03:28:58', '2020-04-15 03:28:58'),
(232, 'contents', '213', 'title', '2020-04-15 03:30:11', '2020-04-15 03:30:11'),
(233, 'contents', '214', 'title', '2020-04-15 03:31:32', '2020-04-15 03:31:32'),
(234, 'contents', '215', 'title', '2020-04-15 03:32:38', '2020-04-15 03:32:38'),
(235, 'contents', '216', 'title', '2020-04-15 03:34:33', '2020-04-15 03:34:33'),
(236, 'contents', '217', 'title', '2020-04-15 03:35:43', '2020-04-15 03:35:43'),
(237, 'contents', '218', 'title', '2020-04-15 03:36:20', '2020-04-15 03:36:20'),
(238, 'contents', '219', 'title', '2020-04-15 03:38:03', '2020-04-15 03:38:03'),
(239, 'contents', '220', 'title', '2020-04-15 03:39:06', '2020-04-15 03:39:06'),
(240, 'contents', '221', 'title', '2020-04-15 03:39:57', '2020-04-15 03:39:57'),
(241, 'contents', '222', 'title', '2020-04-15 21:29:08', '2020-04-15 21:29:08'),
(242, 'contents', '223', 'title', '2020-04-15 21:30:05', '2020-04-15 21:30:05'),
(243, 'contents', '224', 'title', '2020-04-15 21:31:35', '2020-04-15 21:31:35'),
(244, 'contents', '225', 'title', '2020-04-15 21:32:26', '2020-04-15 21:32:26'),
(245, 'contents', '226', 'title', '2020-04-15 21:33:20', '2020-04-15 21:33:20'),
(246, 'contents', '227', 'title', '2020-04-15 21:34:53', '2020-04-15 21:34:53'),
(247, 'contents', '228', 'title', '2020-04-15 21:40:07', '2020-04-15 21:40:07'),
(248, 'contents', '229', 'title', '2020-04-15 21:41:50', '2020-04-15 21:41:50'),
(249, 'contents', '230', 'title', '2020-04-15 21:43:34', '2020-04-15 21:43:34'),
(250, 'contents', '231', 'title', '2020-04-15 21:45:20', '2020-04-15 21:45:20'),
(251, 'contents', '232', 'title', '2020-04-15 21:46:52', '2020-04-15 21:46:52'),
(252, 'contents', '233', 'title', '2020-04-15 21:48:15', '2020-04-15 21:48:15'),
(253, 'contents', '234', 'title', '2020-04-15 21:49:13', '2020-04-15 21:49:13'),
(254, 'contents', '235', 'title', '2020-04-15 21:55:23', '2020-04-15 21:55:23'),
(255, 'contents', '236', 'title', '2020-04-15 21:56:03', '2020-04-15 21:56:03'),
(256, 'contents', '237', 'title', '2020-04-15 21:56:46', '2020-04-15 21:56:46'),
(257, 'contents', '238', 'title', '2020-04-15 21:57:32', '2020-04-15 21:57:32'),
(258, 'contents', '239', 'title', '2020-04-15 21:58:58', '2020-04-15 21:58:58'),
(259, 'contents', '240', 'title', '2020-04-15 21:59:54', '2020-04-15 21:59:54'),
(260, 'contents', '241', 'title', '2020-04-15 22:00:39', '2020-04-15 22:00:39'),
(263, 'providers', '23', 'title', '2020-04-15 22:11:24', '2020-04-15 22:11:24'),
(264, 'services', '40', 'title', '2020-04-15 22:13:52', '2020-04-15 22:13:52'),
(265, 'contents', '244', 'title', '2020-04-15 22:16:13', '2020-04-15 22:16:13'),
(266, 'contents', '245', 'title', '2020-04-15 22:17:01', '2020-04-15 22:17:01'),
(267, 'contents', '246', 'title', '2020-04-15 22:20:03', '2020-04-15 22:20:03'),
(268, 'services', '41', 'title', '2020-04-15 22:21:08', '2020-04-15 22:21:08'),
(269, 'contents', '247', 'title', '2020-04-15 22:22:12', '2020-04-15 22:22:12'),
(270, 'contents', '248', 'title', '2020-04-15 22:24:06', '2020-04-15 22:24:06'),
(272, 'services', '42', 'title', '2020-04-15 23:14:24', '2020-04-15 23:14:24'),
(273, 'providers', '25', 'title', '2020-04-15 23:30:31', '2020-04-15 23:30:31'),
(274, 'services', '43', 'title', '2020-04-15 23:32:39', '2020-04-15 23:32:39'),
(276, 'contents', '250', 'title', '2020-04-16 00:38:06', '2020-04-16 00:38:06'),
(277, 'contents', '251', 'title', '2020-04-16 00:39:47', '2020-04-16 00:39:47'),
(278, 'contents', '252', 'title', '2020-04-16 00:43:19', '2020-04-16 00:43:19'),
(279, 'contents', '253', 'title', '2020-04-16 01:01:56', '2020-04-16 01:01:56'),
(280, 'contents', '254', 'title', '2020-04-16 01:05:14', '2020-04-16 01:05:14'),
(281, 'contents', '255', 'title', '2020-04-16 01:07:32', '2020-04-16 01:07:32'),
(282, 'services', '44', 'title', '2020-04-16 01:17:22', '2020-04-16 01:17:22'),
(283, 'contents', '256', 'title', '2020-04-16 01:19:43', '2020-04-16 01:19:43'),
(284, 'contents', '257', 'title', '2020-04-16 04:34:26', '2020-04-16 04:34:26'),
(285, 'contents', '258', 'title', '2020-04-16 04:34:42', '2020-04-16 04:34:42'),
(286, 'contents', '259', 'title', '2020-04-16 04:34:56', '2020-04-16 04:34:56'),
(287, 'contents', '260', 'title', '2020-04-16 04:35:08', '2020-04-16 04:35:08'),
(289, 'contents', '262', 'title', '2020-04-16 04:42:30', '2020-04-16 04:42:30'),
(290, 'contents', '263', 'title', '2020-04-16 04:42:42', '2020-04-16 04:42:42'),
(291, 'contents', '264', 'title', '2020-04-16 04:43:02', '2020-04-16 04:43:02'),
(292, 'services', '45', 'title', '2020-04-16 04:47:01', '2020-04-16 04:47:01'),
(293, 'services', '46', 'title', '2020-04-16 04:48:52', '2020-04-16 04:48:52'),
(294, 'services', '47', 'title', '2020-04-16 05:00:01', '2020-04-16 05:00:01'),
(295, 'contents', '265', 'title', '2020-04-16 05:04:39', '2020-04-16 05:04:39'),
(296, 'contents', '266', 'title', '2020-04-16 05:06:33', '2020-04-16 05:06:33'),
(297, 'contents', '267', 'title', '2020-04-16 05:07:23', '2020-04-16 05:07:23'),
(298, 'contents', '268', 'title', '2020-04-16 05:09:04', '2020-04-16 05:09:04'),
(299, 'contents', '269', 'title', '2020-04-16 05:09:55', '2020-04-16 05:09:55'),
(300, 'services', '48', 'title', '2020-04-16 05:11:57', '2020-04-16 05:11:57'),
(301, 'contents', '270', 'title', '2020-04-16 05:19:40', '2020-04-16 05:19:40'),
(302, 'contents', '270', 'content_text', '2020-04-16 05:19:40', '2020-04-16 05:19:40'),
(303, 'contents', '271', 'title', '2020-04-16 05:20:19', '2020-04-16 05:20:19'),
(304, 'contents', '271', 'content_text', '2020-04-16 05:20:19', '2020-04-16 05:20:19'),
(305, 'contents', '272', 'title', '2020-04-16 05:21:05', '2020-04-16 05:21:05'),
(306, 'contents', '272', 'content_text', '2020-04-16 05:21:05', '2020-04-16 05:21:05'),
(307, 'contents', '273', 'title', '2020-04-16 05:21:37', '2020-04-16 05:21:37'),
(308, 'contents', '273', 'content_text', '2020-04-16 05:21:37', '2020-04-16 05:21:37'),
(309, 'contents', '274', 'title', '2020-04-16 05:22:14', '2020-04-16 05:22:14'),
(310, 'contents', '274', 'content_text', '2020-04-16 05:22:14', '2020-04-16 05:22:14'),
(311, 'contents', '269', 'content_text', '2020-04-16 05:24:32', '2020-04-16 05:24:32'),
(312, 'contents', '268', 'content_text', '2020-04-16 05:25:52', '2020-04-16 05:25:52'),
(313, 'contents', '267', 'content_text', '2020-04-16 05:27:13', '2020-04-16 05:27:13'),
(314, 'contents', '266', 'content_text', '2020-04-16 05:31:28', '2020-04-16 05:31:28'),
(315, 'contents', '265', 'content_text', '2020-04-16 05:35:20', '2020-04-16 05:35:20'),
(316, 'services', '49', 'title', '2020-04-16 05:54:54', '2020-04-16 05:54:54'),
(317, 'contents', '275', 'title', '2020-04-16 05:57:28', '2020-04-16 05:57:28'),
(318, 'services', '50', 'title', '2020-04-16 06:05:29', '2020-04-16 06:05:29'),
(319, 'contents', '276', 'title', '2020-04-16 06:07:33', '2020-04-16 06:07:33'),
(320, 'contents', '276', 'content_text', '2020-04-16 06:07:33', '2020-04-16 06:07:33'),
(321, 'contents', '277', 'title', '2020-04-16 06:09:03', '2020-04-16 06:09:03'),
(322, 'contents', '277', 'content_text', '2020-04-16 06:09:03', '2020-04-16 06:09:03'),
(323, 'contents', '278', 'title', '2020-04-16 06:12:01', '2020-04-16 06:12:01'),
(324, 'contents', '278', 'content_text', '2020-04-16 06:12:01', '2020-04-16 06:12:01'),
(325, 'contents', '279', 'title', '2020-04-16 06:13:04', '2020-04-16 06:13:04'),
(326, 'contents', '279', 'content_text', '2020-04-16 06:13:04', '2020-04-16 06:13:04'),
(327, 'contents', '280', 'title', '2020-04-16 06:13:05', '2020-04-16 06:13:05'),
(328, 'contents', '280', 'content_text', '2020-04-16 06:13:05', '2020-04-16 06:13:05'),
(329, 'services', '51', 'title', '2020-04-16 06:20:09', '2020-04-16 06:20:09'),
(330, 'services', '52', 'title', '2020-04-16 06:31:51', '2020-04-16 06:31:51'),
(331, 'providers', '26', 'title', '2020-04-16 07:10:05', '2020-04-16 07:10:05'),
(332, 'services', '53', 'title', '2020-04-16 07:12:03', '2020-04-16 07:12:03'),
(333, 'services', '54', 'title', '2020-04-16 07:13:35', '2020-04-16 07:13:35'),
(336, 'services', '57', 'title', '2020-04-16 07:17:25', '2020-04-16 07:17:25'),
(337, 'contents', '281', 'title', '2020-04-16 08:06:05', '2020-04-16 08:06:05'),
(338, 'contents', '282', 'title', '2020-04-16 08:07:59', '2020-04-16 08:07:59'),
(343, 'providers', '27', 'title', '2020-04-16 08:30:09', '2020-04-16 08:30:09'),
(344, 'services', '58', 'title', '2020-04-16 08:31:49', '2020-04-16 08:31:49'),
(345, 'services', '59', 'title', '2020-04-16 08:32:25', '2020-04-16 08:32:25'),
(346, 'services', '60', 'title', '2020-04-16 08:33:03', '2020-04-16 08:33:03'),
(347, 'contents', '287', 'title', '2020-04-16 08:41:10', '2020-04-16 08:41:10'),
(348, 'contents', '288', 'title', '2020-04-16 08:42:50', '2020-04-16 08:42:50'),
(349, 'contents', '289', 'title', '2020-04-16 08:44:23', '2020-04-16 08:44:23'),
(350, 'contents', '290', 'title', '2020-04-16 08:48:06', '2020-04-16 08:48:06'),
(351, 'contents', '291', 'title', '2020-04-16 08:50:00', '2020-04-16 08:50:00'),
(352, 'contents', '292', 'title', '2020-04-16 08:52:52', '2020-04-16 08:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Advanced Editor', '2018-01-28 13:30:05', '2018-01-28 13:30:05'),
(2, 'Normal Editor', '2018-01-28 13:30:14', '2018-01-28 13:30:14'),
(3, 'Image', '2018-01-28 13:30:29', '2018-01-28 13:30:29'),
(4, 'Video', '2018-01-28 13:30:39', '2018-01-28 13:30:39'),
(5, 'Audio', '2018-01-28 13:30:47', '2018-01-28 13:30:47'),
(6, 'File Manager Uploads Extensions', '2018-01-28 13:30:57', '2018-01-28 13:30:57'),
(7, 'selector', '2020-03-04 17:34:33', '2020-03-04 17:34:33'),
(10, 'link', '2020-03-04 17:34:33', '2020-03-04 17:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'emad', 'emad@ivas.com.eg', '$2y$10$4j4jeHIHjR7Rdt7x/fvbo.ku1tWAV1H0gKd.lQOpWtbh75SqfYnqG', '', '01223872695', NULL, '0000-00-00 00:00:00', '2020-04-11 13:59:13'),
(3, 'sherif', 'sherif.mohamed@ivas.com.eg', '$2y$10$TzQ40fe.6ThJZL66xOgbWeSUP7pb3xx3PMTvPG.kFTaz6IZ5dpwp2', '', NULL, NULL, '2020-04-11 13:58:20', '2020-04-11 13:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`provider_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delete_all_flags`
--
ALTER TABLE `delete_all_flags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delete_all_flags_route_id_foreign` (`route_id`);

--
-- Indexes for table `du_integration`
--
ALTER TABLE `du_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imi_requests`
--
ALTER TABLE `imi_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relations_scaffoldinterface_id_foreign` (`scaffoldinterface_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_route`
--
ALTER TABLE `role_route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id_2` (`role_id`),
  ADD KEY `route_id_2` (`route_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scaffoldinterfaces`
--
ALTER TABLE `scaffoldinterfaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_ibfk_1` (`type_id`);

--
-- Indexes for table `static_bodies`
--
ALTER TABLE `static_bodies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_bodies_language_id_foreign` (`language_id`),
  ADD KEY `static_bodies_static_translation_id_foreign` (`static_translation_id`);

--
-- Indexes for table `static_translations`
--
ALTER TABLE `static_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tans_bodies`
--
ALTER TABLE `tans_bodies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tans_bodies_language_id_foreign` (`language_id`),
  ADD KEY `tans_bodies_translatable_id_foreign` (`translatable_id`);

--
-- Indexes for table `tim_wes`
--
ALTER TABLE `tim_wes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translatables`
--
ALTER TABLE `translatables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delete_all_flags`
--
ALTER TABLE `delete_all_flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `du_integration`
--
ALTER TABLE `du_integration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imi_requests`
--
ALTER TABLE `imi_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_route`
--
ALTER TABLE `role_route`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `scaffoldinterfaces`
--
ALTER TABLE `scaffoldinterfaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `static_bodies`
--
ALTER TABLE `static_bodies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `static_translations`
--
ALTER TABLE `static_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tans_bodies`
--
ALTER TABLE `tans_bodies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `tim_wes`
--
ALTER TABLE `tim_wes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translatables`
--
ALTER TABLE `translatables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audios`
--
ALTER TABLE `audios`
  ADD CONSTRAINT `audios_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audios_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `audios_operator_id_foreign1` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `audios_provider_id_foreign1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `audios_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delete_all_flags`
--
ALTER TABLE `delete_all_flags`
  ADD CONSTRAINT `delete_all_flags_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operators`
--
ALTER TABLE `operators`
  ADD CONSTRAINT `operators_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_operator_id_foreign1` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_id_foreign1` FOREIGN KEY (`video_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_scaffoldinterface_id_foreign` FOREIGN KEY (`scaffoldinterface_id`) REFERENCES `scaffoldinterfaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_route`
--
ALTER TABLE `role_route`
  ADD CONSTRAINT `role_route_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_route_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_provider_id_foreign1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `static_bodies`
--
ALTER TABLE `static_bodies`
  ADD CONSTRAINT `static_bodies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `static_bodies_static_translation_id_foreign` FOREIGN KEY (`static_translation_id`) REFERENCES `static_translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tans_bodies`
--
ALTER TABLE `tans_bodies`
  ADD CONSTRAINT `tans_bodies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tans_bodies_translatable_id_foreign` FOREIGN KEY (`translatable_id`) REFERENCES `translatables` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
