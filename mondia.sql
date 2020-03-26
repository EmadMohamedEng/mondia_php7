-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 09:31 AM
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
-- Database: `mondia`
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
(5, 1, 7, 'الله أكبر الله أكبر', 'uploads/audios/5c24de0464328.mp3', 49951, '2018-12-27 12:13:24', '2018-12-27 12:13:24', NULL, 0),
(6, 1, 7, 'حي على الصلاة', 'uploads/audios/5c24de1b81db5.mp3', 49952, '2018-12-27 12:13:47', '2018-12-27 12:13:47', NULL, 0),
(7, 1, 7, 'الله أكبر الله أكبر 1', 'uploads/audios/5c24de39a6525.mp3', 52243, '2018-12-27 12:14:17', '2018-12-27 12:14:17', NULL, 0),
(8, 1, 7, 'حي على الصلاة 1', 'uploads/audios/5c24de4e26f7b.mp3', 52244, '2018-12-27 12:14:38', '2018-12-27 12:14:38', NULL, 0),
(9, 1, 7, 'الله أكبر الله أكبر 2', 'uploads/audios/5c24de633999f.mp3', 52245, '2018-12-27 12:14:59', '2018-12-27 12:14:59', NULL, 0),
(10, 3, 7, 'الله أكبر الله أكبر', 'uploads/audios/5c24de76bbc38.mp3', 52393, '2018-12-27 12:15:18', '2018-12-27 12:15:18', NULL, 0),
(11, 3, 8, 'حي على الصلاة', 'uploads/audios/5c24de88f1595.mp3', 52394, '2018-12-27 12:15:36', '2018-12-27 12:17:28', NULL, 0),
(12, 2, 8, 'الله أكبر الله أكبر', 'uploads/audios/5c24de9d1c74b.mp3', 52395, '2018-12-27 12:15:57', '2018-12-27 12:15:57', NULL, 0),
(13, 2, 8, 'حي على الصلاة', 'uploads/audios/5c24deb1e0e58.mp3', 52396, '2018-12-27 12:16:17', '2018-12-27 12:16:17', NULL, 0),
(14, 2, 8, 'الله أكبر الله أكبر 2', 'uploads/audios/5c24df120c69a.mp3', 52245, '2018-12-27 12:17:54', '2018-12-27 12:17:54', NULL, 0),
(15, 1, 8, 'رسائل العفاسي', '', 1234, '2018-12-30 06:57:48', '2018-12-30 06:57:48', 1, 0),
(16, 1, 8, 'رسائل العفاسي', '', 0, '2018-12-30 12:02:29', '2018-12-30 12:02:29', 1, 0),
(17, 1, 7, 'Arabic', 'uploads/audios/5e7b31b514a7a.mp3', 1234, '2020-03-25 08:25:57', '2020-03-25 08:25:57', NULL, 1),
(18, 3, 8, 'English', 'uploads/audios/5e7b36943e41b.mp3', 1234, '2020-03-25 08:46:44', '2020-03-25 08:46:44', NULL, 1),
(19, 1, 8, 'new', 'uploads/audios/5e7b36ff28573.mp3', 135, '2020-03-25 08:48:31', '2020-03-25 08:48:31', NULL, 1),
(21, 1, 8, 'new12', 'uploads/audios/5e7b5d025fee6.mp3', 5482, '2020-03-25 11:30:42', '2020-03-25 11:32:03', NULL, 1);

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
(1, 1, 'رسائل العفاسي', '2018-12-18 11:45:30', '2020-03-24 07:32:11', 'uploads/videos/5c18f9fa802f5.mp4', NULL, '5e79d39b96e24.png', 1),
(2, 2, 'تفسير القران بالعربية', '2018-12-19 11:50:45', '2018-12-18 11:50:45', 'uploads/videos/5c18fb35286a8.mp4', NULL, NULL, 1),
(3, 3, 'ابتهالات', '2018-12-18 11:53:38', '2018-12-18 11:53:38', 'uploads/videos/5c18fbe2acb63.mp4', NULL, NULL, 1),
(4, 1, 'ابتهالات', '2018-12-18 11:53:55', '2018-12-18 11:53:55', 'uploads/videos/5c18fbf33a5ff.mp4', NULL, NULL, 1),
(5, 11, 'دليل الحاج والمعتمر 1', '2018-12-18 12:07:43', '2018-12-18 12:07:43', 'uploads/videos/5c18ff2fe95fc.mp4', NULL, NULL, 1),
(6, 11, 'دليل الحاج والمعتمر 2', '2018-12-18 12:08:06', '2018-12-18 12:08:06', 'uploads/videos/5c18ff46d988c.mp4', NULL, NULL, 1),
(7, 11, 'دليل الحاج والمعتمر 3', '2018-12-18 12:08:21', '2018-12-18 12:08:21', 'uploads/videos/5c18ff552fcf5.mp4', NULL, NULL, 1),
(8, 11, 'دليل الحاج والمعتمر 4', '2018-12-18 12:08:34', '2018-12-18 12:08:34', 'uploads/videos/5c18ff62c4f2c.mp4', NULL, NULL, 1),
(9, 1, 'تفسير القران بالعربية', '2018-12-19 12:51:02', '2018-12-19 12:51:02', 'uploads/videos/5c1a5ad65312f.mp4', NULL, NULL, 1),
(10, 1, 'تفسير القران بالانجليزية', '2018-12-19 12:51:54', '2018-12-19 12:51:54', 'uploads/videos/5c1a5b0acc0b5.mp4', NULL, NULL, 1),
(11, 1, 'الرقية الشرعية', '2018-12-19 12:52:15', '2018-12-19 12:52:15', 'uploads/videos/5c1a5b1fcd786.mp4', NULL, NULL, 1),
(12, 1, 'القران يجيب', '2018-12-19 12:52:46', '2018-12-19 12:52:46', 'uploads/videos/5c1a5b3e79e89.mp4', NULL, NULL, 1),
(13, 2, 'تفسير القران بالانجليزية', '2018-12-19 12:53:41', '2018-12-19 12:57:13', 'uploads/videos/5c1a5b75cc377.mp4', NULL, NULL, 1),
(14, 3, 'ابتهالات', '2018-12-19 12:53:59', '2018-12-19 12:53:59', 'uploads/videos/5c1a5b87d647c.mp4', NULL, NULL, 1),
(15, 14, 'القران يجيب', '2018-12-19 12:55:31', '2018-12-19 12:55:31', 'uploads/videos/5c1a5be31d2cd.mp4', NULL, NULL, 1),
(16, 13, 'الرقية الشرعية', '2018-12-19 12:55:49', '2018-12-19 12:55:49', 'uploads/videos/5c1a5bf51714b.mp4', NULL, NULL, 1),
(17, 12, 'تفسير القران بالانجليزية', '2018-12-19 12:56:23', '2018-12-19 12:56:23', 'uploads/videos/5c1a5c17c324a.mp4', NULL, NULL, 1),
(18, 11, 'دليل الحاج والمعتمر 5', '2018-12-23 08:18:07', '2018-12-23 08:18:07', 'uploads/videos/5c1f60df94563.mp4', NULL, NULL, 1),
(19, 11, 'دليل الحاج والمعتمر 6', '2018-12-23 08:19:08', '2018-12-23 08:19:08', 'uploads/videos/5c1f611c677f2.mp4', NULL, NULL, 1),
(20, 10, 'دليل الصائم 1', '2018-12-23 11:37:11', '2018-12-23 11:37:11', 'uploads/videos/5c1f8f87607ec.mp4', NULL, NULL, 1),
(21, 10, 'دليل الصائم 2', '2018-12-23 11:37:38', '2018-12-23 11:37:38', 'uploads/videos/5c1f8fa2581fd.mp4', NULL, NULL, 1),
(22, 10, 'دليل الصائم 3', '2018-12-23 11:37:53', '2018-12-23 11:37:53', 'uploads/videos/5c1f8fb16508a.mp4', NULL, NULL, 1),
(23, 10, 'دليل الصائم 4', '2018-12-23 11:38:20', '2018-12-23 11:39:14', 'uploads/videos/5c1f9002d9d2c.mp4', NULL, NULL, 1),
(24, 10, 'دليل الصائم 5', '2018-12-23 11:38:39', '2018-12-23 11:39:26', 'uploads/videos/5c1f8fdf0c536.mp4', NULL, NULL, 1),
(25, 10, 'دليل الصائم 6', '2018-12-23 11:39:39', '2018-12-23 11:39:39', 'uploads/videos/5c1f901ba0ce9.mp4', NULL, NULL, 1),
(26, 4, 'الرقية الشرعية	', '2018-12-23 11:41:39', '2018-12-23 11:41:39', 'uploads/videos/5c1f9093a6aec.mp4', NULL, NULL, 1),
(27, 5, 'تفسير القران بالانجليزية	', '2018-12-23 11:42:03', '2018-12-23 11:42:03', 'uploads/videos/5c1f90abcd183.mp4', NULL, NULL, 1),
(28, 6, 'دعاء', '2018-12-23 11:42:28', '2018-12-23 11:42:28', 'uploads/videos/5c1f90c4b2d5d.mp4', NULL, NULL, 1),
(29, 7, 'خطوات اسلامية	', '2018-12-23 11:42:41', '2018-12-23 11:46:13', 'uploads/videos/5c1f90d167beb.mp4', NULL, NULL, 1),
(30, 7, 'خطوات اسلامية	', '2018-12-23 11:42:54', '2018-12-23 11:46:28', 'uploads/videos/5c1f90de8705c.mp4', NULL, NULL, 1),
(31, 8, 'خواطر اسلامية', '2018-12-23 11:43:23', '2018-12-23 11:46:46', 'uploads/videos/5c1f90fb3c8c1.mp4', NULL, NULL, 1),
(32, 9, 'اسالة واجابات	', '2018-12-23 11:43:40', '2018-12-23 11:43:40', 'uploads/videos/5c1f910cc73db.mp4', NULL, NULL, 1),
(33, 1, 'test 1', '2018-12-27 10:53:40', '2018-12-27 10:53:40', 'uploads/videos/5c24cb54102e9.mp4', NULL, NULL, 1),
(36, 16, 'تفسير القران بالعربية', '2018-12-27 12:43:23', '2018-12-27 12:45:04', 'uploads/videos/5c24e50b72fc8.gif', NULL, NULL, 3),
(38, 16, 'image1', '2019-01-01 06:25:11', '2019-01-01 06:25:11', 'uploads/videos/5c2b23e7a8da7.jpeg', NULL, NULL, 3),
(39, 14, 'test_video', '2019-01-01 06:25:36', '2019-01-01 06:25:36', 'uploads/videos/5c2b24008b459.mp4', NULL, NULL, 1),
(40, 17, 'test_audio', '2019-01-01 06:26:47', '2019-01-01 06:26:47', 'uploads/videos/5c2b2447a0a67.mp3', NULL, NULL, 2),
(41, 2, 'new', '2020-03-21 21:58:09', '2020-03-21 21:58:09', 'uploads/videos/5e76aa117856c.mp4', NULL, NULL, 1),
(42, 22, 'new', '2020-03-22 12:56:02', '2020-03-22 12:56:02', NULL, 'gsdgsdgs', NULL, 4),
(43, 6, 'new', '2020-03-22 13:09:41', '2020-03-22 13:09:41', 'uploads/videos/5e777fb40b816.mp4', NULL, '5e777fb40d1ab', 1),
(44, 6, 'new', '2020-03-22 13:11:16', '2020-03-22 13:11:16', 'uploads/videos/5e778014678f9.mp4', NULL, '5e778014687e2', 1),
(45, 3, 'new', '2020-03-22 13:11:45', '2020-03-22 13:11:45', 'uploads/videos/5e77803138eba.mp4', NULL, '5e7780313acb9', 1),
(46, 3, 'new', '2020-03-22 13:13:16', '2020-03-22 13:13:16', 'uploads/videos/5e77808badddb.mp4', NULL, '5e77808bafbdd', 1),
(47, 3, 'new', '2020-03-22 13:18:31', '2020-03-22 13:18:31', 'uploads/videos/5e7781c690eff.mp4', NULL, '5e7781c692e90.png', 1),
(48, 3, 'value', '2020-03-22 13:22:13', '2020-03-22 13:22:13', 'uploads/videos/5e7782a4d35ad.mp4', NULL, '5e7782a4d4aaf.png', 1),
(49, 2, 'new', '2020-03-22 13:25:59', '2020-03-22 13:38:42', 'uploads/videos/5e7786816f8f1.mp4', NULL, '5e77868172551.png', 1),
(50, 4, 'new', '2020-03-22 13:39:22', '2020-03-22 13:41:21', 'uploads/videos/5e778720cac11.mp4', NULL, '5e778720cd61e.png', 1),
(51, 4, 'new', '2020-03-22 13:40:29', '2020-03-22 13:40:29', 'uploads/videos/5e7786ed7600f.mp4', NULL, '5e7786ed77932.png', 1);

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
(2, 'egypt', '2018-05-07 08:21:24', '2018-05-07 08:21:24'),
(3, 'sa', '2018-05-07 08:24:39', '2018-05-07 08:24:39');

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

--
-- Dumping data for table `delete_all_flags`
--

INSERT INTO `delete_all_flags` (`id`, `route_id`, `created_at`, `updated_at`) VALUES
(1, 99, '2018-12-27 11:13:02', '2018-12-27 11:13:02');

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
(1, 'English', '2020-03-21 20:23:01', '2020-03-21 20:23:01', 'en', 0),
(2, 'Arabic', '2020-03-21 20:23:12', '2020-03-21 20:23:12', 'ar', 1);

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
(223, '2020_03_22_162251_add_foreign_keys_to_user_has_roles_table', 0);

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
(7, 'etislat', 'uploads/operators/5c2b237670d66.jpg', '2018-12-27 11:23:45', '2019-01-01 06:23:25', 1500, 2),
(8, 'orange', 'uploads/operators/5c2b236e9e890.jpg', '2019-01-01 06:23:10', '2019-01-01 06:23:10', 9999, 2);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `operator_id`, `video_id`, `show_date`, `active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2020-03-23', 0, '2020-03-22 13:42:06', '2020-03-22 13:42:06'),
(2, 8, 1, '2020-03-23', 0, '2020-03-22 13:42:06', '2020-03-22 13:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'مشاري راشد', 'uploads/providers/5c18caa255ca9.jpg', '2018-12-18 08:06:00', '2018-12-18 08:23:30'),
(2, 'الهلباوي', 'uploads/providers/5c18c83c7fbb0.jpg', '2018-12-18 08:09:43', '2018-12-18 08:13:16'),
(3, 'الطبلاوي', 'uploads/providers/5c18c85fa6362.jpg', '2018-12-18 08:13:51', '2018-12-18 08:13:51'),
(4, 'عامر المهلهل', 'uploads/providers/5c18c8786fae3.jpg', '2018-12-18 08:14:16', '2018-12-18 08:14:16'),
(5, 'طلال فاخر', 'uploads/providers/5c18c897cf672.jpg', '2018-12-18 08:14:47', '2018-12-18 08:14:47'),
(7, 'احمد عيسى', 'uploads/providers/5c18c8ac1dde2.jpg', '2018-12-18 08:15:08', '2018-12-18 08:15:08'),
(8, 'عطية صقر', 'uploads/providers/5c18c8efdd90a.jpg', '2018-12-18 08:16:15', '2018-12-18 08:16:15'),
(10, 'دليل المسلم', 'uploads/providers/5c18fe6d24fe5.png', '2018-12-18 12:04:29', '2018-12-18 12:04:29');

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
(6, 'admin', 2, '2018-01-08 12:40:19', '2018-01-08 12:40:19');

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
(2, 'get', 'setting/new', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 11:39:21', 'create'),
(3, 'post', 'setting', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 11:39:21', 'store'),
(4, 'get', 'dashboard', 'DashboardController', '0000-00-00 00:00:00', '2018-07-24 11:47:45', 'index'),
(6, 'get', 'user_profile', 'UserController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'profile'),
(7, 'post', 'user_profile/updatepassword', 'UserController', '0000-00-00 00:00:00', '2017-11-14 10:29:01', 'UpdatePassword'),
(8, 'post', 'user_profile/updateprofilepic', 'UserController', '0000-00-00 00:00:00', '2017-11-14 10:29:08', 'UpdateProfilePicture'),
(9, 'post', 'user_profile/updateuserdata', 'UserController', '0000-00-00 00:00:00', '2017-11-14 10:29:19', 'UpdateNameAndEmail'),
(10, 'get', 'setting/{id}/delete', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 11:39:22', 'destroy'),
(11, 'get', 'setting/{id}/edit', 'SettingController', '0000-00-00 00:00:00', '2018-02-05 11:39:21', 'edit'),
(12, 'post', 'setting/{id}', 'SettingController', '0000-00-00 00:00:00', '2020-03-24 09:17:21', 'update'),
(14, 'get', 'static_translation', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-14 10:29:57', 'index'),
(21, 'get', 'file_manager', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'file_manager'),
(22, 'get', 'upload_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'multi_upload'),
(23, 'post', 'save_items', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_uploaded'),
(24, 'get', 'upload_resize', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'upload_resize'),
(25, 'post', 'save_image', 'DashboardController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'save_image'),
(26, 'post', 'static_translation/{id}/update', 'StaticTranslationController', '0000-00-00 00:00:00', '2017-11-12 10:19:46', 'update'),
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
(43, 'post', 'routes/{id}/update', 'RouteController', '0000-00-00 00:00:00', '2018-01-28 07:25:29', 'update'),
(44, 'get', 'routes/{id}/delete', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'destroy'),
(45, 'get', 'routes/create', 'RouteController', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'create'),
(57, 'get', 'routes/index_v2', 'RouteController', '2017-11-12 11:45:15', '2017-11-12 12:04:53', 'index_v2'),
(58, 'get', 'roles/{id}/view_access', 'RoleController', '2017-11-14 08:56:14', '2017-11-15 06:14:14', 'view_access'),
(59, 'get', 'types/index', 'TypeController', '2018-01-28 06:25:37', '2018-01-28 06:25:37', 'index'),
(60, 'get', 'types/create', 'TypeController', '2018-01-28 06:25:37', '2018-01-28 06:25:37', 'create'),
(61, 'post', 'types', 'TypeController', '2018-01-28 06:25:38', '2018-01-28 06:25:38', 'store'),
(62, 'get', 'types/{id}/edit', 'TypeController', '2018-01-28 06:25:38', '2018-01-28 06:25:38', 'edit'),
(63, 'patch', 'types/{id}', 'TypeController', '2018-01-28 06:25:38', '2018-01-28 06:25:38', 'update'),
(64, 'get', 'types/{id}/delete', 'TypeController', '2018-01-28 06:25:38', '2018-01-28 06:25:38', 'destroy'),
(65, 'post', 'sortabledatatable', 'SettingController', '2018-01-28 07:22:00', '2018-01-28 07:22:00', 'updateOrder'),
(66, 'get', 'buildroutes', 'RouteController', '2018-01-28 07:23:55', '2018-01-28 07:23:55', 'buildroutes'),
(69, 'get', 'delete_all', 'DashboardController', '2018-02-04 10:01:23', '2018-02-04 10:01:23', 'delete_all_index'),
(70, 'post', 'delete_all', 'DashboardController', '2018-02-04 10:01:23', '2018-02-04 10:01:23', 'delete_all_store'),
(71, 'get', 'upload_resize_v2', 'DashboardController', '2018-02-04 11:02:56', '2018-02-04 11:02:56', 'upload_resize_v2'),
(72, 'post', 'sortabledatatable', 'UserController', '2018-02-05 11:39:22', '2018-02-05 11:39:22', 'updateOrder'),
(79, 'get', 'setting', 'SettingController', '2018-02-05 12:10:10', '2018-02-05 12:10:10', 'index'),
(80, 'get', 'users', 'UserController', '2018-05-31 07:42:21', '2018-05-31 07:42:21', 'index'),
(81, 'get', 'users/new', 'UserController', '2018-05-31 07:42:21', '2018-05-31 07:42:21', 'create'),
(82, 'post', 'users', 'UserController', '2018-05-31 07:42:21', '2018-05-31 07:42:21', 'store'),
(83, 'get', 'users/{id}/edit', 'UserController', '2018-05-31 07:42:21', '2018-05-31 07:42:21', 'edit'),
(84, 'post', 'users/{id}/update', 'UserController', '2018-05-31 07:42:21', '2018-05-31 07:42:21', 'update'),
(85, 'get', 'providers', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'index'),
(86, 'get', 'providers/create', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'create'),
(87, 'post', 'providers', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'store'),
(88, 'get', 'providers/{id}/edit', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'edit'),
(89, 'patch', 'providers/{id}', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'update'),
(90, 'get', 'providers/{id}/delete', 'ProvidersController', '2018-12-18 07:43:08', '2018-12-18 07:43:08', 'destroy'),
(91, 'get', 'services', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'index'),
(92, 'get', 'services/create', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'create'),
(93, 'post', 'services', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'store'),
(94, 'get', 'services/{id}/edit', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'edit'),
(95, 'patch', 'services/{id}', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'update'),
(96, 'get', 'services/{id}/delete', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'destroy'),
(97, 'get', 'services/{id}/videos', 'ServicesController', '2018-12-18 08:49:59', '2018-12-18 08:49:59', 'videos'),
(98, 'get', 'providers/{id}/services', 'ProvidersController', '2018-12-18 08:50:35', '2018-12-18 08:50:35', 'services'),
(99, 'get', 'operators', 'OperatorsController', '2018-12-18 09:28:07', '2018-12-18 09:28:07', 'index'),
(100, 'get', 'operators/create', 'OperatorsController', '2018-12-18 09:28:08', '2018-12-18 09:28:08', 'create'),
(101, 'post', 'operators', 'OperatorsController', '2018-12-18 09:28:08', '2018-12-18 09:28:08', 'store'),
(102, 'get', 'operators/{id}/edit', 'OperatorsController', '2018-12-18 09:28:08', '2018-12-18 09:28:08', 'edit'),
(103, 'patch', 'operators/{id}', 'OperatorsController', '2018-12-18 09:28:08', '2018-12-18 09:28:08', 'update'),
(104, 'get', 'operators/{id}/delete', 'OperatorsController', '2018-12-18 09:28:08', '2018-12-18 09:28:08', 'destroy'),
(105, 'get', 'videos', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'index'),
(106, 'get', 'videos/create', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'create'),
(107, 'post', 'videos', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'store'),
(108, 'get', 'videos/{id}/edit', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'edit'),
(109, 'patch', 'videos/{id}', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'update'),
(110, 'get', 'videos/{id}/delete', 'VideosController', '2018-12-18 11:41:38', '2018-12-18 11:41:38', 'destroy'),
(111, 'get', 'posts', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:25:53', 'index'),
(112, 'get', 'posts/create', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:40:50', 'create'),
(113, 'post', 'posts', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:25:53', 'store'),
(114, 'get', 'posts/{id}/edit', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:25:53', 'edit'),
(115, 'patch', 'posts/{id}', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:25:53', 'update'),
(116, 'get', 'posts/{id}/delete', 'PostsController', '2018-12-18 12:25:53', '2018-12-18 12:25:53', 'destroy'),
(117, 'get', 'videos/{id}/posts', 'VideosController', '2018-12-18 12:45:29', '2018-12-18 12:45:29', 'posts'),
(118, 'get', 'audios', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'index'),
(119, 'get', 'audios/create', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'create'),
(120, 'post', 'audios', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'store'),
(121, 'get', 'audios/{id}/edit', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'edit'),
(122, 'patch', 'audios/{id}', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'update'),
(123, 'get', 'audios/{id}/delete', 'AudiosController', '2018-12-24 11:38:48', '2018-12-24 11:38:48', 'destroy'),
(124, 'get', 'videos/{id}/audios', 'VideosController', '2018-12-27 07:43:49', '2018-12-27 07:43:49', 'audios'),
(125, 'get', 'providers/{id}/audios', 'ProvidersController', '2018-12-27 07:44:26', '2018-12-27 07:44:26', 'audios'),
(126, 'get', 'countries', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'index'),
(127, 'get', 'countries/create', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'create'),
(128, 'post', 'countries', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'store'),
(129, 'get', 'countries/{id}/edit', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'edit'),
(130, 'patch', 'countries/{id}', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'update'),
(131, 'get', 'countries/{id}/delete', 'CountryController', '2018-12-27 11:52:47', '2018-12-27 11:52:47', 'destroy'),
(132, 'get', 'listazan', 'ListAzanController', '2020-03-25 08:46:07', '2020-03-25 08:46:07', 'index');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = video /2 = audio /3 = image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `provider_id`, `title`, `image`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, 'رسائل العفاسي', 'uploads/services/5c18d33fe8bcb.jpg', '2018-12-18 09:00:15', '2018-12-18 09:00:15', 1),
(2, 1, 'تفسير القران بالعربية', 'uploads/services/5c18d446822f4.jpg', '2018-12-18 09:04:38', '2018-12-18 09:04:38', 1),
(3, 2, 'ابتهالات', 'uploads/services/5c18d64e405ce.jpg', '2018-12-18 09:13:18', '2018-12-18 09:13:18', 1),
(4, 3, 'الرقية الشرعية', 'uploads/services/5c18d6f2547be.jpg', '2018-12-18 09:16:02', '2018-12-18 09:16:02', 1),
(5, 3, 'تفسير القران بالانجليزية', 'uploads/services/5c18d74d93b99.jpg', '2018-12-18 09:17:33', '2018-12-18 09:17:33', 1),
(6, 4, 'دعاء', 'uploads/services/5c1a5a5335df7.jpg', '2018-12-18 09:18:27', '2018-12-19 12:48:51', 1),
(7, 5, 'خطوات اسلامية', 'uploads/services/5c18d7bf2acb1.jpg', '2018-12-18 09:19:27', '2018-12-23 11:45:39', 1),
(8, 7, 'خواطر اسلامية', 'uploads/services/5c18d7f14f4ee.jpg', '2018-12-18 09:20:17', '2018-12-23 11:45:25', 1),
(9, 8, 'اسالة واجابات', 'uploads/services/5c18d81a2512d.jpg', '2018-12-18 09:20:58', '2018-12-18 09:20:58', 1),
(10, 10, 'دليل الصائم', 'uploads/services/5c18feba9e7cb.png', '2018-12-18 12:05:46', '2018-12-18 12:05:46', 1),
(11, 10, 'دليل الحاج والمعتمر', 'uploads/services/5c18fee3775b8.png', '2018-12-18 12:06:27', '2018-12-18 12:06:27', 1),
(12, 1, 'تفسير القران بالانجليزية', 'uploads/services/5c1a596c51506.jpg', '2018-12-19 12:45:00', '2018-12-19 12:45:00', 1),
(13, 1, 'الرقية الشرعية', 'uploads/services/5c1a59989fc5f.jpg', '2018-12-19 12:45:44', '2018-12-19 12:45:44', 1),
(14, 1, 'القران يجيب', 'uploads/services/5c1a59aa2aa4c.jpg', '2018-12-19 12:46:02', '2018-12-19 12:46:02', 1),
(16, 1, 'test 1', 'uploads/services/5c24cbbf83da9.png', '2018-12-27 10:55:27', '2018-12-27 10:55:27', 3),
(17, 1, 'audio_service', 'uploads/services/5c2b2438b515f.png', '2019-01-01 06:26:32', '2019-01-01 06:26:32', 2),
(18, 4, 'new', 'uploads/services/5e76940826065.png', '2020-03-21 20:24:08', '2020-03-21 21:48:40', 2),
(21, 10, 'dxxc', 'uploads/services/5e76a79f085c2.png', '2020-03-21 21:47:43', '2020-03-21 21:47:43', 2),
(22, 3, 'text', 'uploads/services/5e776aa8a8abd.png', '2020-03-22 11:39:52', '2020-03-22 11:39:52', 4);

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
(25, 'uploadAllow', 'all', '2018-02-04 08:04:09', '2018-02-04 08:04:09', 6, 0),
(26, 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 2, 0),
(27, 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 05:25:26', '2018-12-19 05:25:26', 2, 0),
(28, 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 05:25:43', '2018-12-19 05:25:43', 2, 0),
(29, 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 05:26:12', '2018-12-19 05:26:12', 2, 0),
(30, 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 05:26:29', '2018-12-19 05:26:29', 2, 0),
(31, 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 05:26:44', '2018-12-19 05:26:44', 2, 0),
(64, 'home_page_logo', 'uploads/settings_images/5e5cf927166e1.png', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 3, 0),
(65, 'header_logo', 'uploads/settings_images/5e5cf94047ffc.png', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 3, 0),
(66, 'loading_image', 'uploads/settings_images/5e5cf954396bd.png', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 3, 0),
(67, 'title_page', 'Mondia', '2019-12-31 08:50:04', '2020-03-24 09:34:06', 2, 0),
(68, 'fav_icon', 'uploads/settings_images/5e5cf9743fb3e.png', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 3, 0),
(69, 'copy_rights', 'Copyright © 2020 islamic services Powered by DIGIZONE', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 2, 0),
(70, 'title_menu', 'دو الخير', '2019-12-31 08:50:04', '2019-12-31 06:54:06', 3, 0),
(71, 'enable_testing', '1', '2020-03-03 10:42:27', '2020-03-03 10:42:27', 7, 0),
(72, 'enable_social', '1', '2020-03-03 10:42:27', '2020-03-03 10:42:27', 7, 0),
(73, 'pageLength', '6', '2020-03-03 10:42:27', '2020-03-24 09:18:43', 2, 0),
(74, 'facebook', 'http://www.facebook.com/iVASEgypt', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0),
(75, 'twitter', 'http://www.twitter.com/iVASEgypt', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0),
(76, 'instagram', 'http://www.instagram.com/iVASEgypt', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0),
(77, 'soundcloud', 'http://www.soundcloud.com/iVASEgypt', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0),
(78, 'youtube', 'https://www.youtube.com/channel/UCoaSZFW4h6xITQVJJ__ZY3g?sub_confirmation=1', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0),
(79, 'linkedin', 'http://www.linkedin.com/company-beta/3354483', '2018-12-19 05:19:19', '2018-12-19 05:19:19', 10, 0);

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
(6, 2, 24, 'جديد', '2020-03-25 11:30:42', '2020-03-25 11:30:42');

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
(2, 'services', '18', 'title', '2020-03-21 20:24:08', '2020-03-21 20:24:08'),
(5, 'services', '21', 'title', '2020-03-21 21:47:43', '2020-03-21 21:47:43'),
(6, 'contents', '41', 'title', '2020-03-21 21:58:09', '2020-03-21 21:58:09'),
(8, 'services', '22', 'title', '2020-03-22 11:39:52', '2020-03-22 11:39:52'),
(9, 'contents', '42', 'title', '2020-03-22 12:56:02', '2020-03-22 12:56:02'),
(10, 'contents', '42', 'content_text', '2020-03-22 12:56:02', '2020-03-22 12:56:02'),
(11, 'contents', '43', 'title', '2020-03-22 13:09:42', '2020-03-22 13:09:42'),
(12, 'contents', '43', 'content_text', '2020-03-22 13:09:42', '2020-03-22 13:09:42'),
(13, 'contents', '44', 'title', '2020-03-22 13:11:16', '2020-03-22 13:11:16'),
(14, 'contents', '44', 'content_text', '2020-03-22 13:11:17', '2020-03-22 13:11:17'),
(15, 'contents', '45', 'title', '2020-03-22 13:11:45', '2020-03-22 13:11:45'),
(16, 'contents', '45', 'content_text', '2020-03-22 13:11:45', '2020-03-22 13:11:45'),
(17, 'contents', '46', 'title', '2020-03-22 13:13:16', '2020-03-22 13:13:16'),
(18, 'contents', '47', 'title', '2020-03-22 13:18:31', '2020-03-22 13:18:31'),
(19, 'contents', '48', 'title', '2020-03-22 13:22:13', '2020-03-22 13:22:13'),
(20, 'contents', '49', 'title', '2020-03-22 13:25:59', '2020-03-22 13:25:59'),
(21, 'contents', '50', 'title', '2020-03-22 13:39:22', '2020-03-22 13:39:22'),
(22, 'contents', '51', 'title', '2020-03-22 13:40:29', '2020-03-22 13:40:29'),
(23, 'contents', '1', 'title', '2020-03-24 07:28:02', '2020-03-24 07:28:02'),
(24, 'audios', '21', 'title', '2020-03-25 11:30:42', '2020-03-25 11:30:42');

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
(1, 'Advanced Editor', '2018-01-28 06:30:05', '2018-01-28 06:30:05'),
(2, 'Normal Editor', '2018-01-28 06:30:14', '2018-01-28 06:30:14'),
(3, 'Image', '2018-01-28 06:30:29', '2018-01-28 06:30:29'),
(4, 'Video', '2018-01-28 06:30:39', '2018-01-28 06:30:39'),
(5, 'Audio', '2018-01-28 06:30:47', '2018-01-28 06:30:47'),
(6, 'File Manager Uploads Extensions', '2018-01-28 06:30:57', '2018-01-28 06:30:57'),
(7, 'selector', '2020-03-04 10:34:33', '2020-03-04 10:34:33'),
(10, 'link', '2020-03-04 10:34:33', '2020-03-04 10:34:33');

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
(1, 'super admin', 'super_admin@ivas.com', '$2y$10$u2evAW530miwgUb2jcXkTuqIGswxnSQ3DSmX1Ji5rtO3Tx.MtVcX2', '', '01234567890', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delete_all_flags`
--
ALTER TABLE `delete_all_flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `du_integration`
--
ALTER TABLE `du_integration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `scaffoldinterfaces`
--
ALTER TABLE `scaffoldinterfaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translatables`
--
ALTER TABLE `translatables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
