-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 12:46 PM
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
(22, 13, 9, 'tfsyr 1', 'uploads/audios/5e81b40cc6df4.mp3', 1234, '2020-03-30 06:55:40', '2020-03-30 06:55:40', NULL, 1),
(23, 13, 10, 'tfsyr 2', 'uploads/audios/5e81b42f72303.mp3', 12654, '2020-03-30 06:56:15', '2020-03-30 06:56:15', NULL, 0),
(24, 14, 9, 'quarn', 'uploads/audios/5e81b45504814.mp3', 122, '2020-03-30 06:56:53', '2020-03-30 06:56:53', NULL, 1),
(25, 14, 9, 'quran 2', 'uploads/audios/5e81b478db0b0.mp3', 2335, '2020-03-30 06:57:28', '2020-03-30 06:57:28', NULL, 1),
(26, 13, 10, 'tsyr 4', 'uploads/audios/5e81b4973d766.mp3', 66, '2020-03-30 06:57:59', '2020-03-30 06:57:59', NULL, 0),
(27, 15, 10, 'quran4', 'uploads/audios/5e81b4c58ae50.mp3', 3, '2020-03-30 06:58:45', '2020-03-30 06:58:45', NULL, 0);

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
(53, 23, 'tfsyr 1', '2020-03-30 06:41:08', '2020-03-30 06:41:08', 'uploads/videos/5e81b0a2cbf87.mp4', NULL, '5e81b0a2cd063.png', 1),
(54, 23, 'tsyr 2', '2020-03-30 06:41:50', '2020-03-30 06:41:50', 'uploads/videos/5e81b0cda2edd.mp4', NULL, '5e81b0cda3f09.png', 1),
(55, 23, 'tfsyr3', '2020-03-30 06:42:15', '2020-03-30 06:42:15', 'uploads/videos/5e81b0e6d948d.mp4', NULL, '5e81b0e6da3c6.png', 1),
(56, 23, 'tfsyr 4', '2020-03-30 06:42:59', '2020-03-30 06:43:17', 'uploads/videos/5e81b1134c370.mp4', NULL, '5e81b1134d65d.png', 1),
(57, 24, 'rsal 1', '2020-03-30 06:44:48', '2020-03-30 06:44:48', NULL, 'we are love god without anything just we love him', NULL, 4),
(58, 24, 'resal 2', '2020-03-30 06:46:26', '2020-03-30 06:46:26', NULL, 'help people that need to eat and wateri mean help who need you', NULL, 4),
(59, 25, 'quran 1', '2020-03-30 06:47:22', '2020-03-30 06:47:22', 'uploads/videos/5e81b21a4bbbb.mp3', NULL, NULL, 2),
(60, 25, 'quran 2', '2020-03-30 06:47:50', '2020-03-30 06:47:50', 'uploads/videos/5e81b23637702.mp3', NULL, NULL, 2),
(61, 25, 'quran 3', '2020-03-30 06:48:25', '2020-03-30 06:48:25', 'uploads/videos/5e81b259be8d0.mp3', NULL, NULL, 2),
(62, 25, 'quran 4', '2020-03-30 06:49:06', '2020-03-30 06:49:06', 'uploads/videos/5e81b28286480.mp3', NULL, NULL, 2);

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
(3, 'sa', '2018-05-07 08:24:39', '2018-05-07 08:24:39'),
(4, 'oman', '2020-03-26 11:12:49', '2020-03-26 11:12:49'),
(5, 'emirate', '2020-03-28 11:56:46', '2020-03-28 11:56:46');

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
(2, 118, '2020-03-30 06:33:09', '2020-03-30 06:33:09'),
(3, 132, '2020-03-30 06:33:10', '2020-03-30 06:33:10'),
(4, 99, '2020-03-30 06:33:10', '2020-03-30 06:33:10'),
(5, 111, '2020-03-30 06:33:10', '2020-03-30 06:33:10'),
(6, 85, '2020-03-30 06:33:10', '2020-03-30 06:33:10'),
(7, 91, '2020-03-30 06:33:10', '2020-03-30 06:33:10'),
(8, 105, '2020-03-30 06:33:10', '2020-03-30 06:33:10');

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
(8, 'orange', 'uploads/operators/5c2b236e9e890.jpg', '2019-01-01 06:23:10', '2019-01-01 06:23:10', 9999, 2),
(9, 'omantel', 'uploads/operators/5e7caa88d6f8d.png', '2020-03-26 11:13:44', '2020-03-26 11:13:44', 1234, 4),
(10, 'du', 'uploads/operators/5e7f2d823b601.png', '2020-03-28 08:57:06', '2020-03-28 11:57:05', 1243, 5);

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
(5, 9, 53, '2020-03-30', 0, '2020-03-30 06:49:19', '2020-03-30 06:49:19'),
(6, 10, 53, '2020-03-30', 0, '2020-03-30 06:49:19', '2020-03-30 06:49:19'),
(7, 9, 54, '2020-03-30', 0, '2020-03-30 06:50:13', '2020-03-30 06:50:13'),
(8, 10, 54, '2020-03-30', 0, '2020-03-30 06:50:13', '2020-03-30 06:50:13'),
(9, 9, 58, '2020-03-30', 0, '2020-03-30 06:50:31', '2020-03-30 06:50:31'),
(10, 10, 58, '2020-03-30', 0, '2020-03-30 06:50:31', '2020-03-30 06:50:31'),
(11, 9, 59, '2020-03-30', 0, '2020-03-30 06:53:45', '2020-03-30 06:53:45'),
(12, 9, 62, '2020-03-30', 0, '2020-03-30 06:54:28', '2020-03-30 06:54:28'),
(13, 10, 62, '2020-03-30', 0, '2020-03-30 06:54:28', '2020-03-30 06:54:28'),
(14, 9, 61, '2020-03-30', 0, '2020-03-30 06:54:53', '2020-03-30 06:54:53');

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
(13, 'mishria rashed', NULL, '2020-03-30 06:34:36', '2020-03-30 06:34:36'),
(14, 'el tabloye', NULL, '2020-03-30 06:35:01', '2020-03-30 06:35:01'),
(15, 'el halboye', NULL, '2020-03-30 06:35:39', '2020-03-30 06:35:39'),
(16, 'tala phaghr', NULL, '2020-03-30 06:36:06', '2020-03-30 06:36:06');

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
(23, 13, 'tfsyr el quran', 'uploads/services/5e81afb9d1870.jpg', '2020-03-30 06:37:13', '2020-03-30 06:37:13', 1),
(24, 13, 'Rsal Elafacy', 'uploads/services/5e81b003e03cc.png', '2020-03-30 06:38:27', '2020-03-30 06:38:40', 4),
(25, 14, 'quran', 'uploads/services/5e81b04446335.jpg', '2020-03-30 06:39:32', '2020-03-30 06:39:32', 2),
(26, 15, 'toshih', 'uploads/services/5e81b57fdaaaa.jpg', '2020-03-30 07:01:51', '2020-03-30 07:01:51', 2),
(27, 16, 'ghoatr aymenya', 'uploads/services/5e81b5eb75cd5.jpg', '2020-03-30 07:03:39', '2020-03-30 07:03:39', 1);

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
(6, 2, 24, 'جديد', '2020-03-25 11:30:42', '2020-03-25 11:30:42'),
(7, 2, 25, 'جديد', '2020-03-26 15:13:52', '2020-03-26 15:13:52'),
(8, 2, 27, 'مشارى راشد', '2020-03-30 06:34:36', '2020-03-30 06:34:36'),
(9, 2, 28, 'الطبلاوى', '2020-03-30 06:35:01', '2020-03-30 06:35:01'),
(10, 2, 29, 'الهلباوى', '2020-03-30 06:35:40', '2020-03-30 06:35:40'),
(11, 2, 30, 'طلال فاخر', '2020-03-30 06:36:06', '2020-03-30 06:36:06'),
(12, 2, 31, 'تفسير القران', '2020-03-30 06:37:14', '2020-03-30 06:37:14'),
(13, 2, 32, 'رسائل العفاسى', '2020-03-30 06:38:28', '2020-03-30 06:38:28'),
(14, 2, 33, 'قران', '2020-03-30 06:39:32', '2020-03-30 06:39:32'),
(15, 2, 34, 'تفسير 1', '2020-03-30 06:41:08', '2020-03-30 06:41:08'),
(16, 2, 35, 'تفسير 2', '2020-03-30 06:41:50', '2020-03-30 06:41:50'),
(17, 2, 36, 'تفسير 3', '2020-03-30 06:42:15', '2020-03-30 06:42:15'),
(18, 2, 37, 'تفسير 4', '2020-03-30 06:42:59', '2020-03-30 06:43:17'),
(19, 2, 38, 'رسائل1', '2020-03-30 06:44:48', '2020-03-30 06:44:48'),
(20, 2, 39, 'ان ربنا هو الخالق نحبه ليس من اجل شى فقط لانه هو الله', '2020-03-30 06:44:48', '2020-03-30 06:44:48'),
(21, 2, 40, 'رسائل2', '2020-03-30 06:46:26', '2020-03-30 06:46:26'),
(22, 2, 41, 'ساعد الفقراء الذين يحتجون الى الطعام والماء', '2020-03-30 06:46:26', '2020-03-30 06:46:26'),
(23, 2, 42, 'قران 1', '2020-03-30 06:47:22', '2020-03-30 06:47:22'),
(24, 2, 43, 'قران 2', '2020-03-30 06:47:50', '2020-03-30 06:47:50'),
(25, 2, 44, 'قران 3', '2020-03-30 06:48:26', '2020-03-30 06:48:26'),
(26, 2, 45, 'قران 4', '2020-03-30 06:49:06', '2020-03-30 06:49:06'),
(27, 2, 46, 'تفسير 1', '2020-03-30 06:55:40', '2020-03-30 06:55:40'),
(28, 2, 47, 'تفسير 2', '2020-03-30 06:56:15', '2020-03-30 06:56:15'),
(29, 2, 48, 'قران', '2020-03-30 06:56:53', '2020-03-30 06:56:53'),
(30, 2, 49, 'قران 2', '2020-03-30 06:57:29', '2020-03-30 06:57:29'),
(31, 2, 50, 'تفسير 4', '2020-03-30 06:57:59', '2020-03-30 06:57:59'),
(32, 2, 51, 'قران 4', '2020-03-30 06:58:45', '2020-03-30 06:58:45'),
(33, 2, 52, 'تواشيح', '2020-03-30 07:01:52', '2020-03-30 07:01:52'),
(34, 2, 53, 'خواطر ايمانية', '2020-03-30 07:03:39', '2020-03-30 07:03:39');

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
(24, 'audios', '21', 'title', '2020-03-25 11:30:42', '2020-03-25 11:30:42'),
(25, 'contents', '52', 'title', '2020-03-26 15:13:52', '2020-03-26 15:13:52'),
(26, 'audios', '5', 'title', '2020-03-26 15:28:54', '2020-03-26 15:28:54'),
(27, 'providers', '13', 'title', '2020-03-30 06:34:36', '2020-03-30 06:34:36'),
(28, 'providers', '14', 'title', '2020-03-30 06:35:01', '2020-03-30 06:35:01'),
(29, 'providers', '15', 'title', '2020-03-30 06:35:40', '2020-03-30 06:35:40'),
(30, 'providers', '16', 'title', '2020-03-30 06:36:06', '2020-03-30 06:36:06'),
(31, 'services', '23', 'title', '2020-03-30 06:37:13', '2020-03-30 06:37:13'),
(32, 'services', '24', 'title', '2020-03-30 06:38:28', '2020-03-30 06:38:28'),
(33, 'services', '25', 'title', '2020-03-30 06:39:32', '2020-03-30 06:39:32'),
(34, 'contents', '53', 'title', '2020-03-30 06:41:08', '2020-03-30 06:41:08'),
(35, 'contents', '54', 'title', '2020-03-30 06:41:50', '2020-03-30 06:41:50'),
(36, 'contents', '55', 'title', '2020-03-30 06:42:15', '2020-03-30 06:42:15'),
(37, 'contents', '56', 'title', '2020-03-30 06:42:59', '2020-03-30 06:42:59'),
(38, 'contents', '57', 'title', '2020-03-30 06:44:48', '2020-03-30 06:44:48'),
(39, 'contents', '57', 'content_text', '2020-03-30 06:44:48', '2020-03-30 06:44:48'),
(40, 'contents', '58', 'title', '2020-03-30 06:46:26', '2020-03-30 06:46:26'),
(41, 'contents', '58', 'content_text', '2020-03-30 06:46:26', '2020-03-30 06:46:26'),
(42, 'contents', '59', 'title', '2020-03-30 06:47:22', '2020-03-30 06:47:22'),
(43, 'contents', '60', 'title', '2020-03-30 06:47:50', '2020-03-30 06:47:50'),
(44, 'contents', '61', 'title', '2020-03-30 06:48:25', '2020-03-30 06:48:25'),
(45, 'contents', '62', 'title', '2020-03-30 06:49:06', '2020-03-30 06:49:06'),
(46, 'audios', '22', 'title', '2020-03-30 06:55:40', '2020-03-30 06:55:40'),
(47, 'audios', '23', 'title', '2020-03-30 06:56:15', '2020-03-30 06:56:15'),
(48, 'audios', '24', 'title', '2020-03-30 06:56:53', '2020-03-30 06:56:53'),
(49, 'audios', '25', 'title', '2020-03-30 06:57:29', '2020-03-30 06:57:29'),
(50, 'audios', '26', 'title', '2020-03-30 06:57:59', '2020-03-30 06:57:59'),
(51, 'audios', '27', 'title', '2020-03-30 06:58:45', '2020-03-30 06:58:45'),
(52, 'services', '26', 'title', '2020-03-30 07:01:51', '2020-03-30 07:01:51'),
(53, 'services', '27', 'title', '2020-03-30 07:03:39', '2020-03-30 07:03:39');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `translatables`
--
ALTER TABLE `translatables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
